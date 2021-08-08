; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

	ld   bc, $9201                                   ; $4000: $01 $01 $92
	ld   d, b                                        ; $4003: $50
	sbc  [hl]                                        ; $4004: $9e
	and  e                                           ; $4005: $a3
	and  l                                           ; $4006: $a5
	db   $ec                                         ; $4007: $ec
	cp   d                                           ; $4008: $ba
	sbc  a                                           ; $4009: $9f
	dec  c                                           ; $400a: $0d
	nop                                              ; $400b: $00
	ld   a, [bc]                                     ; $400c: $0a
	dec  b                                           ; $400d: $05
	add  b                                           ; $400e: $80
	sub  $01                                         ; $400f: $d6 $01
	ld   bc, $0f00                                   ; $4011: $01 $00 $0f
	inc  b                                           ; $4014: $04
	nop                                              ; $4015: $00
	ld   bc, $9166                                   ; $4016: $01 $66 $91
	sbc  [hl]                                        ; $4019: $9e
	adc  h                                           ; $401a: $8c
	ld   l, l                                        ; $401b: $6d
	ld   a, e                                        ; $401c: $7b
	sbc  [hl]                                        ; $401d: $9e
	ld   l, a                                        ; $401e: $6f
	ld   d, d                                        ; $401f: $52
	ld   [bc], a                                     ; $4020: $02
	inc  de                                          ; $4021: $13
	ld   l, a                                        ; $4022: $6f
	sub  c                                           ; $4023: $91
	and  c                                           ; $4024: $a1
	sbc  a                                           ; $4025: $9f
	dec  c                                           ; $4026: $0d
	nop                                              ; $4027: $00
	ld   a, [bc]                                     ; $4028: $0a
	dec  c                                           ; $4029: $0d
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	rrca                                             ; $402c: $0f
	nop                                              ; $402d: $00
	ld   bc, $1e09                                   ; $402e: $01 $09 $1e
	nop                                              ; $4031: $00
	inc  e                                           ; $4032: $1c
	inc  b                                           ; $4033: $04
	nop                                              ; $4034: $00
	nop                                              ; $4035: $00
	ld   bc, $9e50                                   ; $4036: $01 $50 $9e
	ld   l, a                                        ; $4039: $6f
	ld   d, d                                        ; $403a: $52
	ld   [bc], a                                     ; $403b: $02
	inc  de                                          ; $403c: $13
	ld   l, a                                        ; $403d: $6f
	sub  c                                           ; $403e: $91
	and  c                                           ; $403f: $a1
	sbc  a                                           ; $4040: $9f
	dec  c                                           ; $4041: $0d
	nop                                              ; $4042: $00
	ld   a, [bc]                                     ; $4043: $0a
	rrca                                             ; $4044: $0f
	nop                                              ; $4045: $00
	ld   bc, $9201                                   ; $4046: $01 $01 $92
	ld   d, b                                        ; $4049: $50
	sbc  [hl]                                        ; $404a: $9e
	and  e                                           ; $404b: $a3
	and  l                                           ; $404c: $a5
	db   $ec                                         ; $404d: $ec
	cp   d                                           ; $404e: $ba
	sbc  a                                           ; $404f: $9f
	dec  c                                           ; $4050: $0d
	nop                                              ; $4051: $00
	ld   a, [bc]                                     ; $4052: $0a
	dec  b                                           ; $4053: $05
	add  b                                           ; $4054: $80
	sub  $01                                         ; $4055: $d6 $01
	ld   bc, $1c00                                   ; $4057: $01 $00 $1c
	inc  b                                           ; $405a: $04
	ld   bc, $0101                                   ; $405b: $01 $01 $01
	sbc  l                                           ; $405e: $9d
	ld   e, c                                        ; $405f: $59
	sub  a                                           ; $4060: $97
	ld   a, b                                        ; $4061: $78
	ld   d, d                                        ; $4062: $52
	ld   h, c                                        ; $4063: $61
	halt                                             ; $4064: $76
	ld   e, d                                        ; $4065: $5a
	ld   d, b                                        ; $4066: $50
	ld   [hl], c                                     ; $4067: $71
	ld   l, l                                        ; $4068: $6d
	sub  a                                           ; $4069: $97
	sbc  [hl]                                        ; $406a: $9e
	dec  c                                           ; $406b: $0d
	and  e                                           ; $406c: $a3
	and  l                                           ; $406d: $a5
	db   $ec                                         ; $406e: $ec
	cp   d                                           ; $406f: $ba
	ld   e, d                                        ; $4070: $5a
	sbc  [hl]                                        ; $4071: $9e
	ld   e, b                                        ; $4072: $58
	ld   h, l                                        ; $4073: $65
	ld   d, [hl]                                     ; $4074: $56
	ld   [hl], h                                     ; $4075: $74
	ld   d, b                                        ; $4076: $50
	ld   h, b                                        ; $4077: $60
	sbc  c                                           ; $4078: $99
	dec  c                                           ; $4079: $0d
	ld   e, c                                        ; $407a: $59
	sub  a                                           ; $407b: $97
	ld   a, e                                        ; $407c: $7b
	sbc  a                                           ; $407d: $9f
	adc  h                                           ; $407e: $8c
	ld   l, l                                        ; $407f: $6d
	ld   a, e                                        ; $4080: $7b
	sbc  a                                           ; $4081: $9f
	dec  c                                           ; $4082: $0d
	nop                                              ; $4083: $00
	ld   a, [bc]                                     ; $4084: $0a
	dec  c                                           ; $4085: $0d
	nop                                              ; $4086: $00
	nop                                              ; $4087: $00
	rrca                                             ; $4088: $0f
	nop                                              ; $4089: $00
	ld   bc, $1e09                                   ; $408a: $01 $09 $1e
	nop                                              ; $408d: $00
	nop                                              ; $408e: $00
	ld   [bc], a                                     ; $408f: $02
	rlca                                             ; $4090: $07
	ld   [hl+], a                                    ; $4091: $22
	nop                                              ; $4092: $00
	inc  bc                                          ; $4093: $03
	ld   d, $01                                      ; $4094: $16 $01
	ld   h, h                                        ; $4096: $64
	inc  hl                                          ; $4097: $23
	nop                                              ; $4098: $00
	rlca                                             ; $4099: $07
	ld   e, [hl]                                     ; $409a: $5e
	nop                                              ; $409b: $00
	inc  bc                                          ; $409c: $03
	ld   d, $01                                      ; $409d: $16 $01
	ld   h, [hl]                                     ; $409f: $66
	dec  h                                           ; $40a0: $25
	inc  bc                                          ; $40a1: $03
	ld   d, $01                                      ; $40a2: $16 $01
	ld   [hl], e                                     ; $40a4: $73
	ld   [hl+], a                                    ; $40a5: $22
	inc  e                                           ; $40a6: $1c
	nop                                              ; $40a7: $00
	rlca                                             ; $40a8: $07
	and  b                                           ; $40a9: $a0
	nop                                              ; $40aa: $00
	inc  bc                                          ; $40ab: $03
	ld   d, $01                                      ; $40ac: $16 $01
	ld   [hl], e                                     ; $40ae: $73
	dec  h                                           ; $40af: $25
	nop                                              ; $40b0: $00
	rrca                                             ; $40b1: $0f
	nop                                              ; $40b2: $00
	ld   bc, $ac01                                   ; $40b3: $01 $01 $ac
	push af                                          ; $40b6: $f5
	bit  4, e                                        ; $40b7: $cb $63
	and  c                                           ; $40b9: $a1
	sbc  a                                           ; $40ba: $9f
	dec  c                                           ; $40bb: $0d
	nop                                              ; $40bc: $00
	ld   a, [bc]                                     ; $40bd: $0a
	inc  e                                           ; $40be: $1c
	ld   b, $00                                      ; $40bf: $06 $00
	nop                                              ; $40c1: $00
	ld   bc, $999d                                   ; $40c2: $01 $9d $99
	ld   d, d                                        ; $40c5: $52
	sbc  a                                           ; $40c6: $9f
	ld   l, a                                        ; $40c7: $6f
	sub  l                                           ; $40c8: $95
	ld   d, d                                        ; $40c9: $52
	halt                                             ; $40ca: $76
	dec  b                                           ; $40cb: $05
	jr   z, jr_048_412a                              ; $40cc: $28 $5c

	ld   a, h                                        ; $40ce: $7c
	dec  c                                           ; $40cf: $0d
	inc  b                                           ; $40d0: $04
	di                                               ; $40d1: $f3
	ld   e, d                                        ; $40d2: $5a
	ld   d, b                                        ; $40d3: $50
	sbc  c                                           ; $40d4: $99
	and  c                                           ; $40d5: $a1
	ld   l, [hl]                                     ; $40d6: $6e
	sbc  a                                           ; $40d7: $9f
	dec  c                                           ; $40d8: $0d
	adc  h                                           ; $40d9: $8c
	ld   l, l                                        ; $40da: $6d
	inc  b                                           ; $40db: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40dc: $cf
	inc  b                                           ; $40dd: $04
	xor  d                                           ; $40de: $aa
	ld   a, b                                        ; $40df: $78
	sbc  a                                           ; $40e0: $9f
	dec  c                                           ; $40e1: $0d
	nop                                              ; $40e2: $00
	ld   a, [bc]                                     ; $40e3: $0a
	dec  c                                           ; $40e4: $0d
	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	rrca                                             ; $40e7: $0f
	nop                                              ; $40e8: $00
	ld   bc, $1e09                                   ; $40e9: $01 $09 $1e
	nop                                              ; $40ec: $00
	inc  e                                           ; $40ed: $1c
	ld   b, $00                                      ; $40ee: $06 $00
	nop                                              ; $40f0: $00
	ld   bc, $5496                                   ; $40f1: $01 $96 $54
	sbc  [hl]                                        ; $40f4: $9e
	ld   [$9f00], sp                                 ; $40f5: $08 $00 $9f
	dec  c                                           ; $40f8: $0d
	nop                                              ; $40f9: $00
	ld   a, [bc]                                     ; $40fa: $0a
	rrca                                             ; $40fb: $0f
	nop                                              ; $40fc: $00
	ld   bc, $5801                                   ; $40fd: $01 $01 $58
	inc  b                                           ; $4100: $04
	ld   a, e                                        ; $4101: $7b
	sbc  d                                           ; $4102: $9a
	ld   h, e                                        ; $4103: $63
	adc  h                                           ; $4104: $8c
	ld   [hl], l                                     ; $4105: $75
	ld   h, a                                        ; $4106: $67
	sbc  a                                           ; $4107: $9f
	dec  c                                           ; $4108: $0d
	xor  h                                           ; $4109: $ac
	push af                                          ; $410a: $f5
	bit  4, e                                        ; $410b: $cb $63
	and  c                                           ; $410d: $a1
	sbc  a                                           ; $410e: $9f
	dec  c                                           ; $410f: $0d
	nop                                              ; $4110: $00
	ld   a, [bc]                                     ; $4111: $0a
	rrca                                             ; $4112: $0f
	ld   b, $00                                      ; $4113: $06 $00
	ld   bc, $0458                                   ; $4115: $01 $58 $04
	ld   a, e                                        ; $4118: $7b
	sbc  d                                           ; $4119: $9a
	ld   h, e                                        ; $411a: $63
	and  c                                           ; $411b: $a1
	sbc  a                                           ; $411c: $9f
	dec  c                                           ; $411d: $0d
	ld   h, [hl]                                     ; $411e: $66
	sub  c                                           ; $411f: $91
	ld   d, b                                        ; $4120: $50
	ld   a, b                                        ; $4121: $78
	sbc  a                                           ; $4122: $9f
	dec  c                                           ; $4123: $0d
	nop                                              ; $4124: $00
	ld   a, [bc]                                     ; $4125: $0a
	dec  c                                           ; $4126: $0d
	nop                                              ; $4127: $00
	nop                                              ; $4128: $00
	rrca                                             ; $4129: $0f

jr_048_412a:
	nop                                              ; $412a: $00
	ld   bc, $1e09                                   ; $412b: $01 $09 $1e
	nop                                              ; $412e: $00
	rrca                                             ; $412f: $0f
	nop                                              ; $4130: $00
	ld   bc, $060d                                   ; $4131: $01 $0d $06
	nop                                              ; $4134: $00
	ld   bc, $f5ac                                   ; $4135: $01 $ac $f5
	bit  4, e                                        ; $4138: $cb $63
	and  c                                           ; $413a: $a1
	sbc  a                                           ; $413b: $9f
	dec  c                                           ; $413c: $0d
	nop                                              ; $413d: $00
	ld   a, [bc]                                     ; $413e: $0a
	inc  e                                           ; $413f: $1c
	ld   b, $01                                      ; $4140: $06 $01
	ld   bc, $9601                                   ; $4142: $01 $01 $96
	ld   e, b                                        ; $4145: $58
	sbc  [hl]                                        ; $4146: $9e
	ld   [$9f00], sp                                 ; $4147: $08 $00 $9f
	dec  c                                           ; $414a: $0d
	ld   [hl], a                                     ; $414b: $77
	ld   d, h                                        ; $414c: $54
	ld   l, [hl]                                     ; $414d: $6e
	ld   sp, hl                                      ; $414e: $f9
	db   $10                                         ; $414f: $10
	inc  b                                           ; $4150: $04
	ld   [$9102], sp                                 ; $4151: $08 $02 $91
	ld   a, c                                        ; $4154: $79
	ld   a, l                                        ; $4155: $7d
	ld   a, b                                        ; $4156: $78
	sbc  d                                           ; $4157: $9a
	ld   l, l                                        ; $4158: $6d
	ld   e, c                                        ; $4159: $59
	ld   sp, hl                                      ; $415a: $f9
	dec  c                                           ; $415b: $0d
	nop                                              ; $415c: $00
	ld   a, [bc]                                     ; $415d: $0a
	ld   bc, $8c61                                   ; $415e: $01 $61 $8c
	ld   [hl], c                                     ; $4161: $71
	ld   l, l                                        ; $4162: $6d
	ld   [bc], a                                     ; $4163: $02
	jp   Jump_048_505a                               ; $4164: $c3 $5a $50


	ld   [hl], c                                     ; $4167: $71
	ld   l, l                                        ; $4168: $6d
	sub  a                                           ; $4169: $97
	sbc  [hl]                                        ; $416a: $9e
	dec  c                                           ; $416b: $0d
	ld   a, b                                        ; $416c: $78
	and  c                                           ; $416d: $a1
	ld   [hl], l                                     ; $416e: $75
	sub  b                                           ; $416f: $90
	ld   [bc], a                                     ; $4170: $02
	jp   nz, Jump_048_7452                           ; $4171: $c2 $52 $74

	ld   e, l                                        ; $4174: $5d
	sbc  d                                           ; $4175: $9a
	sub  [hl]                                        ; $4176: $96
	ld   a, b                                        ; $4177: $78
	sbc  a                                           ; $4178: $9f
	dec  c                                           ; $4179: $0d
	ld   h, [hl]                                     ; $417a: $66
	sub  c                                           ; $417b: $91
	ld   d, b                                        ; $417c: $50
	ld   a, b                                        ; $417d: $78
	sbc  a                                           ; $417e: $9f
	dec  c                                           ; $417f: $0d
	nop                                              ; $4180: $00
	ld   a, [bc]                                     ; $4181: $0a
	dec  c                                           ; $4182: $0d
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	rrca                                             ; $4185: $0f
	nop                                              ; $4186: $00
	ld   bc, $1e09                                   ; $4187: $01 $09 $1e
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	ld   [bc], a                                     ; $418c: $02
	rlca                                             ; $418d: $07
	ld   [hl+], a                                    ; $418e: $22
	nop                                              ; $418f: $00
	inc  bc                                          ; $4190: $03
	dec  d                                           ; $4191: $15
	ld   bc, $2265                                   ; $4192: $01 $65 $22
	nop                                              ; $4195: $00
	rlca                                             ; $4196: $07
	ld   e, d                                        ; $4197: $5a
	nop                                              ; $4198: $00
	inc  bc                                          ; $4199: $03
	dec  d                                           ; $419a: $15
	ld   bc, $2565                                   ; $419b: $01 $65 $25
	inc  bc                                          ; $419e: $03
	dec  d                                           ; $419f: $15
	ld   bc, $2273                                   ; $41a0: $01 $73 $22
	inc  e                                           ; $41a3: $1c
	nop                                              ; $41a4: $00
	rlca                                             ; $41a5: $07
	sbc  l                                           ; $41a6: $9d
	nop                                              ; $41a7: $00
	inc  bc                                          ; $41a8: $03
	dec  d                                           ; $41a9: $15
	ld   bc, $2573                                   ; $41aa: $01 $73 $25
	nop                                              ; $41ad: $00
	rrca                                             ; $41ae: $0f
	nop                                              ; $41af: $00
	ld   bc, $0201                                   ; $41b0: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41b3: $cf
	dec  b                                           ; $41b4: $05
	ld   a, [de]                                     ; $41b5: $1a
	ld   h, e                                        ; $41b6: $63
	and  c                                           ; $41b7: $a1
	sbc  a                                           ; $41b8: $9f
	dec  c                                           ; $41b9: $0d
	nop                                              ; $41ba: $00
	ld   a, [bc]                                     ; $41bb: $0a
	inc  e                                           ; $41bc: $1c
	dec  b                                           ; $41bd: $05
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	ld   bc, $a502                                   ; $41c0: $01 $02 $a5
	ld   l, a                                        ; $41c3: $6f
	sub  l                                           ; $41c4: $95
	ld   [hl], c                                     ; $41c5: $71
	halt                                             ; $41c6: $76
	sbc  [hl]                                        ; $41c7: $9e
	inc  b                                           ; $41c8: $04
	ld   c, $04                                      ; $41c9: $0e $04
	adc  h                                           ; $41cb: $8c
	ld   a, b                                        ; $41cc: $78
	and  c                                           ; $41cd: $a1
	sub  d                                           ; $41ce: $92
	sbc  a                                           ; $41cf: $9f
	dec  c                                           ; $41d0: $0d
	ld   h, a                                        ; $41d1: $67
	adc  h                                           ; $41d2: $8c
	and  c                                           ; $41d3: $a1
	ld   a, b                                        ; $41d4: $78
	db   $fc                                         ; $41d5: $fc
	sbc  a                                           ; $41d6: $9f
	adc  c                                           ; $41d7: $89
	ld   a, b                                        ; $41d8: $78
	sbc  a                                           ; $41d9: $9f
	dec  c                                           ; $41da: $0d
	nop                                              ; $41db: $00
	ld   a, [bc]                                     ; $41dc: $0a
	dec  c                                           ; $41dd: $0d
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	rrca                                             ; $41e0: $0f
	nop                                              ; $41e1: $00
	ld   bc, $1e09                                   ; $41e2: $01 $09 $1e
	nop                                              ; $41e5: $00
	inc  e                                           ; $41e6: $1c
	dec  b                                           ; $41e7: $05
	nop                                              ; $41e8: $00
	nop                                              ; $41e9: $00
	ld   bc, $7196                                   ; $41ea: $01 $96 $71
	sbc  [hl]                                        ; $41ed: $9e
	ld   [$7d00], sp                                 ; $41ee: $08 $00 $7d
	and  c                                           ; $41f1: $a1
	sbc  a                                           ; $41f2: $9f
	dec  c                                           ; $41f3: $0d
	nop                                              ; $41f4: $00
	ld   a, [bc]                                     ; $41f5: $0a
	rrca                                             ; $41f6: $0f
	nop                                              ; $41f7: $00
	ld   bc, $0201                                   ; $41f8: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41fb: $cf
	dec  b                                           ; $41fc: $05
	ld   a, [de]                                     ; $41fd: $1a
	ld   h, e                                        ; $41fe: $63
	and  c                                           ; $41ff: $a1
	sbc  a                                           ; $4200: $9f
	dec  c                                           ; $4201: $0d
	ld   e, b                                        ; $4202: $58
	inc  b                                           ; $4203: $04
	ld   a, e                                        ; $4204: $7b
	sbc  d                                           ; $4205: $9a
	ld   h, e                                        ; $4206: $63
	adc  h                                           ; $4207: $8c
	ld   [hl], l                                     ; $4208: $75
	ld   h, a                                        ; $4209: $67
	sbc  a                                           ; $420a: $9f
	dec  c                                           ; $420b: $0d
	nop                                              ; $420c: $00
	ld   a, [bc]                                     ; $420d: $0a
	rrca                                             ; $420e: $0f
	dec  b                                           ; $420f: $05
	nop                                              ; $4210: $00
	ld   bc, $0458                                   ; $4211: $01 $58 $04
	ld   a, e                                        ; $4214: $7b
	sbc  d                                           ; $4215: $9a
	ld   h, e                                        ; $4216: $63
	adc  h                                           ; $4217: $8c
	sbc  a                                           ; $4218: $9f
	dec  c                                           ; $4219: $0d
	adc  c                                           ; $421a: $89
	ld   a, b                                        ; $421b: $78
	sbc  a                                           ; $421c: $9f
	dec  c                                           ; $421d: $0d
	nop                                              ; $421e: $00
	ld   a, [bc]                                     ; $421f: $0a
	dec  c                                           ; $4220: $0d
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	rrca                                             ; $4223: $0f
	nop                                              ; $4224: $00
	ld   bc, $1e09                                   ; $4225: $01 $09 $1e
	nop                                              ; $4228: $00
	rrca                                             ; $4229: $0f
	nop                                              ; $422a: $00
	ld   bc, $050d                                   ; $422b: $01 $0d $05
	nop                                              ; $422e: $00
	ld   bc, $cf02                                   ; $422f: $01 $02 $cf
	dec  b                                           ; $4232: $05
	ld   a, [de]                                     ; $4233: $1a
	ld   h, e                                        ; $4234: $63
	and  c                                           ; $4235: $a1
	sbc  a                                           ; $4236: $9f
	dec  c                                           ; $4237: $0d
	nop                                              ; $4238: $00
	ld   a, [bc]                                     ; $4239: $0a
	inc  e                                           ; $423a: $1c
	dec  b                                           ; $423b: $05
	ld   bc, $0101                                   ; $423c: $01 $01 $01
	ld   [$7d00], sp                                 ; $423f: $08 $00 $7d
	and  c                                           ; $4242: $a1
	sbc  a                                           ; $4243: $9f
	dec  c                                           ; $4244: $0d
	ld   [hl], a                                     ; $4245: $77
	sub  d                                           ; $4246: $92
	sbc  [hl]                                        ; $4247: $9e
	sub  b                                           ; $4248: $90
	ld   d, h                                        ; $4249: $54
	inc  b                                           ; $424a: $04
	ld   [$9102], sp                                 ; $424b: $08 $02 $91
	ld   a, c                                        ; $424e: $79
	ld   a, l                                        ; $424f: $7d
	ld   a, b                                        ; $4250: $78
	sbc  d                                           ; $4251: $9a
	ld   l, l                                        ; $4252: $6d
	ld   e, c                                        ; $4253: $59
	sbc  a                                           ; $4254: $9f
	dec  c                                           ; $4255: $0d
	nop                                              ; $4256: $00
	ld   a, [bc]                                     ; $4257: $0a
	ld   bc, $9e04                                   ; $4258: $01 $04 $9e
	ld   e, c                                        ; $425b: $59
	sub  a                                           ; $425c: $97
	and  c                                           ; $425d: $a1
	ld   [bc], a                                     ; $425e: $02
	jp   Jump_048_505a                               ; $425f: $c3 $5a $50


	ld   [hl], c                                     ; $4262: $71
	ld   l, l                                        ; $4263: $6d
	sub  a                                           ; $4264: $97
	dec  c                                           ; $4265: $0d
	ld   a, b                                        ; $4266: $78
	and  c                                           ; $4267: $a1
	ld   [hl], l                                     ; $4268: $75
	sub  b                                           ; $4269: $90
	ld   [bc], a                                     ; $426a: $02
	jp   nz, Jump_048_7452                           ; $426b: $c2 $52 $74

	sub  d                                           ; $426e: $92
	sbc  a                                           ; $426f: $9f
	dec  c                                           ; $4270: $0d
	adc  c                                           ; $4271: $89
	ld   a, b                                        ; $4272: $78
	sbc  a                                           ; $4273: $9f
	dec  c                                           ; $4274: $0d
	nop                                              ; $4275: $00
	ld   a, [bc]                                     ; $4276: $0a
	dec  c                                           ; $4277: $0d
	nop                                              ; $4278: $00
	nop                                              ; $4279: $00
	rrca                                             ; $427a: $0f
	nop                                              ; $427b: $00
	ld   bc, $1e09                                   ; $427c: $01 $09 $1e
	nop                                              ; $427f: $00
	nop                                              ; $4280: $00
	ld   [bc], a                                     ; $4281: $02
	rlca                                             ; $4282: $07
	rra                                              ; $4283: $1f
	nop                                              ; $4284: $00
	inc  bc                                          ; $4285: $03
	ld   [de], a                                     ; $4286: $12
	ld   bc, $2265                                   ; $4287: $01 $65 $22
	nop                                              ; $428a: $00
	rlca                                             ; $428b: $07
	and  h                                           ; $428c: $a4
	nop                                              ; $428d: $00
	inc  bc                                          ; $428e: $03
	ld   [de], a                                     ; $428f: $12
	ld   bc, $2573                                   ; $4290: $01 $73 $25
	ld   [bc], a                                     ; $4293: $02
	nop                                              ; $4294: $00
	ld   bc, $2c02                                   ; $4295: $01 $02 $2c
	ld   bc, $2000                                   ; $4298: $01 $00 $20
	inc  e                                           ; $429b: $1c
	nop                                              ; $429c: $00
	ld   b, $57                                      ; $429d: $06 $57
	nop                                              ; $429f: $00
	rrca                                             ; $42a0: $0f
	nop                                              ; $42a1: $00
	ld   bc, $6701                                   ; $42a2: $01 $01 $67
	adc  l                                           ; $42a5: $8d
	sbc  d                                           ; $42a6: $9a
	ld   h, e                                        ; $42a7: $63
	and  c                                           ; $42a8: $a1
	sbc  a                                           ; $42a9: $9f
	dec  c                                           ; $42aa: $0d
	nop                                              ; $42ab: $00
	ld   a, [bc]                                     ; $42ac: $0a
	inc  e                                           ; $42ad: $1c
	ld   [bc], a                                     ; $42ae: $02
	nop                                              ; $42af: $00
	nop                                              ; $42b0: $00
	ld   bc, $8c52                                   ; $42b1: $01 $52 $8c
	sbc  [hl]                                        ; $42b4: $9e
	inc  bc                                          ; $42b5: $03
	ld   l, e                                        ; $42b6: $6b
	ld   e, d                                        ; $42b7: $5a
	inc  b                                           ; $42b8: $04
	sbc  c                                           ; $42b9: $99
	ld   l, c                                        ; $42ba: $69
	adc  h                                           ; $42bb: $8c
	ld   l, c                                        ; $42bc: $69
	and  c                                           ; $42bd: $a1
	ld   a, h                                        ; $42be: $7c
	sbc  a                                           ; $42bf: $9f
	dec  c                                           ; $42c0: $0d
	ld   d, b                                        ; $42c1: $50
	halt                                             ; $42c2: $76
	ld   a, c                                        ; $42c3: $79
	ld   h, l                                        ; $42c4: $65
	ld   [hl], h                                     ; $42c5: $74
	ld   e, l                                        ; $42c6: $5d
	ld   l, [hl]                                     ; $42c7: $6e
	ld   h, e                                        ; $42c8: $63
	ld   d, d                                        ; $42c9: $52
	ld   a, b                                        ; $42ca: $78
	sbc  a                                           ; $42cb: $9f
	dec  c                                           ; $42cc: $0d
	nop                                              ; $42cd: $00
	ld   a, [bc]                                     ; $42ce: $0a
	dec  c                                           ; $42cf: $0d
	nop                                              ; $42d0: $00
	nop                                              ; $42d1: $00
	rrca                                             ; $42d2: $0f
	nop                                              ; $42d3: $00
	ld   bc, $1e09                                   ; $42d4: $01 $09 $1e
	nop                                              ; $42d7: $00
	inc  e                                           ; $42d8: $1c
	ld   [bc], a                                     ; $42d9: $02
	nop                                              ; $42da: $00
	nop                                              ; $42db: $00
	ld   bc, $9750                                   ; $42dc: $01 $50 $97
	sbc  [hl]                                        ; $42df: $9e
	ld   [$6308], sp                                 ; $42e0: $08 $08 $63
	and  c                                           ; $42e3: $a1
	sbc  a                                           ; $42e4: $9f
	dec  c                                           ; $42e5: $0d
	nop                                              ; $42e6: $00
	ld   a, [bc]                                     ; $42e7: $0a
	rrca                                             ; $42e8: $0f
	nop                                              ; $42e9: $00
	ld   bc, $6701                                   ; $42ea: $01 $01 $67
	adc  l                                           ; $42ed: $8d
	sbc  d                                           ; $42ee: $9a
	ld   h, e                                        ; $42ef: $63
	and  c                                           ; $42f0: $a1
	sbc  a                                           ; $42f1: $9f
	inc  b                                           ; $42f2: $04
	ld   l, l                                        ; $42f3: $6d
	ld   a, h                                        ; $42f4: $7c
	inc  b                                           ; $42f5: $04
	rst  ToBoot                                         ; $42f6: $c7
	inc  bc                                          ; $42f7: $03
	ld   c, a                                        ; $42f8: $4f
	ld   a, l                                        ; $42f9: $7d
	dec  c                                           ; $42fa: $0d
	ld   [$7500], sp                                 ; $42fb: $08 $00 $75
	ld   h, a                                        ; $42fe: $67
	sbc  a                                           ; $42ff: $9f
	dec  c                                           ; $4300: $0d
	nop                                              ; $4301: $00
	ld   a, [bc]                                     ; $4302: $0a
	rrca                                             ; $4303: $0f
	ld   [bc], a                                     ; $4304: $02
	nop                                              ; $4305: $00
	ld   bc, $546b                                   ; $4306: $01 $6b $54
	ld   [hl], l                                     ; $4309: $75
	ld   h, l                                        ; $430a: $65
	ld   l, l                                        ; $430b: $6d
	ld   e, c                                        ; $430c: $59
	ld   h, l                                        ; $430d: $65
	sub  a                                           ; $430e: $97
	sbc  a                                           ; $430f: $9f
	dec  c                                           ; $4310: $0d
	ld   [hl], l                                     ; $4311: $75
	ld   a, l                                        ; $4312: $7d
	inc  bc                                          ; $4313: $03
	add  e                                           ; $4314: $83
	dec  b                                           ; $4315: $05
	dec  c                                           ; $4316: $0d
	rst  $38                                         ; $4317: $ff
	rst  $38                                         ; $4318: $ff
	dec  c                                           ; $4319: $0d
	nop                                              ; $431a: $00
	ld   a, [bc]                                     ; $431b: $0a
	dec  c                                           ; $431c: $0d
	nop                                              ; $431d: $00
	nop                                              ; $431e: $00
	rrca                                             ; $431f: $0f
	nop                                              ; $4320: $00
	ld   bc, $1e09                                   ; $4321: $01 $09 $1e
	nop                                              ; $4324: $00
	dec  c                                           ; $4325: $0d
	ld   [bc], a                                     ; $4326: $02
	nop                                              ; $4327: $00
	rrca                                             ; $4328: $0f
	nop                                              ; $4329: $00
	ld   bc, $5001                                   ; $432a: $01 $01 $50
	sbc  [hl]                                        ; $432d: $9e
	ld   h, a                                        ; $432e: $67
	adc  l                                           ; $432f: $8d
	sbc  d                                           ; $4330: $9a
	ld   h, e                                        ; $4331: $63
	and  c                                           ; $4332: $a1
	sbc  a                                           ; $4333: $9f
	dec  c                                           ; $4334: $0d
	nop                                              ; $4335: $00
	ld   a, [bc]                                     ; $4336: $0a
	rrca                                             ; $4337: $0f
	ld   [bc], a                                     ; $4338: $02
	nop                                              ; $4339: $00
	ld   bc, $9750                                   ; $433a: $01 $50 $97
	sbc  [hl]                                        ; $433d: $9e
	ld   [$6308], sp                                 ; $433e: $08 $08 $63
	and  c                                           ; $4341: $a1
	sbc  a                                           ; $4342: $9f
	dec  c                                           ; $4343: $0d
	nop                                              ; $4344: $00
	ld   a, [bc]                                     ; $4345: $0a
	rrca                                             ; $4346: $0f
	nop                                              ; $4347: $00
	ld   bc, $0201                                   ; $4348: $01 $01 $02
	and  l                                           ; $434b: $a5
	inc  b                                           ; $434c: $04
	xor  d                                           ; $434d: $aa
	ld   a, h                                        ; $434e: $7c
	ld   e, b                                        ; $434f: $58
	inc  b                                           ; $4350: $04
	xor  l                                           ; $4351: $ad
	ld   h, d                                        ; $4352: $62
	inc  b                                           ; $4353: $04
	sbc  h                                           ; $4354: $9c
	ld   a, l                                        ; $4355: $7d
	dec  c                                           ; $4356: $0d
	ld   e, b                                        ; $4357: $58
	ld   d, d                                        ; $4358: $52
	ld   h, l                                        ; $4359: $65
	ld   e, c                                        ; $435a: $59
	ld   [hl], c                                     ; $435b: $71
	ld   l, l                                        ; $435c: $6d
	ld   [hl], l                                     ; $435d: $75
	ld   h, a                                        ; $435e: $67
	ld   a, e                                        ; $435f: $7b
	sbc  a                                           ; $4360: $9f
	dec  c                                           ; $4361: $0d
	nop                                              ; $4362: $00
	ld   a, [bc]                                     ; $4363: $0a
	rlca                                             ; $4364: $07
	push af                                          ; $4365: $f5
	nop                                              ; $4366: $00
	ld   [bc], a                                     ; $4367: $02
	nop                                              ; $4368: $00
	ld   bc, $2004                                   ; $4369: $01 $04 $20
	nop                                              ; $436c: $00
	rlca                                             ; $436d: $07
	ld   [de], a                                     ; $436e: $12
	ld   bc, $0002                                   ; $436f: $01 $02 $00
	ld   bc, $2006                                   ; $4372: $01 $06 $20
	nop                                              ; $4375: $00
	inc  e                                           ; $4376: $1c
	ld   [bc], a                                     ; $4377: $02
	ld   bc, $0101                                   ; $4378: $01 $01 $01
	ld   d, [hl]                                     ; $437b: $56
	ld   d, [hl]                                     ; $437c: $56
	sbc  [hl]                                        ; $437d: $9e
	ld   e, b                                        ; $437e: $58
	ld   d, d                                        ; $437f: $52
	ld   h, l                                        ; $4380: $65
	ld   d, d                                        ; $4381: $52
	dec  c                                           ; $4382: $0d
	xor  e                                           ; $4383: $ab
	ldh  [c], a                                      ; $4384: $e2
	xor  $c5                                         ; $4385: $ee $c5
	ld   [hl], l                                     ; $4387: $75
	ld   h, l                                        ; $4388: $65
	ld   l, l                                        ; $4389: $6d
	sbc  l                                           ; $438a: $9d
	ld   a, e                                        ; $438b: $7b
	sbc  a                                           ; $438c: $9f
	dec  c                                           ; $438d: $0d
	nop                                              ; $438e: $00
	ld   a, [bc]                                     ; $438f: $0a
	ld   b, $3a                                      ; $4390: $06 $3a
	ld   bc, $021c                                   ; $4392: $01 $1c $02
	ld   bc, $0101                                   ; $4395: $01 $01 $01
	ld   d, [hl]                                     ; $4398: $56
	ld   d, [hl]                                     ; $4399: $56
	sbc  [hl]                                        ; $439a: $9e
	halt                                             ; $439b: $76
	ld   e, l                                        ; $439c: $5d
	ld   a, c                                        ; $439d: $79
	dec  c                                           ; $439e: $0d
	ld   e, b                                        ; $439f: $58
	ld   [hl], l                                     ; $43a0: $75
	and  c                                           ; $43a1: $a1
	ld   a, h                                        ; $43a2: $7c
	pop  bc                                          ; $43a3: $c1
	and  l                                           ; $43a4: $a5
	or   h                                           ; $43a5: $b4
	push af                                          ; $43a6: $f5
	dec  c                                           ; $43a7: $0d
	ld   e, d                                        ; $43a8: $5a
	sbc  [hl]                                        ; $43a9: $9e
	ld   e, b                                        ; $43aa: $58
	ld   d, d                                        ; $43ab: $52
	ld   h, l                                        ; $43ac: $65
	ld   e, c                                        ; $43ad: $59
	ld   [hl], c                                     ; $43ae: $71
	ld   l, l                                        ; $43af: $6d
	ld   [hl], l                                     ; $43b0: $75
	ld   h, a                                        ; $43b1: $67
	sbc  l                                           ; $43b2: $9d
	ld   a, e                                        ; $43b3: $7b
	sbc  a                                           ; $43b4: $9f
	dec  c                                           ; $43b5: $0d
	nop                                              ; $43b6: $00
	ld   a, [bc]                                     ; $43b7: $0a
	ld   b, $3a                                      ; $43b8: $06 $3a
	ld   bc, $021c                                   ; $43ba: $01 $1c $02
	nop                                              ; $43bd: $00
	nop                                              ; $43be: $00
	ld   bc, $9a6b                                   ; $43bf: $01 $6b $9a
	ld   [hl], l                                     ; $43c2: $75
	ld   a, l                                        ; $43c3: $7d
	sbc  [hl]                                        ; $43c4: $9e
	inc  bc                                          ; $43c5: $03
	add  e                                           ; $43c6: $83
	dec  b                                           ; $43c7: $05
	dec  c                                           ; $43c8: $0d
	ld   h, l                                        ; $43c9: $65
	adc  h                                           ; $43ca: $8c
	ld   h, a                                        ; $43cb: $67
	sbc  l                                           ; $43cc: $9d
	sbc  a                                           ; $43cd: $9f
	dec  c                                           ; $43ce: $0d
	nop                                              ; $43cf: $00
	ld   a, [bc]                                     ; $43d0: $0a
	dec  c                                           ; $43d1: $0d
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	rrca                                             ; $43d4: $0f
	nop                                              ; $43d5: $00
	ld   bc, $1e09                                   ; $43d6: $01 $09 $1e
	nop                                              ; $43d9: $00
	nop                                              ; $43da: $00
	ld   [bc], a                                     ; $43db: $02
	rlca                                             ; $43dc: $07
	rra                                              ; $43dd: $1f
	nop                                              ; $43de: $00
	inc  bc                                          ; $43df: $03
	ld   de, $6501                                   ; $43e0: $11 $01 $65
	ld   [hl+], a                                    ; $43e3: $22
	nop                                              ; $43e4: $00
	rlca                                             ; $43e5: $07
	sbc  h                                           ; $43e6: $9c
	nop                                              ; $43e7: $00
	inc  bc                                          ; $43e8: $03
	ld   de, $7301                                   ; $43e9: $11 $01 $73
	dec  h                                           ; $43ec: $25
	ld   [bc], a                                     ; $43ed: $02
	nop                                              ; $43ee: $00
	ld   bc, $2c02                                   ; $43ef: $01 $02 $2c
	ld   bc, $2000                                   ; $43f2: $01 $00 $20
	inc  e                                           ; $43f5: $1c
	nop                                              ; $43f6: $00
	ld   b, $56                                      ; $43f7: $06 $56
	nop                                              ; $43f9: $00
	rrca                                             ; $43fa: $0f
	nop                                              ; $43fb: $00
	ld   bc, $6301                                   ; $43fc: $01 $01 $63
	ld   e, l                                        ; $43ff: $5d
	sub  a                                           ; $4400: $97
	ld   h, e                                        ; $4401: $63
	and  c                                           ; $4402: $a1
	sbc  a                                           ; $4403: $9f
	dec  c                                           ; $4404: $0d
	nop                                              ; $4405: $00
	ld   a, [bc]                                     ; $4406: $0a
	inc  e                                           ; $4407: $1c
	ld   bc, $0000                                   ; $4408: $01 $00 $00
	ld   bc, $8f62                                   ; $440b: $01 $62 $8f
	and  c                                           ; $440e: $a1
	ld   a, b                                        ; $440f: $78
	ld   h, e                                        ; $4410: $63
	ld   d, d                                        ; $4411: $52
	sbc  a                                           ; $4412: $9f
	dec  c                                           ; $4413: $0d
	ld   d, d                                        ; $4414: $52
	adc  h                                           ; $4415: $8c
	dec  b                                           ; $4416: $05
	jr   z, jr_048_446b                              ; $4417: $28 $52

	ld   [hl], l                                     ; $4419: $75
	sbc  c                                           ; $441a: $99
	and  c                                           ; $441b: $a1
	ld   [hl], l                                     ; $441c: $75
	ld   h, a                                        ; $441d: $67
	sbc  a                                           ; $441e: $9f
	dec  c                                           ; $441f: $0d
	ld   l, e                                        ; $4420: $6b
	sbc  d                                           ; $4421: $9a
	ld   [hl], l                                     ; $4422: $75
	ld   a, l                                        ; $4423: $7d
	sbc  a                                           ; $4424: $9f
	dec  c                                           ; $4425: $0d
	nop                                              ; $4426: $00
	ld   a, [bc]                                     ; $4427: $0a
	dec  c                                           ; $4428: $0d
	nop                                              ; $4429: $00
	nop                                              ; $442a: $00
	rrca                                             ; $442b: $0f
	nop                                              ; $442c: $00
	ld   bc, $1e09                                   ; $442d: $01 $09 $1e
	nop                                              ; $4430: $00
	inc  e                                           ; $4431: $1c
	ld   bc, $0000                                   ; $4432: $01 $00 $00
	ld   bc, $9e50                                   ; $4435: $01 $50 $9e
	ld   [$6300], sp                                 ; $4438: $08 $00 $63
	and  c                                           ; $443b: $a1
	sbc  a                                           ; $443c: $9f
	dec  c                                           ; $443d: $0d
	nop                                              ; $443e: $00
	ld   a, [bc]                                     ; $443f: $0a
	rrca                                             ; $4440: $0f
	nop                                              ; $4441: $00
	ld   bc, $6301                                   ; $4442: $01 $01 $63
	ld   e, l                                        ; $4445: $5d
	sub  a                                           ; $4446: $97
	ld   h, e                                        ; $4447: $63
	and  c                                           ; $4448: $a1
	sbc  a                                           ; $4449: $9f
	dec  c                                           ; $444a: $0d
	ld   e, b                                        ; $444b: $58
	inc  b                                           ; $444c: $04
	ld   a, e                                        ; $444d: $7b
	sbc  d                                           ; $444e: $9a
	ld   h, e                                        ; $444f: $63
	adc  h                                           ; $4450: $8c
	ld   [hl], l                                     ; $4451: $75
	ld   h, a                                        ; $4452: $67
	sbc  a                                           ; $4453: $9f
	dec  c                                           ; $4454: $0d
	nop                                              ; $4455: $00
	ld   a, [bc]                                     ; $4456: $0a
	rrca                                             ; $4457: $0f
	ld   bc, $0100                                   ; $4458: $01 $00 $01
	ld   e, b                                        ; $445b: $58
	inc  b                                           ; $445c: $04
	ld   a, e                                        ; $445d: $7b
	sbc  d                                           ; $445e: $9a
	ld   h, e                                        ; $445f: $63
	adc  h                                           ; $4460: $8c
	ld   [hl], l                                     ; $4461: $75
	ld   h, a                                        ; $4462: $67
	sbc  a                                           ; $4463: $9f
	dec  c                                           ; $4464: $0d
	ld   l, e                                        ; $4465: $6b
	sbc  d                                           ; $4466: $9a
	ld   [hl], l                                     ; $4467: $75
	ld   a, l                                        ; $4468: $7d
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff

jr_048_446b:
	dec  c                                           ; $446b: $0d
	nop                                              ; $446c: $00
	ld   a, [bc]                                     ; $446d: $0a
	dec  c                                           ; $446e: $0d
	nop                                              ; $446f: $00
	nop                                              ; $4470: $00
	rrca                                             ; $4471: $0f
	nop                                              ; $4472: $00
	ld   bc, $1e09                                   ; $4473: $01 $09 $1e
	nop                                              ; $4476: $00
	rrca                                             ; $4477: $0f
	nop                                              ; $4478: $00
	ld   bc, $010d                                   ; $4479: $01 $0d $01
	nop                                              ; $447c: $00
	ld   bc, $5d63                                   ; $447d: $01 $63 $5d
	sub  a                                           ; $4480: $97
	ld   h, e                                        ; $4481: $63
	and  c                                           ; $4482: $a1
	sbc  a                                           ; $4483: $9f
	dec  c                                           ; $4484: $0d
	nop                                              ; $4485: $00
	ld   a, [bc]                                     ; $4486: $0a
	inc  e                                           ; $4487: $1c
	ld   bc, $0000                                   ; $4488: $01 $00 $00
	ld   bc, $9750                                   ; $448b: $01 $50 $97
	sbc  [hl]                                        ; $448e: $9e
	ld   [$6300], sp                                 ; $448f: $08 $00 $63
	and  c                                           ; $4492: $a1
	sbc  a                                           ; $4493: $9f
	dec  c                                           ; $4494: $0d
	nop                                              ; $4495: $00
	ld   a, [bc]                                     ; $4496: $0a
	rrca                                             ; $4497: $0f
	nop                                              ; $4498: $00
	ld   bc, $0201                                   ; $4499: $01 $01 $02
	and  l                                           ; $449c: $a5
	inc  b                                           ; $449d: $04
	xor  d                                           ; $449e: $aa
	ld   a, h                                        ; $449f: $7c
	ld   e, b                                        ; $44a0: $58
	inc  b                                           ; $44a1: $04
	xor  l                                           ; $44a2: $ad
	ld   h, d                                        ; $44a3: $62
	inc  b                                           ; $44a4: $04
	sbc  h                                           ; $44a5: $9c
	ld   a, l                                        ; $44a6: $7d
	dec  c                                           ; $44a7: $0d
	ld   e, b                                        ; $44a8: $58
	ld   d, d                                        ; $44a9: $52
	ld   h, l                                        ; $44aa: $65
	ld   e, c                                        ; $44ab: $59
	ld   [hl], c                                     ; $44ac: $71
	ld   l, l                                        ; $44ad: $6d
	ld   [hl], l                                     ; $44ae: $75
	ld   h, a                                        ; $44af: $67
	ld   a, e                                        ; $44b0: $7b
	sbc  a                                           ; $44b1: $9f
	dec  c                                           ; $44b2: $0d
	nop                                              ; $44b3: $00
	ld   a, [bc]                                     ; $44b4: $0a
	rlca                                             ; $44b5: $07
	db   $ec                                         ; $44b6: $ec
	nop                                              ; $44b7: $00
	ld   [bc], a                                     ; $44b8: $02
	nop                                              ; $44b9: $00
	ld   bc, $2004                                   ; $44ba: $01 $04 $20
	nop                                              ; $44bd: $00
	rlca                                             ; $44be: $07
	ld   [$0201], sp                                 ; $44bf: $08 $01 $02
	nop                                              ; $44c2: $00
	ld   bc, $2006                                   ; $44c3: $01 $06 $20
	nop                                              ; $44c6: $00
	inc  e                                           ; $44c7: $1c
	ld   bc, $0101                                   ; $44c8: $01 $01 $01
	ld   bc, $5656                                   ; $44cb: $01 $56 $56
	sbc  [hl]                                        ; $44ce: $9e
	ld   e, b                                        ; $44cf: $58
	ld   d, d                                        ; $44d0: $52
	ld   h, l                                        ; $44d1: $65
	ld   d, d                                        ; $44d2: $52
	dec  c                                           ; $44d3: $0d
	xor  e                                           ; $44d4: $ab
	ldh  [c], a                                      ; $44d5: $e2
	xor  $c5                                         ; $44d6: $ee $c5
	ld   [hl], l                                     ; $44d8: $75
	ld   h, l                                        ; $44d9: $65
	ld   l, l                                        ; $44da: $6d
	ld   a, e                                        ; $44db: $7b
	sbc  a                                           ; $44dc: $9f
	dec  c                                           ; $44dd: $0d
	nop                                              ; $44de: $00
	ld   a, [bc]                                     ; $44df: $0a
	ld   b, $2f                                      ; $44e0: $06 $2f
	ld   bc, $011c                                   ; $44e2: $01 $1c $01
	ld   bc, $0101                                   ; $44e5: $01 $01 $01
	ld   d, [hl]                                     ; $44e8: $56
	ld   d, [hl]                                     ; $44e9: $56
	sbc  [hl]                                        ; $44ea: $9e
	halt                                             ; $44eb: $76
	ld   e, l                                        ; $44ec: $5d
	ld   a, c                                        ; $44ed: $79
	dec  c                                           ; $44ee: $0d
	ld   e, b                                        ; $44ef: $58
	ld   [hl], l                                     ; $44f0: $75
	and  c                                           ; $44f1: $a1
	ld   a, h                                        ; $44f2: $7c
	pop  bc                                          ; $44f3: $c1
	and  l                                           ; $44f4: $a5
	or   h                                           ; $44f5: $b4
	push af                                          ; $44f6: $f5
	dec  c                                           ; $44f7: $0d
	ld   e, d                                        ; $44f8: $5a
	sbc  [hl]                                        ; $44f9: $9e
	ld   e, b                                        ; $44fa: $58
	ld   d, d                                        ; $44fb: $52
	ld   h, l                                        ; $44fc: $65
	ld   e, c                                        ; $44fd: $59
	ld   [hl], c                                     ; $44fe: $71
	ld   l, l                                        ; $44ff: $6d
	ld   [hl], l                                     ; $4500: $75
	ld   h, a                                        ; $4501: $67
	ld   a, e                                        ; $4502: $7b
	sbc  a                                           ; $4503: $9f
	dec  c                                           ; $4504: $0d
	nop                                              ; $4505: $00
	ld   a, [bc]                                     ; $4506: $0a
	ld   b, $2f                                      ; $4507: $06 $2f
	ld   bc, $011c                                   ; $4509: $01 $1c $01
	nop                                              ; $450c: $00
	nop                                              ; $450d: $00
	ld   bc, $9a6b                                   ; $450e: $01 $6b $9a
	ld   [hl], l                                     ; $4511: $75
	ld   a, l                                        ; $4512: $7d
	adc  h                                           ; $4513: $8c
	ld   l, l                                        ; $4514: $6d
	sbc  a                                           ; $4515: $9f
	dec  c                                           ; $4516: $0d
	nop                                              ; $4517: $00
	ld   a, [bc]                                     ; $4518: $0a
	dec  c                                           ; $4519: $0d
	nop                                              ; $451a: $00
	nop                                              ; $451b: $00
	rrca                                             ; $451c: $0f
	nop                                              ; $451d: $00
	ld   bc, $1e09                                   ; $451e: $01 $09 $1e
	nop                                              ; $4521: $00
	nop                                              ; $4522: $00
	ld   [bc], a                                     ; $4523: $02
	rlca                                             ; $4524: $07
	rra                                              ; $4525: $1f
	nop                                              ; $4526: $00
	inc  bc                                          ; $4527: $03
	inc  de                                          ; $4528: $13
	ld   bc, $2265                                   ; $4529: $01 $65 $22
	nop                                              ; $452c: $00
	rlca                                             ; $452d: $07
	sub  e                                           ; $452e: $93
	nop                                              ; $452f: $00
	inc  bc                                          ; $4530: $03
	inc  de                                          ; $4531: $13
	ld   bc, $2573                                   ; $4532: $01 $73 $25
	ld   [bc], a                                     ; $4535: $02
	nop                                              ; $4536: $00
	ld   bc, $2c02                                   ; $4537: $01 $02 $2c
	ld   bc, $2000                                   ; $453a: $01 $00 $20
	inc  e                                           ; $453d: $1c
	nop                                              ; $453e: $00
	ld   b, $4f                                      ; $453f: $06 $4f
	nop                                              ; $4541: $00
	rrca                                             ; $4542: $0f
	nop                                              ; $4543: $00
	ld   bc, $df01                                   ; $4544: $01 $01 $df
	db   $ec                                         ; $4547: $ec
	and  e                                           ; $4548: $a3
	ld   h, e                                        ; $4549: $63
	and  c                                           ; $454a: $a1
	sbc  a                                           ; $454b: $9f
	dec  c                                           ; $454c: $0d
	nop                                              ; $454d: $00
	ld   a, [bc]                                     ; $454e: $0a
	inc  e                                           ; $454f: $1c
	inc  bc                                          ; $4550: $03
	nop                                              ; $4551: $00
	nop                                              ; $4552: $00
	ld   bc, $8c52                                   ; $4553: $01 $52 $8c
	dec  b                                           ; $4556: $05
	jr   z, jr_048_45ab                              ; $4557: $28 $52

	ld   [hl], l                                     ; $4559: $75
	sbc  c                                           ; $455a: $99
	ld   a, h                                        ; $455b: $7c
	sbc  a                                           ; $455c: $9f
	dec  c                                           ; $455d: $0d
	adc  h                                           ; $455e: $8c
	ld   l, l                                        ; $455f: $6d
	sbc  [hl]                                        ; $4560: $9e
	ld   [bc], a                                     ; $4561: $02
	xor  d                                           ; $4562: $aa
	ld   [hl], l                                     ; $4563: $75
	ld   a, e                                        ; $4564: $7b
	sbc  a                                           ; $4565: $9f
	dec  c                                           ; $4566: $0d
	nop                                              ; $4567: $00
	ld   a, [bc]                                     ; $4568: $0a
	dec  c                                           ; $4569: $0d
	nop                                              ; $456a: $00
	nop                                              ; $456b: $00
	rrca                                             ; $456c: $0f
	nop                                              ; $456d: $00
	ld   bc, $1e09                                   ; $456e: $01 $09 $1e
	nop                                              ; $4571: $00
	inc  e                                           ; $4572: $1c
	inc  bc                                          ; $4573: $03
	nop                                              ; $4574: $00
	nop                                              ; $4575: $00
	ld   bc, $9750                                   ; $4576: $01 $50 $97
	sbc  [hl]                                        ; $4579: $9e
	ld   [$5d00], sp                                 ; $457a: $08 $00 $5d
	and  c                                           ; $457d: $a1
	sbc  a                                           ; $457e: $9f
	dec  c                                           ; $457f: $0d
	nop                                              ; $4580: $00
	ld   a, [bc]                                     ; $4581: $0a
	rrca                                             ; $4582: $0f
	nop                                              ; $4583: $00
	ld   bc, $df01                                   ; $4584: $01 $01 $df
	db   $ec                                         ; $4587: $ec
	and  e                                           ; $4588: $a3
	ld   h, e                                        ; $4589: $63
	and  c                                           ; $458a: $a1
	sbc  a                                           ; $458b: $9f
	dec  c                                           ; $458c: $0d
	ld   e, b                                        ; $458d: $58
	inc  b                                           ; $458e: $04
	ld   a, e                                        ; $458f: $7b
	sbc  d                                           ; $4590: $9a
	ld   h, e                                        ; $4591: $63
	adc  h                                           ; $4592: $8c
	ld   [hl], l                                     ; $4593: $75
	ld   h, a                                        ; $4594: $67
	sbc  a                                           ; $4595: $9f
	dec  c                                           ; $4596: $0d
	nop                                              ; $4597: $00
	ld   a, [bc]                                     ; $4598: $0a
	rrca                                             ; $4599: $0f
	inc  bc                                          ; $459a: $03
	nop                                              ; $459b: $00
	ld   bc, $0458                                   ; $459c: $01 $58 $04
	ld   a, e                                        ; $459f: $7b
	sbc  d                                           ; $45a0: $9a
	ld   h, e                                        ; $45a1: $63
	adc  h                                           ; $45a2: $8c
	sbc  a                                           ; $45a3: $9f
	dec  c                                           ; $45a4: $0d
	ld   h, [hl]                                     ; $45a5: $66
	sub  c                                           ; $45a6: $91
	ld   d, b                                        ; $45a7: $50
	ld   a, e                                        ; $45a8: $7b
	sbc  a                                           ; $45a9: $9f
	dec  c                                           ; $45aa: $0d

jr_048_45ab:
	nop                                              ; $45ab: $00
	ld   a, [bc]                                     ; $45ac: $0a
	dec  c                                           ; $45ad: $0d
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	rrca                                             ; $45b0: $0f
	nop                                              ; $45b1: $00
	ld   bc, $1e09                                   ; $45b2: $01 $09 $1e
	nop                                              ; $45b5: $00
	dec  c                                           ; $45b6: $0d
	inc  bc                                          ; $45b7: $03
	nop                                              ; $45b8: $00
	rrca                                             ; $45b9: $0f
	nop                                              ; $45ba: $00
	ld   bc, $df01                                   ; $45bb: $01 $01 $df
	db   $ec                                         ; $45be: $ec
	and  e                                           ; $45bf: $a3
	ld   h, e                                        ; $45c0: $63
	and  c                                           ; $45c1: $a1
	sbc  a                                           ; $45c2: $9f
	dec  c                                           ; $45c3: $0d
	nop                                              ; $45c4: $00
	ld   a, [bc]                                     ; $45c5: $0a
	inc  e                                           ; $45c6: $1c
	inc  bc                                          ; $45c7: $03
	nop                                              ; $45c8: $00
	nop                                              ; $45c9: $00
	ld   bc, $9750                                   ; $45ca: $01 $50 $97
	sbc  [hl]                                        ; $45cd: $9e
	ld   [$5d00], sp                                 ; $45ce: $08 $00 $5d
	and  c                                           ; $45d1: $a1
	sbc  a                                           ; $45d2: $9f
	dec  c                                           ; $45d3: $0d
	nop                                              ; $45d4: $00
	ld   a, [bc]                                     ; $45d5: $0a
	rrca                                             ; $45d6: $0f
	nop                                              ; $45d7: $00
	ld   bc, $0201                                   ; $45d8: $01 $01 $02
	and  l                                           ; $45db: $a5
	inc  b                                           ; $45dc: $04
	xor  d                                           ; $45dd: $aa
	ld   a, h                                        ; $45de: $7c
	ld   e, b                                        ; $45df: $58
	inc  b                                           ; $45e0: $04
	xor  l                                           ; $45e1: $ad
	ld   h, d                                        ; $45e2: $62
	inc  b                                           ; $45e3: $04
	sbc  h                                           ; $45e4: $9c
	ld   a, l                                        ; $45e5: $7d
	dec  c                                           ; $45e6: $0d
	ld   e, b                                        ; $45e7: $58
	ld   d, d                                        ; $45e8: $52
	ld   h, l                                        ; $45e9: $65
	ld   e, c                                        ; $45ea: $59
	ld   [hl], c                                     ; $45eb: $71
	ld   l, l                                        ; $45ec: $6d
	ld   [hl], l                                     ; $45ed: $75
	ld   h, a                                        ; $45ee: $67
	ld   a, e                                        ; $45ef: $7b
	sbc  a                                           ; $45f0: $9f
	dec  c                                           ; $45f1: $0d
	nop                                              ; $45f2: $00
	ld   a, [bc]                                     ; $45f3: $0a
	rlca                                             ; $45f4: $07
	db   $e3                                         ; $45f5: $e3
	nop                                              ; $45f6: $00
	ld   [bc], a                                     ; $45f7: $02
	nop                                              ; $45f8: $00
	ld   bc, $2004                                   ; $45f9: $01 $04 $20
	nop                                              ; $45fc: $00
	rlca                                             ; $45fd: $07
	nop                                              ; $45fe: $00
	ld   bc, $0002                                   ; $45ff: $01 $02 $00
	ld   bc, $2006                                   ; $4602: $01 $06 $20
	nop                                              ; $4605: $00
	inc  e                                           ; $4606: $1c
	inc  bc                                          ; $4607: $03
	inc  bc                                          ; $4608: $03
	inc  bc                                          ; $4609: $03
	ld   bc, $5656                                   ; $460a: $01 $56 $56
	sbc  [hl]                                        ; $460d: $9e
	ld   e, b                                        ; $460e: $58
	ld   d, d                                        ; $460f: $52
	ld   h, l                                        ; $4610: $65
	ld   d, d                                        ; $4611: $52
	dec  c                                           ; $4612: $0d
	xor  e                                           ; $4613: $ab
	ldh  [c], a                                      ; $4614: $e2
	xor  $c5                                         ; $4615: $ee $c5
	ld   l, [hl]                                     ; $4617: $6e
	ld   [hl], c                                     ; $4618: $71
	ld   l, l                                        ; $4619: $6d
	sbc  l                                           ; $461a: $9d
	ld   a, e                                        ; $461b: $7b
	sbc  a                                           ; $461c: $9f
	dec  c                                           ; $461d: $0d
	nop                                              ; $461e: $00
	ld   a, [bc]                                     ; $461f: $0a
	ld   b, $26                                      ; $4620: $06 $26
	ld   bc, $031c                                   ; $4622: $01 $1c $03
	inc  bc                                          ; $4625: $03
	inc  bc                                          ; $4626: $03
	ld   bc, $5656                                   ; $4627: $01 $56 $56
	sbc  [hl]                                        ; $462a: $9e
	halt                                             ; $462b: $76
	ld   e, l                                        ; $462c: $5d
	ld   a, c                                        ; $462d: $79
	dec  c                                           ; $462e: $0d
	ld   e, b                                        ; $462f: $58
	ld   [hl], l                                     ; $4630: $75
	and  c                                           ; $4631: $a1
	ld   a, h                                        ; $4632: $7c
	pop  bc                                          ; $4633: $c1
	and  l                                           ; $4634: $a5
	or   h                                           ; $4635: $b4
	push af                                          ; $4636: $f5
	dec  c                                           ; $4637: $0d
	ld   e, d                                        ; $4638: $5a
	sbc  [hl]                                        ; $4639: $9e
	ld   e, b                                        ; $463a: $58
	ld   d, d                                        ; $463b: $52
	ld   h, l                                        ; $463c: $65
	ld   e, c                                        ; $463d: $59
	ld   [hl], c                                     ; $463e: $71
	ld   l, l                                        ; $463f: $6d
	sbc  l                                           ; $4640: $9d
	ld   a, e                                        ; $4641: $7b
	sbc  a                                           ; $4642: $9f
	dec  c                                           ; $4643: $0d
	nop                                              ; $4644: $00
	ld   a, [bc]                                     ; $4645: $0a
	ld   b, $26                                      ; $4646: $06 $26
	ld   bc, $031c                                   ; $4648: $01 $1c $03
	nop                                              ; $464b: $00
	nop                                              ; $464c: $00
	ld   bc, $9b6b                                   ; $464d: $01 $6b $9b
	ld   l, e                                        ; $4650: $6b
	sbc  e                                           ; $4651: $9b
	inc  bc                                          ; $4652: $03
	ld   l, l                                        ; $4653: $6d
	dec  b                                           ; $4654: $05
	add  hl, de                                      ; $4655: $19
	ld   a, h                                        ; $4656: $7c
	inc  bc                                          ; $4657: $03
	ld   l, a                                        ; $4658: $6f
	ld   [bc], a                                     ; $4659: $02
	xor  c                                           ; $465a: $a9
	sub  [hl]                                        ; $465b: $96
	sbc  a                                           ; $465c: $9f
	dec  c                                           ; $465d: $0d
	ld   l, e                                        ; $465e: $6b
	sbc  d                                           ; $465f: $9a
	ld   h, [hl]                                     ; $4660: $66
	sub  c                                           ; $4661: $91
	sbc  a                                           ; $4662: $9f
	dec  c                                           ; $4663: $0d
	nop                                              ; $4664: $00
	ld   a, [bc]                                     ; $4665: $0a
	dec  c                                           ; $4666: $0d
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	rrca                                             ; $4669: $0f
	nop                                              ; $466a: $00
	ld   bc, $1e09                                   ; $466b: $01 $09 $1e
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	ld   [bc], a                                     ; $4670: $02
	rlca                                             ; $4671: $07
	rra                                              ; $4672: $1f
	nop                                              ; $4673: $00
	inc  bc                                          ; $4674: $03
	inc  d                                           ; $4675: $14
	ld   bc, $2364                                   ; $4676: $01 $64 $23
	nop                                              ; $4679: $00
	rlca                                             ; $467a: $07
	sbc  d                                           ; $467b: $9a
	nop                                              ; $467c: $00
	inc  bc                                          ; $467d: $03
	inc  d                                           ; $467e: $14
	ld   bc, $2573                                   ; $467f: $01 $73 $25
	ld   [bc], a                                     ; $4682: $02
	nop                                              ; $4683: $00
	ld   bc, $2c02                                   ; $4684: $01 $02 $2c
	ld   bc, $2000                                   ; $4687: $01 $00 $20
	inc  e                                           ; $468a: $1c
	nop                                              ; $468b: $00
	ld   b, $56                                      ; $468c: $06 $56
	nop                                              ; $468e: $00
	rrca                                             ; $468f: $0f
	nop                                              ; $4690: $00
	ld   bc, $9201                                   ; $4691: $01 $01 $92
	ld   d, b                                        ; $4694: $50
	sbc  [hl]                                        ; $4695: $9e
	and  e                                           ; $4696: $a3
	and  l                                           ; $4697: $a5
	db   $ec                                         ; $4698: $ec
	cp   d                                           ; $4699: $ba
	sbc  a                                           ; $469a: $9f
	dec  c                                           ; $469b: $0d
	nop                                              ; $469c: $00
	ld   a, [bc]                                     ; $469d: $0a
	dec  b                                           ; $469e: $05
	add  b                                           ; $469f: $80
	sub  $01                                         ; $46a0: $d6 $01
	ld   bc, $1c00                                   ; $46a2: $01 $00 $1c
	inc  b                                           ; $46a5: $04
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	ld   bc, $a5a3                                   ; $46a8: $01 $a3 $a5
	db   $ec                                         ; $46ab: $ec
	cp   d                                           ; $46ac: $ba
	sbc  [hl]                                        ; $46ad: $9e
	ld   d, d                                        ; $46ae: $52
	ld   l, e                                        ; $46af: $6b
	ld   e, d                                        ; $46b0: $5a
	ld   h, l                                        ; $46b1: $65
	ld   d, d                                        ; $46b2: $52
	ld   a, h                                        ; $46b3: $7c
	sbc  a                                           ; $46b4: $9f
	dec  c                                           ; $46b5: $0d
	adc  h                                           ; $46b6: $8c
	ld   l, l                                        ; $46b7: $6d
	ld   a, e                                        ; $46b8: $7b
	sbc  a                                           ; $46b9: $9f
	dec  c                                           ; $46ba: $0d
	nop                                              ; $46bb: $00
	ld   a, [bc]                                     ; $46bc: $0a
	dec  c                                           ; $46bd: $0d
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	rrca                                             ; $46c0: $0f
	nop                                              ; $46c1: $00
	ld   bc, $1e09                                   ; $46c2: $01 $09 $1e
	nop                                              ; $46c5: $00
	inc  e                                           ; $46c6: $1c
	inc  b                                           ; $46c7: $04
	nop                                              ; $46c8: $00
	nop                                              ; $46c9: $00
	ld   bc, $9e50                                   ; $46ca: $01 $50 $9e
	ld   l, a                                        ; $46cd: $6f
	ld   d, d                                        ; $46ce: $52
	ld   [bc], a                                     ; $46cf: $02
	inc  de                                          ; $46d0: $13
	ld   l, a                                        ; $46d1: $6f
	sub  c                                           ; $46d2: $91
	and  c                                           ; $46d3: $a1
	sbc  a                                           ; $46d4: $9f
	dec  c                                           ; $46d5: $0d
	nop                                              ; $46d6: $00
	ld   a, [bc]                                     ; $46d7: $0a
	rrca                                             ; $46d8: $0f
	nop                                              ; $46d9: $00
	ld   bc, $9201                                   ; $46da: $01 $01 $92
	ld   d, b                                        ; $46dd: $50
	sbc  [hl]                                        ; $46de: $9e
	and  e                                           ; $46df: $a3
	and  l                                           ; $46e0: $a5
	db   $ec                                         ; $46e1: $ec
	cp   d                                           ; $46e2: $ba
	sbc  a                                           ; $46e3: $9f
	dec  c                                           ; $46e4: $0d
	nop                                              ; $46e5: $00
	ld   a, [bc]                                     ; $46e6: $0a
	dec  b                                           ; $46e7: $05
	add  b                                           ; $46e8: $80
	sub  $01                                         ; $46e9: $d6 $01
	ld   bc, $0f00                                   ; $46eb: $01 $00 $0f
	inc  b                                           ; $46ee: $04
	nop                                              ; $46ef: $00
	ld   bc, $9166                                   ; $46f0: $01 $66 $91
	ld   d, b                                        ; $46f3: $50
	ld   a, e                                        ; $46f4: $7b
	sbc  [hl]                                        ; $46f5: $9e
	ld   l, a                                        ; $46f6: $6f
	ld   d, d                                        ; $46f7: $52
	ld   [bc], a                                     ; $46f8: $02
	inc  de                                          ; $46f9: $13
	ld   l, a                                        ; $46fa: $6f
	sub  c                                           ; $46fb: $91
	and  c                                           ; $46fc: $a1
	sbc  a                                           ; $46fd: $9f
	dec  c                                           ; $46fe: $0d
	nop                                              ; $46ff: $00
	ld   a, [bc]                                     ; $4700: $0a
	dec  c                                           ; $4701: $0d
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	rrca                                             ; $4704: $0f
	nop                                              ; $4705: $00
	ld   bc, $1e09                                   ; $4706: $01 $09 $1e
	nop                                              ; $4709: $00
	rrca                                             ; $470a: $0f
	nop                                              ; $470b: $00
	ld   bc, $040d                                   ; $470c: $01 $0d $04
	nop                                              ; $470f: $00
	ld   bc, $5092                                   ; $4710: $01 $92 $50
	sbc  [hl]                                        ; $4713: $9e
	and  e                                           ; $4714: $a3
	and  l                                           ; $4715: $a5
	db   $ec                                         ; $4716: $ec
	cp   d                                           ; $4717: $ba
	sbc  a                                           ; $4718: $9f
	dec  c                                           ; $4719: $0d
	nop                                              ; $471a: $00
	ld   a, [bc]                                     ; $471b: $0a
	dec  b                                           ; $471c: $05
	add  b                                           ; $471d: $80
	sub  $01                                         ; $471e: $d6 $01
	ld   bc, $1c00                                   ; $4720: $01 $00 $1c
	inc  b                                           ; $4723: $04
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	ld   bc, $9e50                                   ; $4726: $01 $50 $9e
	ld   l, a                                        ; $4729: $6f
	ld   d, d                                        ; $472a: $52
	ld   [bc], a                                     ; $472b: $02
	inc  de                                          ; $472c: $13
	ld   l, a                                        ; $472d: $6f
	sub  c                                           ; $472e: $91
	and  c                                           ; $472f: $a1
	sbc  a                                           ; $4730: $9f
	dec  c                                           ; $4731: $0d
	nop                                              ; $4732: $00
	ld   a, [bc]                                     ; $4733: $0a
	rrca                                             ; $4734: $0f
	nop                                              ; $4735: $00
	ld   bc, $0201                                   ; $4736: $01 $01 $02
	and  l                                           ; $4739: $a5
	inc  b                                           ; $473a: $04
	xor  d                                           ; $473b: $aa
	ld   a, h                                        ; $473c: $7c
	ld   e, b                                        ; $473d: $58
	inc  b                                           ; $473e: $04
	xor  l                                           ; $473f: $ad
	ld   h, d                                        ; $4740: $62
	inc  b                                           ; $4741: $04
	sbc  h                                           ; $4742: $9c
	ld   a, l                                        ; $4743: $7d
	dec  c                                           ; $4744: $0d
	ld   e, b                                        ; $4745: $58
	ld   d, d                                        ; $4746: $52
	ld   h, l                                        ; $4747: $65
	ld   e, c                                        ; $4748: $59
	ld   [hl], c                                     ; $4749: $71
	ld   l, l                                        ; $474a: $6d
	ld   a, e                                        ; $474b: $7b
	sbc  a                                           ; $474c: $9f
	dec  c                                           ; $474d: $0d
	nop                                              ; $474e: $00
	ld   a, [bc]                                     ; $474f: $0a
	rlca                                             ; $4750: $07
	ldh  a, [c]                                      ; $4751: $f2
	nop                                              ; $4752: $00
	ld   [bc], a                                     ; $4753: $02
	nop                                              ; $4754: $00
	ld   bc, $2004                                   ; $4755: $01 $04 $20
	nop                                              ; $4758: $00
	rlca                                             ; $4759: $07
	dec  d                                           ; $475a: $15
	ld   bc, $0002                                   ; $475b: $01 $02 $00
	ld   bc, $2006                                   ; $475e: $01 $06 $20
	nop                                              ; $4761: $00
	inc  e                                           ; $4762: $1c
	inc  b                                           ; $4763: $04
	ld   bc, $0101                                   ; $4764: $01 $01 $01
	ld   d, h                                        ; $4767: $54
	and  c                                           ; $4768: $a1
	sbc  a                                           ; $4769: $9f
	and  e                                           ; $476a: $a3
	and  l                                           ; $476b: $a5
	db   $ec                                         ; $476c: $ec
	cp   d                                           ; $476d: $ba
	sbc  [hl]                                        ; $476e: $9e
	dec  c                                           ; $476f: $0d
	xor  e                                           ; $4770: $ab
	ldh  [c], a                                      ; $4771: $e2
	xor  $c5                                         ; $4772: $ee $c5
	ld   e, d                                        ; $4774: $5a
	sbc  [hl]                                        ; $4775: $9e
	dec  c                                           ; $4776: $0d
	ld   e, b                                        ; $4777: $58
	ld   d, d                                        ; $4778: $52
	ld   h, l                                        ; $4779: $65
	ld   e, c                                        ; $477a: $59
	ld   [hl], c                                     ; $477b: $71
	ld   l, l                                        ; $477c: $6d
	sub  [hl]                                        ; $477d: $96
	sbc  a                                           ; $477e: $9f
	dec  c                                           ; $477f: $0d
	nop                                              ; $4780: $00
	ld   a, [bc]                                     ; $4781: $0a
	ld   b, $3c                                      ; $4782: $06 $3c
	ld   bc, $041c                                   ; $4784: $01 $1c $04
	ld   bc, $0101                                   ; $4787: $01 $01 $01
	ld   d, h                                        ; $478a: $54
	and  c                                           ; $478b: $a1
	sbc  a                                           ; $478c: $9f
	and  e                                           ; $478d: $a3
	and  l                                           ; $478e: $a5
	db   $ec                                         ; $478f: $ec
	cp   d                                           ; $4790: $ba
	sbc  [hl]                                        ; $4791: $9e
	dec  c                                           ; $4792: $0d
	ld   e, b                                        ; $4793: $58
	ld   [hl], l                                     ; $4794: $75
	and  c                                           ; $4795: $a1
	ld   a, h                                        ; $4796: $7c
	pop  bc                                          ; $4797: $c1
	and  l                                           ; $4798: $a5
	or   h                                           ; $4799: $b4
	push af                                          ; $479a: $f5
	dec  c                                           ; $479b: $0d
	ld   e, d                                        ; $479c: $5a
	sbc  [hl]                                        ; $479d: $9e
	ld   e, b                                        ; $479e: $58
	ld   d, d                                        ; $479f: $52
	ld   h, l                                        ; $47a0: $65
	ld   e, c                                        ; $47a1: $59
	ld   [hl], c                                     ; $47a2: $71
	ld   l, l                                        ; $47a3: $6d
	sub  [hl]                                        ; $47a4: $96
	sbc  a                                           ; $47a5: $9f
	dec  c                                           ; $47a6: $0d
	nop                                              ; $47a7: $00
	ld   a, [bc]                                     ; $47a8: $0a
	ld   b, $3c                                      ; $47a9: $06 $3c
	ld   bc, $041c                                   ; $47ab: $01 $1c $04
	nop                                              ; $47ae: $00
	nop                                              ; $47af: $00
	ld   bc, $9166                                   ; $47b0: $01 $66 $91
	ld   d, b                                        ; $47b3: $50
	ld   a, e                                        ; $47b4: $7b
	sbc  [hl]                                        ; $47b5: $9e
	ld   l, a                                        ; $47b6: $6f
	ld   d, d                                        ; $47b7: $52
	ld   [bc], a                                     ; $47b8: $02
	inc  de                                          ; $47b9: $13
	ld   l, a                                        ; $47ba: $6f
	sub  c                                           ; $47bb: $91
	and  c                                           ; $47bc: $a1
	sbc  a                                           ; $47bd: $9f
	dec  c                                           ; $47be: $0d
	nop                                              ; $47bf: $00
	ld   a, [bc]                                     ; $47c0: $0a
	dec  c                                           ; $47c1: $0d
	nop                                              ; $47c2: $00
	nop                                              ; $47c3: $00
	rrca                                             ; $47c4: $0f
	nop                                              ; $47c5: $00
	ld   bc, $1e09                                   ; $47c6: $01 $09 $1e
	nop                                              ; $47c9: $00
	nop                                              ; $47ca: $00
	ld   [bc], a                                     ; $47cb: $02
	rlca                                             ; $47cc: $07
	rra                                              ; $47cd: $1f
	nop                                              ; $47ce: $00
	inc  bc                                          ; $47cf: $03
	ld   d, $01                                      ; $47d0: $16 $01
	ld   h, l                                        ; $47d2: $65
	ld   [hl+], a                                    ; $47d3: $22
	nop                                              ; $47d4: $00
	rlca                                             ; $47d5: $07
	sbc  c                                           ; $47d6: $99
	nop                                              ; $47d7: $00
	inc  bc                                          ; $47d8: $03
	ld   d, $01                                      ; $47d9: $16 $01
	ld   [hl], e                                     ; $47db: $73
	dec  h                                           ; $47dc: $25
	ld   [bc], a                                     ; $47dd: $02
	nop                                              ; $47de: $00
	ld   bc, $2c02                                   ; $47df: $01 $02 $2c
	ld   bc, $2000                                   ; $47e2: $01 $00 $20
	inc  e                                           ; $47e5: $1c
	nop                                              ; $47e6: $00
	ld   b, $57                                      ; $47e7: $06 $57
	nop                                              ; $47e9: $00
	rrca                                             ; $47ea: $0f
	nop                                              ; $47eb: $00
	ld   bc, $ac01                                   ; $47ec: $01 $01 $ac
	push af                                          ; $47ef: $f5
	bit  4, e                                        ; $47f0: $cb $63
	and  c                                           ; $47f2: $a1
	sbc  a                                           ; $47f3: $9f
	dec  c                                           ; $47f4: $0d
	nop                                              ; $47f5: $00
	ld   a, [bc]                                     ; $47f6: $0a
	inc  e                                           ; $47f7: $1c
	ld   b, $00                                      ; $47f8: $06 $00
	nop                                              ; $47fa: $00
	ld   bc, $999d                                   ; $47fb: $01 $9d $99
	ld   d, d                                        ; $47fe: $52
	sbc  a                                           ; $47ff: $9f
	ld   l, a                                        ; $4800: $6f
	sub  l                                           ; $4801: $95
	ld   d, d                                        ; $4802: $52
	halt                                             ; $4803: $76
	dec  b                                           ; $4804: $05
	jr   z, jr_048_4863                              ; $4805: $28 $5c

	ld   a, h                                        ; $4807: $7c
	dec  c                                           ; $4808: $0d
	inc  b                                           ; $4809: $04
	di                                               ; $480a: $f3
	ld   e, d                                        ; $480b: $5a
	ld   d, b                                        ; $480c: $50
	sbc  c                                           ; $480d: $99
	and  c                                           ; $480e: $a1
	ld   l, [hl]                                     ; $480f: $6e
	sbc  a                                           ; $4810: $9f
	dec  c                                           ; $4811: $0d
	adc  h                                           ; $4812: $8c
	ld   l, l                                        ; $4813: $6d
	ld   a, b                                        ; $4814: $78
	sbc  a                                           ; $4815: $9f
	dec  c                                           ; $4816: $0d
	nop                                              ; $4817: $00
	ld   a, [bc]                                     ; $4818: $0a
	dec  c                                           ; $4819: $0d
	nop                                              ; $481a: $00
	nop                                              ; $481b: $00
	rrca                                             ; $481c: $0f
	nop                                              ; $481d: $00
	ld   bc, $1e09                                   ; $481e: $01 $09 $1e
	nop                                              ; $4821: $00
	inc  e                                           ; $4822: $1c
	ld   b, $00                                      ; $4823: $06 $00
	nop                                              ; $4825: $00
	ld   bc, $5496                                   ; $4826: $01 $96 $54
	sbc  [hl]                                        ; $4829: $9e
	ld   [$9f00], sp                                 ; $482a: $08 $00 $9f
	dec  c                                           ; $482d: $0d
	nop                                              ; $482e: $00
	ld   a, [bc]                                     ; $482f: $0a
	rrca                                             ; $4830: $0f
	nop                                              ; $4831: $00
	ld   bc, $5801                                   ; $4832: $01 $01 $58
	inc  b                                           ; $4835: $04
	ld   a, e                                        ; $4836: $7b
	sbc  d                                           ; $4837: $9a
	ld   h, e                                        ; $4838: $63
	adc  h                                           ; $4839: $8c
	ld   [hl], l                                     ; $483a: $75
	ld   h, a                                        ; $483b: $67
	sbc  a                                           ; $483c: $9f
	dec  c                                           ; $483d: $0d
	xor  h                                           ; $483e: $ac
	push af                                          ; $483f: $f5
	bit  4, e                                        ; $4840: $cb $63
	and  c                                           ; $4842: $a1
	sbc  a                                           ; $4843: $9f
	dec  c                                           ; $4844: $0d
	nop                                              ; $4845: $00
	ld   a, [bc]                                     ; $4846: $0a
	rrca                                             ; $4847: $0f
	ld   b, $00                                      ; $4848: $06 $00
	ld   bc, $0458                                   ; $484a: $01 $58 $04
	ld   a, e                                        ; $484d: $7b
	sbc  d                                           ; $484e: $9a
	ld   h, e                                        ; $484f: $63
	and  c                                           ; $4850: $a1
	sbc  a                                           ; $4851: $9f
	dec  c                                           ; $4852: $0d
	ld   h, [hl]                                     ; $4853: $66
	sub  c                                           ; $4854: $91
	ld   d, b                                        ; $4855: $50
	ld   a, b                                        ; $4856: $78
	sbc  a                                           ; $4857: $9f
	dec  c                                           ; $4858: $0d
	nop                                              ; $4859: $00
	ld   a, [bc]                                     ; $485a: $0a
	dec  c                                           ; $485b: $0d
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	rrca                                             ; $485e: $0f
	nop                                              ; $485f: $00
	ld   bc, $1e09                                   ; $4860: $01 $09 $1e

jr_048_4863:
	nop                                              ; $4863: $00
	rrca                                             ; $4864: $0f
	nop                                              ; $4865: $00
	ld   bc, $060d                                   ; $4866: $01 $0d $06
	nop                                              ; $4869: $00
	ld   bc, $f5ac                                   ; $486a: $01 $ac $f5
	bit  4, e                                        ; $486d: $cb $63
	and  c                                           ; $486f: $a1
	sbc  a                                           ; $4870: $9f
	dec  c                                           ; $4871: $0d
	nop                                              ; $4872: $00
	ld   a, [bc]                                     ; $4873: $0a
	inc  e                                           ; $4874: $1c
	ld   b, $00                                      ; $4875: $06 $00
	nop                                              ; $4877: $00
	ld   bc, $5496                                   ; $4878: $01 $96 $54
	sbc  [hl]                                        ; $487b: $9e
	ld   [$9f00], sp                                 ; $487c: $08 $00 $9f
	dec  c                                           ; $487f: $0d
	nop                                              ; $4880: $00
	ld   a, [bc]                                     ; $4881: $0a
	rrca                                             ; $4882: $0f
	nop                                              ; $4883: $00
	ld   bc, $0201                                   ; $4884: $01 $01 $02
	and  l                                           ; $4887: $a5
	inc  b                                           ; $4888: $04
	xor  d                                           ; $4889: $aa
	ld   a, h                                        ; $488a: $7c
	ld   e, b                                        ; $488b: $58
	inc  b                                           ; $488c: $04
	xor  l                                           ; $488d: $ad
	ld   h, d                                        ; $488e: $62
	inc  b                                           ; $488f: $04
	sbc  h                                           ; $4890: $9c
	ld   a, l                                        ; $4891: $7d
	dec  c                                           ; $4892: $0d
	ld   e, b                                        ; $4893: $58
	ld   d, d                                        ; $4894: $52
	ld   h, l                                        ; $4895: $65
	ld   e, c                                        ; $4896: $59
	ld   [hl], c                                     ; $4897: $71
	ld   l, l                                        ; $4898: $6d
	ld   [hl], l                                     ; $4899: $75
	ld   h, a                                        ; $489a: $67
	ld   a, e                                        ; $489b: $7b
	sbc  a                                           ; $489c: $9f
	dec  c                                           ; $489d: $0d
	nop                                              ; $489e: $00
	ld   a, [bc]                                     ; $489f: $0a
	rlca                                             ; $48a0: $07
	rst  $20                                         ; $48a1: $e7
	nop                                              ; $48a2: $00
	ld   [bc], a                                     ; $48a3: $02
	nop                                              ; $48a4: $00
	ld   bc, $2004                                   ; $48a5: $01 $04 $20
	nop                                              ; $48a8: $00
	rlca                                             ; $48a9: $07
	dec  b                                           ; $48aa: $05
	ld   bc, $0002                                   ; $48ab: $01 $02 $00
	ld   bc, $2006                                   ; $48ae: $01 $06 $20
	nop                                              ; $48b1: $00
	inc  e                                           ; $48b2: $1c
	ld   b, $01                                      ; $48b3: $06 $01
	ld   bc, $6b01                                   ; $48b5: $01 $01 $6b
	ld   d, h                                        ; $48b8: $54
	ld   l, e                                        ; $48b9: $6b
	ld   d, h                                        ; $48ba: $54
	sbc  [hl]                                        ; $48bb: $9e
	ld   d, h                                        ; $48bc: $54
	adc  h                                           ; $48bd: $8c
	ld   d, d                                        ; $48be: $52
	dec  c                                           ; $48bf: $0d
	xor  e                                           ; $48c0: $ab
	ldh  [c], a                                      ; $48c1: $e2
	xor  $c5                                         ; $48c2: $ee $c5
	ld   l, [hl]                                     ; $48c4: $6e
	ld   [hl], c                                     ; $48c5: $71
	ld   l, l                                        ; $48c6: $6d
	sub  [hl]                                        ; $48c7: $96
	ld   a, b                                        ; $48c8: $78
	sbc  a                                           ; $48c9: $9f
	dec  c                                           ; $48ca: $0d
	nop                                              ; $48cb: $00
	ld   a, [bc]                                     ; $48cc: $0a
	ld   b, $2d                                      ; $48cd: $06 $2d
	ld   bc, $061c                                   ; $48cf: $01 $1c $06
	ld   bc, $0101                                   ; $48d2: $01 $01 $01
	ld   l, e                                        ; $48d5: $6b
	ld   d, h                                        ; $48d6: $54
	ld   l, e                                        ; $48d7: $6b
	ld   d, h                                        ; $48d8: $54
	sbc  [hl]                                        ; $48d9: $9e
	halt                                             ; $48da: $76
	ld   e, l                                        ; $48db: $5d
	ld   a, c                                        ; $48dc: $79
	dec  c                                           ; $48dd: $0d
	ld   e, b                                        ; $48de: $58
	ld   [hl], l                                     ; $48df: $75
	and  c                                           ; $48e0: $a1
	ld   a, h                                        ; $48e1: $7c
	pop  bc                                          ; $48e2: $c1
	and  l                                           ; $48e3: $a5
	or   h                                           ; $48e4: $b4
	push af                                          ; $48e5: $f5
	dec  c                                           ; $48e6: $0d
	ld   e, d                                        ; $48e7: $5a
	sbc  [hl]                                        ; $48e8: $9e
	ld   d, h                                        ; $48e9: $54
	adc  h                                           ; $48ea: $8c
	ld   e, c                                        ; $48eb: $59
	ld   [hl], c                                     ; $48ec: $71
	ld   l, l                                        ; $48ed: $6d
	sub  [hl]                                        ; $48ee: $96
	ld   a, b                                        ; $48ef: $78
	ld   d, b                                        ; $48f0: $50
	sbc  a                                           ; $48f1: $9f
	dec  c                                           ; $48f2: $0d
	nop                                              ; $48f3: $00
	ld   a, [bc]                                     ; $48f4: $0a
	ld   b, $2d                                      ; $48f5: $06 $2d
	ld   bc, $061c                                   ; $48f7: $01 $1c $06
	nop                                              ; $48fa: $00
	nop                                              ; $48fb: $00
	ld   bc, $9166                                   ; $48fc: $01 $66 $91
	ld   d, b                                        ; $48ff: $50
	ld   a, b                                        ; $4900: $78
	sbc  a                                           ; $4901: $9f
	dec  c                                           ; $4902: $0d
	nop                                              ; $4903: $00
	ld   a, [bc]                                     ; $4904: $0a
	dec  c                                           ; $4905: $0d
	nop                                              ; $4906: $00
	nop                                              ; $4907: $00
	rrca                                             ; $4908: $0f
	nop                                              ; $4909: $00
	ld   bc, $1e09                                   ; $490a: $01 $09 $1e
	nop                                              ; $490d: $00
	nop                                              ; $490e: $00
	ld   [bc], a                                     ; $490f: $02
	rlca                                             ; $4910: $07
	rra                                              ; $4911: $1f
	nop                                              ; $4912: $00
	inc  bc                                          ; $4913: $03
	dec  d                                           ; $4914: $15
	ld   bc, $2265                                   ; $4915: $01 $65 $22
	nop                                              ; $4918: $00
	rlca                                             ; $4919: $07
	sbc  d                                           ; $491a: $9a
	nop                                              ; $491b: $00
	inc  bc                                          ; $491c: $03
	dec  d                                           ; $491d: $15
	ld   bc, $2573                                   ; $491e: $01 $73 $25
	ld   [bc], a                                     ; $4921: $02
	nop                                              ; $4922: $00
	ld   bc, $2c02                                   ; $4923: $01 $02 $2c
	ld   bc, $2000                                   ; $4926: $01 $00 $20
	inc  e                                           ; $4929: $1c
	nop                                              ; $492a: $00
	ld   b, $57                                      ; $492b: $06 $57
	nop                                              ; $492d: $00
	rrca                                             ; $492e: $0f
	nop                                              ; $492f: $00
	ld   bc, $0201                                   ; $4930: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4933: $cf
	dec  b                                           ; $4934: $05
	ld   a, [de]                                     ; $4935: $1a
	ld   h, e                                        ; $4936: $63
	and  c                                           ; $4937: $a1
	sbc  a                                           ; $4938: $9f
	dec  c                                           ; $4939: $0d
	nop                                              ; $493a: $00
	ld   a, [bc]                                     ; $493b: $0a
	inc  e                                           ; $493c: $1c
	dec  b                                           ; $493d: $05
	nop                                              ; $493e: $00
	nop                                              ; $493f: $00
	ld   bc, $a502                                   ; $4940: $01 $02 $a5
	ld   l, a                                        ; $4943: $6f
	sub  l                                           ; $4944: $95
	ld   [hl], c                                     ; $4945: $71
	halt                                             ; $4946: $76
	sbc  [hl]                                        ; $4947: $9e
	inc  b                                           ; $4948: $04
	ld   c, $04                                      ; $4949: $0e $04
	adc  h                                           ; $494b: $8c
	ld   a, b                                        ; $494c: $78
	and  c                                           ; $494d: $a1
	sub  d                                           ; $494e: $92
	sbc  a                                           ; $494f: $9f
	dec  c                                           ; $4950: $0d
	ld   h, a                                        ; $4951: $67
	adc  h                                           ; $4952: $8c
	and  c                                           ; $4953: $a1
	ld   a, b                                        ; $4954: $78
	db   $fc                                         ; $4955: $fc
	sbc  a                                           ; $4956: $9f
	adc  c                                           ; $4957: $89
	ld   a, b                                        ; $4958: $78
	sbc  a                                           ; $4959: $9f
	dec  c                                           ; $495a: $0d
	nop                                              ; $495b: $00
	ld   a, [bc]                                     ; $495c: $0a
	dec  c                                           ; $495d: $0d
	nop                                              ; $495e: $00
	nop                                              ; $495f: $00
	rrca                                             ; $4960: $0f
	nop                                              ; $4961: $00
	ld   bc, $1e09                                   ; $4962: $01 $09 $1e
	nop                                              ; $4965: $00
	inc  e                                           ; $4966: $1c
	dec  b                                           ; $4967: $05
	nop                                              ; $4968: $00
	nop                                              ; $4969: $00
	ld   bc, $7196                                   ; $496a: $01 $96 $71
	sbc  [hl]                                        ; $496d: $9e
	ld   [$7d00], sp                                 ; $496e: $08 $00 $7d
	and  c                                           ; $4971: $a1
	sbc  a                                           ; $4972: $9f
	dec  c                                           ; $4973: $0d
	nop                                              ; $4974: $00
	ld   a, [bc]                                     ; $4975: $0a
	rrca                                             ; $4976: $0f
	nop                                              ; $4977: $00
	ld   bc, $0201                                   ; $4978: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $497b: $cf
	dec  b                                           ; $497c: $05
	ld   a, [de]                                     ; $497d: $1a
	ld   h, e                                        ; $497e: $63
	and  c                                           ; $497f: $a1
	sbc  a                                           ; $4980: $9f
	dec  c                                           ; $4981: $0d
	ld   e, b                                        ; $4982: $58
	inc  b                                           ; $4983: $04
	ld   a, e                                        ; $4984: $7b
	sbc  d                                           ; $4985: $9a
	ld   h, e                                        ; $4986: $63
	adc  h                                           ; $4987: $8c
	ld   [hl], l                                     ; $4988: $75
	ld   h, a                                        ; $4989: $67
	sbc  a                                           ; $498a: $9f
	dec  c                                           ; $498b: $0d
	nop                                              ; $498c: $00
	ld   a, [bc]                                     ; $498d: $0a
	rrca                                             ; $498e: $0f
	dec  b                                           ; $498f: $05
	nop                                              ; $4990: $00
	ld   bc, $0458                                   ; $4991: $01 $58 $04
	ld   a, e                                        ; $4994: $7b
	sbc  d                                           ; $4995: $9a
	ld   h, e                                        ; $4996: $63
	and  c                                           ; $4997: $a1
	sbc  a                                           ; $4998: $9f
	dec  c                                           ; $4999: $0d
	adc  c                                           ; $499a: $89
	ld   a, b                                        ; $499b: $78
	sbc  a                                           ; $499c: $9f
	dec  c                                           ; $499d: $0d
	nop                                              ; $499e: $00
	ld   a, [bc]                                     ; $499f: $0a
	dec  c                                           ; $49a0: $0d
	nop                                              ; $49a1: $00
	nop                                              ; $49a2: $00
	rrca                                             ; $49a3: $0f
	nop                                              ; $49a4: $00
	ld   bc, $1e09                                   ; $49a5: $01 $09 $1e
	nop                                              ; $49a8: $00
	rrca                                             ; $49a9: $0f
	nop                                              ; $49aa: $00
	ld   bc, $050d                                   ; $49ab: $01 $0d $05
	nop                                              ; $49ae: $00
	ld   bc, $cf02                                   ; $49af: $01 $02 $cf
	dec  b                                           ; $49b2: $05
	ld   a, [de]                                     ; $49b3: $1a
	ld   h, e                                        ; $49b4: $63
	and  c                                           ; $49b5: $a1
	sbc  a                                           ; $49b6: $9f
	dec  c                                           ; $49b7: $0d
	nop                                              ; $49b8: $00
	ld   a, [bc]                                     ; $49b9: $0a
	inc  e                                           ; $49ba: $1c
	dec  b                                           ; $49bb: $05
	nop                                              ; $49bc: $00
	nop                                              ; $49bd: $00
	ld   bc, $7196                                   ; $49be: $01 $96 $71
	sbc  [hl]                                        ; $49c1: $9e
	ld   [$7d00], sp                                 ; $49c2: $08 $00 $7d
	and  c                                           ; $49c5: $a1
	sbc  a                                           ; $49c6: $9f
	dec  c                                           ; $49c7: $0d
	nop                                              ; $49c8: $00
	ld   a, [bc]                                     ; $49c9: $0a
	rrca                                             ; $49ca: $0f
	nop                                              ; $49cb: $00
	ld   bc, $0201                                   ; $49cc: $01 $01 $02
	and  l                                           ; $49cf: $a5
	inc  b                                           ; $49d0: $04
	xor  d                                           ; $49d1: $aa
	ld   a, h                                        ; $49d2: $7c
	ld   e, b                                        ; $49d3: $58
	inc  b                                           ; $49d4: $04
	xor  l                                           ; $49d5: $ad
	ld   h, d                                        ; $49d6: $62
	inc  b                                           ; $49d7: $04
	sbc  h                                           ; $49d8: $9c
	ld   a, l                                        ; $49d9: $7d
	dec  c                                           ; $49da: $0d
	ld   e, b                                        ; $49db: $58
	ld   d, d                                        ; $49dc: $52
	ld   h, l                                        ; $49dd: $65
	ld   e, c                                        ; $49de: $59
	ld   [hl], c                                     ; $49df: $71
	ld   l, l                                        ; $49e0: $6d
	ld   [hl], l                                     ; $49e1: $75
	ld   h, a                                        ; $49e2: $67
	ld   a, e                                        ; $49e3: $7b
	sbc  a                                           ; $49e4: $9f
	dec  c                                           ; $49e5: $0d
	nop                                              ; $49e6: $00
	ld   a, [bc]                                     ; $49e7: $0a
	rlca                                             ; $49e8: $07
	db   $eb                                         ; $49e9: $eb
	nop                                              ; $49ea: $00
	ld   [bc], a                                     ; $49eb: $02
	nop                                              ; $49ec: $00
	ld   bc, $2004                                   ; $49ed: $01 $04 $20
	nop                                              ; $49f0: $00
	rlca                                             ; $49f1: $07
	ld   [$0201], sp                                 ; $49f2: $08 $01 $02
	nop                                              ; $49f5: $00
	ld   bc, $2006                                   ; $49f6: $01 $06 $20
	nop                                              ; $49f9: $00
	inc  e                                           ; $49fa: $1c
	dec  b                                           ; $49fb: $05
	ld   bc, $0101                                   ; $49fc: $01 $01 $01
	ld   l, e                                        ; $49ff: $6b
	ld   l, e                                        ; $4a00: $6b
	sbc  [hl]                                        ; $4a01: $9e
	ld   e, b                                        ; $4a02: $58
	ld   d, d                                        ; $4a03: $52
	ld   h, l                                        ; $4a04: $65
	ld   d, d                                        ; $4a05: $52
	dec  c                                           ; $4a06: $0d
	xor  e                                           ; $4a07: $ab
	ldh  [c], a                                      ; $4a08: $e2
	xor  $c5                                         ; $4a09: $ee $c5
	sub  d                                           ; $4a0b: $92
	ld   [hl], c                                     ; $4a0c: $71
	ld   l, l                                        ; $4a0d: $6d
	ld   a, b                                        ; $4a0e: $78
	db   $fc                                         ; $4a0f: $fc
	sbc  a                                           ; $4a10: $9f
	dec  c                                           ; $4a11: $0d
	nop                                              ; $4a12: $00
	ld   a, [bc]                                     ; $4a13: $0a
	ld   b, $2d                                      ; $4a14: $06 $2d
	ld   bc, $051c                                   ; $4a16: $01 $1c $05
	ld   bc, $0101                                   ; $4a19: $01 $01 $01
	ld   l, e                                        ; $4a1c: $6b
	ld   l, e                                        ; $4a1d: $6b
	sbc  [hl]                                        ; $4a1e: $9e
	halt                                             ; $4a1f: $76
	ld   e, l                                        ; $4a20: $5d
	ld   a, c                                        ; $4a21: $79
	dec  c                                           ; $4a22: $0d
	ld   e, b                                        ; $4a23: $58
	ld   [hl], l                                     ; $4a24: $75
	and  c                                           ; $4a25: $a1
	ld   a, h                                        ; $4a26: $7c
	pop  bc                                          ; $4a27: $c1
	and  l                                           ; $4a28: $a5
	or   h                                           ; $4a29: $b4
	push af                                          ; $4a2a: $f5
	dec  c                                           ; $4a2b: $0d
	ld   e, d                                        ; $4a2c: $5a
	sbc  [hl]                                        ; $4a2d: $9e
	ld   d, h                                        ; $4a2e: $54
	adc  h                                           ; $4a2f: $8c
	ld   e, c                                        ; $4a30: $59
	ld   [hl], c                                     ; $4a31: $71
	ld   l, l                                        ; $4a32: $6d
	ld   a, b                                        ; $4a33: $78
	db   $fc                                         ; $4a34: $fc
	sbc  a                                           ; $4a35: $9f
	dec  c                                           ; $4a36: $0d
	nop                                              ; $4a37: $00
	ld   a, [bc]                                     ; $4a38: $0a
	ld   b, $2d                                      ; $4a39: $06 $2d
	ld   bc, $051c                                   ; $4a3b: $01 $1c $05
	nop                                              ; $4a3e: $00
	nop                                              ; $4a3f: $00
	ld   bc, $7889                                   ; $4a40: $01 $89 $78
	sbc  a                                           ; $4a43: $9f
	dec  c                                           ; $4a44: $0d
	nop                                              ; $4a45: $00
	ld   a, [bc]                                     ; $4a46: $0a
	dec  c                                           ; $4a47: $0d
	nop                                              ; $4a48: $00
	nop                                              ; $4a49: $00
	rrca                                             ; $4a4a: $0f
	nop                                              ; $4a4b: $00
	ld   bc, $1e09                                   ; $4a4c: $01 $09 $1e
	nop                                              ; $4a4f: $00
	nop                                              ; $4a50: $00
	ld   [bc], a                                     ; $4a51: $02
	nop                                              ; $4a52: $00
	ld   bc, $1c01                                   ; $4a53: $01 $01 $1c
	ld   bc, $2000                                   ; $4a56: $01 $00 $20
	ld   [bc], a                                     ; $4a59: $02
	nop                                              ; $4a5a: $00
	ld   bc, $2c07                                   ; $4a5b: $01 $07 $2c
	ld   bc, $2101                                   ; $4a5e: $01 $01 $21
	inc  e                                           ; $4a61: $1c
	ld   [bc], a                                     ; $4a62: $02
	nop                                              ; $4a63: $00
	inc  bc                                          ; $4a64: $03
	ld   d, h                                        ; $4a65: $54
	inc  h                                           ; $4a66: $24
	inc  e                                           ; $4a67: $1c
	nop                                              ; $4a68: $00
	inc  e                                           ; $4a69: $1c
	ld   c, $01                                      ; $4a6a: $0e $01
	ld   bc, $0102                                   ; $4a6c: $01 $02 $01
	ld   d, d                                        ; $4a6f: $52
	sub  a                                           ; $4a70: $97
	ld   [hl], c                                     ; $4a71: $71
	ld   h, l                                        ; $4a72: $65
	sub  c                                           ; $4a73: $91
	ld   d, d                                        ; $4a74: $52
	adc  h                                           ; $4a75: $8c
	ld   l, c                                        ; $4a76: $69
	sbc  a                                           ; $4a77: $9f
	dec  c                                           ; $4a78: $0d
	nop                                              ; $4a79: $00
	ld   a, [bc]                                     ; $4a7a: $0a
	inc  e                                           ; $4a7b: $1c
	ld   c, $00                                      ; $4a7c: $0e $00
	nop                                              ; $4a7e: $00
	ld   bc, $9750                                   ; $4a7f: $01 $50 $97
	sbc  [hl]                                        ; $4a82: $9e
	ld   [$6300], sp                                 ; $4a83: $08 $00 $63
	and  c                                           ; $4a86: $a1
	sbc  a                                           ; $4a87: $9f
	dec  c                                           ; $4a88: $0d
	sub  b                                           ; $4a89: $90
	ld   h, l                                        ; $4a8a: $65
	ld   e, c                                        ; $4a8b: $59
	ld   h, l                                        ; $4a8c: $65
	ld   [hl], h                                     ; $4a8d: $74
	sbc  [hl]                                        ; $4a8e: $9e
	rst  $10                                         ; $4a8f: $d7
	rst  $28                                         ; $4a90: $ef
	rst  JumpTable                                         ; $4a91: $df
	and  l                                           ; $4a92: $a5
	jp   z, $0da0                                    ; $4a93: $ca $a0 $0d

	inc  b                                           ; $4a96: $04
	adc  l                                           ; $4a97: $8d
	ld   d, d                                        ; $4a98: $52
	ld   a, c                                        ; $4a99: $79
	ld   d, d                                        ; $4a9a: $52
	sub  a                                           ; $4a9b: $97
	ld   h, l                                        ; $4a9c: $65
	ld   l, l                                        ; $4a9d: $6d
	and  c                                           ; $4a9e: $a1
	ld   [hl], l                                     ; $4a9f: $75
	ld   h, a                                        ; $4aa0: $67
	ld   e, c                                        ; $4aa1: $59
	ld   sp, hl                                      ; $4aa2: $f9
	dec  c                                           ; $4aa3: $0d
	nop                                              ; $4aa4: $00
	ld   a, [bc]                                     ; $4aa5: $0a
	add  hl, de                                      ; $4aa6: $19
	dec  b                                           ; $4aa7: $05
	ld   [bc], a                                     ; $4aa8: $02
	ld   a, l                                        ; $4aa9: $7d
	ld   d, d                                        ; $4aaa: $52
	nop                                              ; $4aab: $00
	nop                                              ; $4aac: $00
	ld   d, d                                        ; $4aad: $52
	ld   d, d                                        ; $4aae: $52
	ld   d, [hl]                                     ; $4aaf: $56
	nop                                              ; $4ab0: $00
	ld   bc, $a807                                   ; $4ab1: $01 $07 $a8
	ld   bc, $0302                                   ; $4ab4: $01 $02 $03
	ld   bc, $2000                                   ; $4ab7: $01 $00 $20
	nop                                              ; $4aba: $00
	rlca                                             ; $4abb: $07
	ld   e, [hl]                                     ; $4abc: $5e
	nop                                              ; $4abd: $00
	ld   [bc], a                                     ; $4abe: $02
	inc  bc                                          ; $4abf: $03
	ld   bc, $2001                                   ; $4ac0: $01 $01 $20
	nop                                              ; $4ac3: $00
	ld   b, $33                                      ; $4ac4: $06 $33
	ld   bc, $000f                                   ; $4ac6: $01 $0f $00
	ld   bc, $5201                                   ; $4ac9: $01 $01 $52
	sub  d                                           ; $4acc: $92
	sbc  [hl]                                        ; $4acd: $9e
	ld   b, $5b                                      ; $4ace: $06 $5b
	ld   h, e                                        ; $4ad0: $63
	and  c                                           ; $4ad1: $a1
	ld   a, h                                        ; $4ad2: $7c
	ld   e, b                                        ; $4ad3: $58
	inc  bc                                          ; $4ad4: $03
	dec  c                                           ; $4ad5: $0d
	ld   [bc], a                                     ; $4ad6: $02
	jp   Jump_048_7471                               ; $4ad7: $c3 $71 $74


	dec  c                                           ; $4ada: $0d
	inc  b                                           ; $4adb: $04
	ld   c, $04                                      ; $4adc: $0e $04
	adc  h                                           ; $4ade: $8c
	ld   l, e                                        ; $4adf: $6b
	ld   d, h                                        ; $4ae0: $54
	ld   l, [hl]                                     ; $4ae1: $6e
	ld   a, b                                        ; $4ae2: $78
	sbc  [hl]                                        ; $4ae3: $9e
	halt                                             ; $4ae4: $76
	dec  b                                           ; $4ae5: $05
	pop  de                                          ; $4ae6: $d1
	ld   d, d                                        ; $4ae7: $52
	adc  h                                           ; $4ae8: $8c
	ld   h, l                                        ; $4ae9: $65
	ld   [hl], h                                     ; $4aea: $74
	sbc  a                                           ; $4aeb: $9f
	dec  c                                           ; $4aec: $0d
	nop                                              ; $4aed: $00
	ld   a, [bc]                                     ; $4aee: $0a
	inc  e                                           ; $4aef: $1c
	ld   c, $00                                      ; $4af0: $0e $00
	nop                                              ; $4af2: $00
	ld   bc, $546b                                   ; $4af3: $01 $6b $54
	ld   [hl], l                                     ; $4af6: $75
	ld   h, a                                        ; $4af7: $67
	ld   a, e                                        ; $4af8: $7b
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	halt                                             ; $4afb: $76
	ld   e, l                                        ; $4afc: $5d
	ld   a, c                                        ; $4afd: $79
	dec  c                                           ; $4afe: $0d
	ld   [bc], a                                     ; $4aff: $02
	sbc  c                                           ; $4b00: $99
	ld   [bc], a                                     ; $4b01: $02
	rra                                              ; $4b02: $1f
	ld   [bc], a                                     ; $4b03: $02
	pop  bc                                          ; $4b04: $c1
	ld   [bc], a                                     ; $4b05: $02
	xor  c                                           ; $4b06: $a9
	inc  b                                           ; $4b07: $04
	dec  bc                                          ; $4b08: $0b
	ld   a, b                                        ; $4b09: $78
	and  c                                           ; $4b0a: $a1
	ld   [hl], h                                     ; $4b0b: $74
	sbc  [hl]                                        ; $4b0c: $9e
	ld   e, b                                        ; $4b0d: $58
	ld   [bc], a                                     ; $4b0e: $02
	add  c                                           ; $4b0f: $81
	ld   h, e                                        ; $4b10: $63
	and  c                                           ; $4b11: $a1
	sub  b                                           ; $4b12: $90
	dec  c                                           ; $4b13: $0d
	inc  b                                           ; $4b14: $04
	rrca                                             ; $4b15: $0f
	ld   e, l                                        ; $4b16: $5d
	ld   [hl], h                                     ; $4b17: $74
	inc  b                                           ; $4b18: $04
	ld   c, $04                                      ; $4b19: $0e $04
	adc  h                                           ; $4b1b: $8c
	ld   a, b                                        ; $4b1c: $78
	and  c                                           ; $4b1d: $a1
	ld   [hl], l                                     ; $4b1e: $75
	ld   h, a                                        ; $4b1f: $67
	sub  [hl]                                        ; $4b20: $96
	sbc  a                                           ; $4b21: $9f
	dec  c                                           ; $4b22: $0d
	nop                                              ; $4b23: $00
	ld   a, [bc]                                     ; $4b24: $0a
	inc  e                                           ; $4b25: $1c
	ld   c, $01                                      ; $4b26: $0e $01
	ld   bc, $7501                                   ; $4b28: $01 $01 $75
	sub  b                                           ; $4b2b: $90
	sbc  [hl]                                        ; $4b2c: $9e
	ld   e, b                                        ; $4b2d: $58
	ld   [bc], a                                     ; $4b2e: $02
	add  c                                           ; $4b2f: $81
	ld   h, e                                        ; $4b30: $63
	and  c                                           ; $4b31: $a1
	ld   a, h                                        ; $4b32: $7c
	ld   d, h                                        ; $4b33: $54
	sbc  d                                           ; $4b34: $9a
	ld   h, l                                        ; $4b35: $65
	ld   l, e                                        ; $4b36: $6b
	ld   d, h                                        ; $4b37: $54
	ld   a, b                                        ; $4b38: $78
	dec  c                                           ; $4b39: $0d
	ld   [bc], a                                     ; $4b3a: $02
	ld   [hl], d                                     ; $4b3b: $72
	and  b                                           ; $4b3c: $a0
	ld   [bc], a                                     ; $4b3d: $02
	sub  l                                           ; $4b3e: $95
	ld   l, l                                        ; $4b3f: $6d
	sub  a                                           ; $4b40: $97
	sbc  [hl]                                        ; $4b41: $9e
	adc  h                                           ; $4b42: $8c
	ld   l, l                                        ; $4b43: $6d
	inc  b                                           ; $4b44: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b45: $cf
	inc  b                                           ; $4b46: $04
	xor  d                                           ; $4b47: $aa
	sub  b                                           ; $4b48: $90
	dec  c                                           ; $4b49: $0d
	ld   e, d                                        ; $4b4a: $5a
	and  c                                           ; $4b4b: $a1
	ld   a, [hl]                                     ; $4b4c: $7e
	sbc  e                                           ; $4b4d: $9b
	ld   d, h                                        ; $4b4e: $54
	ld   [hl], c                                     ; $4b4f: $71
	ld   [hl], h                                     ; $4b50: $74
	dec  b                                           ; $4b51: $05
	pop  de                                          ; $4b52: $d1
	ld   d, [hl]                                     ; $4b53: $56
	sbc  c                                           ; $4b54: $99
	and  c                                           ; $4b55: $a1
	ld   [hl], l                                     ; $4b56: $75
	ld   h, a                                        ; $4b57: $67
	sbc  a                                           ; $4b58: $9f
	dec  c                                           ; $4b59: $0d
	nop                                              ; $4b5a: $00
	ld   a, [bc]                                     ; $4b5b: $0a
	inc  e                                           ; $4b5c: $1c
	ld   c, $00                                      ; $4b5d: $0e $00
	nop                                              ; $4b5f: $00
	ld   bc, $7150                                   ; $4b60: $01 $50 $71
	sbc  [hl]                                        ; $4b63: $9e
	ld   l, e                                        ; $4b64: $6b
	sbc  e                                           ; $4b65: $9b
	ld   l, e                                        ; $4b66: $6b
	sbc  e                                           ; $4b67: $9b
	dec  b                                           ; $4b68: $05
	cp   b                                           ; $4b69: $b8
	ld   [bc], a                                     ; $4b6a: $02
	ld   e, c                                        ; $4b6b: $59
	ld   a, h                                        ; $4b6c: $7c
	ld   [bc], a                                     ; $4b6d: $02
	sbc  a                                           ; $4b6e: $9f
	inc  b                                           ; $4b6f: $04
	dec  sp                                          ; $4b70: $3b
	and  b                                           ; $4b71: $a0
	dec  c                                           ; $4b72: $0d
	ld   h, l                                        ; $4b73: $65
	ld   a, b                                        ; $4b74: $78
	ld   e, l                                        ; $4b75: $5d
	ld   l, a                                        ; $4b76: $6f
	sub  c                                           ; $4b77: $91
	rst  $38                                         ; $4b78: $ff
	rst  $38                                         ; $4b79: $ff
	ld   l, e                                        ; $4b7a: $6b
	sbc  d                                           ; $4b7b: $9a
	ld   h, [hl]                                     ; $4b7c: $66
	sub  c                                           ; $4b7d: $91
	sbc  [hl]                                        ; $4b7e: $9e
	dec  c                                           ; $4b7f: $0d
	ld   d, b                                        ; $4b80: $50
	ld   l, l                                        ; $4b81: $6d
	ld   h, l                                        ; $4b82: $65
	ld   a, l                                        ; $4b83: $7d
	inc  bc                                          ; $4b84: $03
	dec  c                                           ; $4b85: $0d
	ld   [bc], a                                     ; $4b86: $02
	jp   $9079                                       ; $4b87: $c3 $79 $90


	ld   [hl], a                                     ; $4b8a: $77
	sbc  b                                           ; $4b8b: $98
	adc  h                                           ; $4b8c: $8c
	ld   h, a                                        ; $4b8d: $67
	ld   a, e                                        ; $4b8e: $7b
	sbc  a                                           ; $4b8f: $9f
	dec  c                                           ; $4b90: $0d
	nop                                              ; $4b91: $00
	ld   a, [bc]                                     ; $4b92: $0a
	dec  c                                           ; $4b93: $0d
	nop                                              ; $4b94: $00
	nop                                              ; $4b95: $00
	rrca                                             ; $4b96: $0f
	nop                                              ; $4b97: $00
	ld   bc, $1e09                                   ; $4b98: $01 $09 $1e
	nop                                              ; $4b9b: $00
	inc  e                                           ; $4b9c: $1c
	ld   c, $03                                      ; $4b9d: $0e $03
	inc  bc                                          ; $4b9f: $03
	ld   bc, $5477                                   ; $4ba0: $01 $77 $54
	ld   h, l                                        ; $4ba3: $65
	ld   l, l                                        ; $4ba4: $6d
	and  c                                           ; $4ba5: $a1
	ld   [hl], l                                     ; $4ba6: $75
	ld   h, a                                        ; $4ba7: $67
	ld   e, c                                        ; $4ba8: $59
	ld   sp, hl                                      ; $4ba9: $f9
	dec  c                                           ; $4baa: $0d
	ld   [bc], a                                     ; $4bab: $02
	xor  b                                           ; $4bac: $a8
	ld   [bc], a                                     ; $4bad: $02
	ld   a, e                                        ; $4bae: $7b
	ld   [hl], l                                     ; $4baf: $75
	sub  b                                           ; $4bb0: $90
	ld   [bc], a                                     ; $4bb1: $02
	jr   z, jr_048_4c06                              ; $4bb2: $28 $52

	and  c                                           ; $4bb4: $a1
	ld   [hl], l                                     ; $4bb5: $75
	ld   h, a                                        ; $4bb6: $67
	ld   e, c                                        ; $4bb7: $59
	ld   sp, hl                                      ; $4bb8: $f9
	dec  c                                           ; $4bb9: $0d
	nop                                              ; $4bba: $00
	ld   a, [bc]                                     ; $4bbb: $0a
	rrca                                             ; $4bbc: $0f
	nop                                              ; $4bbd: $00
	ld   bc, $5201                                   ; $4bbe: $01 $01 $52
	ld   d, [hl]                                     ; $4bc1: $56
	sbc  [hl]                                        ; $4bc2: $9e
	ld   b, $5b                                      ; $4bc3: $06 $5b
	ld   h, e                                        ; $4bc5: $63
	and  c                                           ; $4bc6: $a1
	ld   e, d                                        ; $4bc7: $5a
	ld   d, b                                        ; $4bc8: $50
	adc  h                                           ; $4bc9: $8c
	sbc  b                                           ; $4bca: $98
	ld   a, c                                        ; $4bcb: $79
	dec  c                                           ; $4bcc: $0d
	ld   e, c                                        ; $4bcd: $59
	sbc  l                                           ; $4bce: $9d
	ld   d, d                                        ; $4bcf: $52
	ld   d, d                                        ; $4bd0: $52
	sub  b                                           ; $4bd1: $90
	ld   a, h                                        ; $4bd2: $7c
	ld   [hl], l                                     ; $4bd3: $75
	sbc  [hl]                                        ; $4bd4: $9e
	ld   [hl], d                                     ; $4bd5: $72
	ld   d, d                                        ; $4bd6: $52
	dec  c                                           ; $4bd7: $0d
	adc  l                                           ; $4bd8: $8d
	halt                                             ; $4bd9: $76
	sbc  d                                           ; $4bda: $9a
	ld   l, a                                        ; $4bdb: $6f
	sub  c                                           ; $4bdc: $91
	ld   [hl], c                                     ; $4bdd: $71
	ld   [hl], h                                     ; $4bde: $74
	sbc  a                                           ; $4bdf: $9f
	dec  c                                           ; $4be0: $0d
	nop                                              ; $4be1: $00
	ld   a, [bc]                                     ; $4be2: $0a
	inc  e                                           ; $4be3: $1c
	ld   c, $01                                      ; $4be4: $0e $01
	ld   bc, $5001                                   ; $4be6: $01 $01 $50
	sub  a                                           ; $4be9: $97
	sbc  [hl]                                        ; $4bea: $9e
	ld   l, e                                        ; $4beb: $6b
	and  c                                           ; $4bec: $a1
	ld   a, b                                        ; $4bed: $78
	ld   d, h                                        ; $4bee: $54
	adc  h                                           ; $4bef: $8c
	ld   d, d                                        ; $4bf0: $52
	ld   [bc], a                                     ; $4bf1: $02
	jp   $9d02                                       ; $4bf2: $c3 $02 $9d


	ld   [hl], c                                     ; $4bf5: $71
	ld   [hl], h                                     ; $4bf6: $74
	sub  b                                           ; $4bf7: $90
	dec  c                                           ; $4bf8: $0d
	ld   a, b                                        ; $4bf9: $78
	ld   a, c                                        ; $4bfa: $79
	sub  b                                           ; $4bfb: $90
	inc  bc                                          ; $4bfc: $03
	add  b                                           ; $4bfd: $80
	adc  h                                           ; $4bfe: $8c
	ld   l, c                                        ; $4bff: $69
	and  c                                           ; $4c00: $a1
	sub  [hl]                                        ; $4c01: $96
	ei                                               ; $4c02: $fb
	ld   l, [hl]                                     ; $4c03: $6e
	sbc  a                                           ; $4c04: $9f
	dec  c                                           ; $4c05: $0d

jr_048_4c06:
	and  a                                           ; $4c06: $a7
	sub  $d6                                         ; $4c07: $d6 $d6
	rst  $38                                         ; $4c09: $ff
	rst  $38                                         ; $4c0a: $ff
	dec  c                                           ; $4c0b: $0d
	nop                                              ; $4c0c: $00
	ld   a, [bc]                                     ; $4c0d: $0a
	ld   b, $f3                                      ; $4c0e: $06 $f3
	nop                                              ; $4c10: $00
	rrca                                             ; $4c11: $0f
	ld   c, $00                                      ; $4c12: $0e $00
	ld   bc, $efd7                                   ; $4c14: $01 $d7 $ef
	rst  JumpTable                                         ; $4c17: $df
	and  l                                           ; $4c18: $a5
	jp   z, Jump_048_58a0                            ; $4c19: $ca $a0 $58

	inc  b                                           ; $4c1c: $04
	adc  l                                           ; $4c1d: $8d
	ld   d, d                                        ; $4c1e: $52
	inc  bc                                          ; $4c1f: $03
	ld   h, l                                        ; $4c20: $65
	ld   h, b                                        ; $4c21: $60
	dec  c                                           ; $4c22: $0d
	ld   [hl], l                                     ; $4c23: $75
	ld   h, a                                        ; $4c24: $67
	ld   e, c                                        ; $4c25: $59
	ld   sp, hl                                      ; $4c26: $f9
	dec  c                                           ; $4c27: $0d
	ld   d, b                                        ; $4c28: $50
	sbc  b                                           ; $4c29: $98
	ld   e, d                                        ; $4c2a: $5a
	halt                                             ; $4c2b: $76
	ld   d, h                                        ; $4c2c: $54
	ld   h, d                                        ; $4c2d: $62
	ld   h, h                                        ; $4c2e: $64
	ld   d, d                                        ; $4c2f: $52
	adc  h                                           ; $4c30: $8c
	ei                                               ; $4c31: $fb
	ld   h, a                                        ; $4c32: $67
	ld   a, [$000d]                                  ; $4c33: $fa $0d $00
	ld   a, [bc]                                     ; $4c36: $0a
	inc  e                                           ; $4c37: $1c
	ld   c, $01                                      ; $4c38: $0e $01
	ld   bc, $6b01                                   ; $4c3a: $01 $01 $6b
	sbc  d                                           ; $4c3d: $9a
	ld   [hl], l                                     ; $4c3e: $75
	ld   a, l                                        ; $4c3f: $7d
	sbc  [hl]                                        ; $4c40: $9e
	ld   [de], a                                     ; $4c41: $12
	inc  b                                           ; $4c42: $04
	push bc                                          ; $4c43: $c5
	ld   l, [hl]                                     ; $4c44: $6e
	ld   e, a                                        ; $4c45: $5f
	inc  bc                                          ; $4c46: $03
	ld   sp, $75a1                                   ; $4c47: $31 $a1 $75
	dec  c                                           ; $4c4a: $0d
	ld   e, l                                        ; $4c4b: $5d
	ld   l, [hl]                                     ; $4c4c: $6e
	ld   h, e                                        ; $4c4d: $63
	ld   d, d                                        ; $4c4e: $52
	ld   a, e                                        ; $4c4f: $7b
	sbc  a                                           ; $4c50: $9f
	dec  c                                           ; $4c51: $0d
	nop                                              ; $4c52: $00
	ld   a, [bc]                                     ; $4c53: $0a
	ld   l, $02                                      ; $4c54: $2e $02
	nop                                              ; $4c56: $00
	nop                                              ; $4c57: $00
	ld   [bc], a                                     ; $4c58: $02
	nop                                              ; $4c59: $00
	ld   bc, $2c07                                   ; $4c5a: $01 $07 $2c
	ld   bc, $2001                                   ; $4c5d: $01 $01 $20
	nop                                              ; $4c60: $00
	ld   c, $02                                      ; $4c61: $0e $02
	inc  de                                          ; $4c63: $13
	ld   [bc], a                                     ; $4c64: $02
	rrca                                             ; $4c65: $0f
	nop                                              ; $4c66: $00
	ld   bc, $0102                                   ; $4c67: $01 $02 $01
	rst  $38                                         ; $4c6a: $ff
	rst  $38                                         ; $4c6b: $ff
	ld   l, e                                        ; $4c6c: $6b
	sbc  d                                           ; $4c6d: $9a
	ld   a, c                                        ; $4c6e: $79
	ld   h, l                                        ; $4c6f: $65
	ld   [hl], h                                     ; $4c70: $74
	sub  b                                           ; $4c71: $90
	sbc  [hl]                                        ; $4c72: $9e
	dec  c                                           ; $4c73: $0d
	inc  bc                                          ; $4c74: $03
	ld   l, l                                        ; $4c75: $6d
	dec  b                                           ; $4c76: $05
	add  hl, de                                      ; $4c77: $19
	ld   e, d                                        ; $4c78: $5a
	inc  b                                           ; $4c79: $04
	sub  $52                                         ; $4c7a: $d6 $52
	ld   [hl], c                                     ; $4c7c: $71
	ld   [hl], h                                     ; $4c7d: $74
	ld   a, h                                        ; $4c7e: $7c
	ld   a, l                                        ; $4c7f: $7d
	dec  c                                           ; $4c80: $0d
	ld   [bc], a                                     ; $4c81: $02
	ld   b, $02                                      ; $4c82: $06 $02
	bit  7, c                                        ; $4c84: $cb $79
	db   $d3                                         ; $4c86: $d3
	rst  JumpTable                                         ; $4c87: $df
	ld   a, b                                        ; $4c88: $78
	sub  b                                           ; $4c89: $90
	and  c                                           ; $4c8a: $a1
	ld   l, [hl]                                     ; $4c8b: $6e
	ld   a, b                                        ; $4c8c: $78
	ld   d, b                                        ; $4c8d: $50
	rst  $38                                         ; $4c8e: $ff
	rst  $38                                         ; $4c8f: $ff
	dec  c                                           ; $4c90: $0d
	nop                                              ; $4c91: $00
	ld   a, [bc]                                     ; $4c92: $0a
	ld   bc, $ffff                                   ; $4c93: $01 $ff $ff
	ld   e, b                                        ; $4c96: $58
	ld   [hl], c                                     ; $4c97: $71
	halt                                             ; $4c98: $76
	sbc  [hl]                                        ; $4c99: $9e
	ld   l, e                                        ; $4c9a: $6b
	sbc  e                                           ; $4c9b: $9b
	ld   l, e                                        ; $4c9c: $6b
	sbc  e                                           ; $4c9d: $9b
	ld   [bc], a                                     ; $4c9e: $02
	sub  l                                           ; $4c9f: $95
	ld   [bc], a                                     ; $4ca0: $02
	sub  e                                           ; $4ca1: $93
	sbc  b                                           ; $4ca2: $98
	ld   a, h                                        ; $4ca3: $7c
	dec  c                                           ; $4ca4: $0d
	inc  bc                                          ; $4ca5: $03
	ld   l, a                                        ; $4ca6: $6f
	ld   [bc], a                                     ; $4ca7: $02
	xor  c                                           ; $4ca8: $a9
	ld   l, [hl]                                     ; $4ca9: $6e
	ld   a, b                                        ; $4caa: $78
	rst  $38                                         ; $4cab: $ff
	rst  $38                                         ; $4cac: $ff
	dec  c                                           ; $4cad: $0d
	nop                                              ; $4cae: $00
	ld   a, [bc]                                     ; $4caf: $0a
	add  hl, hl                                      ; $4cb0: $29
	ld   b, $00                                      ; $4cb1: $06 $00
	nop                                              ; $4cb3: $00
	ld   [bc], a                                     ; $4cb4: $02
	nop                                              ; $4cb5: $00
	ld   bc, $2c07                                   ; $4cb6: $01 $07 $2c
	ld   bc, $2000                                   ; $4cb9: $01 $00 $20
	nop                                              ; $4cbc: $00
	ld   c, $01                                      ; $4cbd: $0e $01
	rrca                                             ; $4cbf: $0f
	nop                                              ; $4cc0: $00
	ld   bc, $0102                                   ; $4cc1: $01 $02 $01
	ld   d, [hl]                                     ; $4cc4: $56
	db   $fc                                         ; $4cc5: $fc
	halt                                             ; $4cc6: $76
	rst  $38                                         ; $4cc7: $ff
	rst  $38                                         ; $4cc8: $ff
	ld   [bc], a                                     ; $4cc9: $02
	and  l                                           ; $4cca: $a5
	inc  b                                           ; $4ccb: $04
	xor  d                                           ; $4ccc: $aa
	ld   a, l                                        ; $4ccd: $7d
	inc  b                                           ; $4cce: $04
	jr   nc, jr_048_4cd5                             ; $4ccf: $30 $04

	db   $f4                                         ; $4cd1: $f4
	inc  b                                           ; $4cd2: $04
	xor  d                                           ; $4cd3: $aa
	ld   l, [hl]                                     ; $4cd4: $6e

jr_048_4cd5:
	ld   e, c                                        ; $4cd5: $59
	sub  a                                           ; $4cd6: $97
	dec  c                                           ; $4cd7: $0d
	inc  bc                                          ; $4cd8: $03
	inc  h                                           ; $4cd9: $24
	ld   [bc], a                                     ; $4cda: $02
	sub  [hl]                                        ; $4cdb: $96
	ld   e, d                                        ; $4cdc: $5a
	ld   d, b                                        ; $4cdd: $50
	sbc  c                                           ; $4cde: $99
	and  c                                           ; $4cdf: $a1
	ld   l, [hl]                                     ; $4ce0: $6e
	ld   [hl], c                                     ; $4ce1: $71
	ld   l, l                                        ; $4ce2: $6d
	ld   a, b                                        ; $4ce3: $78
	rst  $38                                         ; $4ce4: $ff
	rst  $38                                         ; $4ce5: $ff
	dec  c                                           ; $4ce6: $0d
	nop                                              ; $4ce7: $00
	ld   a, [bc]                                     ; $4ce8: $0a
	ld   bc, $6596                                   ; $4ce9: $01 $96 $65
	ld   a, [$0210]                                  ; $4cec: $fa $10 $02
	and  c                                           ; $4cef: $a1
	ld   [bc], a                                     ; $4cf0: $02
	ld   a, e                                        ; $4cf1: $7b
	ld   d, d                                        ; $4cf2: $52
	and  b                                           ; $4cf3: $a0
	inc  b                                           ; $4cf4: $04
	ld   b, l                                        ; $4cf5: $45
	sbc  d                                           ; $4cf6: $9a
	ld   [hl], h                                     ; $4cf7: $74
	dec  c                                           ; $4cf8: $0d
	ld   e, d                                        ; $4cf9: $5a
	and  c                                           ; $4cfa: $a1
	ld   a, [hl]                                     ; $4cfb: $7e
	sbc  c                                           ; $4cfc: $99
	ld   l, h                                        ; $4cfd: $6c
	ld   a, [$0dfa]                                  ; $4cfe: $fa $fa $0d
	nop                                              ; $4d01: $00
	ld   a, [bc]                                     ; $4d02: $0a
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	ld   c, $01                                      ; $4d05: $0e $01
	rrca                                             ; $4d07: $0f
	nop                                              ; $4d08: $00
	ld   bc, $0f02                                   ; $4d09: $01 $02 $0f
	nop                                              ; $4d0c: $00
	ld   bc, $6301                                   ; $4d0d: $01 $01 $63
	ld   [hl], h                                     ; $4d10: $74
	halt                                             ; $4d11: $76
	rst  $38                                         ; $4d12: $ff
	rst  $38                                         ; $4d13: $ff
	dec  c                                           ; $4d14: $0d
	ld   l, e                                        ; $4d15: $6b
	sbc  e                                           ; $4d16: $9b
	ld   l, e                                        ; $4d17: $6b
	sbc  e                                           ; $4d18: $9b
	ld   [bc], a                                     ; $4d19: $02
	or   d                                           ; $4d1a: $b2
	ld   [bc], a                                     ; $4d1b: $02
	xor  d                                           ; $4d1c: $aa
	ld   a, h                                        ; $4d1d: $7c
	inc  bc                                          ; $4d1e: $03
	ld   l, l                                        ; $4d1f: $6d
	dec  b                                           ; $4d20: $05
	add  hl, de                                      ; $4d21: $19
	ld   a, h                                        ; $4d22: $7c
	dec  c                                           ; $4d23: $0d
	inc  bc                                          ; $4d24: $03
	ld   l, a                                        ; $4d25: $6f
	ld   [bc], a                                     ; $4d26: $02
	xor  c                                           ; $4d27: $a9
	ld   l, [hl]                                     ; $4d28: $6e
	ld   a, b                                        ; $4d29: $78
	sbc  a                                           ; $4d2a: $9f
	dec  c                                           ; $4d2b: $0d
	nop                                              ; $4d2c: $00
	ld   a, [bc]                                     ; $4d2d: $0a
	ld   bc, $b202                                   ; $4d2e: $01 $02 $b2
	ld   [bc], a                                     ; $4d31: $02
	xor  d                                           ; $4d32: $aa
	ld   a, h                                        ; $4d33: $7c
	inc  bc                                          ; $4d34: $03
	ld   l, l                                        ; $4d35: $6d
	dec  b                                           ; $4d36: $05
	add  hl, de                                      ; $4d37: $19
	ld   a, l                                        ; $4d38: $7d
	sbc  [hl]                                        ; $4d39: $9e
	inc  bc                                          ; $4d3a: $03
	ld   l, l                                        ; $4d3b: $6d
	dec  b                                           ; $4d3c: $05
	add  hl, de                                      ; $4d3d: $19
	ld   [bc], a                                     ; $4d3e: $02
	ld   a, [de]                                     ; $4d3f: $1a
	inc  bc                                          ; $4d40: $03
	ld   l, e                                        ; $4d41: $6b
	and  b                                           ; $4d42: $a0
	dec  c                                           ; $4d43: $0d
	inc  bc                                          ; $4d44: $03
	sub  h                                           ; $4d45: $94
	inc  b                                           ; $4d46: $04
	pop  hl                                          ; $4d47: $e1
	ld   a, c                                        ; $4d48: $79
	ld   d, [hl]                                     ; $4d49: $56
	sub  a                                           ; $4d4a: $97
	and  c                                           ; $4d4b: $a1
	ld   [hl], l                                     ; $4d4c: $75
	ld   d, d                                        ; $4d4d: $52
	ld   d, d                                        ; $4d4e: $52
	ld   [hl], c                                     ; $4d4f: $71
	ld   [hl], h                                     ; $4d50: $74
	dec  c                                           ; $4d51: $0d
	inc  b                                           ; $4d52: $04
	ld   c, $03                                      ; $4d53: $0e $03
	sub  b                                           ; $4d55: $90
	ld   h, e                                        ; $4d56: $63
	and  c                                           ; $4d57: $a1
	ld   e, d                                        ; $4d58: $5a
	ld   [bc], a                                     ; $4d59: $02
	sbc  l                                           ; $4d5a: $9d
	ld   [hl], c                                     ; $4d5b: $71
	ld   [hl], h                                     ; $4d5c: $74
	ld   l, l                                        ; $4d5d: $6d
	ld   [hl], c                                     ; $4d5e: $71
	ld   e, a                                        ; $4d5f: $5f
	sbc  a                                           ; $4d60: $9f
	dec  c                                           ; $4d61: $0d
	nop                                              ; $4d62: $00
	ld   a, [bc]                                     ; $4d63: $0a
	ld   bc, $7463                                   ; $4d64: $01 $63 $74
	rst  $38                                         ; $4d67: $ff
	rst  $38                                         ; $4d68: $ff
	ld   l, [hl]                                     ; $4d69: $6e
	sbc  d                                           ; $4d6a: $9a
	ld   a, h                                        ; $4d6b: $7c
	inc  bc                                          ; $4d6c: $03
	ld   l, l                                        ; $4d6d: $6d
	dec  b                                           ; $4d6e: $05
	add  hl, de                                      ; $4d6f: $19
	and  b                                           ; $4d70: $a0
	dec  c                                           ; $4d71: $0d
	ld   d, h                                        ; $4d72: $54
	ld   e, a                                        ; $4d73: $5f
	sub  [hl]                                        ; $4d74: $96
	ld   d, h                                        ; $4d75: $54
	ld   e, c                                        ; $4d76: $59
	ld   a, b                                        ; $4d77: $78
	rst  $38                                         ; $4d78: $ff
	rst  $38                                         ; $4d79: $ff
	dec  c                                           ; $4d7a: $0d
	nop                                              ; $4d7b: $00
	ld   a, [bc]                                     ; $4d7c: $0a
	nop                                              ; $4d7d: $00
	nop                                              ; $4d7e: $00
	ld   [bc], a                                     ; $4d7f: $02
	ld   b, $01                                      ; $4d80: $06 $01
	add  hl, bc                                      ; $4d82: $09
	jr   nz, jr_048_4d85                             ; $4d83: $20 $00

jr_048_4d85:
	ld   c, $7b                                      ; $4d85: $0e $7b
	inc  e                                           ; $4d87: $1c
	add  hl, bc                                      ; $4d88: $09
	nop                                              ; $4d89: $00
	nop                                              ; $4d8a: $00
	ld   [bc], a                                     ; $4d8b: $02
	ld   bc, $5092                                   ; $4d8c: $01 $92 $50
	sbc  [hl]                                        ; $4d8f: $9e
	ld   [$5d00], sp                                 ; $4d90: $08 $00 $5d
	and  c                                           ; $4d93: $a1
	sbc  a                                           ; $4d94: $9f
	dec  c                                           ; $4d95: $0d
	ld   [bc], a                                     ; $4d96: $02
	and  l                                           ; $4d97: $a5
	inc  b                                           ; $4d98: $04
	xor  d                                           ; $4d99: $aa
	ld   a, l                                        ; $4d9a: $7d
	ld   [bc], a                                     ; $4d9b: $02
	jp   z, $037c                                    ; $4d9c: $ca $7c $03

	ld   l, l                                        ; $4d9f: $6d
	dec  b                                           ; $4da0: $05
	add  hl, de                                      ; $4da1: $19
	ld   a, h                                        ; $4da2: $7c
	inc  bc                                          ; $4da3: $03
	ld   [de], a                                     ; $4da4: $12
	ld   [bc], a                                     ; $4da5: $02
	ld   h, e                                        ; $4da6: $63
	and  b                                           ; $4da7: $a0
	dec  c                                           ; $4da8: $0d
	ld   [bc], a                                     ; $4da9: $02
	sub  l                                           ; $4daa: $95
	ld   l, c                                        ; $4dab: $69
	ld   [hl], h                                     ; $4dac: $74
	sub  b                                           ; $4dad: $90
	sub  a                                           ; $4dae: $97
	ld   d, h                                        ; $4daf: $54
	sub  [hl]                                        ; $4db0: $96
	sbc  a                                           ; $4db1: $9f
	dec  c                                           ; $4db2: $0d
	nop                                              ; $4db3: $00
	ld   a, [bc]                                     ; $4db4: $0a
	ld   bc, $3802                                   ; $4db5: $01 $02 $38
	inc  b                                           ; $4db8: $04
	ld   d, d                                        ; $4db9: $52
	ld   a, c                                        ; $4dba: $79
	inc  bc                                          ; $4dbb: $03
	cp   c                                           ; $4dbc: $b9
	ld   [hl], c                                     ; $4dbd: $71
	ld   [hl], h                                     ; $4dbe: $74
	ld   a, h                                        ; $4dbf: $7c
	sbc  [hl]                                        ; $4dc0: $9e
	ld   b, $a5                                      ; $4dc1: $06 $a5
	ld   b, $a6                                      ; $4dc3: $06 $a6
	inc  bc                                          ; $4dc5: $03
	xor  b                                           ; $4dc6: $a8
	dec  b                                           ; $4dc7: $05
	rst  $38                                         ; $4dc8: $ff
	and  b                                           ; $4dc9: $a0
	dec  c                                           ; $4dca: $0d
	sub  d                                           ; $4dcb: $92
	ld   [hl], c                                     ; $4dcc: $71
	ld   [hl], h                                     ; $4dcd: $74
	sub  b                                           ; $4dce: $90
	sub  a                                           ; $4dcf: $97
	ld   d, h                                        ; $4dd0: $54
	sbc  a                                           ; $4dd1: $9f
	dec  c                                           ; $4dd2: $0d
	nop                                              ; $4dd3: $00
	ld   a, [bc]                                     ; $4dd4: $0a
	ld   bc, $a502                                   ; $4dd5: $01 $02 $a5
	inc  bc                                          ; $4dd8: $03
	ld   a, c                                        ; $4dd9: $79
	ld   e, c                                        ; $4dda: $59
	sub  a                                           ; $4ddb: $97
	sbc  [hl]                                        ; $4ddc: $9e
	dec  b                                           ; $4ddd: $05
	ld   e, h                                        ; $4dde: $5c
	inc  bc                                          ; $4ddf: $03
	ld   a, c                                        ; $4de0: $79
	inc  b                                           ; $4de1: $04
	jr   nc, jr_048_4de8                             ; $4de2: $30 $04

	db   $f4                                         ; $4de4: $f4
	inc  b                                           ; $4de5: $04
	xor  d                                           ; $4de6: $aa
	ld   a, c                                        ; $4de7: $79

jr_048_4de8:
	dec  c                                           ; $4de8: $0d
	ld   h, c                                        ; $4de9: $61
	ld   a, h                                        ; $4dea: $7c
	inc  bc                                          ; $4deb: $03
	inc  h                                           ; $4dec: $24
	ld   [bc], a                                     ; $4ded: $02
	sub  [hl]                                        ; $4dee: $96
	ld   e, d                                        ; $4def: $5a
	ld   d, b                                        ; $4df0: $50
	sbc  c                                           ; $4df1: $99
	ld   e, c                                        ; $4df2: $59
	sub  a                                           ; $4df3: $97
	dec  c                                           ; $4df4: $0d
	ld   l, e                                        ; $4df5: $6b
	ld   a, h                                        ; $4df6: $7c
	ld   [hl], d                                     ; $4df7: $72
	sub  b                                           ; $4df8: $90
	sbc  b                                           ; $4df9: $98
	ld   [hl], l                                     ; $4dfa: $75
	ld   e, d                                        ; $4dfb: $5a
	and  c                                           ; $4dfc: $a1
	ld   a, [hl]                                     ; $4dfd: $7e
	ld   [hl], c                                     ; $4dfe: $71
	ld   [hl], h                                     ; $4dff: $74
	ld   e, l                                        ; $4e00: $5d
	sbc  d                                           ; $4e01: $9a
	sbc  a                                           ; $4e02: $9f
	dec  c                                           ; $4e03: $0d
	nop                                              ; $4e04: $00
	ld   a, [bc]                                     ; $4e05: $0a
	ld   bc, $7d75                                   ; $4e06: $01 $75 $7d
	sbc  [hl]                                        ; $4e09: $9e
	ld   [$5d00], sp                                 ; $4e0a: $08 $00 $5d
	and  c                                           ; $4e0d: $a1
	ld   e, d                                        ; $4e0e: $5a
	inc  bc                                          ; $4e0f: $03
	cp   c                                           ; $4e10: $b9
	sbc  c                                           ; $4e11: $99
	dec  c                                           ; $4e12: $0d
	ld   [bc], a                                     ; $4e13: $02
	jr   c, @+$06                                    ; $4e14: $38 $04

	ld   d, d                                        ; $4e16: $52
	and  b                                           ; $4e17: $a0
	inc  bc                                          ; $4e18: $03
	ld   sp, $75a1                                   ; $4e19: $31 $a1 $75
	sub  b                                           ; $4e1c: $90
	sub  a                                           ; $4e1d: $97
	ld   e, b                                        ; $4e1e: $58
	ld   d, h                                        ; $4e1f: $54
	sbc  a                                           ; $4e20: $9f
	dec  c                                           ; $4e21: $0d
	nop                                              ; $4e22: $00
	ld   a, [bc]                                     ; $4e23: $0a
	ld   bc, $916f                                   ; $4e24: $01 $6f $91
	and  c                                           ; $4e27: $a1
	halt                                             ; $4e28: $76
	sbc  [hl]                                        ; $4e29: $9e
	inc  bc                                          ; $4e2a: $03
	sub  h                                           ; $4e2b: $94
	inc  b                                           ; $4e2c: $04
	sbc  [hl]                                        ; $4e2d: $9e
	ld   a, h                                        ; $4e2e: $7c
	inc  bc                                          ; $4e2f: $03
	push af                                          ; $4e30: $f5
	ld   [bc], a                                     ; $4e31: $02
	db   $fc                                         ; $4e32: $fc
	ld   a, c                                        ; $4e33: $79
	dec  c                                           ; $4e34: $0d
	ld   [bc], a                                     ; $4e35: $02
	ld   a, e                                        ; $4e36: $7b
	ld   [hl], c                                     ; $4e37: $71
	ld   l, l                                        ; $4e38: $6d
	ld   [bc], a                                     ; $4e39: $02
	jr   c, @+$06                                    ; $4e3a: $38 $04

	ld   d, d                                        ; $4e3c: $52
	and  b                                           ; $4e3d: $a0
	inc  bc                                          ; $4e3e: $03
	ld   sp, $9684                                   ; $4e3f: $31 $84 $96
	ld   d, h                                        ; $4e42: $54
	ld   a, c                                        ; $4e43: $79
	dec  c                                           ; $4e44: $0d
	ld   h, a                                        ; $4e45: $67
	sbc  c                                           ; $4e46: $99
	and  c                                           ; $4e47: $a1
	ld   l, [hl]                                     ; $4e48: $6e
	ld   l, h                                        ; $4e49: $6c
	sbc  a                                           ; $4e4a: $9f
	dec  c                                           ; $4e4b: $0d
	nop                                              ; $4e4c: $00
	ld   a, [bc]                                     ; $4e4d: $0a
	ld   bc, $9a6b                                   ; $4e4e: $01 $6b $9a
	ld   h, [hl]                                     ; $4e51: $66
	sub  c                                           ; $4e52: $91
	sbc  [hl]                                        ; $4e53: $9e
	inc  bc                                          ; $4e54: $03
	ld   sp, $75a1                                   ; $4e55: $31 $a1 $75
	ld   e, l                                        ; $4e58: $5d
	sbc  d                                           ; $4e59: $9a
	sbc  a                                           ; $4e5a: $9f
	dec  c                                           ; $4e5b: $0d
	nop                                              ; $4e5c: $00
	ld   a, [bc]                                     ; $4e5d: $0a
	dec  c                                           ; $4e5e: $0d
	nop                                              ; $4e5f: $00
	nop                                              ; $4e60: $00
	rrca                                             ; $4e61: $0f
	nop                                              ; $4e62: $00
	ld   bc, $1c28                                   ; $4e63: $01 $28 $1c
	add  hl, bc                                      ; $4e66: $09
	ld   [bc], a                                     ; $4e67: $02
	ld   [bc], a                                     ; $4e68: $02
	ld   bc, $7c61                                   ; $4e69: $01 $61 $7c
	ld   [bc], a                                     ; $4e6c: $02
	jr   c, jr_048_4e73                              ; $4e6d: $38 $04

	ld   d, d                                        ; $4e6f: $52
	ld   [hl], l                                     ; $4e70: $75
	ld   d, d                                        ; $4e71: $52
	ld   d, d                                        ; $4e72: $52

jr_048_4e73:
	and  c                                           ; $4e73: $a1
	ld   l, [hl]                                     ; $4e74: $6e
	ld   a, b                                        ; $4e75: $78
	ld   sp, hl                                      ; $4e76: $f9
	dec  c                                           ; $4e77: $0d
	nop                                              ; $4e78: $00
	ld   a, [bc]                                     ; $4e79: $0a
	jr   jr_048_4e7e                                 ; $4e7a: $18 $02

	nop                                              ; $4e7c: $00
	ld   a, l                                        ; $4e7d: $7d

jr_048_4e7e:
	ld   d, d                                        ; $4e7e: $52
	nop                                              ; $4e7f: $00
	nop                                              ; $4e80: $00
	ld   d, d                                        ; $4e81: $52
	ld   d, d                                        ; $4e82: $52
	ld   d, [hl]                                     ; $4e83: $56
	nop                                              ; $4e84: $00
	ld   bc, $1307                                   ; $4e85: $01 $07 $13
	ld   bc, $0202                                   ; $4e88: $01 $02 $02
	ld   bc, $2000                                   ; $4e8b: $01 $00 $20
	nop                                              ; $4e8e: $00
	rlca                                             ; $4e8f: $07
	reti                                             ; $4e90: $d9


	nop                                              ; $4e91: $00
	ld   [bc], a                                     ; $4e92: $02
	ld   [bc], a                                     ; $4e93: $02
	ld   bc, $2001                                   ; $4e94: $01 $01 $20
	nop                                              ; $4e97: $00
	inc  e                                           ; $4e98: $1c
	add  hl, bc                                      ; $4e99: $09
	ld   [bc], a                                     ; $4e9a: $02
	ld   [bc], a                                     ; $4e9b: $02
	ld   bc, $6596                                   ; $4e9c: $01 $96 $65
	rst  $38                                         ; $4e9f: $ff
	rst  $38                                         ; $4ea0: $ff
	dec  c                                           ; $4ea1: $0d
	ld   b, $a5                                      ; $4ea2: $06 $a5
	ld   b, $a6                                      ; $4ea4: $06 $a6
	inc  bc                                          ; $4ea6: $03
	xor  b                                           ; $4ea7: $a8
	dec  b                                           ; $4ea8: $05
	rst  $38                                         ; $4ea9: $ff
	ld   l, [hl]                                     ; $4eaa: $6e
	ld   e, c                                        ; $4eab: $59
	sub  a                                           ; $4eac: $97
	halt                                             ; $4ead: $76
	ld   d, d                                        ; $4eae: $52
	ld   [hl], c                                     ; $4eaf: $71
	ld   [hl], h                                     ; $4eb0: $74
	sbc  [hl]                                        ; $4eb1: $9e
	dec  c                                           ; $4eb2: $0d
	ld   [bc], a                                     ; $4eb3: $02
	and  c                                           ; $4eb4: $a1
	and  b                                           ; $4eb5: $a0
	inc  b                                           ; $4eb6: $04
	sub  h                                           ; $4eb7: $94
	ld   e, l                                        ; $4eb8: $5d
	and  c                                           ; $4eb9: $a1
	ld   h, [hl]                                     ; $4eba: $66
	sub  c                                           ; $4ebb: $91
	ld   a, b                                        ; $4ebc: $78
	ld   d, d                                        ; $4ebd: $52
	ld   l, h                                        ; $4ebe: $6c
	sbc  a                                           ; $4ebf: $9f
	dec  c                                           ; $4ec0: $0d
	nop                                              ; $4ec1: $00
	ld   a, [bc]                                     ; $4ec2: $0a
	ld   bc, $7d75                                   ; $4ec3: $01 $75 $7d
	sbc  [hl]                                        ; $4ec6: $9e
	dec  b                                           ; $4ec7: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ec8: $cf
	adc  a                                           ; $4ec9: $8f
	ld   a, [$000d]                                  ; $4eca: $fa $0d $00
	ld   a, [bc]                                     ; $4ecd: $0a
	dec  c                                           ; $4ece: $0d
	nop                                              ; $4ecf: $00
	nop                                              ; $4ed0: $00
	rrca                                             ; $4ed1: $0f
	nop                                              ; $4ed2: $00
	ld   bc, $0127                                   ; $4ed3: $01 $27 $01
	rlca                                             ; $4ed6: $07
	ld   e, d                                        ; $4ed7: $5a
	ld   bc, $0402                                   ; $4ed8: $01 $02 $04
	nop                                              ; $4edb: $00
	ld   b, $1b                                      ; $4edc: $06 $1b
	ld   [bc], a                                     ; $4ede: $02
	inc  e                                           ; $4edf: $1c
	add  hl, bc                                      ; $4ee0: $09
	ld   bc, $0101                                   ; $4ee1: $01 $01 $01
	sub  d                                           ; $4ee4: $92
	ld   [hl], c                                     ; $4ee5: $71
	ld   l, l                                        ; $4ee6: $6d
	ld   a, b                                        ; $4ee7: $78
	sbc  [hl]                                        ; $4ee8: $9e
	ld   [$5d00], sp                                 ; $4ee9: $08 $00 $5d
	and  c                                           ; $4eec: $a1
	sbc  a                                           ; $4eed: $9f
	dec  c                                           ; $4eee: $0d
	ld   a, b                                        ; $4eef: $78
	ld   e, c                                        ; $4ef0: $59
	ld   a, b                                        ; $4ef1: $78
	ld   e, c                                        ; $4ef2: $59
	ld   a, h                                        ; $4ef3: $7c
	inc  bc                                          ; $4ef4: $03
	xor  b                                           ; $4ef5: $a8
	ld   d, d                                        ; $4ef6: $52
	add  h                                           ; $4ef7: $84
	sbc  b                                           ; $4ef8: $98
	ld   l, [hl]                                     ; $4ef9: $6e
	ld   [hl], c                                     ; $4efa: $71
	ld   l, l                                        ; $4efb: $6d
	ld   l, h                                        ; $4efc: $6c
	sbc  a                                           ; $4efd: $9f
	dec  c                                           ; $4efe: $0d
	nop                                              ; $4eff: $00
	ld   a, [bc]                                     ; $4f00: $0a
	dec  b                                           ; $4f01: $05
	ld   b, b                                        ; $4f02: $40
	ld   d, l                                        ; $4f03: $55
	inc  bc                                          ; $4f04: $03
	ld   d, l                                        ; $4f05: $55
	ld   bc, $2801                                   ; $4f06: $01 $01 $28
	nop                                              ; $4f09: $00
	ld   bc, $7c61                                   ; $4f0a: $01 $61 $7c
	ld   [bc], a                                     ; $4f0d: $02
	jp   $9e7d                                       ; $4f0e: $c3 $7d $9e


	inc  b                                           ; $4f11: $04
	rst  $10                                         ; $4f12: $d7
	inc  b                                           ; $4f13: $04
	ld   hl, $0b04                                   ; $4f14: $21 $04 $0b
	inc  bc                                          ; $4f17: $03
	ld   h, h                                        ; $4f18: $64
	ld   a, c                                        ; $4f19: $79
	sub  b                                           ; $4f1a: $90
	dec  c                                           ; $4f1b: $0d
	inc  b                                           ; $4f1c: $04
	ld   l, a                                        ; $4f1d: $6f
	ld   [bc], a                                     ; $4f1e: $02
	ld   [hl], h                                     ; $4f1f: $74
	ld   h, l                                        ; $4f20: $65
	ld   [hl], h                                     ; $4f21: $74
	ld   e, b                                        ; $4f22: $58
	ld   e, l                                        ; $4f23: $5d
	sub  [hl]                                        ; $4f24: $96
	sbc  a                                           ; $4f25: $9f
	dec  c                                           ; $4f26: $0d
	nop                                              ; $4f27: $00
	ld   a, [bc]                                     ; $4f28: $0a
	rrca                                             ; $4f29: $0f
	nop                                              ; $4f2a: $00
	ld   bc, $0401                                   ; $4f2b: $01 $01 $04
	ld   c, $03                                      ; $4f2e: $0e $03
	sub  b                                           ; $4f30: $90
	ld   h, e                                        ; $4f31: $63
	and  c                                           ; $4f32: $a1
	rst  $38                                         ; $4f33: $ff
	rst  $38                                         ; $4f34: $ff
	dec  c                                           ; $4f35: $0d
	ld   d, b                                        ; $4f36: $50
	sbc  b                                           ; $4f37: $98
	ld   e, d                                        ; $4f38: $5a
	halt                                             ; $4f39: $76
	ld   d, h                                        ; $4f3a: $54
	ld   h, d                                        ; $4f3b: $62
	ld   h, h                                        ; $4f3c: $64
	ld   d, d                                        ; $4f3d: $52
	adc  h                                           ; $4f3e: $8c
	ld   h, l                                        ; $4f3f: $65
	ld   l, l                                        ; $4f40: $6d
	ld   a, [$0dfa]                                  ; $4f41: $fa $fa $0d
	nop                                              ; $4f44: $00
	ld   a, [bc]                                     ; $4f45: $0a
	rrca                                             ; $4f46: $0f
	add  hl, bc                                      ; $4f47: $09
	ld   bc, $5401                                   ; $4f48: $01 $01 $54
	and  c                                           ; $4f4b: $a1
	sbc  [hl]                                        ; $4f4c: $9e
	ld   l, e                                        ; $4f4d: $6b
	sbc  d                                           ; $4f4e: $9a
	ld   h, [hl]                                     ; $4f4f: $66
	sub  c                                           ; $4f50: $91
	sbc  [hl]                                        ; $4f51: $9e
	dec  c                                           ; $4f52: $0d
	dec  b                                           ; $4f53: $05
	db   $10                                         ; $4f54: $10
	inc  bc                                          ; $4f55: $03
	ld   a, c                                        ; $4f56: $79
	sub  b                                           ; $4f57: $90
	ld   e, d                                        ; $4f58: $5a
	and  c                                           ; $4f59: $a1
	ld   a, [hl]                                     ; $4f5a: $7e
	ld   [hl], c                                     ; $4f5b: $71
	ld   [hl], h                                     ; $4f5c: $74
	ld   a, b                                        ; $4f5d: $78
	sbc  a                                           ; $4f5e: $9f
	dec  c                                           ; $4f5f: $0d
	nop                                              ; $4f60: $00
	ld   a, [bc]                                     ; $4f61: $0a
	dec  c                                           ; $4f62: $0d
	nop                                              ; $4f63: $00
	nop                                              ; $4f64: $00
	rrca                                             ; $4f65: $0f
	nop                                              ; $4f66: $00
	ld   bc, $1e09                                   ; $4f67: $01 $09 $1e
	rlca                                             ; $4f6a: $07
	sub  h                                           ; $4f6b: $94
	ld   [bc], a                                     ; $4f6c: $02
	ld   [bc], a                                     ; $4f6d: $02
	rlca                                             ; $4f6e: $07
	ld   bc, $2001                                   ; $4f6f: $01 $01 $20
	nop                                              ; $4f72: $00
	rlca                                             ; $4f73: $07
	inc  sp                                          ; $4f74: $33
	ld   b, $02                                      ; $4f75: $06 $02
	rlca                                             ; $4f77: $07
	ld   bc, $2004                                   ; $4f78: $01 $04 $20
	nop                                              ; $4f7b: $00
	rlca                                             ; $4f7c: $07
	or   [hl]                                        ; $4f7d: $b6
	inc  bc                                          ; $4f7e: $03
	ld   [bc], a                                     ; $4f7f: $02
	rlca                                             ; $4f80: $07
	ld   bc, $2002                                   ; $4f81: $01 $02 $20
	nop                                              ; $4f84: $00
	rlca                                             ; $4f85: $07
	jr   c, jr_048_4f8f                              ; $4f86: $38 $07

	ld   [bc], a                                     ; $4f88: $02
	rlca                                             ; $4f89: $07
	ld   bc, $2005                                   ; $4f8a: $01 $05 $20
	nop                                              ; $4f8d: $00
	rlca                                             ; $4f8e: $07

jr_048_4f8f:
	daa                                              ; $4f8f: $27
	dec  b                                           ; $4f90: $05
	ld   [bc], a                                     ; $4f91: $02
	rlca                                             ; $4f92: $07
	ld   bc, $2003                                   ; $4f93: $01 $03 $20
	nop                                              ; $4f96: $00
	rlca                                             ; $4f97: $07
	ld   [hl], c                                     ; $4f98: $71
	ld   [$0702], sp                                 ; $4f99: $08 $02 $07
	ld   bc, $2006                                   ; $4f9c: $01 $06 $20
	nop                                              ; $4f9f: $00
	rrca                                             ; $4fa0: $0f
	nop                                              ; $4fa1: $00
	ld   bc, $8c01                                   ; $4fa2: $01 $01 $8c
	rst  $38                                         ; $4fa5: $ff
	rst  $38                                         ; $4fa6: $ff
	inc  b                                           ; $4fa7: $04
	ld   a, l                                        ; $4fa8: $7d
	ld   e, a                                        ; $4fa9: $5f
	ld   l, l                                        ; $4faa: $6d
	rst  $38                                         ; $4fab: $ff
	rst  $38                                         ; $4fac: $ff
	dec  c                                           ; $4fad: $0d
	nop                                              ; $4fae: $00
	ld   a, [bc]                                     ; $4faf: $0a
	inc  e                                           ; $4fb0: $1c
	add  hl, bc                                      ; $4fb1: $09
	ld   [bc], a                                     ; $4fb2: $02
	ld   [bc], a                                     ; $4fb3: $02
	ld   bc, $2803                                   ; $4fb4: $01 $03 $28
	inc  b                                           ; $4fb7: $04
	ld   c, b                                        ; $4fb8: $48
	ld   l, [hl]                                     ; $4fb9: $6e
	ld   [hl], c                                     ; $4fba: $71
	ld   l, l                                        ; $4fbb: $6d
	ld   a, b                                        ; $4fbc: $78
	sbc  [hl]                                        ; $4fbd: $9e
	dec  c                                           ; $4fbe: $0d
	ld   [$5d00], sp                                 ; $4fbf: $08 $00 $5d
	and  c                                           ; $4fc2: $a1
	sbc  a                                           ; $4fc3: $9f
	dec  c                                           ; $4fc4: $0d
	nop                                              ; $4fc5: $00
	ld   a, [bc]                                     ; $4fc6: $0a
	ld   bc, $3802                                   ; $4fc7: $01 $02 $38
	inc  b                                           ; $4fca: $04
	ld   d, d                                        ; $4fcb: $52
	ld   [hl], l                                     ; $4fcc: $75
	ld   a, h                                        ; $4fcd: $7c
	inc  bc                                          ; $4fce: $03
	xor  b                                           ; $4fcf: $a8
	dec  b                                           ; $4fd0: $05
	rst  $38                                         ; $4fd1: $ff
	ld   a, l                                        ; $4fd2: $7d
	sbc  [hl]                                        ; $4fd3: $9e
	dec  b                                           ; $4fd4: $05
	pop  de                                          ; $4fd5: $d1
	ld   [hl], c                                     ; $4fd6: $71
	ld   l, l                                        ; $4fd7: $6d
	sub  [hl]                                        ; $4fd8: $96
	sbc  b                                           ; $4fd9: $98
	dec  c                                           ; $4fda: $0d
	adc  [hl]                                        ; $4fdb: $8e
	ld   l, b                                        ; $4fdc: $68
	ld   e, c                                        ; $4fdd: $59
	ld   h, l                                        ; $4fde: $65
	ld   d, d                                        ; $4fdf: $52
	ld   l, [hl]                                     ; $4fe0: $6e
	sbc  e                                           ; $4fe1: $9b
	sbc  a                                           ; $4fe2: $9f
	dec  c                                           ; $4fe3: $0d
	nop                                              ; $4fe4: $00
	ld   a, [bc]                                     ; $4fe5: $0a
	ld   bc, $2403                                   ; $4fe6: $01 $03 $24
	ld   [bc], a                                     ; $4fe9: $02
	sub  [hl]                                        ; $4fea: $96
	ld   a, l                                        ; $4feb: $7d
	adc  h                                           ; $4fec: $8c
	ld   l, [hl]                                     ; $4fed: $6e
	dec  b                                           ; $4fee: $05
	db   $10                                         ; $4fef: $10
	inc  bc                                          ; $4ff0: $03
	ld   a, c                                        ; $4ff1: $79
	sub  b                                           ; $4ff2: $90
	ld   d, b                                        ; $4ff3: $50
	sbc  c                                           ; $4ff4: $99
	sbc  a                                           ; $4ff5: $9f
	dec  c                                           ; $4ff6: $0d
	ld   [bc], a                                     ; $4ff7: $02
	and  c                                           ; $4ff8: $a1
	and  b                                           ; $4ff9: $a0
	sub  h                                           ; $4ffa: $94
	sbc  c                                           ; $4ffb: $99
	adc  a                                           ; $4ffc: $8f
	ld   l, b                                        ; $4ffd: $68
	ld   a, c                                        ; $4ffe: $79
	inc  bc                                          ; $4fff: $03
	ld   l, l                                        ; $5000: $6d
	dec  b                                           ; $5001: $05
	add  hl, de                                      ; $5002: $19
	dec  c                                           ; $5003: $0d
	ld   h, l                                        ; $5004: $65
	ld   [hl], h                                     ; $5005: $74
	ld   e, b                                        ; $5006: $58
	ld   e, l                                        ; $5007: $5d
	sub  [hl]                                        ; $5008: $96
	ld   d, h                                        ; $5009: $54
	ld   a, c                                        ; $500a: $79
	ld   a, b                                        ; $500b: $78
	sbc  a                                           ; $500c: $9f
	dec  c                                           ; $500d: $0d
	nop                                              ; $500e: $00
	ld   a, [bc]                                     ; $500f: $0a
	dec  c                                           ; $5010: $0d
	nop                                              ; $5011: $00
	nop                                              ; $5012: $00
	rrca                                             ; $5013: $0f
	nop                                              ; $5014: $00
	ld   bc, $1e09                                   ; $5015: $01 $09 $1e
	nop                                              ; $5018: $00
	inc  c                                           ; $5019: $0c
	ld   [bc], a                                     ; $501a: $02
	ld   c, $33                                      ; $501b: $0e $33
	rrca                                             ; $501d: $0f
	nop                                              ; $501e: $00
	ld   bc, $ff01                                   ; $501f: $01 $01 $ff
	rst  $38                                         ; $5022: $ff
	add  e                                           ; $5023: $83
	ld   d, h                                        ; $5024: $54
	rst  $38                                         ; $5025: $ff
	rst  $38                                         ; $5026: $ff
	dec  c                                           ; $5027: $0d
	ld   [bc], a                                     ; $5028: $02
	and  l                                           ; $5029: $a5
	inc  b                                           ; $502a: $04
	xor  d                                           ; $502b: $aa
	ld   a, h                                        ; $502c: $7c
	rst  ToBoot                                         ; $502d: $c7
	cp   d                                           ; $502e: $ba
	ret                                              ; $502f: $c9


	ld   a, l                                        ; $5030: $7d
	dec  c                                           ; $5031: $0d
	ld   e, e                                        ; $5032: $5b
	and  c                                           ; $5033: $a1
	ld   l, a                                        ; $5034: $6f
	sub  l                                           ; $5035: $95
	ld   d, h                                        ; $5036: $54
	ld   h, l                                        ; $5037: $65
	ld   l, l                                        ; $5038: $6d
	ld   a, b                                        ; $5039: $78
	ld   d, b                                        ; $503a: $50
	rst  $38                                         ; $503b: $ff
	rst  $38                                         ; $503c: $ff
	dec  c                                           ; $503d: $0d
	nop                                              ; $503e: $00
	ld   a, [bc]                                     ; $503f: $0a
	inc  e                                           ; $5040: $1c
	ld   bc, $0000                                   ; $5041: $01 $00 $00
	ld   bc, $0458                                   ; $5044: $01 $58 $04
	ld   a, e                                        ; $5047: $7b
	sbc  d                                           ; $5048: $9a
	ld   h, e                                        ; $5049: $63
	adc  h                                           ; $504a: $8c
	ld   [hl], l                                     ; $504b: $75
	ld   h, l                                        ; $504c: $65
	ld   l, l                                        ; $504d: $6d
	sbc  a                                           ; $504e: $9f
	dec  c                                           ; $504f: $0d
	ld   [$6300], sp                                 ; $5050: $08 $00 $63
	and  c                                           ; $5053: $a1
	sbc  a                                           ; $5054: $9f
	dec  c                                           ; $5055: $0d
	nop                                              ; $5056: $00
	ld   a, [bc]                                     ; $5057: $0a
	rrca                                             ; $5058: $0f
	nop                                              ; $5059: $00

Jump_048_505a:
	ld   bc, $5001                                   ; $505a: $01 $01 $50
	ld   [hl], c                                     ; $505d: $71
	sbc  [hl]                                        ; $505e: $9e
	ld   h, e                                        ; $505f: $63
	ld   e, l                                        ; $5060: $5d
	sub  a                                           ; $5061: $97
	ld   h, e                                        ; $5062: $63
	and  c                                           ; $5063: $a1
	rst  $38                                         ; $5064: $ff
	rst  $38                                         ; $5065: $ff
	dec  c                                           ; $5066: $0d
	nop                                              ; $5067: $00
	ld   a, [bc]                                     ; $5068: $0a
	inc  e                                           ; $5069: $1c
	ld   bc, $0101                                   ; $506a: $01 $01 $01
	ld   bc, $bac7                                   ; $506d: $01 $c7 $ba
	ret                                              ; $5070: $c9


	sbc  [hl]                                        ; $5071: $9e
	ld   d, d                                        ; $5072: $52
	ld   d, d                                        ; $5073: $52
	ld   [bc], a                                     ; $5074: $02
	reti                                             ; $5075: $d9


	ld   [bc], a                                     ; $5076: $02
	ld   h, e                                        ; $5077: $63
	ld   l, [hl]                                     ; $5078: $6e
	ld   [hl], c                                     ; $5079: $71
	ld   l, l                                        ; $507a: $6d
	dec  c                                           ; $507b: $0d
	adc  l                                           ; $507c: $8d
	ld   l, l                                        ; $507d: $6d
	ld   d, d                                        ; $507e: $52
	ld   [hl], l                                     ; $507f: $75
	ld   h, a                                        ; $5080: $67
	ld   a, e                                        ; $5081: $7b
	sbc  a                                           ; $5082: $9f
	dec  c                                           ; $5083: $0d
	nop                                              ; $5084: $00
	ld   a, [bc]                                     ; $5085: $0a
	ld   bc, $5965                                   ; $5086: $01 $65 $59
	sub  b                                           ; $5089: $90
	sbc  [hl]                                        ; $508a: $9e
	ld   d, b                                        ; $508b: $50
	ld   l, l                                        ; $508c: $6d
	ld   h, l                                        ; $508d: $65
	ld   a, h                                        ; $508e: $7c
	ld   [bc], a                                     ; $508f: $02
	jr   c, jr_048_5096                              ; $5090: $38 $04

	ld   d, d                                        ; $5092: $52
	ld   [hl], l                                     ; $5093: $75
	dec  c                                           ; $5094: $0d
	rst  ToBoot                                         ; $5095: $c7

jr_048_5096:
	cp   d                                           ; $5096: $ba
	ret                                              ; $5097: $c9


	ld   h, l                                        ; $5098: $65
	ld   l, l                                        ; $5099: $6d
	and  c                                           ; $509a: $a1
	ld   [hl], l                                     ; $509b: $75
	ld   h, a                                        ; $509c: $67
	ld   [hl], c                                     ; $509d: $71
	ld   [hl], h                                     ; $509e: $74
	ld   sp, hl                                      ; $509f: $f9
	dec  c                                           ; $50a0: $0d
	inc  b                                           ; $50a1: $04
	ld   c, $03                                      ; $50a2: $0e $03
	sub  b                                           ; $50a4: $90
	ld   h, e                                        ; $50a5: $63
	and  c                                           ; $50a6: $a1
	ld   a, c                                        ; $50a7: $79
	ld   [bc], a                                     ; $50a8: $02
	jp   nz, $8c5b                                   ; $50a9: $c2 $5b $8c

	ld   h, l                                        ; $50ac: $65
	ld   l, l                                        ; $50ad: $6d
	sub  [hl]                                        ; $50ae: $96
	sbc  a                                           ; $50af: $9f
	dec  c                                           ; $50b0: $0d
	nop                                              ; $50b1: $00
	ld   a, [bc]                                     ; $50b2: $0a
	rrca                                             ; $50b3: $0f
	nop                                              ; $50b4: $00
	ld   bc, $7d01                                   ; $50b5: $01 $01 $7d
	ld   d, d                                        ; $50b8: $52
	sbc  [hl]                                        ; $50b9: $9e
	ld   d, b                                        ; $50ba: $50
	sbc  b                                           ; $50bb: $98
	ld   e, d                                        ; $50bc: $5a
	halt                                             ; $50bd: $76
	ld   d, h                                        ; $50be: $54
	ld   h, d                                        ; $50bf: $62
	ld   h, h                                        ; $50c0: $64
	ld   d, d                                        ; $50c1: $52
	adc  h                                           ; $50c2: $8c
	ld   h, a                                        ; $50c3: $67
	ld   a, [$610d]                                  ; $50c4: $fa $0d $61
	sbc  d                                           ; $50c7: $9a
	sub  b                                           ; $50c8: $90
	sbc  [hl]                                        ; $50c9: $9e
	ld   h, e                                        ; $50ca: $63
	ld   e, l                                        ; $50cb: $5d
	sub  a                                           ; $50cc: $97
	ld   h, e                                        ; $50cd: $63
	and  c                                           ; $50ce: $a1
	ld   a, h                                        ; $50cf: $7c
	inc  bc                                          ; $50d0: $03
	ld   l, l                                        ; $50d1: $6d
	dec  b                                           ; $50d2: $05
	add  hl, de                                      ; $50d3: $19
	ld   a, h                                        ; $50d4: $7c
	dec  c                                           ; $50d5: $0d
	ld   e, b                                        ; $50d6: $58
	ld   e, c                                        ; $50d7: $59
	ld   h, b                                        ; $50d8: $60
	ld   [hl], l                                     ; $50d9: $75
	ld   h, a                                        ; $50da: $67
	sub  [hl]                                        ; $50db: $96
	sbc  a                                           ; $50dc: $9f
	dec  c                                           ; $50dd: $0d
	nop                                              ; $50de: $00
	ld   a, [bc]                                     ; $50df: $0a
	inc  e                                           ; $50e0: $1c
	ld   bc, $0101                                   ; $50e1: $01 $01 $01
	dec  e                                           ; $50e4: $1d
	ld   b, b                                        ; $50e5: $40
	ld   de, $1103                                   ; $50e6: $11 $03 $11
	ld   bc, $2803                                   ; $50e9: $01 $03 $28
	nop                                              ; $50ec: $00
	ld   bc, $d6d6                                   ; $50ed: $01 $d6 $d6
	rst  $38                                         ; $50f0: $ff
	rst  $38                                         ; $50f1: $ff
	ld   [hl], l                                     ; $50f2: $75
	sub  b                                           ; $50f3: $90
	sbc  [hl]                                        ; $50f4: $9e
	ld   [bc], a                                     ; $50f5: $02
	reti                                             ; $50f6: $d9


	ld   [bc], a                                     ; $50f7: $02
	ld   h, e                                        ; $50f8: $63
	and  b                                           ; $50f9: $a0
	inc  bc                                          ; $50fa: $03
	add  b                                           ; $50fb: $80
	ld   l, c                                        ; $50fc: $69
	ld   l, l                                        ; $50fd: $6d
	dec  c                                           ; $50fe: $0d
	ld   a, h                                        ; $50ff: $7c
	ld   a, l                                        ; $5100: $7d
	sbc  [hl]                                        ; $5101: $9e
	ld   [$6300], sp                                 ; $5102: $08 $00 $63
	and  c                                           ; $5105: $a1
	ld   e, d                                        ; $5106: $5a
	dec  c                                           ; $5107: $0d
	ld   e, d                                        ; $5108: $5a
	and  c                                           ; $5109: $a1
	ld   a, [hl]                                     ; $510a: $7e
	ld   [hl], c                                     ; $510b: $71
	ld   l, l                                        ; $510c: $6d
	ld   e, c                                        ; $510d: $59
	sub  a                                           ; $510e: $97
	ld   [hl], l                                     ; $510f: $75
	ld   h, a                                        ; $5110: $67
	sub  [hl]                                        ; $5111: $96
	sbc  a                                           ; $5112: $9f
	dec  c                                           ; $5113: $0d
	nop                                              ; $5114: $00
	ld   a, [bc]                                     ; $5115: $0a
	ld   bc, $9a61                                   ; $5116: $01 $61 $9a
	ld   e, c                                        ; $5119: $59
	sub  a                                           ; $511a: $97
	sub  b                                           ; $511b: $90
	sbc  [hl]                                        ; $511c: $9e
	ld   h, c                                        ; $511d: $61
	ld   a, h                                        ; $511e: $7c
	inc  bc                                          ; $511f: $03
	cp   $03                                         ; $5120: $fe $03
	add  [hl]                                        ; $5122: $86
	ld   [hl], l                                     ; $5123: $75
	dec  c                                           ; $5124: $0d
	ld   e, d                                        ; $5125: $5a
	and  c                                           ; $5126: $a1
	ld   a, [hl]                                     ; $5127: $7e
	ld   [hl], c                                     ; $5128: $71
	ld   [hl], h                                     ; $5129: $74
	ld   e, l                                        ; $512a: $5d
	ld   l, [hl]                                     ; $512b: $6e
	ld   h, e                                        ; $512c: $63
	ld   d, d                                        ; $512d: $52
	sbc  a                                           ; $512e: $9f
	dec  c                                           ; $512f: $0d
	nop                                              ; $5130: $00
	ld   a, [bc]                                     ; $5131: $0a
	dec  c                                           ; $5132: $0d
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	rrca                                             ; $5135: $0f
	nop                                              ; $5136: $00
	ld   bc, $1e09                                   ; $5137: $01 $09 $1e
	nop                                              ; $513a: $00
	inc  c                                           ; $513b: $0c
	ld   [bc], a                                     ; $513c: $02
	ld   c, $3f                                      ; $513d: $0e $3f
	rrca                                             ; $513f: $0f
	nop                                              ; $5140: $00
	ld   bc, $ff01                                   ; $5141: $01 $01 $ff
	rst  $38                                         ; $5144: $ff
	add  e                                           ; $5145: $83
	ld   d, h                                        ; $5146: $54
	rst  $38                                         ; $5147: $ff
	rst  $38                                         ; $5148: $ff
	dec  c                                           ; $5149: $0d
	ld   [bc], a                                     ; $514a: $02
	and  l                                           ; $514b: $a5
	inc  b                                           ; $514c: $04
	xor  d                                           ; $514d: $aa
	ld   a, h                                        ; $514e: $7c
	rst  ToBoot                                         ; $514f: $c7
	cp   d                                           ; $5150: $ba
	ret                                              ; $5151: $c9


	ld   a, l                                        ; $5152: $7d
	ld   e, e                                        ; $5153: $5b
	and  c                                           ; $5154: $a1
	ld   l, a                                        ; $5155: $6f
	sub  l                                           ; $5156: $95
	ld   d, h                                        ; $5157: $54
	dec  c                                           ; $5158: $0d
	ld   h, l                                        ; $5159: $65
	ld   l, l                                        ; $515a: $6d
	ld   a, b                                        ; $515b: $78
	ld   d, b                                        ; $515c: $50
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	dec  c                                           ; $515f: $0d
	nop                                              ; $5160: $00
	ld   a, [bc]                                     ; $5161: $0a
	inc  e                                           ; $5162: $1c
	ld   [bc], a                                     ; $5163: $02
	nop                                              ; $5164: $00
	nop                                              ; $5165: $00
	ld   bc, $0458                                   ; $5166: $01 $58 $04
	ld   a, e                                        ; $5169: $7b
	sbc  d                                           ; $516a: $9a
	ld   h, e                                        ; $516b: $63
	adc  h                                           ; $516c: $8c
	ld   [hl], l                                     ; $516d: $75
	ld   h, l                                        ; $516e: $65
	ld   l, l                                        ; $516f: $6d
	sbc  a                                           ; $5170: $9f
	dec  c                                           ; $5171: $0d
	ld   [$6300], sp                                 ; $5172: $08 $00 $63
	and  c                                           ; $5175: $a1
	sbc  a                                           ; $5176: $9f
	dec  c                                           ; $5177: $0d
	nop                                              ; $5178: $00
	ld   a, [bc]                                     ; $5179: $0a
	rrca                                             ; $517a: $0f
	nop                                              ; $517b: $00
	ld   bc, $5001                                   ; $517c: $01 $01 $50
	ld   [hl], c                                     ; $517f: $71
	sbc  [hl]                                        ; $5180: $9e
	ld   h, a                                        ; $5181: $67
	adc  l                                           ; $5182: $8d
	sbc  d                                           ; $5183: $9a
	ld   h, e                                        ; $5184: $63
	and  c                                           ; $5185: $a1
	rst  $38                                         ; $5186: $ff
	rst  $38                                         ; $5187: $ff
	dec  c                                           ; $5188: $0d
	nop                                              ; $5189: $00
	ld   a, [bc]                                     ; $518a: $0a
	inc  e                                           ; $518b: $1c
	ld   [bc], a                                     ; $518c: $02
	ld   bc, $0101                                   ; $518d: $01 $01 $01
	rst  ToBoot                                         ; $5190: $c7
	cp   d                                           ; $5191: $ba
	ret                                              ; $5192: $c9


	sbc  [hl]                                        ; $5193: $9e
	ld   d, d                                        ; $5194: $52
	ld   d, d                                        ; $5195: $52
	ld   [bc], a                                     ; $5196: $02
	reti                                             ; $5197: $d9


	ld   [bc], a                                     ; $5198: $02
	ld   h, e                                        ; $5199: $63
	ld   l, [hl]                                     ; $519a: $6e
	ld   [hl], c                                     ; $519b: $71
	ld   l, l                                        ; $519c: $6d
	dec  c                                           ; $519d: $0d
	adc  l                                           ; $519e: $8d
	ld   l, l                                        ; $519f: $6d
	ld   d, d                                        ; $51a0: $52
	ld   [hl], l                                     ; $51a1: $75
	ld   h, a                                        ; $51a2: $67
	sbc  l                                           ; $51a3: $9d
	ld   a, e                                        ; $51a4: $7b
	sbc  a                                           ; $51a5: $9f
	dec  c                                           ; $51a6: $0d
	nop                                              ; $51a7: $00
	ld   a, [bc]                                     ; $51a8: $0a
	ld   bc, $5965                                   ; $51a9: $01 $65 $59
	sub  b                                           ; $51ac: $90
	sbc  [hl]                                        ; $51ad: $9e
	sbc  l                                           ; $51ae: $9d
	ld   l, l                                        ; $51af: $6d
	ld   e, l                                        ; $51b0: $5d
	ld   h, l                                        ; $51b1: $65
	ld   a, h                                        ; $51b2: $7c
	ld   [bc], a                                     ; $51b3: $02
	jr   c, jr_048_51ba                              ; $51b4: $38 $04

	ld   d, d                                        ; $51b6: $52
	ld   [hl], l                                     ; $51b7: $75
	dec  c                                           ; $51b8: $0d
	rst  ToBoot                                         ; $51b9: $c7

jr_048_51ba:
	cp   d                                           ; $51ba: $ba
	ret                                              ; $51bb: $c9


	ld   h, l                                        ; $51bc: $65
	ld   l, l                                        ; $51bd: $6d
	and  c                                           ; $51be: $a1
	ld   [hl], l                                     ; $51bf: $75
	ld   h, a                                        ; $51c0: $67
	ld   [hl], c                                     ; $51c1: $71
	ld   [hl], h                                     ; $51c2: $74
	ld   sp, hl                                      ; $51c3: $f9
	dec  c                                           ; $51c4: $0d
	inc  bc                                          ; $51c5: $03
	ld   l, h                                        ; $51c6: $6c
	dec  b                                           ; $51c7: $05
	ld   h, $79                                      ; $51c8: $26 $79
	ld   [bc], a                                     ; $51ca: $02
	jp   nz, $8c5b                                   ; $51cb: $c2 $5b $8c

	ld   h, l                                        ; $51ce: $65
	ld   l, l                                        ; $51cf: $6d
	sbc  l                                           ; $51d0: $9d
	sbc  a                                           ; $51d1: $9f
	dec  c                                           ; $51d2: $0d
	nop                                              ; $51d3: $00
	ld   a, [bc]                                     ; $51d4: $0a
	rrca                                             ; $51d5: $0f
	nop                                              ; $51d6: $00
	ld   bc, $7d01                                   ; $51d7: $01 $01 $7d
	ld   d, d                                        ; $51da: $52
	sbc  [hl]                                        ; $51db: $9e
	ld   d, b                                        ; $51dc: $50
	sbc  b                                           ; $51dd: $98
	ld   e, d                                        ; $51de: $5a
	halt                                             ; $51df: $76
	ld   d, h                                        ; $51e0: $54
	ld   h, d                                        ; $51e1: $62
	ld   h, h                                        ; $51e2: $64
	ld   d, d                                        ; $51e3: $52
	adc  h                                           ; $51e4: $8c
	ld   h, a                                        ; $51e5: $67
	ld   a, [$610d]                                  ; $51e6: $fa $0d $61
	sbc  d                                           ; $51e9: $9a
	sub  b                                           ; $51ea: $90
	sbc  [hl]                                        ; $51eb: $9e
	ld   h, a                                        ; $51ec: $67
	adc  l                                           ; $51ed: $8d
	sbc  d                                           ; $51ee: $9a
	ld   h, e                                        ; $51ef: $63
	and  c                                           ; $51f0: $a1
	ld   a, h                                        ; $51f1: $7c
	inc  bc                                          ; $51f2: $03
	ld   l, l                                        ; $51f3: $6d
	dec  b                                           ; $51f4: $05
	add  hl, de                                      ; $51f5: $19
	ld   a, h                                        ; $51f6: $7c
	dec  c                                           ; $51f7: $0d
	ld   e, b                                        ; $51f8: $58
	ld   e, c                                        ; $51f9: $59
	ld   h, b                                        ; $51fa: $60
	ld   [hl], l                                     ; $51fb: $75
	ld   h, a                                        ; $51fc: $67
	sbc  a                                           ; $51fd: $9f
	dec  c                                           ; $51fe: $0d
	nop                                              ; $51ff: $00
	ld   a, [bc]                                     ; $5200: $0a
	inc  e                                           ; $5201: $1c
	ld   [bc], a                                     ; $5202: $02
	jr   nc, @+$1b                                   ; $5203: $30 $19

	ld   bc, $fc58                                   ; $5205: $01 $58 $fc
	ld   [hl], c                                     ; $5208: $71
	adc  c                                           ; $5209: $89
	ld   [hl], c                                     ; $520a: $71
	adc  c                                           ; $520b: $89
	ld   [hl], c                                     ; $520c: $71
	adc  c                                           ; $520d: $89
	sbc  a                                           ; $520e: $9f
	dec  c                                           ; $520f: $0d
	inc  b                                           ; $5210: $04
	jr   jr_048_5216                                 ; $5211: $18 $03

	sbc  c                                           ; $5213: $99
	ld   [hl], l                                     ; $5214: $75
	ld   h, a                                        ; $5215: $67

jr_048_5216:
	sbc  l                                           ; $5216: $9d
	sbc  a                                           ; $5217: $9f
	dec  c                                           ; $5218: $0d
	nop                                              ; $5219: $00
	ld   a, [bc]                                     ; $521a: $0a
	inc  e                                           ; $521b: $1c
	ld   [bc], a                                     ; $521c: $02
	ld   bc, $1d01                                   ; $521d: $01 $01 $1d
	ld   b, b                                        ; $5220: $40
	ld   [de], a                                     ; $5221: $12
	inc  bc                                          ; $5222: $03
	ld   [de], a                                     ; $5223: $12
	ld   bc, $2803                                   ; $5224: $01 $03 $28
	nop                                              ; $5227: $00
	ld   bc, $7d76                                   ; $5228: $01 $76 $7d
	ld   d, d                                        ; $522b: $52
	ld   d, [hl]                                     ; $522c: $56
	rst  $38                                         ; $522d: $ff
	ld   d, b                                        ; $522e: $50
	ld   a, b                                        ; $522f: $78
	ld   l, l                                        ; $5230: $6d
	ld   a, h                                        ; $5231: $7c
	ld   e, d                                        ; $5232: $5a
	and  c                                           ; $5233: $a1
	ld   a, [hl]                                     ; $5234: $7e
	sbc  b                                           ; $5235: $98
	ld   e, d                                        ; $5236: $5a
	dec  c                                           ; $5237: $0d
	ld   d, b                                        ; $5238: $50
	ld   [hl], c                                     ; $5239: $71
	ld   l, l                                        ; $523a: $6d
	ld   e, c                                        ; $523b: $59
	sub  a                                           ; $523c: $97
	ld   h, c                                        ; $523d: $61
	ld   l, e                                        ; $523e: $6b
	ld   [hl], l                                     ; $523f: $75
	ld   h, a                                        ; $5240: $67
	sbc  l                                           ; $5241: $9d
	sbc  a                                           ; $5242: $9f
	dec  c                                           ; $5243: $0d
	nop                                              ; $5244: $00
	ld   a, [bc]                                     ; $5245: $0a
	ld   bc, $9a61                                   ; $5246: $01 $61 $9a
	ld   e, c                                        ; $5249: $59
	sub  a                                           ; $524a: $97
	sub  b                                           ; $524b: $90
	sbc  [hl]                                        ; $524c: $9e
	ld   h, c                                        ; $524d: $61
	ld   a, h                                        ; $524e: $7c
	inc  bc                                          ; $524f: $03
	cp   $03                                         ; $5250: $fe $03
	add  [hl]                                        ; $5252: $86
	ld   [hl], l                                     ; $5253: $75
	dec  c                                           ; $5254: $0d
	ld   e, d                                        ; $5255: $5a
	and  c                                           ; $5256: $a1
	ld   a, [hl]                                     ; $5257: $7e
	ld   [hl], c                                     ; $5258: $71
	ld   [hl], h                                     ; $5259: $74
	ld   e, l                                        ; $525a: $5d
	ld   l, [hl]                                     ; $525b: $6e
	ld   h, e                                        ; $525c: $63
	ld   d, d                                        ; $525d: $52
	ld   a, b                                        ; $525e: $78
	sbc  a                                           ; $525f: $9f
	dec  c                                           ; $5260: $0d
	nop                                              ; $5261: $00
	ld   a, [bc]                                     ; $5262: $0a
	ld   bc, $7190                                   ; $5263: $01 $90 $71
	halt                                             ; $5266: $76
	sub  b                                           ; $5267: $90
	rst  $38                                         ; $5268: $ff
	rst  $38                                         ; $5269: $ff
	sbc  l                                           ; $526a: $9d
	ld   l, l                                        ; $526b: $6d
	ld   e, l                                        ; $526c: $5d
	ld   h, l                                        ; $526d: $65
	ld   a, h                                        ; $526e: $7c
	inc  bc                                          ; $526f: $03
	ld   l, l                                        ; $5270: $6d
	dec  b                                           ; $5271: $05
	add  hl, de                                      ; $5272: $19
	and  b                                           ; $5273: $a0
	dec  c                                           ; $5274: $0d
	ld   d, h                                        ; $5275: $54

Jump_048_5276:
	ld   e, a                                        ; $5276: $5f
	ld   [hl], h                                     ; $5277: $74
	sbc  [hl]                                        ; $5278: $9e
	sbc  l                                           ; $5279: $9d
	sbc  c                                           ; $527a: $99
	ld   d, d                                        ; $527b: $52
	ld   [bc], a                                     ; $527c: $02
	reti                                             ; $527d: $d9


	ld   [bc], a                                     ; $527e: $02
	ld   h, e                                        ; $527f: $63
	ld   a, c                                        ; $5280: $79
	ld   a, b                                        ; $5281: $78
	sbc  c                                           ; $5282: $99
	dec  c                                           ; $5283: $0d
	sbc  l                                           ; $5284: $9d
	ld   e, a                                        ; $5285: $5f
	ld   a, l                                        ; $5286: $7d
	ld   h, d                                        ; $5287: $62
	ld   h, h                                        ; $5288: $64
	ld   d, d                                        ; $5289: $52
	adc  h                                           ; $528a: $8c
	ld   l, c                                        ; $528b: $69
	and  c                                           ; $528c: $a1
	ld   e, a                                        ; $528d: $5f
	sbc  d                                           ; $528e: $9a
	ld   [hl], a                                     ; $528f: $77
	rst  $38                                         ; $5290: $ff
	rst  $38                                         ; $5291: $ff
	dec  c                                           ; $5292: $0d
	nop                                              ; $5293: $00
	ld   a, [bc]                                     ; $5294: $0a
	ld   bc, $9a6b                                   ; $5295: $01 $6b $9a
	ld   [hl], l                                     ; $5298: $75
	ld   a, l                                        ; $5299: $7d
	sbc  [hl]                                        ; $529a: $9e
	inc  bc                                          ; $529b: $03
	add  e                                           ; $529c: $83
	dec  b                                           ; $529d: $05
	dec  c                                           ; $529e: $0d
	sbc  a                                           ; $529f: $9f
	dec  c                                           ; $52a0: $0d
	nop                                              ; $52a1: $00
	ld   a, [bc]                                     ; $52a2: $0a
	dec  c                                           ; $52a3: $0d
	nop                                              ; $52a4: $00
	nop                                              ; $52a5: $00
	rrca                                             ; $52a6: $0f
	nop                                              ; $52a7: $00
	ld   bc, $1e09                                   ; $52a8: $01 $09 $1e
	nop                                              ; $52ab: $00
	inc  c                                           ; $52ac: $0c
	ld   [bc], a                                     ; $52ad: $02
	ld   c, $33                                      ; $52ae: $0e $33
	rrca                                             ; $52b0: $0f
	nop                                              ; $52b1: $00
	ld   bc, $ff01                                   ; $52b2: $01 $01 $ff
	rst  $38                                         ; $52b5: $ff
	add  e                                           ; $52b6: $83
	ld   d, h                                        ; $52b7: $54
	rst  $38                                         ; $52b8: $ff
	rst  $38                                         ; $52b9: $ff
	dec  c                                           ; $52ba: $0d
	ld   [bc], a                                     ; $52bb: $02
	and  l                                           ; $52bc: $a5
	inc  b                                           ; $52bd: $04
	xor  d                                           ; $52be: $aa
	ld   a, h                                        ; $52bf: $7c
	rst  ToBoot                                         ; $52c0: $c7
	cp   d                                           ; $52c1: $ba
	ret                                              ; $52c2: $c9


	ld   a, l                                        ; $52c3: $7d
	dec  c                                           ; $52c4: $0d
	ld   e, e                                        ; $52c5: $5b
	and  c                                           ; $52c6: $a1
	ld   l, a                                        ; $52c7: $6f
	sub  l                                           ; $52c8: $95
	ld   d, h                                        ; $52c9: $54
	ld   h, l                                        ; $52ca: $65
	ld   l, l                                        ; $52cb: $6d
	ld   a, b                                        ; $52cc: $78
	ld   d, b                                        ; $52cd: $50
	rst  $38                                         ; $52ce: $ff
	rst  $38                                         ; $52cf: $ff
	dec  c                                           ; $52d0: $0d
	nop                                              ; $52d1: $00
	ld   a, [bc]                                     ; $52d2: $0a
	inc  e                                           ; $52d3: $1c
	inc  bc                                          ; $52d4: $03
	nop                                              ; $52d5: $00
	nop                                              ; $52d6: $00
	ld   bc, $0458                                   ; $52d7: $01 $58 $04
	ld   a, e                                        ; $52da: $7b
	sbc  d                                           ; $52db: $9a
	ld   h, e                                        ; $52dc: $63
	adc  h                                           ; $52dd: $8c
	sbc  a                                           ; $52de: $9f
	dec  c                                           ; $52df: $0d
	ld   [$5d00], sp                                 ; $52e0: $08 $00 $5d
	and  c                                           ; $52e3: $a1
	sbc  a                                           ; $52e4: $9f
	dec  c                                           ; $52e5: $0d
	nop                                              ; $52e6: $00
	ld   a, [bc]                                     ; $52e7: $0a
	rrca                                             ; $52e8: $0f
	nop                                              ; $52e9: $00
	ld   bc, $5001                                   ; $52ea: $01 $01 $50
	ld   [hl], c                                     ; $52ed: $71
	sbc  [hl]                                        ; $52ee: $9e
	rst  JumpTable                                         ; $52ef: $df
	db   $ec                                         ; $52f0: $ec
	and  e                                           ; $52f1: $a3
	ld   h, e                                        ; $52f2: $63
	and  c                                           ; $52f3: $a1
	rst  $38                                         ; $52f4: $ff
	rst  $38                                         ; $52f5: $ff
	dec  c                                           ; $52f6: $0d
	nop                                              ; $52f7: $00
	ld   a, [bc]                                     ; $52f8: $0a
	inc  e                                           ; $52f9: $1c
	inc  bc                                          ; $52fa: $03
	inc  bc                                          ; $52fb: $03
	inc  bc                                          ; $52fc: $03
	ld   bc, $bac7                                   ; $52fd: $01 $c7 $ba
	ret                                              ; $5300: $c9


	sbc  [hl]                                        ; $5301: $9e
	ld   d, d                                        ; $5302: $52
	ld   d, d                                        ; $5303: $52
	ld   [bc], a                                     ; $5304: $02
	reti                                             ; $5305: $d9


	ld   [bc], a                                     ; $5306: $02
	ld   h, e                                        ; $5307: $63
	ld   l, [hl]                                     ; $5308: $6e
	ld   [hl], c                                     ; $5309: $71
	ld   l, l                                        ; $530a: $6d
	dec  c                                           ; $530b: $0d
	adc  l                                           ; $530c: $8d
	ld   l, l                                        ; $530d: $6d
	ld   d, d                                        ; $530e: $52
	ld   a, e                                        ; $530f: $7b
	sbc  a                                           ; $5310: $9f
	dec  c                                           ; $5311: $0d
	nop                                              ; $5312: $00
	ld   a, [bc]                                     ; $5313: $0a
	ld   bc, $5965                                   ; $5314: $01 $65 $59
	sub  b                                           ; $5317: $90
	sbc  [hl]                                        ; $5318: $9e
	sbc  l                                           ; $5319: $9d
	ld   l, l                                        ; $531a: $6d
	ld   h, l                                        ; $531b: $65
	ld   a, h                                        ; $531c: $7c
	ld   [bc], a                                     ; $531d: $02
	jr   c, jr_048_5324                              ; $531e: $38 $04

	ld   d, d                                        ; $5320: $52
	ld   [hl], l                                     ; $5321: $75
	dec  c                                           ; $5322: $0d
	rst  ToBoot                                         ; $5323: $c7

jr_048_5324:
	cp   d                                           ; $5324: $ba
	ret                                              ; $5325: $c9


	ld   h, l                                        ; $5326: $65
	ld   l, l                                        ; $5327: $6d
	and  c                                           ; $5328: $a1
	ld   [hl], l                                     ; $5329: $75
	ld   h, a                                        ; $532a: $67
	ld   [hl], c                                     ; $532b: $71
	ld   [hl], h                                     ; $532c: $74
	ld   sp, hl                                      ; $532d: $f9
	dec  c                                           ; $532e: $0d
	inc  b                                           ; $532f: $04
	ld   a, [bc]                                     ; $5330: $0a
	inc  bc                                          ; $5331: $03
	jp   nc, $0279                                   ; $5332: $d2 $79 $02

	jp   nz, $8c5b                                   ; $5335: $c2 $5b $8c

	ld   h, l                                        ; $5338: $65
	ld   l, l                                        ; $5339: $6d
	sub  [hl]                                        ; $533a: $96
	sbc  a                                           ; $533b: $9f
	dec  c                                           ; $533c: $0d
	nop                                              ; $533d: $00
	ld   a, [bc]                                     ; $533e: $0a
	rrca                                             ; $533f: $0f
	nop                                              ; $5340: $00
	ld   bc, $7d01                                   ; $5341: $01 $01 $7d
	ld   d, d                                        ; $5344: $52
	sbc  [hl]                                        ; $5345: $9e
	ld   d, b                                        ; $5346: $50
	sbc  b                                           ; $5347: $98
	ld   e, d                                        ; $5348: $5a
	halt                                             ; $5349: $76
	ld   d, h                                        ; $534a: $54
	ld   h, d                                        ; $534b: $62
	ld   h, h                                        ; $534c: $64
	ld   d, d                                        ; $534d: $52
	adc  h                                           ; $534e: $8c
	ld   h, a                                        ; $534f: $67
	ld   a, [$df0d]                                  ; $5350: $fa $0d $df
	db   $ec                                         ; $5353: $ec
	and  e                                           ; $5354: $a3
	ld   h, e                                        ; $5355: $63
	and  c                                           ; $5356: $a1
	ld   a, h                                        ; $5357: $7c
	inc  bc                                          ; $5358: $03
	ld   l, l                                        ; $5359: $6d
	dec  b                                           ; $535a: $05
	add  hl, de                                      ; $535b: $19
	ld   a, h                                        ; $535c: $7c
	dec  c                                           ; $535d: $0d
	ld   e, b                                        ; $535e: $58
	ld   e, c                                        ; $535f: $59
	ld   h, b                                        ; $5360: $60
	ld   [hl], l                                     ; $5361: $75
	ld   h, a                                        ; $5362: $67
	sbc  a                                           ; $5363: $9f
	dec  c                                           ; $5364: $0d
	nop                                              ; $5365: $00
	ld   a, [bc]                                     ; $5366: $0a
	rrca                                             ; $5367: $0f
	inc  bc                                          ; $5368: $03
	inc  bc                                          ; $5369: $03
	dec  e                                           ; $536a: $1d
	ld   b, b                                        ; $536b: $40
	inc  de                                          ; $536c: $13
	inc  bc                                          ; $536d: $03
	inc  de                                          ; $536e: $13
	ld   bc, $2803                                   ; $536f: $01 $03 $28
	nop                                              ; $5372: $00
	ld   bc, $d6d6                                   ; $5373: $01 $d6 $d6
	rst  $38                                         ; $5376: $ff
	rst  $38                                         ; $5377: $ff
	ld   [hl], l                                     ; $5378: $75
	sub  b                                           ; $5379: $90
	sbc  [hl]                                        ; $537a: $9e
	ld   [bc], a                                     ; $537b: $02
	reti                                             ; $537c: $d9


	ld   [bc], a                                     ; $537d: $02
	ld   h, e                                        ; $537e: $63
	and  b                                           ; $537f: $a0
	inc  bc                                          ; $5380: $03
	add  b                                           ; $5381: $80
	ld   l, c                                        ; $5382: $69
	ld   l, l                                        ; $5383: $6d
	dec  c                                           ; $5384: $0d
	ld   a, h                                        ; $5385: $7c
	ld   a, l                                        ; $5386: $7d
	sbc  [hl]                                        ; $5387: $9e
	ld   [$5d00], sp                                 ; $5388: $08 $00 $5d
	and  c                                           ; $538b: $a1
	ld   e, d                                        ; $538c: $5a
	dec  c                                           ; $538d: $0d
	ld   e, d                                        ; $538e: $5a
	and  c                                           ; $538f: $a1
	ld   a, [hl]                                     ; $5390: $7e
	ld   [hl], c                                     ; $5391: $71
	ld   l, l                                        ; $5392: $6d
	ld   e, c                                        ; $5393: $59
	sub  a                                           ; $5394: $97
	sub  [hl]                                        ; $5395: $96
	sbc  a                                           ; $5396: $9f
	dec  c                                           ; $5397: $0d
	nop                                              ; $5398: $00
	ld   a, [bc]                                     ; $5399: $0a
	ld   bc, $9403                                   ; $539a: $01 $03 $94
	ld   [bc], a                                     ; $539d: $02
	ld   hl, sp-$60                                  ; $539e: $f8 $a0
	sub  b                                           ; $53a0: $90
	ld   l, a                                        ; $53a1: $6f
	ld   a, b                                        ; $53a2: $78
	ld   h, e                                        ; $53a3: $63
	ld   d, d                                        ; $53a4: $52
	sbc  a                                           ; $53a5: $9f
	dec  c                                           ; $53a6: $0d
	ld   l, e                                        ; $53a7: $6b
	sbc  d                                           ; $53a8: $9a
	ld   h, [hl]                                     ; $53a9: $66
	sub  c                                           ; $53aa: $91
	sbc  a                                           ; $53ab: $9f
	dec  c                                           ; $53ac: $0d
	nop                                              ; $53ad: $00
	ld   a, [bc]                                     ; $53ae: $0a
	dec  c                                           ; $53af: $0d
	nop                                              ; $53b0: $00
	nop                                              ; $53b1: $00
	rrca                                             ; $53b2: $0f
	nop                                              ; $53b3: $00
	ld   bc, $1e09                                   ; $53b4: $01 $09 $1e
	nop                                              ; $53b7: $00
	inc  c                                           ; $53b8: $0c
	ld   [bc], a                                     ; $53b9: $02
	ld   c, $31                                      ; $53ba: $0e $31
	rrca                                             ; $53bc: $0f
	nop                                              ; $53bd: $00
	ld   bc, $ff01                                   ; $53be: $01 $01 $ff
	rst  $38                                         ; $53c1: $ff
	add  e                                           ; $53c2: $83
	ld   d, h                                        ; $53c3: $54
	rst  $38                                         ; $53c4: $ff
	rst  $38                                         ; $53c5: $ff
	dec  c                                           ; $53c6: $0d
	ld   [bc], a                                     ; $53c7: $02
	and  l                                           ; $53c8: $a5
	inc  b                                           ; $53c9: $04
	xor  d                                           ; $53ca: $aa
	ld   a, h                                        ; $53cb: $7c
	rst  ToBoot                                         ; $53cc: $c7
	cp   d                                           ; $53cd: $ba
	ret                                              ; $53ce: $c9


	ld   a, l                                        ; $53cf: $7d
	dec  c                                           ; $53d0: $0d
	ld   e, e                                        ; $53d1: $5b
	and  c                                           ; $53d2: $a1
	ld   l, a                                        ; $53d3: $6f
	sub  l                                           ; $53d4: $95
	ld   d, h                                        ; $53d5: $54
	ld   h, l                                        ; $53d6: $65
	ld   l, l                                        ; $53d7: $6d
	ld   a, b                                        ; $53d8: $78
	ld   d, b                                        ; $53d9: $50
	rst  $38                                         ; $53da: $ff
	rst  $38                                         ; $53db: $ff
	dec  c                                           ; $53dc: $0d
	nop                                              ; $53dd: $00
	ld   a, [bc]                                     ; $53de: $0a
	inc  e                                           ; $53df: $1c
	inc  b                                           ; $53e0: $04
	nop                                              ; $53e1: $00
	nop                                              ; $53e2: $00
	ld   bc, $7258                                   ; $53e3: $01 $58 $72
	ld   e, c                                        ; $53e6: $59
	sbc  d                                           ; $53e7: $9a
	ld   h, e                                        ; $53e8: $63
	adc  h                                           ; $53e9: $8c
	ld   [hl], c                                     ; $53ea: $71
	ld   a, [$0dfa]                                  ; $53eb: $fa $fa $0d
	ld   l, a                                        ; $53ee: $6f
	ld   d, d                                        ; $53ef: $52
	ld   [bc], a                                     ; $53f0: $02
	inc  de                                          ; $53f1: $13
	ld   l, a                                        ; $53f2: $6f
	sub  c                                           ; $53f3: $91
	and  c                                           ; $53f4: $a1
	ld   a, [$0dfa]                                  ; $53f5: $fa $fa $0d
	nop                                              ; $53f8: $00
	ld   a, [bc]                                     ; $53f9: $0a
	rrca                                             ; $53fa: $0f
	nop                                              ; $53fb: $00
	ld   bc, $5001                                   ; $53fc: $01 $01 $50
	ld   [hl], c                                     ; $53ff: $71
	sbc  [hl]                                        ; $5400: $9e
	and  e                                           ; $5401: $a3
	and  l                                           ; $5402: $a5
	db   $ec                                         ; $5403: $ec
	cp   d                                           ; $5404: $ba
	rst  $38                                         ; $5405: $ff
	dec  c                                           ; $5406: $0d
	nop                                              ; $5407: $00
	ld   a, [bc]                                     ; $5408: $0a
	inc  e                                           ; $5409: $1c
	inc  b                                           ; $540a: $04
	ld   bc, $0101                                   ; $540b: $01 $01 $01
	rst  ToBoot                                         ; $540e: $c7
	cp   d                                           ; $540f: $ba
	ret                                              ; $5410: $c9


	sbc  [hl]                                        ; $5411: $9e
	ld   d, d                                        ; $5412: $52
	ld   d, d                                        ; $5413: $52
	ld   e, a                                        ; $5414: $5f
	ld   [hl], c                                     ; $5415: $71
	ld   e, c                                        ; $5416: $59
	ld   l, [hl]                                     ; $5417: $6e
	ld   [hl], c                                     ; $5418: $71
	ld   l, l                                        ; $5419: $6d
	dec  c                                           ; $541a: $0d
	adc  l                                           ; $541b: $8d
	ld   l, l                                        ; $541c: $6d
	ld   d, d                                        ; $541d: $52
	ld   l, [hl]                                     ; $541e: $6e
	ld   a, e                                        ; $541f: $7b
	ei                                               ; $5420: $fb
	sbc  a                                           ; $5421: $9f
	dec  c                                           ; $5422: $0d
	nop                                              ; $5423: $00
	ld   a, [bc]                                     ; $5424: $0a
	ld   bc, $a15a                                   ; $5425: $01 $5a $a1
	ld   a, [hl]                                     ; $5428: $7e
	ld   [hl], c                                     ; $5429: $71
	ld   l, l                                        ; $542a: $6d
	and  c                                           ; $542b: $a1
	ld   l, [hl]                                     ; $542c: $6e
	ld   a, e                                        ; $542d: $7b
	ld   a, [$0dfa]                                  ; $542e: $fa $fa $0d
	ld   l, a                                        ; $5431: $6f
	ld   d, d                                        ; $5432: $52
	ld   [bc], a                                     ; $5433: $02
	inc  de                                          ; $5434: $13
	ld   l, a                                        ; $5435: $6f
	sub  c                                           ; $5436: $91
	and  c                                           ; $5437: $a1
	ld   a, [$0dfa]                                  ; $5438: $fa $fa $0d
	nop                                              ; $543b: $00
	ld   a, [bc]                                     ; $543c: $0a
	rrca                                             ; $543d: $0f
	nop                                              ; $543e: $00
	ld   bc, $5001                                   ; $543f: $01 $01 $50
	sbc  b                                           ; $5442: $98
	ld   e, d                                        ; $5443: $5a
	halt                                             ; $5444: $76
	ld   d, h                                        ; $5445: $54
	sbc  [hl]                                        ; $5446: $9e
	and  e                                           ; $5447: $a3
	and  l                                           ; $5448: $a5
	db   $ec                                         ; $5449: $ec
	cp   d                                           ; $544a: $ba
	sbc  a                                           ; $544b: $9f
	dec  c                                           ; $544c: $0d
	ld   h, c                                        ; $544d: $61
	sbc  d                                           ; $544e: $9a
	sub  b                                           ; $544f: $90
	sbc  [hl]                                        ; $5450: $9e
	and  e                                           ; $5451: $a3
	and  l                                           ; $5452: $a5
	db   $ec                                         ; $5453: $ec
	cp   d                                           ; $5454: $ba
	ld   a, h                                        ; $5455: $7c
	inc  bc                                          ; $5456: $03
	ld   l, l                                        ; $5457: $6d
	dec  b                                           ; $5458: $05
	add  hl, de                                      ; $5459: $19
	ld   a, h                                        ; $545a: $7c
	dec  c                                           ; $545b: $0d
	ld   e, b                                        ; $545c: $58
	ld   e, c                                        ; $545d: $59
	ld   h, b                                        ; $545e: $60
	ld   l, [hl]                                     ; $545f: $6e
	sub  [hl]                                        ; $5460: $96
	sbc  a                                           ; $5461: $9f
	dec  c                                           ; $5462: $0d
	nop                                              ; $5463: $00
	ld   a, [bc]                                     ; $5464: $0a
	inc  e                                           ; $5465: $1c
	inc  b                                           ; $5466: $04
	dec  b                                           ; $5467: $05
	dec  b                                           ; $5468: $05
	dec  e                                           ; $5469: $1d
	ld   b, b                                        ; $546a: $40
	inc  d                                           ; $546b: $14
	inc  bc                                          ; $546c: $03
	inc  d                                           ; $546d: $14
	ld   bc, $2803                                   ; $546e: $01 $03 $28
	nop                                              ; $5471: $00
	ld   bc, $d9a9                                   ; $5472: $01 $a9 $d9
	reti                                             ; $5475: $d9


	rst  $38                                         ; $5476: $ff
	rst  $38                                         ; $5477: $ff
	dec  c                                           ; $5478: $0d
	ld   l, a                                        ; $5479: $6f
	ld   d, d                                        ; $547a: $52
	ld   [bc], a                                     ; $547b: $02
	inc  de                                          ; $547c: $13
	ld   l, a                                        ; $547d: $6f
	sub  c                                           ; $547e: $91
	and  c                                           ; $547f: $a1
	ld   e, d                                        ; $5480: $5a
	sbc  [hl]                                        ; $5481: $9e
	ld   e, d                                        ; $5482: $5a
	and  c                                           ; $5483: $a1
	ld   a, [hl]                                     ; $5484: $7e
	ld   [hl], c                                     ; $5485: $71
	ld   l, l                                        ; $5486: $6d
	dec  c                                           ; $5487: $0d
	ld   e, c                                        ; $5488: $59
	sub  a                                           ; $5489: $97
	ld   l, [hl]                                     ; $548a: $6e
	sub  [hl]                                        ; $548b: $96
	ld   d, a                                        ; $548c: $57
	db   $fc                                         ; $548d: $fc
	sbc  a                                           ; $548e: $9f
	dec  c                                           ; $548f: $0d
	nop                                              ; $5490: $00
	ld   a, [bc]                                     ; $5491: $0a
	ld   bc, $9a6b                                   ; $5492: $01 $6b $9a
	ld   h, [hl]                                     ; $5495: $66
	sub  c                                           ; $5496: $91
	rst  $38                                         ; $5497: $ff
	rst  $38                                         ; $5498: $ff
	dec  c                                           ; $5499: $0d
	ld   h, c                                        ; $549a: $61
	sbc  d                                           ; $549b: $9a
	ld   e, c                                        ; $549c: $59
	sub  a                                           ; $549d: $97
	sub  b                                           ; $549e: $90
	sbc  [hl]                                        ; $549f: $9e
	ld   e, d                                        ; $54a0: $5a
	and  c                                           ; $54a1: $a1
	ld   a, [hl]                                     ; $54a2: $7e
	ld   [hl], c                                     ; $54a3: $71
	ld   [hl], h                                     ; $54a4: $74
	ld   a, e                                        ; $54a5: $7b
	ld   a, [$6f0d]                                  ; $54a6: $fa $0d $6f
	ld   d, d                                        ; $54a9: $52
	ld   [bc], a                                     ; $54aa: $02
	inc  de                                          ; $54ab: $13
	ld   l, a                                        ; $54ac: $6f
	sub  c                                           ; $54ad: $91
	and  c                                           ; $54ae: $a1
	ld   a, [$0dfa]                                  ; $54af: $fa $fa $0d
	nop                                              ; $54b2: $00
	ld   a, [bc]                                     ; $54b3: $0a
	dec  c                                           ; $54b4: $0d
	nop                                              ; $54b5: $00
	nop                                              ; $54b6: $00
	rrca                                             ; $54b7: $0f
	nop                                              ; $54b8: $00
	ld   bc, $1e09                                   ; $54b9: $01 $09 $1e
	nop                                              ; $54bc: $00
	inc  c                                           ; $54bd: $0c
	ld   [bc], a                                     ; $54be: $02
	ld   c, $3f                                      ; $54bf: $0e $3f
	rrca                                             ; $54c1: $0f
	nop                                              ; $54c2: $00
	ld   bc, $ff01                                   ; $54c3: $01 $01 $ff
	rst  $38                                         ; $54c6: $ff
	add  e                                           ; $54c7: $83
	ld   d, h                                        ; $54c8: $54
	rst  $38                                         ; $54c9: $ff
	rst  $38                                         ; $54ca: $ff
	dec  c                                           ; $54cb: $0d
	ld   [bc], a                                     ; $54cc: $02
	and  l                                           ; $54cd: $a5
	inc  b                                           ; $54ce: $04
	xor  d                                           ; $54cf: $aa
	ld   a, h                                        ; $54d0: $7c
	rst  ToBoot                                         ; $54d1: $c7
	cp   d                                           ; $54d2: $ba
	ret                                              ; $54d3: $c9


	ld   a, l                                        ; $54d4: $7d
	dec  c                                           ; $54d5: $0d
	ld   e, e                                        ; $54d6: $5b
	and  c                                           ; $54d7: $a1
	ld   l, a                                        ; $54d8: $6f
	sub  l                                           ; $54d9: $95
	ld   d, h                                        ; $54da: $54
	ld   h, l                                        ; $54db: $65
	ld   l, l                                        ; $54dc: $6d
	ld   a, b                                        ; $54dd: $78
	ld   d, b                                        ; $54de: $50
	rst  $38                                         ; $54df: $ff
	rst  $38                                         ; $54e0: $ff
	dec  c                                           ; $54e1: $0d
	nop                                              ; $54e2: $00
	ld   a, [bc]                                     ; $54e3: $0a
	inc  e                                           ; $54e4: $1c
	dec  b                                           ; $54e5: $05
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	ld   bc, $0458                                   ; $54e8: $01 $58 $04
	ld   a, e                                        ; $54eb: $7b
	sbc  d                                           ; $54ec: $9a
	ld   h, e                                        ; $54ed: $63
	and  c                                           ; $54ee: $a1
	ld   [hl], l                                     ; $54ef: $75
	ld   h, l                                        ; $54f0: $65
	ld   l, l                                        ; $54f1: $6d
	sbc  a                                           ; $54f2: $9f
	dec  c                                           ; $54f3: $0d
	ld   [$7d00], sp                                 ; $54f4: $08 $00 $7d
	and  c                                           ; $54f7: $a1
	sbc  a                                           ; $54f8: $9f
	dec  c                                           ; $54f9: $0d
	nop                                              ; $54fa: $00
	ld   a, [bc]                                     ; $54fb: $0a
	rrca                                             ; $54fc: $0f
	nop                                              ; $54fd: $00
	ld   bc, $5001                                   ; $54fe: $01 $01 $50
	ld   [hl], c                                     ; $5501: $71
	sbc  [hl]                                        ; $5502: $9e
	ld   [bc], a                                     ; $5503: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5504: $cf
	dec  b                                           ; $5505: $05
	ld   a, [de]                                     ; $5506: $1a
	ld   h, e                                        ; $5507: $63
	and  c                                           ; $5508: $a1
	rst  $38                                         ; $5509: $ff
	rst  $38                                         ; $550a: $ff
	dec  c                                           ; $550b: $0d
	nop                                              ; $550c: $00
	ld   a, [bc]                                     ; $550d: $0a
	inc  e                                           ; $550e: $1c
	dec  b                                           ; $550f: $05
	ld   bc, $0101                                   ; $5510: $01 $01 $01
	rst  ToBoot                                         ; $5513: $c7
	cp   d                                           ; $5514: $ba
	ret                                              ; $5515: $c9


	sbc  [hl]                                        ; $5516: $9e
	ld   d, [hl]                                     ; $5517: $56
	ld   d, [hl]                                     ; $5518: $56
	ld   [bc], a                                     ; $5519: $02
	reti                                             ; $551a: $d9


	ld   [bc], a                                     ; $551b: $02
	ld   h, e                                        ; $551c: $63
	sub  d                                           ; $551d: $92
	ld   [hl], c                                     ; $551e: $71
	ld   l, l                                        ; $551f: $6d
	dec  c                                           ; $5520: $0d
	adc  l                                           ; $5521: $8d
	ld   l, l                                        ; $5522: $6d
	ld   d, d                                        ; $5523: $52
	sub  d                                           ; $5524: $92
	ld   a, b                                        ; $5525: $78
	ei                                               ; $5526: $fb
	sbc  a                                           ; $5527: $9f
	dec  c                                           ; $5528: $0d
	nop                                              ; $5529: $00
	ld   a, [bc]                                     ; $552a: $0a
	ld   bc, $5965                                   ; $552b: $01 $65 $59
	sub  b                                           ; $552e: $90
	sbc  [hl]                                        ; $552f: $9e
	and  a                                           ; $5530: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $5531: $c2 $7c $02

	jr   c, jr_048_553a                              ; $5534: $38 $04

	ld   d, d                                        ; $5536: $52
	ld   [hl], l                                     ; $5537: $75
	dec  c                                           ; $5538: $0d
	rst  ToBoot                                         ; $5539: $c7

jr_048_553a:
	cp   d                                           ; $553a: $ba
	ret                                              ; $553b: $c9


	ld   h, l                                        ; $553c: $65
	ld   l, l                                        ; $553d: $6d
	and  c                                           ; $553e: $a1
	sub  d                                           ; $553f: $92
	ld   [hl], h                                     ; $5540: $74
	ld   sp, hl                                      ; $5541: $f9
	dec  c                                           ; $5542: $0d
	inc  b                                           ; $5543: $04
	ld   c, $03                                      ; $5544: $0e $03
	sub  b                                           ; $5546: $90
	ld   a, l                                        ; $5547: $7d
	and  c                                           ; $5548: $a1
	ld   a, c                                        ; $5549: $79
	ld   [bc], a                                     ; $554a: $02
	jp   nz, $6d52                                   ; $554b: $c2 $52 $6d

	ld   [hl], l                                     ; $554e: $75
	db   $fc                                         ; $554f: $fc
	sbc  a                                           ; $5550: $9f
	dec  c                                           ; $5551: $0d
	nop                                              ; $5552: $00
	ld   a, [bc]                                     ; $5553: $0a
	rrca                                             ; $5554: $0f
	nop                                              ; $5555: $00
	ld   bc, $7d01                                   ; $5556: $01 $01 $7d
	ld   d, d                                        ; $5559: $52
	sbc  [hl]                                        ; $555a: $9e
	ld   d, b                                        ; $555b: $50
	sbc  b                                           ; $555c: $98
	ld   e, d                                        ; $555d: $5a
	halt                                             ; $555e: $76
	ld   d, h                                        ; $555f: $54
	ld   h, d                                        ; $5560: $62
	ld   h, h                                        ; $5561: $64
	ld   d, d                                        ; $5562: $52
	adc  h                                           ; $5563: $8c
	ld   h, a                                        ; $5564: $67
	ld   a, [$610d]                                  ; $5565: $fa $0d $61
	sbc  d                                           ; $5568: $9a
	sub  b                                           ; $5569: $90
	sbc  [hl]                                        ; $556a: $9e
	ld   [bc], a                                     ; $556b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $556c: $cf
	dec  b                                           ; $556d: $05
	ld   a, [de]                                     ; $556e: $1a
	ld   h, e                                        ; $556f: $63
	and  c                                           ; $5570: $a1
	ld   a, h                                        ; $5571: $7c
	inc  bc                                          ; $5572: $03
	ld   l, l                                        ; $5573: $6d
	dec  b                                           ; $5574: $05
	add  hl, de                                      ; $5575: $19
	ld   a, h                                        ; $5576: $7c
	dec  c                                           ; $5577: $0d
	ld   e, b                                        ; $5578: $58
	ld   e, c                                        ; $5579: $59
	ld   h, b                                        ; $557a: $60
	ld   [hl], l                                     ; $557b: $75
	ld   h, a                                        ; $557c: $67
	sub  [hl]                                        ; $557d: $96
	sbc  a                                           ; $557e: $9f
	dec  c                                           ; $557f: $0d
	nop                                              ; $5580: $00
	ld   a, [bc]                                     ; $5581: $0a
	rrca                                             ; $5582: $0f
	dec  b                                           ; $5583: $05
	ld   bc, $8c01                                   ; $5584: $01 $01 $8c
	ld   l, l                                        ; $5587: $6d
	adc  h                                           ; $5588: $8c
	ld   l, l                                        ; $5589: $6d
	db   $fc                                         ; $558a: $fc
	sbc  a                                           ; $558b: $9f
	dec  c                                           ; $558c: $0d
	ld   d, b                                        ; $558d: $50
	and  c                                           ; $558e: $a1
	adc  h                                           ; $558f: $8c
	inc  bc                                          ; $5590: $03
	and  b                                           ; $5591: $a0
	ld   l, a                                        ; $5592: $6f
	inc  bc                                          ; $5593: $03
	ld   h, l                                        ; $5594: $65
	ld   h, b                                        ; $5595: $60
	and  c                                           ; $5596: $a1
	halt                                             ; $5597: $76
	ld   d, d                                        ; $5598: $52
	ld   [hl], h                                     ; $5599: $74
	sub  d                                           ; $559a: $92
	sbc  a                                           ; $559b: $9f
	dec  c                                           ; $559c: $0d
	nop                                              ; $559d: $00
	ld   a, [bc]                                     ; $559e: $0a
	dec  e                                           ; $559f: $1d
	ld   b, b                                        ; $55a0: $40
	dec  d                                           ; $55a1: $15
	inc  bc                                          ; $55a2: $03
	dec  d                                           ; $55a3: $15
	ld   bc, $2803                                   ; $55a4: $01 $03 $28
	nop                                              ; $55a7: $00
	ld   bc, $ffff                                   ; $55a8: $01 $ff $ff
	ld   [hl], l                                     ; $55ab: $75
	sub  b                                           ; $55ac: $90
	sbc  [hl]                                        ; $55ad: $9e
	ld   d, [hl]                                     ; $55ae: $56
	ld   d, [hl]                                     ; $55af: $56
	ld   [bc], a                                     ; $55b0: $02
	reti                                             ; $55b1: $d9


	ld   [bc], a                                     ; $55b2: $02
	ld   h, e                                        ; $55b3: $63
	ld   e, d                                        ; $55b4: $5a
	inc  bc                                          ; $55b5: $03
	add  b                                           ; $55b6: $80
	ld   l, l                                        ; $55b7: $6d
	and  c                                           ; $55b8: $a1
	ld   a, l                                        ; $55b9: $7d
	dec  c                                           ; $55ba: $0d
	sub  d                                           ; $55bb: $92
	ld   [hl], c                                     ; $55bc: $71
	ld   a, a                                        ; $55bd: $7f
	sbc  b                                           ; $55be: $98
	ld   [$7d00], sp                                 ; $55bf: $08 $00 $7d
	and  c                                           ; $55c2: $a1
	ld   e, d                                        ; $55c3: $5a
	dec  c                                           ; $55c4: $0d
	ld   e, d                                        ; $55c5: $5a
	and  c                                           ; $55c6: $a1
	ld   a, [hl]                                     ; $55c7: $7e
	ld   [hl], c                                     ; $55c8: $71
	ld   l, l                                        ; $55c9: $6d
	ld   e, c                                        ; $55ca: $59
	sub  a                                           ; $55cb: $97
	sub  d                                           ; $55cc: $92
	sbc  a                                           ; $55cd: $9f
	dec  c                                           ; $55ce: $0d
	nop                                              ; $55cf: $00
	ld   a, [bc]                                     ; $55d0: $0a
	ld   bc, $7889                                   ; $55d1: $01 $89 $78
	sbc  [hl]                                        ; $55d4: $9e
	ld   h, c                                        ; $55d5: $61
	sbc  d                                           ; $55d6: $9a
	ld   e, c                                        ; $55d7: $59
	sub  a                                           ; $55d8: $97
	sub  b                                           ; $55d9: $90
	sbc  [hl]                                        ; $55da: $9e
	dec  c                                           ; $55db: $0d
	ld   h, c                                        ; $55dc: $61
	ld   a, h                                        ; $55dd: $7c
	inc  bc                                          ; $55de: $03
	cp   $03                                         ; $55df: $fe $03
	add  [hl]                                        ; $55e1: $86
	ld   [hl], l                                     ; $55e2: $75
	ld   e, d                                        ; $55e3: $5a
	and  c                                           ; $55e4: $a1
	ld   a, [hl]                                     ; $55e5: $7e
	ld   [hl], c                                     ; $55e6: $71
	ld   [hl], h                                     ; $55e7: $74
	ld   a, b                                        ; $55e8: $78
	sbc  a                                           ; $55e9: $9f
	dec  c                                           ; $55ea: $0d
	nop                                              ; $55eb: $00
	ld   a, [bc]                                     ; $55ec: $0a
	dec  c                                           ; $55ed: $0d
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
	rrca                                             ; $55f0: $0f
	nop                                              ; $55f1: $00
	ld   bc, $1e09                                   ; $55f2: $01 $09 $1e
	nop                                              ; $55f5: $00
	inc  c                                           ; $55f6: $0c
	ld   [bc], a                                     ; $55f7: $02
	ld   c, $9d                                      ; $55f8: $0e $9d
	rrca                                             ; $55fa: $0f
	nop                                              ; $55fb: $00
	ld   bc, $ff01                                   ; $55fc: $01 $01 $ff
	rst  $38                                         ; $55ff: $ff
	add  e                                           ; $5600: $83
	ld   d, h                                        ; $5601: $54
	rst  $38                                         ; $5602: $ff
	rst  $38                                         ; $5603: $ff
	dec  c                                           ; $5604: $0d
	ld   [bc], a                                     ; $5605: $02
	and  l                                           ; $5606: $a5
	inc  b                                           ; $5607: $04
	xor  d                                           ; $5608: $aa
	ld   a, h                                        ; $5609: $7c
	rst  ToBoot                                         ; $560a: $c7
	cp   d                                           ; $560b: $ba
	ret                                              ; $560c: $c9


	ld   a, l                                        ; $560d: $7d
	dec  c                                           ; $560e: $0d
	ld   e, e                                        ; $560f: $5b
	and  c                                           ; $5610: $a1
	ld   l, a                                        ; $5611: $6f
	sub  l                                           ; $5612: $95
	ld   d, h                                        ; $5613: $54
	ld   h, l                                        ; $5614: $65
	ld   l, l                                        ; $5615: $6d
	ld   a, b                                        ; $5616: $78
	ld   d, b                                        ; $5617: $50
	rst  $38                                         ; $5618: $ff
	rst  $38                                         ; $5619: $ff
	dec  c                                           ; $561a: $0d
	nop                                              ; $561b: $00
	ld   a, [bc]                                     ; $561c: $0a
	inc  e                                           ; $561d: $1c
	ld   b, $00                                      ; $561e: $06 $00
	nop                                              ; $5620: $00
	ld   bc, $5896                                   ; $5621: $01 $96 $58
	ld   [hl], c                                     ; $5624: $71
	sbc  [hl]                                        ; $5625: $9e
	ld   [$fa00], sp                                 ; $5626: $08 $00 $fa
	ld   a, [$580d]                                  ; $5629: $fa $0d $58
	inc  b                                           ; $562c: $04
	ld   a, e                                        ; $562d: $7b
	sbc  d                                           ; $562e: $9a
	ld   h, e                                        ; $562f: $63
	and  c                                           ; $5630: $a1
	sbc  a                                           ; $5631: $9f
	dec  c                                           ; $5632: $0d
	nop                                              ; $5633: $00
	ld   a, [bc]                                     ; $5634: $0a
	rrca                                             ; $5635: $0f
	nop                                              ; $5636: $00
	ld   bc, $5001                                   ; $5637: $01 $01 $50
	ld   [hl], c                                     ; $563a: $71
	sbc  [hl]                                        ; $563b: $9e
	xor  h                                           ; $563c: $ac
	push af                                          ; $563d: $f5
	bit  4, e                                        ; $563e: $cb $63
	and  c                                           ; $5640: $a1
	rst  $38                                         ; $5641: $ff
	rst  $38                                         ; $5642: $ff
	dec  c                                           ; $5643: $0d
	nop                                              ; $5644: $00
	ld   a, [bc]                                     ; $5645: $0a
	inc  e                                           ; $5646: $1c
	ld   b, $07                                      ; $5647: $06 $07
	rlca                                             ; $5649: $07
	ld   bc, $bac7                                   ; $564a: $01 $c7 $ba
	ret                                              ; $564d: $c9


	sbc  [hl]                                        ; $564e: $9e
	ld   d, d                                        ; $564f: $52
	ld   d, d                                        ; $5650: $52
	ld   [bc], a                                     ; $5651: $02
	reti                                             ; $5652: $d9


	ld   [bc], a                                     ; $5653: $02
	ld   h, e                                        ; $5654: $63
	ld   l, [hl]                                     ; $5655: $6e
	ld   [hl], c                                     ; $5656: $71
	ld   l, l                                        ; $5657: $6d
	dec  c                                           ; $5658: $0d
	adc  l                                           ; $5659: $8d
	ld   l, l                                        ; $565a: $6d
	ld   d, d                                        ; $565b: $52
	ld   h, [hl]                                     ; $565c: $66
	sub  c                                           ; $565d: $91
	ld   a, e                                        ; $565e: $7b
	ld   d, [hl]                                     ; $565f: $56
	ld   e, c                                        ; $5660: $59
	sbc  a                                           ; $5661: $9f
	dec  c                                           ; $5662: $0d
	nop                                              ; $5663: $00
	ld   a, [bc]                                     ; $5664: $0a
	inc  e                                           ; $5665: $1c
	ld   b, $01                                      ; $5666: $06 $01
	ld   bc, $6501                                   ; $5668: $01 $01 $65
	ld   e, c                                        ; $566b: $59
	sub  b                                           ; $566c: $90
	sbc  [hl]                                        ; $566d: $9e
	ld   d, b                                        ; $566e: $50
	ld   l, l                                        ; $566f: $6d
	ld   d, d                                        ; $5670: $52
	ld   a, h                                        ; $5671: $7c
	ld   [bc], a                                     ; $5672: $02
	jr   c, jr_048_5679                              ; $5673: $38 $04

	ld   d, d                                        ; $5675: $52
	ld   [hl], l                                     ; $5676: $75
	dec  c                                           ; $5677: $0d
	rst  ToBoot                                         ; $5678: $c7

jr_048_5679:
	cp   d                                           ; $5679: $ba
	ret                                              ; $567a: $c9


	ld   h, l                                        ; $567b: $65
	ld   l, l                                        ; $567c: $6d
	and  c                                           ; $567d: $a1
	ld   l, [hl]                                     ; $567e: $6e
	ld   [hl], c                                     ; $567f: $71
	ld   [hl], h                                     ; $5680: $74
	ld   sp, hl                                      ; $5681: $f9
	dec  c                                           ; $5682: $0d
	inc  b                                           ; $5683: $04
	ld   a, [bc]                                     ; $5684: $0a
	inc  bc                                          ; $5685: $03
	jp   nc, $0279                                   ; $5686: $d2 $79 $02

	jp   nz, $6d52                                   ; $5689: $c2 $52 $6d

	ld   l, d                                        ; $568c: $6a
	sbc  a                                           ; $568d: $9f
	dec  c                                           ; $568e: $0d
	nop                                              ; $568f: $00
	ld   a, [bc]                                     ; $5690: $0a
	rrca                                             ; $5691: $0f
	nop                                              ; $5692: $00
	ld   bc, $7d01                                   ; $5693: $01 $01 $7d
	ld   d, d                                        ; $5696: $52
	sbc  [hl]                                        ; $5697: $9e
	ld   d, b                                        ; $5698: $50
	sbc  b                                           ; $5699: $98
	ld   e, d                                        ; $569a: $5a
	halt                                             ; $569b: $76
	ld   d, h                                        ; $569c: $54
	ld   h, d                                        ; $569d: $62
	ld   h, h                                        ; $569e: $64
	ld   d, d                                        ; $569f: $52
	adc  h                                           ; $56a0: $8c
	ld   h, a                                        ; $56a1: $67
	ld   a, [$610d]                                  ; $56a2: $fa $0d $61
	sbc  d                                           ; $56a5: $9a
	sub  b                                           ; $56a6: $90
	xor  h                                           ; $56a7: $ac
	push af                                          ; $56a8: $f5
	bit  4, e                                        ; $56a9: $cb $63
	and  c                                           ; $56ab: $a1
	ld   a, h                                        ; $56ac: $7c
	inc  bc                                          ; $56ad: $03
	ld   l, l                                        ; $56ae: $6d
	dec  b                                           ; $56af: $05
	add  hl, de                                      ; $56b0: $19
	ld   a, h                                        ; $56b1: $7c
	dec  c                                           ; $56b2: $0d
	ld   e, b                                        ; $56b3: $58
	ld   e, c                                        ; $56b4: $59
	ld   h, b                                        ; $56b5: $60
	ld   [hl], l                                     ; $56b6: $75
	ld   h, a                                        ; $56b7: $67
	sbc  a                                           ; $56b8: $9f
	dec  c                                           ; $56b9: $0d
	nop                                              ; $56ba: $00
	ld   a, [bc]                                     ; $56bb: $0a
	inc  e                                           ; $56bc: $1c
	ld   b, $04                                      ; $56bd: $06 $04
	inc  b                                           ; $56bf: $04
	dec  e                                           ; $56c0: $1d
	ld   b, b                                        ; $56c1: $40
	ld   d, $03                                      ; $56c2: $16 $03
	ld   d, $01                                      ; $56c4: $16 $01
	inc  bc                                          ; $56c6: $03
	jr   z, jr_048_56c9                              ; $56c7: $28 $00

jr_048_56c9:
	ld   bc, $8686                                   ; $56c9: $01 $86 $86
	rst  $38                                         ; $56cc: $ff
	rst  $38                                         ; $56cd: $ff
	ld   d, h                                        ; $56ce: $54
	sbc  d                                           ; $56cf: $9a
	ld   h, l                                        ; $56d0: $65
	ld   d, d                                        ; $56d1: $52
	ld   h, c                                        ; $56d2: $61
	halt                                             ; $56d3: $76
	ld   [bc], a                                     ; $56d4: $02
	sbc  l                                           ; $56d5: $9d
	ld   [hl], c                                     ; $56d6: $71
	ld   [hl], h                                     ; $56d7: $74
	dec  c                                           ; $56d8: $0d
	ld   e, l                                        ; $56d9: $5d
	sbc  d                                           ; $56da: $9a
	sbc  c                                           ; $56db: $99
	ld   h, [hl]                                     ; $56dc: $66
	sub  c                                           ; $56dd: $91
	ld   a, e                                        ; $56de: $7b
	ld   d, [hl]                                     ; $56df: $56
	ld   e, c                                        ; $56e0: $59
	sbc  a                                           ; $56e1: $9f
	dec  c                                           ; $56e2: $0d
	nop                                              ; $56e3: $00
	ld   a, [bc]                                     ; $56e4: $0a
	inc  e                                           ; $56e5: $1c
	ld   b, $01                                      ; $56e6: $06 $01
	ld   bc, $7501                                   ; $56e8: $01 $01 $75
	sub  b                                           ; $56eb: $90
	ld   a, b                                        ; $56ec: $78
	rst  $38                                         ; $56ed: $ff
	rst  $38                                         ; $56ee: $ff
	ld   e, b                                        ; $56ef: $58
	inc  bc                                          ; $56f0: $03
	ld   c, a                                        ; $56f1: $4f
	ld   a, h                                        ; $56f2: $7c
	ld   e, d                                        ; $56f3: $5a
	and  c                                           ; $56f4: $a1
	ld   a, [hl]                                     ; $56f5: $7e
	sbc  b                                           ; $56f6: $98
	dec  c                                           ; $56f7: $0d
	ld   l, [hl]                                     ; $56f8: $6e
	ld   [hl], c                                     ; $56f9: $71
	ld   [hl], h                                     ; $56fa: $74
	sbc  [hl]                                        ; $56fb: $9e
	ld   d, b                                        ; $56fc: $50
	ld   l, l                                        ; $56fd: $6d
	ld   d, d                                        ; $56fe: $52
	ld   a, l                                        ; $56ff: $7d
	ld   l, a                                        ; $5700: $6f
	sub  c                                           ; $5701: $91
	and  c                                           ; $5702: $a1
	halt                                             ; $5703: $76
	dec  c                                           ; $5704: $0d
	inc  b                                           ; $5705: $04
	ld   d, a                                        ; $5706: $57
	dec  b                                           ; $5707: $05
	add  hl, hl                                      ; $5708: $29
	ld   h, l                                        ; $5709: $65
	ld   [hl], h                                     ; $570a: $74
	sbc  c                                           ; $570b: $99
	ld   l, d                                        ; $570c: $6a
	sbc  a                                           ; $570d: $9f
	dec  c                                           ; $570e: $0d
	nop                                              ; $570f: $00
	ld   a, [bc]                                     ; $5710: $0a
	ld   bc, $9a6b                                   ; $5711: $01 $6b $9a
	ld   h, [hl]                                     ; $5714: $66
	sub  c                                           ; $5715: $91
	sbc  [hl]                                        ; $5716: $9e
	ld   h, c                                        ; $5717: $61
	sbc  d                                           ; $5718: $9a
	ld   e, c                                        ; $5719: $59
	sub  a                                           ; $571a: $97
	sub  b                                           ; $571b: $90
	dec  c                                           ; $571c: $0d
	ld   h, c                                        ; $571d: $61
	ld   a, h                                        ; $571e: $7c
	inc  bc                                          ; $571f: $03
	cp   $03                                         ; $5720: $fe $03
	add  [hl]                                        ; $5722: $86
	ld   [hl], l                                     ; $5723: $75
	ld   e, d                                        ; $5724: $5a
	and  c                                           ; $5725: $a1
	ld   a, [hl]                                     ; $5726: $7e
	sbc  d                                           ; $5727: $9a
	sub  [hl]                                        ; $5728: $96
	ld   a, [$0dfa]                                  ; $5729: $fa $fa $0d
	nop                                              ; $572c: $00
	ld   a, [bc]                                     ; $572d: $0a
	dec  c                                           ; $572e: $0d
	nop                                              ; $572f: $00
	nop                                              ; $5730: $00
	rrca                                             ; $5731: $0f
	nop                                              ; $5732: $00
	ld   bc, $1e09                                   ; $5733: $01 $09 $1e
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	ld   [bc], a                                     ; $5738: $02
	nop                                              ; $5739: $00
	ld   bc, $2c07                                   ; $573a: $01 $07 $2c
	ld   bc, $2502                                   ; $573d: $01 $02 $25
	ld   [bc], a                                     ; $5740: $02
	ld   b, $01                                      ; $5741: $06 $01
	nop                                              ; $5743: $00
	jr   nz, jr_048_5762                             ; $5744: $20 $1c

	nop                                              ; $5746: $00
	ld   c, $01                                      ; $5747: $0e $01
	rrca                                             ; $5749: $0f
	nop                                              ; $574a: $00
	ld   bc, $0102                                   ; $574b: $01 $02 $01
	ld   [bc], a                                     ; $574e: $02
	and  l                                           ; $574f: $a5
	inc  b                                           ; $5750: $04
	xor  d                                           ; $5751: $aa
	ld   a, h                                        ; $5752: $7c
	ld   [bc], a                                     ; $5753: $02
	or   d                                           ; $5754: $b2
	ld   [bc], a                                     ; $5755: $02
	xor  d                                           ; $5756: $aa
	ld   a, h                                        ; $5757: $7c
	inc  bc                                          ; $5758: $03
	ld   l, l                                        ; $5759: $6d
	dec  b                                           ; $575a: $05
	add  hl, de                                      ; $575b: $19
	ld   a, l                                        ; $575c: $7d
	dec  c                                           ; $575d: $0d
	inc  bc                                          ; $575e: $03
	and  a                                           ; $575f: $a7
	adc  [hl]                                        ; $5760: $8e
	halt                                             ; $5761: $76

jr_048_5762:
	ld   h, a                                        ; $5762: $67
	sbc  c                                           ; $5763: $99
	ld   e, c                                        ; $5764: $59
	rst  $38                                         ; $5765: $ff
	rst  $38                                         ; $5766: $ff
	dec  c                                           ; $5767: $0d
	nop                                              ; $5768: $00
	ld   a, [bc]                                     ; $5769: $0a
	inc  c                                           ; $576a: $0c
	ld   [bc], a                                     ; $576b: $02
	dec  h                                           ; $576c: $25
	nop                                              ; $576d: $00
	ld   c, $02                                      ; $576e: $0e $02
	rrca                                             ; $5770: $0f
	nop                                              ; $5771: $00
	ld   bc, $5401                                   ; $5772: $01 $01 $54
	db   $fc                                         ; $5775: $fc
	and  c                                           ; $5776: $a1
	sub  [hl]                                        ; $5777: $96
	ld   e, l                                        ; $5778: $5d
	inc  b                                           ; $5779: $04
	ld   b, d                                        ; $577a: $42
	ld   l, l                                        ; $577b: $6d
	rst  $38                                         ; $577c: $ff
	rst  $38                                         ; $577d: $ff
	dec  c                                           ; $577e: $0d
	ld   e, c                                        ; $577f: $59
	ld   a, b                                        ; $5780: $78
	sbc  b                                           ; $5781: $98
	inc  b                                           ; $5782: $04
	dec  c                                           ; $5783: $0d
	ld   e, d                                        ; $5784: $5a
	dec  b                                           ; $5785: $05
	inc  de                                          ; $5786: $13
	ld   a, c                                        ; $5787: $79
	ld   a, b                                        ; $5788: $78
	ld   [hl], c                                     ; $5789: $71
	ld   l, l                                        ; $578a: $6d
	ld   l, h                                        ; $578b: $6c
	sbc  a                                           ; $578c: $9f
	dec  c                                           ; $578d: $0d
	nop                                              ; $578e: $00
	ld   a, [bc]                                     ; $578f: $0a
	add  hl, hl                                      ; $5790: $29
	ld   b, $00                                      ; $5791: $06 $00
	nop                                              ; $5793: $00
	ld   [bc], a                                     ; $5794: $02
	ld   b, $01                                      ; $5795: $06 $01
	ld   b, $20                                      ; $5797: $06 $20
	nop                                              ; $5799: $00
	rrca                                             ; $579a: $0f
	nop                                              ; $579b: $00
	ld   bc, $0706                                   ; $579c: $01 $06 $07
	nop                                              ; $579f: $00
	ld   [bc], a                                     ; $57a0: $02
	rlca                                             ; $57a1: $07
	ldh  a, [c]                                      ; $57a2: $f2
	ld   [$8004], sp                                 ; $57a3: $08 $04 $80
	add  $00                                         ; $57a6: $c6 $00
	ld   c, $6e                                      ; $57a8: $0e $6e
	rlca                                             ; $57aa: $07
	ld   [hl-], a                                    ; $57ab: $32
	ld   [bc], a                                     ; $57ac: $02
	inc  bc                                          ; $57ad: $03
	jr   nz, @+$03                                   ; $57ae: $20 $01

	jr   nz, jr_048_57d5                             ; $57b0: $20 $23

	nop                                              ; $57b2: $00
	rlca                                             ; $57b3: $07
	sbc  a                                           ; $57b4: $9f
	ld   bc, $5303                                   ; $57b5: $01 $03 $53
	ld   [bc], a                                     ; $57b8: $02
	nop                                              ; $57b9: $00
	inc  bc                                          ; $57ba: $03
	ld   c, l                                        ; $57bb: $4d
	add  hl, hl                                      ; $57bc: $29
	add  hl, hl                                      ; $57bd: $29
	ld   bc, $2501                                   ; $57be: $01 $01 $25
	nop                                              ; $57c1: $00
	rlca                                             ; $57c2: $07
	ld   e, b                                        ; $57c3: $58
	nop                                              ; $57c4: $00
	inc  bc                                          ; $57c5: $03
	ld   b, a                                        ; $57c6: $47
	ld   bc, $2000                                   ; $57c7: $01 $00 $20
	nop                                              ; $57ca: $00
	rlca                                             ; $57cb: $07
	ccf                                              ; $57cc: $3f
	dec  b                                           ; $57cd: $05
	inc  bc                                          ; $57ce: $03
	ld   b, a                                        ; $57cf: $47
	ld   bc, $2501                                   ; $57d0: $01 $01 $25
	inc  bc                                          ; $57d3: $03
	ld   b, a                                        ; $57d4: $47

jr_048_57d5:
	ld   bc, $2302                                   ; $57d5: $01 $02 $23
	inc  e                                           ; $57d8: $1c
	nop                                              ; $57d9: $00
	rlca                                             ; $57da: $07
	db   $ec                                         ; $57db: $ec
	dec  b                                           ; $57dc: $05
	inc  bc                                          ; $57dd: $03
	ld   b, a                                        ; $57de: $47
	ld   bc, $2503                                   ; $57df: $01 $03 $25
	inc  bc                                          ; $57e2: $03
	ld   b, a                                        ; $57e3: $47
	ld   bc, $2305                                   ; $57e4: $01 $05 $23
	inc  e                                           ; $57e7: $1c
	nop                                              ; $57e8: $00
	rlca                                             ; $57e9: $07
	sub  c                                           ; $57ea: $91
	rlca                                             ; $57eb: $07
	inc  bc                                          ; $57ec: $03
	ld   b, a                                        ; $57ed: $47
	ld   bc, $2506                                   ; $57ee: $01 $06 $25
	nop                                              ; $57f1: $00
	inc  e                                           ; $57f2: $1c
	ld   b, $00                                      ; $57f3: $06 $00
	nop                                              ; $57f5: $00
	ld   [bc], a                                     ; $57f6: $02
	ld   bc, $5896                                   ; $57f7: $01 $96 $58
	sbc  [hl]                                        ; $57fa: $9e
	ld   [$9f00], sp                                 ; $57fb: $08 $00 $9f
	dec  c                                           ; $57fe: $0d
	ld   [hl], a                                     ; $57ff: $77
	ld   d, h                                        ; $5800: $54
	ld   l, [hl]                                     ; $5801: $6e
	sbc  [hl]                                        ; $5802: $9e
	inc  bc                                          ; $5803: $03
	cp   $03                                         ; $5804: $fe $03
	add  [hl]                                        ; $5806: $86
	ld   a, l                                        ; $5807: $7d
	ld   sp, hl                                      ; $5808: $f9
	dec  c                                           ; $5809: $0d
	ld   l, a                                        ; $580a: $6f
	sub  c                                           ; $580b: $91
	and  c                                           ; $580c: $a1
	halt                                             ; $580d: $76
	db   $e3                                         ; $580e: $e3
	cp   b                                           ; $580f: $b8
	inc  bc                                          ; $5810: $03
	ld   l, d                                        ; $5811: $6a
	ld   [hl], c                                     ; $5812: $71
	ld   [hl], h                                     ; $5813: $74
	sbc  c                                           ; $5814: $99
	ld   e, c                                        ; $5815: $59
	ld   a, [$0df9]                                  ; $5816: $fa $f9 $0d
	nop                                              ; $5819: $00
	ld   a, [bc]                                     ; $581a: $0a
	rrca                                             ; $581b: $0f
	nop                                              ; $581c: $00
	ld   bc, $7d01                                   ; $581d: $01 $01 $7d
	ld   d, d                                        ; $5820: $52
	sbc  [hl]                                        ; $5821: $9e
	inc  bc                                          ; $5822: $03
	ld   l, d                                        ; $5823: $6a
	add  a                                           ; $5824: $87
	ld   [hl], h                                     ; $5825: $74
	adc  h                                           ; $5826: $8c
	ld   h, a                                        ; $5827: $67
	sbc  a                                           ; $5828: $9f
	dec  c                                           ; $5829: $0d
	halt                                             ; $582a: $76
	ld   h, c                                        ; $582b: $61
	sbc  e                                           ; $582c: $9b
	ld   [hl], l                                     ; $582d: $75
	xor  h                                           ; $582e: $ac
	push af                                          ; $582f: $f5
	bit  4, e                                        ; $5830: $cb $63
	and  c                                           ; $5832: $a1
	sbc  [hl]                                        ; $5833: $9e
	ld   e, a                                        ; $5834: $5f
	ld   d, d                                        ; $5835: $52
	ld   h, c                                        ; $5836: $61
	and  b                                           ; $5837: $a0
	dec  c                                           ; $5838: $0d
	ld   [hl], d                                     ; $5839: $72
	ld   e, a                                        ; $583a: $5f
	ld   [hl], h                                     ; $583b: $74
	ld   d, d                                        ; $583c: $52
	ld   l, l                                        ; $583d: $6d
	ld   l, [hl]                                     ; $583e: $6e
	ld   e, e                                        ; $583f: $5b
	ld   l, l                                        ; $5840: $6d
	ld   d, d                                        ; $5841: $52
	ld   a, h                                        ; $5842: $7c
	ld   [hl], l                                     ; $5843: $75
	ld   h, a                                        ; $5844: $67
	ld   e, d                                        ; $5845: $5a
	sbc  a                                           ; $5846: $9f
	dec  c                                           ; $5847: $0d
	nop                                              ; $5848: $00
	ld   a, [bc]                                     ; $5849: $0a
	inc  e                                           ; $584a: $1c
	ld   b, $07                                      ; $584b: $06 $07
	rlca                                             ; $584d: $07
	ld   bc, $5050                                   ; $584e: $01 $50 $50
	sbc  [hl]                                        ; $5851: $9e
	ld   d, d                                        ; $5852: $52
	ld   d, d                                        ; $5853: $52
	ld   l, d                                        ; $5854: $6a
	sbc  a                                           ; $5855: $9f
	dec  c                                           ; $5856: $0d
	nop                                              ; $5857: $00
	inc  e                                           ; $5858: $1c
	ld   b, $00                                      ; $5859: $06 $00
	nop                                              ; $585b: $00
	ld   bc, $6176                                   ; $585c: $01 $76 $61
	sbc  e                                           ; $585f: $9b
	ld   [hl], l                                     ; $5860: $75
	sbc  [hl]                                        ; $5861: $9e
	ld   d, b                                        ; $5862: $50
	ld   l, l                                        ; $5863: $6d
	ld   d, d                                        ; $5864: $52
	halt                                             ; $5865: $76
	ld   a, h                                        ; $5866: $7c
	inc  bc                                          ; $5867: $03
	ld   l, l                                        ; $5868: $6d
	dec  b                                           ; $5869: $05
	add  hl, de                                      ; $586a: $19
	ld   a, l                                        ; $586b: $7d
	dec  c                                           ; $586c: $0d
	ld   [bc], a                                     ; $586d: $02
	and  l                                           ; $586e: $a5
	inc  b                                           ; $586f: $04
	xor  d                                           ; $5870: $aa
	ld   e, d                                        ; $5871: $5a
	ld   a, l                                        ; $5872: $7d
	ld   h, [hl]                                     ; $5873: $66
	adc  a                                           ; $5874: $8f
	ld   [hl], h                                     ; $5875: $74
	ld   l, [hl]                                     ; $5876: $6e
	ld   [hl], c                                     ; $5877: $71
	ld   l, l                                        ; $5878: $6d
	ld   a, b                                        ; $5879: $78
	sbc  a                                           ; $587a: $9f
	dec  c                                           ; $587b: $0d
	nop                                              ; $587c: $00
	ld   a, [bc]                                     ; $587d: $0a
	ld   bc, $6d50                                   ; $587e: $01 $50 $6d
	ld   d, d                                        ; $5881: $52
	ld   a, h                                        ; $5882: $7c
	inc  bc                                          ; $5883: $03
	ld   l, l                                        ; $5884: $6d
	dec  b                                           ; $5885: $05
	add  hl, de                                      ; $5886: $19
	ld   a, l                                        ; $5887: $7d
	sbc  [hl]                                        ; $5888: $9e
	dec  c                                           ; $5889: $0d
	ld   [bc], a                                     ; $588a: $02
	ld   l, e                                        ; $588b: $6b
	dec  b                                           ; $588c: $05
	ld   a, [bc]                                     ; $588d: $0a
	ret                                              ; $588e: $c9


	xor  $fb                                         ; $588f: $ee $fb
	call z, $b1f5                                    ; $5891: $cc $f5 $b1
	ld   l, [hl]                                     ; $5894: $6e
	sbc  a                                           ; $5895: $9f
	dec  c                                           ; $5896: $0d
	ld   l, a                                        ; $5897: $6f
	sub  l                                           ; $5898: $95
	ld   [hl], c                                     ; $5899: $71
	halt                                             ; $589a: $76
	xor  [hl]                                        ; $589b: $ae
	push bc                                          ; $589c: $c5
	and  l                                           ; $589d: $a5
	ld   l, h                                        ; $589e: $6c
	sbc  a                                           ; $589f: $9f

Jump_048_58a0:
	dec  c                                           ; $58a0: $0d
	nop                                              ; $58a1: $00
	ld   a, [bc]                                     ; $58a2: $0a
	ld   bc, $7c61                                   ; $58a3: $01 $61 $7c
	inc  bc                                          ; $58a6: $03
	ld   l, l                                        ; $58a7: $6d
	dec  b                                           ; $58a8: $05
	add  hl, de                                      ; $58a9: $19
	ld   [hl], l                                     ; $58aa: $75
	sbc  [hl]                                        ; $58ab: $9e
	pop  de                                          ; $58ac: $d1
	call nz, $ecc2                                   ; $58ad: $c4 $c2 $ec
	dec  b                                           ; $58b0: $05
	xor  c                                           ; $58b1: $a9
	ld   b, $82                                      ; $58b2: $06 $82
	inc  b                                           ; $58b4: $04
	dec  c                                           ; $58b5: $0d
	dec  b                                           ; $58b6: $05
	ld   a, [bc]                                     ; $58b7: $0a
	dec  c                                           ; $58b8: $0d
	and  b                                           ; $58b9: $a0
	ld   [hl], d                                     ; $58ba: $72
	ld   e, a                                        ; $58bb: $5f
	ld   [hl], h                                     ; $58bc: $74
	sub  b                                           ; $58bd: $90
	sub  a                                           ; $58be: $97
	ld   d, h                                        ; $58bf: $54
	ld   l, d                                        ; $58c0: $6a
	sbc  a                                           ; $58c1: $9f
	dec  c                                           ; $58c2: $0d
	nop                                              ; $58c3: $00
	ld   a, [bc]                                     ; $58c4: $0a
	inc  e                                           ; $58c5: $1c
	ld   b, $07                                      ; $58c6: $06 $07
	rlca                                             ; $58c8: $07
	ld   bc, $9a6b                                   ; $58c9: $01 $6b $9a
	ld   h, [hl]                                     ; $58cc: $66
	sub  c                                           ; $58cd: $91
	sbc  [hl]                                        ; $58ce: $9e
	dec  b                                           ; $58cf: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58d0: $cf
	adc  a                                           ; $58d1: $8f
	sbc  c                                           ; $58d2: $99
	ld   l, h                                        ; $58d3: $6c
	ld   a, [$0dfa]                                  ; $58d4: $fa $fa $0d
	nop                                              ; $58d7: $00
	ld   a, [bc]                                     ; $58d8: $0a
	dec  h                                           ; $58d9: $25
	ld   b, $07                                      ; $58da: $06 $07
	ld   c, d                                        ; $58dc: $4a
	inc  b                                           ; $58dd: $04
	inc  bc                                          ; $58de: $03
	jr   nz, jr_048_58e2                             ; $58df: $20 $01

	nop                                              ; $58e1: $00

jr_048_58e2:
	jr   nz, jr_048_58e4                             ; $58e2: $20 $00

jr_048_58e4:
	inc  e                                           ; $58e4: $1c
	ld   b, $00                                      ; $58e5: $06 $00
	nop                                              ; $58e7: $00
	ld   bc, $0458                                   ; $58e8: $01 $58 $04
	ld   a, e                                        ; $58eb: $7b
	sbc  d                                           ; $58ec: $9a
	ld   h, e                                        ; $58ed: $63
	and  c                                           ; $58ee: $a1
	sbc  a                                           ; $58ef: $9f
	dec  c                                           ; $58f0: $0d
	adc  h                                           ; $58f1: $8c
	sbc  [hl]                                        ; $58f2: $9e
	inc  bc                                          ; $58f3: $03
	inc  c                                           ; $58f4: $0c
	adc  a                                           ; $58f5: $8f
	ld   [hl], h                                     ; $58f6: $74
	ld   a, b                                        ; $58f7: $78
	sub  a                                           ; $58f8: $97
	ld   h, c                                        ; $58f9: $61
	and  c                                           ; $58fa: $a1
	ld   a, b                                        ; $58fb: $78
	dec  c                                           ; $58fc: $0d
	sub  b                                           ; $58fd: $90
	and  c                                           ; $58fe: $a1
	ld   l, [hl]                                     ; $58ff: $6e
	ld   a, b                                        ; $5900: $78
	sbc  a                                           ; $5901: $9f
	dec  c                                           ; $5902: $0d
	nop                                              ; $5903: $00
	ld   a, [bc]                                     ; $5904: $0a
	rrca                                             ; $5905: $0f
	ld   b, $00                                      ; $5906: $06 $00
	ld   bc, $9a6b                                   ; $5908: $01 $6b $9a
	ld   h, [hl]                                     ; $590b: $66
	sub  c                                           ; $590c: $91
	sbc  [hl]                                        ; $590d: $9e
	inc  b                                           ; $590e: $04
	adc  a                                           ; $590f: $8f
	inc  b                                           ; $5910: $04
	xor  d                                           ; $5911: $aa
	ld   a, h                                        ; $5912: $7c
	ld   [bc], a                                     ; $5913: $02
	or   d                                           ; $5914: $b2
	ld   [bc], a                                     ; $5915: $02
	xor  d                                           ; $5916: $aa
	ld   a, h                                        ; $5917: $7c
	inc  bc                                          ; $5918: $03
	ld   l, l                                        ; $5919: $6d
	dec  b                                           ; $591a: $05
	add  hl, de                                      ; $591b: $19
	dec  c                                           ; $591c: $0d
	ld   h, c                                        ; $591d: $61
	sbc  d                                           ; $591e: $9a
	ld   a, c                                        ; $591f: $79
	ld   [hl], h                                     ; $5920: $74
	inc  bc                                          ; $5921: $03
	ld   a, [hl]                                     ; $5922: $7e
	dec  b                                           ; $5923: $05
	nop                                              ; $5924: $00
	ld   a, [$000d]                                  ; $5925: $fa $0d $00
	ld   a, [bc]                                     ; $5928: $0a
	dec  b                                           ; $5929: $05
	ld   b, b                                        ; $592a: $40
	ld   b, a                                        ; $592b: $47
	inc  bc                                          ; $592c: $03
	ld   b, a                                        ; $592d: $47
	ld   bc, $2801                                   ; $592e: $01 $01 $28
	nop                                              ; $5931: $00
	dec  c                                           ; $5932: $0d
	nop                                              ; $5933: $00
	nop                                              ; $5934: $00
	rrca                                             ; $5935: $0f
	nop                                              ; $5936: $00
	ld   bc, $0d00                                   ; $5937: $01 $00 $0d
	ld   b, $02                                      ; $593a: $06 $02
	rrca                                             ; $593c: $0f
	nop                                              ; $593d: $00
	ld   bc, $0102                                   ; $593e: $01 $02 $01
	ld   h, c                                        ; $5941: $61
	and  c                                           ; $5942: $a1
	ld   a, c                                        ; $5943: $79
	ld   l, a                                        ; $5944: $6f
	ld   a, l                                        ; $5945: $7d
	sbc  [hl]                                        ; $5946: $9e
	xor  h                                           ; $5947: $ac
	push af                                          ; $5948: $f5
	bit  4, e                                        ; $5949: $cb $63
	and  c                                           ; $594b: $a1
	sbc  a                                           ; $594c: $9f
	dec  c                                           ; $594d: $0d
	ld   d, b                                        ; $594e: $50
	ld   a, h                                        ; $594f: $7c
	sbc  [hl]                                        ; $5950: $9e
	inc  bc                                          ; $5951: $03
	ld   l, l                                        ; $5952: $6d
	dec  b                                           ; $5953: $05
	add  hl, de                                      ; $5954: $19
	and  b                                           ; $5955: $a0
	ld   e, b                                        ; $5956: $58
	ld   [bc], a                                     ; $5957: $02
	add  b                                           ; $5958: $80
	ld   d, d                                        ; $5959: $52
	ld   h, l                                        ; $595a: $65
	ld   l, l                                        ; $595b: $6d
	ld   d, d                                        ; $595c: $52
	ld   a, h                                        ; $595d: $7c
	dec  c                                           ; $595e: $0d
	nop                                              ; $595f: $00
	dec  b                                           ; $5960: $05
	ld   b, b                                        ; $5961: $40
	ld   d, e                                        ; $5962: $53
	ld   bc, $0000                                   ; $5963: $01 $00 $00
	ld   bc, $6775                                   ; $5966: $01 $75 $67
	ld   e, d                                        ; $5969: $5a
	rst  $38                                         ; $596a: $ff
	rst  $38                                         ; $596b: $ff
	dec  c                                           ; $596c: $0d
	nop                                              ; $596d: $00
	ld   a, [bc]                                     ; $596e: $0a
	inc  e                                           ; $596f: $1c
	ld   b, $02                                      ; $5970: $06 $02
	ld   [bc], a                                     ; $5972: $02
	ld   bc, $ffff                                   ; $5973: $01 $ff $ff
	ld   e, b                                        ; $5976: $58
	ld   d, h                                        ; $5977: $54
	rst  $38                                         ; $5978: $ff
	rst  $38                                         ; $5979: $ff
	dec  c                                           ; $597a: $0d
	ld   l, e                                        ; $597b: $6b
	sbc  d                                           ; $597c: $9a
	ld   h, [hl]                                     ; $597d: $66
	sub  c                                           ; $597e: $91
	sbc  [hl]                                        ; $597f: $9e
	ld   a, l                                        ; $5980: $7d
	ld   h, [hl]                                     ; $5981: $66
	adc  a                                           ; $5982: $8f
	sub  [hl]                                        ; $5983: $96
	ld   d, h                                        ; $5984: $54
	ld   e, c                                        ; $5985: $59
	rst  $38                                         ; $5986: $ff
	rst  $38                                         ; $5987: $ff
	dec  c                                           ; $5988: $0d
	nop                                              ; $5989: $00
	ld   a, [bc]                                     ; $598a: $0a
	dec  h                                           ; $598b: $25
	ld   b, $07                                      ; $598c: $06 $07
	ld   c, d                                        ; $598e: $4a
	inc  b                                           ; $598f: $04
	inc  bc                                          ; $5990: $03
	jr   nz, jr_048_5994                             ; $5991: $20 $01

	nop                                              ; $5993: $00

jr_048_5994:
	jr   nz, jr_048_5996                             ; $5994: $20 $00

jr_048_5996:
	inc  e                                           ; $5996: $1c
	ld   b, $02                                      ; $5997: $06 $02
	ld   [bc], a                                     ; $5999: $02
	ld   bc, $0458                                   ; $599a: $01 $58 $04
	ld   a, e                                        ; $599d: $7b
	sbc  d                                           ; $599e: $9a
	rst  $38                                         ; $599f: $ff
	rst  $38                                         ; $59a0: $ff
	dec  c                                           ; $59a1: $0d
	nop                                              ; $59a2: $00
	ld   a, [bc]                                     ; $59a3: $0a
	dec  c                                           ; $59a4: $0d
	nop                                              ; $59a5: $00
	nop                                              ; $59a6: $00
	rrca                                             ; $59a7: $0f
	nop                                              ; $59a8: $00
	ld   bc, $4005                                   ; $59a9: $01 $05 $40
	ld   b, a                                        ; $59ac: $47
	inc  bc                                          ; $59ad: $03
	ld   b, a                                        ; $59ae: $47
	ld   bc, $2801                                   ; $59af: $01 $01 $28
	nop                                              ; $59b2: $00
	ld   bc, $ffff                                   ; $59b3: $01 $ff $ff
	rst  $38                                         ; $59b6: $ff
	rst  $38                                         ; $59b7: $ff
	xor  h                                           ; $59b8: $ac
	push af                                          ; $59b9: $f5
	bit  4, e                                        ; $59ba: $cb $63
	and  c                                           ; $59bc: $a1
	sbc  [hl]                                        ; $59bd: $9e
	dec  c                                           ; $59be: $0d
	ld   e, e                                        ; $59bf: $5b
	ld   h, b                                        ; $59c0: $60
	and  c                                           ; $59c1: $a1
	ld   [bc], a                                     ; $59c2: $02
	jr   z, @+$54                                    ; $59c3: $28 $52

	ld   l, h                                        ; $59c5: $6c
	rst  $38                                         ; $59c6: $ff
	rst  $38                                         ; $59c7: $ff
	dec  c                                           ; $59c8: $0d
	nop                                              ; $59c9: $00
	ld   a, [bc]                                     ; $59ca: $0a
	nop                                              ; $59cb: $00
	inc  e                                           ; $59cc: $1c
	ld   b, $00                                      ; $59cd: $06 $00
	nop                                              ; $59cf: $00
	ld   [bc], a                                     ; $59d0: $02
	dec  b                                           ; $59d1: $05
	ld   b, b                                        ; $59d2: $40
	ld   d, e                                        ; $59d3: $53
	ld   bc, $0000                                   ; $59d4: $01 $00 $00
	ld   bc, $5896                                   ; $59d7: $01 $96 $58
	sbc  [hl]                                        ; $59da: $9e
	ld   [$9f00], sp                                 ; $59db: $08 $00 $9f
	dec  c                                           ; $59de: $0d
	nop                                              ; $59df: $00
	inc  e                                           ; $59e0: $1c
	ld   b, $05                                      ; $59e1: $06 $05
	dec  b                                           ; $59e3: $05
	ld   bc, $ffff                                   ; $59e4: $01 $ff $ff
	ld   d, b                                        ; $59e7: $50
	sbc  d                                           ; $59e8: $9a
	ld   sp, hl                                      ; $59e9: $f9
	db   $10                                         ; $59ea: $10
	ld   [hl], a                                     ; $59eb: $77
	ld   d, h                                        ; $59ec: $54
	ld   h, l                                        ; $59ed: $65
	ld   l, l                                        ; $59ee: $6d
	and  c                                           ; $59ef: $a1
	ld   l, [hl]                                     ; $59f0: $6e
	ld   sp, hl                                      ; $59f1: $f9
	dec  c                                           ; $59f2: $0d
	ld   [bc], a                                     ; $59f3: $02
	ld   [hl], d                                     ; $59f4: $72
	inc  bc                                          ; $59f5: $03
	dec  bc                                          ; $59f6: $0b
	sbc  l                                           ; $59f7: $9d
	sbc  c                                           ; $59f8: $99
	ld   d, d                                        ; $59f9: $52
	ld   l, d                                        ; $59fa: $6a
	sbc  a                                           ; $59fb: $9f
	dec  c                                           ; $59fc: $0d
	nop                                              ; $59fd: $00
	ld   a, [bc]                                     ; $59fe: $0a
	ld   bc, $6d03                                   ; $59ff: $01 $03 $6d
	dec  b                                           ; $5a02: $05
	add  hl, de                                      ; $5a03: $19
	ld   a, b                                        ; $5a04: $78
	and  c                                           ; $5a05: $a1
	ld   e, c                                        ; $5a06: $59
	ld   h, l                                        ; $5a07: $65
	ld   [hl], h                                     ; $5a08: $74
	inc  b                                           ; $5a09: $04
	ld   c, $03                                      ; $5a0a: $0e $03
	sbc  l                                           ; $5a0c: $9d
	inc  b                                           ; $5a0d: $04
	and  [hl]                                        ; $5a0e: $a6
	ld   a, b                                        ; $5a0f: $78
	ld   a, h                                        ; $5a10: $7c
	ld   e, c                                        ; $5a11: $59
	ld   sp, hl                                      ; $5a12: $f9
	dec  c                                           ; $5a13: $0d
	nop                                              ; $5a14: $00
	ld   a, [bc]                                     ; $5a15: $0a
	jr   jr_048_5a1a                                 ; $5a16: $18 $02

	nop                                              ; $5a18: $00
	inc  bc                                          ; $5a19: $03

jr_048_5a1a:
	and  a                                           ; $5a1a: $a7
	adc  [hl]                                        ; $5a1b: $8e
	nop                                              ; $5a1c: $00
	nop                                              ; $5a1d: $00
	ld   e, d                                        ; $5a1e: $5a
	and  c                                           ; $5a1f: $a1
	ld   a, [hl]                                     ; $5a20: $7e
	sbc  c                                           ; $5a21: $99
	nop                                              ; $5a22: $00
	ld   bc, $9c07                                   ; $5a23: $01 $07 $9c
	ld   [bc], a                                     ; $5a26: $02
	ld   [bc], a                                     ; $5a27: $02
	ld   [bc], a                                     ; $5a28: $02
	ld   bc, $2000                                   ; $5a29: $01 $00 $20
	nop                                              ; $5a2c: $00
	rlca                                             ; $5a2d: $07
	ld   l, [hl]                                     ; $5a2e: $6e
	inc  bc                                          ; $5a2f: $03
	ld   [bc], a                                     ; $5a30: $02
	ld   [bc], a                                     ; $5a31: $02
	ld   bc, $2001                                   ; $5a32: $01 $01 $20
	nop                                              ; $5a35: $00
	rrca                                             ; $5a36: $0f
	nop                                              ; $5a37: $00
	ld   bc, $6701                                   ; $5a38: $01 $01 $67
	adc  l                                           ; $5a3b: $8d
	adc  h                                           ; $5a3c: $8c
	ld   l, c                                        ; $5a3d: $69
	and  c                                           ; $5a3e: $a1
	rst  $38                                         ; $5a3f: $ff
	rst  $38                                         ; $5a40: $ff
	dec  c                                           ; $5a41: $0d
	ld   l, e                                        ; $5a42: $6b
	sbc  d                                           ; $5a43: $9a
	ld   [hl], l                                     ; $5a44: $75
	ld   a, l                                        ; $5a45: $7d
	sbc  [hl]                                        ; $5a46: $9e
	ld   [bc], a                                     ; $5a47: $02
	and  l                                           ; $5a48: $a5
	inc  b                                           ; $5a49: $04
	xor  d                                           ; $5a4a: $aa
	ld   a, h                                        ; $5a4b: $7c
	inc  bc                                          ; $5a4c: $03
	ld   l, l                                        ; $5a4d: $6d
	dec  b                                           ; $5a4e: $05
	add  hl, de                                      ; $5a4f: $19
	ld   a, l                                        ; $5a50: $7d
	dec  c                                           ; $5a51: $0d
	inc  bc                                          ; $5a52: $03
	and  a                                           ; $5a53: $a7
	adc  h                                           ; $5a54: $8c
	ld   l, c                                        ; $5a55: $69
	ld   [hl], h                                     ; $5a56: $74
	ld   d, d                                        ; $5a57: $52
	ld   l, l                                        ; $5a58: $6d
	ld   l, [hl]                                     ; $5a59: $6e
	ld   e, e                                        ; $5a5a: $5b
	adc  h                                           ; $5a5b: $8c
	ld   h, a                                        ; $5a5c: $67
	sbc  a                                           ; $5a5d: $9f
	dec  c                                           ; $5a5e: $0d
	nop                                              ; $5a5f: $00
	ld   a, [bc]                                     ; $5a60: $0a
	inc  e                                           ; $5a61: $1c
	ld   b, $00                                      ; $5a62: $06 $00
	nop                                              ; $5a64: $00
	ld   bc, $9598                                   ; $5a65: $01 $98 $95
	ld   d, h                                        ; $5a68: $54
	ld   e, c                                        ; $5a69: $59
	ld   d, d                                        ; $5a6a: $52
	sbc  a                                           ; $5a6b: $9f
	dec  c                                           ; $5a6c: $0d
	ld   l, e                                        ; $5a6d: $6b
	and  c                                           ; $5a6e: $a1
	ld   h, [hl]                                     ; $5a6f: $66
	sub  c                                           ; $5a70: $91
	sbc  [hl]                                        ; $5a71: $9e
	ld   [bc], a                                     ; $5a72: $02
	and  l                                           ; $5a73: $a5
	inc  b                                           ; $5a74: $04
	xor  d                                           ; $5a75: $aa
	ld   a, h                                        ; $5a76: $7c
	inc  bc                                          ; $5a77: $03
	ld   l, l                                        ; $5a78: $6d
	dec  b                                           ; $5a79: $05
	add  hl, de                                      ; $5a7a: $19
	ld   a, l                                        ; $5a7b: $7d
	dec  c                                           ; $5a7c: $0d
	inc  bc                                          ; $5a7d: $03
	and  a                                           ; $5a7e: $a7
	adc  l                                           ; $5a7f: $8d
	ld   [hl], c                                     ; $5a80: $71
	ld   [hl], h                                     ; $5a81: $74
	ld   h, c                                        ; $5a82: $61
	halt                                             ; $5a83: $76
	ld   a, c                                        ; $5a84: $79
	ld   h, l                                        ; $5a85: $65
	halt                                             ; $5a86: $76
	ld   e, l                                        ; $5a87: $5d
	ld   l, d                                        ; $5a88: $6a
	sbc  a                                           ; $5a89: $9f
	dec  c                                           ; $5a8a: $0d
	nop                                              ; $5a8b: $00
	ld   a, [bc]                                     ; $5a8c: $0a
	inc  e                                           ; $5a8d: $1c
	ld   b, $07                                      ; $5a8e: $06 $07
	rlca                                             ; $5a90: $07
	ld   bc, $916f                                   ; $5a91: $01 $6f $91
	and  c                                           ; $5a94: $a1
	halt                                             ; $5a95: $76
	inc  bc                                          ; $5a96: $03
	and  a                                           ; $5a97: $a7
	and  c                                           ; $5a98: $a1
	ld   [hl], l                                     ; $5a99: $75
	sbc  [hl]                                        ; $5a9a: $9e
	dec  c                                           ; $5a9b: $0d
	ld   h, l                                        ; $5a9c: $65
	ld   [hl], c                                     ; $5a9d: $71
	ld   e, c                                        ; $5a9e: $59
	sbc  b                                           ; $5a9f: $98
	ld   a, b                                        ; $5aa0: $78
	ld   e, b                                        ; $5aa1: $58
	ld   l, c                                        ; $5aa2: $69
	sub  [hl]                                        ; $5aa3: $96
	sbc  a                                           ; $5aa4: $9f
	dec  c                                           ; $5aa5: $0d
	nop                                              ; $5aa6: $00
	ld   a, [bc]                                     ; $5aa7: $0a
	rrca                                             ; $5aa8: $0f
	nop                                              ; $5aa9: $00
	ld   bc, $7d01                                   ; $5aaa: $01 $01 $7d
	ld   d, d                                        ; $5aad: $52
	sbc  [hl]                                        ; $5aae: $9e
	sbc  l                                           ; $5aaf: $9d
	ld   e, c                                        ; $5ab0: $59
	sbc  b                                           ; $5ab1: $98
	adc  h                                           ; $5ab2: $8c
	ld   h, l                                        ; $5ab3: $65
	ld   l, l                                        ; $5ab4: $6d
	sbc  a                                           ; $5ab5: $9f
	dec  c                                           ; $5ab6: $0d
	ld   l, e                                        ; $5ab7: $6b
	sbc  d                                           ; $5ab8: $9a
	ld   [hl], l                                     ; $5ab9: $75
	ld   a, l                                        ; $5aba: $7d
	inc  bc                                          ; $5abb: $03
	add  e                                           ; $5abc: $83
	dec  b                                           ; $5abd: $05
	dec  c                                           ; $5abe: $0d
	ld   h, l                                        ; $5abf: $65
	adc  h                                           ; $5ac0: $8c
	ld   h, a                                        ; $5ac1: $67
	sbc  a                                           ; $5ac2: $9f
	dec  c                                           ; $5ac3: $0d
	nop                                              ; $5ac4: $00
	ld   a, [bc]                                     ; $5ac5: $0a
	dec  c                                           ; $5ac6: $0d
	nop                                              ; $5ac7: $00
	nop                                              ; $5ac8: $00
	inc  hl                                          ; $5ac9: $23
	ld   bc, $6b01                                   ; $5aca: $01 $01 $6b
	sbc  d                                           ; $5acd: $9a
	ld   h, [hl]                                     ; $5ace: $66
	sub  c                                           ; $5acf: $91
	sbc  [hl]                                        ; $5ad0: $9e
	inc  bc                                          ; $5ad1: $03
	ld   l, h                                        ; $5ad2: $6c
	ld   h, l                                        ; $5ad3: $65
	inc  bc                                          ; $5ad4: $03
	and  a                                           ; $5ad5: $a7
	adc  [hl]                                        ; $5ad6: $8e
	halt                                             ; $5ad7: $76
	ld   h, a                                        ; $5ad8: $67
	sbc  c                                           ; $5ad9: $99
	ld   e, c                                        ; $5ada: $59
	sbc  a                                           ; $5adb: $9f
	dec  c                                           ; $5adc: $0d
	nop                                              ; $5add: $00
	ld   a, [bc]                                     ; $5ade: $0a
	inc  c                                           ; $5adf: $0c
	ld   [bc], a                                     ; $5ae0: $02
	dec  h                                           ; $5ae1: $25
	nop                                              ; $5ae2: $00
	ld   c, $02                                      ; $5ae3: $0e $02
	rrca                                             ; $5ae5: $0f
	nop                                              ; $5ae6: $00
	ld   bc, $5401                                   ; $5ae7: $01 $01 $54
	db   $fc                                         ; $5aea: $fc
	and  c                                           ; $5aeb: $a1
	sub  [hl]                                        ; $5aec: $96
	ld   e, l                                        ; $5aed: $5d
	inc  b                                           ; $5aee: $04
	ld   b, d                                        ; $5aef: $42
	ld   l, l                                        ; $5af0: $6d
	rst  $38                                         ; $5af1: $ff
	rst  $38                                         ; $5af2: $ff
	dec  c                                           ; $5af3: $0d
	ld   e, c                                        ; $5af4: $59
	ld   a, b                                        ; $5af5: $78
	sbc  b                                           ; $5af6: $98
	inc  b                                           ; $5af7: $04
	dec  c                                           ; $5af8: $0d
	ld   e, d                                        ; $5af9: $5a
	dec  b                                           ; $5afa: $05
	inc  de                                          ; $5afb: $13
	ld   a, c                                        ; $5afc: $79
	ld   a, b                                        ; $5afd: $78
	ld   [hl], c                                     ; $5afe: $71
	ld   l, l                                        ; $5aff: $6d
	ld   l, h                                        ; $5b00: $6c
	sbc  a                                           ; $5b01: $9f
	dec  c                                           ; $5b02: $0d
	nop                                              ; $5b03: $00
	ld   a, [bc]                                     ; $5b04: $0a
	add  hl, hl                                      ; $5b05: $29
	ld   b, $00                                      ; $5b06: $06 $00
	rrca                                             ; $5b08: $0f
	nop                                              ; $5b09: $00
	ld   bc, $5201                                   ; $5b0a: $01 $01 $52
	ld   d, [hl]                                     ; $5b0d: $56
	sbc  [hl]                                        ; $5b0e: $9e
	inc  b                                           ; $5b0f: $04
	ld   c, $03                                      ; $5b10: $0e $03
	sbc  l                                           ; $5b12: $9d
	inc  b                                           ; $5b13: $04
	and  [hl]                                        ; $5b14: $a6
	ld   [hl], l                                     ; $5b15: $75
	ld   h, a                                        ; $5b16: $67
	sbc  a                                           ; $5b17: $9f
	dec  c                                           ; $5b18: $0d
	ld   e, d                                        ; $5b19: $5a
	and  c                                           ; $5b1a: $a1
	ld   a, [hl]                                     ; $5b1b: $7e
	sbc  b                                           ; $5b1c: $98
	adc  h                                           ; $5b1d: $8c
	ld   h, a                                        ; $5b1e: $67
	ld   a, [$000d]                                  ; $5b1f: $fa $0d $00
	ld   a, [bc]                                     ; $5b22: $0a
	rlca                                             ; $5b23: $07
	rlc  h                                           ; $5b24: $cb $04
	inc  bc                                          ; $5b26: $03
	ld   b, a                                        ; $5b27: $47
	ld   bc, $2000                                   ; $5b28: $01 $00 $20
	nop                                              ; $5b2b: $00
	rrca                                             ; $5b2c: $0f
	ld   b, $05                                      ; $5b2d: $06 $05
	ld   bc, $546b                                   ; $5b2f: $01 $6b $54
	ld   e, c                                        ; $5b32: $59
	rst  $38                                         ; $5b33: $ff
	rst  $38                                         ; $5b34: $ff
	dec  c                                           ; $5b35: $0d
	ld   l, e                                        ; $5b36: $6b
	and  c                                           ; $5b37: $a1
	ld   h, [hl]                                     ; $5b38: $66
	sub  c                                           ; $5b39: $91
	sbc  [hl]                                        ; $5b3a: $9e
	inc  bc                                          ; $5b3b: $03
	ld   l, l                                        ; $5b3c: $6d
	dec  b                                           ; $5b3d: $05
	add  hl, de                                      ; $5b3e: $19
	dec  b                                           ; $5b3f: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b40: $cf
	adc  a                                           ; $5b41: $8f
	sbc  c                                           ; $5b42: $99
	ld   l, d                                        ; $5b43: $6a
	ld   a, [$000d]                                  ; $5b44: $fa $0d $00
	ld   a, [bc]                                     ; $5b47: $0a
	dec  h                                           ; $5b48: $25
	ld   b, $05                                      ; $5b49: $06 $05
	ld   b, b                                        ; $5b4b: $40
	ld   b, a                                        ; $5b4c: $47
	inc  bc                                          ; $5b4d: $03
	ld   b, a                                        ; $5b4e: $47
	ld   bc, $2801                                   ; $5b4f: $01 $01 $28
	nop                                              ; $5b52: $00
	inc  e                                           ; $5b53: $1c
	ld   b, $05                                      ; $5b54: $06 $05
	dec  b                                           ; $5b56: $05
	ld   bc, $0458                                   ; $5b57: $01 $58 $04
	ld   a, e                                        ; $5b5a: $7b
	sbc  d                                           ; $5b5b: $9a
	ld   h, e                                        ; $5b5c: $63
	and  c                                           ; $5b5d: $a1
	sbc  a                                           ; $5b5e: $9f
	dec  c                                           ; $5b5f: $0d
	ld   a, b                                        ; $5b60: $78
	ld   d, b                                        ; $5b61: $50
	rst  $38                                         ; $5b62: $ff
	rst  $38                                         ; $5b63: $ff
	call c, $c9f5                                    ; $5b64: $dc $f5 $c9
	ld   a, c                                        ; $5b67: $79
	inc  bc                                          ; $5b68: $03
	and  a                                           ; $5b69: $a7
	and  c                                           ; $5b6a: $a1
	ld   l, [hl]                                     ; $5b6b: $6e
	adc  c                                           ; $5b6c: $89
	ld   d, h                                        ; $5b6d: $54
	ld   e, d                                        ; $5b6e: $5a
	dec  c                                           ; $5b6f: $0d
	ld   d, d                                        ; $5b70: $52
	ld   d, d                                        ; $5b71: $52
	halt                                             ; $5b72: $76
	dec  b                                           ; $5b73: $05
	pop  de                                          ; $5b74: $d1
	ld   d, h                                        ; $5b75: $54
	ld   l, d                                        ; $5b76: $6a
	sbc  a                                           ; $5b77: $9f
	dec  c                                           ; $5b78: $0d
	nop                                              ; $5b79: $00
	ld   a, [bc]                                     ; $5b7a: $0a
	rlca                                             ; $5b7b: $07
	jr   jr_048_5b82                                 ; $5b7c: $18 $04

	inc  bc                                          ; $5b7e: $03
	jr   nz, jr_048_5b82                             ; $5b7f: $20 $01

	nop                                              ; $5b81: $00

jr_048_5b82:
	jr   nz, jr_048_5b84                             ; $5b82: $20 $00

jr_048_5b84:
	inc  e                                           ; $5b84: $1c
	ld   b, $07                                      ; $5b85: $06 $07
	rlca                                             ; $5b87: $07
	ld   bc, $9a6b                                   ; $5b88: $01 $6b $9a
	ld   h, [hl]                                     ; $5b8b: $66
	sub  c                                           ; $5b8c: $91
	sbc  [hl]                                        ; $5b8d: $9e
	inc  b                                           ; $5b8e: $04
	adc  a                                           ; $5b8f: $8f
	inc  b                                           ; $5b90: $04
	xor  d                                           ; $5b91: $aa
	ld   a, h                                        ; $5b92: $7c
	ld   [bc], a                                     ; $5b93: $02
	or   d                                           ; $5b94: $b2
	inc  bc                                          ; $5b95: $03
	ld   c, a                                        ; $5b96: $4f
	ld   a, h                                        ; $5b97: $7c
	inc  bc                                          ; $5b98: $03
	ld   l, l                                        ; $5b99: $6d
	dec  b                                           ; $5b9a: $05
	add  hl, de                                      ; $5b9b: $19
	dec  c                                           ; $5b9c: $0d
	ld   h, c                                        ; $5b9d: $61
	sbc  d                                           ; $5b9e: $9a
	ld   a, c                                        ; $5b9f: $79
	ld   [hl], h                                     ; $5ba0: $74
	inc  bc                                          ; $5ba1: $03
	ld   a, [hl]                                     ; $5ba2: $7e
	dec  b                                           ; $5ba3: $05
	nop                                              ; $5ba4: $00
	ld   a, [$000d]                                  ; $5ba5: $fa $0d $00
	ld   a, [bc]                                     ; $5ba8: $0a
	rrca                                             ; $5ba9: $0f
	nop                                              ; $5baa: $00
	ld   bc, $000d                                   ; $5bab: $01 $0d $00
	nop                                              ; $5bae: $00
	add  hl, bc                                      ; $5baf: $09
	ld   e, $00                                      ; $5bb0: $1e $00
	rrca                                             ; $5bb2: $0f
	nop                                              ; $5bb3: $00
	ld   bc, $7d01                                   ; $5bb4: $01 $01 $7d
	ld   d, d                                        ; $5bb7: $52
	sbc  [hl]                                        ; $5bb8: $9e
	sbc  l                                           ; $5bb9: $9d
	ld   e, c                                        ; $5bba: $59
	rst  $38                                         ; $5bbb: $ff
	sbc  b                                           ; $5bbc: $98
	rst  $38                                         ; $5bbd: $ff
	rst  $38                                         ; $5bbe: $ff
	adc  h                                           ; $5bbf: $8c
	rst  $38                                         ; $5bc0: $ff
	rst  $38                                         ; $5bc1: $ff
	dec  c                                           ; $5bc2: $0d
	nop                                              ; $5bc3: $00
	dec  c                                           ; $5bc4: $0d
	nop                                              ; $5bc5: $00
	nop                                              ; $5bc6: $00
	inc  c                                           ; $5bc7: $0c
	ld   [bc], a                                     ; $5bc8: $02
	ld   c, $03                                      ; $5bc9: $0e $03
	ld   bc, $9a50                                   ; $5bcb: $01 $50 $9a
	rst  $38                                         ; $5bce: $ff
	rst  $38                                         ; $5bcf: $ff
	rst  $38                                         ; $5bd0: $ff
	ld   sp, hl                                      ; $5bd1: $f9
	dec  c                                           ; $5bd2: $0d
	ld   e, c                                        ; $5bd3: $59
	sub  a                                           ; $5bd4: $97
	rst  $38                                         ; $5bd5: $ff
	rst  $38                                         ; $5bd6: $ff
	ld   l, [hl]                                     ; $5bd7: $6e
	rst  $38                                         ; $5bd8: $ff
	rst  $38                                         ; $5bd9: $ff
	ld   e, d                                        ; $5bda: $5a
	rst  $38                                         ; $5bdb: $ff
	rst  $38                                         ; $5bdc: $ff
	dec  c                                           ; $5bdd: $0d
	nop                                              ; $5bde: $00
	ld   a, [bc]                                     ; $5bdf: $0a
	ld   l, $01                                      ; $5be0: $2e $01
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	dec  b                                           ; $5be4: $05
	ld   b, b                                        ; $5be5: $40
	ld   b, a                                        ; $5be6: $47
	inc  bc                                          ; $5be7: $03
	ld   b, a                                        ; $5be8: $47
	ld   bc, $2801                                   ; $5be9: $01 $01 $28
	nop                                              ; $5bec: $00
	inc  e                                           ; $5bed: $1c
	ld   b, $00                                      ; $5bee: $06 $00
	nop                                              ; $5bf0: $00
	ld   bc, $0458                                   ; $5bf1: $01 $58 $04
	ld   a, e                                        ; $5bf4: $7b
	sbc  d                                           ; $5bf5: $9a
	ld   h, e                                        ; $5bf6: $63
	and  c                                           ; $5bf7: $a1
	rst  $38                                         ; $5bf8: $ff
	rst  $38                                         ; $5bf9: $ff
	dec  c                                           ; $5bfa: $0d
	nop                                              ; $5bfb: $00
	inc  e                                           ; $5bfc: $1c
	ld   b, $03                                      ; $5bfd: $06 $03
	inc  bc                                          ; $5bff: $03
	ld   bc, $9a50                                   ; $5c00: $01 $50 $9a
	ld   sp, hl                                      ; $5c03: $f9
	db   $10                                         ; $5c04: $10
	ld   [hl], a                                     ; $5c05: $77
	ld   d, h                                        ; $5c06: $54
	ld   h, l                                        ; $5c07: $65
	ld   l, l                                        ; $5c08: $6d
	ld   sp, hl                                      ; $5c09: $f9
	dec  c                                           ; $5c0a: $0d
	ld   [bc], a                                     ; $5c0b: $02
	ld   [hl], d                                     ; $5c0c: $72
	ld   e, d                                        ; $5c0d: $5a
	inc  bc                                          ; $5c0e: $03
	xor  l                                           ; $5c0f: $ad
	ld   [hl], c                                     ; $5c10: $71
	inc  bc                                          ; $5c11: $03
	ld   a, [bc]                                     ; $5c12: $0a
	ld   l, [hl]                                     ; $5c13: $6e
	ld   l, d                                        ; $5c14: $6a
	sbc  a                                           ; $5c15: $9f
	dec  c                                           ; $5c16: $0d
	nop                                              ; $5c17: $00
	ld   a, [bc]                                     ; $5c18: $0a
	rrca                                             ; $5c19: $0f
	nop                                              ; $5c1a: $00
	ld   bc, $5601                                   ; $5c1b: $01 $01 $56
	ld   d, [hl]                                     ; $5c1e: $56
	rst  $38                                         ; $5c1f: $ff
	rst  $38                                         ; $5c20: $ff
	ld   a, b                                        ; $5c21: $78
	and  c                                           ; $5c22: $a1
	ld   l, [hl]                                     ; $5c23: $6e
	ld   e, c                                        ; $5c24: $59
	ld   h, e                                        ; $5c25: $63
	ld   [hl], c                                     ; $5c26: $71
	ld   e, e                                        ; $5c27: $5b
	ld   e, c                                        ; $5c28: $59
	sub  a                                           ; $5c29: $97
	dec  c                                           ; $5c2a: $0d
	inc  b                                           ; $5c2b: $04
	dec  c                                           ; $5c2c: $0d
	ld   e, d                                        ; $5c2d: $5a
	ld   l, [hl]                                     ; $5c2e: $6e
	sbc  c                                           ; $5c2f: $99
	ld   e, l                                        ; $5c30: $5d
	ld   [hl], h                                     ; $5c31: $74
	rst  $38                                         ; $5c32: $ff
	rst  $38                                         ; $5c33: $ff
	dec  c                                           ; $5c34: $0d
	nop                                              ; $5c35: $00
	ld   a, [bc]                                     ; $5c36: $0a
	ld   bc, $6254                                   ; $5c37: $01 $54 $62
	rst  $38                                         ; $5c3a: $ff
	rst  $38                                         ; $5c3b: $ff
	ld   e, c                                        ; $5c3c: $59
	rst  $38                                         ; $5c3d: $ff
	rst  $38                                         ; $5c3e: $ff
	ld   a, b                                        ; $5c3f: $78
	rst  $38                                         ; $5c40: $ff
	rst  $38                                         ; $5c41: $ff
	dec  c                                           ; $5c42: $0d
	nop                                              ; $5c43: $00
	dec  c                                           ; $5c44: $0d
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	inc  c                                           ; $5c47: $0c
	ld   [bc], a                                     ; $5c48: $02
	ld   c, $03                                      ; $5c49: $0e $03
	ld   bc, $9a50                                   ; $5c4b: $01 $50 $9a
	rst  $38                                         ; $5c4e: $ff
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	ld   sp, hl                                      ; $5c51: $f9
	dec  c                                           ; $5c52: $0d
	ld   [hl], a                                     ; $5c53: $77
	ld   d, h                                        ; $5c54: $54
	ld   h, l                                        ; $5c55: $65
	rst  $38                                         ; $5c56: $ff
	rst  $38                                         ; $5c57: $ff
	ld   l, l                                        ; $5c58: $6d
	rst  $38                                         ; $5c59: $ff
	rst  $38                                         ; $5c5a: $ff
	and  c                                           ; $5c5b: $a1
	rst  $38                                         ; $5c5c: $ff
	rst  $38                                         ; $5c5d: $ff
	dec  c                                           ; $5c5e: $0d
	nop                                              ; $5c5f: $00
	ld   a, [bc]                                     ; $5c60: $0a
	ld   l, $01                                      ; $5c61: $2e $01
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	rrca                                             ; $5c65: $0f
	ld   b, $05                                      ; $5c66: $06 $05
	ld   bc, $546b                                   ; $5c68: $01 $6b $54
	ld   e, c                                        ; $5c6b: $59
	rst  $38                                         ; $5c6c: $ff
	rst  $38                                         ; $5c6d: $ff
	dec  c                                           ; $5c6e: $0d
	nop                                              ; $5c6f: $00
	inc  e                                           ; $5c70: $1c
	ld   b, $00                                      ; $5c71: $06 $00
	nop                                              ; $5c73: $00
	ld   bc, $6596                                   ; $5c74: $01 $96 $65
	ld   a, [$000d]                                  ; $5c77: $fa $0d $00
	ld   a, [bc]                                     ; $5c7a: $0a
	ld   bc, $6d50                                   ; $5c7b: $01 $50 $6d
	ld   d, d                                        ; $5c7e: $52
	ld   a, h                                        ; $5c7f: $7c
	inc  bc                                          ; $5c80: $03
	ld   l, l                                        ; $5c81: $6d
	dec  b                                           ; $5c82: $05
	add  hl, de                                      ; $5c83: $19
	ld   a, l                                        ; $5c84: $7d
	sbc  [hl]                                        ; $5c85: $9e
	dec  c                                           ; $5c86: $0d
	ld   [bc], a                                     ; $5c87: $02
	ld   l, e                                        ; $5c88: $6b
	dec  b                                           ; $5c89: $05
	ld   a, [bc]                                     ; $5c8a: $0a
	ret                                              ; $5c8b: $c9


	xor  $fb                                         ; $5c8c: $ee $fb
	call z, $b1f5                                    ; $5c8e: $cc $f5 $b1
	ld   l, [hl]                                     ; $5c91: $6e
	sbc  a                                           ; $5c92: $9f
	dec  c                                           ; $5c93: $0d
	ld   l, a                                        ; $5c94: $6f
	sub  l                                           ; $5c95: $95
	ld   [hl], c                                     ; $5c96: $71
	halt                                             ; $5c97: $76
	xor  [hl]                                        ; $5c98: $ae
	push bc                                          ; $5c99: $c5
	and  l                                           ; $5c9a: $a5
	ld   l, h                                        ; $5c9b: $6c
	sbc  a                                           ; $5c9c: $9f
	dec  c                                           ; $5c9d: $0d
	nop                                              ; $5c9e: $00
	ld   a, [bc]                                     ; $5c9f: $0a
	ld   bc, $7c61                                   ; $5ca0: $01 $61 $7c
	inc  bc                                          ; $5ca3: $03
	ld   l, l                                        ; $5ca4: $6d
	dec  b                                           ; $5ca5: $05
	add  hl, de                                      ; $5ca6: $19
	ld   [hl], l                                     ; $5ca7: $75
	sbc  [hl]                                        ; $5ca8: $9e
	pop  de                                          ; $5ca9: $d1
	call nz, $ecc2                                   ; $5caa: $c4 $c2 $ec
	dec  b                                           ; $5cad: $05
	xor  c                                           ; $5cae: $a9
	ld   b, $82                                      ; $5caf: $06 $82
	inc  b                                           ; $5cb1: $04
	dec  c                                           ; $5cb2: $0d
	dec  b                                           ; $5cb3: $05
	ld   a, [bc]                                     ; $5cb4: $0a
	dec  c                                           ; $5cb5: $0d
	and  b                                           ; $5cb6: $a0
	ld   [hl], d                                     ; $5cb7: $72
	ld   e, a                                        ; $5cb8: $5f
	ld   [hl], h                                     ; $5cb9: $74
	sub  b                                           ; $5cba: $90
	sub  a                                           ; $5cbb: $97
	ld   d, h                                        ; $5cbc: $54
	ld   l, d                                        ; $5cbd: $6a
	sbc  a                                           ; $5cbe: $9f
	dec  c                                           ; $5cbf: $0d
	nop                                              ; $5cc0: $00
	ld   a, [bc]                                     ; $5cc1: $0a
	inc  e                                           ; $5cc2: $1c
	ld   b, $07                                      ; $5cc3: $06 $07
	rlca                                             ; $5cc5: $07
	ld   bc, $9a6b                                   ; $5cc6: $01 $6b $9a
	ld   h, [hl]                                     ; $5cc9: $66
	sub  c                                           ; $5cca: $91
	sbc  [hl]                                        ; $5ccb: $9e
	dec  b                                           ; $5ccc: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ccd: $cf
	adc  a                                           ; $5cce: $8f
	sbc  c                                           ; $5ccf: $99
	ld   l, h                                        ; $5cd0: $6c
	ld   a, [$0dfa]                                  ; $5cd1: $fa $fa $0d
	nop                                              ; $5cd4: $00
	ld   a, [bc]                                     ; $5cd5: $0a
	ld   b, $ae                                      ; $5cd6: $06 $ae
	inc  bc                                          ; $5cd8: $03
	dec  c                                           ; $5cd9: $0d
	ld   b, $00                                      ; $5cda: $06 $00
	rrca                                             ; $5cdc: $0f
	nop                                              ; $5cdd: $00
	ld   bc, $0102                                   ; $5cde: $01 $02 $01
	ld   h, c                                        ; $5ce1: $61
	and  c                                           ; $5ce2: $a1
	ld   a, c                                        ; $5ce3: $79
	ld   l, a                                        ; $5ce4: $6f
	ld   a, l                                        ; $5ce5: $7d
	sbc  [hl]                                        ; $5ce6: $9e
	xor  h                                           ; $5ce7: $ac
	push af                                          ; $5ce8: $f5
	bit  4, e                                        ; $5ce9: $cb $63
	and  c                                           ; $5ceb: $a1
	sbc  a                                           ; $5cec: $9f
	dec  c                                           ; $5ced: $0d
	ld   e, a                                        ; $5cee: $5f
	ld   d, d                                        ; $5cef: $52
	ld   h, c                                        ; $5cf0: $61
	and  b                                           ; $5cf1: $a0
	ld   [hl], d                                     ; $5cf2: $72
	ld   e, a                                        ; $5cf3: $5f
	ld   [hl], h                                     ; $5cf4: $74
	ld   d, d                                        ; $5cf5: $52
	ld   l, l                                        ; $5cf6: $6d
	ld   l, [hl]                                     ; $5cf7: $6e
	ld   e, a                                        ; $5cf8: $5f
	dec  c                                           ; $5cf9: $0d
	adc  h                                           ; $5cfa: $8c
	ld   h, a                                        ; $5cfb: $67
	ld   e, c                                        ; $5cfc: $59
	ld   sp, hl                                      ; $5cfd: $f9
	dec  c                                           ; $5cfe: $0d
	nop                                              ; $5cff: $00
	ld   a, [bc]                                     ; $5d00: $0a
	rrca                                             ; $5d01: $0f
	ld   b, $00                                      ; $5d02: $06 $00
	ld   bc, $9258                                   ; $5d04: $01 $58 $92
	ld   h, a                                        ; $5d07: $67
	ld   d, d                                        ; $5d08: $52
	ld   h, d                                        ; $5d09: $62
	inc  b                                           ; $5d0a: $04
	di                                               ; $5d0b: $f3
	ld   h, e                                        ; $5d0c: $63
	sbc  a                                           ; $5d0d: $9f
	dec  c                                           ; $5d0e: $0d
	ld   l, e                                        ; $5d0f: $6b
	and  c                                           ; $5d10: $a1
	ld   h, [hl]                                     ; $5d11: $66
	sub  c                                           ; $5d12: $91
	sbc  [hl]                                        ; $5d13: $9e
	ld   h, e                                        ; $5d14: $63
	ld   [hl], c                                     ; $5d15: $71
	ld   l, e                                        ; $5d16: $6b
	ld   e, l                                        ; $5d17: $5d
	inc  bc                                          ; $5d18: $03
	ld   l, l                                        ; $5d19: $6d
	dec  b                                           ; $5d1a: $05
	add  hl, de                                      ; $5d1b: $19
	dec  c                                           ; $5d1c: $0d
	dec  b                                           ; $5d1d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d1e: $cf
	adc  a                                           ; $5d1f: $8f
	sbc  c                                           ; $5d20: $99
	ld   l, d                                        ; $5d21: $6a
	ld   a, [$000d]                                  ; $5d22: $fa $0d $00
	ld   a, [bc]                                     ; $5d25: $0a
	dec  h                                           ; $5d26: $25
	ld   b, $07                                      ; $5d27: $06 $07
	ld   c, d                                        ; $5d29: $4a
	inc  b                                           ; $5d2a: $04
	inc  bc                                          ; $5d2b: $03
	jr   nz, jr_048_5d2f                             ; $5d2c: $20 $01

	nop                                              ; $5d2e: $00

jr_048_5d2f:
	jr   nz, jr_048_5d31                             ; $5d2f: $20 $00

jr_048_5d31:
	inc  e                                           ; $5d31: $1c
	ld   b, $00                                      ; $5d32: $06 $00
	nop                                              ; $5d34: $00
	ld   bc, $0458                                   ; $5d35: $01 $58 $04
	ld   a, e                                        ; $5d38: $7b
	sbc  d                                           ; $5d39: $9a
	ld   h, e                                        ; $5d3a: $63
	and  c                                           ; $5d3b: $a1
	sbc  a                                           ; $5d3c: $9f
	dec  c                                           ; $5d3d: $0d
	nop                                              ; $5d3e: $00
	dec  b                                           ; $5d3f: $05
	ld   b, b                                        ; $5d40: $40
	ld   b, a                                        ; $5d41: $47
	inc  bc                                          ; $5d42: $03
	ld   b, a                                        ; $5d43: $47
	ld   bc, $2801                                   ; $5d44: $01 $01 $28
	nop                                              ; $5d47: $00
	ld   bc, $0008                                   ; $5d48: $01 $08 $00
	sbc  [hl]                                        ; $5d4b: $9e
	db   $e3                                         ; $5d4c: $e3
	cp   b                                           ; $5d4d: $b8
	ld   l, [hl]                                     ; $5d4e: $6e
	ld   e, a                                        ; $5d4f: $5f
	ld   a, l                                        ; $5d50: $7d
	dec  c                                           ; $5d51: $0d
	ld   h, l                                        ; $5d52: $65
	ld   [hl], c                                     ; $5d53: $71
	ld   e, c                                        ; $5d54: $59
	sbc  b                                           ; $5d55: $98
	inc  bc                                          ; $5d56: $03
	ld   l, d                                        ; $5d57: $6a
	ld   d, [hl]                                     ; $5d58: $56
	sub  [hl]                                        ; $5d59: $96
	sbc  a                                           ; $5d5a: $9f
	dec  c                                           ; $5d5b: $0d
	nop                                              ; $5d5c: $00
	ld   a, [bc]                                     ; $5d5d: $0a
	ld   bc, $9a6b                                   ; $5d5e: $01 $6b $9a
	ld   h, [hl]                                     ; $5d61: $66
	sub  c                                           ; $5d62: $91
	sbc  [hl]                                        ; $5d63: $9e
	inc  b                                           ; $5d64: $04
	adc  a                                           ; $5d65: $8f
	inc  b                                           ; $5d66: $04
	xor  d                                           ; $5d67: $aa
	ld   a, h                                        ; $5d68: $7c
	ld   [bc], a                                     ; $5d69: $02
	or   d                                           ; $5d6a: $b2
	ld   [bc], a                                     ; $5d6b: $02
	xor  d                                           ; $5d6c: $aa
	ld   a, h                                        ; $5d6d: $7c
	inc  bc                                          ; $5d6e: $03
	ld   l, l                                        ; $5d6f: $6d
	dec  b                                           ; $5d70: $05
	add  hl, de                                      ; $5d71: $19
	dec  c                                           ; $5d72: $0d
	ld   h, c                                        ; $5d73: $61
	sbc  d                                           ; $5d74: $9a
	ld   a, c                                        ; $5d75: $79
	ld   [hl], h                                     ; $5d76: $74
	inc  bc                                          ; $5d77: $03
	ld   a, [hl]                                     ; $5d78: $7e
	dec  b                                           ; $5d79: $05
	nop                                              ; $5d7a: $00
	ld   a, [$000d]                                  ; $5d7b: $fa $0d $00
	ld   a, [bc]                                     ; $5d7e: $0a
	dec  c                                           ; $5d7f: $0d
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	rrca                                             ; $5d82: $0f
	nop                                              ; $5d83: $00
	ld   bc, $0d00                                   ; $5d84: $01 $00 $0d
	ld   b, $00                                      ; $5d87: $06 $00
	rrca                                             ; $5d89: $0f
	nop                                              ; $5d8a: $00
	ld   bc, $0102                                   ; $5d8b: $01 $02 $01
	ld   h, c                                        ; $5d8e: $61
	and  c                                           ; $5d8f: $a1
	ld   a, c                                        ; $5d90: $79
	ld   l, a                                        ; $5d91: $6f
	ld   a, l                                        ; $5d92: $7d
	sbc  [hl]                                        ; $5d93: $9e
	xor  h                                           ; $5d94: $ac
	push af                                          ; $5d95: $f5
	bit  4, e                                        ; $5d96: $cb $63
	and  c                                           ; $5d98: $a1
	sbc  a                                           ; $5d99: $9f
	dec  c                                           ; $5d9a: $0d
	ld   e, a                                        ; $5d9b: $5f
	ld   d, d                                        ; $5d9c: $52
	ld   h, c                                        ; $5d9d: $61
	and  b                                           ; $5d9e: $a0
	ld   [hl], d                                     ; $5d9f: $72
	ld   e, a                                        ; $5da0: $5f
	ld   [hl], h                                     ; $5da1: $74
	ld   d, d                                        ; $5da2: $52
	ld   l, l                                        ; $5da3: $6d
	ld   l, [hl]                                     ; $5da4: $6e
	ld   e, a                                        ; $5da5: $5f
	dec  c                                           ; $5da6: $0d
	adc  h                                           ; $5da7: $8c
	ld   h, a                                        ; $5da8: $67
	ld   e, c                                        ; $5da9: $59
	ld   sp, hl                                      ; $5daa: $f9
	dec  c                                           ; $5dab: $0d
	nop                                              ; $5dac: $00
	ld   a, [bc]                                     ; $5dad: $0a
	rlca                                             ; $5dae: $07
	push af                                          ; $5daf: $f5
	ld   b, $03                                      ; $5db0: $06 $03
	ld   b, a                                        ; $5db2: $47
	ld   bc, $2504                                   ; $5db3: $01 $04 $25
	nop                                              ; $5db6: $00
	rrca                                             ; $5db7: $0f
	ld   b, $00                                      ; $5db8: $06 $00
	ld   bc, $5252                                   ; $5dba: $01 $52 $52
	ld   l, d                                        ; $5dbd: $6a
	rst  $38                                         ; $5dbe: $ff
	rst  $38                                         ; $5dbf: $ff
	ld   [hl], c                                     ; $5dc0: $71
	halt                                             ; $5dc1: $76
	sbc  [hl]                                        ; $5dc2: $9e
	ld   l, e                                        ; $5dc3: $6b
	ld   d, h                                        ; $5dc4: $54
	ld   l, e                                        ; $5dc5: $6b
	ld   d, h                                        ; $5dc6: $54
	sbc  [hl]                                        ; $5dc7: $9e
	dec  c                                           ; $5dc8: $0d
	ld   [bc], a                                     ; $5dc9: $02
	and  l                                           ; $5dca: $a5
	ld   [bc], a                                     ; $5dcb: $02
	sub  e                                           ; $5dcc: $93
	ld   e, c                                        ; $5dcd: $59
	sub  a                                           ; $5dce: $97
	ld   a, l                                        ; $5dcf: $7d
	ld   [bc], a                                     ; $5dd0: $02
	ld   l, e                                        ; $5dd1: $6b
	dec  b                                           ; $5dd2: $05
	ld   a, [bc]                                     ; $5dd3: $0a
	ret                                              ; $5dd4: $c9


	xor  $fb                                         ; $5dd5: $ee $fb
	call z, $b1f5                                    ; $5dd7: $cc $f5 $b1
	dec  c                                           ; $5dda: $0d
	ld   h, [hl]                                     ; $5ddb: $66
	sub  c                                           ; $5ddc: $91
	ld   a, b                                        ; $5ddd: $78
	ld   e, l                                        ; $5dde: $5d
	ld   [hl], h                                     ; $5ddf: $74
	sbc  [hl]                                        ; $5de0: $9e
	ld   [bc], a                                     ; $5de1: $02
	or   [hl]                                        ; $5de2: $b6
	inc  bc                                          ; $5de3: $03
	ld   l, e                                        ; $5de4: $6b
	ld   a, h                                        ; $5de5: $7c
	ld   e, a                                        ; $5de6: $5f
	ld   d, d                                        ; $5de7: $52
	ld   h, c                                        ; $5de8: $61
	ld   l, [hl]                                     ; $5de9: $6e
	sbc  a                                           ; $5dea: $9f
	dec  c                                           ; $5deb: $0d
	nop                                              ; $5dec: $00
	ld   a, [bc]                                     ; $5ded: $0a
	rrca                                             ; $5dee: $0f
	ld   b, $00                                      ; $5def: $06 $00
	ld   bc, $a102                                   ; $5df1: $01 $02 $a1
	ld   [bc], a                                     ; $5df4: $02
	ld   a, e                                        ; $5df5: $7b
	ld   d, d                                        ; $5df6: $52
	inc  b                                           ; $5df7: $04
	ld   b, l                                        ; $5df8: $45
	sbc  d                                           ; $5df9: $9a
	ld   [hl], h                                     ; $5dfa: $74
	ld   d, d                                        ; $5dfb: $52
	ld   e, a                                        ; $5dfc: $5f
	sub  [hl]                                        ; $5dfd: $96
	ld   a, [$000d]                                  ; $5dfe: $fa $0d $00
	ld   a, [bc]                                     ; $5e01: $0a
	ld   bc, $a16b                                   ; $5e02: $01 $6b $a1
	ld   h, [hl]                                     ; $5e05: $66
	sub  c                                           ; $5e06: $91
	sbc  [hl]                                        ; $5e07: $9e
	ld   h, e                                        ; $5e08: $63
	ld   [hl], c                                     ; $5e09: $71
	ld   l, e                                        ; $5e0a: $6b
	ld   e, l                                        ; $5e0b: $5d
	inc  bc                                          ; $5e0c: $03
	ld   l, l                                        ; $5e0d: $6d
	dec  b                                           ; $5e0e: $05
	add  hl, de                                      ; $5e0f: $19
	dec  c                                           ; $5e10: $0d
	dec  b                                           ; $5e11: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e12: $cf
	adc  a                                           ; $5e13: $8f
	sbc  c                                           ; $5e14: $99
	ld   l, d                                        ; $5e15: $6a
	ld   a, [$000d]                                  ; $5e16: $fa $0d $00
	ld   a, [bc]                                     ; $5e19: $0a
	dec  h                                           ; $5e1a: $25
	ld   b, $07                                      ; $5e1b: $06 $07
	ld   c, d                                        ; $5e1d: $4a
	inc  b                                           ; $5e1e: $04
	inc  bc                                          ; $5e1f: $03
	jr   nz, jr_048_5e23                             ; $5e20: $20 $01

	nop                                              ; $5e22: $00

jr_048_5e23:
	jr   nz, jr_048_5e25                             ; $5e23: $20 $00

jr_048_5e25:
	inc  e                                           ; $5e25: $1c
	ld   b, $00                                      ; $5e26: $06 $00
	nop                                              ; $5e28: $00
	ld   bc, $956f                                   ; $5e29: $01 $6f $95
	ld   [hl], c                                     ; $5e2c: $71
	halt                                             ; $5e2d: $76
	jp   nc, $c2f5                                   ; $5e2e: $d2 $f5 $c2

	ld   e, d                                        ; $5e31: $5a
	ld   [bc], a                                     ; $5e32: $02
	ld   [hl], $52                                   ; $5e33: $36 $52
	ld   e, a                                        ; $5e35: $5f
	ld   [hl], a                                     ; $5e36: $77
	sbc  [hl]                                        ; $5e37: $9e
	dec  c                                           ; $5e38: $0d
	inc  bc                                          ; $5e39: $03
	inc  c                                           ; $5e3a: $0c
	inc  bc                                          ; $5e3b: $03
	ld   [hl], l                                     ; $5e3c: $75
	inc  bc                                          ; $5e3d: $03
	or   b                                           ; $5e3e: $b0
	ld   a, c                                        ; $5e3f: $79
	ld   h, l                                        ; $5e40: $65
	ld   l, a                                        ; $5e41: $6f
	sub  c                                           ; $5e42: $91
	ld   d, b                                        ; $5e43: $50
	sbc  [hl]                                        ; $5e44: $9e
	adc  h                                           ; $5e45: $8c
	ld   d, b                                        ; $5e46: $50
	adc  h                                           ; $5e47: $8c
	ld   d, b                                        ; $5e48: $50
	ld   a, h                                        ; $5e49: $7c
	dec  c                                           ; $5e4a: $0d
	inc  b                                           ; $5e4b: $04
	dec  c                                           ; $5e4c: $0d
	ld   h, e                                        ; $5e4d: $63
	ld   a, [hl]                                     ; $5e4e: $7e
	ld   e, e                                        ; $5e4f: $5b
	ld   l, [hl]                                     ; $5e50: $6e
	ld   [hl], c                                     ; $5e51: $71
	ld   l, l                                        ; $5e52: $6d
	ld   l, d                                        ; $5e53: $6a
	sbc  a                                           ; $5e54: $9f
	dec  c                                           ; $5e55: $0d
	nop                                              ; $5e56: $00
	ld   a, [bc]                                     ; $5e57: $0a
	inc  e                                           ; $5e58: $1c
	ld   b, $01                                      ; $5e59: $06 $01
	ld   bc, $6b01                                   ; $5e5b: $01 $01 $6b
	sbc  d                                           ; $5e5e: $9a
	ld   h, [hl]                                     ; $5e5f: $66
	sub  c                                           ; $5e60: $91
	sbc  [hl]                                        ; $5e61: $9e
	inc  b                                           ; $5e62: $04
	adc  a                                           ; $5e63: $8f
	inc  b                                           ; $5e64: $04
	xor  d                                           ; $5e65: $aa
	ld   a, h                                        ; $5e66: $7c
	ld   [bc], a                                     ; $5e67: $02
	or   d                                           ; $5e68: $b2
	ld   [bc], a                                     ; $5e69: $02
	xor  d                                           ; $5e6a: $aa
	ld   a, h                                        ; $5e6b: $7c
	inc  bc                                          ; $5e6c: $03
	ld   l, l                                        ; $5e6d: $6d
	dec  b                                           ; $5e6e: $05
	add  hl, de                                      ; $5e6f: $19
	dec  c                                           ; $5e70: $0d
	nop                                              ; $5e71: $00
	dec  b                                           ; $5e72: $05
	ld   b, b                                        ; $5e73: $40
	ld   b, a                                        ; $5e74: $47
	inc  bc                                          ; $5e75: $03
	ld   b, a                                        ; $5e76: $47
	ld   bc, $2801                                   ; $5e77: $01 $01 $28
	nop                                              ; $5e7a: $00
	ld   bc, $9a61                                   ; $5e7b: $01 $61 $9a
	ld   a, c                                        ; $5e7e: $79
	ld   [hl], h                                     ; $5e7f: $74
	inc  bc                                          ; $5e80: $03
	ld   a, [hl]                                     ; $5e81: $7e
	dec  b                                           ; $5e82: $05
	nop                                              ; $5e83: $00
	ld   a, [$000d]                                  ; $5e84: $fa $0d $00
	ld   a, [bc]                                     ; $5e87: $0a
	dec  c                                           ; $5e88: $0d
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	rrca                                             ; $5e8b: $0f
	nop                                              ; $5e8c: $00
	ld   bc, $0f00                                   ; $5e8d: $01 $00 $0f
	ld   b, $00                                      ; $5e90: $06 $00
	ld   bc, $5252                                   ; $5e92: $01 $52 $52
	ld   l, d                                        ; $5e95: $6a
	sbc  a                                           ; $5e96: $9f
	dec  c                                           ; $5e97: $0d
	ld   l, e                                        ; $5e98: $6b
	and  c                                           ; $5e99: $a1
	ld   h, [hl]                                     ; $5e9a: $66
	sub  c                                           ; $5e9b: $91
	sbc  [hl]                                        ; $5e9c: $9e
	ld   h, e                                        ; $5e9d: $63
	ld   [hl], c                                     ; $5e9e: $71
	ld   l, e                                        ; $5e9f: $6b
	ld   e, l                                        ; $5ea0: $5d
	inc  bc                                          ; $5ea1: $03
	ld   l, l                                        ; $5ea2: $6d
	dec  b                                           ; $5ea3: $05
	add  hl, de                                      ; $5ea4: $19
	dec  c                                           ; $5ea5: $0d
	dec  b                                           ; $5ea6: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ea7: $cf
	adc  a                                           ; $5ea8: $8f
	ld   [hl], c                                     ; $5ea9: $71
	ld   e, c                                        ; $5eaa: $59
	ld   a, [$000d]                                  ; $5eab: $fa $0d $00
	ld   a, [bc]                                     ; $5eae: $0a
	dec  h                                           ; $5eaf: $25
	ld   b, $07                                      ; $5eb0: $06 $07
	ld   c, d                                        ; $5eb2: $4a
	inc  b                                           ; $5eb3: $04
	inc  bc                                          ; $5eb4: $03
	jr   nz, jr_048_5eb8                             ; $5eb5: $20 $01

	nop                                              ; $5eb7: $00

jr_048_5eb8:
	jr   nz, jr_048_5eba                             ; $5eb8: $20 $00

jr_048_5eba:
	inc  e                                           ; $5eba: $1c
	ld   b, $00                                      ; $5ebb: $06 $00
	nop                                              ; $5ebd: $00
	ld   bc, $0458                                   ; $5ebe: $01 $58 $04
	ld   a, e                                        ; $5ec1: $7b
	sbc  d                                           ; $5ec2: $9a
	ld   h, e                                        ; $5ec3: $63
	and  c                                           ; $5ec4: $a1
	sbc  a                                           ; $5ec5: $9f
	dec  c                                           ; $5ec6: $0d
	ld   l, b                                        ; $5ec7: $68
	ld   d, d                                        ; $5ec8: $52
	add  h                                           ; $5ec9: $84
	and  c                                           ; $5eca: $a1
	and  a                                           ; $5ecb: $a7
	ret  z                                           ; $5ecc: $c8

	and  b                                           ; $5ecd: $a0
	dec  c                                           ; $5ece: $0d
	ld   d, b                                        ; $5ecf: $50
	ld   h, b                                        ; $5ed0: $60
	ld   l, l                                        ; $5ed1: $6d
	and  c                                           ; $5ed2: $a1
	ld   h, [hl]                                     ; $5ed3: $66
	sub  c                                           ; $5ed4: $91
	ld   a, e                                        ; $5ed5: $7b
	ld   d, [hl]                                     ; $5ed6: $56
	ld   e, c                                        ; $5ed7: $59
	ld   sp, hl                                      ; $5ed8: $f9
	dec  c                                           ; $5ed9: $0d
	nop                                              ; $5eda: $00
	ld   a, [bc]                                     ; $5edb: $0a
	inc  e                                           ; $5edc: $1c
	ld   b, $01                                      ; $5edd: $06 $01
	ld   bc, $6101                                   ; $5edf: $01 $01 $61
	sbc  d                                           ; $5ee2: $9a
	ld   e, c                                        ; $5ee3: $59
	sub  a                                           ; $5ee4: $97
	sub  b                                           ; $5ee5: $90
	sbc  [hl]                                        ; $5ee6: $9e
	ld   h, c                                        ; $5ee7: $61
	ld   a, h                                        ; $5ee8: $7c
	inc  bc                                          ; $5ee9: $03
	cp   $03                                         ; $5eea: $fe $03
	add  [hl]                                        ; $5eec: $86
	ld   [hl], l                                     ; $5eed: $75
	dec  c                                           ; $5eee: $0d
	ld   e, d                                        ; $5eef: $5a
	and  c                                           ; $5ef0: $a1
	ld   a, [hl]                                     ; $5ef1: $7e
	sbc  d                                           ; $5ef2: $9a
	sub  [hl]                                        ; $5ef3: $96
	ld   a, [$000d]                                  ; $5ef4: $fa $0d $00
	ld   a, [bc]                                     ; $5ef7: $0a
	ld   bc, $9a6b                                   ; $5ef8: $01 $6b $9a
	ld   h, [hl]                                     ; $5efb: $66
	sub  c                                           ; $5efc: $91
	sbc  [hl]                                        ; $5efd: $9e
	inc  b                                           ; $5efe: $04
	adc  a                                           ; $5eff: $8f
	inc  b                                           ; $5f00: $04
	xor  d                                           ; $5f01: $aa
	ld   a, h                                        ; $5f02: $7c
	ld   [bc], a                                     ; $5f03: $02
	or   d                                           ; $5f04: $b2
	ld   [bc], a                                     ; $5f05: $02
	xor  d                                           ; $5f06: $aa
	ld   a, h                                        ; $5f07: $7c
	inc  bc                                          ; $5f08: $03
	ld   l, l                                        ; $5f09: $6d
	dec  b                                           ; $5f0a: $05
	add  hl, de                                      ; $5f0b: $19
	dec  c                                           ; $5f0c: $0d
	nop                                              ; $5f0d: $00
	dec  b                                           ; $5f0e: $05
	ld   b, b                                        ; $5f0f: $40
	ld   b, a                                        ; $5f10: $47
	inc  bc                                          ; $5f11: $03
	ld   b, a                                        ; $5f12: $47
	ld   bc, $2801                                   ; $5f13: $01 $01 $28
	nop                                              ; $5f16: $00
	ld   bc, $9a61                                   ; $5f17: $01 $61 $9a
	ld   a, c                                        ; $5f1a: $79
	ld   [hl], h                                     ; $5f1b: $74
	inc  bc                                          ; $5f1c: $03
	ld   a, [hl]                                     ; $5f1d: $7e
	dec  b                                           ; $5f1e: $05
	nop                                              ; $5f1f: $00
	ld   a, [$000d]                                  ; $5f20: $fa $0d $00
	ld   a, [bc]                                     ; $5f23: $0a
	dec  c                                           ; $5f24: $0d
	nop                                              ; $5f25: $00
	nop                                              ; $5f26: $00
	rrca                                             ; $5f27: $0f
	nop                                              ; $5f28: $00
	ld   bc, $0d00                                   ; $5f29: $01 $00 $0d
	ld   b, $00                                      ; $5f2c: $06 $00
	rrca                                             ; $5f2e: $0f
	nop                                              ; $5f2f: $00
	ld   bc, $0102                                   ; $5f30: $01 $02 $01
	ld   h, c                                        ; $5f33: $61
	and  c                                           ; $5f34: $a1
	ld   a, c                                        ; $5f35: $79
	ld   l, a                                        ; $5f36: $6f
	ld   a, l                                        ; $5f37: $7d
	sbc  [hl]                                        ; $5f38: $9e
	xor  h                                           ; $5f39: $ac
	push af                                          ; $5f3a: $f5
	bit  4, e                                        ; $5f3b: $cb $63
	and  c                                           ; $5f3d: $a1
	sbc  a                                           ; $5f3e: $9f
	dec  c                                           ; $5f3f: $0d
	ld   e, a                                        ; $5f40: $5f
	ld   d, d                                        ; $5f41: $52
	ld   h, c                                        ; $5f42: $61
	and  b                                           ; $5f43: $a0
	ld   [hl], d                                     ; $5f44: $72
	ld   e, a                                        ; $5f45: $5f
	ld   [hl], h                                     ; $5f46: $74
	ld   d, d                                        ; $5f47: $52
	ld   l, l                                        ; $5f48: $6d
	ld   l, [hl]                                     ; $5f49: $6e
	ld   e, a                                        ; $5f4a: $5f
	dec  c                                           ; $5f4b: $0d
	adc  h                                           ; $5f4c: $8c
	ld   h, a                                        ; $5f4d: $67
	ld   e, c                                        ; $5f4e: $59
	ld   sp, hl                                      ; $5f4f: $f9
	dec  c                                           ; $5f50: $0d
	nop                                              ; $5f51: $00
	ld   a, [bc]                                     ; $5f52: $0a
	rlca                                             ; $5f53: $07
	ld   [hl], a                                     ; $5f54: $77
	ld   [$4703], sp                                 ; $5f55: $08 $03 $47
	ld   bc, $2507                                   ; $5f58: $01 $07 $25
	nop                                              ; $5f5b: $00
	rrca                                             ; $5f5c: $0f
	ld   b, $00                                      ; $5f5d: $06 $00
	ld   bc, $5050                                   ; $5f5f: $01 $50 $50
	sbc  [hl]                                        ; $5f62: $9e
	ld   e, b                                        ; $5f63: $58
	sub  d                                           ; $5f64: $92
	ld   h, a                                        ; $5f65: $67
	ld   d, d                                        ; $5f66: $52
	ld   h, d                                        ; $5f67: $62
	inc  b                                           ; $5f68: $04
	di                                               ; $5f69: $f3
	ld   l, [hl]                                     ; $5f6a: $6e
	ld   l, d                                        ; $5f6b: $6a
	sbc  a                                           ; $5f6c: $9f
	dec  c                                           ; $5f6d: $0d
	ld   l, e                                        ; $5f6e: $6b
	and  c                                           ; $5f6f: $a1
	ld   h, [hl]                                     ; $5f70: $66
	sub  c                                           ; $5f71: $91
	sbc  [hl]                                        ; $5f72: $9e
	ld   h, e                                        ; $5f73: $63
	ld   [hl], c                                     ; $5f74: $71
	ld   l, e                                        ; $5f75: $6b
	ld   e, l                                        ; $5f76: $5d
	inc  bc                                          ; $5f77: $03
	ld   l, l                                        ; $5f78: $6d
	dec  b                                           ; $5f79: $05
	add  hl, de                                      ; $5f7a: $19
	dec  c                                           ; $5f7b: $0d
	dec  b                                           ; $5f7c: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f7d: $cf
	adc  a                                           ; $5f7e: $8f
	sbc  c                                           ; $5f7f: $99
	ld   l, d                                        ; $5f80: $6a
	ld   a, [$000d]                                  ; $5f81: $fa $0d $00
	ld   a, [bc]                                     ; $5f84: $0a
	dec  h                                           ; $5f85: $25
	ld   b, $07                                      ; $5f86: $06 $07
	ld   c, d                                        ; $5f88: $4a
	inc  b                                           ; $5f89: $04
	inc  bc                                          ; $5f8a: $03
	jr   nz, jr_048_5f8e                             ; $5f8b: $20 $01

	nop                                              ; $5f8d: $00

jr_048_5f8e:
	jr   nz, jr_048_5f90                             ; $5f8e: $20 $00

jr_048_5f90:
	inc  e                                           ; $5f90: $1c
	ld   b, $03                                      ; $5f91: $06 $03
	inc  bc                                          ; $5f93: $03
	ld   bc, $7167                                   ; $5f94: $01 $67 $71
	ld   h, b                                        ; $5f97: $60
	ld   d, [hl]                                     ; $5f98: $56
	inc  bc                                          ; $5f99: $03
	ld   h, l                                        ; $5f9a: $65
	inc  bc                                          ; $5f9b: $03
	rst  $30                                         ; $5f9c: $f7
	add  h                                           ; $5f9d: $84
	sbc  b                                           ; $5f9e: $98
	ld   l, [hl]                                     ; $5f9f: $6e
	ld   a, b                                        ; $5fa0: $78
	ld   d, b                                        ; $5fa1: $50
	dec  c                                           ; $5fa2: $0d
	ld   [$fa00], sp                                 ; $5fa3: $08 $00 $fa
	ld   a, [$000d]                                  ; $5fa6: $fa $0d $00
	ld   a, [bc]                                     ; $5fa9: $0a
	inc  e                                           ; $5faa: $1c
	ld   b, $07                                      ; $5fab: $06 $07
	rlca                                             ; $5fad: $07
	ld   bc, $9a61                                   ; $5fae: $01 $61 $9a
	ld   a, b                                        ; $5fb1: $78
	sub  a                                           ; $5fb2: $97
	ld   d, b                                        ; $5fb3: $50
	ld   l, l                                        ; $5fb4: $6d
	ld   d, d                                        ; $5fb5: $52
	ld   a, h                                        ; $5fb6: $7c
	dec  c                                           ; $5fb7: $0d
	ld   b, $81                                      ; $5fb8: $06 $81
	dec  b                                           ; $5fba: $05
	ld   [hl], l                                     ; $5fbb: $75
	ld   [bc], a                                     ; $5fbc: $02
	or   [hl]                                        ; $5fbd: $b6
	inc  bc                                          ; $5fbe: $03
	ld   l, e                                        ; $5fbf: $6b
	dec  b                                           ; $5fc0: $05
	or   $03                                         ; $5fc1: $f6 $03
	ld   e, d                                        ; $5fc3: $5a
	dec  b                                           ; $5fc4: $05
	inc  d                                           ; $5fc5: $14
	ld   a, h                                        ; $5fc6: $7c
	dec  b                                           ; $5fc7: $05
	ld   l, c                                        ; $5fc8: $69
	ld   [bc], a                                     ; $5fc9: $02
	ld   a, c                                        ; $5fca: $79
	and  b                                           ; $5fcb: $a0
	dec  c                                           ; $5fcc: $0d
	ld   [bc], a                                     ; $5fcd: $02
	ret  nc                                          ; $5fce: $d0

	ld   d, [hl]                                     ; $5fcf: $56
	ld   [hl], h                                     ; $5fd0: $74
	sub  b                                           ; $5fd1: $90
	ld   d, d                                        ; $5fd2: $52
	ld   d, d                                        ; $5fd3: $52
	ld   e, c                                        ; $5fd4: $59
	sub  b                                           ; $5fd5: $90
	ld   a, b                                        ; $5fd6: $78
	ld   a, [$0dfa]                                  ; $5fd7: $fa $fa $0d
	nop                                              ; $5fda: $00
	ld   a, [bc]                                     ; $5fdb: $0a
	dec  b                                           ; $5fdc: $05
	ld   b, b                                        ; $5fdd: $40
	ld   b, a                                        ; $5fde: $47
	inc  bc                                          ; $5fdf: $03
	ld   b, a                                        ; $5fe0: $47
	ld   bc, $2801                                   ; $5fe1: $01 $01 $28
	nop                                              ; $5fe4: $00
	inc  e                                           ; $5fe5: $1c
	ld   b, $00                                      ; $5fe6: $06 $00
	nop                                              ; $5fe8: $00
	ld   bc, $9a6b                                   ; $5fe9: $01 $6b $9a
	ld   h, [hl]                                     ; $5fec: $66
	sub  c                                           ; $5fed: $91
	sbc  [hl]                                        ; $5fee: $9e
	inc  b                                           ; $5fef: $04
	adc  a                                           ; $5ff0: $8f
	inc  b                                           ; $5ff1: $04
	xor  d                                           ; $5ff2: $aa
	ld   a, h                                        ; $5ff3: $7c
	ld   [bc], a                                     ; $5ff4: $02
	or   d                                           ; $5ff5: $b2
	ld   [bc], a                                     ; $5ff6: $02
	xor  d                                           ; $5ff7: $aa
	ld   a, h                                        ; $5ff8: $7c
	inc  bc                                          ; $5ff9: $03
	ld   l, l                                        ; $5ffa: $6d
	dec  b                                           ; $5ffb: $05
	add  hl, de                                      ; $5ffc: $19
	dec  c                                           ; $5ffd: $0d
	ld   h, c                                        ; $5ffe: $61
	sbc  d                                           ; $5fff: $9a
	ld   a, c                                        ; $6000: $79
	ld   [hl], h                                     ; $6001: $74
	inc  bc                                          ; $6002: $03
	ld   a, [hl]                                     ; $6003: $7e
	dec  b                                           ; $6004: $05
	nop                                              ; $6005: $00
	ld   a, [$000d]                                  ; $6006: $fa $0d $00
	ld   a, [bc]                                     ; $6009: $0a
	dec  c                                           ; $600a: $0d
	nop                                              ; $600b: $00
	nop                                              ; $600c: $00
	rrca                                             ; $600d: $0f
	nop                                              ; $600e: $00
	ld   bc, $0f00                                   ; $600f: $01 $00 $0f
	ld   b, $00                                      ; $6012: $06 $00
	ld   bc, $5458                                   ; $6014: $01 $58 $54
	sbc  [hl]                                        ; $6017: $9e
	ld   d, d                                        ; $6018: $52
	ld   d, d                                        ; $6019: $52
	halt                                             ; $601a: $76
	sub  b                                           ; $601b: $90
	sbc  a                                           ; $601c: $9f
	dec  c                                           ; $601d: $0d
	ld   l, e                                        ; $601e: $6b
	and  c                                           ; $601f: $a1
	ld   h, [hl]                                     ; $6020: $66
	sub  c                                           ; $6021: $91
	sbc  [hl]                                        ; $6022: $9e
	ld   h, e                                        ; $6023: $63
	ld   [hl], c                                     ; $6024: $71
	ld   l, e                                        ; $6025: $6b
	ld   e, l                                        ; $6026: $5d
	inc  bc                                          ; $6027: $03
	ld   l, l                                        ; $6028: $6d
	dec  b                                           ; $6029: $05
	add  hl, de                                      ; $602a: $19
	dec  c                                           ; $602b: $0d
	dec  b                                           ; $602c: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $602d: $cf
	adc  a                                           ; $602e: $8f
	ld   [hl], c                                     ; $602f: $71
	ld   e, c                                        ; $6030: $59
	ld   a, [$000d]                                  ; $6031: $fa $0d $00
	ld   a, [bc]                                     ; $6034: $0a
	dec  h                                           ; $6035: $25
	ld   b, $07                                      ; $6036: $06 $07
	ld   c, d                                        ; $6038: $4a
	inc  b                                           ; $6039: $04
	inc  bc                                          ; $603a: $03
	jr   nz, jr_048_603e                             ; $603b: $20 $01

	nop                                              ; $603d: $00

jr_048_603e:
	jr   nz, jr_048_6040                             ; $603e: $20 $00

jr_048_6040:
	inc  e                                           ; $6040: $1c
	ld   b, $03                                      ; $6041: $06 $03
	inc  bc                                          ; $6043: $03
	ld   bc, $5252                                   ; $6044: $01 $52 $52
	ld   [bc], a                                     ; $6047: $02
	scf                                              ; $6048: $37
	ld   h, [hl]                                     ; $6049: $66
	ld   l, [hl]                                     ; $604a: $6e
	ld   l, d                                        ; $604b: $6a
	ld   a, [$080d]                                  ; $604c: $fa $0d $08
	nop                                              ; $604f: $00
	ld   a, [$0dfa]                                  ; $6050: $fa $fa $0d
	nop                                              ; $6053: $00
	ld   a, [bc]                                     ; $6054: $0a
	inc  e                                           ; $6055: $1c
	ld   b, $01                                      ; $6056: $06 $01
	ld   bc, $6b01                                   ; $6058: $01 $01 $6b
	sbc  d                                           ; $605b: $9a
	ld   h, [hl]                                     ; $605c: $66
	sub  c                                           ; $605d: $91
	sbc  [hl]                                        ; $605e: $9e
	inc  b                                           ; $605f: $04
	adc  a                                           ; $6060: $8f
	inc  b                                           ; $6061: $04
	xor  d                                           ; $6062: $aa
	ld   a, h                                        ; $6063: $7c
	ld   [bc], a                                     ; $6064: $02
	or   d                                           ; $6065: $b2
	ld   [bc], a                                     ; $6066: $02
	xor  d                                           ; $6067: $aa
	ld   a, h                                        ; $6068: $7c
	inc  bc                                          ; $6069: $03
	ld   l, l                                        ; $606a: $6d
	dec  b                                           ; $606b: $05
	add  hl, de                                      ; $606c: $19
	dec  c                                           ; $606d: $0d
	nop                                              ; $606e: $00
	dec  b                                           ; $606f: $05
	ld   b, b                                        ; $6070: $40
	ld   b, a                                        ; $6071: $47
	inc  bc                                          ; $6072: $03
	ld   b, a                                        ; $6073: $47
	ld   bc, $2801                                   ; $6074: $01 $01 $28
	nop                                              ; $6077: $00
	ld   bc, $9a61                                   ; $6078: $01 $61 $9a
	ld   a, c                                        ; $607b: $79
	ld   [hl], h                                     ; $607c: $74
	inc  bc                                          ; $607d: $03
	ld   a, [hl]                                     ; $607e: $7e
	dec  b                                           ; $607f: $05
	nop                                              ; $6080: $00
	ld   a, [$000d]                                  ; $6081: $fa $0d $00
	ld   a, [bc]                                     ; $6084: $0a
	dec  c                                           ; $6085: $0d
	nop                                              ; $6086: $00
	nop                                              ; $6087: $00
	rrca                                             ; $6088: $0f
	nop                                              ; $6089: $00
	ld   bc, $0e00                                   ; $608a: $01 $00 $0e
	ld   bc, $0702                                   ; $608d: $01 $02 $07
	add  hl, sp                                      ; $6090: $39
	add  hl, bc                                      ; $6091: $09
	inc  bc                                          ; $6092: $03
	jr   nz, jr_048_6096                             ; $6093: $20 $01

	ld   b, b                                        ; $6095: $40

jr_048_6096:
	dec  h                                           ; $6096: $25
	nop                                              ; $6097: $00
	dec  b                                           ; $6098: $05
	ld   b, b                                        ; $6099: $40
	ld   d, e                                        ; $609a: $53
	inc  bc                                          ; $609b: $03
	ld   d, e                                        ; $609c: $53
	ld   [bc], a                                     ; $609d: $02
	nop                                              ; $609e: $00
	inc  bc                                          ; $609f: $03
	ld   c, l                                        ; $60a0: $4d
	add  hl, hl                                      ; $60a1: $29
	add  hl, hl                                      ; $60a2: $29
	nop                                              ; $60a3: $00
	ld   bc, $ffff                                   ; $60a4: $01 $ff $ff
	ld   d, h                                        ; $60a7: $54
	db   $fc                                         ; $60a8: $fc
	and  c                                           ; $60a9: $a1
	rst  $38                                         ; $60aa: $ff
	rst  $38                                         ; $60ab: $ff
	dec  c                                           ; $60ac: $0d
	ld   a, b                                        ; $60ad: $78
	and  c                                           ; $60ae: $a1
	ld   l, [hl]                                     ; $60af: $6e
	ld   e, c                                        ; $60b0: $59
	inc  b                                           ; $60b1: $04
	dec  c                                           ; $60b2: $0d
	inc  bc                                          ; $60b3: $03
	cp   $5a                                         ; $60b4: $fe $5a
	ld   [bc], a                                     ; $60b6: $02
	jr   z, jr_048_610b                              ; $60b7: $28 $52

	ld   a, b                                        ; $60b9: $78
	rst  $38                                         ; $60ba: $ff
	rst  $38                                         ; $60bb: $ff
	dec  c                                           ; $60bc: $0d
	ld   [bc], a                                     ; $60bd: $02
	and  l                                           ; $60be: $a5
	inc  b                                           ; $60bf: $04
	xor  d                                           ; $60c0: $aa
	ld   a, h                                        ; $60c1: $7c
	inc  bc                                          ; $60c2: $03
	ld   l, l                                        ; $60c3: $6d
	dec  b                                           ; $60c4: $05
	add  hl, de                                      ; $60c5: $19
	ld   a, l                                        ; $60c6: $7d
	inc  bc                                          ; $60c7: $03
	and  a                                           ; $60c8: $a7
	adc  [hl]                                        ; $60c9: $8e
	ld   e, c                                        ; $60ca: $59
	ld   a, b                                        ; $60cb: $78
	sbc  a                                           ; $60cc: $9f
	dec  c                                           ; $60cd: $0d
	nop                                              ; $60ce: $00
	ld   a, [bc]                                     ; $60cf: $0a
	ld   b, $64                                      ; $60d0: $06 $64
	add  hl, bc                                      ; $60d2: $09
	ld   bc, $a502                                   ; $60d3: $01 $02 $a5
	inc  b                                           ; $60d6: $04
	xor  d                                           ; $60d7: $aa
	ld   a, l                                        ; $60d8: $7d
	ld   a, b                                        ; $60d9: $78
	and  c                                           ; $60da: $a1
	ld   l, [hl]                                     ; $60db: $6e
	ld   e, c                                        ; $60dc: $59
	inc  bc                                          ; $60dd: $03
	ld   l, l                                        ; $60de: $6d
	dec  b                                           ; $60df: $05
	add  hl, de                                      ; $60e0: $19
	ld   a, c                                        ; $60e1: $79
	dec  c                                           ; $60e2: $0d
	ld   [bc], a                                     ; $60e3: $02
	ld   a, a                                        ; $60e4: $7f
	ld   e, e                                        ; $60e5: $5b
	ld   l, l                                        ; $60e6: $6d
	ld   e, l                                        ; $60e7: $5d
	ld   a, b                                        ; $60e8: $78
	ld   d, d                                        ; $60e9: $52
	ld   a, b                                        ; $60ea: $78
	ld   d, b                                        ; $60eb: $50
	rst  $38                                         ; $60ec: $ff
	rst  $38                                         ; $60ed: $ff
	dec  c                                           ; $60ee: $0d
	inc  bc                                          ; $60ef: $03
	ld   l, l                                        ; $60f0: $6d
	dec  b                                           ; $60f1: $05
	add  hl, de                                      ; $60f2: $19
	rst  $38                                         ; $60f3: $ff
	rst  $38                                         ; $60f4: $ff
	inc  bc                                          ; $60f5: $03
	and  a                                           ; $60f6: $a7
	adc  [hl]                                        ; $60f7: $8e
	ld   e, c                                        ; $60f8: $59
	ld   a, b                                        ; $60f9: $78
	sbc  a                                           ; $60fa: $9f
	dec  c                                           ; $60fb: $0d
	nop                                              ; $60fc: $00
	ld   a, [bc]                                     ; $60fd: $0a
	inc  hl                                          ; $60fe: $23
	ld   c, b                                        ; $60ff: $48
	inc  d                                           ; $6100: $14
	ld   b, $01                                      ; $6101: $06 $01
	add  hl, bc                                      ; $6103: $09
	ld   e, $01                                      ; $6104: $1e $01
	xor  h                                           ; $6106: $ac
	push af                                          ; $6107: $f5
	bit  4, e                                        ; $6108: $cb $63
	and  c                                           ; $610a: $a1

jr_048_610b:
	sbc  [hl]                                        ; $610b: $9e
	dec  c                                           ; $610c: $0d
	ld   d, d                                        ; $610d: $52
	sub  a                                           ; $610e: $97
	ld   [hl], c                                     ; $610f: $71
	ld   h, l                                        ; $6110: $65
	sub  c                                           ; $6111: $91
	ld   d, d                                        ; $6112: $52
	adc  h                                           ; $6113: $8c
	ld   h, a                                        ; $6114: $67
	ld   e, c                                        ; $6115: $59
	ld   sp, hl                                      ; $6116: $f9
	dec  c                                           ; $6117: $0d
	nop                                              ; $6118: $00
	ld   a, [bc]                                     ; $6119: $0a
	rrca                                             ; $611a: $0f
	ld   b, $00                                      ; $611b: $06 $00
	ld   bc, $5250                                   ; $611d: $01 $50 $52
	sub  [hl]                                        ; $6120: $96
	sbc  a                                           ; $6121: $9f
	dec  c                                           ; $6122: $0d
	ld   l, a                                        ; $6123: $6f
	sub  l                                           ; $6124: $95
	ld   [hl], c                                     ; $6125: $71
	halt                                             ; $6126: $76
	inc  b                                           ; $6127: $04
	rla                                              ; $6128: $17
	ld   [hl], c                                     ; $6129: $71
	ld   [hl], h                                     ; $612a: $74
	ld   a, b                                        ; $612b: $78
	sbc  a                                           ; $612c: $9f
	dec  c                                           ; $612d: $0d
	nop                                              ; $612e: $00
	ld   a, [bc]                                     ; $612f: $0a
	inc  d                                           ; $6130: $14
	ld   a, [bc]                                     ; $6131: $0a
	ld   bc, $490e                                   ; $6132: $01 $0e $49
	inc  e                                           ; $6135: $1c
	ld   b, $01                                      ; $6136: $06 $01
	ld   bc, $9601                                   ; $6138: $01 $01 $96
	ld   e, b                                        ; $613b: $58
	sbc  [hl]                                        ; $613c: $9e
	ld   [$9f00], sp                                 ; $613d: $08 $00 $9f
	dec  c                                           ; $6140: $0d
	nop                                              ; $6141: $00
	ld   a, [bc]                                     ; $6142: $0a
	rlca                                             ; $6143: $07
	ld   e, b                                        ; $6144: $58
	ld   a, [bc]                                     ; $6145: $0a
	inc  bc                                          ; $6146: $03
	jr   nz, jr_048_614a                             ; $6147: $20 $01

	ld   b, b                                        ; $6149: $40

jr_048_614a:
	dec  h                                           ; $614a: $25
	nop                                              ; $614b: $00
	ld   bc, $ffff                                   ; $614c: $01 $ff $ff
	ld   d, b                                        ; $614f: $50
	sbc  b                                           ; $6150: $98
	sub  c                                           ; $6151: $91
	ld   sp, hl                                      ; $6152: $f9
	dec  c                                           ; $6153: $0d
	nop                                              ; $6154: $00
	inc  e                                           ; $6155: $1c
	ld   b, $05                                      ; $6156: $06 $05
	dec  b                                           ; $6158: $05
	ld   bc, $5477                                   ; $6159: $01 $77 $54
	ld   h, l                                        ; $615c: $65
	ld   l, l                                        ; $615d: $6d
	and  c                                           ; $615e: $a1
	ld   l, [hl]                                     ; $615f: $6e
	ld   sp, hl                                      ; $6160: $f9
	dec  c                                           ; $6161: $0d
	ld   a, b                                        ; $6162: $78
	and  c                                           ; $6163: $a1
	ld   l, [hl]                                     ; $6164: $6e
	ld   e, c                                        ; $6165: $59
	ld   [bc], a                                     ; $6166: $02
	ld   [hl], d                                     ; $6167: $72
	inc  bc                                          ; $6168: $03
	dec  bc                                          ; $6169: $0b
	sbc  l                                           ; $616a: $9d
	sbc  b                                           ; $616b: $98
	ld   d, d                                        ; $616c: $52
	ld   l, h                                        ; $616d: $6c
	sbc  a                                           ; $616e: $9f
	dec  c                                           ; $616f: $0d
	nop                                              ; $6170: $00
	ld   a, [bc]                                     ; $6171: $0a
	rrca                                             ; $6172: $0f
	nop                                              ; $6173: $00
	ld   bc, $7d01                                   ; $6174: $01 $01 $7d
	ld   d, d                                        ; $6177: $52
	sbc  [hl]                                        ; $6178: $9e
	ld   l, a                                        ; $6179: $6f
	sub  l                                           ; $617a: $95
	ld   [hl], c                                     ; $617b: $71
	halt                                             ; $617c: $76
	inc  b                                           ; $617d: $04
	dec  c                                           ; $617e: $0d
	inc  bc                                          ; $617f: $03
	cp   $5a                                         ; $6180: $fe $5a
	dec  c                                           ; $6182: $0d
	sbc  l                                           ; $6183: $9d
	sbc  c                                           ; $6184: $99
	ld   e, l                                        ; $6185: $5d
	ld   [hl], h                                     ; $6186: $74
	rst  $38                                         ; $6187: $ff
	rst  $38                                         ; $6188: $ff
	ld   [bc], a                                     ; $6189: $02
	and  l                                           ; $618a: $a5
	inc  b                                           ; $618b: $04
	xor  d                                           ; $618c: $aa
	ld   a, h                                        ; $618d: $7c
	inc  bc                                          ; $618e: $03
	ld   l, l                                        ; $618f: $6d
	dec  b                                           ; $6190: $05
	add  hl, de                                      ; $6191: $19
	ld   a, l                                        ; $6192: $7d
	dec  c                                           ; $6193: $0d
	inc  bc                                          ; $6194: $03
	and  a                                           ; $6195: $a7
	adc  h                                           ; $6196: $8c
	ld   l, c                                        ; $6197: $69
	ld   [hl], h                                     ; $6198: $74
	adc  c                                           ; $6199: $89
	ld   h, l                                        ; $619a: $65
	ld   d, d                                        ; $619b: $52
	ld   a, h                                        ; $619c: $7c
	ld   [hl], l                                     ; $619d: $75
	ld   h, a                                        ; $619e: $67
	ld   e, d                                        ; $619f: $5a
	rst  $38                                         ; $61a0: $ff
	rst  $38                                         ; $61a1: $ff
	dec  c                                           ; $61a2: $0d
	nop                                              ; $61a3: $00
	ld   a, [bc]                                     ; $61a4: $0a
	inc  e                                           ; $61a5: $1c
	ld   b, $00                                      ; $61a6: $06 $00
	nop                                              ; $61a8: $00
	ld   bc, $546b                                   ; $61a9: $01 $6b $54
	ld   e, c                                        ; $61ac: $59
	rst  $38                                         ; $61ad: $ff
	rst  $38                                         ; $61ae: $ff
	dec  c                                           ; $61af: $0d
	ld   l, e                                        ; $61b0: $6b
	and  c                                           ; $61b1: $a1
	ld   h, [hl]                                     ; $61b2: $66
	sub  c                                           ; $61b3: $91
	sbc  [hl]                                        ; $61b4: $9e
	ld   [bc], a                                     ; $61b5: $02
	and  l                                           ; $61b6: $a5
	inc  b                                           ; $61b7: $04
	xor  d                                           ; $61b8: $aa
	ld   a, h                                        ; $61b9: $7c
	inc  bc                                          ; $61ba: $03
	ld   l, l                                        ; $61bb: $6d
	dec  b                                           ; $61bc: $05
	add  hl, de                                      ; $61bd: $19
	ld   a, l                                        ; $61be: $7d
	dec  c                                           ; $61bf: $0d
	inc  bc                                          ; $61c0: $03
	and  a                                           ; $61c1: $a7
	adc  l                                           ; $61c2: $8d
	ld   a, c                                        ; $61c3: $79
	ld   h, a                                        ; $61c4: $67
	ld   [hl], c                                     ; $61c5: $71
	ld   e, c                                        ; $61c6: $59
	sbc  a                                           ; $61c7: $9f
	dec  c                                           ; $61c8: $0d
	nop                                              ; $61c9: $00
	ld   a, [bc]                                     ; $61ca: $0a
	inc  e                                           ; $61cb: $1c
	ld   b, $07                                      ; $61cc: $06 $07
	rlca                                             ; $61ce: $07
	ld   bc, $9a6b                                   ; $61cf: $01 $6b $9a
	ld   h, [hl]                                     ; $61d2: $66
	sub  c                                           ; $61d3: $91
	ld   d, b                                        ; $61d4: $50
	ld   a, b                                        ; $61d5: $78
	sbc  [hl]                                        ; $61d6: $9e
	ld   [$9f00], sp                                 ; $61d7: $08 $00 $9f
	dec  c                                           ; $61da: $0d
	inc  bc                                          ; $61db: $03
	ld   [hl], b                                     ; $61dc: $70
	ld   e, l                                        ; $61dd: $5d
	inc  bc                                          ; $61de: $03
	ld   sp, hl                                      ; $61df: $f9
	ld   l, c                                        ; $61e0: $69
	sub  [hl]                                        ; $61e1: $96
	ld   a, [$0dfa]                                  ; $61e2: $fa $fa $0d
	nop                                              ; $61e5: $00
	ld   a, [bc]                                     ; $61e6: $0a
	dec  c                                           ; $61e7: $0d
	nop                                              ; $61e8: $00
	nop                                              ; $61e9: $00
	rrca                                             ; $61ea: $0f
	nop                                              ; $61eb: $00
	ld   bc, $1e09                                   ; $61ec: $01 $09 $1e
	ld   b, $2f                                      ; $61ef: $06 $2f
	inc  bc                                          ; $61f1: $03
	inc  e                                           ; $61f2: $1c
	ld   b, $00                                      ; $61f3: $06 $00
	nop                                              ; $61f5: $00
	ld   bc, $a178                                   ; $61f6: $01 $78 $a1
	ld   e, c                                        ; $61f9: $59
	inc  b                                           ; $61fa: $04
	di                                               ; $61fb: $f3
	ld   [bc], a                                     ; $61fc: $02
	jp   $f959                                       ; $61fd: $c3 $59 $f9


	dec  c                                           ; $6200: $0d
	sub  b                                           ; $6201: $90
	ld   d, h                                        ; $6202: $54
	ld   h, a                                        ; $6203: $67
	ld   e, [hl]                                     ; $6204: $5e
	inc  bc                                          ; $6205: $03
	ld   l, l                                        ; $6206: $6d
	dec  b                                           ; $6207: $05
	add  hl, de                                      ; $6208: $19
	ld   a, h                                        ; $6209: $7c
	inc  bc                                          ; $620a: $03
	ld   l, a                                        ; $620b: $6f
	ld   [bc], a                                     ; $620c: $02
	xor  c                                           ; $620d: $a9
	ld   l, [hl]                                     ; $620e: $6e
	ld   l, d                                        ; $620f: $6a
	sbc  a                                           ; $6210: $9f
	dec  c                                           ; $6211: $0d
	nop                                              ; $6212: $00
	ld   a, [bc]                                     ; $6213: $0a
	rrca                                             ; $6214: $0f
	nop                                              ; $6215: $00
	ld   bc, $7d01                                   ; $6216: $01 $01 $7d
	ld   d, d                                        ; $6219: $52
	rst  $38                                         ; $621a: $ff
	rst  $38                                         ; $621b: $ff
	ld   d, b                                        ; $621c: $50
	ld   a, h                                        ; $621d: $7c
	rst  $38                                         ; $621e: $ff
	rst  $38                                         ; $621f: $ff
	dec  c                                           ; $6220: $0d
	ld   [bc], a                                     ; $6221: $02
	and  l                                           ; $6222: $a5
	inc  b                                           ; $6223: $04
	xor  d                                           ; $6224: $aa
	ld   a, h                                        ; $6225: $7c
	inc  bc                                          ; $6226: $03
	ld   l, l                                        ; $6227: $6d
	dec  b                                           ; $6228: $05
	add  hl, de                                      ; $6229: $19
	and  b                                           ; $622a: $a0
	inc  bc                                          ; $622b: $03
	and  a                                           ; $622c: $a7
	adc  h                                           ; $622d: $8c
	ld   l, c                                        ; $622e: $69
	ld   [hl], h                                     ; $622f: $74
	dec  c                                           ; $6230: $0d
	inc  b                                           ; $6231: $04
	db   $e3                                         ; $6232: $e3
	ld   h, l                                        ; $6233: $65
	ld   d, d                                        ; $6234: $52
	ld   a, h                                        ; $6235: $7c
	ld   [hl], l                                     ; $6236: $75
	ld   h, a                                        ; $6237: $67
	ld   e, d                                        ; $6238: $5a
	rst  $38                                         ; $6239: $ff
	rst  $38                                         ; $623a: $ff
	dec  c                                           ; $623b: $0d
	nop                                              ; $623c: $00
	ld   a, [bc]                                     ; $623d: $0a
	inc  e                                           ; $623e: $1c
	ld   b, $05                                      ; $623f: $06 $05
	dec  b                                           ; $6241: $05
	ld   bc, $a703                                   ; $6242: $01 $03 $a7
	adc  [hl]                                        ; $6245: $8e
	ld   a, [$0df9]                                  ; $6246: $fa $f9 $0d
	ld   l, e                                        ; $6249: $6b
	sbc  b                                           ; $624a: $98
	sub  c                                           ; $624b: $91
	adc  h                                           ; $624c: $8c
	ld   l, l                                        ; $624d: $6d
	ld   a, b                                        ; $624e: $78
	and  c                                           ; $624f: $a1
	ld   [hl], l                                     ; $6250: $75
	ld   sp, hl                                      ; $6251: $f9
	dec  c                                           ; $6252: $0d
	nop                                              ; $6253: $00
	ld   a, [bc]                                     ; $6254: $0a
	rrca                                             ; $6255: $0f
	nop                                              ; $6256: $00
	ld   bc, $5201                                   ; $6257: $01 $01 $52
	ld   d, [hl]                                     ; $625a: $56
	sbc  [hl]                                        ; $625b: $9e
	halt                                             ; $625c: $76
	ld   e, l                                        ; $625d: $5d
	ld   a, c                                        ; $625e: $79
	inc  b                                           ; $625f: $04
	di                                               ; $6260: $f3
	ld   [bc], a                                     ; $6261: $02
	jp   Jump_048_505a                               ; $6262: $c3 $5a $50


	sbc  c                                           ; $6265: $99
	dec  c                                           ; $6266: $0d
	sbc  l                                           ; $6267: $9d
	ld   e, a                                        ; $6268: $5f
	ld   [hl], l                                     ; $6269: $75
	sub  b                                           ; $626a: $90
	ld   a, b                                        ; $626b: $78
	ld   d, d                                        ; $626c: $52
	and  c                                           ; $626d: $a1
	ld   [hl], l                                     ; $626e: $75
	ld   h, a                                        ; $626f: $67
	ld   e, d                                        ; $6270: $5a
	rst  $38                                         ; $6271: $ff
	rst  $38                                         ; $6272: $ff
	dec  c                                           ; $6273: $0d
	nop                                              ; $6274: $00
	ld   a, [bc]                                     ; $6275: $0a
	rrca                                             ; $6276: $0f
	ld   b, $05                                      ; $6277: $06 $05
	dec  e                                           ; $6279: $1d
	ld   b, b                                        ; $627a: $40
	ld   d, $03                                      ; $627b: $16 $03
	ld   d, $01                                      ; $627d: $16 $01
	ld   [bc], a                                     ; $627f: $02
	add  hl, hl                                      ; $6280: $29
	nop                                              ; $6281: $00
	ld   bc, $ffff                                   ; $6282: $01 $ff $ff
	add  e                                           ; $6285: $83
	db   $fc                                         ; $6286: $fc
	and  c                                           ; $6287: $a1
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	adc  h                                           ; $628a: $8c
	sbc  [hl]                                        ; $628b: $9e
	ld   d, d                                        ; $628c: $52
	ld   d, d                                        ; $628d: $52
	ld   l, [hl]                                     ; $628e: $6e
	sbc  e                                           ; $628f: $9b
	sbc  a                                           ; $6290: $9f
	dec  c                                           ; $6291: $0d
	ld   l, e                                        ; $6292: $6b
	and  c                                           ; $6293: $a1
	ld   h, [hl]                                     ; $6294: $66
	sub  c                                           ; $6295: $91
	sbc  [hl]                                        ; $6296: $9e
	ld   [bc], a                                     ; $6297: $02
	and  l                                           ; $6298: $a5
	inc  b                                           ; $6299: $04
	xor  d                                           ; $629a: $aa
	ld   a, h                                        ; $629b: $7c
	inc  bc                                          ; $629c: $03
	ld   l, l                                        ; $629d: $6d
	dec  b                                           ; $629e: $05
	add  hl, de                                      ; $629f: $19
	ld   a, l                                        ; $62a0: $7d
	dec  c                                           ; $62a1: $0d
	inc  bc                                          ; $62a2: $03
	and  a                                           ; $62a3: $a7
	adc  l                                           ; $62a4: $8d
	ld   [hl], c                                     ; $62a5: $71
	ld   [hl], h                                     ; $62a6: $74
	ld   h, c                                        ; $62a7: $61
	halt                                             ; $62a8: $76
	ld   a, c                                        ; $62a9: $79
	ld   h, l                                        ; $62aa: $65
	ld   [hl], h                                     ; $62ab: $74
	ld   e, b                                        ; $62ac: $58
	ld   e, l                                        ; $62ad: $5d
	ld   l, d                                        ; $62ae: $6a
	sbc  a                                           ; $62af: $9f
	dec  c                                           ; $62b0: $0d
	nop                                              ; $62b1: $00
	ld   a, [bc]                                     ; $62b2: $0a
	ld   bc, $a16b                                   ; $62b3: $01 $6b $a1
	ld   h, [hl]                                     ; $62b6: $66
	sub  c                                           ; $62b7: $91
	ld   d, b                                        ; $62b8: $50
	ld   a, b                                        ; $62b9: $78
	sbc  a                                           ; $62ba: $9f
	dec  c                                           ; $62bb: $0d
	nop                                              ; $62bc: $00
	ld   a, [bc]                                     ; $62bd: $0a
	dec  c                                           ; $62be: $0d
	nop                                              ; $62bf: $00
	nop                                              ; $62c0: $00
	rrca                                             ; $62c1: $0f
	nop                                              ; $62c2: $00
	ld   bc, $1e09                                   ; $62c3: $01 $09 $1e
	ld   b, $2f                                      ; $62c6: $06 $2f
	inc  bc                                          ; $62c8: $03
	nop                                              ; $62c9: $00
	ld   [bc], a                                     ; $62ca: $02
	ld   b, $01                                      ; $62cb: $06 $01
	dec  b                                           ; $62cd: $05
	jr   nz, jr_048_62d0                             ; $62ce: $20 $00

jr_048_62d0:
	rrca                                             ; $62d0: $0f
	nop                                              ; $62d1: $00
	ld   bc, $0706                                   ; $62d2: $01 $06 $07
	nop                                              ; $62d5: $00
	ld   [bc], a                                     ; $62d6: $02
	rlca                                             ; $62d7: $07
	ld   b, b                                        ; $62d8: $40
	ld   [$8004], sp                                 ; $62d9: $08 $04 $80
	add  $00                                         ; $62dc: $c6 $00
	ld   c, $7a                                      ; $62de: $0e $7a
	rlca                                             ; $62e0: $07
	db   $ec                                         ; $62e1: $ec
	ld   bc, $2003                                   ; $62e2: $01 $03 $20
	ld   bc, $2320                                   ; $62e5: $01 $20 $23
	nop                                              ; $62e8: $00
	rlca                                             ; $62e9: $07
	ld   e, d                                        ; $62ea: $5a
	ld   bc, $5203                                   ; $62eb: $01 $03 $52
	ld   [bc], a                                     ; $62ee: $02
	nop                                              ; $62ef: $00
	inc  bc                                          ; $62f0: $03
	ld   c, h                                        ; $62f1: $4c
	add  hl, hl                                      ; $62f2: $29
	add  hl, hl                                      ; $62f3: $29
	ld   bc, $2501                                   ; $62f4: $01 $01 $25
	nop                                              ; $62f7: $00
	rlca                                             ; $62f8: $07
	ld   e, d                                        ; $62f9: $5a
	ld   bc, $8004                                   ; $62fa: $01 $04 $80
	daa                                              ; $62fd: $27
	inc  b                                           ; $62fe: $04
	add  b                                           ; $62ff: $80
	ld   [hl], $01                                   ; $6300: $36 $01
	nop                                              ; $6302: $00
	jr   nz, @+$1e                                   ; $6303: $20 $1c

	inc  bc                                          ; $6305: $03
	ld   e, d                                        ; $6306: $5a
	ld   [bc], a                                     ; $6307: $02
	nop                                              ; $6308: $00
	jr   nz, jr_048_6327                             ; $6309: $20 $1c

	nop                                              ; $630b: $00
	rlca                                             ; $630c: $07
	ld   l, h                                        ; $630d: $6c
	nop                                              ; $630e: $00
	inc  bc                                          ; $630f: $03
	ld   b, [hl]                                     ; $6310: $46
	ld   bc, $2000                                   ; $6311: $01 $00 $20
	nop                                              ; $6314: $00
	rlca                                             ; $6315: $07
	reti                                             ; $6316: $d9


	inc  b                                           ; $6317: $04
	inc  bc                                          ; $6318: $03
	ld   b, [hl]                                     ; $6319: $46
	ld   bc, $2501                                   ; $631a: $01 $01 $25
	inc  bc                                          ; $631d: $03
	ld   b, [hl]                                     ; $631e: $46
	ld   bc, $2302                                   ; $631f: $01 $02 $23
	inc  e                                           ; $6322: $1c
	nop                                              ; $6323: $00
	rlca                                             ; $6324: $07
	ld   a, [hl]                                     ; $6325: $7e
	dec  b                                           ; $6326: $05

jr_048_6327:
	inc  bc                                          ; $6327: $03
	ld   b, [hl]                                     ; $6328: $46
	ld   bc, $2503                                   ; $6329: $01 $03 $25
	inc  bc                                          ; $632c: $03
	ld   b, [hl]                                     ; $632d: $46
	ld   bc, $2305                                   ; $632e: $01 $05 $23
	inc  e                                           ; $6331: $1c
	nop                                              ; $6332: $00
	rlca                                             ; $6333: $07
	and  $06                                         ; $6334: $e6 $06
	inc  bc                                          ; $6336: $03
	ld   b, [hl]                                     ; $6337: $46
	ld   bc, $2506                                   ; $6338: $01 $06 $25
	nop                                              ; $633b: $00
	rrca                                             ; $633c: $0f
	nop                                              ; $633d: $00
	ld   bc, $050d                                   ; $633e: $01 $0d $05
	nop                                              ; $6341: $00
	ld   [bc], a                                     ; $6342: $02
	ld   bc, $a161                                   ; $6343: $01 $61 $a1
	ld   a, c                                        ; $6346: $79
	ld   l, a                                        ; $6347: $6f
	ld   a, l                                        ; $6348: $7d
	sbc  [hl]                                        ; $6349: $9e
	ld   [bc], a                                     ; $634a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $634b: $cf
	dec  b                                           ; $634c: $05
	ld   a, [de]                                     ; $634d: $1a
	ld   h, e                                        ; $634e: $63
	and  c                                           ; $634f: $a1
	sbc  a                                           ; $6350: $9f
	dec  c                                           ; $6351: $0d
	inc  bc                                          ; $6352: $03
	ld   l, l                                        ; $6353: $6d
	dec  b                                           ; $6354: $05
	add  hl, de                                      ; $6355: $19
	and  b                                           ; $6356: $a0
	ld   e, b                                        ; $6357: $58
	ld   [bc], a                                     ; $6358: $02
	add  b                                           ; $6359: $80
	ld   d, d                                        ; $635a: $52
	ld   [hl], l                                     ; $635b: $75
	ld   e, e                                        ; $635c: $5b
	adc  h                                           ; $635d: $8c
	ld   h, a                                        ; $635e: $67
	dec  c                                           ; $635f: $0d
	ld   [hl], l                                     ; $6360: $75
	ld   h, l                                        ; $6361: $65
	sub  l                                           ; $6362: $95
	ld   d, h                                        ; $6363: $54
	ld   e, c                                        ; $6364: $59
	ld   sp, hl                                      ; $6365: $f9
	dec  c                                           ; $6366: $0d
	nop                                              ; $6367: $00
	ld   a, [bc]                                     ; $6368: $0a
	inc  e                                           ; $6369: $1c
	dec  b                                           ; $636a: $05
	dec  b                                           ; $636b: $05
	dec  b                                           ; $636c: $05
	ld   bc, $7196                                   ; $636d: $01 $96 $71
	ld   h, l                                        ; $6370: $65
	sub  c                                           ; $6371: $91
	ld   a, [$8c10]                                  ; $6372: $fa $10 $8c
	ld   e, c                                        ; $6375: $59
	ld   h, l                                        ; $6376: $65
	halt                                             ; $6377: $76
	ld   e, e                                        ; $6378: $5b
	sbc  a                                           ; $6379: $9f
	dec  c                                           ; $637a: $0d
	and  a                                           ; $637b: $a7
	jp   nz, $037c                                   ; $637c: $c2 $7c $03

	ld   l, l                                        ; $637f: $6d
	dec  b                                           ; $6380: $05
	add  hl, de                                      ; $6381: $19
	ld   a, l                                        ; $6382: $7d
	sbc  [hl]                                        ; $6383: $9e
	ld   b, $58                                      ; $6384: $06 $58
	inc  b                                           ; $6386: $04
	ld   h, c                                        ; $6387: $61
	inc  bc                                          ; $6388: $03
	cp   $02                                         ; $6389: $fe $02
	ld   a, e                                        ; $638b: $7b
	sub  d                                           ; $638c: $92
	sbc  a                                           ; $638d: $9f
	dec  c                                           ; $638e: $0d
	nop                                              ; $638f: $00
	ld   a, [bc]                                     ; $6390: $0a
	ld   bc, $7c61                                   ; $6391: $01 $61 $7c
	inc  bc                                          ; $6394: $03
	ld   l, l                                        ; $6395: $6d
	dec  b                                           ; $6396: $05
	add  hl, de                                      ; $6397: $19
	ld   [hl], l                                     ; $6398: $75
	sbc  [hl]                                        ; $6399: $9e
	ld   [$7d00], sp                                 ; $639a: $08 $00 $7d
	and  c                                           ; $639d: $a1
	ld   a, h                                        ; $639e: $7c
	dec  c                                           ; $639f: $0d
	inc  b                                           ; $63a0: $04
	dec  hl                                          ; $63a1: $2b
	dec  b                                           ; $63a2: $05
	ld   a, [bc]                                     ; $63a3: $0a
	and  b                                           ; $63a4: $a0
	and  e                                           ; $63a5: $a3
	call nz, Call_048_65d8                           ; $63a6: $c4 $d8 $65
	ld   [hl], h                                     ; $63a9: $74
	sub  b                                           ; $63aa: $90
	sub  a                                           ; $63ab: $97
	ld   e, b                                        ; $63ac: $58
	ld   d, h                                        ; $63ad: $54
	dec  c                                           ; $63ae: $0d
	ld   l, a                                        ; $63af: $6f
	sub  e                                           ; $63b0: $93
	ei                                               ; $63b1: $fb
	sbc  l                                           ; $63b2: $9d
	ld   e, a                                        ; $63b3: $5f
	sub  d                                           ; $63b4: $92
	sbc  a                                           ; $63b5: $9f
	dec  c                                           ; $63b6: $0d
	nop                                              ; $63b7: $00
	ld   a, [bc]                                     ; $63b8: $0a
	inc  e                                           ; $63b9: $1c
	dec  b                                           ; $63ba: $05
	nop                                              ; $63bb: $00
	nop                                              ; $63bc: $00
	ld   bc, $7889                                   ; $63bd: $01 $89 $78
	sbc  [hl]                                        ; $63c0: $9e
	dec  b                                           ; $63c1: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63c2: $cf
	adc  a                                           ; $63c3: $8f
	sbc  c                                           ; $63c4: $99
	ld   [hl], l                                     ; $63c5: $75
	sbc  a                                           ; $63c6: $9f
	dec  c                                           ; $63c7: $0d
	nop                                              ; $63c8: $00
	ld   a, [bc]                                     ; $63c9: $0a
	dec  h                                           ; $63ca: $25
	dec  b                                           ; $63cb: $05
	rlca                                             ; $63cc: $07
	jp   hl                                          ; $63cd: $e9


	inc  bc                                          ; $63ce: $03
	inc  bc                                          ; $63cf: $03
	jr   nz, jr_048_63d3                             ; $63d0: $20 $01

	nop                                              ; $63d2: $00

jr_048_63d3:
	jr   nz, jr_048_63d5                             ; $63d3: $20 $00

jr_048_63d5:
	inc  e                                           ; $63d5: $1c
	dec  b                                           ; $63d6: $05
	nop                                              ; $63d7: $00
	nop                                              ; $63d8: $00
	ld   bc, $0458                                   ; $63d9: $01 $58 $04
	ld   a, e                                        ; $63dc: $7b
	sbc  d                                           ; $63dd: $9a
	ld   h, e                                        ; $63de: $63
	and  c                                           ; $63df: $a1
	sbc  a                                           ; $63e0: $9f
	dec  c                                           ; $63e1: $0d
	inc  bc                                          ; $63e2: $03
	inc  c                                           ; $63e3: $0c
	adc  a                                           ; $63e4: $8f
	ld   [hl], h                                     ; $63e5: $74
	ld   a, c                                        ; $63e6: $79
	ld   h, l                                        ; $63e7: $65
	ld   [hl], h                                     ; $63e8: $74
	ld   a, l                                        ; $63e9: $7d
	sbc  [hl]                                        ; $63ea: $9e
	adc  h                                           ; $63eb: $8c
	ld   l, b                                        ; $63ec: $68
	adc  h                                           ; $63ed: $8c
	ld   l, b                                        ; $63ee: $68
	dec  c                                           ; $63ef: $0d
	sub  d                                           ; $63f0: $92
	ld   [hl], c                                     ; $63f1: $71
	ld   l, l                                        ; $63f2: $6d
	ld   [hl], l                                     ; $63f3: $75
	sbc  a                                           ; $63f4: $9f
	dec  c                                           ; $63f5: $0d
	nop                                              ; $63f6: $00
	ld   a, [bc]                                     ; $63f7: $0a
	ld   bc, $7889                                   ; $63f8: $01 $89 $78
	sbc  [hl]                                        ; $63fb: $9e
	inc  b                                           ; $63fc: $04
	adc  a                                           ; $63fd: $8f
	inc  b                                           ; $63fe: $04
	xor  d                                           ; $63ff: $aa
	ld   a, h                                        ; $6400: $7c
	ld   [bc], a                                     ; $6401: $02
	or   d                                           ; $6402: $b2
	ld   [bc], a                                     ; $6403: $02
	xor  d                                           ; $6404: $aa
	ld   a, h                                        ; $6405: $7c
	inc  bc                                          ; $6406: $03
	ld   l, l                                        ; $6407: $6d
	dec  b                                           ; $6408: $05
	add  hl, de                                      ; $6409: $19
	dec  c                                           ; $640a: $0d
	nop                                              ; $640b: $00
	dec  b                                           ; $640c: $05
	ld   b, b                                        ; $640d: $40
	ld   b, [hl]                                     ; $640e: $46
	inc  bc                                          ; $640f: $03
	ld   b, [hl]                                     ; $6410: $46
	ld   bc, $2801                                   ; $6411: $01 $01 $28
	nop                                              ; $6414: $00
	ld   bc, $9a61                                   ; $6415: $01 $61 $9a
	ld   a, c                                        ; $6418: $79
	ld   [hl], h                                     ; $6419: $74
	inc  bc                                          ; $641a: $03
	ld   a, [hl]                                     ; $641b: $7e
	dec  b                                           ; $641c: $05
	nop                                              ; $641d: $00
	sub  d                                           ; $641e: $92
	sbc  a                                           ; $641f: $9f
	dec  c                                           ; $6420: $0d
	nop                                              ; $6421: $00
	ld   a, [bc]                                     ; $6422: $0a
	dec  c                                           ; $6423: $0d
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	rrca                                             ; $6426: $0f
	nop                                              ; $6427: $00
	ld   bc, $0f00                                   ; $6428: $01 $00 $0f
	nop                                              ; $642b: $00
	ld   bc, $050d                                   ; $642c: $01 $0d $05
	rlca                                             ; $642f: $07
	ld   [bc], a                                     ; $6430: $02
	ld   bc, $a161                                   ; $6431: $01 $61 $a1
	ld   a, c                                        ; $6434: $79
	ld   l, a                                        ; $6435: $6f
	ld   a, l                                        ; $6436: $7d
	sbc  [hl]                                        ; $6437: $9e
	ld   [bc], a                                     ; $6438: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6439: $cf
	dec  b                                           ; $643a: $05
	ld   a, [de]                                     ; $643b: $1a
	ld   h, e                                        ; $643c: $63
	and  c                                           ; $643d: $a1
	sbc  a                                           ; $643e: $9f
	dec  c                                           ; $643f: $0d
	inc  bc                                          ; $6440: $03
	ld   l, l                                        ; $6441: $6d
	dec  b                                           ; $6442: $05
	add  hl, de                                      ; $6443: $19
	and  b                                           ; $6444: $a0
	ld   e, b                                        ; $6445: $58
	ld   [bc], a                                     ; $6446: $02
	add  b                                           ; $6447: $80
	ld   d, d                                        ; $6448: $52
	ld   [hl], l                                     ; $6449: $75
	ld   e, e                                        ; $644a: $5b
	adc  h                                           ; $644b: $8c
	ld   h, a                                        ; $644c: $67
	dec  c                                           ; $644d: $0d
	ld   [hl], l                                     ; $644e: $75
	ld   h, l                                        ; $644f: $65
	sub  l                                           ; $6450: $95
	ld   d, h                                        ; $6451: $54
	ld   e, c                                        ; $6452: $59
	ld   sp, hl                                      ; $6453: $f9
	dec  c                                           ; $6454: $0d
	nop                                              ; $6455: $00
	ld   a, [bc]                                     ; $6456: $0a
	rrca                                             ; $6457: $0f
	dec  b                                           ; $6458: $05
	rlca                                             ; $6459: $07
	ld   bc, $ffff                                   ; $645a: $01 $ff $ff
	ld   d, [hl]                                     ; $645d: $56
	ld   d, [hl]                                     ; $645e: $56
	ld   e, a                                        ; $645f: $5f
	ld   [hl], a                                     ; $6460: $77
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	dec  c                                           ; $6463: $0d
	nop                                              ; $6464: $00
	dec  b                                           ; $6465: $05
	ld   b, b                                        ; $6466: $40
	ld   d, d                                        ; $6467: $52
	ld   bc, $0000                                   ; $6468: $01 $00 $00
	ld   bc, $7889                                   ; $646b: $01 $89 $78
	sbc  [hl]                                        ; $646e: $9e
	ld   a, l                                        ; $646f: $7d
	ld   h, [hl]                                     ; $6470: $66
	adc  a                                           ; $6471: $8f
	sbc  c                                           ; $6472: $99
	ld   [hl], l                                     ; $6473: $75
	sbc  a                                           ; $6474: $9f
	dec  c                                           ; $6475: $0d
	nop                                              ; $6476: $00
	ld   a, [bc]                                     ; $6477: $0a
	dec  h                                           ; $6478: $25
	dec  b                                           ; $6479: $05
	rlca                                             ; $647a: $07
	jp   hl                                          ; $647b: $e9


	inc  bc                                          ; $647c: $03
	inc  bc                                          ; $647d: $03
	jr   nz, jr_048_6481                             ; $647e: $20 $01

	nop                                              ; $6480: $00

jr_048_6481:
	jr   nz, jr_048_6483                             ; $6481: $20 $00

jr_048_6483:
	inc  e                                           ; $6483: $1c
	dec  b                                           ; $6484: $05
	rlca                                             ; $6485: $07
	rlca                                             ; $6486: $07
	ld   bc, $0458                                   ; $6487: $01 $58 $04
	ld   a, e                                        ; $648a: $7b
	sbc  d                                           ; $648b: $9a
	ld   h, e                                        ; $648c: $63
	and  c                                           ; $648d: $a1
	rst  $38                                         ; $648e: $ff
	rst  $38                                         ; $648f: $ff
	dec  c                                           ; $6490: $0d
	nop                                              ; $6491: $00
	ld   a, [bc]                                     ; $6492: $0a
	dec  c                                           ; $6493: $0d
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	rrca                                             ; $6496: $0f
	nop                                              ; $6497: $00
	ld   bc, $4005                                   ; $6498: $01 $05 $40
	ld   b, [hl]                                     ; $649b: $46
	inc  bc                                          ; $649c: $03
	ld   b, [hl]                                     ; $649d: $46
	ld   bc, $2801                                   ; $649e: $01 $01 $28
	nop                                              ; $64a1: $00
	ld   bc, $ffff                                   ; $64a2: $01 $ff $ff
	rst  $38                                         ; $64a5: $ff
	rst  $38                                         ; $64a6: $ff
	ld   [bc], a                                     ; $64a7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64a8: $cf
	dec  b                                           ; $64a9: $05
	ld   a, [de]                                     ; $64aa: $1a
	ld   h, e                                        ; $64ab: $63
	and  c                                           ; $64ac: $a1
	sbc  [hl]                                        ; $64ad: $9e
	dec  c                                           ; $64ae: $0d
	ld   e, e                                        ; $64af: $5b
	ld   h, b                                        ; $64b0: $60
	and  c                                           ; $64b1: $a1
	ld   [bc], a                                     ; $64b2: $02
	jr   z, jr_048_6507                              ; $64b3: $28 $52

	ld   l, h                                        ; $64b5: $6c
	rst  $38                                         ; $64b6: $ff
	rst  $38                                         ; $64b7: $ff
	dec  c                                           ; $64b8: $0d
	nop                                              ; $64b9: $00
	ld   a, [bc]                                     ; $64ba: $0a
	nop                                              ; $64bb: $00
	inc  e                                           ; $64bc: $1c
	dec  b                                           ; $64bd: $05
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	ld   [bc], a                                     ; $64c0: $02
	dec  b                                           ; $64c1: $05
	ld   b, b                                        ; $64c2: $40
	ld   d, d                                        ; $64c3: $52
	ld   bc, $0000                                   ; $64c4: $01 $00 $00
	ld   bc, $a161                                   ; $64c7: $01 $61 $a1
	ld   a, c                                        ; $64ca: $79
	ld   l, a                                        ; $64cb: $6f
	ld   a, l                                        ; $64cc: $7d
	rst  $38                                         ; $64cd: $ff
	rst  $38                                         ; $64ce: $ff
	and  c                                           ; $64cf: $a1
	ld   sp, hl                                      ; $64d0: $f9
	dec  c                                           ; $64d1: $0d
	nop                                              ; $64d2: $00
	inc  e                                           ; $64d3: $1c
	dec  b                                           ; $64d4: $05
	inc  bc                                          ; $64d5: $03
	inc  bc                                          ; $64d6: $03
	ld   bc, $a178                                   ; $64d7: $01 $78 $a1
	sub  d                                           ; $64da: $92
	sbc  [hl]                                        ; $64db: $9e
	ld   d, [hl]                                     ; $64dc: $56
	sub  a                                           ; $64dd: $97
	ld   d, d                                        ; $64de: $52
	ld   [bc], a                                     ; $64df: $02
	ld   [hl], d                                     ; $64e0: $72
	inc  bc                                          ; $64e1: $03
	dec  bc                                          ; $64e2: $0b
	dec  c                                           ; $64e3: $0d
	sbc  l                                           ; $64e4: $9d
	sbc  c                                           ; $64e5: $99
	ld   d, d                                        ; $64e6: $52
	sub  d                                           ; $64e7: $92
	ld   a, b                                        ; $64e8: $78
	ld   d, d                                        ; $64e9: $52
	ld   e, c                                        ; $64ea: $59
	sbc  a                                           ; $64eb: $9f
	dec  c                                           ; $64ec: $0d
	nop                                              ; $64ed: $00
	ld   a, [bc]                                     ; $64ee: $0a
	inc  e                                           ; $64ef: $1c
	dec  b                                           ; $64f0: $05
	ld   [bc], a                                     ; $64f1: $02
	ld   [bc], a                                     ; $64f2: $02
	ld   bc, $a502                                   ; $64f3: $01 $02 $a5
	ld   [bc], a                                     ; $64f6: $02
	sub  e                                           ; $64f7: $93
	ld   a, h                                        ; $64f8: $7c
	inc  bc                                          ; $64f9: $03
	ld   l, l                                        ; $64fa: $6d
	dec  b                                           ; $64fb: $05
	add  hl, de                                      ; $64fc: $19
	ld   a, l                                        ; $64fd: $7d
	inc  bc                                          ; $64fe: $03
	and  a                                           ; $64ff: $a7
	and  c                                           ; $6500: $a1
	ld   l, [hl]                                     ; $6501: $6e
	inc  b                                           ; $6502: $04
	ld   a, b                                        ; $6503: $78
	ld   e, d                                        ; $6504: $5a
	dec  c                                           ; $6505: $0d
	ld   d, [hl]                                     ; $6506: $56

jr_048_6507:
	ld   d, [hl]                                     ; $6507: $56
	and  c                                           ; $6508: $a1
	halt                                             ; $6509: $76
	ld   l, a                                        ; $650a: $6f
	sub  c                                           ; $650b: $91
	ld   d, h                                        ; $650c: $54
	ld   e, c                                        ; $650d: $59
	ld   sp, hl                                      ; $650e: $f9
	dec  c                                           ; $650f: $0d
	nop                                              ; $6510: $00
	ld   a, [bc]                                     ; $6511: $0a
	jr   jr_048_6516                                 ; $6512: $18 $02

	nop                                              ; $6514: $00
	inc  bc                                          ; $6515: $03

jr_048_6516:
	and  a                                           ; $6516: $a7
	adc  [hl]                                        ; $6517: $8e
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	ld   e, d                                        ; $651a: $5a
	and  c                                           ; $651b: $a1
	ld   a, [hl]                                     ; $651c: $7e
	sbc  c                                           ; $651d: $99
	nop                                              ; $651e: $00
	ld   bc, $6207                                   ; $651f: $01 $07 $62
	ld   [bc], a                                     ; $6522: $02
	ld   [bc], a                                     ; $6523: $02
	ld   [bc], a                                     ; $6524: $02
	ld   bc, $2000                                   ; $6525: $01 $00 $20
	nop                                              ; $6528: $00
	rlca                                             ; $6529: $07
	inc  de                                          ; $652a: $13
	inc  bc                                          ; $652b: $03
	ld   [bc], a                                     ; $652c: $02
	ld   [bc], a                                     ; $652d: $02
	ld   bc, $2001                                   ; $652e: $01 $01 $20
	nop                                              ; $6531: $00
	rrca                                             ; $6532: $0f
	nop                                              ; $6533: $00
	ld   bc, $6701                                   ; $6534: $01 $01 $67
	adc  l                                           ; $6537: $8d
	adc  h                                           ; $6538: $8c
	ld   l, c                                        ; $6539: $69
	and  c                                           ; $653a: $a1
	rst  $38                                         ; $653b: $ff
	rst  $38                                         ; $653c: $ff
	dec  c                                           ; $653d: $0d
	ld   l, e                                        ; $653e: $6b
	sbc  d                                           ; $653f: $9a
	ld   [hl], l                                     ; $6540: $75
	ld   a, l                                        ; $6541: $7d
	sbc  [hl]                                        ; $6542: $9e
	ld   [bc], a                                     ; $6543: $02
	and  l                                           ; $6544: $a5
	inc  b                                           ; $6545: $04
	xor  d                                           ; $6546: $aa
	ld   a, h                                        ; $6547: $7c
	inc  bc                                          ; $6548: $03
	ld   l, l                                        ; $6549: $6d
	dec  b                                           ; $654a: $05
	add  hl, de                                      ; $654b: $19
	ld   a, l                                        ; $654c: $7d
	dec  c                                           ; $654d: $0d
	inc  bc                                          ; $654e: $03
	and  a                                           ; $654f: $a7
	adc  h                                           ; $6550: $8c
	ld   l, c                                        ; $6551: $69
	ld   [hl], h                                     ; $6552: $74
	ld   d, d                                        ; $6553: $52
	ld   l, l                                        ; $6554: $6d
	ld   l, [hl]                                     ; $6555: $6e
	ld   e, e                                        ; $6556: $5b
	adc  h                                           ; $6557: $8c
	ld   h, a                                        ; $6558: $67
	sbc  a                                           ; $6559: $9f
	dec  c                                           ; $655a: $0d
	nop                                              ; $655b: $00
	ld   a, [bc]                                     ; $655c: $0a
	inc  e                                           ; $655d: $1c
	dec  b                                           ; $655e: $05
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	ld   bc, $a154                                   ; $6561: $01 $54 $a1
	sbc  [hl]                                        ; $6564: $9e
	ld   l, e                                        ; $6565: $6b
	sbc  d                                           ; $6566: $9a
	ld   e, d                                        ; $6567: $5a
	ld   d, [hl]                                     ; $6568: $56
	ld   d, [hl]                                     ; $6569: $56
	ld   a, b                                        ; $656a: $78
	sbc  a                                           ; $656b: $9f
	dec  c                                           ; $656c: $0d
	adc  c                                           ; $656d: $89
	ld   a, b                                        ; $656e: $78
	sbc  [hl]                                        ; $656f: $9e
	ld   l, a                                        ; $6570: $6f
	sub  c                                           ; $6571: $91
	and  c                                           ; $6572: $a1
	halt                                             ; $6573: $76
	inc  bc                                          ; $6574: $03
	and  a                                           ; $6575: $a7
	and  c                                           ; $6576: $a1
	ld   [hl], l                                     ; $6577: $75
	dec  c                                           ; $6578: $0d
	ld   a, l                                        ; $6579: $7d
	sub  [hl]                                        ; $657a: $96
	inc  bc                                          ; $657b: $03
	ld   sp, hl                                      ; $657c: $f9
	ld   h, l                                        ; $657d: $65
	sub  d                                           ; $657e: $92
	sbc  a                                           ; $657f: $9f
	dec  c                                           ; $6580: $0d
	nop                                              ; $6581: $00
	ld   a, [bc]                                     ; $6582: $0a
	rrca                                             ; $6583: $0f
	nop                                              ; $6584: $00
	ld   bc, $7d01                                   ; $6585: $01 $01 $7d
	ld   d, d                                        ; $6588: $52
	sbc  [hl]                                        ; $6589: $9e
	sbc  l                                           ; $658a: $9d
	ld   e, c                                        ; $658b: $59
	sbc  b                                           ; $658c: $98
	adc  h                                           ; $658d: $8c
	ld   h, l                                        ; $658e: $65
	ld   l, l                                        ; $658f: $6d
	sbc  a                                           ; $6590: $9f
	dec  c                                           ; $6591: $0d
	ld   l, e                                        ; $6592: $6b
	sbc  d                                           ; $6593: $9a
	ld   [hl], l                                     ; $6594: $75
	ld   a, l                                        ; $6595: $7d
	inc  bc                                          ; $6596: $03

Call_048_6597:
	add  e                                           ; $6597: $83
	dec  b                                           ; $6598: $05
	dec  c                                           ; $6599: $0d
	ld   h, l                                        ; $659a: $65
	adc  h                                           ; $659b: $8c
	ld   h, a                                        ; $659c: $67
	sbc  a                                           ; $659d: $9f
	dec  c                                           ; $659e: $0d
	nop                                              ; $659f: $00
	ld   a, [bc]                                     ; $65a0: $0a
	dec  c                                           ; $65a1: $0d
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	inc  hl                                          ; $65a4: $23
	ld   bc, $6b01                                   ; $65a5: $01 $01 $6b
	sbc  d                                           ; $65a8: $9a
	ld   h, [hl]                                     ; $65a9: $66
	sub  c                                           ; $65aa: $91
	sbc  [hl]                                        ; $65ab: $9e
	inc  bc                                          ; $65ac: $03
	ld   l, h                                        ; $65ad: $6c
	ld   h, l                                        ; $65ae: $65
	inc  bc                                          ; $65af: $03
	and  a                                           ; $65b0: $a7
	adc  [hl]                                        ; $65b1: $8e
	halt                                             ; $65b2: $76
	ld   h, a                                        ; $65b3: $67
	sbc  c                                           ; $65b4: $99
	ld   e, c                                        ; $65b5: $59
	sbc  a                                           ; $65b6: $9f
	dec  c                                           ; $65b7: $0d
	nop                                              ; $65b8: $00
	ld   a, [bc]                                     ; $65b9: $0a
	inc  c                                           ; $65ba: $0c
	ld   [bc], a                                     ; $65bb: $02
	dec  h                                           ; $65bc: $25
	nop                                              ; $65bd: $00
	ld   c, $02                                      ; $65be: $0e $02
	rrca                                             ; $65c0: $0f
	nop                                              ; $65c1: $00
	ld   bc, $5401                                   ; $65c2: $01 $01 $54
	db   $fc                                         ; $65c5: $fc
	and  c                                           ; $65c6: $a1
	sub  [hl]                                        ; $65c7: $96
	ld   e, l                                        ; $65c8: $5d
	inc  b                                           ; $65c9: $04
	ld   b, d                                        ; $65ca: $42
	ld   l, l                                        ; $65cb: $6d
	rst  $38                                         ; $65cc: $ff
	rst  $38                                         ; $65cd: $ff
	dec  c                                           ; $65ce: $0d
	ld   e, c                                        ; $65cf: $59
	ld   a, b                                        ; $65d0: $78
	sbc  b                                           ; $65d1: $98
	inc  b                                           ; $65d2: $04
	dec  c                                           ; $65d3: $0d
	ld   e, d                                        ; $65d4: $5a
	dec  b                                           ; $65d5: $05
	inc  de                                          ; $65d6: $13
	ld   a, c                                        ; $65d7: $79

Call_048_65d8:
	ld   a, b                                        ; $65d8: $78
	ld   [hl], c                                     ; $65d9: $71
	ld   l, l                                        ; $65da: $6d
	ld   l, h                                        ; $65db: $6c
	sbc  a                                           ; $65dc: $9f
	dec  c                                           ; $65dd: $0d
	nop                                              ; $65de: $00
	ld   a, [bc]                                     ; $65df: $0a
	add  hl, hl                                      ; $65e0: $29
	ld   b, $00                                      ; $65e1: $06 $00
	rrca                                             ; $65e3: $0f
	nop                                              ; $65e4: $00
	ld   bc, $5201                                   ; $65e5: $01 $01 $52
	ld   d, [hl]                                     ; $65e8: $56
	sbc  [hl]                                        ; $65e9: $9e
	inc  b                                           ; $65ea: $04
	ld   c, $03                                      ; $65eb: $0e $03
	sbc  l                                           ; $65ed: $9d
	inc  b                                           ; $65ee: $04
	and  [hl]                                        ; $65ef: $a6
	ld   [hl], l                                     ; $65f0: $75
	ld   h, a                                        ; $65f1: $67
	sbc  a                                           ; $65f2: $9f
	dec  c                                           ; $65f3: $0d
	ld   e, d                                        ; $65f4: $5a
	and  c                                           ; $65f5: $a1
	ld   a, [hl]                                     ; $65f6: $7e
	sbc  b                                           ; $65f7: $98
	adc  h                                           ; $65f8: $8c
	ld   h, a                                        ; $65f9: $67
	ld   a, [$000d]                                  ; $65fa: $fa $0d $00
	ld   a, [bc]                                     ; $65fd: $0a
	rlca                                             ; $65fe: $07
	ld   l, h                                        ; $65ff: $6c
	inc  b                                           ; $6600: $04
	inc  bc                                          ; $6601: $03
	ld   b, [hl]                                     ; $6602: $46
	ld   bc, $2000                                   ; $6603: $01 $00 $20
	nop                                              ; $6606: $00
	rrca                                             ; $6607: $0f
	dec  b                                           ; $6608: $05
	ld   [bc], a                                     ; $6609: $02
	ld   bc, $546b                                   ; $660a: $01 $6b $54
	ld   e, c                                        ; $660d: $59
	rst  $38                                         ; $660e: $ff
	rst  $38                                         ; $660f: $ff
	dec  c                                           ; $6610: $0d
	adc  c                                           ; $6611: $89
	ld   a, b                                        ; $6612: $78
	sbc  [hl]                                        ; $6613: $9e
	inc  bc                                          ; $6614: $03
	ld   l, l                                        ; $6615: $6d
	dec  b                                           ; $6616: $05
	add  hl, de                                      ; $6617: $19
	and  b                                           ; $6618: $a0
	dec  b                                           ; $6619: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $661a: $cf
	adc  a                                           ; $661b: $8f
	sub  [hl]                                        ; $661c: $96
	ld   e, c                                        ; $661d: $59
	sbc  a                                           ; $661e: $9f
	dec  c                                           ; $661f: $0d
	nop                                              ; $6620: $00
	ld   a, [bc]                                     ; $6621: $0a
	dec  h                                           ; $6622: $25
	dec  b                                           ; $6623: $05
	dec  b                                           ; $6624: $05
	ld   b, b                                        ; $6625: $40
	ld   b, [hl]                                     ; $6626: $46
	inc  bc                                          ; $6627: $03
	ld   b, [hl]                                     ; $6628: $46
	ld   bc, $2801                                   ; $6629: $01 $01 $28
	nop                                              ; $662c: $00
	inc  e                                           ; $662d: $1c
	dec  b                                           ; $662e: $05
	ld   [bc], a                                     ; $662f: $02
	ld   [bc], a                                     ; $6630: $02
	ld   bc, $0458                                   ; $6631: $01 $58 $04
	ld   a, e                                        ; $6634: $7b
	sbc  d                                           ; $6635: $9a
	ld   h, e                                        ; $6636: $63
	and  c                                           ; $6637: $a1
	rst  $38                                         ; $6638: $ff
	rst  $38                                         ; $6639: $ff
	dec  c                                           ; $663a: $0d
	ld   [$7d00], sp                                 ; $663b: $08 $00 $7d
	and  c                                           ; $663e: $a1
	sbc  [hl]                                        ; $663f: $9e
	adc  c                                           ; $6640: $89
	and  c                                           ; $6641: $a1
	adc  h                                           ; $6642: $8c
	ld   a, c                                        ; $6643: $79
	dec  c                                           ; $6644: $0d
	ld   a, l                                        ; $6645: $7d
	sub  [hl]                                        ; $6646: $96
	inc  bc                                          ; $6647: $03
	and  a                                           ; $6648: $a7
	and  c                                           ; $6649: $a1
	ld   l, [hl]                                     ; $664a: $6e
	adc  c                                           ; $664b: $89
	ld   d, h                                        ; $664c: $54
	ld   e, d                                        ; $664d: $5a
	ld   d, [hl]                                     ; $664e: $56
	ld   d, [hl]                                     ; $664f: $56
	ld   [hl], l                                     ; $6650: $75
	sbc  a                                           ; $6651: $9f
	dec  c                                           ; $6652: $0d
	nop                                              ; $6653: $00
	ld   a, [bc]                                     ; $6654: $0a
	rlca                                             ; $6655: $07
	or   a                                           ; $6656: $b7
	inc  bc                                          ; $6657: $03
	inc  bc                                          ; $6658: $03
	jr   nz, jr_048_665c                             ; $6659: $20 $01

	nop                                              ; $665b: $00

jr_048_665c:
	jr   nz, jr_048_665e                             ; $665c: $20 $00

jr_048_665e:
	ld   bc, $7889                                   ; $665e: $01 $89 $78
	sbc  [hl]                                        ; $6661: $9e
	inc  b                                           ; $6662: $04
	adc  a                                           ; $6663: $8f
	inc  b                                           ; $6664: $04
	xor  d                                           ; $6665: $aa
	ld   a, h                                        ; $6666: $7c
	ld   [bc], a                                     ; $6667: $02
	or   d                                           ; $6668: $b2
	inc  bc                                          ; $6669: $03
	ld   c, a                                        ; $666a: $4f
	ld   a, h                                        ; $666b: $7c
	inc  bc                                          ; $666c: $03
	ld   l, l                                        ; $666d: $6d
	dec  b                                           ; $666e: $05
	add  hl, de                                      ; $666f: $19
	dec  c                                           ; $6670: $0d
	ld   h, c                                        ; $6671: $61
	sbc  d                                           ; $6672: $9a
	ld   a, c                                        ; $6673: $79
	ld   [hl], h                                     ; $6674: $74
	inc  bc                                          ; $6675: $03
	ld   a, [hl]                                     ; $6676: $7e
	dec  b                                           ; $6677: $05
	nop                                              ; $6678: $00
	sub  d                                           ; $6679: $92
	sbc  a                                           ; $667a: $9f
	dec  c                                           ; $667b: $0d
	nop                                              ; $667c: $00
	ld   a, [bc]                                     ; $667d: $0a
	rrca                                             ; $667e: $0f
	nop                                              ; $667f: $00
	ld   bc, $000d                                   ; $6680: $01 $0d $00
	nop                                              ; $6683: $00
	add  hl, bc                                      ; $6684: $09
	ld   e, $00                                      ; $6685: $1e $00
	rrca                                             ; $6687: $0f
	nop                                              ; $6688: $00
	ld   bc, $7d01                                   ; $6689: $01 $01 $7d
	ld   d, d                                        ; $668c: $52
	sbc  [hl]                                        ; $668d: $9e
	sbc  l                                           ; $668e: $9d
	ld   e, c                                        ; $668f: $59
	rst  $38                                         ; $6690: $ff
	sbc  b                                           ; $6691: $98
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	adc  h                                           ; $6694: $8c
	rst  $38                                         ; $6695: $ff
	rst  $38                                         ; $6696: $ff
	dec  c                                           ; $6697: $0d
	nop                                              ; $6698: $00
	dec  c                                           ; $6699: $0d
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	inc  c                                           ; $669c: $0c
	ld   [bc], a                                     ; $669d: $02
	ld   c, $03                                      ; $669e: $0e $03
	ld   bc, $9a50                                   ; $66a0: $01 $50 $9a
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	ld   sp, hl                                      ; $66a6: $f9
	dec  c                                           ; $66a7: $0d
	ld   e, c                                        ; $66a8: $59
	sub  a                                           ; $66a9: $97
	rst  $38                                         ; $66aa: $ff
	rst  $38                                         ; $66ab: $ff
	ld   l, [hl]                                     ; $66ac: $6e
	rst  $38                                         ; $66ad: $ff
	rst  $38                                         ; $66ae: $ff
	ld   e, d                                        ; $66af: $5a
	rst  $38                                         ; $66b0: $ff
	rst  $38                                         ; $66b1: $ff
	dec  c                                           ; $66b2: $0d
	nop                                              ; $66b3: $00
	ld   a, [bc]                                     ; $66b4: $0a
	ld   l, $01                                      ; $66b5: $2e $01
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	dec  b                                           ; $66b9: $05
	ld   b, b                                        ; $66ba: $40
	ld   b, [hl]                                     ; $66bb: $46
	inc  bc                                          ; $66bc: $03
	ld   b, [hl]                                     ; $66bd: $46
	ld   bc, $2801                                   ; $66be: $01 $01 $28
	nop                                              ; $66c1: $00
	inc  e                                           ; $66c2: $1c
	dec  b                                           ; $66c3: $05
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	ld   bc, $0458                                   ; $66c6: $01 $58 $04
	ld   a, e                                        ; $66c9: $7b
	sbc  d                                           ; $66ca: $9a
	ld   h, e                                        ; $66cb: $63
	and  c                                           ; $66cc: $a1
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	dec  c                                           ; $66cf: $0d
	nop                                              ; $66d0: $00
	inc  e                                           ; $66d1: $1c
	dec  b                                           ; $66d2: $05
	inc  bc                                          ; $66d3: $03
	inc  bc                                          ; $66d4: $03
	ld   bc, $f9a1                                   ; $66d5: $01 $a1 $f9
	db   $10                                         ; $66d8: $10
	ld   [hl], a                                     ; $66d9: $77
	ld   a, b                                        ; $66da: $78
	ld   d, d                                        ; $66db: $52
	ld   h, l                                        ; $66dc: $65
	and  c                                           ; $66dd: $a1
	ld   l, l                                        ; $66de: $6d
	and  c                                           ; $66df: $a1
	ld   sp, hl                                      ; $66e0: $f9
	dec  c                                           ; $66e1: $0d
	ld   [bc], a                                     ; $66e2: $02
	ld   [hl], d                                     ; $66e3: $72
	sbc  [hl]                                        ; $66e4: $9e
	inc  bc                                          ; $66e5: $03
	xor  l                                           ; $66e6: $ad
	ld   [hl], c                                     ; $66e7: $71
	inc  bc                                          ; $66e8: $03
	ld   a, [bc]                                     ; $66e9: $0a
	sub  d                                           ; $66ea: $92
	ld   [hl], l                                     ; $66eb: $75
	sbc  a                                           ; $66ec: $9f
	dec  c                                           ; $66ed: $0d
	nop                                              ; $66ee: $00
	ld   a, [bc]                                     ; $66ef: $0a
	rrca                                             ; $66f0: $0f
	nop                                              ; $66f1: $00
	ld   bc, $5601                                   ; $66f2: $01 $01 $56
	ld   d, [hl]                                     ; $66f5: $56
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	ld   a, b                                        ; $66f8: $78
	and  c                                           ; $66f9: $a1
	ld   l, [hl]                                     ; $66fa: $6e
	ld   e, c                                        ; $66fb: $59
	ld   h, e                                        ; $66fc: $63
	ld   [hl], c                                     ; $66fd: $71
	ld   e, e                                        ; $66fe: $5b
	ld   e, c                                        ; $66ff: $59
	sub  a                                           ; $6700: $97
	dec  c                                           ; $6701: $0d
	inc  b                                           ; $6702: $04
	dec  c                                           ; $6703: $0d
	ld   e, d                                        ; $6704: $5a
	ld   l, [hl]                                     ; $6705: $6e
	sbc  c                                           ; $6706: $99
	ld   e, l                                        ; $6707: $5d
	ld   [hl], h                                     ; $6708: $74
	rst  $38                                         ; $6709: $ff
	rst  $38                                         ; $670a: $ff
	dec  c                                           ; $670b: $0d
	nop                                              ; $670c: $00
	ld   a, [bc]                                     ; $670d: $0a
	ld   bc, $6254                                   ; $670e: $01 $54 $62
	rst  $38                                         ; $6711: $ff
	rst  $38                                         ; $6712: $ff
	ld   e, c                                        ; $6713: $59
	rst  $38                                         ; $6714: $ff
	rst  $38                                         ; $6715: $ff
	ld   a, b                                        ; $6716: $78
	rst  $38                                         ; $6717: $ff
	rst  $38                                         ; $6718: $ff
	dec  c                                           ; $6719: $0d
	nop                                              ; $671a: $00
	dec  c                                           ; $671b: $0d
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	inc  c                                           ; $671e: $0c
	ld   [bc], a                                     ; $671f: $02
	ld   c, $03                                      ; $6720: $0e $03
	ld   bc, $9a50                                   ; $6722: $01 $50 $9a
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	ld   sp, hl                                      ; $6728: $f9
	dec  c                                           ; $6729: $0d
	ld   [hl], a                                     ; $672a: $77
	ld   d, h                                        ; $672b: $54
	ld   h, l                                        ; $672c: $65
	rst  $38                                         ; $672d: $ff
	rst  $38                                         ; $672e: $ff
	ld   l, l                                        ; $672f: $6d
	rst  $38                                         ; $6730: $ff
	rst  $38                                         ; $6731: $ff
	and  c                                           ; $6732: $a1
	rst  $38                                         ; $6733: $ff
	rst  $38                                         ; $6734: $ff
	dec  c                                           ; $6735: $0d
	nop                                              ; $6736: $00
	ld   a, [bc]                                     ; $6737: $0a
	ld   l, $01                                      ; $6738: $2e $01
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	rrca                                             ; $673c: $0f
	dec  b                                           ; $673d: $05
	ld   [bc], a                                     ; $673e: $02
	ld   bc, $546b                                   ; $673f: $01 $6b $54
	ld   e, c                                        ; $6742: $59
	rst  $38                                         ; $6743: $ff
	rst  $38                                         ; $6744: $ff
	dec  c                                           ; $6745: $0d
	nop                                              ; $6746: $00
	inc  e                                           ; $6747: $1c
	dec  b                                           ; $6748: $05
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	ld   bc, $6596                                   ; $674b: $01 $96 $65
	sbc  a                                           ; $674e: $9f
	dec  c                                           ; $674f: $0d
	nop                                              ; $6750: $00
	ld   a, [bc]                                     ; $6751: $0a
	inc  e                                           ; $6752: $1c
	dec  b                                           ; $6753: $05
	dec  b                                           ; $6754: $05
	dec  b                                           ; $6755: $05
	ld   bc, wRandomNumStruct                                   ; $6756: $01 $a7 $c2
	ld   a, h                                        ; $6759: $7c
	inc  bc                                          ; $675a: $03
	ld   l, l                                        ; $675b: $6d
	dec  b                                           ; $675c: $05
	add  hl, de                                      ; $675d: $19
	ld   a, l                                        ; $675e: $7d
	sbc  [hl]                                        ; $675f: $9e
	ld   b, $58                                      ; $6760: $06 $58
	inc  b                                           ; $6762: $04
	ld   h, c                                        ; $6763: $61
	inc  bc                                          ; $6764: $03
	cp   $02                                         ; $6765: $fe $02
	ld   a, e                                        ; $6767: $7b
	sub  d                                           ; $6768: $92
	sbc  a                                           ; $6769: $9f
	dec  c                                           ; $676a: $0d
	nop                                              ; $676b: $00
	ld   a, [bc]                                     ; $676c: $0a
	ld   bc, $7c61                                   ; $676d: $01 $61 $7c
	inc  bc                                          ; $6770: $03
	ld   l, l                                        ; $6771: $6d
	dec  b                                           ; $6772: $05
	add  hl, de                                      ; $6773: $19
	ld   [hl], l                                     ; $6774: $75
	sbc  [hl]                                        ; $6775: $9e
	ld   [$7d00], sp                                 ; $6776: $08 $00 $7d
	and  c                                           ; $6779: $a1
	ld   a, h                                        ; $677a: $7c
	dec  c                                           ; $677b: $0d
	inc  b                                           ; $677c: $04
	dec  hl                                          ; $677d: $2b
	dec  b                                           ; $677e: $05
	ld   a, [bc]                                     ; $677f: $0a
	and  b                                           ; $6780: $a0
	and  e                                           ; $6781: $a3
	call nz, Call_048_65d8                           ; $6782: $c4 $d8 $65
	ld   [hl], h                                     ; $6785: $74
	sub  b                                           ; $6786: $90
	sub  a                                           ; $6787: $97
	ld   e, b                                        ; $6788: $58
	ld   d, h                                        ; $6789: $54
	dec  c                                           ; $678a: $0d
	ld   l, a                                        ; $678b: $6f
	sub  e                                           ; $678c: $93
	ei                                               ; $678d: $fb
	sbc  l                                           ; $678e: $9d
	ld   e, a                                        ; $678f: $5f
	sub  d                                           ; $6790: $92
	sbc  a                                           ; $6791: $9f
	dec  c                                           ; $6792: $0d
	nop                                              ; $6793: $00
	ld   a, [bc]                                     ; $6794: $0a
	inc  e                                           ; $6795: $1c
	dec  b                                           ; $6796: $05
	nop                                              ; $6797: $00
	nop                                              ; $6798: $00
	ld   bc, $7889                                   ; $6799: $01 $89 $78
	sbc  [hl]                                        ; $679c: $9e
	dec  b                                           ; $679d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $679e: $cf
	adc  a                                           ; $679f: $8f
	sbc  c                                           ; $67a0: $99
	ld   [hl], l                                     ; $67a1: $75
	sbc  a                                           ; $67a2: $9f
	dec  c                                           ; $67a3: $0d
	nop                                              ; $67a4: $00
	ld   a, [bc]                                     ; $67a5: $0a
	ld   b, $52                                      ; $67a6: $06 $52
	inc  bc                                          ; $67a8: $03
	dec  c                                           ; $67a9: $0d
	dec  b                                           ; $67aa: $05
	nop                                              ; $67ab: $00
	rrca                                             ; $67ac: $0f
	nop                                              ; $67ad: $00
	ld   bc, $0102                                   ; $67ae: $01 $02 $01
	ld   h, c                                        ; $67b1: $61
	and  c                                           ; $67b2: $a1
	ld   a, c                                        ; $67b3: $79
	ld   l, a                                        ; $67b4: $6f
	ld   a, l                                        ; $67b5: $7d
	sbc  [hl]                                        ; $67b6: $9e
	ld   [bc], a                                     ; $67b7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67b8: $cf
	dec  b                                           ; $67b9: $05
	ld   a, [de]                                     ; $67ba: $1a
	ld   h, e                                        ; $67bb: $63
	and  c                                           ; $67bc: $a1
	sbc  a                                           ; $67bd: $9f
	dec  c                                           ; $67be: $0d
	inc  bc                                          ; $67bf: $03
	ld   l, l                                        ; $67c0: $6d
	dec  b                                           ; $67c1: $05
	add  hl, de                                      ; $67c2: $19
	and  b                                           ; $67c3: $a0
	ld   e, b                                        ; $67c4: $58
	ld   [bc], a                                     ; $67c5: $02
	add  b                                           ; $67c6: $80
	ld   d, d                                        ; $67c7: $52
	ld   [hl], l                                     ; $67c8: $75
	ld   e, e                                        ; $67c9: $5b
	adc  h                                           ; $67ca: $8c
	ld   h, a                                        ; $67cb: $67
	dec  c                                           ; $67cc: $0d
	ld   [hl], l                                     ; $67cd: $75
	ld   h, l                                        ; $67ce: $65
	sub  l                                           ; $67cf: $95
	ld   d, h                                        ; $67d0: $54
	ld   e, c                                        ; $67d1: $59
	ld   sp, hl                                      ; $67d2: $f9
	dec  c                                           ; $67d3: $0d
	nop                                              ; $67d4: $00
	ld   a, [bc]                                     ; $67d5: $0a
	rrca                                             ; $67d6: $0f
	dec  b                                           ; $67d7: $05
	nop                                              ; $67d8: $00
	ld   bc, $9258                                   ; $67d9: $01 $58 $92
	ld   h, a                                        ; $67dc: $67
	ld   d, d                                        ; $67dd: $52
	ld   h, d                                        ; $67de: $62
	inc  b                                           ; $67df: $04
	di                                               ; $67e0: $f3
	sub  d                                           ; $67e1: $92
	sbc  a                                           ; $67e2: $9f
	dec  c                                           ; $67e3: $0d
	adc  c                                           ; $67e4: $89
	ld   a, b                                        ; $67e5: $78
	sbc  [hl]                                        ; $67e6: $9e
	ld   h, e                                        ; $67e7: $63
	ld   [hl], c                                     ; $67e8: $71
	ld   l, e                                        ; $67e9: $6b
	ld   e, l                                        ; $67ea: $5d
	dec  b                                           ; $67eb: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67ec: $cf
	adc  a                                           ; $67ed: $8f
	sub  [hl]                                        ; $67ee: $96
	ld   e, c                                        ; $67ef: $59
	sbc  a                                           ; $67f0: $9f
	dec  c                                           ; $67f1: $0d
	nop                                              ; $67f2: $00
	ld   a, [bc]                                     ; $67f3: $0a
	dec  h                                           ; $67f4: $25
	dec  b                                           ; $67f5: $05
	rlca                                             ; $67f6: $07
	jp   hl                                          ; $67f7: $e9


	inc  bc                                          ; $67f8: $03
	inc  bc                                          ; $67f9: $03
	jr   nz, jr_048_67fd                             ; $67fa: $20 $01

	nop                                              ; $67fc: $00

jr_048_67fd:
	jr   nz, jr_048_67ff                             ; $67fd: $20 $00

jr_048_67ff:
	inc  e                                           ; $67ff: $1c
	dec  b                                           ; $6800: $05
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	ld   bc, $0458                                   ; $6803: $01 $58 $04
	ld   a, e                                        ; $6806: $7b
	sbc  d                                           ; $6807: $9a
	ld   h, e                                        ; $6808: $63
	and  c                                           ; $6809: $a1
	sbc  a                                           ; $680a: $9f
	dec  c                                           ; $680b: $0d
	nop                                              ; $680c: $00
	dec  b                                           ; $680d: $05
	ld   b, b                                        ; $680e: $40
	ld   b, [hl]                                     ; $680f: $46
	inc  bc                                          ; $6810: $03
	ld   b, [hl]                                     ; $6811: $46
	ld   bc, $2801                                   ; $6812: $01 $01 $28
	nop                                              ; $6815: $00
	ld   bc, $688c                                   ; $6816: $01 $8c $68
	adc  h                                           ; $6819: $8c
	ld   l, b                                        ; $681a: $68
	ld   [hl], c                                     ; $681b: $71
	ld   l, a                                        ; $681c: $6f
	sub  e                                           ; $681d: $93
	ei                                               ; $681e: $fb
	halt                                             ; $681f: $76
	ld   h, c                                        ; $6820: $61
	sub  d                                           ; $6821: $92
	ld   a, b                                        ; $6822: $78
	sbc  a                                           ; $6823: $9f
	dec  c                                           ; $6824: $0d
	nop                                              ; $6825: $00
	ld   a, [bc]                                     ; $6826: $0a
	ld   bc, $7889                                   ; $6827: $01 $89 $78
	sbc  [hl]                                        ; $682a: $9e
	inc  b                                           ; $682b: $04
	adc  a                                           ; $682c: $8f
	inc  b                                           ; $682d: $04
	xor  d                                           ; $682e: $aa
	ld   a, h                                        ; $682f: $7c
	ld   [bc], a                                     ; $6830: $02
	or   d                                           ; $6831: $b2
	ld   [bc], a                                     ; $6832: $02
	xor  d                                           ; $6833: $aa
	ld   a, h                                        ; $6834: $7c
	inc  bc                                          ; $6835: $03
	ld   l, l                                        ; $6836: $6d
	dec  b                                           ; $6837: $05
	add  hl, de                                      ; $6838: $19
	dec  c                                           ; $6839: $0d
	ld   h, c                                        ; $683a: $61
	sbc  d                                           ; $683b: $9a
	ld   a, c                                        ; $683c: $79
	ld   [hl], h                                     ; $683d: $74
	inc  bc                                          ; $683e: $03
	ld   a, [hl]                                     ; $683f: $7e
	dec  b                                           ; $6840: $05
	nop                                              ; $6841: $00
	sub  d                                           ; $6842: $92
	sbc  a                                           ; $6843: $9f
	dec  c                                           ; $6844: $0d
	nop                                              ; $6845: $00
	ld   a, [bc]                                     ; $6846: $0a
	dec  c                                           ; $6847: $0d
	nop                                              ; $6848: $00
	nop                                              ; $6849: $00
	rrca                                             ; $684a: $0f
	nop                                              ; $684b: $00
	ld   bc, $0d00                                   ; $684c: $01 $00 $0d
	dec  b                                           ; $684f: $05
	nop                                              ; $6850: $00
	rrca                                             ; $6851: $0f
	nop                                              ; $6852: $00
	ld   bc, $0102                                   ; $6853: $01 $02 $01
	ld   h, c                                        ; $6856: $61
	and  c                                           ; $6857: $a1
	ld   a, c                                        ; $6858: $79
	ld   l, a                                        ; $6859: $6f
	ld   a, l                                        ; $685a: $7d
	sbc  [hl]                                        ; $685b: $9e
	ld   [bc], a                                     ; $685c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $685d: $cf
	dec  b                                           ; $685e: $05
	ld   a, [de]                                     ; $685f: $1a
	ld   h, e                                        ; $6860: $63
	and  c                                           ; $6861: $a1
	sbc  a                                           ; $6862: $9f
	dec  c                                           ; $6863: $0d
	inc  bc                                          ; $6864: $03
	ld   l, l                                        ; $6865: $6d
	dec  b                                           ; $6866: $05
	add  hl, de                                      ; $6867: $19
	and  b                                           ; $6868: $a0
	ld   e, b                                        ; $6869: $58
	ld   [bc], a                                     ; $686a: $02
	add  b                                           ; $686b: $80
	ld   d, d                                        ; $686c: $52
	ld   [hl], l                                     ; $686d: $75
	ld   e, e                                        ; $686e: $5b
	adc  h                                           ; $686f: $8c
	ld   h, a                                        ; $6870: $67
	dec  c                                           ; $6871: $0d
	ld   [hl], l                                     ; $6872: $75
	ld   h, l                                        ; $6873: $65
	sub  l                                           ; $6874: $95
	ld   d, h                                        ; $6875: $54
	ld   e, c                                        ; $6876: $59
	ld   sp, hl                                      ; $6877: $f9
	dec  c                                           ; $6878: $0d
	nop                                              ; $6879: $00
	ld   a, [bc]                                     ; $687a: $0a
	rlca                                             ; $687b: $07
	ld   d, d                                        ; $687c: $52
	ld   b, $03                                      ; $687d: $06 $03
	ld   b, [hl]                                     ; $687f: $46
	ld   bc, $2504                                   ; $6880: $01 $04 $25
	nop                                              ; $6883: $00
	rrca                                             ; $6884: $0f
	dec  b                                           ; $6885: $05
	nop                                              ; $6886: $00
	ld   bc, $7196                                   ; $6887: $01 $96 $71
	ld   h, l                                        ; $688a: $65
	sub  c                                           ; $688b: $91
	sbc  [hl]                                        ; $688c: $9e
	dec  c                                           ; $688d: $0d
	adc  c                                           ; $688e: $89
	ld   a, b                                        ; $688f: $78
	sbc  [hl]                                        ; $6890: $9e
	ld   h, e                                        ; $6891: $63
	ld   [hl], c                                     ; $6892: $71
	ld   l, e                                        ; $6893: $6b
	ld   e, l                                        ; $6894: $5d
	dec  b                                           ; $6895: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6896: $cf
	adc  a                                           ; $6897: $8f
	sub  [hl]                                        ; $6898: $96
	ld   e, c                                        ; $6899: $59
	sbc  a                                           ; $689a: $9f
	dec  c                                           ; $689b: $0d
	nop                                              ; $689c: $00
	ld   a, [bc]                                     ; $689d: $0a
	dec  h                                           ; $689e: $25
	dec  b                                           ; $689f: $05
	rlca                                             ; $68a0: $07
	jp   hl                                          ; $68a1: $e9


	inc  bc                                          ; $68a2: $03
	inc  bc                                          ; $68a3: $03
	jr   nz, jr_048_68a7                             ; $68a4: $20 $01

	nop                                              ; $68a6: $00

jr_048_68a7:
	jr   nz, jr_048_68a9                             ; $68a7: $20 $00

jr_048_68a9:
	inc  e                                           ; $68a9: $1c
	dec  b                                           ; $68aa: $05
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	ld   bc, $0458                                   ; $68ad: $01 $58 $04
	ld   a, e                                        ; $68b0: $7b
	sbc  d                                           ; $68b1: $9a
	ld   h, e                                        ; $68b2: $63
	and  c                                           ; $68b3: $a1
	sbc  a                                           ; $68b4: $9f
	dec  c                                           ; $68b5: $0d
	ld   e, a                                        ; $68b6: $5f
	ld   [hl], c                                     ; $68b7: $71
	ld   h, c                                        ; $68b8: $61
	ld   d, h                                        ; $68b9: $54
	sbc  [hl]                                        ; $68ba: $9e
	xor  c                                           ; $68bb: $a9
	xor  c                                           ; $68bc: $a9
	ld   [bc], a                                     ; $68bd: $02
	scf                                              ; $68be: $37
	ld   h, [hl]                                     ; $68bf: $66
	ld   a, c                                        ; $68c0: $79
	dec  c                                           ; $68c1: $0d
	ld   [hl], l                                     ; $68c2: $75
	ld   e, e                                        ; $68c3: $5b
	sbc  c                                           ; $68c4: $99
	sub  [hl]                                        ; $68c5: $96
	ld   d, h                                        ; $68c6: $54
	ld   a, c                                        ; $68c7: $79
	ld   a, b                                        ; $68c8: $78
	ld   [hl], c                                     ; $68c9: $71
	ld   l, l                                        ; $68ca: $6d
	sub  d                                           ; $68cb: $92
	and  c                                           ; $68cc: $a1
	sbc  a                                           ; $68cd: $9f
	dec  c                                           ; $68ce: $0d
	nop                                              ; $68cf: $00
	ld   a, [bc]                                     ; $68d0: $0a
	inc  e                                           ; $68d1: $1c
	dec  b                                           ; $68d2: $05
	ld   bc, $0101                                   ; $68d3: $01 $01 $01
	ld   h, c                                        ; $68d6: $61
	sbc  d                                           ; $68d7: $9a
	ld   e, c                                        ; $68d8: $59
	sub  a                                           ; $68d9: $97
	sub  b                                           ; $68da: $90
	sbc  [hl]                                        ; $68db: $9e
	ld   h, c                                        ; $68dc: $61
	ld   a, h                                        ; $68dd: $7c
	inc  bc                                          ; $68de: $03
	cp   $03                                         ; $68df: $fe $03
	add  [hl]                                        ; $68e1: $86
	ld   [hl], l                                     ; $68e2: $75
	dec  c                                           ; $68e3: $0d
	ld   e, d                                        ; $68e4: $5a
	and  c                                           ; $68e5: $a1
	ld   a, [hl]                                     ; $68e6: $7e
	sbc  b                                           ; $68e7: $98
	sub  d                                           ; $68e8: $92
	db   $fc                                         ; $68e9: $fc
	sbc  a                                           ; $68ea: $9f
	dec  c                                           ; $68eb: $0d
	nop                                              ; $68ec: $00
	ld   a, [bc]                                     ; $68ed: $0a
	dec  b                                           ; $68ee: $05
	ld   b, b                                        ; $68ef: $40
	ld   b, [hl]                                     ; $68f0: $46
	inc  bc                                          ; $68f1: $03
	ld   b, [hl]                                     ; $68f2: $46
	ld   bc, $2801                                   ; $68f3: $01 $01 $28
	nop                                              ; $68f6: $00
	inc  e                                           ; $68f7: $1c
	dec  b                                           ; $68f8: $05
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	ld   bc, $7889                                   ; $68fb: $01 $89 $78
	sbc  [hl]                                        ; $68fe: $9e
	inc  b                                           ; $68ff: $04
	adc  a                                           ; $6900: $8f
	inc  b                                           ; $6901: $04
	xor  d                                           ; $6902: $aa
	ld   a, h                                        ; $6903: $7c
	ld   [bc], a                                     ; $6904: $02
	or   d                                           ; $6905: $b2
	ld   [bc], a                                     ; $6906: $02
	xor  d                                           ; $6907: $aa
	ld   a, h                                        ; $6908: $7c
	inc  bc                                          ; $6909: $03
	ld   l, l                                        ; $690a: $6d
	dec  b                                           ; $690b: $05
	add  hl, de                                      ; $690c: $19
	dec  c                                           ; $690d: $0d
	ld   h, c                                        ; $690e: $61
	sbc  d                                           ; $690f: $9a
	ld   a, c                                        ; $6910: $79
	ld   [hl], h                                     ; $6911: $74
	inc  bc                                          ; $6912: $03
	ld   a, [hl]                                     ; $6913: $7e
	dec  b                                           ; $6914: $05
	nop                                              ; $6915: $00
	sub  d                                           ; $6916: $92
	sbc  a                                           ; $6917: $9f
	dec  c                                           ; $6918: $0d
	nop                                              ; $6919: $00
	ld   a, [bc]                                     ; $691a: $0a
	dec  c                                           ; $691b: $0d
	nop                                              ; $691c: $00
	nop                                              ; $691d: $00
	rrca                                             ; $691e: $0f
	nop                                              ; $691f: $00
	ld   bc, $0f00                                   ; $6920: $01 $00 $0f
	dec  b                                           ; $6923: $05
	nop                                              ; $6924: $00
	ld   bc, $9258                                   ; $6925: $01 $58 $92
	ld   h, a                                        ; $6928: $67
	ld   d, d                                        ; $6929: $52
	ld   h, d                                        ; $692a: $62
	inc  b                                           ; $692b: $04
	di                                               ; $692c: $f3
	sub  d                                           ; $692d: $92
	sbc  a                                           ; $692e: $9f
	dec  c                                           ; $692f: $0d
	adc  c                                           ; $6930: $89
	ld   a, b                                        ; $6931: $78
	sbc  [hl]                                        ; $6932: $9e
	ld   h, e                                        ; $6933: $63
	ld   [hl], c                                     ; $6934: $71
	ld   l, e                                        ; $6935: $6b
	ld   e, l                                        ; $6936: $5d
	dec  b                                           ; $6937: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6938: $cf
	adc  a                                           ; $6939: $8f
	sub  [hl]                                        ; $693a: $96
	ld   e, c                                        ; $693b: $59
	sbc  a                                           ; $693c: $9f
	dec  c                                           ; $693d: $0d
	nop                                              ; $693e: $00
	ld   a, [bc]                                     ; $693f: $0a
	dec  h                                           ; $6940: $25
	dec  b                                           ; $6941: $05
	rlca                                             ; $6942: $07
	jp   hl                                          ; $6943: $e9


	inc  bc                                          ; $6944: $03
	inc  bc                                          ; $6945: $03
	jr   nz, jr_048_6949                             ; $6946: $20 $01

	nop                                              ; $6948: $00

jr_048_6949:
	jr   nz, jr_048_694b                             ; $6949: $20 $00

jr_048_694b:
	inc  e                                           ; $694b: $1c
	dec  b                                           ; $694c: $05
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	ld   bc, $0458                                   ; $694f: $01 $58 $04
	ld   a, e                                        ; $6952: $7b
	sbc  d                                           ; $6953: $9a
	ld   h, e                                        ; $6954: $63
	and  c                                           ; $6955: $a1
	sbc  a                                           ; $6956: $9f
	dec  c                                           ; $6957: $0d
	ld   a, b                                        ; $6958: $78
	ld   e, c                                        ; $6959: $59
	ld   a, b                                        ; $695a: $78
	ld   e, c                                        ; $695b: $59
	cp   h                                           ; $695c: $bc
	push af                                          ; $695d: $f5
	cp   d                                           ; $695e: $ba
	ld   d, b                                        ; $695f: $50
	sbc  c                                           ; $6960: $99
	sub  d                                           ; $6961: $92
	and  c                                           ; $6962: $a1
	dec  c                                           ; $6963: $0d
	ld   [$7d00], sp                                 ; $6964: $08 $00 $7d
	and  c                                           ; $6967: $a1
	sbc  a                                           ; $6968: $9f
	dec  c                                           ; $6969: $0d
	nop                                              ; $696a: $00
	ld   a, [bc]                                     ; $696b: $0a
	inc  e                                           ; $696c: $1c
	dec  b                                           ; $696d: $05
	ld   bc, $0101                                   ; $696e: $01 $01 $01
	ld   h, c                                        ; $6971: $61
	ld   a, h                                        ; $6972: $7c
	inc  bc                                          ; $6973: $03
	cp   $03                                         ; $6974: $fe $03
	add  [hl]                                        ; $6976: $86
	ld   [hl], l                                     ; $6977: $75
	sbc  [hl]                                        ; $6978: $9e
	ld   e, d                                        ; $6979: $5a
	and  c                                           ; $697a: $a1
	ld   a, [hl]                                     ; $697b: $7e
	sbc  b                                           ; $697c: $98
	sub  d                                           ; $697d: $92
	sbc  a                                           ; $697e: $9f
	dec  c                                           ; $697f: $0d
	nop                                              ; $6980: $00
	ld   a, [bc]                                     ; $6981: $0a
	dec  b                                           ; $6982: $05
	ld   b, b                                        ; $6983: $40
	ld   b, [hl]                                     ; $6984: $46
	inc  bc                                          ; $6985: $03
	ld   b, [hl]                                     ; $6986: $46
	ld   bc, $2801                                   ; $6987: $01 $01 $28
	nop                                              ; $698a: $00
	inc  e                                           ; $698b: $1c
	dec  b                                           ; $698c: $05
	nop                                              ; $698d: $00
	nop                                              ; $698e: $00
	ld   bc, $7889                                   ; $698f: $01 $89 $78
	sbc  [hl]                                        ; $6992: $9e
	inc  b                                           ; $6993: $04
	adc  a                                           ; $6994: $8f
	inc  b                                           ; $6995: $04
	xor  d                                           ; $6996: $aa
	ld   a, h                                        ; $6997: $7c
	ld   [bc], a                                     ; $6998: $02
	or   d                                           ; $6999: $b2
	ld   [bc], a                                     ; $699a: $02
	xor  d                                           ; $699b: $aa
	ld   a, h                                        ; $699c: $7c
	inc  bc                                          ; $699d: $03
	ld   l, l                                        ; $699e: $6d
	dec  b                                           ; $699f: $05
	add  hl, de                                      ; $69a0: $19
	dec  c                                           ; $69a1: $0d
	ld   h, c                                        ; $69a2: $61
	sbc  d                                           ; $69a3: $9a
	ld   a, c                                        ; $69a4: $79
	ld   [hl], h                                     ; $69a5: $74
	inc  bc                                          ; $69a6: $03
	ld   a, [hl]                                     ; $69a7: $7e
	dec  b                                           ; $69a8: $05
	nop                                              ; $69a9: $00
	sub  d                                           ; $69aa: $92
	sbc  a                                           ; $69ab: $9f
	dec  c                                           ; $69ac: $0d
	nop                                              ; $69ad: $00
	ld   a, [bc]                                     ; $69ae: $0a
	dec  c                                           ; $69af: $0d
	nop                                              ; $69b0: $00
	nop                                              ; $69b1: $00
	rrca                                             ; $69b2: $0f
	nop                                              ; $69b3: $00
	ld   bc, $0d00                                   ; $69b4: $01 $00 $0d
	dec  b                                           ; $69b7: $05
	nop                                              ; $69b8: $00
	rrca                                             ; $69b9: $0f
	nop                                              ; $69ba: $00
	ld   bc, $0102                                   ; $69bb: $01 $02 $01
	ld   h, c                                        ; $69be: $61
	and  c                                           ; $69bf: $a1
	ld   a, c                                        ; $69c0: $79
	ld   l, a                                        ; $69c1: $6f
	ld   a, l                                        ; $69c2: $7d
	sbc  [hl]                                        ; $69c3: $9e
	ld   [bc], a                                     ; $69c4: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69c5: $cf
	dec  b                                           ; $69c6: $05
	ld   a, [de]                                     ; $69c7: $1a
	ld   h, e                                        ; $69c8: $63
	and  c                                           ; $69c9: $a1
	sbc  a                                           ; $69ca: $9f
	dec  c                                           ; $69cb: $0d
	inc  bc                                          ; $69cc: $03
	ld   l, l                                        ; $69cd: $6d
	dec  b                                           ; $69ce: $05
	add  hl, de                                      ; $69cf: $19
	and  b                                           ; $69d0: $a0
	ld   e, b                                        ; $69d1: $58
	ld   [bc], a                                     ; $69d2: $02
	add  b                                           ; $69d3: $80
	ld   d, d                                        ; $69d4: $52
	ld   [hl], l                                     ; $69d5: $75
	ld   e, e                                        ; $69d6: $5b
	adc  h                                           ; $69d7: $8c
	ld   h, a                                        ; $69d8: $67
	dec  c                                           ; $69d9: $0d
	ld   [hl], l                                     ; $69da: $75
	ld   h, l                                        ; $69db: $65
	sub  l                                           ; $69dc: $95
	ld   d, h                                        ; $69dd: $54
	ld   e, c                                        ; $69de: $59
	ld   sp, hl                                      ; $69df: $f9
	dec  c                                           ; $69e0: $0d
	nop                                              ; $69e1: $00
	ld   a, [bc]                                     ; $69e2: $0a
	rlca                                             ; $69e3: $07
	cp   l                                           ; $69e4: $bd
	rlca                                             ; $69e5: $07
	inc  bc                                          ; $69e6: $03
	ld   b, [hl]                                     ; $69e7: $46
	ld   bc, $2507                                   ; $69e8: $01 $07 $25
	nop                                              ; $69eb: $00
	rrca                                             ; $69ec: $0f
	dec  b                                           ; $69ed: $05
	nop                                              ; $69ee: $00
	ld   bc, $7196                                   ; $69ef: $01 $96 $71
	ld   h, l                                        ; $69f2: $65
	sub  c                                           ; $69f3: $91
	sbc  [hl]                                        ; $69f4: $9e
	dec  c                                           ; $69f5: $0d
	adc  c                                           ; $69f6: $89
	ld   a, b                                        ; $69f7: $78
	sbc  [hl]                                        ; $69f8: $9e
	ld   h, e                                        ; $69f9: $63
	ld   [hl], c                                     ; $69fa: $71
	ld   l, e                                        ; $69fb: $6b
	ld   e, l                                        ; $69fc: $5d
	dec  b                                           ; $69fd: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69fe: $cf
	adc  a                                           ; $69ff: $8f
	sub  [hl]                                        ; $6a00: $96
	ld   e, c                                        ; $6a01: $59
	sbc  a                                           ; $6a02: $9f
	dec  c                                           ; $6a03: $0d
	nop                                              ; $6a04: $00
	ld   a, [bc]                                     ; $6a05: $0a
	dec  h                                           ; $6a06: $25
	dec  b                                           ; $6a07: $05
	rlca                                             ; $6a08: $07
	jp   hl                                          ; $6a09: $e9


	inc  bc                                          ; $6a0a: $03
	inc  bc                                          ; $6a0b: $03
	jr   nz, jr_048_6a0f                             ; $6a0c: $20 $01

	nop                                              ; $6a0e: $00

jr_048_6a0f:
	jr   nz, jr_048_6a11                             ; $6a0f: $20 $00

jr_048_6a11:
	inc  e                                           ; $6a11: $1c
	dec  b                                           ; $6a12: $05
	ld   bc, $0101                                   ; $6a13: $01 $01 $01
	sub  d                                           ; $6a16: $92
	sbc  c                                           ; $6a17: $99
	ld   a, b                                        ; $6a18: $78
	db   $fc                                         ; $6a19: $fc
	sbc  [hl]                                        ; $6a1a: $9e
	ld   [$7d00], sp                                 ; $6a1b: $08 $00 $7d
	and  c                                           ; $6a1e: $a1
	sbc  a                                           ; $6a1f: $9f
	dec  c                                           ; $6a20: $0d
	inc  bc                                          ; $6a21: $03
	ld   c, d                                        ; $6a22: $4a
	inc  bc                                          ; $6a23: $03
	jp   c, $d49e                                    ; $6a24: $da $9e $d4

	call nz, $ecb0                                   ; $6a27: $c4 $b0 $ec
	ld   h, l                                        ; $6a2a: $65
	ld   l, l                                        ; $6a2b: $6d
	ld   [hl], l                                     ; $6a2c: $75
	sbc  a                                           ; $6a2d: $9f
	dec  c                                           ; $6a2e: $0d
	nop                                              ; $6a2f: $00
	ld   a, [bc]                                     ; $6a30: $0a
	ld   bc, $a161                                   ; $6a31: $01 $61 $a1
	ld   a, b                                        ; $6a34: $78
	ld   a, c                                        ; $6a35: $79
	sub  d                                           ; $6a36: $92
	sbc  c                                           ; $6a37: $99
	halt                                             ; $6a38: $76
	ld   a, l                                        ; $6a39: $7d
	sbc  [hl]                                        ; $6a3a: $9e
	dec  c                                           ; $6a3b: $0d
	dec  b                                           ; $6a3c: $05
	pop  de                                          ; $6a3d: $d1
	ld   [hl], h                                     ; $6a3e: $74
	ld   a, b                                        ; $6a3f: $78
	ld   e, c                                        ; $6a40: $59
	ld   [hl], c                                     ; $6a41: $71
	ld   l, l                                        ; $6a42: $6d
	sbc  l                                           ; $6a43: $9d
	db   $fc                                         ; $6a44: $fc
	sbc  a                                           ; $6a45: $9f
	dec  c                                           ; $6a46: $0d
	ld   h, c                                        ; $6a47: $61
	sbc  d                                           ; $6a48: $9a
	ld   e, c                                        ; $6a49: $59
	sub  a                                           ; $6a4a: $97
	sub  b                                           ; $6a4b: $90
	sbc  [hl]                                        ; $6a4c: $9e
	ld   h, c                                        ; $6a4d: $61
	ld   a, h                                        ; $6a4e: $7c
	inc  bc                                          ; $6a4f: $03
	cp   $03                                         ; $6a50: $fe $03
	add  [hl]                                        ; $6a52: $86
	ld   [hl], l                                     ; $6a53: $75
	ld   a, b                                        ; $6a54: $78
	sbc  a                                           ; $6a55: $9f
	dec  c                                           ; $6a56: $0d
	nop                                              ; $6a57: $00
	ld   a, [bc]                                     ; $6a58: $0a
	dec  b                                           ; $6a59: $05
	ld   b, b                                        ; $6a5a: $40
	ld   b, [hl]                                     ; $6a5b: $46
	inc  bc                                          ; $6a5c: $03
	ld   b, [hl]                                     ; $6a5d: $46
	ld   bc, $2801                                   ; $6a5e: $01 $01 $28
	nop                                              ; $6a61: $00
	inc  e                                           ; $6a62: $1c
	dec  b                                           ; $6a63: $05
	nop                                              ; $6a64: $00
	nop                                              ; $6a65: $00
	ld   bc, $7889                                   ; $6a66: $01 $89 $78
	sbc  [hl]                                        ; $6a69: $9e
	inc  b                                           ; $6a6a: $04
	adc  a                                           ; $6a6b: $8f
	inc  b                                           ; $6a6c: $04
	xor  d                                           ; $6a6d: $aa
	ld   a, h                                        ; $6a6e: $7c
	ld   [bc], a                                     ; $6a6f: $02
	or   d                                           ; $6a70: $b2
	ld   [bc], a                                     ; $6a71: $02
	xor  d                                           ; $6a72: $aa
	ld   a, h                                        ; $6a73: $7c
	inc  bc                                          ; $6a74: $03
	ld   l, l                                        ; $6a75: $6d
	dec  b                                           ; $6a76: $05
	add  hl, de                                      ; $6a77: $19
	dec  c                                           ; $6a78: $0d
	ld   h, c                                        ; $6a79: $61
	sbc  d                                           ; $6a7a: $9a
	ld   a, c                                        ; $6a7b: $79
	ld   [hl], h                                     ; $6a7c: $74
	inc  bc                                          ; $6a7d: $03
	ld   a, [hl]                                     ; $6a7e: $7e
	dec  b                                           ; $6a7f: $05
	nop                                              ; $6a80: $00
	sub  d                                           ; $6a81: $92
	sbc  a                                           ; $6a82: $9f
	dec  c                                           ; $6a83: $0d
	nop                                              ; $6a84: $00
	ld   a, [bc]                                     ; $6a85: $0a
	dec  c                                           ; $6a86: $0d
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	rrca                                             ; $6a89: $0f
	nop                                              ; $6a8a: $00
	ld   bc, $0f00                                   ; $6a8b: $01 $00 $0f
	dec  b                                           ; $6a8e: $05
	nop                                              ; $6a8f: $00
	ld   bc, $9258                                   ; $6a90: $01 $58 $92
	ld   h, a                                        ; $6a93: $67
	ld   d, d                                        ; $6a94: $52
	ld   h, d                                        ; $6a95: $62
	inc  b                                           ; $6a96: $04
	di                                               ; $6a97: $f3
	sub  d                                           ; $6a98: $92
	sbc  [hl]                                        ; $6a99: $9e
	dec  c                                           ; $6a9a: $0d
	adc  c                                           ; $6a9b: $89
	ld   a, b                                        ; $6a9c: $78
	sbc  [hl]                                        ; $6a9d: $9e
	ld   h, e                                        ; $6a9e: $63
	ld   [hl], c                                     ; $6a9f: $71
	ld   l, e                                        ; $6aa0: $6b
	ld   e, l                                        ; $6aa1: $5d
	dec  b                                           ; $6aa2: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa3: $cf
	adc  a                                           ; $6aa4: $8f
	sub  [hl]                                        ; $6aa5: $96
	ld   e, c                                        ; $6aa6: $59
	sbc  a                                           ; $6aa7: $9f
	dec  c                                           ; $6aa8: $0d
	nop                                              ; $6aa9: $00
	ld   a, [bc]                                     ; $6aaa: $0a
	dec  h                                           ; $6aab: $25
	dec  b                                           ; $6aac: $05
	rlca                                             ; $6aad: $07
	jp   hl                                          ; $6aae: $e9


	inc  bc                                          ; $6aaf: $03
	inc  bc                                          ; $6ab0: $03
	jr   nz, jr_048_6ab4                             ; $6ab1: $20 $01

	nop                                              ; $6ab3: $00

jr_048_6ab4:
	jr   nz, jr_048_6ab6                             ; $6ab4: $20 $00

jr_048_6ab6:
	inc  e                                           ; $6ab6: $1c
	dec  b                                           ; $6ab7: $05
	ld   bc, $0101                                   ; $6ab8: $01 $01 $01
	ld   d, [hl]                                     ; $6abb: $56
	ld   d, [hl]                                     ; $6abc: $56
	ld   [bc], a                                     ; $6abd: $02
	scf                                              ; $6abe: $37
	ld   h, [hl]                                     ; $6abf: $66
	sub  d                                           ; $6ac0: $92
	ld   [hl], l                                     ; $6ac1: $75
	db   $fc                                         ; $6ac2: $fc
	sbc  [hl]                                        ; $6ac3: $9e
	dec  c                                           ; $6ac4: $0d
	ld   [$7d00], sp                                 ; $6ac5: $08 $00 $7d
	and  c                                           ; $6ac8: $a1
	sbc  a                                           ; $6ac9: $9f
	dec  c                                           ; $6aca: $0d
	ld   l, e                                        ; $6acb: $6b
	ld   a, h                                        ; $6acc: $7c
	inc  bc                                          ; $6acd: $03
	cp   $03                                         ; $6ace: $fe $03
	add  [hl]                                        ; $6ad0: $86
	sbc  [hl]                                        ; $6ad1: $9e
	ld   l, e                                        ; $6ad2: $6b
	ld   a, h                                        ; $6ad3: $7c
	inc  bc                                          ; $6ad4: $03
	cp   $03                                         ; $6ad5: $fe $03
	add  [hl]                                        ; $6ad7: $86
	sbc  a                                           ; $6ad8: $9f
	dec  c                                           ; $6ad9: $0d
	nop                                              ; $6ada: $00
	ld   a, [bc]                                     ; $6adb: $0a
	dec  b                                           ; $6adc: $05
	ld   b, b                                        ; $6add: $40
	ld   b, [hl]                                     ; $6ade: $46
	inc  bc                                          ; $6adf: $03
	ld   b, [hl]                                     ; $6ae0: $46
	ld   bc, $2801                                   ; $6ae1: $01 $01 $28
	nop                                              ; $6ae4: $00
	inc  e                                           ; $6ae5: $1c
	dec  b                                           ; $6ae6: $05
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	ld   bc, $7889                                   ; $6ae9: $01 $89 $78
	sbc  [hl]                                        ; $6aec: $9e
	inc  b                                           ; $6aed: $04
	adc  a                                           ; $6aee: $8f
	inc  b                                           ; $6aef: $04
	xor  d                                           ; $6af0: $aa
	ld   a, h                                        ; $6af1: $7c
	ld   [bc], a                                     ; $6af2: $02
	or   d                                           ; $6af3: $b2
	ld   [bc], a                                     ; $6af4: $02
	xor  d                                           ; $6af5: $aa
	ld   a, h                                        ; $6af6: $7c
	inc  bc                                          ; $6af7: $03
	ld   l, l                                        ; $6af8: $6d
	dec  b                                           ; $6af9: $05
	add  hl, de                                      ; $6afa: $19
	dec  c                                           ; $6afb: $0d
	ld   h, c                                        ; $6afc: $61
	sbc  d                                           ; $6afd: $9a
	ld   a, c                                        ; $6afe: $79
	ld   [hl], h                                     ; $6aff: $74
	inc  bc                                          ; $6b00: $03
	ld   a, [hl]                                     ; $6b01: $7e
	dec  b                                           ; $6b02: $05
	nop                                              ; $6b03: $00
	sub  d                                           ; $6b04: $92
	sbc  a                                           ; $6b05: $9f
	dec  c                                           ; $6b06: $0d
	nop                                              ; $6b07: $00
	ld   a, [bc]                                     ; $6b08: $0a
	dec  c                                           ; $6b09: $0d
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	rrca                                             ; $6b0c: $0f
	nop                                              ; $6b0d: $00
	ld   bc, $0e00                                   ; $6b0e: $01 $00 $0e
	ld   bc, $0702                                   ; $6b11: $01 $02 $07
	add  a                                           ; $6b14: $87
	ld   [$2003], sp                                 ; $6b15: $08 $03 $20
	ld   bc, $2540                                   ; $6b18: $01 $40 $25
	nop                                              ; $6b1b: $00
	dec  b                                           ; $6b1c: $05
	ld   b, b                                        ; $6b1d: $40
	ld   d, d                                        ; $6b1e: $52
	inc  bc                                          ; $6b1f: $03
	ld   d, d                                        ; $6b20: $52
	ld   [bc], a                                     ; $6b21: $02
	nop                                              ; $6b22: $00
	inc  bc                                          ; $6b23: $03
	ld   c, h                                        ; $6b24: $4c
	add  hl, hl                                      ; $6b25: $29
	add  hl, hl                                      ; $6b26: $29
	nop                                              ; $6b27: $00
	ld   bc, $ffff                                   ; $6b28: $01 $ff $ff
	ld   d, h                                        ; $6b2b: $54
	db   $fc                                         ; $6b2c: $fc
	and  c                                           ; $6b2d: $a1
	rst  $38                                         ; $6b2e: $ff
	rst  $38                                         ; $6b2f: $ff
	dec  c                                           ; $6b30: $0d
	ld   a, b                                        ; $6b31: $78
	and  c                                           ; $6b32: $a1
	ld   l, [hl]                                     ; $6b33: $6e
	ld   e, c                                        ; $6b34: $59
	inc  b                                           ; $6b35: $04
	dec  c                                           ; $6b36: $0d
	inc  bc                                          ; $6b37: $03
	cp   $5a                                         ; $6b38: $fe $5a
	ld   [bc], a                                     ; $6b3a: $02
	jr   z, jr_048_6b8f                              ; $6b3b: $28 $52

	ld   a, b                                        ; $6b3d: $78
	rst  $38                                         ; $6b3e: $ff
	rst  $38                                         ; $6b3f: $ff
	dec  c                                           ; $6b40: $0d
	ld   [bc], a                                     ; $6b41: $02
	and  l                                           ; $6b42: $a5
	inc  b                                           ; $6b43: $04
	xor  d                                           ; $6b44: $aa
	ld   a, h                                        ; $6b45: $7c
	inc  bc                                          ; $6b46: $03
	ld   l, l                                        ; $6b47: $6d
	dec  b                                           ; $6b48: $05
	add  hl, de                                      ; $6b49: $19
	ld   a, l                                        ; $6b4a: $7d
	inc  bc                                          ; $6b4b: $03
	and  a                                           ; $6b4c: $a7
	adc  [hl]                                        ; $6b4d: $8e
	ld   e, c                                        ; $6b4e: $59
	ld   a, b                                        ; $6b4f: $78
	sbc  a                                           ; $6b50: $9f
	dec  c                                           ; $6b51: $0d
	nop                                              ; $6b52: $00
	ld   a, [bc]                                     ; $6b53: $0a
	ld   b, $b2                                      ; $6b54: $06 $b2
	ld   [$0201], sp                                 ; $6b56: $08 $01 $02
	and  l                                           ; $6b59: $a5
	inc  b                                           ; $6b5a: $04
	xor  d                                           ; $6b5b: $aa
	ld   a, l                                        ; $6b5c: $7d
	ld   a, b                                        ; $6b5d: $78
	and  c                                           ; $6b5e: $a1
	ld   l, [hl]                                     ; $6b5f: $6e
	ld   e, c                                        ; $6b60: $59
	inc  bc                                          ; $6b61: $03
	ld   l, l                                        ; $6b62: $6d
	dec  b                                           ; $6b63: $05
	add  hl, de                                      ; $6b64: $19
	ld   a, c                                        ; $6b65: $79
	dec  c                                           ; $6b66: $0d
	ld   [bc], a                                     ; $6b67: $02
	ld   a, a                                        ; $6b68: $7f
	ld   e, e                                        ; $6b69: $5b
	ld   l, l                                        ; $6b6a: $6d
	ld   e, l                                        ; $6b6b: $5d
	ld   a, b                                        ; $6b6c: $78
	ld   d, d                                        ; $6b6d: $52
	ld   a, b                                        ; $6b6e: $78
	ld   d, b                                        ; $6b6f: $50
	rst  $38                                         ; $6b70: $ff
	rst  $38                                         ; $6b71: $ff
	dec  c                                           ; $6b72: $0d
	inc  bc                                          ; $6b73: $03
	ld   l, l                                        ; $6b74: $6d
	dec  b                                           ; $6b75: $05
	add  hl, de                                      ; $6b76: $19
	rst  $38                                         ; $6b77: $ff
	rst  $38                                         ; $6b78: $ff
	inc  bc                                          ; $6b79: $03
	and  a                                           ; $6b7a: $a7
	adc  [hl]                                        ; $6b7b: $8e
	ld   e, c                                        ; $6b7c: $59
	ld   a, b                                        ; $6b7d: $78
	sbc  a                                           ; $6b7e: $9f
	dec  c                                           ; $6b7f: $0d
	nop                                              ; $6b80: $00
	ld   a, [bc]                                     ; $6b81: $0a
	inc  hl                                          ; $6b82: $23
	ld   c, h                                        ; $6b83: $4c
	inc  d                                           ; $6b84: $14
	ld   b, $01                                      ; $6b85: $06 $01
	add  hl, bc                                      ; $6b87: $09
	ld   e, $01                                      ; $6b88: $1e $01
	ld   [bc], a                                     ; $6b8a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b8b: $cf
	dec  b                                           ; $6b8c: $05
	ld   a, [de]                                     ; $6b8d: $1a
	ld   h, e                                        ; $6b8e: $63

jr_048_6b8f:
	and  c                                           ; $6b8f: $a1
	sbc  [hl]                                        ; $6b90: $9e
	dec  c                                           ; $6b91: $0d
	ld   d, d                                        ; $6b92: $52
	sub  a                                           ; $6b93: $97
	ld   [hl], c                                     ; $6b94: $71
	ld   h, l                                        ; $6b95: $65
	sub  c                                           ; $6b96: $91
	ld   d, d                                        ; $6b97: $52
	adc  h                                           ; $6b98: $8c
	ld   h, a                                        ; $6b99: $67
	ld   e, c                                        ; $6b9a: $59
	ld   sp, hl                                      ; $6b9b: $f9
	dec  c                                           ; $6b9c: $0d
	nop                                              ; $6b9d: $00
	ld   a, [bc]                                     ; $6b9e: $0a
	rrca                                             ; $6b9f: $0f
	dec  b                                           ; $6ba0: $05
	nop                                              ; $6ba1: $00
	ld   bc, $fb7d                                   ; $6ba2: $01 $7d $fb
	ld   d, d                                        ; $6ba5: $52
	sbc  a                                           ; $6ba6: $9f
	dec  c                                           ; $6ba7: $0d
	ld   l, a                                        ; $6ba8: $6f
	sub  l                                           ; $6ba9: $95
	ld   [hl], c                                     ; $6baa: $71
	halt                                             ; $6bab: $76
	adc  h                                           ; $6bac: $8c
	ld   [hl], c                                     ; $6bad: $71
	ld   [hl], h                                     ; $6bae: $74
	ld   a, b                                        ; $6baf: $78
	sbc  a                                           ; $6bb0: $9f
	dec  c                                           ; $6bb1: $0d
	nop                                              ; $6bb2: $00
	ld   a, [bc]                                     ; $6bb3: $0a
	inc  d                                           ; $6bb4: $14
	ld   a, [bc]                                     ; $6bb5: $0a
	ld   bc, $4d0e                                   ; $6bb6: $01 $0e $4d
	inc  e                                           ; $6bb9: $1c
	dec  b                                           ; $6bba: $05
	ld   bc, $0101                                   ; $6bbb: $01 $01 $01
	ld   h, c                                        ; $6bbe: $61
	and  c                                           ; $6bbf: $a1
	ld   a, c                                        ; $6bc0: $79
	ld   l, a                                        ; $6bc1: $6f
	ld   a, l                                        ; $6bc2: $7d
	sbc  [hl]                                        ; $6bc3: $9e
	dec  c                                           ; $6bc4: $0d
	ld   [$7d00], sp                                 ; $6bc5: $08 $00 $7d
	and  c                                           ; $6bc8: $a1
	sbc  a                                           ; $6bc9: $9f
	dec  c                                           ; $6bca: $0d
	nop                                              ; $6bcb: $00
	ld   a, [bc]                                     ; $6bcc: $0a
	rlca                                             ; $6bcd: $07
	and  c                                           ; $6bce: $a1
	add  hl, bc                                      ; $6bcf: $09
	inc  bc                                          ; $6bd0: $03
	jr   nz, jr_048_6bd4                             ; $6bd1: $20 $01

	ld   b, b                                        ; $6bd3: $40

jr_048_6bd4:
	dec  h                                           ; $6bd4: $25
	nop                                              ; $6bd5: $00
	ld   bc, $ffff                                   ; $6bd6: $01 $ff $ff
	and  c                                           ; $6bd9: $a1
	ld   sp, hl                                      ; $6bda: $f9
	dec  c                                           ; $6bdb: $0d
	nop                                              ; $6bdc: $00
	inc  e                                           ; $6bdd: $1c
	dec  b                                           ; $6bde: $05
	ld   [bc], a                                     ; $6bdf: $02
	ld   [bc], a                                     ; $6be0: $02
	ld   bc, $a178                                   ; $6be1: $01 $78 $a1
	sub  d                                           ; $6be4: $92
	sbc  [hl]                                        ; $6be5: $9e
	ld   d, [hl]                                     ; $6be6: $56
	sub  a                                           ; $6be7: $97
	ld   d, d                                        ; $6be8: $52
	ld   [bc], a                                     ; $6be9: $02
	ld   [hl], d                                     ; $6bea: $72
	inc  bc                                          ; $6beb: $03
	dec  bc                                          ; $6bec: $0b
	dec  c                                           ; $6bed: $0d
	sbc  l                                           ; $6bee: $9d
	sbc  c                                           ; $6bef: $99
	ld   d, d                                        ; $6bf0: $52
	sub  d                                           ; $6bf1: $92
	ld   a, b                                        ; $6bf2: $78
	ld   d, d                                        ; $6bf3: $52
	ld   e, c                                        ; $6bf4: $59
	sbc  a                                           ; $6bf5: $9f
	dec  c                                           ; $6bf6: $0d
	nop                                              ; $6bf7: $00
	ld   a, [bc]                                     ; $6bf8: $0a
	rrca                                             ; $6bf9: $0f
	nop                                              ; $6bfa: $00
	ld   bc, $7d01                                   ; $6bfb: $01 $01 $7d
	ld   d, d                                        ; $6bfe: $52
	sbc  [hl]                                        ; $6bff: $9e
	ld   l, a                                        ; $6c00: $6f
	sub  l                                           ; $6c01: $95
	ld   [hl], c                                     ; $6c02: $71
	halt                                             ; $6c03: $76
	inc  b                                           ; $6c04: $04
	dec  c                                           ; $6c05: $0d
	inc  bc                                          ; $6c06: $03
	cp   $5a                                         ; $6c07: $fe $5a
	dec  c                                           ; $6c09: $0d
	sbc  l                                           ; $6c0a: $9d
	sbc  c                                           ; $6c0b: $99
	ld   e, l                                        ; $6c0c: $5d
	ld   [hl], h                                     ; $6c0d: $74
	rst  $38                                         ; $6c0e: $ff
	rst  $38                                         ; $6c0f: $ff
	ld   [bc], a                                     ; $6c10: $02
	and  l                                           ; $6c11: $a5
	inc  b                                           ; $6c12: $04
	xor  d                                           ; $6c13: $aa
	ld   a, h                                        ; $6c14: $7c
	inc  bc                                          ; $6c15: $03
	ld   l, l                                        ; $6c16: $6d
	dec  b                                           ; $6c17: $05
	add  hl, de                                      ; $6c18: $19
	ld   a, l                                        ; $6c19: $7d
	dec  c                                           ; $6c1a: $0d
	inc  bc                                          ; $6c1b: $03
	and  a                                           ; $6c1c: $a7
	adc  h                                           ; $6c1d: $8c
	ld   l, c                                        ; $6c1e: $69
	ld   [hl], h                                     ; $6c1f: $74
	adc  c                                           ; $6c20: $89
	ld   h, l                                        ; $6c21: $65
	ld   d, d                                        ; $6c22: $52
	ld   a, h                                        ; $6c23: $7c
	ld   [hl], l                                     ; $6c24: $75
	ld   h, a                                        ; $6c25: $67
	ld   e, d                                        ; $6c26: $5a
	rst  $38                                         ; $6c27: $ff
	rst  $38                                         ; $6c28: $ff
	dec  c                                           ; $6c29: $0d
	nop                                              ; $6c2a: $00
	ld   a, [bc]                                     ; $6c2b: $0a
	inc  e                                           ; $6c2c: $1c
	dec  b                                           ; $6c2d: $05
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	ld   bc, $a154                                   ; $6c30: $01 $54 $a1
	sbc  [hl]                                        ; $6c33: $9e
	ld   l, e                                        ; $6c34: $6b
	sbc  d                                           ; $6c35: $9a
	ld   e, d                                        ; $6c36: $5a
	ld   d, [hl]                                     ; $6c37: $56
	ld   d, [hl]                                     ; $6c38: $56
	ld   a, b                                        ; $6c39: $78
	sbc  a                                           ; $6c3a: $9f
	dec  c                                           ; $6c3b: $0d
	ld   l, a                                        ; $6c3c: $6f
	sub  c                                           ; $6c3d: $91
	and  c                                           ; $6c3e: $a1
	halt                                             ; $6c3f: $76
	inc  bc                                          ; $6c40: $03
	and  a                                           ; $6c41: $a7
	and  c                                           ; $6c42: $a1
	ld   [hl], l                                     ; $6c43: $75
	sbc  [hl]                                        ; $6c44: $9e
	ld   a, l                                        ; $6c45: $7d
	sub  [hl]                                        ; $6c46: $96
	inc  bc                                          ; $6c47: $03
	ld   sp, hl                                      ; $6c48: $f9
	ld   h, l                                        ; $6c49: $65
	ld   l, l                                        ; $6c4a: $6d
	dec  c                                           ; $6c4b: $0d
	adc  c                                           ; $6c4c: $89
	ld   d, h                                        ; $6c4d: $54
	ld   e, d                                        ; $6c4e: $5a
	ld   d, [hl]                                     ; $6c4f: $56
	ld   d, [hl]                                     ; $6c50: $56
	sbc  a                                           ; $6c51: $9f
	dec  c                                           ; $6c52: $0d
	nop                                              ; $6c53: $00
	ld   a, [bc]                                     ; $6c54: $0a
	ld   bc, $9a6b                                   ; $6c55: $01 $6b $9a
	ld   h, [hl]                                     ; $6c58: $66
	sub  c                                           ; $6c59: $91
	sbc  [hl]                                        ; $6c5a: $9e
	ld   e, b                                        ; $6c5b: $58
	inc  b                                           ; $6c5c: $04
	ld   c, $02                                      ; $6c5d: $0e $02
	jp   Jump_048_7879                               ; $6c5f: $c3 $79 $78


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
	ld   b, $d4                                      ; $6c6e: $06 $d4
	ld   [bc], a                                     ; $6c70: $02
	inc  e                                           ; $6c71: $1c
	dec  b                                           ; $6c72: $05
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	ld   bc, $a178                                   ; $6c75: $01 $78 $a1
	sub  d                                           ; $6c78: $92
	sbc  [hl]                                        ; $6c79: $9e
	ld   [$7d00], sp                                 ; $6c7a: $08 $00 $7d
	and  c                                           ; $6c7d: $a1
	sbc  a                                           ; $6c7e: $9f
	dec  c                                           ; $6c7f: $0d
	sub  b                                           ; $6c80: $90
	ld   d, h                                        ; $6c81: $54
	ld   h, a                                        ; $6c82: $67
	ld   e, [hl]                                     ; $6c83: $5e
	inc  bc                                          ; $6c84: $03
	ld   l, l                                        ; $6c85: $6d
	dec  b                                           ; $6c86: $05
	add  hl, de                                      ; $6c87: $19
	ld   a, h                                        ; $6c88: $7c
	inc  bc                                          ; $6c89: $03
	ld   l, a                                        ; $6c8a: $6f
	ld   [bc], a                                     ; $6c8b: $02
	xor  c                                           ; $6c8c: $a9
	sub  d                                           ; $6c8d: $92
	ld   [hl], l                                     ; $6c8e: $75
	sbc  a                                           ; $6c8f: $9f
	dec  c                                           ; $6c90: $0d
	nop                                              ; $6c91: $00
	ld   a, [bc]                                     ; $6c92: $0a
	rrca                                             ; $6c93: $0f
	nop                                              ; $6c94: $00
	ld   bc, $7d01                                   ; $6c95: $01 $01 $7d
	ld   d, d                                        ; $6c98: $52
	rst  $38                                         ; $6c99: $ff
	rst  $38                                         ; $6c9a: $ff
	ld   d, b                                        ; $6c9b: $50
	ld   a, h                                        ; $6c9c: $7c
	rst  $38                                         ; $6c9d: $ff
	rst  $38                                         ; $6c9e: $ff
	dec  c                                           ; $6c9f: $0d
	ld   [bc], a                                     ; $6ca0: $02
	and  l                                           ; $6ca1: $a5
	inc  b                                           ; $6ca2: $04
	xor  d                                           ; $6ca3: $aa
	ld   a, h                                        ; $6ca4: $7c
	inc  bc                                          ; $6ca5: $03
	ld   l, l                                        ; $6ca6: $6d
	dec  b                                           ; $6ca7: $05
	add  hl, de                                      ; $6ca8: $19
	and  b                                           ; $6ca9: $a0
	inc  bc                                          ; $6caa: $03
	and  a                                           ; $6cab: $a7
	adc  h                                           ; $6cac: $8c
	ld   l, c                                        ; $6cad: $69
	ld   [hl], h                                     ; $6cae: $74
	dec  c                                           ; $6caf: $0d
	inc  b                                           ; $6cb0: $04
	db   $e3                                         ; $6cb1: $e3
	ld   h, l                                        ; $6cb2: $65
	ld   d, d                                        ; $6cb3: $52
	ld   a, h                                        ; $6cb4: $7c
	ld   [hl], l                                     ; $6cb5: $75
	ld   h, a                                        ; $6cb6: $67
	ld   e, d                                        ; $6cb7: $5a
	rst  $38                                         ; $6cb8: $ff
	rst  $38                                         ; $6cb9: $ff
	dec  c                                           ; $6cba: $0d
	nop                                              ; $6cbb: $00
	ld   a, [bc]                                     ; $6cbc: $0a
	inc  e                                           ; $6cbd: $1c
	dec  b                                           ; $6cbe: $05
	ld   [bc], a                                     ; $6cbf: $02
	ld   [bc], a                                     ; $6cc0: $02
	ld   bc, $5656                                   ; $6cc1: $01 $56 $56
	ld   e, a                                        ; $6cc4: $5f
	ld   [hl], a                                     ; $6cc5: $77
	rst  $38                                         ; $6cc6: $ff
	rst  $38                                         ; $6cc7: $ff
	dec  c                                           ; $6cc8: $0d
	ld   a, b                                        ; $6cc9: $78
	and  c                                           ; $6cca: $a1
	ld   e, c                                        ; $6ccb: $59
	inc  b                                           ; $6ccc: $04
	di                                               ; $6ccd: $f3
	ld   [bc], a                                     ; $6cce: $02
	jp   $9075                                       ; $6ccf: $c3 $75 $90


	ld   d, b                                        ; $6cd2: $50
	sbc  c                                           ; $6cd3: $99
	and  c                                           ; $6cd4: $a1
	ld   e, c                                        ; $6cd5: $59
	ld   d, d                                        ; $6cd6: $52
	ld   a, b                                        ; $6cd7: $78
	ld   sp, hl                                      ; $6cd8: $f9
	dec  c                                           ; $6cd9: $0d
	nop                                              ; $6cda: $00
	ld   a, [bc]                                     ; $6cdb: $0a
	rrca                                             ; $6cdc: $0f
	nop                                              ; $6cdd: $00
	ld   bc, $5201                                   ; $6cde: $01 $01 $52
	ld   d, [hl]                                     ; $6ce1: $56
	sbc  [hl]                                        ; $6ce2: $9e
	halt                                             ; $6ce3: $76
	ld   e, l                                        ; $6ce4: $5d
	ld   a, c                                        ; $6ce5: $79
	inc  b                                           ; $6ce6: $04
	di                                               ; $6ce7: $f3
	ld   [bc], a                                     ; $6ce8: $02
	jp   Jump_048_5276                               ; $6ce9: $c3 $76 $52


	ld   d, h                                        ; $6cec: $54
	dec  c                                           ; $6ced: $0d
	sbc  l                                           ; $6cee: $9d
	ld   e, a                                        ; $6cef: $5f
	ld   [hl], l                                     ; $6cf0: $75
	sub  b                                           ; $6cf1: $90
	ld   a, b                                        ; $6cf2: $78
	ld   d, d                                        ; $6cf3: $52
	and  c                                           ; $6cf4: $a1
	ld   [hl], l                                     ; $6cf5: $75
	ld   h, a                                        ; $6cf6: $67
	ld   e, d                                        ; $6cf7: $5a
	rst  $38                                         ; $6cf8: $ff
	rst  $38                                         ; $6cf9: $ff
	dec  c                                           ; $6cfa: $0d
	nop                                              ; $6cfb: $00
	ld   a, [bc]                                     ; $6cfc: $0a
	rrca                                             ; $6cfd: $0f
	dec  b                                           ; $6cfe: $05
	ld   [bc], a                                     ; $6cff: $02
	dec  e                                           ; $6d00: $1d
	ld   b, b                                        ; $6d01: $40
	dec  d                                           ; $6d02: $15
	inc  bc                                          ; $6d03: $03
	dec  d                                           ; $6d04: $15
	ld   bc, $2902                                   ; $6d05: $01 $02 $29
	nop                                              ; $6d08: $00
	ld   bc, $ffff                                   ; $6d09: $01 $ff $ff
	rst  $38                                         ; $6d0c: $ff
	rst  $38                                         ; $6d0d: $ff
	adc  h                                           ; $6d0e: $8c
	ld   d, b                                        ; $6d0f: $50
	ld   d, [hl]                                     ; $6d10: $56
	ld   d, [hl]                                     ; $6d11: $56
	sub  d                                           ; $6d12: $92
	sbc  e                                           ; $6d13: $9b
	sbc  a                                           ; $6d14: $9f
	dec  c                                           ; $6d15: $0d
	adc  c                                           ; $6d16: $89
	ld   a, b                                        ; $6d17: $78
	sbc  [hl]                                        ; $6d18: $9e
	ld   [bc], a                                     ; $6d19: $02
	and  l                                           ; $6d1a: $a5
	inc  b                                           ; $6d1b: $04
	xor  d                                           ; $6d1c: $aa
	ld   a, h                                        ; $6d1d: $7c
	inc  bc                                          ; $6d1e: $03
	ld   l, l                                        ; $6d1f: $6d
	dec  b                                           ; $6d20: $05
	add  hl, de                                      ; $6d21: $19
	ld   a, l                                        ; $6d22: $7d
	inc  bc                                          ; $6d23: $03
	and  a                                           ; $6d24: $a7
	adc  l                                           ; $6d25: $8d
	dec  c                                           ; $6d26: $0d
	halt                                             ; $6d27: $76
	ld   d, d                                        ; $6d28: $52
	ld   d, h                                        ; $6d29: $54
	ld   h, c                                        ; $6d2a: $61
	halt                                             ; $6d2b: $76
	ld   a, c                                        ; $6d2c: $79
	ld   h, l                                        ; $6d2d: $65
	halt                                             ; $6d2e: $76
	ld   e, l                                        ; $6d2f: $5d
	sbc  l                                           ; $6d30: $9d
	sbc  a                                           ; $6d31: $9f
	dec  c                                           ; $6d32: $0d
	nop                                              ; $6d33: $00
	ld   a, [bc]                                     ; $6d34: $0a
	ld   bc, $6d8c                                   ; $6d35: $01 $8c $6d
	ld   a, b                                        ; $6d38: $78
	sbc  a                                           ; $6d39: $9f
	dec  c                                           ; $6d3a: $0d
	nop                                              ; $6d3b: $00
	ld   a, [bc]                                     ; $6d3c: $0a
	dec  c                                           ; $6d3d: $0d
	nop                                              ; $6d3e: $00
	nop                                              ; $6d3f: $00
	rrca                                             ; $6d40: $0f
	nop                                              ; $6d41: $00
	ld   bc, $1e09                                   ; $6d42: $01 $09 $1e
	ld   b, $d4                                      ; $6d45: $06 $d4
	ld   [bc], a                                     ; $6d47: $02
	nop                                              ; $6d48: $00
	ld   [bc], a                                     ; $6d49: $02
	ld   b, $01                                      ; $6d4a: $06 $01
	inc  b                                           ; $6d4c: $04
	jr   nz, jr_048_6d4f                             ; $6d4d: $20 $00

jr_048_6d4f:
	rrca                                             ; $6d4f: $0f
	nop                                              ; $6d50: $00
	ld   bc, $0706                                   ; $6d51: $01 $06 $07
	nop                                              ; $6d54: $00
	ld   [bc], a                                     ; $6d55: $02
	rlca                                             ; $6d56: $07
	xor  c                                           ; $6d57: $a9
	ld   [$8004], sp                                 ; $6d58: $08 $04 $80
	add  $00                                         ; $6d5b: $c6 $00
	ld   c, $2d                                      ; $6d5d: $0e $2d
	rlca                                             ; $6d5f: $07
	dec  hl                                          ; $6d60: $2b
	ld   [bc], a                                     ; $6d61: $02
	inc  bc                                          ; $6d62: $03
	jr   nz, @+$03                                   ; $6d63: $20 $01

	jr   nz, jr_048_6d8a                             ; $6d65: $20 $23

	nop                                              ; $6d67: $00
	rlca                                             ; $6d68: $07
	sub  l                                           ; $6d69: $95
	ld   bc, $5103                                   ; $6d6a: $01 $03 $51
	ld   [bc], a                                     ; $6d6d: $02
	nop                                              ; $6d6e: $00
	inc  bc                                          ; $6d6f: $03
	ld   c, e                                        ; $6d70: $4b
	add  hl, hl                                      ; $6d71: $29
	add  hl, hl                                      ; $6d72: $29
	ld   bc, $2501                                   ; $6d73: $01 $01 $25
	nop                                              ; $6d76: $00
	rlca                                             ; $6d77: $07
	ld   e, b                                        ; $6d78: $58
	nop                                              ; $6d79: $00
	inc  bc                                          ; $6d7a: $03
	ld   b, l                                        ; $6d7b: $45
	ld   bc, $2000                                   ; $6d7c: $01 $00 $20
	nop                                              ; $6d7f: $00
	rlca                                             ; $6d80: $07
	inc  bc                                          ; $6d81: $03
	dec  b                                           ; $6d82: $05
	inc  bc                                          ; $6d83: $03
	ld   b, l                                        ; $6d84: $45
	ld   bc, $2501                                   ; $6d85: $01 $01 $25
	inc  bc                                          ; $6d88: $03
	ld   b, l                                        ; $6d89: $45

jr_048_6d8a:
	ld   bc, $2302                                   ; $6d8a: $01 $02 $23
	inc  e                                           ; $6d8d: $1c
	nop                                              ; $6d8e: $00
	rlca                                             ; $6d8f: $07
	and  b                                           ; $6d90: $a0
	dec  b                                           ; $6d91: $05
	inc  bc                                          ; $6d92: $03
	ld   b, l                                        ; $6d93: $45
	ld   bc, $2503                                   ; $6d94: $01 $03 $25
	inc  bc                                          ; $6d97: $03
	ld   b, l                                        ; $6d98: $45
	ld   bc, $2305                                   ; $6d99: $01 $05 $23
	inc  e                                           ; $6d9c: $1c
	nop                                              ; $6d9d: $00
	rlca                                             ; $6d9e: $07
	ld   h, $07                                      ; $6d9f: $26 $07
	inc  bc                                          ; $6da1: $03
	ld   b, l                                        ; $6da2: $45
	ld   bc, $2506                                   ; $6da3: $01 $06 $25
	nop                                              ; $6da6: $00
	inc  e                                           ; $6da7: $1c
	inc  b                                           ; $6da8: $04
	nop                                              ; $6da9: $00
	nop                                              ; $6daa: $00
	ld   [bc], a                                     ; $6dab: $02
	ld   bc, $7150                                   ; $6dac: $01 $50 $71
	ld   a, [$526f]                                  ; $6daf: $fa $6f $52
	ld   [bc], a                                     ; $6db2: $02
	inc  de                                          ; $6db3: $13
	ld   l, a                                        ; $6db4: $6f
	sub  c                                           ; $6db5: $91
	and  c                                           ; $6db6: $a1
	sbc  a                                           ; $6db7: $9f
	dec  c                                           ; $6db8: $0d
	and  e                                           ; $6db9: $a3
	and  l                                           ; $6dba: $a5
	db   $ec                                         ; $6dbb: $ec
	cp   d                                           ; $6dbc: $ba
	ld   a, h                                        ; $6dbd: $7c
	ld   e, l                                        ; $6dbe: $5d
	and  c                                           ; $6dbf: $a1
	sbc  d                                           ; $6dc0: $9a
	and  c                                           ; $6dc1: $a1
	dec  c                                           ; $6dc2: $0d
	ld   d, h                                        ; $6dc3: $54
	ld   e, a                                        ; $6dc4: $5f
	ld   a, c                                        ; $6dc5: $79
	ld   e, e                                        ; $6dc6: $5b
	ld   l, l                                        ; $6dc7: $6d
	ld   a, h                                        ; $6dc8: $7c
	ld   sp, hl                                      ; $6dc9: $f9
	dec  c                                           ; $6dca: $0d
	nop                                              ; $6dcb: $00
	ld   a, [bc]                                     ; $6dcc: $0a
	rrca                                             ; $6dcd: $0f
	nop                                              ; $6dce: $00
	ld   bc, $6b01                                   ; $6dcf: $01 $01 $6b
	ld   d, h                                        ; $6dd2: $54
	ld   l, [hl]                                     ; $6dd3: $6e
	sub  [hl]                                        ; $6dd4: $96
	sbc  a                                           ; $6dd5: $9f
	dec  c                                           ; $6dd6: $0d
	ld   e, b                                        ; $6dd7: $58
	ld   [bc], a                                     ; $6dd8: $02
	add  b                                           ; $6dd9: $80
	ld   d, d                                        ; $6dda: $52
	ld   [hl], l                                     ; $6ddb: $75
	ld   e, e                                        ; $6ddc: $5b
	sbc  c                                           ; $6ddd: $99
	ld   e, c                                        ; $6dde: $59
	ld   a, b                                        ; $6ddf: $78
	ld   sp, hl                                      ; $6de0: $f9
	dec  c                                           ; $6de1: $0d
	nop                                              ; $6de2: $00
	ld   a, [bc]                                     ; $6de3: $0a
	inc  e                                           ; $6de4: $1c
	inc  b                                           ; $6de5: $04
	ld   bc, $0101                                   ; $6de6: $01 $01 $01
	ld   d, h                                        ; $6de9: $54
	and  c                                           ; $6dea: $a1
	sbc  [hl]                                        ; $6deb: $9e
	ld   d, d                                        ; $6dec: $52
	ld   d, d                                        ; $6ded: $52
	sub  [hl]                                        ; $6dee: $96
	sbc  [hl]                                        ; $6def: $9e
	and  e                                           ; $6df0: $a3
	and  l                                           ; $6df1: $a5
	db   $ec                                         ; $6df2: $ec
	cp   d                                           ; $6df3: $ba
	ld   a, h                                        ; $6df4: $7c
	dec  c                                           ; $6df5: $0d
	ld   e, l                                        ; $6df6: $5d
	and  c                                           ; $6df7: $a1
	sbc  d                                           ; $6df8: $9a
	and  c                                           ; $6df9: $a1
	ld   a, l                                        ; $6dfa: $7d
	ld   a, e                                        ; $6dfb: $7b
	sbc  [hl]                                        ; $6dfc: $9e
	sbc  d                                           ; $6dfd: $9a
	ld   d, d                                        ; $6dfe: $52
	sbc  b                                           ; $6dff: $98
	sub  l                                           ; $6e00: $95
	ld   e, l                                        ; $6e01: $5d
	dec  c                                           ; $6e02: $0d
	and  e                                           ; $6e03: $a3
	call nz, Call_048_7cd8                           ; $6e04: $c4 $d8 $7c
	ld   e, l                                        ; $6e07: $5d
	and  c                                           ; $6e08: $a1
	sbc  d                                           ; $6e09: $9a
	and  c                                           ; $6e0a: $a1
	ld   a, b                                        ; $6e0b: $78
	and  c                                           ; $6e0c: $a1
	ld   l, [hl]                                     ; $6e0d: $6e
	sub  [hl]                                        ; $6e0e: $96
	sbc  a                                           ; $6e0f: $9f
	dec  c                                           ; $6e10: $0d
	nop                                              ; $6e11: $00
	ld   a, [bc]                                     ; $6e12: $0a
	inc  e                                           ; $6e13: $1c
	inc  b                                           ; $6e14: $04
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	ld   bc, $9a6b                                   ; $6e17: $01 $6b $9a
	ld   h, [hl]                                     ; $6e1a: $66
	sub  c                                           ; $6e1b: $91
	sbc  [hl]                                        ; $6e1c: $9e
	ld   a, l                                        ; $6e1d: $7d
	ld   h, [hl]                                     ; $6e1e: $66
	adc  a                                           ; $6e1f: $8f
	sbc  c                                           ; $6e20: $99
	sub  [hl]                                        ; $6e21: $96
	sbc  a                                           ; $6e22: $9f
	dec  c                                           ; $6e23: $0d
	nop                                              ; $6e24: $00
	ld   a, [bc]                                     ; $6e25: $0a
	dec  h                                           ; $6e26: $25
	inc  b                                           ; $6e27: $04
	rlca                                             ; $6e28: $07
	ld   sp, $0304                                   ; $6e29: $31 $04 $03
	jr   nz, jr_048_6e2f                             ; $6e2c: $20 $01

	nop                                              ; $6e2e: $00

jr_048_6e2f:
	jr   nz, jr_048_6e31                             ; $6e2f: $20 $00

jr_048_6e31:
	inc  e                                           ; $6e31: $1c
	inc  b                                           ; $6e32: $04
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	ld   bc, $7258                                   ; $6e35: $01 $58 $72
	ld   e, c                                        ; $6e38: $59
	sbc  d                                           ; $6e39: $9a
	ld   h, e                                        ; $6e3a: $63
	adc  h                                           ; $6e3b: $8c
	sbc  [hl]                                        ; $6e3c: $9e
	ld   l, a                                        ; $6e3d: $6f
	ld   d, d                                        ; $6e3e: $52
	ld   [bc], a                                     ; $6e3f: $02
	inc  de                                          ; $6e40: $13
	ld   l, a                                        ; $6e41: $6f
	sub  c                                           ; $6e42: $91
	and  c                                           ; $6e43: $a1
	sbc  a                                           ; $6e44: $9f
	dec  c                                           ; $6e45: $0d
	nop                                              ; $6e46: $00
	inc  e                                           ; $6e47: $1c
	inc  b                                           ; $6e48: $04
	inc  bc                                          ; $6e49: $03
	inc  bc                                          ; $6e4a: $03
	ld   bc, $ffff                                   ; $6e4b: $01 $ff $ff
	ld   e, e                                        ; $6e4e: $5b
	sub  l                                           ; $6e4f: $95
	ld   d, h                                        ; $6e50: $54
	ld   a, l                                        ; $6e51: $7d
	sbc  [hl]                                        ; $6e52: $9e
	ld   d, b                                        ; $6e53: $50
	and  c                                           ; $6e54: $a1
	adc  h                                           ; $6e55: $8c
	sbc  b                                           ; $6e56: $98
	ld   d, h                                        ; $6e57: $54
	adc  h                                           ; $6e58: $8c
	ld   e, l                                        ; $6e59: $5d
	dec  c                                           ; $6e5a: $0d
	ld   d, d                                        ; $6e5b: $52
	ld   e, c                                        ; $6e5c: $59
	ld   a, b                                        ; $6e5d: $78
	ld   e, c                                        ; $6e5e: $59
	ld   [hl], c                                     ; $6e5f: $71
	ld   l, l                                        ; $6e60: $6d
	ld   a, e                                        ; $6e61: $7b
	rst  $38                                         ; $6e62: $ff
	rst  $38                                         ; $6e63: $ff
	dec  c                                           ; $6e64: $0d
	nop                                              ; $6e65: $00
	ld   a, [bc]                                     ; $6e66: $0a
	inc  e                                           ; $6e67: $1c
	inc  b                                           ; $6e68: $04
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	ld   bc, $9075                                   ; $6e6b: $01 $75 $90
	sbc  [hl]                                        ; $6e6e: $9e
	ld   l, [hl]                                     ; $6e6f: $6e
	ld   d, d                                        ; $6e70: $52
	ld   h, [hl]                                     ; $6e71: $66
	sub  l                                           ; $6e72: $95
	ld   d, h                                        ; $6e73: $54
	add  h                                           ; $6e74: $84
	ld   l, [hl]                                     ; $6e75: $6e
	sub  [hl]                                        ; $6e76: $96
	sbc  a                                           ; $6e77: $9f
	dec  c                                           ; $6e78: $0d
	ld   l, a                                        ; $6e79: $6f
	sub  c                                           ; $6e7a: $91
	and  c                                           ; $6e7b: $a1
	halt                                             ; $6e7c: $76
	ld   e, l                                        ; $6e7d: $5d
	and  c                                           ; $6e7e: $a1
	sbc  d                                           ; $6e7f: $9a
	and  c                                           ; $6e80: $a1
	ld   h, l                                        ; $6e81: $65
	ld   [hl], h                                     ; $6e82: $74
	sbc  d                                           ; $6e83: $9a
	ld   a, [hl]                                     ; $6e84: $7e
	dec  c                                           ; $6e85: $0d
	ld   [hl], l                                     ; $6e86: $75
	ld   e, e                                        ; $6e87: $5b
	sbc  c                                           ; $6e88: $99
	sub  [hl]                                        ; $6e89: $96
	ld   d, h                                        ; $6e8a: $54
	ld   a, c                                        ; $6e8b: $79
	ld   a, b                                        ; $6e8c: $78
	sbc  c                                           ; $6e8d: $99
	ld   e, c                                        ; $6e8e: $59
	sub  a                                           ; $6e8f: $97
	sbc  a                                           ; $6e90: $9f
	dec  c                                           ; $6e91: $0d
	nop                                              ; $6e92: $00
	ld   a, [bc]                                     ; $6e93: $0a
	inc  e                                           ; $6e94: $1c
	inc  b                                           ; $6e95: $04
	ld   bc, $0101                                   ; $6e96: $01 $01 $01
	ld   l, e                                        ; $6e99: $6b
	sbc  d                                           ; $6e9a: $9a
	adc  h                                           ; $6e9b: $8c
	ld   [hl], l                                     ; $6e9c: $75
	sbc  [hl]                                        ; $6e9d: $9e
	ld   d, d                                        ; $6e9e: $52
	ld   [hl], c                                     ; $6e9f: $71
	ld   h, l                                        ; $6ea0: $65
	sub  l                                           ; $6ea1: $95
	ld   a, c                                        ; $6ea2: $79
	dec  c                                           ; $6ea3: $0d
	ld   e, d                                        ; $6ea4: $5a
	and  c                                           ; $6ea5: $a1
	ld   a, [hl]                                     ; $6ea6: $7e
	sbc  e                                           ; $6ea7: $9b
	ei                                               ; $6ea8: $fb
	ld   a, e                                        ; $6ea9: $7b
	ld   a, [$0dfa]                                  ; $6eaa: $fa $fa $0d
	ld   l, a                                        ; $6ead: $6f
	ld   d, d                                        ; $6eae: $52
	ld   [bc], a                                     ; $6eaf: $02
	inc  de                                          ; $6eb0: $13
	ld   l, a                                        ; $6eb1: $6f
	sub  c                                           ; $6eb2: $91
	and  c                                           ; $6eb3: $a1
	ld   a, [$0dfa]                                  ; $6eb4: $fa $fa $0d
	nop                                              ; $6eb7: $00
	ld   a, [bc]                                     ; $6eb8: $0a
	ld   bc, $9a6b                                   ; $6eb9: $01 $6b $9a
	ld   h, [hl]                                     ; $6ebc: $66
	sub  c                                           ; $6ebd: $91
	sbc  [hl]                                        ; $6ebe: $9e
	ld   e, e                                        ; $6ebf: $5b
	sub  l                                           ; $6ec0: $95
	ld   d, h                                        ; $6ec1: $54
	ld   a, h                                        ; $6ec2: $7c
	ld   e, l                                        ; $6ec3: $5d
	and  c                                           ; $6ec4: $a1
	sbc  d                                           ; $6ec5: $9a
	and  c                                           ; $6ec6: $a1
	ld   a, l                                        ; $6ec7: $7d
	dec  c                                           ; $6ec8: $0d
	ld   h, c                                        ; $6ec9: $61
	sbc  d                                           ; $6eca: $9a
	ld   [hl], l                                     ; $6ecb: $75
	ld   e, b                                        ; $6ecc: $58
	ld   h, l                                        ; $6ecd: $65
	adc  h                                           ; $6ece: $8c
	ld   d, d                                        ; $6ecf: $52
	ld   a, [$000d]                                  ; $6ed0: $fa $0d $00
	ld   a, [bc]                                     ; $6ed3: $0a
	dec  b                                           ; $6ed4: $05
	ld   b, b                                        ; $6ed5: $40
	ld   b, l                                        ; $6ed6: $45
	inc  bc                                          ; $6ed7: $03
	ld   b, l                                        ; $6ed8: $45
	ld   bc, $2801                                   ; $6ed9: $01 $01 $28
	nop                                              ; $6edc: $00
	dec  c                                           ; $6edd: $0d
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	rrca                                             ; $6ee0: $0f
	nop                                              ; $6ee1: $00
	ld   bc, $0f00                                   ; $6ee2: $01 $00 $0f
	nop                                              ; $6ee5: $00
	ld   bc, $0102                                   ; $6ee6: $01 $02 $01
	ld   h, c                                        ; $6ee9: $61
	and  c                                           ; $6eea: $a1
	ld   a, c                                        ; $6eeb: $79
	ld   l, a                                        ; $6eec: $6f
	ld   a, l                                        ; $6eed: $7d
	sbc  [hl]                                        ; $6eee: $9e
	and  e                                           ; $6eef: $a3
	and  l                                           ; $6ef0: $a5
	db   $ec                                         ; $6ef1: $ec
	cp   d                                           ; $6ef2: $ba
	sbc  a                                           ; $6ef3: $9f
	dec  c                                           ; $6ef4: $0d
	dec  b                                           ; $6ef5: $05
	add  hl, bc                                      ; $6ef6: $09
	dec  b                                           ; $6ef7: $05
	ld   a, [bc]                                     ; $6ef8: $0a
	ld   a, h                                        ; $6ef9: $7c
	inc  bc                                          ; $6efa: $03
	ld   l, l                                        ; $6efb: $6d
	dec  b                                           ; $6efc: $05
	add  hl, de                                      ; $6efd: $19
	sbc  [hl]                                        ; $6efe: $9e
	ld   e, b                                        ; $6eff: $58
	ld   a, e                                        ; $6f00: $7b
	ld   e, d                                        ; $6f01: $5a
	ld   d, d                                        ; $6f02: $52
	dec  c                                           ; $6f03: $0d
	nop                                              ; $6f04: $00
	dec  b                                           ; $6f05: $05
	ld   b, b                                        ; $6f06: $40
	ld   d, c                                        ; $6f07: $51
	ld   bc, $0000                                   ; $6f08: $01 $00 $00
	ld   bc, $5b75                                   ; $6f0b: $01 $75 $5b
	sbc  c                                           ; $6f0e: $99
	ld   e, c                                        ; $6f0f: $59
	ld   a, b                                        ; $6f10: $78
	ld   sp, hl                                      ; $6f11: $f9
	dec  c                                           ; $6f12: $0d
	nop                                              ; $6f13: $00
	ld   a, [bc]                                     ; $6f14: $0a
	dec  b                                           ; $6f15: $05
	add  b                                           ; $6f16: $80
	sub  $01                                         ; $6f17: $d6 $01
	ld   bc, $1c00                                   ; $6f19: $01 $00 $1c
	inc  b                                           ; $6f1c: $04
	rlca                                             ; $6f1d: $07
	rlca                                             ; $6f1e: $07
	ld   bc, $ffff                                   ; $6f1f: $01 $ff $ff
	ld   d, d                                        ; $6f22: $52
	ld   d, d                                        ; $6f23: $52
	ld   e, a                                        ; $6f24: $5f
	ld   [hl], a                                     ; $6f25: $77
	rst  $38                                         ; $6f26: $ff
	rst  $38                                         ; $6f27: $ff
	dec  c                                           ; $6f28: $0d
	ld   l, e                                        ; $6f29: $6b
	sbc  d                                           ; $6f2a: $9a
	ld   h, [hl]                                     ; $6f2b: $66
	sub  c                                           ; $6f2c: $91
	sbc  [hl]                                        ; $6f2d: $9e
	ld   a, l                                        ; $6f2e: $7d
	ld   h, [hl]                                     ; $6f2f: $66
	adc  a                                           ; $6f30: $8f
	sbc  c                                           ; $6f31: $99
	sub  [hl]                                        ; $6f32: $96
	rst  $38                                         ; $6f33: $ff
	rst  $38                                         ; $6f34: $ff
	dec  c                                           ; $6f35: $0d
	nop                                              ; $6f36: $00
	ld   a, [bc]                                     ; $6f37: $0a
	dec  h                                           ; $6f38: $25
	inc  b                                           ; $6f39: $04
	rlca                                             ; $6f3a: $07
	ld   sp, $0304                                   ; $6f3b: $31 $04 $03
	jr   nz, jr_048_6f41                             ; $6f3e: $20 $01

	nop                                              ; $6f40: $00

jr_048_6f41:
	jr   nz, jr_048_6f43                             ; $6f41: $20 $00

jr_048_6f43:
	inc  e                                           ; $6f43: $1c
	inc  b                                           ; $6f44: $04
	rlca                                             ; $6f45: $07
	rlca                                             ; $6f46: $07
	ld   bc, $7258                                   ; $6f47: $01 $58 $72
	ld   e, c                                        ; $6f4a: $59
	sbc  d                                           ; $6f4b: $9a
	ld   h, e                                        ; $6f4c: $63
	adc  h                                           ; $6f4d: $8c
	rst  $38                                         ; $6f4e: $ff
	rst  $38                                         ; $6f4f: $ff
	dec  c                                           ; $6f50: $0d
	nop                                              ; $6f51: $00
	ld   a, [bc]                                     ; $6f52: $0a
	dec  c                                           ; $6f53: $0d
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	rrca                                             ; $6f56: $0f
	nop                                              ; $6f57: $00
	ld   bc, $4005                                   ; $6f58: $01 $05 $40
	ld   b, l                                        ; $6f5b: $45
	inc  bc                                          ; $6f5c: $03
	ld   b, l                                        ; $6f5d: $45
	ld   bc, $2801                                   ; $6f5e: $01 $01 $28
	nop                                              ; $6f61: $00
	ld   bc, $ffff                                   ; $6f62: $01 $ff $ff
	rst  $38                                         ; $6f65: $ff
	rst  $38                                         ; $6f66: $ff
	and  e                                           ; $6f67: $a3
	and  l                                           ; $6f68: $a5
	db   $ec                                         ; $6f69: $ec
	cp   d                                           ; $6f6a: $ba
	sbc  [hl]                                        ; $6f6b: $9e
	dec  c                                           ; $6f6c: $0d
	ld   e, e                                        ; $6f6d: $5b
	ld   h, b                                        ; $6f6e: $60
	and  c                                           ; $6f6f: $a1
	ld   [bc], a                                     ; $6f70: $02
	jr   z, jr_048_6fc5                              ; $6f71: $28 $52

	ld   l, h                                        ; $6f73: $6c
	rst  $38                                         ; $6f74: $ff
	rst  $38                                         ; $6f75: $ff
	dec  c                                           ; $6f76: $0d
	nop                                              ; $6f77: $00
	ld   a, [bc]                                     ; $6f78: $0a
	nop                                              ; $6f79: $00
	inc  e                                           ; $6f7a: $1c
	inc  b                                           ; $6f7b: $04
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	ld   [bc], a                                     ; $6f7e: $02
	dec  b                                           ; $6f7f: $05
	ld   b, b                                        ; $6f80: $40
	ld   d, c                                        ; $6f81: $51
	ld   bc, $0000                                   ; $6f82: $01 $00 $00
	ld   bc, $a161                                   ; $6f85: $01 $61 $a1
	ld   a, c                                        ; $6f88: $79
	ld   l, a                                        ; $6f89: $6f
	ld   a, l                                        ; $6f8a: $7d
	sbc  [hl]                                        ; $6f8b: $9e
	ld   l, a                                        ; $6f8c: $6f
	ld   d, d                                        ; $6f8d: $52
	ld   [bc], a                                     ; $6f8e: $02
	inc  de                                          ; $6f8f: $13
	ld   l, a                                        ; $6f90: $6f
	sub  c                                           ; $6f91: $91
	and  c                                           ; $6f92: $a1
	sbc  a                                           ; $6f93: $9f
	dec  c                                           ; $6f94: $0d
	nop                                              ; $6f95: $00
	inc  e                                           ; $6f96: $1c
	inc  b                                           ; $6f97: $04
	ld   b, $06                                      ; $6f98: $06 $06
	ld   bc, $ffff                                   ; $6f9a: $01 $ff $ff
	ld   d, b                                        ; $6f9d: $50
	sbc  d                                           ; $6f9e: $9a
	ld   sp, hl                                      ; $6f9f: $f9
	db   $10                                         ; $6fa0: $10
	ld   [hl], a                                     ; $6fa1: $77
	ld   d, h                                        ; $6fa2: $54
	ld   h, l                                        ; $6fa3: $65
	ld   l, l                                        ; $6fa4: $6d
	ld   a, h                                        ; $6fa5: $7c
	ld   sp, hl                                      ; $6fa6: $f9
	dec  c                                           ; $6fa7: $0d
	ld   e, c                                        ; $6fa8: $59
	ld   e, b                                        ; $6fa9: $58
	ld   d, d                                        ; $6faa: $52
	sbc  e                                           ; $6fab: $9b
	sbc  [hl]                                        ; $6fac: $9e
	ld   h, a                                        ; $6fad: $67
	ld   [hl], c                                     ; $6fae: $71
	ld   h, d                                        ; $6faf: $62
	ld   e, l                                        ; $6fb0: $5d
	sbc  l                                           ; $6fb1: $9d
	sbc  c                                           ; $6fb2: $99
	ld   d, d                                        ; $6fb3: $52
	sub  [hl]                                        ; $6fb4: $96
	sbc  a                                           ; $6fb5: $9f
	dec  c                                           ; $6fb6: $0d
	nop                                              ; $6fb7: $00
	ld   a, [bc]                                     ; $6fb8: $0a
	inc  e                                           ; $6fb9: $1c
	inc  b                                           ; $6fba: $04
	inc  bc                                          ; $6fbb: $03
	inc  bc                                          ; $6fbc: $03
	ld   bc, $a15d                                   ; $6fbd: $01 $5d $a1
	sbc  d                                           ; $6fc0: $9a
	and  c                                           ; $6fc1: $a1
	sbc  [hl]                                        ; $6fc2: $9e
	sub  d                                           ; $6fc3: $92
	ld   h, a                                        ; $6fc4: $67

jr_048_6fc5:
	adc  h                                           ; $6fc5: $8c
	ld   a, b                                        ; $6fc6: $78
	ld   e, l                                        ; $6fc7: $5d
	ld   [hl], c                                     ; $6fc8: $71
	ld   [hl], h                                     ; $6fc9: $74
	dec  c                                           ; $6fca: $0d
	ld   l, [hl]                                     ; $6fcb: $6e
	ld   d, d                                        ; $6fcc: $52
	ld   h, [hl]                                     ; $6fcd: $66
	sub  l                                           ; $6fce: $95
	ld   d, h                                        ; $6fcf: $54
	add  h                                           ; $6fd0: $84
	ld   sp, hl                                      ; $6fd1: $f9
	dec  c                                           ; $6fd2: $0d
	nop                                              ; $6fd3: $00
	ld   a, [bc]                                     ; $6fd4: $0a
	jr   jr_048_6fd9                                 ; $6fd5: $18 $02

	nop                                              ; $6fd7: $00
	inc  bc                                          ; $6fd8: $03

jr_048_6fd9:
	and  a                                           ; $6fd9: $a7
	adc  [hl]                                        ; $6fda: $8e
	nop                                              ; $6fdb: $00
	nop                                              ; $6fdc: $00
	ld   e, d                                        ; $6fdd: $5a
	and  c                                           ; $6fde: $a1
	ld   a, [hl]                                     ; $6fdf: $7e
	sbc  c                                           ; $6fe0: $99
	nop                                              ; $6fe1: $00
	ld   bc, $a607                                   ; $6fe2: $01 $07 $a6
	ld   [bc], a                                     ; $6fe5: $02
	ld   [bc], a                                     ; $6fe6: $02
	ld   [bc], a                                     ; $6fe7: $02
	ld   bc, $2000                                   ; $6fe8: $01 $00 $20
	nop                                              ; $6feb: $00
	rlca                                             ; $6fec: $07
	ld   e, l                                        ; $6fed: $5d
	inc  bc                                          ; $6fee: $03
	ld   [bc], a                                     ; $6fef: $02
	ld   [bc], a                                     ; $6ff0: $02
	ld   bc, $2001                                   ; $6ff1: $01 $01 $20
	nop                                              ; $6ff4: $00
	rrca                                             ; $6ff5: $0f
	nop                                              ; $6ff6: $00
	ld   bc, $5001                                   ; $6ff7: $01 $01 $50
	sbc  b                                           ; $6ffa: $98
	ld   e, d                                        ; $6ffb: $5a
	halt                                             ; $6ffc: $76
	ld   d, h                                        ; $6ffd: $54
	sbc  [hl]                                        ; $6ffe: $9e
	and  e                                           ; $6fff: $a3
	and  l                                           ; $7000: $a5
	db   $ec                                         ; $7001: $ec
	cp   d                                           ; $7002: $ba
	rst  $38                                         ; $7003: $ff
	rst  $38                                         ; $7004: $ff
	dec  c                                           ; $7005: $0d
	ld   l, e                                        ; $7006: $6b
	sbc  d                                           ; $7007: $9a
	ld   h, [hl]                                     ; $7008: $66
	sub  c                                           ; $7009: $91
	sbc  [hl]                                        ; $700a: $9e
	ld   [bc], a                                     ; $700b: $02
	and  l                                           ; $700c: $a5
	inc  b                                           ; $700d: $04
	xor  d                                           ; $700e: $aa
	ld   a, h                                        ; $700f: $7c
	inc  bc                                          ; $7010: $03
	ld   l, l                                        ; $7011: $6d
	dec  b                                           ; $7012: $05
	add  hl, de                                      ; $7013: $19
	ld   a, l                                        ; $7014: $7d
	dec  c                                           ; $7015: $0d
	inc  bc                                          ; $7016: $03
	and  a                                           ; $7017: $a7
	adc  [hl]                                        ; $7018: $8e
	ld   h, c                                        ; $7019: $61
	halt                                             ; $701a: $76
	ld   a, c                                        ; $701b: $79
	ld   h, a                                        ; $701c: $67
	sbc  c                                           ; $701d: $99
	sub  [hl]                                        ; $701e: $96
	sbc  a                                           ; $701f: $9f
	dec  c                                           ; $7020: $0d
	nop                                              ; $7021: $00
	ld   a, [bc]                                     ; $7022: $0a
	dec  b                                           ; $7023: $05
	add  b                                           ; $7024: $80
	sub  $01                                         ; $7025: $d6 $01
	ld   bc, $1c00                                   ; $7027: $01 $00 $1c
	inc  b                                           ; $702a: $04
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	ld   bc, $a154                                   ; $702d: $01 $54 $a1
	sbc  [hl]                                        ; $7030: $9e
	ld   l, e                                        ; $7031: $6b
	ld   d, h                                        ; $7032: $54
	ld   l, [hl]                                     ; $7033: $6e
	ld   a, e                                        ; $7034: $7b
	sbc  a                                           ; $7035: $9f
	dec  c                                           ; $7036: $0d
	ld   l, e                                        ; $7037: $6b
	sbc  d                                           ; $7038: $9a
	ld   h, [hl]                                     ; $7039: $66
	sub  c                                           ; $703a: $91
	sbc  [hl]                                        ; $703b: $9e
	ld   l, a                                        ; $703c: $6f
	ld   d, d                                        ; $703d: $52
	ld   [bc], a                                     ; $703e: $02
	inc  de                                          ; $703f: $13
	ld   l, a                                        ; $7040: $6f
	sub  c                                           ; $7041: $91
	and  c                                           ; $7042: $a1
	dec  c                                           ; $7043: $0d
	ld   l, a                                        ; $7044: $6f
	sub  c                                           ; $7045: $91
	db   $fc                                         ; $7046: $fc
	and  c                                           ; $7047: $a1
	halt                                             ; $7048: $76
	sub  d                                           ; $7049: $92
	ld   h, a                                        ; $704a: $67
	adc  [hl]                                        ; $704b: $8e
	and  c                                           ; $704c: $a1
	ld   l, [hl]                                     ; $704d: $6e
	sub  [hl]                                        ; $704e: $96
	sbc  a                                           ; $704f: $9f
	dec  c                                           ; $7050: $0d
	nop                                              ; $7051: $00
	ld   a, [bc]                                     ; $7052: $0a
	rrca                                             ; $7053: $0f
	nop                                              ; $7054: $00
	ld   bc, $5401                                   ; $7055: $01 $01 $54
	and  c                                           ; $7058: $a1
	sbc  [hl]                                        ; $7059: $9e
	sbc  l                                           ; $705a: $9d
	ld   e, c                                        ; $705b: $59
	ld   [hl], c                                     ; $705c: $71
	ld   l, l                                        ; $705d: $6d
	sub  [hl]                                        ; $705e: $96
	and  e                                           ; $705f: $a3
	and  l                                           ; $7060: $a5
	db   $ec                                         ; $7061: $ec
	cp   d                                           ; $7062: $ba
	sbc  a                                           ; $7063: $9f
	dec  c                                           ; $7064: $0d
	ld   l, e                                        ; $7065: $6b
	sbc  d                                           ; $7066: $9a
	ld   h, [hl]                                     ; $7067: $66
	sub  c                                           ; $7068: $91
	sbc  a                                           ; $7069: $9f
	dec  c                                           ; $706a: $0d
	nop                                              ; $706b: $00
	ld   a, [bc]                                     ; $706c: $0a
	dec  c                                           ; $706d: $0d
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	inc  hl                                          ; $7070: $23
	ld   bc, $ff01                                   ; $7071: $01 $01 $ff
	rst  $38                                         ; $7074: $ff
	inc  bc                                          ; $7075: $03
	ld   l, h                                        ; $7076: $6c
	ld   h, l                                        ; $7077: $65
	inc  bc                                          ; $7078: $03
	and  a                                           ; $7079: $a7
	adc  [hl]                                        ; $707a: $8e
	halt                                             ; $707b: $76
	ld   h, a                                        ; $707c: $67
	sbc  c                                           ; $707d: $99
	ld   e, c                                        ; $707e: $59
	sbc  a                                           ; $707f: $9f
	dec  c                                           ; $7080: $0d
	nop                                              ; $7081: $00
	ld   a, [bc]                                     ; $7082: $0a
	inc  c                                           ; $7083: $0c
	ld   [bc], a                                     ; $7084: $02
	dec  h                                           ; $7085: $25
	nop                                              ; $7086: $00
	ld   c, $02                                      ; $7087: $0e $02
	rrca                                             ; $7089: $0f
	nop                                              ; $708a: $00
	ld   bc, $5401                                   ; $708b: $01 $01 $54
	db   $fc                                         ; $708e: $fc
	and  c                                           ; $708f: $a1
	sub  [hl]                                        ; $7090: $96
	ld   e, l                                        ; $7091: $5d
	inc  b                                           ; $7092: $04
	ld   b, d                                        ; $7093: $42
	ld   l, l                                        ; $7094: $6d
	rst  $38                                         ; $7095: $ff
	rst  $38                                         ; $7096: $ff
	dec  c                                           ; $7097: $0d
	ld   e, c                                        ; $7098: $59
	ld   a, b                                        ; $7099: $78
	sbc  b                                           ; $709a: $98
	inc  b                                           ; $709b: $04
	dec  c                                           ; $709c: $0d
	ld   e, d                                        ; $709d: $5a
	dec  b                                           ; $709e: $05
	inc  de                                          ; $709f: $13
	ld   a, c                                        ; $70a0: $79
	ld   a, b                                        ; $70a1: $78
	ld   [hl], c                                     ; $70a2: $71
	ld   l, l                                        ; $70a3: $6d
	ld   l, h                                        ; $70a4: $6c
	sbc  a                                           ; $70a5: $9f
	dec  c                                           ; $70a6: $0d
	nop                                              ; $70a7: $00
	ld   a, [bc]                                     ; $70a8: $0a
	add  hl, hl                                      ; $70a9: $29
	ld   b, $00                                      ; $70aa: $06 $00
	rrca                                             ; $70ac: $0f
	nop                                              ; $70ad: $00
	ld   bc, $5201                                   ; $70ae: $01 $01 $52
	sub  d                                           ; $70b1: $92
	sbc  [hl]                                        ; $70b2: $9e
	inc  b                                           ; $70b3: $04
	ld   c, $03                                      ; $70b4: $0e $03
	sbc  l                                           ; $70b6: $9d
	inc  b                                           ; $70b7: $04
	and  [hl]                                        ; $70b8: $a6
	ld   l, [hl]                                     ; $70b9: $6e
	sub  [hl]                                        ; $70ba: $96
	and  e                                           ; $70bb: $a3
	and  l                                           ; $70bc: $a5
	db   $ec                                         ; $70bd: $ec
	cp   d                                           ; $70be: $ba
	sbc  a                                           ; $70bf: $9f
	dec  c                                           ; $70c0: $0d
	nop                                              ; $70c1: $00
	ld   a, [bc]                                     ; $70c2: $0a
	dec  b                                           ; $70c3: $05
	add  b                                           ; $70c4: $80
	sub  $01                                         ; $70c5: $d6 $01
	ld   bc, $0700                                   ; $70c7: $01 $00 $07
	or   d                                           ; $70ca: $b2
	inc  b                                           ; $70cb: $04
	inc  bc                                          ; $70cc: $03
	ld   b, l                                        ; $70cd: $45
	ld   bc, $2000                                   ; $70ce: $01 $00 $20
	nop                                              ; $70d1: $00
	inc  e                                           ; $70d2: $1c
	inc  b                                           ; $70d3: $04
	inc  bc                                          ; $70d4: $03
	inc  bc                                          ; $70d5: $03
	ld   bc, $546b                                   ; $70d6: $01 $6b $54
	ld   a, b                                        ; $70d9: $78
	ld   a, h                                        ; $70da: $7c
	rst  $38                                         ; $70db: $ff
	rst  $38                                         ; $70dc: $ff
	ld   sp, hl                                      ; $70dd: $f9
	dec  c                                           ; $70de: $0d
	ld   l, e                                        ; $70df: $6b
	sbc  d                                           ; $70e0: $9a
	ld   h, [hl]                                     ; $70e1: $66
	sub  c                                           ; $70e2: $91
	sbc  [hl]                                        ; $70e3: $9e
	ld   e, l                                        ; $70e4: $5d
	and  c                                           ; $70e5: $a1
	sbc  d                                           ; $70e6: $9a
	and  c                                           ; $70e7: $a1
	dec  c                                           ; $70e8: $0d
	ld   a, l                                        ; $70e9: $7d
	ld   h, [hl]                                     ; $70ea: $66
	adc  a                                           ; $70eb: $8f
	sbc  c                                           ; $70ec: $99
	sub  [hl]                                        ; $70ed: $96
	sbc  a                                           ; $70ee: $9f
	dec  c                                           ; $70ef: $0d
	nop                                              ; $70f0: $00
	ld   a, [bc]                                     ; $70f1: $0a
	dec  h                                           ; $70f2: $25
	inc  b                                           ; $70f3: $04
	dec  b                                           ; $70f4: $05
	ld   b, b                                        ; $70f5: $40
	ld   b, l                                        ; $70f6: $45
	inc  bc                                          ; $70f7: $03
	ld   b, l                                        ; $70f8: $45
	ld   bc, $2801                                   ; $70f9: $01 $01 $28
	nop                                              ; $70fc: $00
	inc  e                                           ; $70fd: $1c
	inc  b                                           ; $70fe: $04
	inc  bc                                          ; $70ff: $03
	inc  bc                                          ; $7100: $03
	ld   bc, $7258                                   ; $7101: $01 $58 $72
	ld   e, c                                        ; $7104: $59
	sbc  d                                           ; $7105: $9a
	ld   h, e                                        ; $7106: $63
	adc  h                                           ; $7107: $8c
	sbc  [hl]                                        ; $7108: $9e
	ld   l, a                                        ; $7109: $6f
	ld   d, d                                        ; $710a: $52
	ld   [bc], a                                     ; $710b: $02
	inc  de                                          ; $710c: $13
	ld   l, a                                        ; $710d: $6f
	sub  c                                           ; $710e: $91
	and  c                                           ; $710f: $a1
	sbc  a                                           ; $7110: $9f
	dec  c                                           ; $7111: $0d
	ld   d, b                                        ; $7112: $50
	ld   a, h                                        ; $7113: $7c
	ld   a, e                                        ; $7114: $7b
	rst  $38                                         ; $7115: $ff
	rst  $38                                         ; $7116: $ff
	sub  d                                           ; $7117: $92
	ld   [hl], c                                     ; $7118: $71
	ld   a, a                                        ; $7119: $7f
	sbc  b                                           ; $711a: $98
	sub  d                                           ; $711b: $92
	ld   h, a                                        ; $711c: $67
	and  c                                           ; $711d: $a1
	ld   l, [hl]                                     ; $711e: $6e
	dec  c                                           ; $711f: $0d
	adc  c                                           ; $7120: $89
	ld   d, h                                        ; $7121: $54
	ld   e, d                                        ; $7122: $5a
	ld   d, d                                        ; $7123: $52
	ld   d, d                                        ; $7124: $52
	halt                                             ; $7125: $76
	ld   e, b                                        ; $7126: $58
	sub  b                                           ; $7127: $90
	ld   d, h                                        ; $7128: $54
	sub  [hl]                                        ; $7129: $96
	sbc  a                                           ; $712a: $9f
	dec  c                                           ; $712b: $0d
	nop                                              ; $712c: $00
	ld   a, [bc]                                     ; $712d: $0a
	rlca                                             ; $712e: $07
	rst  $38                                         ; $712f: $ff
	inc  bc                                          ; $7130: $03
	inc  bc                                          ; $7131: $03
	jr   nz, jr_048_7135                             ; $7132: $20 $01

	nop                                              ; $7134: $00

jr_048_7135:
	jr   nz, jr_048_7137                             ; $7135: $20 $00

jr_048_7137:
	ld   bc, $9166                                   ; $7137: $01 $66 $91
	ld   d, b                                        ; $713a: $50
	ld   a, e                                        ; $713b: $7b
	sbc  [hl]                                        ; $713c: $9e
	pop  de                                          ; $713d: $d1
	and  l                                           ; $713e: $a5
	pop  de                                          ; $713f: $d1
	and  l                                           ; $7140: $a5
	sbc  a                                           ; $7141: $9f
	dec  c                                           ; $7142: $0d
	nop                                              ; $7143: $00
	ld   a, [bc]                                     ; $7144: $0a
	rrca                                             ; $7145: $0f
	nop                                              ; $7146: $00
	ld   bc, $000d                                   ; $7147: $01 $0d $00
	nop                                              ; $714a: $00
	add  hl, bc                                      ; $714b: $09
	ld   e, $00                                      ; $714c: $1e $00
	rrca                                             ; $714e: $0f
	nop                                              ; $714f: $00
	ld   bc, $5401                                   ; $7150: $01 $01 $54
	and  c                                           ; $7153: $a1
	sbc  [hl]                                        ; $7154: $9e
	sbc  l                                           ; $7155: $9d
	ld   e, c                                        ; $7156: $59
	ld   [hl], c                                     ; $7157: $71
	rst  $38                                         ; $7158: $ff
	ld   l, l                                        ; $7159: $6d
	rst  $38                                         ; $715a: $ff
	rst  $38                                         ; $715b: $ff
	rst  $38                                         ; $715c: $ff
	rst  $38                                         ; $715d: $ff
	dec  c                                           ; $715e: $0d
	nop                                              ; $715f: $00
	dec  c                                           ; $7160: $0d
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	inc  c                                           ; $7163: $0c
	ld   [bc], a                                     ; $7164: $02
	ld   c, $03                                      ; $7165: $0e $03
	ld   bc, $9a50                                   ; $7167: $01 $50 $9a
	rst  $38                                         ; $716a: $ff
	rst  $38                                         ; $716b: $ff
	rst  $38                                         ; $716c: $ff
	ld   sp, hl                                      ; $716d: $f9
	dec  c                                           ; $716e: $0d
	ld   e, c                                        ; $716f: $59
	sub  a                                           ; $7170: $97
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	ld   l, [hl]                                     ; $7173: $6e
	rst  $38                                         ; $7174: $ff
	rst  $38                                         ; $7175: $ff
	ld   e, d                                        ; $7176: $5a
	rst  $38                                         ; $7177: $ff
	rst  $38                                         ; $7178: $ff
	dec  c                                           ; $7179: $0d
	nop                                              ; $717a: $00
	ld   a, [bc]                                     ; $717b: $0a
	ld   l, $01                                      ; $717c: $2e $01
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	dec  b                                           ; $7180: $05
	ld   b, b                                        ; $7181: $40
	ld   b, l                                        ; $7182: $45
	inc  bc                                          ; $7183: $03
	ld   b, l                                        ; $7184: $45
	ld   bc, $2801                                   ; $7185: $01 $01 $28
	nop                                              ; $7188: $00
	inc  e                                           ; $7189: $1c
	inc  b                                           ; $718a: $04
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	ld   bc, $7258                                   ; $718d: $01 $58 $72
	ld   e, c                                        ; $7190: $59
	sbc  d                                           ; $7191: $9a
	ld   h, e                                        ; $7192: $63
	adc  h                                           ; $7193: $8c
	rst  $38                                         ; $7194: $ff
	rst  $38                                         ; $7195: $ff
	dec  c                                           ; $7196: $0d
	nop                                              ; $7197: $00
	inc  e                                           ; $7198: $1c
	inc  b                                           ; $7199: $04
	ld   b, $06                                      ; $719a: $06 $06
	ld   bc, $9a50                                   ; $719c: $01 $50 $9a
	ld   sp, hl                                      ; $719f: $f9
	db   $10                                         ; $71a0: $10
	ld   [hl], a                                     ; $71a1: $77
	ld   d, h                                        ; $71a2: $54
	ld   h, l                                        ; $71a3: $65
	ld   l, l                                        ; $71a4: $6d
	ld   a, h                                        ; $71a5: $7c
	ld   sp, hl                                      ; $71a6: $f9
	dec  c                                           ; $71a7: $0d
	ld   e, c                                        ; $71a8: $59
	ld   e, b                                        ; $71a9: $58
	ld   d, d                                        ; $71aa: $52
	sbc  e                                           ; $71ab: $9b
	sbc  l                                           ; $71ac: $9d
	sbc  c                                           ; $71ad: $99
	ld   d, d                                        ; $71ae: $52
	sub  [hl]                                        ; $71af: $96
	sbc  a                                           ; $71b0: $9f
	dec  c                                           ; $71b1: $0d
	nop                                              ; $71b2: $00
	ld   a, [bc]                                     ; $71b3: $0a
	rrca                                             ; $71b4: $0f
	nop                                              ; $71b5: $00
	ld   bc, $5401                                   ; $71b6: $01 $01 $54
	and  c                                           ; $71b9: $a1
	sbc  [hl]                                        ; $71ba: $9e
	rst  $38                                         ; $71bb: $ff
	rst  $38                                         ; $71bc: $ff
	ld   a, b                                        ; $71bd: $78
	and  c                                           ; $71be: $a1
	ld   l, [hl]                                     ; $71bf: $6e
	ld   e, c                                        ; $71c0: $59
	ld   h, e                                        ; $71c1: $63
	ld   [hl], c                                     ; $71c2: $71
	ld   e, e                                        ; $71c3: $5b
	ld   e, c                                        ; $71c4: $59
	sub  a                                           ; $71c5: $97
	dec  c                                           ; $71c6: $0d
	inc  b                                           ; $71c7: $04
	dec  c                                           ; $71c8: $0d
	ld   e, d                                        ; $71c9: $5a
	ld   l, [hl]                                     ; $71ca: $6e
	sbc  c                                           ; $71cb: $99
	ld   e, l                                        ; $71cc: $5d
	ld   [hl], h                                     ; $71cd: $74
	rst  $38                                         ; $71ce: $ff
	rst  $38                                         ; $71cf: $ff
	dec  c                                           ; $71d0: $0d
	nop                                              ; $71d1: $00
	ld   a, [bc]                                     ; $71d2: $0a
	ld   bc, $6254                                   ; $71d3: $01 $54 $62
	rst  $38                                         ; $71d6: $ff
	rst  $38                                         ; $71d7: $ff
	ld   e, c                                        ; $71d8: $59
	rst  $38                                         ; $71d9: $ff
	rst  $38                                         ; $71da: $ff
	ld   a, b                                        ; $71db: $78
	rst  $38                                         ; $71dc: $ff
	rst  $38                                         ; $71dd: $ff
	dec  c                                           ; $71de: $0d
	nop                                              ; $71df: $00
	dec  c                                           ; $71e0: $0d
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	inc  c                                           ; $71e3: $0c
	ld   [bc], a                                     ; $71e4: $02
	ld   c, $03                                      ; $71e5: $0e $03
	ld   bc, $9a50                                   ; $71e7: $01 $50 $9a
	rst  $38                                         ; $71ea: $ff
	rst  $38                                         ; $71eb: $ff
	rst  $38                                         ; $71ec: $ff
	ld   sp, hl                                      ; $71ed: $f9
	dec  c                                           ; $71ee: $0d
	ld   [hl], a                                     ; $71ef: $77
	ld   d, h                                        ; $71f0: $54
	ld   h, l                                        ; $71f1: $65
	rst  $38                                         ; $71f2: $ff
	rst  $38                                         ; $71f3: $ff
	ld   l, l                                        ; $71f4: $6d
	rst  $38                                         ; $71f5: $ff
	rst  $38                                         ; $71f6: $ff
	and  c                                           ; $71f7: $a1
	rst  $38                                         ; $71f8: $ff
	rst  $38                                         ; $71f9: $ff
	dec  c                                           ; $71fa: $0d
	nop                                              ; $71fb: $00
	ld   a, [bc]                                     ; $71fc: $0a
	ld   l, $01                                      ; $71fd: $2e $01
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	inc  e                                           ; $7201: $1c
	inc  b                                           ; $7202: $04
	inc  bc                                          ; $7203: $03
	inc  bc                                          ; $7204: $03
	ld   bc, $546b                                   ; $7205: $01 $6b $54
	ld   a, b                                        ; $7208: $78
	ld   a, h                                        ; $7209: $7c
	rst  $38                                         ; $720a: $ff
	rst  $38                                         ; $720b: $ff
	ld   sp, hl                                      ; $720c: $f9
	dec  c                                           ; $720d: $0d
	nop                                              ; $720e: $00
	inc  e                                           ; $720f: $1c
	inc  b                                           ; $7210: $04
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	ld   bc, $9166                                   ; $7213: $01 $66 $91
	ld   d, b                                        ; $7216: $50
	rst  $38                                         ; $7217: $ff
	rst  $38                                         ; $7218: $ff
	dec  c                                           ; $7219: $0d
	nop                                              ; $721a: $00
	ld   a, [bc]                                     ; $721b: $0a
	ld   bc, $a5a3                                   ; $721c: $01 $a3 $a5
	db   $ec                                         ; $721f: $ec
	cp   d                                           ; $7220: $ba
	ld   a, h                                        ; $7221: $7c
	ld   e, l                                        ; $7222: $5d
	and  c                                           ; $7223: $a1
	sbc  d                                           ; $7224: $9a
	and  c                                           ; $7225: $a1
	ld   a, l                                        ; $7226: $7d
	ld   a, e                                        ; $7227: $7b
	sbc  [hl]                                        ; $7228: $9e
	dec  c                                           ; $7229: $0d
	sbc  d                                           ; $722a: $9a
	ld   d, d                                        ; $722b: $52
	sbc  b                                           ; $722c: $98
	sub  l                                           ; $722d: $95
	ld   e, l                                        ; $722e: $5d
	and  e                                           ; $722f: $a3
	call nz, Call_048_7cd8                           ; $7230: $c4 $d8 $7c
	dec  c                                           ; $7233: $0d
	ld   e, l                                        ; $7234: $5d
	and  c                                           ; $7235: $a1
	sbc  d                                           ; $7236: $9a
	and  c                                           ; $7237: $a1
	ld   a, b                                        ; $7238: $78
	and  c                                           ; $7239: $a1
	ld   l, [hl]                                     ; $723a: $6e
	sub  [hl]                                        ; $723b: $96
	sbc  a                                           ; $723c: $9f
	dec  c                                           ; $723d: $0d
	nop                                              ; $723e: $00
	ld   a, [bc]                                     ; $723f: $0a
	ld   bc, $9a6b                                   ; $7240: $01 $6b $9a
	ld   h, [hl]                                     ; $7243: $66
	sub  c                                           ; $7244: $91
	sbc  [hl]                                        ; $7245: $9e
	ld   a, l                                        ; $7246: $7d
	ld   h, [hl]                                     ; $7247: $66
	adc  a                                           ; $7248: $8f
	sbc  c                                           ; $7249: $99
	sub  [hl]                                        ; $724a: $96
	sbc  a                                           ; $724b: $9f
	dec  c                                           ; $724c: $0d
	nop                                              ; $724d: $00
	ld   a, [bc]                                     ; $724e: $0a
	ld   b, $a3                                      ; $724f: $06 $a3
	inc  bc                                          ; $7251: $03
	rrca                                             ; $7252: $0f
	nop                                              ; $7253: $00
	ld   bc, $040d                                   ; $7254: $01 $0d $04
	nop                                              ; $7257: $00
	ld   [bc], a                                     ; $7258: $02
	ld   bc, $a161                                   ; $7259: $01 $61 $a1
	ld   a, c                                        ; $725c: $79
	ld   l, a                                        ; $725d: $6f
	ld   a, l                                        ; $725e: $7d
	sbc  [hl]                                        ; $725f: $9e
	and  e                                           ; $7260: $a3
	and  l                                           ; $7261: $a5
	db   $ec                                         ; $7262: $ec
	cp   d                                           ; $7263: $ba
	sbc  a                                           ; $7264: $9f
	dec  c                                           ; $7265: $0d
	inc  bc                                          ; $7266: $03
	ld   l, l                                        ; $7267: $6d
	dec  b                                           ; $7268: $05
	add  hl, de                                      ; $7269: $19
	and  b                                           ; $726a: $a0
	ld   e, b                                        ; $726b: $58
	ld   a, e                                        ; $726c: $7b
	ld   e, d                                        ; $726d: $5a
	ld   d, d                                        ; $726e: $52
	ld   [hl], l                                     ; $726f: $75
	ld   e, e                                        ; $7270: $5b
	sbc  c                                           ; $7271: $99
	ld   e, c                                        ; $7272: $59
	ld   a, b                                        ; $7273: $78
	ld   sp, hl                                      ; $7274: $f9
	dec  c                                           ; $7275: $0d
	nop                                              ; $7276: $00
	ld   a, [bc]                                     ; $7277: $0a
	dec  b                                           ; $7278: $05
	add  b                                           ; $7279: $80
	sub  $01                                         ; $727a: $d6 $01
	ld   bc, $0100                                   ; $727c: $01 $00 $01
	ld   d, h                                        ; $727f: $54
	and  c                                           ; $7280: $a1
	sbc  [hl]                                        ; $7281: $9e
	ld   d, d                                        ; $7282: $52
	ld   d, d                                        ; $7283: $52
	sub  [hl]                                        ; $7284: $96
	ei                                               ; $7285: $fb
	sbc  a                                           ; $7286: $9f
	dec  c                                           ; $7287: $0d
	nop                                              ; $7288: $00
	inc  e                                           ; $7289: $1c
	inc  b                                           ; $728a: $04
	ld   bc, $0101                                   ; $728b: $01 $01 $01
	ld   l, e                                        ; $728e: $6b
	sbc  d                                           ; $728f: $9a
	ld   h, [hl]                                     ; $7290: $66
	sub  c                                           ; $7291: $91
	sbc  [hl]                                        ; $7292: $9e
	ld   h, e                                        ; $7293: $63
	ld   [hl], c                                     ; $7294: $71
	ld   l, e                                        ; $7295: $6b
	ld   e, l                                        ; $7296: $5d
	dec  c                                           ; $7297: $0d
	ld   a, l                                        ; $7298: $7d
	ld   h, [hl]                                     ; $7299: $66
	adc  a                                           ; $729a: $8f
	sub  [hl]                                        ; $729b: $96
	ei                                               ; $729c: $fb
	sbc  a                                           ; $729d: $9f
	dec  c                                           ; $729e: $0d
	nop                                              ; $729f: $00
	ld   a, [bc]                                     ; $72a0: $0a
	dec  h                                           ; $72a1: $25
	inc  b                                           ; $72a2: $04
	rlca                                             ; $72a3: $07
	ld   sp, $0304                                   ; $72a4: $31 $04 $03
	jr   nz, jr_048_72aa                             ; $72a7: $20 $01

	nop                                              ; $72a9: $00

jr_048_72aa:
	jr   nz, jr_048_72ac                             ; $72aa: $20 $00

jr_048_72ac:
	inc  e                                           ; $72ac: $1c
	inc  b                                           ; $72ad: $04
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	ld   bc, $7258                                   ; $72b0: $01 $58 $72
	ld   e, c                                        ; $72b3: $59
	sbc  d                                           ; $72b4: $9a
	ld   h, e                                        ; $72b5: $63
	adc  h                                           ; $72b6: $8c
	sbc  [hl]                                        ; $72b7: $9e
	dec  c                                           ; $72b8: $0d
	nop                                              ; $72b9: $00
	dec  b                                           ; $72ba: $05
	ld   b, b                                        ; $72bb: $40
	ld   b, l                                        ; $72bc: $45
	inc  bc                                          ; $72bd: $03
	ld   b, l                                        ; $72be: $45
	ld   bc, $2801                                   ; $72bf: $01 $01 $28
	nop                                              ; $72c2: $00
	ld   bc, $955b                                   ; $72c3: $01 $5b $95
	ld   d, h                                        ; $72c6: $54
	ld   a, h                                        ; $72c7: $7c
	ld   e, l                                        ; $72c8: $5d
	and  c                                           ; $72c9: $a1
	sbc  d                                           ; $72ca: $9a
	and  c                                           ; $72cb: $a1
	ld   a, l                                        ; $72cc: $7d
	dec  c                                           ; $72cd: $0d
	ld   h, c                                        ; $72ce: $61
	ld   h, c                                        ; $72cf: $61
	adc  h                                           ; $72d0: $8c
	ld   [hl], l                                     ; $72d1: $75
	ld   l, [hl]                                     ; $72d2: $6e
	sub  [hl]                                        ; $72d3: $96
	ld   a, [$000d]                                  ; $72d4: $fa $0d $00
	ld   a, [bc]                                     ; $72d7: $0a
	ld   bc, $6d8c                                   ; $72d8: $01 $8c $6d
	ld   a, e                                        ; $72db: $7b
	sbc  [hl]                                        ; $72dc: $9e
	ld   l, a                                        ; $72dd: $6f
	ld   d, d                                        ; $72de: $52
	ld   [bc], a                                     ; $72df: $02
	inc  de                                          ; $72e0: $13
	ld   l, a                                        ; $72e1: $6f
	sub  c                                           ; $72e2: $91
	and  c                                           ; $72e3: $a1
	ld   a, [$000d]                                  ; $72e4: $fa $0d $00
	ld   a, [bc]                                     ; $72e7: $0a
	dec  c                                           ; $72e8: $0d
	nop                                              ; $72e9: $00
	nop                                              ; $72ea: $00
	rrca                                             ; $72eb: $0f
	nop                                              ; $72ec: $00
	ld   bc, $0f00                                   ; $72ed: $01 $00 $0f
	nop                                              ; $72f0: $00
	ld   bc, $040d                                   ; $72f1: $01 $0d $04
	nop                                              ; $72f4: $00
	ld   [bc], a                                     ; $72f5: $02
	ld   bc, $a161                                   ; $72f6: $01 $61 $a1
	ld   a, c                                        ; $72f9: $79
	ld   l, a                                        ; $72fa: $6f
	ld   a, l                                        ; $72fb: $7d
	sbc  [hl]                                        ; $72fc: $9e
	and  e                                           ; $72fd: $a3
	and  l                                           ; $72fe: $a5
	db   $ec                                         ; $72ff: $ec
	cp   d                                           ; $7300: $ba
	sbc  a                                           ; $7301: $9f
	dec  c                                           ; $7302: $0d
	inc  bc                                          ; $7303: $03
	ld   l, l                                        ; $7304: $6d
	dec  b                                           ; $7305: $05
	add  hl, de                                      ; $7306: $19
	and  b                                           ; $7307: $a0
	ld   e, b                                        ; $7308: $58
	ld   a, e                                        ; $7309: $7b
	ld   e, d                                        ; $730a: $5a
	ld   d, d                                        ; $730b: $52
	ld   [hl], l                                     ; $730c: $75
	ld   e, e                                        ; $730d: $5b
	sbc  c                                           ; $730e: $99
	ld   e, c                                        ; $730f: $59
	ld   a, b                                        ; $7310: $78
	ld   sp, hl                                      ; $7311: $f9
	dec  c                                           ; $7312: $0d
	nop                                              ; $7313: $00
	ld   a, [bc]                                     ; $7314: $0a
	rlca                                             ; $7315: $07
	ld   a, d                                        ; $7316: $7a
	ld   b, $03                                      ; $7317: $06 $03
	ld   b, l                                        ; $7319: $45
	ld   bc, $2504                                   ; $731a: $01 $04 $25
	nop                                              ; $731d: $00
	inc  e                                           ; $731e: $1c
	inc  b                                           ; $731f: $04
	ld   bc, $0101                                   ; $7320: $01 $01 $01
	ld   d, h                                        ; $7323: $54
	and  c                                           ; $7324: $a1
	sbc  [hl]                                        ; $7325: $9e
	ld   d, d                                        ; $7326: $52
	ld   d, d                                        ; $7327: $52
	sub  [hl]                                        ; $7328: $96
	ei                                               ; $7329: $fb
	sbc  a                                           ; $732a: $9f
	dec  c                                           ; $732b: $0d
	ld   l, e                                        ; $732c: $6b
	sbc  d                                           ; $732d: $9a
	ld   h, [hl]                                     ; $732e: $66
	sub  c                                           ; $732f: $91
	sbc  [hl]                                        ; $7330: $9e
	ld   h, e                                        ; $7331: $63
	ld   [hl], c                                     ; $7332: $71
	ld   l, e                                        ; $7333: $6b
	ld   e, l                                        ; $7334: $5d
	dec  c                                           ; $7335: $0d
	ld   a, l                                        ; $7336: $7d
	ld   h, [hl]                                     ; $7337: $66
	adc  a                                           ; $7338: $8f
	sub  [hl]                                        ; $7339: $96
	ei                                               ; $733a: $fb
	sbc  a                                           ; $733b: $9f
	dec  c                                           ; $733c: $0d
	nop                                              ; $733d: $00
	ld   a, [bc]                                     ; $733e: $0a
	dec  h                                           ; $733f: $25
	inc  b                                           ; $7340: $04
	rlca                                             ; $7341: $07
	ld   sp, $0304                                   ; $7342: $31 $04 $03
	jr   nz, jr_048_7348                             ; $7345: $20 $01

	nop                                              ; $7347: $00

jr_048_7348:
	jr   nz, jr_048_734a                             ; $7348: $20 $00

jr_048_734a:
	inc  e                                           ; $734a: $1c
	inc  b                                           ; $734b: $04
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	ld   bc, $7258                                   ; $734e: $01 $58 $72
	ld   e, c                                        ; $7351: $59
	sbc  d                                           ; $7352: $9a
	ld   h, e                                        ; $7353: $63
	adc  h                                           ; $7354: $8c
	sbc  [hl]                                        ; $7355: $9e
	ld   l, a                                        ; $7356: $6f
	ld   d, d                                        ; $7357: $52
	ld   [bc], a                                     ; $7358: $02
	inc  de                                          ; $7359: $13
	ld   l, a                                        ; $735a: $6f
	sub  c                                           ; $735b: $91
	and  c                                           ; $735c: $a1
	ld   a, [$000d]                                  ; $735d: $fa $0d $00
	ld   a, [bc]                                     ; $7360: $0a
	inc  e                                           ; $7361: $1c
	inc  b                                           ; $7362: $04
	ld   bc, $0101                                   ; $7363: $01 $01 $01
	ld   l, a                                        ; $7366: $6f
	ld   e, c                                        ; $7367: $59
	sub  a                                           ; $7368: $97
	ld   a, h                                        ; $7369: $7c
	ld   [hl], d                                     ; $736a: $72
	ld   e, c                                        ; $736b: $59
	ld   d, d                                        ; $736c: $52
	ld   e, c                                        ; $736d: $59
	ld   l, l                                        ; $736e: $6d
	ld   e, d                                        ; $736f: $5a
	dec  c                                           ; $7370: $0d
	ld   a, b                                        ; $7371: $78
	ld   e, c                                        ; $7372: $59
	ld   a, b                                        ; $7373: $78
	ld   e, c                                        ; $7374: $59
	ld   h, [hl]                                     ; $7375: $66
	sub  l                                           ; $7376: $95
	ld   d, h                                        ; $7377: $54
	ld   l, b                                        ; $7378: $68
	ld   a, c                                        ; $7379: $79
	dec  c                                           ; $737a: $0d
	ld   a, b                                        ; $737b: $78
	ld   [hl], c                                     ; $737c: $71
	ld   [hl], h                                     ; $737d: $74
	ld   e, e                                        ; $737e: $5b
	ld   l, l                                        ; $737f: $6d
	ld   a, e                                        ; $7380: $7b
	sbc  a                                           ; $7381: $9f
	dec  c                                           ; $7382: $0d
	nop                                              ; $7383: $00
	ld   a, [bc]                                     ; $7384: $0a
	inc  e                                           ; $7385: $1c
	inc  b                                           ; $7386: $04
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	ld   bc, $9a6b                                   ; $7389: $01 $6b $9a
	ld   h, [hl]                                     ; $738c: $66
	sub  c                                           ; $738d: $91
	sbc  [hl]                                        ; $738e: $9e
	ld   e, e                                        ; $738f: $5b
	sub  l                                           ; $7390: $95
	ld   d, h                                        ; $7391: $54
	ld   a, h                                        ; $7392: $7c
	ld   e, l                                        ; $7393: $5d
	and  c                                           ; $7394: $a1
	sbc  d                                           ; $7395: $9a
	and  c                                           ; $7396: $a1
	ld   a, l                                        ; $7397: $7d
	dec  c                                           ; $7398: $0d
	nop                                              ; $7399: $00
	dec  b                                           ; $739a: $05
	ld   b, b                                        ; $739b: $40
	ld   b, l                                        ; $739c: $45
	inc  bc                                          ; $739d: $03
	ld   b, l                                        ; $739e: $45
	ld   bc, $2801                                   ; $739f: $01 $01 $28
	nop                                              ; $73a2: $00
	ld   bc, $9a61                                   ; $73a3: $01 $61 $9a
	ld   [hl], l                                     ; $73a6: $75
	ld   e, b                                        ; $73a7: $58
	ld   h, l                                        ; $73a8: $65
	adc  h                                           ; $73a9: $8c
	ld   d, d                                        ; $73aa: $52
	ld   a, [$000d]                                  ; $73ab: $fa $0d $00
	inc  e                                           ; $73ae: $1c
	inc  b                                           ; $73af: $04
	ld   bc, $0101                                   ; $73b0: $01 $01 $01
	adc  h                                           ; $73b3: $8c
	ld   l, l                                        ; $73b4: $6d
	ld   a, e                                        ; $73b5: $7b
	sbc  [hl]                                        ; $73b6: $9e
	ld   l, a                                        ; $73b7: $6f
	ld   d, d                                        ; $73b8: $52
	ld   [bc], a                                     ; $73b9: $02
	inc  de                                          ; $73ba: $13
	ld   l, a                                        ; $73bb: $6f
	sub  c                                           ; $73bc: $91
	and  c                                           ; $73bd: $a1
	ld   a, [$000d]                                  ; $73be: $fa $0d $00
	ld   a, [bc]                                     ; $73c1: $0a
	dec  c                                           ; $73c2: $0d
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	rrca                                             ; $73c5: $0f
	nop                                              ; $73c6: $00
	ld   bc, $1c00                                   ; $73c7: $01 $00 $1c
	inc  b                                           ; $73ca: $04
	ld   bc, $0101                                   ; $73cb: $01 $01 $01
	ld   d, h                                        ; $73ce: $54
	and  c                                           ; $73cf: $a1
	sbc  [hl]                                        ; $73d0: $9e
	ld   d, d                                        ; $73d1: $52
	ld   d, d                                        ; $73d2: $52
	sub  [hl]                                        ; $73d3: $96
	ei                                               ; $73d4: $fb
	sbc  a                                           ; $73d5: $9f
	dec  c                                           ; $73d6: $0d
	ld   l, e                                        ; $73d7: $6b
	sbc  d                                           ; $73d8: $9a
	ld   h, [hl]                                     ; $73d9: $66
	sub  c                                           ; $73da: $91
	sbc  [hl]                                        ; $73db: $9e
	ld   h, e                                        ; $73dc: $63
	ld   [hl], c                                     ; $73dd: $71
	ld   l, e                                        ; $73de: $6b
	ld   e, l                                        ; $73df: $5d
	dec  c                                           ; $73e0: $0d
	ld   a, l                                        ; $73e1: $7d
	ld   h, [hl]                                     ; $73e2: $66
	adc  a                                           ; $73e3: $8f
	sub  [hl]                                        ; $73e4: $96
	ei                                               ; $73e5: $fb
	sbc  a                                           ; $73e6: $9f
	dec  c                                           ; $73e7: $0d
	nop                                              ; $73e8: $00
	ld   a, [bc]                                     ; $73e9: $0a
	dec  h                                           ; $73ea: $25
	inc  b                                           ; $73eb: $04
	rlca                                             ; $73ec: $07
	ld   sp, $0304                                   ; $73ed: $31 $04 $03
	jr   nz, jr_048_73f3                             ; $73f0: $20 $01

	nop                                              ; $73f2: $00

jr_048_73f3:
	jr   nz, jr_048_73f5                             ; $73f3: $20 $00

jr_048_73f5:
	inc  e                                           ; $73f5: $1c
	inc  b                                           ; $73f6: $04
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	ld   bc, $7258                                   ; $73f9: $01 $58 $72
	ld   e, c                                        ; $73fc: $59
	sbc  d                                           ; $73fd: $9a
	ld   h, e                                        ; $73fe: $63
	adc  h                                           ; $73ff: $8c
	sbc  [hl]                                        ; $7400: $9e
	ld   l, a                                        ; $7401: $6f
	ld   d, d                                        ; $7402: $52
	ld   [bc], a                                     ; $7403: $02
	inc  de                                          ; $7404: $13
	ld   l, a                                        ; $7405: $6f
	sub  c                                           ; $7406: $91
	and  c                                           ; $7407: $a1
	ld   a, [$000d]                                  ; $7408: $fa $0d $00
	ld   a, [bc]                                     ; $740b: $0a
	inc  e                                           ; $740c: $1c
	inc  b                                           ; $740d: $04
	ld   bc, $0101                                   ; $740e: $01 $01 $01
	ld   l, a                                        ; $7411: $6f
	ld   e, c                                        ; $7412: $59
	sub  a                                           ; $7413: $97
	ld   a, h                                        ; $7414: $7c
	ld   [hl], d                                     ; $7415: $72
	ld   e, c                                        ; $7416: $59
	ld   d, d                                        ; $7417: $52
	ld   e, c                                        ; $7418: $59
	ld   l, l                                        ; $7419: $6d
	sbc  [hl]                                        ; $741a: $9e
	dec  c                                           ; $741b: $0d
	ld   h, a                                        ; $741c: $67
	ld   [hl], c                                     ; $741d: $71
	ld   h, d                                        ; $741e: $62
	ld   e, l                                        ; $741f: $5d
	ld   h, [hl]                                     ; $7420: $66
	sub  l                                           ; $7421: $95
	ld   d, h                                        ; $7422: $54
	ld   l, b                                        ; $7423: $68
	ld   a, c                                        ; $7424: $79
	dec  c                                           ; $7425: $0d
	ld   a, b                                        ; $7426: $78
	ld   [hl], c                                     ; $7427: $71
	ld   [hl], h                                     ; $7428: $74
	ld   e, e                                        ; $7429: $5b
	ld   l, l                                        ; $742a: $6d
	ld   a, e                                        ; $742b: $7b
	ei                                               ; $742c: $fb
	ld   a, [$000d]                                  ; $742d: $fa $0d $00
	ld   a, [bc]                                     ; $7430: $0a
	inc  e                                           ; $7431: $1c
	inc  b                                           ; $7432: $04
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	ld   bc, $9a6b                                   ; $7435: $01 $6b $9a
	ld   h, [hl]                                     ; $7438: $66
	sub  c                                           ; $7439: $91
	sbc  [hl]                                        ; $743a: $9e
	ld   e, e                                        ; $743b: $5b
	sub  l                                           ; $743c: $95
	ld   d, h                                        ; $743d: $54
	ld   a, h                                        ; $743e: $7c
	ld   e, l                                        ; $743f: $5d
	and  c                                           ; $7440: $a1
	sbc  d                                           ; $7441: $9a
	and  c                                           ; $7442: $a1
	ld   a, l                                        ; $7443: $7d
	dec  c                                           ; $7444: $0d
	nop                                              ; $7445: $00
	dec  b                                           ; $7446: $05
	ld   b, b                                        ; $7447: $40
	ld   b, l                                        ; $7448: $45
	inc  bc                                          ; $7449: $03
	ld   b, l                                        ; $744a: $45
	ld   bc, $2801                                   ; $744b: $01 $01 $28
	nop                                              ; $744e: $00
	ld   bc, $9a61                                   ; $744f: $01 $61 $9a

Jump_048_7452:
	ld   [hl], l                                     ; $7452: $75
	ld   e, b                                        ; $7453: $58
	ld   h, l                                        ; $7454: $65
	adc  h                                           ; $7455: $8c
	ld   d, d                                        ; $7456: $52
	ld   a, [$000d]                                  ; $7457: $fa $0d $00
	inc  e                                           ; $745a: $1c
	inc  b                                           ; $745b: $04
	ld   bc, $0101                                   ; $745c: $01 $01 $01
	adc  h                                           ; $745f: $8c
	ld   l, l                                        ; $7460: $6d
	ld   a, e                                        ; $7461: $7b
	sbc  [hl]                                        ; $7462: $9e
	ld   l, a                                        ; $7463: $6f
	ld   d, d                                        ; $7464: $52
	ld   [bc], a                                     ; $7465: $02
	inc  de                                          ; $7466: $13
	ld   l, a                                        ; $7467: $6f
	sub  c                                           ; $7468: $91
	and  c                                           ; $7469: $a1
	ld   a, [$000d]                                  ; $746a: $fa $0d $00
	ld   a, [bc]                                     ; $746d: $0a
	dec  c                                           ; $746e: $0d
	nop                                              ; $746f: $00
	nop                                              ; $7470: $00

Jump_048_7471:
	rrca                                             ; $7471: $0f
	nop                                              ; $7472: $00
	ld   bc, $0f00                                   ; $7473: $01 $00 $0f
	nop                                              ; $7476: $00
	ld   bc, $040d                                   ; $7477: $01 $0d $04
	nop                                              ; $747a: $00
	ld   [bc], a                                     ; $747b: $02
	ld   bc, $a161                                   ; $747c: $01 $61 $a1
	ld   a, c                                        ; $747f: $79
	ld   l, a                                        ; $7480: $6f
	ld   a, l                                        ; $7481: $7d
	sbc  [hl]                                        ; $7482: $9e
	and  e                                           ; $7483: $a3
	and  l                                           ; $7484: $a5
	db   $ec                                         ; $7485: $ec
	cp   d                                           ; $7486: $ba
	sbc  a                                           ; $7487: $9f
	dec  c                                           ; $7488: $0d
	inc  bc                                          ; $7489: $03
	ld   l, l                                        ; $748a: $6d
	dec  b                                           ; $748b: $05
	add  hl, de                                      ; $748c: $19
	and  b                                           ; $748d: $a0
	ld   e, b                                        ; $748e: $58
	ld   a, e                                        ; $748f: $7b
	ld   e, d                                        ; $7490: $5a
	ld   d, d                                        ; $7491: $52
	ld   [hl], l                                     ; $7492: $75
	ld   e, e                                        ; $7493: $5b
	sbc  c                                           ; $7494: $99
	ld   e, c                                        ; $7495: $59
	ld   a, b                                        ; $7496: $78
	ld   sp, hl                                      ; $7497: $f9
	dec  c                                           ; $7498: $0d
	nop                                              ; $7499: $00
	ld   a, [bc]                                     ; $749a: $0a
	rlca                                             ; $749b: $07
	ld   [bc], a                                     ; $749c: $02
	ld   [$4503], sp                                 ; $749d: $08 $03 $45
	ld   bc, $2507                                   ; $74a0: $01 $07 $25
	nop                                              ; $74a3: $00
	inc  e                                           ; $74a4: $1c
	inc  b                                           ; $74a5: $04
	ld   bc, $0101                                   ; $74a6: $01 $01 $01
	ld   d, h                                        ; $74a9: $54
	and  c                                           ; $74aa: $a1
	sbc  [hl]                                        ; $74ab: $9e
	ld   d, d                                        ; $74ac: $52
	ld   d, d                                        ; $74ad: $52
	sub  [hl]                                        ; $74ae: $96
	ei                                               ; $74af: $fb
	sbc  a                                           ; $74b0: $9f
	dec  c                                           ; $74b1: $0d
	ld   l, e                                        ; $74b2: $6b
	sbc  d                                           ; $74b3: $9a
	ld   h, [hl]                                     ; $74b4: $66
	sub  c                                           ; $74b5: $91
	sbc  [hl]                                        ; $74b6: $9e
	ld   h, e                                        ; $74b7: $63
	ld   [hl], c                                     ; $74b8: $71
	ld   l, e                                        ; $74b9: $6b
	ld   e, l                                        ; $74ba: $5d
	dec  c                                           ; $74bb: $0d
	ld   a, l                                        ; $74bc: $7d
	ld   h, [hl]                                     ; $74bd: $66
	adc  a                                           ; $74be: $8f
	sub  [hl]                                        ; $74bf: $96
	ei                                               ; $74c0: $fb
	sbc  a                                           ; $74c1: $9f
	dec  c                                           ; $74c2: $0d
	nop                                              ; $74c3: $00
	ld   a, [bc]                                     ; $74c4: $0a
	dec  h                                           ; $74c5: $25
	inc  b                                           ; $74c6: $04
	rlca                                             ; $74c7: $07
	ld   sp, $0304                                   ; $74c8: $31 $04 $03
	jr   nz, jr_048_74ce                             ; $74cb: $20 $01

	nop                                              ; $74cd: $00

jr_048_74ce:
	jr   nz, jr_048_74d0                             ; $74ce: $20 $00

jr_048_74d0:
	inc  e                                           ; $74d0: $1c
	inc  b                                           ; $74d1: $04
	ld   b, $06                                      ; $74d2: $06 $06
	ld   bc, $526f                                   ; $74d4: $01 $6f $52
	ld   [bc], a                                     ; $74d7: $02
	inc  de                                          ; $74d8: $13
	ld   l, a                                        ; $74d9: $6f
	sub  c                                           ; $74da: $91
	and  c                                           ; $74db: $a1
	sbc  [hl]                                        ; $74dc: $9e
	ld   h, a                                        ; $74dd: $67
	ld   [hl], c                                     ; $74de: $71
	ld   h, d                                        ; $74df: $62
	ei                                               ; $74e0: $fb
	ld   d, d                                        ; $74e1: $52
	ld   a, [$0dfa]                                  ; $74e2: $fa $fa $0d
	nop                                              ; $74e5: $00
	ld   a, [bc]                                     ; $74e6: $0a
	inc  e                                           ; $74e7: $1c
	inc  b                                           ; $74e8: $04
	ld   bc, $0101                                   ; $74e9: $01 $01 $01
	ld   h, a                                        ; $74ec: $67
	ld   [hl], c                                     ; $74ed: $71
	ld   h, d                                        ; $74ee: $62
	ld   e, l                                        ; $74ef: $5d
	sbc  [hl]                                        ; $74f0: $9e
	ld   l, l                                        ; $74f1: $6d
	ld   e, l                                        ; $74f2: $5d
	ld   h, e                                        ; $74f3: $63
	and  c                                           ; $74f4: $a1
	ld   a, h                                        ; $74f5: $7c
	dec  c                                           ; $74f6: $0d
	ld   l, a                                        ; $74f7: $6f
	ld   e, c                                        ; $74f8: $59
	sub  a                                           ; $74f9: $97
	and  b                                           ; $74fa: $a0
	ld   [hl], d                                     ; $74fb: $72
	ld   e, c                                        ; $74fc: $59
	ld   d, [hl]                                     ; $74fd: $56
	sbc  c                                           ; $74fe: $99
	sub  [hl]                                        ; $74ff: $96
	ld   d, h                                        ; $7500: $54
	ld   a, c                                        ; $7501: $79
	dec  c                                           ; $7502: $0d
	ld   a, b                                        ; $7503: $78
	ld   [hl], c                                     ; $7504: $71
	ld   l, l                                        ; $7505: $6d
	ld   a, e                                        ; $7506: $7b
	ei                                               ; $7507: $fb
	ld   a, [$0dfa]                                  ; $7508: $fa $fa $0d
	nop                                              ; $750b: $00
	ld   a, [bc]                                     ; $750c: $0a
	inc  e                                           ; $750d: $1c
	inc  b                                           ; $750e: $04
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	ld   bc, $9a6b                                   ; $7511: $01 $6b $9a
	ld   h, [hl]                                     ; $7514: $66
	sub  c                                           ; $7515: $91
	sbc  [hl]                                        ; $7516: $9e
	ld   e, e                                        ; $7517: $5b
	sub  l                                           ; $7518: $95
	ld   d, h                                        ; $7519: $54
	ld   a, h                                        ; $751a: $7c
	ld   e, l                                        ; $751b: $5d
	and  c                                           ; $751c: $a1
	sbc  d                                           ; $751d: $9a
	and  c                                           ; $751e: $a1
	ld   a, l                                        ; $751f: $7d
	dec  c                                           ; $7520: $0d
	nop                                              ; $7521: $00
	dec  b                                           ; $7522: $05
	ld   b, b                                        ; $7523: $40
	ld   b, l                                        ; $7524: $45
	inc  bc                                          ; $7525: $03
	ld   b, l                                        ; $7526: $45
	ld   bc, $2801                                   ; $7527: $01 $01 $28
	nop                                              ; $752a: $00
	ld   bc, $9a61                                   ; $752b: $01 $61 $9a
	ld   [hl], l                                     ; $752e: $75
	ld   e, b                                        ; $752f: $58
	ld   h, l                                        ; $7530: $65
	adc  h                                           ; $7531: $8c
	ld   d, d                                        ; $7532: $52
	ld   a, [$000d]                                  ; $7533: $fa $0d $00
	inc  e                                           ; $7536: $1c
	inc  b                                           ; $7537: $04
	ld   bc, $0101                                   ; $7538: $01 $01 $01
	adc  h                                           ; $753b: $8c
	ld   l, l                                        ; $753c: $6d
	ld   a, e                                        ; $753d: $7b
	sbc  [hl]                                        ; $753e: $9e
	ld   l, a                                        ; $753f: $6f
	ld   d, d                                        ; $7540: $52
	ld   [bc], a                                     ; $7541: $02
	inc  de                                          ; $7542: $13
	ld   l, a                                        ; $7543: $6f
	sub  c                                           ; $7544: $91
	and  c                                           ; $7545: $a1
	ld   a, [$000d]                                  ; $7546: $fa $0d $00
	ld   a, [bc]                                     ; $7549: $0a
	dec  c                                           ; $754a: $0d
	nop                                              ; $754b: $00
	nop                                              ; $754c: $00
	rrca                                             ; $754d: $0f
	nop                                              ; $754e: $00
	ld   bc, $1c00                                   ; $754f: $01 $00 $1c
	inc  b                                           ; $7552: $04
	ld   bc, $0101                                   ; $7553: $01 $01 $01
	ld   d, h                                        ; $7556: $54
	and  c                                           ; $7557: $a1
	sbc  [hl]                                        ; $7558: $9e
	ld   d, d                                        ; $7559: $52
	ld   d, d                                        ; $755a: $52
	sub  [hl]                                        ; $755b: $96
	ei                                               ; $755c: $fb
	sbc  a                                           ; $755d: $9f
	dec  c                                           ; $755e: $0d
	ld   l, e                                        ; $755f: $6b
	sbc  d                                           ; $7560: $9a
	ld   h, [hl]                                     ; $7561: $66
	sub  c                                           ; $7562: $91
	sbc  [hl]                                        ; $7563: $9e
	ld   h, e                                        ; $7564: $63
	ld   [hl], c                                     ; $7565: $71
	ld   l, e                                        ; $7566: $6b
	ld   e, l                                        ; $7567: $5d
	dec  c                                           ; $7568: $0d
	ld   a, l                                        ; $7569: $7d
	ld   h, [hl]                                     ; $756a: $66
	adc  a                                           ; $756b: $8f
	sub  [hl]                                        ; $756c: $96
	ei                                               ; $756d: $fb
	sbc  a                                           ; $756e: $9f
	dec  c                                           ; $756f: $0d
	nop                                              ; $7570: $00
	ld   a, [bc]                                     ; $7571: $0a
	dec  h                                           ; $7572: $25
	inc  b                                           ; $7573: $04
	rlca                                             ; $7574: $07
	ld   sp, $0304                                   ; $7575: $31 $04 $03
	jr   nz, jr_048_757b                             ; $7578: $20 $01

	nop                                              ; $757a: $00

jr_048_757b:
	jr   nz, jr_048_757d                             ; $757b: $20 $00

jr_048_757d:
	inc  e                                           ; $757d: $1c
	inc  b                                           ; $757e: $04
	ld   b, $06                                      ; $757f: $06 $06
	ld   bc, $526f                                   ; $7581: $01 $6f $52
	ld   [bc], a                                     ; $7584: $02
	inc  de                                          ; $7585: $13
	ld   l, a                                        ; $7586: $6f
	sub  c                                           ; $7587: $91
	and  c                                           ; $7588: $a1
	sbc  [hl]                                        ; $7589: $9e
	ld   h, a                                        ; $758a: $67
	ld   [hl], c                                     ; $758b: $71
	ld   h, d                                        ; $758c: $62
	ei                                               ; $758d: $fb
	ld   d, d                                        ; $758e: $52
	ld   a, [$0dfa]                                  ; $758f: $fa $fa $0d
	nop                                              ; $7592: $00
	ld   a, [bc]                                     ; $7593: $0a
	inc  e                                           ; $7594: $1c
	inc  b                                           ; $7595: $04
	ld   bc, $0101                                   ; $7596: $01 $01 $01
	ld   d, d                                        ; $7599: $52
	ld   d, d                                        ; $759a: $52
	ld   e, c                                        ; $759b: $59
	and  c                                           ; $759c: $a1
	ld   h, [hl]                                     ; $759d: $66
	ld   l, [hl]                                     ; $759e: $6e
	sub  [hl]                                        ; $759f: $96
	ei                                               ; $75a0: $fb
	ld   a, [$610d]                                  ; $75a1: $fa $0d $61
	ld   a, h                                        ; $75a4: $7c
	ld   l, a                                        ; $75a5: $6f
	sub  l                                           ; $75a6: $95
	ld   d, h                                        ; $75a7: $54
	ld   h, l                                        ; $75a8: $65
	sbc  [hl]                                        ; $75a9: $9e
	ld   h, c                                        ; $75aa: $61
	ld   a, h                                        ; $75ab: $7c
	ld   l, a                                        ; $75ac: $6f
	sub  l                                           ; $75ad: $95
	ld   d, h                                        ; $75ae: $54
	ld   h, l                                        ; $75af: $65
	sbc  a                                           ; $75b0: $9f
	dec  c                                           ; $75b1: $0d
	nop                                              ; $75b2: $00
	ld   a, [bc]                                     ; $75b3: $0a
	inc  e                                           ; $75b4: $1c
	inc  b                                           ; $75b5: $04
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	ld   bc, $9a6b                                   ; $75b8: $01 $6b $9a
	ld   h, [hl]                                     ; $75bb: $66
	sub  c                                           ; $75bc: $91
	sbc  [hl]                                        ; $75bd: $9e
	ld   e, e                                        ; $75be: $5b
	sub  l                                           ; $75bf: $95
	ld   d, h                                        ; $75c0: $54
	ld   a, h                                        ; $75c1: $7c
	ld   e, l                                        ; $75c2: $5d
	and  c                                           ; $75c3: $a1
	sbc  d                                           ; $75c4: $9a
	and  c                                           ; $75c5: $a1
	ld   a, l                                        ; $75c6: $7d
	dec  c                                           ; $75c7: $0d
	nop                                              ; $75c8: $00
	dec  b                                           ; $75c9: $05
	ld   b, b                                        ; $75ca: $40
	ld   b, l                                        ; $75cb: $45
	inc  bc                                          ; $75cc: $03
	ld   b, l                                        ; $75cd: $45
	ld   bc, $2801                                   ; $75ce: $01 $01 $28
	nop                                              ; $75d1: $00
	ld   bc, $9a61                                   ; $75d2: $01 $61 $9a
	ld   [hl], l                                     ; $75d5: $75
	ld   e, b                                        ; $75d6: $58
	ld   h, l                                        ; $75d7: $65
	adc  h                                           ; $75d8: $8c
	ld   d, d                                        ; $75d9: $52
	ld   a, [$000d]                                  ; $75da: $fa $0d $00
	inc  e                                           ; $75dd: $1c
	inc  b                                           ; $75de: $04
	ld   bc, $0101                                   ; $75df: $01 $01 $01
	adc  h                                           ; $75e2: $8c
	ld   l, l                                        ; $75e3: $6d
	ld   a, e                                        ; $75e4: $7b
	sbc  [hl]                                        ; $75e5: $9e
	ld   l, a                                        ; $75e6: $6f
	ld   d, d                                        ; $75e7: $52
	ld   [bc], a                                     ; $75e8: $02
	inc  de                                          ; $75e9: $13
	ld   l, a                                        ; $75ea: $6f
	sub  c                                           ; $75eb: $91
	and  c                                           ; $75ec: $a1
	ld   a, [$000d]                                  ; $75ed: $fa $0d $00
	ld   a, [bc]                                     ; $75f0: $0a
	dec  c                                           ; $75f1: $0d
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	rrca                                             ; $75f4: $0f
	nop                                              ; $75f5: $00
	ld   bc, $0e00                                   ; $75f6: $01 $00 $0e
	ld   bc, $0702                                   ; $75f9: $01 $02 $07
	ldh  a, [$08]                                    ; $75fc: $f0 $08
	inc  bc                                          ; $75fe: $03
	jr   nz, jr_048_7602                             ; $75ff: $20 $01

	ld   b, b                                        ; $7601: $40

jr_048_7602:
	dec  h                                           ; $7602: $25
	nop                                              ; $7603: $00
	dec  b                                           ; $7604: $05
	ld   b, b                                        ; $7605: $40
	ld   d, c                                        ; $7606: $51
	inc  bc                                          ; $7607: $03
	ld   d, c                                        ; $7608: $51
	ld   [bc], a                                     ; $7609: $02
	nop                                              ; $760a: $00
	inc  bc                                          ; $760b: $03
	ld   c, e                                        ; $760c: $4b
	add  hl, hl                                      ; $760d: $29
	add  hl, hl                                      ; $760e: $29
	nop                                              ; $760f: $00
	ld   bc, $ffff                                   ; $7610: $01 $ff $ff
	ld   d, h                                        ; $7613: $54
	db   $fc                                         ; $7614: $fc
	and  c                                           ; $7615: $a1
	rst  $38                                         ; $7616: $ff
	rst  $38                                         ; $7617: $ff
	dec  c                                           ; $7618: $0d
	ld   a, b                                        ; $7619: $78
	and  c                                           ; $761a: $a1
	ld   l, [hl]                                     ; $761b: $6e
	ld   e, c                                        ; $761c: $59
	inc  b                                           ; $761d: $04
	dec  c                                           ; $761e: $0d
	inc  bc                                          ; $761f: $03
	cp   $5a                                         ; $7620: $fe $5a
	ld   [bc], a                                     ; $7622: $02
	jr   z, jr_048_7677                              ; $7623: $28 $52

	ld   a, b                                        ; $7625: $78
	rst  $38                                         ; $7626: $ff
	rst  $38                                         ; $7627: $ff
	dec  c                                           ; $7628: $0d
	ld   [bc], a                                     ; $7629: $02
	and  l                                           ; $762a: $a5
	inc  b                                           ; $762b: $04
	xor  d                                           ; $762c: $aa
	ld   a, h                                        ; $762d: $7c
	inc  bc                                          ; $762e: $03
	ld   l, l                                        ; $762f: $6d
	dec  b                                           ; $7630: $05
	add  hl, de                                      ; $7631: $19
	ld   a, l                                        ; $7632: $7d
	inc  bc                                          ; $7633: $03
	and  a                                           ; $7634: $a7
	adc  [hl]                                        ; $7635: $8e
	ld   e, c                                        ; $7636: $59
	ld   a, b                                        ; $7637: $78
	sbc  a                                           ; $7638: $9f
	dec  c                                           ; $7639: $0d
	nop                                              ; $763a: $00
	ld   a, [bc]                                     ; $763b: $0a
	ld   b, $1b                                      ; $763c: $06 $1b
	add  hl, bc                                      ; $763e: $09
	ld   bc, $a502                                   ; $763f: $01 $02 $a5
	inc  b                                           ; $7642: $04
	xor  d                                           ; $7643: $aa
	ld   a, l                                        ; $7644: $7d
	ld   a, b                                        ; $7645: $78
	and  c                                           ; $7646: $a1
	ld   l, [hl]                                     ; $7647: $6e
	ld   e, c                                        ; $7648: $59
	inc  bc                                          ; $7649: $03
	ld   l, l                                        ; $764a: $6d
	dec  b                                           ; $764b: $05
	add  hl, de                                      ; $764c: $19
	ld   a, c                                        ; $764d: $79
	dec  c                                           ; $764e: $0d
	ld   [bc], a                                     ; $764f: $02
	ld   a, a                                        ; $7650: $7f
	ld   e, e                                        ; $7651: $5b
	ld   l, l                                        ; $7652: $6d
	ld   e, l                                        ; $7653: $5d
	ld   a, b                                        ; $7654: $78
	ld   d, d                                        ; $7655: $52
	ld   a, b                                        ; $7656: $78
	ld   d, b                                        ; $7657: $50
	rst  $38                                         ; $7658: $ff
	rst  $38                                         ; $7659: $ff
	dec  c                                           ; $765a: $0d
	inc  bc                                          ; $765b: $03
	ld   l, l                                        ; $765c: $6d
	dec  b                                           ; $765d: $05
	add  hl, de                                      ; $765e: $19
	rst  $38                                         ; $765f: $ff
	rst  $38                                         ; $7660: $ff
	inc  bc                                          ; $7661: $03
	and  a                                           ; $7662: $a7
	adc  [hl]                                        ; $7663: $8e
	ld   e, c                                        ; $7664: $59
	ld   a, b                                        ; $7665: $78
	sbc  a                                           ; $7666: $9f
	dec  c                                           ; $7667: $0d
	nop                                              ; $7668: $00
	ld   a, [bc]                                     ; $7669: $0a
	inc  hl                                          ; $766a: $23
	ld   c, d                                        ; $766b: $4a
	inc  d                                           ; $766c: $14
	ld   b, $01                                      ; $766d: $06 $01
	add  hl, bc                                      ; $766f: $09
	ld   e, $01                                      ; $7670: $1e $01
	and  e                                           ; $7672: $a3
	and  l                                           ; $7673: $a5
	db   $ec                                         ; $7674: $ec
	cp   d                                           ; $7675: $ba
	sbc  [hl]                                        ; $7676: $9e

jr_048_7677:
	ld   d, d                                        ; $7677: $52
	sbc  c                                           ; $7678: $99
	ld   e, c                                        ; $7679: $59
	ld   d, d                                        ; $767a: $52
	ld   sp, hl                                      ; $767b: $f9
	dec  c                                           ; $767c: $0d
	nop                                              ; $767d: $00
	ld   a, [bc]                                     ; $767e: $0a
	rrca                                             ; $767f: $0f
	inc  b                                           ; $7680: $04
	nop                                              ; $7681: $00
	ld   bc, $fb7d                                   ; $7682: $01 $7d $fb
	ld   d, d                                        ; $7685: $52
	sbc  a                                           ; $7686: $9f
	dec  c                                           ; $7687: $0d
	ld   d, d                                        ; $7688: $52
	adc  h                                           ; $7689: $8c
	ld   d, b                                        ; $768a: $50
	ld   e, a                                        ; $768b: $5f
	adc  h                                           ; $768c: $8c
	db   $fc                                         ; $768d: $fc
	ld   h, a                                        ; $768e: $67
	sbc  a                                           ; $768f: $9f
	dec  c                                           ; $7690: $0d
	nop                                              ; $7691: $00
	ld   a, [bc]                                     ; $7692: $0a
	inc  d                                           ; $7693: $14
	ld   a, [bc]                                     ; $7694: $0a
	ld   bc, $4b0e                                   ; $7695: $01 $0e $4b
	inc  e                                           ; $7698: $1c
	inc  b                                           ; $7699: $04
	ld   bc, $0101                                   ; $769a: $01 $01 $01
	ld   h, c                                        ; $769d: $61
	and  c                                           ; $769e: $a1
	ld   a, c                                        ; $769f: $79
	ld   l, a                                        ; $76a0: $6f
	ld   a, l                                        ; $76a1: $7d
	sbc  [hl]                                        ; $76a2: $9e
	ld   l, a                                        ; $76a3: $6f
	ld   d, d                                        ; $76a4: $52
	ld   [bc], a                                     ; $76a5: $02
	inc  de                                          ; $76a6: $13
	ld   l, a                                        ; $76a7: $6f
	sub  c                                           ; $76a8: $91
	and  c                                           ; $76a9: $a1
	sbc  a                                           ; $76aa: $9f
	dec  c                                           ; $76ab: $0d
	nop                                              ; $76ac: $00
	ld   a, [bc]                                     ; $76ad: $0a
	rlca                                             ; $76ae: $07
	inc  c                                           ; $76af: $0c
	ld   a, [bc]                                     ; $76b0: $0a
	inc  bc                                          ; $76b1: $03
	jr   nz, jr_048_76b5                             ; $76b2: $20 $01

	ld   b, b                                        ; $76b4: $40

jr_048_76b5:
	dec  h                                           ; $76b5: $25
	nop                                              ; $76b6: $00
	ld   bc, $ffff                                   ; $76b7: $01 $ff $ff
	ld   d, b                                        ; $76ba: $50
	sbc  d                                           ; $76bb: $9a
	ld   sp, hl                                      ; $76bc: $f9
	dec  c                                           ; $76bd: $0d
	nop                                              ; $76be: $00
	inc  e                                           ; $76bf: $1c
	inc  b                                           ; $76c0: $04
	inc  bc                                          ; $76c1: $03
	inc  bc                                          ; $76c2: $03
	ld   bc, $fb77                                   ; $76c3: $01 $77 $fb
	ld   h, l                                        ; $76c6: $65
	ld   l, l                                        ; $76c7: $6d
	ld   a, h                                        ; $76c8: $7c
	ld   sp, hl                                      ; $76c9: $f9
	dec  c                                           ; $76ca: $0d
	ld   e, c                                        ; $76cb: $59
	ld   e, b                                        ; $76cc: $58
	ld   d, d                                        ; $76cd: $52
	sbc  e                                           ; $76ce: $9b
	sbc  [hl]                                        ; $76cf: $9e
	sbc  l                                           ; $76d0: $9d
	sbc  c                                           ; $76d1: $99
	ld   d, d                                        ; $76d2: $52
	sub  [hl]                                        ; $76d3: $96
	rst  $38                                         ; $76d4: $ff
	rst  $38                                         ; $76d5: $ff
	ld   sp, hl                                      ; $76d6: $f9
	dec  c                                           ; $76d7: $0d
	nop                                              ; $76d8: $00
	ld   a, [bc]                                     ; $76d9: $0a
	rrca                                             ; $76da: $0f
	nop                                              ; $76db: $00
	ld   bc, $5401                                   ; $76dc: $01 $01 $54
	and  c                                           ; $76df: $a1
	sbc  [hl]                                        ; $76e0: $9e
	ld   l, a                                        ; $76e1: $6f
	sub  l                                           ; $76e2: $95
	ld   [hl], c                                     ; $76e3: $71
	halt                                             ; $76e4: $76
	inc  b                                           ; $76e5: $04
	dec  c                                           ; $76e6: $0d
	inc  bc                                          ; $76e7: $03
	cp   $5a                                         ; $76e8: $fe $5a
	dec  c                                           ; $76ea: $0d
	sbc  l                                           ; $76eb: $9d
	sbc  c                                           ; $76ec: $99
	ld   e, l                                        ; $76ed: $5d
	ld   [hl], h                                     ; $76ee: $74
	ld   a, e                                        ; $76ef: $7b
	rst  $38                                         ; $76f0: $ff
	rst  $38                                         ; $76f1: $ff
	ld   [bc], a                                     ; $76f2: $02
	and  l                                           ; $76f3: $a5
	inc  b                                           ; $76f4: $04
	xor  d                                           ; $76f5: $aa
	ld   a, h                                        ; $76f6: $7c
	inc  bc                                          ; $76f7: $03
	ld   l, l                                        ; $76f8: $6d
	dec  b                                           ; $76f9: $05
	add  hl, de                                      ; $76fa: $19
	ld   a, l                                        ; $76fb: $7d
	dec  c                                           ; $76fc: $0d
	inc  bc                                          ; $76fd: $03
	and  a                                           ; $76fe: $a7
	sub  b                                           ; $76ff: $90
	ld   d, h                                        ; $7700: $54
	halt                                             ; $7701: $76
	dec  b                                           ; $7702: $05
	pop  de                                          ; $7703: $d1
	ld   d, h                                        ; $7704: $54
	and  c                                           ; $7705: $a1
	ld   l, [hl]                                     ; $7706: $6e
	ld   e, a                                        ; $7707: $5f
	ld   [hl], a                                     ; $7708: $77
	rst  $38                                         ; $7709: $ff
	rst  $38                                         ; $770a: $ff
	dec  c                                           ; $770b: $0d
	nop                                              ; $770c: $00
	ld   a, [bc]                                     ; $770d: $0a
	inc  e                                           ; $770e: $1c
	inc  b                                           ; $770f: $04
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	ld   bc, $ffff                                   ; $7712: $01 $ff $ff
	ld   d, h                                        ; $7715: $54
	and  c                                           ; $7716: $a1
	sbc  [hl]                                        ; $7717: $9e
	ld   l, e                                        ; $7718: $6b
	ld   d, h                                        ; $7719: $54
	ld   l, [hl]                                     ; $771a: $6e
	ld   a, e                                        ; $771b: $7b
	sbc  a                                           ; $771c: $9f
	dec  c                                           ; $771d: $0d
	ld   l, e                                        ; $771e: $6b
	sbc  d                                           ; $771f: $9a
	ld   h, [hl]                                     ; $7720: $66
	sub  c                                           ; $7721: $91
	ld   d, b                                        ; $7722: $50
	sbc  [hl]                                        ; $7723: $9e
	ld   e, e                                        ; $7724: $5b
	sub  l                                           ; $7725: $95
	ld   d, h                                        ; $7726: $54
	ld   a, h                                        ; $7727: $7c
	ld   e, l                                        ; $7728: $5d
	and  c                                           ; $7729: $a1
	sbc  d                                           ; $772a: $9a
	and  c                                           ; $772b: $a1
	dec  c                                           ; $772c: $0d
	ld   a, l                                        ; $772d: $7d
	sbc  [hl]                                        ; $772e: $9e
	ld   e, b                                        ; $772f: $58
	sub  d                                           ; $7730: $92
	ld   h, a                                        ; $7731: $67
	adc  l                                           ; $7732: $8d
	ld   a, c                                        ; $7733: $79
	ld   h, l                                        ; $7734: $65
	adc  h                                           ; $7735: $8c
	ei                                               ; $7736: $fb
	ld   h, a                                        ; $7737: $67
	sbc  a                                           ; $7738: $9f
	dec  c                                           ; $7739: $0d
	nop                                              ; $773a: $00
	ld   a, [bc]                                     ; $773b: $0a
	ld   bc, $9a6b                                   ; $773c: $01 $6b $9a
	ld   h, [hl]                                     ; $773f: $66
	sub  c                                           ; $7740: $91
	sbc  [hl]                                        ; $7741: $9e
	ld   a, l                                        ; $7742: $7d
	sub  d                                           ; $7743: $92
	ld   e, l                                        ; $7744: $5d
	ld   h, b                                        ; $7745: $60
	and  c                                           ; $7746: $a1
	ld   e, e                                        ; $7747: $5b
	ld   a, c                                        ; $7748: $79
	dec  c                                           ; $7749: $0d
	ld   a, b                                        ; $774a: $78
	ld   [hl], c                                     ; $774b: $71
	ld   [hl], h                                     ; $774c: $74
	ld   a, e                                        ; $774d: $7b
	sbc  a                                           ; $774e: $9f
	dec  c                                           ; $774f: $0d
	nop                                              ; $7750: $00
	ld   a, [bc]                                     ; $7751: $0a
	dec  c                                           ; $7752: $0d
	nop                                              ; $7753: $00
	nop                                              ; $7754: $00
	rrca                                             ; $7755: $0f
	nop                                              ; $7756: $00
	ld   bc, $2106                                   ; $7757: $01 $06 $21
	inc  bc                                          ; $775a: $03
	inc  e                                           ; $775b: $1c
	inc  b                                           ; $775c: $04
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	ld   bc, $5078                                   ; $775f: $01 $78 $50
	ld   a, c                                        ; $7762: $79
	ld   sp, hl                                      ; $7763: $f9
	db   $10                                         ; $7764: $10
	ld   l, a                                        ; $7765: $6f
	ld   d, d                                        ; $7766: $52
	ld   [bc], a                                     ; $7767: $02
	inc  de                                          ; $7768: $13
	ld   l, a                                        ; $7769: $6f
	sub  c                                           ; $776a: $91
	and  c                                           ; $776b: $a1
	sbc  a                                           ; $776c: $9f
	dec  c                                           ; $776d: $0d
	sub  b                                           ; $776e: $90
	ld   d, h                                        ; $776f: $54
	ld   h, a                                        ; $7770: $67
	ld   e, [hl]                                     ; $7771: $5e
	sbc  [hl]                                        ; $7772: $9e
	ld   e, l                                        ; $7773: $5d
	and  c                                           ; $7774: $a1
	sbc  d                                           ; $7775: $9a
	and  c                                           ; $7776: $a1
	ld   a, h                                        ; $7777: $7c
	dec  c                                           ; $7778: $0d
	ld   h, [hl]                                     ; $7779: $66
	ld   e, c                                        ; $777a: $59
	and  c                                           ; $777b: $a1
	ld   l, [hl]                                     ; $777c: $6e
	sub  [hl]                                        ; $777d: $96
	sbc  a                                           ; $777e: $9f
	dec  c                                           ; $777f: $0d
	nop                                              ; $7780: $00
	ld   a, [bc]                                     ; $7781: $0a
	rrca                                             ; $7782: $0f
	nop                                              ; $7783: $00
	ld   bc, $5401                                   ; $7784: $01 $01 $54
	and  c                                           ; $7787: $a1
	rst  $38                                         ; $7788: $ff
	rst  $38                                         ; $7789: $ff
	ld   d, b                                        ; $778a: $50
	ld   a, h                                        ; $778b: $7c
	rst  $38                                         ; $778c: $ff
	rst  $38                                         ; $778d: $ff
	dec  c                                           ; $778e: $0d
	ld   [bc], a                                     ; $778f: $02
	and  l                                           ; $7790: $a5
	inc  b                                           ; $7791: $04
	xor  d                                           ; $7792: $aa
	ld   a, l                                        ; $7793: $7d
	inc  bc                                          ; $7794: $03
	ld   l, l                                        ; $7795: $6d
	dec  b                                           ; $7796: $05
	add  hl, de                                      ; $7797: $19
	and  b                                           ; $7798: $a0
	inc  bc                                          ; $7799: $03
	and  a                                           ; $779a: $a7
	sub  b                                           ; $779b: $90
	ld   d, h                                        ; $779c: $54
	ld   e, c                                        ; $779d: $59
	halt                                             ; $779e: $76
	dec  c                                           ; $779f: $0d
	dec  b                                           ; $77a0: $05
	pop  de                                          ; $77a1: $d1
	ld   [hl], c                                     ; $77a2: $71
	ld   [hl], h                                     ; $77a3: $74
	rst  $38                                         ; $77a4: $ff
	rst  $38                                         ; $77a5: $ff
	dec  c                                           ; $77a6: $0d
	nop                                              ; $77a7: $00
	ld   a, [bc]                                     ; $77a8: $0a
	inc  e                                           ; $77a9: $1c
	inc  b                                           ; $77aa: $04
	inc  bc                                          ; $77ab: $03
	inc  bc                                          ; $77ac: $03
	ld   bc, $5252                                   ; $77ad: $01 $52 $52
	ld   e, a                                        ; $77b0: $5f
	ld   [hl], a                                     ; $77b1: $77
	rst  $38                                         ; $77b2: $ff
	rst  $38                                         ; $77b3: $ff
	ld   [hl], a                                     ; $77b4: $77
	ld   d, h                                        ; $77b5: $54
	ld   h, l                                        ; $77b6: $65
	ld   [hl], h                                     ; $77b7: $74
	ld   sp, hl                                      ; $77b8: $f9
	dec  c                                           ; $77b9: $0d
	nop                                              ; $77ba: $00
	ld   a, [bc]                                     ; $77bb: $0a
	rrca                                             ; $77bc: $0f
	nop                                              ; $77bd: $00
	ld   bc, $5201                                   ; $77be: $01 $01 $52
	sub  d                                           ; $77c1: $92
	sbc  [hl]                                        ; $77c2: $9e
	halt                                             ; $77c3: $76
	ld   e, l                                        ; $77c4: $5d
	ld   a, c                                        ; $77c5: $79
	dec  b                                           ; $77c6: $05
	ld   de, $e104                                   ; $77c7: $11 $04 $e1
	ld   e, d                                        ; $77ca: $5a
	ld   d, b                                        ; $77cb: $50
	sbc  c                                           ; $77cc: $99
	dec  c                                           ; $77cd: $0d
	sbc  l                                           ; $77ce: $9d
	ld   e, a                                        ; $77cf: $5f
	ld   [hl], l                                     ; $77d0: $75
	sub  b                                           ; $77d1: $90
	ld   a, b                                        ; $77d2: $78
	ld   d, d                                        ; $77d3: $52
	and  c                                           ; $77d4: $a1
	ld   l, [hl]                                     ; $77d5: $6e
	rst  $38                                         ; $77d6: $ff
	rst  $38                                         ; $77d7: $ff
	dec  c                                           ; $77d8: $0d
	nop                                              ; $77d9: $00
	ld   a, [bc]                                     ; $77da: $0a
	rrca                                             ; $77db: $0f
	inc  b                                           ; $77dc: $04
	inc  bc                                          ; $77dd: $03
	dec  e                                           ; $77de: $1d
	ld   b, b                                        ; $77df: $40
	inc  d                                           ; $77e0: $14
	inc  bc                                          ; $77e1: $03
	inc  d                                           ; $77e2: $14
	ld   bc, $2902                                   ; $77e3: $01 $02 $29
	nop                                              ; $77e6: $00
	ld   bc, $ffff                                   ; $77e7: $01 $ff $ff
	rst  $38                                         ; $77ea: $ff
	sbc  l                                           ; $77eb: $9d
	ld   e, c                                        ; $77ec: $59
	ld   [hl], c                                     ; $77ed: $71
	ld   l, l                                        ; $77ee: $6d
	rst  $38                                         ; $77ef: $ff
	rst  $38                                         ; $77f0: $ff
	dec  c                                           ; $77f1: $0d
	ld   h, [hl]                                     ; $77f2: $66
	sub  c                                           ; $77f3: $91
	ld   d, b                                        ; $77f4: $50
	sbc  [hl]                                        ; $77f5: $9e
	ld   e, e                                        ; $77f6: $5b
	sub  l                                           ; $77f7: $95
	ld   d, h                                        ; $77f8: $54
	ld   a, h                                        ; $77f9: $7c
	ld   e, l                                        ; $77fa: $5d
	and  c                                           ; $77fb: $a1
	sbc  d                                           ; $77fc: $9a
	and  c                                           ; $77fd: $a1
	ld   a, l                                        ; $77fe: $7d
	dec  c                                           ; $77ff: $0d
	ld   e, b                                        ; $7800: $58
	sub  d                                           ; $7801: $92
	ld   h, a                                        ; $7802: $67
	adc  l                                           ; $7803: $8d
	ld   l, [hl]                                     ; $7804: $6e
	ld   a, e                                        ; $7805: $7b
	rst  $38                                         ; $7806: $ff
	rst  $38                                         ; $7807: $ff
	dec  c                                           ; $7808: $0d
	nop                                              ; $7809: $00
	ld   a, [bc]                                     ; $780a: $0a
	ld   bc, $6d8c                                   ; $780b: $01 $8c $6d
	ld   a, e                                        ; $780e: $7b
	sbc  [hl]                                        ; $780f: $9e
	ld   l, a                                        ; $7810: $6f
	ld   d, d                                        ; $7811: $52
	ld   [bc], a                                     ; $7812: $02
	inc  de                                          ; $7813: $13
	ld   l, a                                        ; $7814: $6f
	sub  c                                           ; $7815: $91
	and  c                                           ; $7816: $a1
	sbc  a                                           ; $7817: $9f
	dec  c                                           ; $7818: $0d
	nop                                              ; $7819: $00
	ld   a, [bc]                                     ; $781a: $0a
	dec  c                                           ; $781b: $0d
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	rrca                                             ; $781e: $0f
	nop                                              ; $781f: $00
	ld   bc, $1e09                                   ; $7820: $01 $09 $1e
	ld   b, $21                                      ; $7823: $06 $21
	inc  bc                                          ; $7825: $03
	nop                                              ; $7826: $00
	ld   [bc], a                                     ; $7827: $02
	ld   b, $01                                      ; $7828: $06 $01
	inc  bc                                          ; $782a: $03
	jr   nz, jr_048_782d                             ; $782b: $20 $00

jr_048_782d:
	rrca                                             ; $782d: $0f
	nop                                              ; $782e: $00
	ld   bc, $0706                                   ; $782f: $01 $06 $07
	nop                                              ; $7832: $00
	ld   [bc], a                                     ; $7833: $02
	rlca                                             ; $7834: $07
	or   e                                           ; $7835: $b3
	ld   [$8004], sp                                 ; $7836: $08 $04 $80
	add  $00                                         ; $7839: $c6 $00
	ld   c, $7a                                      ; $783b: $0e $7a
	rlca                                             ; $783d: $07
	daa                                              ; $783e: $27
	ld   [bc], a                                     ; $783f: $02
	inc  bc                                          ; $7840: $03
	jr   nz, @+$03                                   ; $7841: $20 $01

	jr   nz, jr_048_7868                             ; $7843: $20 $23

	nop                                              ; $7845: $00
	rlca                                             ; $7846: $07
	adc  a                                           ; $7847: $8f
	ld   bc, $5003                                   ; $7848: $01 $03 $50
	ld   [bc], a                                     ; $784b: $02
	nop                                              ; $784c: $00
	inc  bc                                          ; $784d: $03
	ld   c, d                                        ; $784e: $4a
	add  hl, hl                                      ; $784f: $29
	add  hl, hl                                      ; $7850: $29
	ld   bc, $2501                                   ; $7851: $01 $01 $25
	nop                                              ; $7854: $00
	rlca                                             ; $7855: $07
	adc  a                                           ; $7856: $8f
	ld   bc, $8004                                   ; $7857: $01 $04 $80
	ld   [hl], c                                     ; $785a: $71
	ld   bc, $20ff                                   ; $785b: $01 $ff $20
	inc  b                                           ; $785e: $04
	add  b                                           ; $785f: $80
	ld   [hl], d                                     ; $7860: $72
	ld   bc, $2000                                   ; $7861: $01 $00 $20
	inc  e                                           ; $7864: $1c
	inc  bc                                          ; $7865: $03
	ld   e, e                                        ; $7866: $5b
	ld   [bc], a                                     ; $7867: $02

jr_048_7868:
	nop                                              ; $7868: $00
	jr   nz, @+$1e                                   ; $7869: $20 $1c

	nop                                              ; $786b: $00
	rlca                                             ; $786c: $07
	ld   l, a                                        ; $786d: $6f
	nop                                              ; $786e: $00
	inc  bc                                          ; $786f: $03
	ld   b, h                                        ; $7870: $44
	ld   bc, $2000                                   ; $7871: $01 $00 $20
	nop                                              ; $7874: $00
	rlca                                             ; $7875: $07
	ld   d, l                                        ; $7876: $55
	dec  b                                           ; $7877: $05
	inc  bc                                          ; $7878: $03

Jump_048_7879:
	ld   b, h                                        ; $7879: $44
	ld   bc, $2501                                   ; $787a: $01 $01 $25
	inc  bc                                          ; $787d: $03
	ld   b, h                                        ; $787e: $44
	ld   bc, $2302                                   ; $787f: $01 $02 $23
	inc  e                                           ; $7882: $1c
	nop                                              ; $7883: $00
	rlca                                             ; $7884: $07
	inc  b                                           ; $7885: $04
	ld   b, $03                                      ; $7886: $06 $03
	ld   b, h                                        ; $7888: $44
	ld   bc, $2503                                   ; $7889: $01 $03 $25
	inc  bc                                          ; $788c: $03
	ld   b, h                                        ; $788d: $44
	ld   bc, $2305                                   ; $788e: $01 $05 $23
	inc  e                                           ; $7891: $1c
	nop                                              ; $7892: $00
	rlca                                             ; $7893: $07
	ld   h, d                                        ; $7894: $62
	rlca                                             ; $7895: $07
	inc  bc                                          ; $7896: $03
	ld   b, h                                        ; $7897: $44
	ld   bc, $2506                                   ; $7898: $01 $06 $25
	nop                                              ; $789b: $00
	inc  e                                           ; $789c: $1c
	inc  bc                                          ; $789d: $03
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	ld   [bc], a                                     ; $78a0: $02
	ld   bc, $a161                                   ; $78a1: $01 $61 $a1
	ld   a, c                                        ; $78a4: $79
	ld   l, a                                        ; $78a5: $6f
	ld   a, l                                        ; $78a6: $7d
	sbc  [hl]                                        ; $78a7: $9e
	ld   [$5d00], sp                                 ; $78a8: $08 $00 $5d
	and  c                                           ; $78ab: $a1
	sbc  a                                           ; $78ac: $9f
	dec  c                                           ; $78ad: $0d
	inc  bc                                          ; $78ae: $03
	ret  z                                           ; $78af: $c8

	ld   a, c                                        ; $78b0: $79
	ld   a, b                                        ; $78b1: $78
	ld   a, c                                        ; $78b2: $79
	ld   e, c                                        ; $78b3: $59
	inc  b                                           ; $78b4: $04
	di                                               ; $78b5: $f3
	ld   sp, hl                                      ; $78b6: $f9
	dec  c                                           ; $78b7: $0d
	nop                                              ; $78b8: $00
	ld   a, [bc]                                     ; $78b9: $0a
	rrca                                             ; $78ba: $0f
	nop                                              ; $78bb: $00
	ld   bc, $6101                                   ; $78bc: $01 $01 $61
	and  c                                           ; $78bf: $a1
	ld   a, c                                        ; $78c0: $79
	ld   l, a                                        ; $78c1: $6f
	ld   a, l                                        ; $78c2: $7d
	sbc  [hl]                                        ; $78c3: $9e
	rst  JumpTable                                         ; $78c4: $df
	db   $ec                                         ; $78c5: $ec
	and  e                                           ; $78c6: $a3
	ld   h, e                                        ; $78c7: $63
	and  c                                           ; $78c8: $a1
	sbc  a                                           ; $78c9: $9f
	dec  c                                           ; $78ca: $0d
	ld   d, b                                        ; $78cb: $50
	ld   a, h                                        ; $78cc: $7c
	rst  $38                                         ; $78cd: $ff
	rst  $38                                         ; $78ce: $ff
	inc  bc                                          ; $78cf: $03
	ld   l, l                                        ; $78d0: $6d
	dec  b                                           ; $78d1: $05
	add  hl, de                                      ; $78d2: $19
	and  b                                           ; $78d3: $a0
	ld   e, b                                        ; $78d4: $58
	ld   [bc], a                                     ; $78d5: $02
	add  b                                           ; $78d6: $80
	ld   d, d                                        ; $78d7: $52
	dec  c                                           ; $78d8: $0d
	ld   h, l                                        ; $78d9: $65
	ld   l, l                                        ; $78da: $6d
	ld   d, d                                        ; $78db: $52
	ld   a, h                                        ; $78dc: $7c
	ld   [hl], l                                     ; $78dd: $75
	ld   h, a                                        ; $78de: $67
	ld   e, d                                        ; $78df: $5a
	rst  $38                                         ; $78e0: $ff
	rst  $38                                         ; $78e1: $ff
	dec  c                                           ; $78e2: $0d
	nop                                              ; $78e3: $00
	ld   a, [bc]                                     ; $78e4: $0a
	inc  e                                           ; $78e5: $1c
	inc  bc                                          ; $78e6: $03
	inc  bc                                          ; $78e7: $03
	inc  bc                                          ; $78e8: $03
	ld   bc, $5252                                   ; $78e9: $01 $52 $52
	sbc  l                                           ; $78ec: $9d
	sub  [hl]                                        ; $78ed: $96
	sbc  a                                           ; $78ee: $9f
	dec  c                                           ; $78ef: $0d
	sbc  l                                           ; $78f0: $9d
	ld   l, l                                        ; $78f1: $6d
	ld   h, l                                        ; $78f2: $65
	halt                                             ; $78f3: $76
	ld   a, h                                        ; $78f4: $7c
	inc  bc                                          ; $78f5: $03
	ld   l, l                                        ; $78f6: $6d
	dec  b                                           ; $78f7: $05
	add  hl, de                                      ; $78f8: $19
	ld   a, l                                        ; $78f9: $7d
	sbc  [hl]                                        ; $78fa: $9e
	ld   [bc], a                                     ; $78fb: $02
	and  l                                           ; $78fc: $a5
	ld   [bc], a                                     ; $78fd: $02
	sub  e                                           ; $78fe: $93
	ld   e, d                                        ; $78ff: $5a
	dec  c                                           ; $7900: $0d
	ld   a, l                                        ; $7901: $7d
	ld   h, [hl]                                     ; $7902: $66
	adc  a                                           ; $7903: $8f
	ld   [hl], h                                     ; $7904: $74
	ld   l, [hl]                                     ; $7905: $6e
	ld   [hl], c                                     ; $7906: $71
	ld   l, l                                        ; $7907: $6d
	sbc  l                                           ; $7908: $9d
	ld   a, e                                        ; $7909: $7b
	ld   sp, hl                                      ; $790a: $f9
	dec  c                                           ; $790b: $0d
	nop                                              ; $790c: $00
	ld   a, [bc]                                     ; $790d: $0a
	ld   bc, $6d9d                                   ; $790e: $01 $9d $6d
	ld   h, l                                        ; $7911: $65
	ld   a, h                                        ; $7912: $7c
	inc  bc                                          ; $7913: $03
	ld   l, l                                        ; $7914: $6d
	dec  b                                           ; $7915: $05
	add  hl, de                                      ; $7916: $19
	ld   [hl], l                                     ; $7917: $75
	ld   a, l                                        ; $7918: $7d
	sbc  [hl]                                        ; $7919: $9e
	ld   b, $25                                      ; $791a: $06 $25
	inc  b                                           ; $791c: $04
	dec  bc                                          ; $791d: $0b
	ld   b, $80                                      ; $791e: $06 $80
	and  b                                           ; $7920: $a0
	dec  c                                           ; $7921: $0d
	ld   [bc], a                                     ; $7922: $02
	cp   [hl]                                        ; $7923: $be
	adc  a                                           ; $7924: $8f
	sbc  c                                           ; $7925: $99
	halt                                             ; $7926: $76
	halt                                             ; $7927: $76
	sub  b                                           ; $7928: $90
	ld   a, c                                        ; $7929: $79
	sbc  [hl]                                        ; $792a: $9e
	inc  bc                                          ; $792b: $03
	ld   h, d                                        ; $792c: $62
	inc  b                                           ; $792d: $04
	dec  bc                                          ; $792e: $0b
	dec  b                                           ; $792f: $05
	ld   a, [bc]                                     ; $7930: $0a
	and  b                                           ; $7931: $a0
	dec  c                                           ; $7932: $0d
	inc  b                                           ; $7933: $04
	pop  de                                          ; $7934: $d1
	ld   a, c                                        ; $7935: $79
	ld   [hl], d                                     ; $7936: $72
	ld   e, a                                        ; $7937: $5f
	ld   [hl], h                                     ; $7938: $74
	sub  b                                           ; $7939: $90
	sub  a                                           ; $793a: $97
	ld   d, d                                        ; $793b: $52
	adc  h                                           ; $793c: $8c
	ld   h, a                                        ; $793d: $67
	sbc  a                                           ; $793e: $9f
	dec  c                                           ; $793f: $0d
	nop                                              ; $7940: $00
	ld   a, [bc]                                     ; $7941: $0a
	inc  e                                           ; $7942: $1c
	inc  bc                                          ; $7943: $03
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	ld   bc, $9a6b                                   ; $7946: $01 $6b $9a
	ld   h, [hl]                                     ; $7949: $66
	sub  c                                           ; $794a: $91
	sbc  [hl]                                        ; $794b: $9e
	dec  b                                           ; $794c: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $794d: $cf
	adc  a                                           ; $794e: $8f
	sbc  c                                           ; $794f: $99
	sbc  l                                           ; $7950: $9d
	sub  [hl]                                        ; $7951: $96
	sbc  a                                           ; $7952: $9f
	dec  c                                           ; $7953: $0d
	nop                                              ; $7954: $00
	ld   a, [bc]                                     ; $7955: $0a
	dec  h                                           ; $7956: $25
	inc  bc                                          ; $7957: $03
	rlca                                             ; $7958: $07
	ld   e, b                                        ; $7959: $58
	inc  b                                           ; $795a: $04
	inc  bc                                          ; $795b: $03
	jr   nz, jr_048_795f                             ; $795c: $20 $01

	nop                                              ; $795e: $00

jr_048_795f:
	jr   nz, jr_048_7961                             ; $795f: $20 $00

jr_048_7961:
	inc  e                                           ; $7961: $1c
	inc  bc                                          ; $7962: $03
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	ld   bc, $0458                                   ; $7965: $01 $58 $04
	ld   a, e                                        ; $7968: $7b
	sbc  d                                           ; $7969: $9a
	ld   h, e                                        ; $796a: $63
	adc  h                                           ; $796b: $8c
	rst  $38                                         ; $796c: $ff
	rst  $38                                         ; $796d: $ff
	sbc  a                                           ; $796e: $9f
	dec  c                                           ; $796f: $0d
	inc  bc                                          ; $7970: $03
	inc  c                                           ; $7971: $0c
	adc  a                                           ; $7972: $8f
	ld   [hl], h                                     ; $7973: $74
	ld   a, c                                        ; $7974: $79
	ld   h, l                                        ; $7975: $65
	ld   [hl], h                                     ; $7976: $74
	ld   a, l                                        ; $7977: $7d
	sbc  [hl]                                        ; $7978: $9e
	adc  h                                           ; $7979: $8c
	ld   l, b                                        ; $797a: $68
	adc  h                                           ; $797b: $8c
	ld   l, b                                        ; $797c: $68
	dec  c                                           ; $797d: $0d
	halt                                             ; $797e: $76
	ld   d, d                                        ; $797f: $52
	ld   [hl], c                                     ; $7980: $71
	ld   l, l                                        ; $7981: $6d
	halt                                             ; $7982: $76
	ld   h, c                                        ; $7983: $61
	sbc  e                                           ; $7984: $9b
	ld   a, e                                        ; $7985: $7b
	sbc  a                                           ; $7986: $9f
	dec  c                                           ; $7987: $0d
	nop                                              ; $7988: $00
	ld   a, [bc]                                     ; $7989: $0a
	ld   bc, $9a6b                                   ; $798a: $01 $6b $9a
	ld   [hl], l                                     ; $798d: $75
	ld   a, l                                        ; $798e: $7d
	sbc  [hl]                                        ; $798f: $9e
	inc  b                                           ; $7990: $04
	adc  a                                           ; $7991: $8f
	inc  b                                           ; $7992: $04
	xor  d                                           ; $7993: $aa
	ld   a, h                                        ; $7994: $7c
	ld   [bc], a                                     ; $7995: $02
	or   d                                           ; $7996: $b2
	ld   [bc], a                                     ; $7997: $02
	xor  d                                           ; $7998: $aa
	ld   a, h                                        ; $7999: $7c
	inc  bc                                          ; $799a: $03
	ld   l, l                                        ; $799b: $6d
	dec  b                                           ; $799c: $05
	add  hl, de                                      ; $799d: $19
	and  b                                           ; $799e: $a0
	dec  c                                           ; $799f: $0d
	nop                                              ; $79a0: $00
	dec  b                                           ; $79a1: $05
	ld   b, b                                        ; $79a2: $40
	ld   b, h                                        ; $79a3: $44
	inc  bc                                          ; $79a4: $03
	ld   b, h                                        ; $79a5: $44
	ld   bc, $2801                                   ; $79a6: $01 $01 $28
	nop                                              ; $79a9: $00
	ld   bc, $7e03                                   ; $79aa: $01 $03 $7e
	sbc  l                                           ; $79ad: $9d
	sbc  b                                           ; $79ae: $98
	adc  h                                           ; $79af: $8c
	ld   h, a                                        ; $79b0: $67
	sbc  a                                           ; $79b1: $9f
	dec  c                                           ; $79b2: $0d
	nop                                              ; $79b3: $00
	ld   a, [bc]                                     ; $79b4: $0a
	dec  c                                           ; $79b5: $0d
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	rrca                                             ; $79b8: $0f
	nop                                              ; $79b9: $00
	ld   bc, $0d00                                   ; $79ba: $01 $00 $0d
	inc  bc                                          ; $79bd: $03
	ld   [bc], a                                     ; $79be: $02
	rrca                                             ; $79bf: $0f
	nop                                              ; $79c0: $00
	ld   bc, $0102                                   ; $79c1: $01 $02 $01
	ld   h, c                                        ; $79c4: $61
	and  c                                           ; $79c5: $a1
	ld   a, c                                        ; $79c6: $79
	ld   l, a                                        ; $79c7: $6f
	ld   a, l                                        ; $79c8: $7d
	sbc  [hl]                                        ; $79c9: $9e
	rst  JumpTable                                         ; $79ca: $df
	db   $ec                                         ; $79cb: $ec
	and  e                                           ; $79cc: $a3
	ld   h, e                                        ; $79cd: $63
	and  c                                           ; $79ce: $a1
	sbc  a                                           ; $79cf: $9f
	dec  c                                           ; $79d0: $0d
	ld   d, b                                        ; $79d1: $50
	ld   a, h                                        ; $79d2: $7c
	sbc  [hl]                                        ; $79d3: $9e
	inc  bc                                          ; $79d4: $03
	ld   l, l                                        ; $79d5: $6d
	dec  b                                           ; $79d6: $05
	add  hl, de                                      ; $79d7: $19
	and  b                                           ; $79d8: $a0
	ld   e, b                                        ; $79d9: $58
	ld   [bc], a                                     ; $79da: $02
	add  b                                           ; $79db: $80
	ld   d, d                                        ; $79dc: $52
	ld   h, l                                        ; $79dd: $65
	ld   l, l                                        ; $79de: $6d
	ld   d, d                                        ; $79df: $52
	ld   a, h                                        ; $79e0: $7c
	dec  c                                           ; $79e1: $0d
	ld   [hl], l                                     ; $79e2: $75
	ld   h, a                                        ; $79e3: $67
	ld   e, d                                        ; $79e4: $5a
	rst  $38                                         ; $79e5: $ff
	rst  $38                                         ; $79e6: $ff
	dec  c                                           ; $79e7: $0d
	nop                                              ; $79e8: $00
	ld   a, [bc]                                     ; $79e9: $0a
	rrca                                             ; $79ea: $0f
	inc  bc                                          ; $79eb: $03
	ld   [bc], a                                     ; $79ec: $02
	ld   bc, $ffff                                   ; $79ed: $01 $ff $ff
	rst  $38                                         ; $79f0: $ff
	ld   d, d                                        ; $79f1: $52
	ld   d, d                                        ; $79f2: $52
	sbc  l                                           ; $79f3: $9d
	sub  [hl]                                        ; $79f4: $96
	rst  $38                                         ; $79f5: $ff
	rst  $38                                         ; $79f6: $ff
	dec  c                                           ; $79f7: $0d
	ld   l, e                                        ; $79f8: $6b
	sbc  d                                           ; $79f9: $9a
	ld   [hl], l                                     ; $79fa: $75
	ld   a, l                                        ; $79fb: $7d
	sbc  [hl]                                        ; $79fc: $9e
	ld   a, l                                        ; $79fd: $7d
	ld   h, [hl]                                     ; $79fe: $66
	adc  a                                           ; $79ff: $8f
	adc  h                                           ; $7a00: $8c
	ld   h, l                                        ; $7a01: $65
	sub  l                                           ; $7a02: $95
	ld   d, h                                        ; $7a03: $54
	sbc  a                                           ; $7a04: $9f
	dec  c                                           ; $7a05: $0d
	nop                                              ; $7a06: $00
	ld   a, [bc]                                     ; $7a07: $0a
	dec  b                                           ; $7a08: $05
	ld   b, b                                        ; $7a09: $40
	ld   d, b                                        ; $7a0a: $50
	ld   bc, $0000                                   ; $7a0b: $01 $00 $00
	dec  h                                           ; $7a0e: $25
	inc  bc                                          ; $7a0f: $03
	rlca                                             ; $7a10: $07
	ld   e, b                                        ; $7a11: $58
	inc  b                                           ; $7a12: $04
	inc  bc                                          ; $7a13: $03
	jr   nz, jr_048_7a17                             ; $7a14: $20 $01

	nop                                              ; $7a16: $00

jr_048_7a17:
	jr   nz, jr_048_7a19                             ; $7a17: $20 $00

jr_048_7a19:
	inc  e                                           ; $7a19: $1c
	inc  bc                                          ; $7a1a: $03
	ld   [bc], a                                     ; $7a1b: $02
	ld   [bc], a                                     ; $7a1c: $02
	ld   bc, $0458                                   ; $7a1d: $01 $58 $04
	ld   a, e                                        ; $7a20: $7b
	sbc  d                                           ; $7a21: $9a
	ld   h, e                                        ; $7a22: $63
	adc  h                                           ; $7a23: $8c
	ld   [hl], l                                     ; $7a24: $75
	ld   h, l                                        ; $7a25: $65
	ld   l, l                                        ; $7a26: $6d
	rst  $38                                         ; $7a27: $ff
	rst  $38                                         ; $7a28: $ff
	dec  c                                           ; $7a29: $0d
	nop                                              ; $7a2a: $00
	ld   a, [bc]                                     ; $7a2b: $0a
	dec  c                                           ; $7a2c: $0d
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	rrca                                             ; $7a2f: $0f
	nop                                              ; $7a30: $00
	ld   bc, $4005                                   ; $7a31: $01 $05 $40
	ld   b, h                                        ; $7a34: $44
	inc  bc                                          ; $7a35: $03
	ld   b, h                                        ; $7a36: $44
	ld   bc, $2801                                   ; $7a37: $01 $01 $28
	nop                                              ; $7a3a: $00
	ld   bc, $ffff                                   ; $7a3b: $01 $ff $ff
	rst  $38                                         ; $7a3e: $ff
	rst  $38                                         ; $7a3f: $ff
	rst  JumpTable                                         ; $7a40: $df
	db   $ec                                         ; $7a41: $ec
	and  e                                           ; $7a42: $a3
	ld   h, e                                        ; $7a43: $63
	and  c                                           ; $7a44: $a1
	sbc  [hl]                                        ; $7a45: $9e
	dec  c                                           ; $7a46: $0d
	ld   e, e                                        ; $7a47: $5b
	ld   h, b                                        ; $7a48: $60
	and  c                                           ; $7a49: $a1
	ld   [bc], a                                     ; $7a4a: $02
	jr   z, jr_048_7a9f                              ; $7a4b: $28 $52

	ld   l, h                                        ; $7a4d: $6c
	rst  $38                                         ; $7a4e: $ff
	rst  $38                                         ; $7a4f: $ff
	dec  c                                           ; $7a50: $0d
	nop                                              ; $7a51: $00
	ld   a, [bc]                                     ; $7a52: $0a
	nop                                              ; $7a53: $00
	inc  e                                           ; $7a54: $1c
	inc  bc                                          ; $7a55: $03
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	ld   [bc], a                                     ; $7a58: $02
	dec  b                                           ; $7a59: $05
	ld   b, b                                        ; $7a5a: $40
	ld   d, b                                        ; $7a5b: $50
	ld   bc, $0000                                   ; $7a5c: $01 $00 $00
	ld   bc, $a161                                   ; $7a5f: $01 $61 $a1
	ld   a, c                                        ; $7a62: $79
	ld   l, a                                        ; $7a63: $6f
	ld   a, l                                        ; $7a64: $7d
	rst  $38                                         ; $7a65: $ff
	rst  $38                                         ; $7a66: $ff
	ld   d, b                                        ; $7a67: $50
	sub  a                                           ; $7a68: $97
	ld   sp, hl                                      ; $7a69: $f9
	dec  c                                           ; $7a6a: $0d
	nop                                              ; $7a6b: $00
	inc  e                                           ; $7a6c: $1c
	inc  bc                                          ; $7a6d: $03
	rlca                                             ; $7a6e: $07
	rlca                                             ; $7a6f: $07
	ld   bc, $5477                                   ; $7a70: $01 $77 $54
	ld   h, l                                        ; $7a73: $65
	ld   l, l                                        ; $7a74: $6d
	ld   a, h                                        ; $7a75: $7c
	sbc  [hl]                                        ; $7a76: $9e
	ld   [$5d00], sp                                 ; $7a77: $08 $00 $5d
	and  c                                           ; $7a7a: $a1
	dec  c                                           ; $7a7b: $0d
	ld   [bc], a                                     ; $7a7c: $02
	ld   [hl], d                                     ; $7a7d: $72
	inc  bc                                          ; $7a7e: $03
	dec  bc                                          ; $7a7f: $0b
	ld   e, d                                        ; $7a80: $5a
	sbc  l                                           ; $7a81: $9d
	sbc  c                                           ; $7a82: $99
	ld   d, d                                        ; $7a83: $52
	sbc  l                                           ; $7a84: $9d
	sub  [hl]                                        ; $7a85: $96
	sbc  a                                           ; $7a86: $9f
	dec  c                                           ; $7a87: $0d
	nop                                              ; $7a88: $00
	ld   a, [bc]                                     ; $7a89: $0a
	inc  e                                           ; $7a8a: $1c
	inc  bc                                          ; $7a8b: $03
	inc  b                                           ; $7a8c: $04
	inc  b                                           ; $7a8d: $04
	ld   bc, $a502                                   ; $7a8e: $01 $02 $a5
	ld   [bc], a                                     ; $7a91: $02
	sub  e                                           ; $7a92: $93
	ld   a, h                                        ; $7a93: $7c
	inc  bc                                          ; $7a94: $03
	ld   l, l                                        ; $7a95: $6d
	dec  b                                           ; $7a96: $05
	add  hl, de                                      ; $7a97: $19
	ld   a, l                                        ; $7a98: $7d
	inc  bc                                          ; $7a99: $03
	and  a                                           ; $7a9a: $a7
	and  c                                           ; $7a9b: $a1
	ld   l, [hl]                                     ; $7a9c: $6e
	inc  b                                           ; $7a9d: $04
	ld   a, b                                        ; $7a9e: $78

jr_048_7a9f:
	ld   e, d                                        ; $7a9f: $5a
	dec  c                                           ; $7aa0: $0d
	ld   d, d                                        ; $7aa1: $52
	ld   d, d                                        ; $7aa2: $52
	and  c                                           ; $7aa3: $a1
	ld   h, [hl]                                     ; $7aa4: $66
	sub  c                                           ; $7aa5: $91
	ld   a, b                                        ; $7aa6: $78
	ld   d, d                                        ; $7aa7: $52
	ld   e, c                                        ; $7aa8: $59
	ld   h, l                                        ; $7aa9: $65
	sub  a                                           ; $7aaa: $97
	sbc  a                                           ; $7aab: $9f
	dec  c                                           ; $7aac: $0d
	nop                                              ; $7aad: $00
	ld   a, [bc]                                     ; $7aae: $0a
	jr   jr_048_7ab3                                 ; $7aaf: $18 $02

	nop                                              ; $7ab1: $00
	inc  bc                                          ; $7ab2: $03

jr_048_7ab3:
	and  a                                           ; $7ab3: $a7
	adc  [hl]                                        ; $7ab4: $8e
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	ld   e, d                                        ; $7ab7: $5a
	and  c                                           ; $7ab8: $a1
	ld   a, [hl]                                     ; $7ab9: $7e
	sbc  c                                           ; $7aba: $99
	nop                                              ; $7abb: $00
	ld   bc, $a207                                   ; $7abc: $01 $07 $a2
	ld   [bc], a                                     ; $7abf: $02
	ld   [bc], a                                     ; $7ac0: $02
	ld   [bc], a                                     ; $7ac1: $02
	ld   bc, $2000                                   ; $7ac2: $01 $00 $20
	nop                                              ; $7ac5: $00
	rlca                                             ; $7ac6: $07
	ld   a, a                                        ; $7ac7: $7f
	inc  bc                                          ; $7ac8: $03
	ld   [bc], a                                     ; $7ac9: $02
	ld   [bc], a                                     ; $7aca: $02
	ld   bc, $2001                                   ; $7acb: $01 $01 $20
	nop                                              ; $7ace: $00
	rrca                                             ; $7acf: $0f
	nop                                              ; $7ad0: $00
	ld   bc, $6701                                   ; $7ad1: $01 $01 $67
	adc  l                                           ; $7ad4: $8d
	adc  h                                           ; $7ad5: $8c
	ld   l, c                                        ; $7ad6: $69
	and  c                                           ; $7ad7: $a1
	rst  $38                                         ; $7ad8: $ff
	rst  $38                                         ; $7ad9: $ff
	dec  c                                           ; $7ada: $0d
	ld   l, e                                        ; $7adb: $6b
	sbc  d                                           ; $7adc: $9a
	ld   [hl], l                                     ; $7add: $75
	ld   a, l                                        ; $7ade: $7d
	sbc  [hl]                                        ; $7adf: $9e
	ld   [bc], a                                     ; $7ae0: $02
	and  l                                           ; $7ae1: $a5
	inc  b                                           ; $7ae2: $04
	xor  d                                           ; $7ae3: $aa
	ld   a, h                                        ; $7ae4: $7c
	inc  bc                                          ; $7ae5: $03
	ld   l, l                                        ; $7ae6: $6d
	dec  b                                           ; $7ae7: $05
	add  hl, de                                      ; $7ae8: $19
	ld   a, l                                        ; $7ae9: $7d
	dec  c                                           ; $7aea: $0d
	inc  bc                                          ; $7aeb: $03
	and  a                                           ; $7aec: $a7
	adc  h                                           ; $7aed: $8c
	ld   l, c                                        ; $7aee: $69
	ld   [hl], h                                     ; $7aef: $74
	ld   d, d                                        ; $7af0: $52
	ld   l, l                                        ; $7af1: $6d
	ld   l, [hl]                                     ; $7af2: $6e
	ld   e, e                                        ; $7af3: $5b
	adc  h                                           ; $7af4: $8c
	ld   h, a                                        ; $7af5: $67
	sbc  a                                           ; $7af6: $9f
	dec  c                                           ; $7af7: $0d
	nop                                              ; $7af8: $00
	ld   a, [bc]                                     ; $7af9: $0a
	inc  e                                           ; $7afa: $1c
	inc  bc                                          ; $7afb: $03
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	ld   bc, $9a6b                                   ; $7afe: $01 $6b $9a
	ld   e, d                                        ; $7b01: $5a
	ld   d, d                                        ; $7b02: $52
	ld   d, d                                        ; $7b03: $52
	sbc  l                                           ; $7b04: $9d
	sbc  a                                           ; $7b05: $9f
	dec  c                                           ; $7b06: $0d
	ld   [hl], l                                     ; $7b07: $75
	ld   a, l                                        ; $7b08: $7d
	sbc  [hl]                                        ; $7b09: $9e
	ld   [bc], a                                     ; $7b0a: $02
	and  l                                           ; $7b0b: $a5
	inc  b                                           ; $7b0c: $04
	xor  d                                           ; $7b0d: $aa
	ld   a, l                                        ; $7b0e: $7d
	ld   e, b                                        ; $7b0f: $58
	inc  bc                                          ; $7b10: $03
	and  a                                           ; $7b11: $a7
	adc  l                                           ; $7b12: $8d
	halt                                             ; $7b13: $76
	ld   d, d                                        ; $7b14: $52
	ld   d, h                                        ; $7b15: $54
	dec  c                                           ; $7b16: $0d
	ld   h, c                                        ; $7b17: $61
	halt                                             ; $7b18: $76
	ld   a, c                                        ; $7b19: $79
	ld   h, l                                        ; $7b1a: $65
	adc  h                                           ; $7b1b: $8c
	ld   h, l                                        ; $7b1c: $65
	sub  l                                           ; $7b1d: $95
	ld   d, h                                        ; $7b1e: $54
	sbc  a                                           ; $7b1f: $9f
	dec  c                                           ; $7b20: $0d
	nop                                              ; $7b21: $00
	ld   a, [bc]                                     ; $7b22: $0a
	inc  e                                           ; $7b23: $1c
	inc  bc                                          ; $7b24: $03
	inc  b                                           ; $7b25: $04
	inc  b                                           ; $7b26: $04
	ld   bc, $a15a                                   ; $7b27: $01 $5a $a1
	ld   a, [hl]                                     ; $7b2a: $7e
	sbc  c                                           ; $7b2b: $99
	ld   a, h                                        ; $7b2c: $7c
	sub  b                                           ; $7b2d: $90
	ld   d, d                                        ; $7b2e: $52
	ld   d, d                                        ; $7b2f: $52
	ld   e, a                                        ; $7b30: $5f
	sbc  d                                           ; $7b31: $9a
	ld   [hl], a                                     ; $7b32: $77
	sbc  [hl]                                        ; $7b33: $9e
	dec  c                                           ; $7b34: $0d
	inc  b                                           ; $7b35: $04
	dec  c                                           ; $7b36: $0d
	inc  bc                                          ; $7b37: $03
	cp   $02                                         ; $7b38: $fe $02
	ld   l, b                                        ; $7b3a: $68
	dec  b                                           ; $7b3b: $05
	ld   de, $6f7d                                   ; $7b3c: $11 $7d $6f
	sub  c                                           ; $7b3f: $91
	and  c                                           ; $7b40: $a1
	halt                                             ; $7b41: $76
	dec  c                                           ; $7b42: $0d
	ld   h, l                                        ; $7b43: $65
	ld   a, b                                        ; $7b44: $78
	ld   h, e                                        ; $7b45: $63
	ld   d, d                                        ; $7b46: $52
	ld   a, e                                        ; $7b47: $7b
	sbc  a                                           ; $7b48: $9f
	dec  c                                           ; $7b49: $0d
	nop                                              ; $7b4a: $00
	ld   a, [bc]                                     ; $7b4b: $0a
	rrca                                             ; $7b4c: $0f
	nop                                              ; $7b4d: $00
	ld   bc, $7d01                                   ; $7b4e: $01 $01 $7d
	ld   d, d                                        ; $7b51: $52
	sbc  [hl]                                        ; $7b52: $9e
	sbc  l                                           ; $7b53: $9d
	ld   e, c                                        ; $7b54: $59
	sbc  b                                           ; $7b55: $98
	adc  h                                           ; $7b56: $8c
	ld   h, l                                        ; $7b57: $65
	ld   l, l                                        ; $7b58: $6d
	sbc  a                                           ; $7b59: $9f
	dec  c                                           ; $7b5a: $0d
	ld   l, e                                        ; $7b5b: $6b
	sbc  d                                           ; $7b5c: $9a
	ld   [hl], l                                     ; $7b5d: $75
	ld   a, l                                        ; $7b5e: $7d
	inc  bc                                          ; $7b5f: $03
	add  e                                           ; $7b60: $83
	dec  b                                           ; $7b61: $05
	dec  c                                           ; $7b62: $0d
	ld   h, l                                        ; $7b63: $65
	adc  h                                           ; $7b64: $8c
	ld   h, a                                        ; $7b65: $67
	sbc  a                                           ; $7b66: $9f
	dec  c                                           ; $7b67: $0d
	nop                                              ; $7b68: $00
	ld   a, [bc]                                     ; $7b69: $0a
	dec  c                                           ; $7b6a: $0d
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	inc  hl                                          ; $7b6d: $23
	ld   bc, $6b01                                   ; $7b6e: $01 $01 $6b
	sbc  d                                           ; $7b71: $9a
	ld   h, [hl]                                     ; $7b72: $66
	sub  c                                           ; $7b73: $91
	sbc  [hl]                                        ; $7b74: $9e
	inc  bc                                          ; $7b75: $03
	ld   l, h                                        ; $7b76: $6c
	ld   h, l                                        ; $7b77: $65
	inc  bc                                          ; $7b78: $03
	and  a                                           ; $7b79: $a7
	adc  [hl]                                        ; $7b7a: $8e
	halt                                             ; $7b7b: $76
	ld   h, a                                        ; $7b7c: $67
	sbc  c                                           ; $7b7d: $99
	ld   e, c                                        ; $7b7e: $59
	sbc  a                                           ; $7b7f: $9f
	dec  c                                           ; $7b80: $0d
	nop                                              ; $7b81: $00
	ld   a, [bc]                                     ; $7b82: $0a
	inc  c                                           ; $7b83: $0c
	ld   [bc], a                                     ; $7b84: $02
	dec  h                                           ; $7b85: $25
	nop                                              ; $7b86: $00
	ld   c, $02                                      ; $7b87: $0e $02
	rrca                                             ; $7b89: $0f
	nop                                              ; $7b8a: $00
	ld   bc, $5401                                   ; $7b8b: $01 $01 $54
	db   $fc                                         ; $7b8e: $fc
	and  c                                           ; $7b8f: $a1
	sub  [hl]                                        ; $7b90: $96
	ld   e, l                                        ; $7b91: $5d
	inc  b                                           ; $7b92: $04
	ld   b, d                                        ; $7b93: $42
	ld   l, l                                        ; $7b94: $6d
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	dec  c                                           ; $7b97: $0d
	ld   e, c                                        ; $7b98: $59
	ld   a, b                                        ; $7b99: $78
	sbc  b                                           ; $7b9a: $98
	inc  b                                           ; $7b9b: $04
	dec  c                                           ; $7b9c: $0d
	ld   e, d                                        ; $7b9d: $5a
	dec  b                                           ; $7b9e: $05
	inc  de                                          ; $7b9f: $13
	ld   a, c                                        ; $7ba0: $79
	ld   a, b                                        ; $7ba1: $78
	ld   [hl], c                                     ; $7ba2: $71
	ld   l, l                                        ; $7ba3: $6d
	ld   l, h                                        ; $7ba4: $6c
	sbc  a                                           ; $7ba5: $9f
	dec  c                                           ; $7ba6: $0d
	nop                                              ; $7ba7: $00
	ld   a, [bc]                                     ; $7ba8: $0a
	add  hl, hl                                      ; $7ba9: $29
	ld   b, $00                                      ; $7baa: $06 $00
	rrca                                             ; $7bac: $0f
	nop                                              ; $7bad: $00
	ld   bc, $5201                                   ; $7bae: $01 $01 $52
	ld   d, [hl]                                     ; $7bb1: $56
	sbc  [hl]                                        ; $7bb2: $9e
	inc  b                                           ; $7bb3: $04
	ld   c, $03                                      ; $7bb4: $0e $03
	sbc  l                                           ; $7bb6: $9d
	inc  b                                           ; $7bb7: $04
	and  [hl]                                        ; $7bb8: $a6
	ld   [hl], l                                     ; $7bb9: $75
	ld   h, a                                        ; $7bba: $67
	sbc  a                                           ; $7bbb: $9f
	dec  c                                           ; $7bbc: $0d
	ld   e, d                                        ; $7bbd: $5a
	and  c                                           ; $7bbe: $a1
	ld   a, [hl]                                     ; $7bbf: $7e
	sbc  b                                           ; $7bc0: $98
	adc  h                                           ; $7bc1: $8c
	ld   h, a                                        ; $7bc2: $67
	ld   a, [$000d]                                  ; $7bc3: $fa $0d $00
	ld   a, [bc]                                     ; $7bc6: $0a
	rlca                                             ; $7bc7: $07
	reti                                             ; $7bc8: $d9


	inc  b                                           ; $7bc9: $04
	inc  bc                                          ; $7bca: $03
	ld   b, h                                        ; $7bcb: $44
	ld   bc, $2000                                   ; $7bcc: $01 $00 $20
	nop                                              ; $7bcf: $00
	rrca                                             ; $7bd0: $0f
	inc  bc                                          ; $7bd1: $03
	inc  b                                           ; $7bd2: $04
	ld   bc, $546b                                   ; $7bd3: $01 $6b $54
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	dec  c                                           ; $7bd8: $0d
	ld   l, e                                        ; $7bd9: $6b
	sbc  d                                           ; $7bda: $9a
	ld   h, [hl]                                     ; $7bdb: $66
	sub  c                                           ; $7bdc: $91
	sbc  [hl]                                        ; $7bdd: $9e
	dec  b                                           ; $7bde: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bdf: $cf
	adc  a                                           ; $7be0: $8f
	sbc  c                                           ; $7be1: $99
	sbc  l                                           ; $7be2: $9d
	sub  [hl]                                        ; $7be3: $96
	sbc  a                                           ; $7be4: $9f
	dec  c                                           ; $7be5: $0d
	nop                                              ; $7be6: $00
	ld   a, [bc]                                     ; $7be7: $0a
	dec  h                                           ; $7be8: $25
	inc  bc                                          ; $7be9: $03
	dec  b                                           ; $7bea: $05
	ld   b, b                                        ; $7beb: $40
	ld   b, h                                        ; $7bec: $44
	inc  bc                                          ; $7bed: $03
	ld   b, h                                        ; $7bee: $44
	ld   bc, $2801                                   ; $7bef: $01 $01 $28
	nop                                              ; $7bf2: $00
	inc  e                                           ; $7bf3: $1c
	inc  bc                                          ; $7bf4: $03
	inc  b                                           ; $7bf5: $04
	inc  b                                           ; $7bf6: $04
	ld   bc, $0458                                   ; $7bf7: $01 $58 $04
	ld   a, e                                        ; $7bfa: $7b
	sbc  d                                           ; $7bfb: $9a
	ld   h, e                                        ; $7bfc: $63
	adc  h                                           ; $7bfd: $8c
	rst  $38                                         ; $7bfe: $ff
	rst  $38                                         ; $7bff: $ff
	dec  c                                           ; $7c00: $0d
	ld   [$5d00], sp                                 ; $7c01: $08 $00 $5d
	and  c                                           ; $7c04: $a1
	sbc  [hl]                                        ; $7c05: $9e
	call c, $c9f5                                    ; $7c06: $dc $f5 $c9
	ld   a, c                                        ; $7c09: $79
	dec  c                                           ; $7c0a: $0d
	inc  b                                           ; $7c0b: $04
	ld   c, $03                                      ; $7c0c: $0e $03
	sbc  l                                           ; $7c0e: $9d
	inc  b                                           ; $7c0f: $04
	and  [hl]                                        ; $7c10: $a6
	ld   a, b                                        ; $7c11: $78
	ld   a, h                                        ; $7c12: $7c
	ld   sp, hl                                      ; $7c13: $f9
	dec  c                                           ; $7c14: $0d
	nop                                              ; $7c15: $00
	ld   a, [bc]                                     ; $7c16: $0a
	rlca                                             ; $7c17: $07
	inc  h                                           ; $7c18: $24
	inc  b                                           ; $7c19: $04
	inc  bc                                          ; $7c1a: $03
	jr   nz, jr_048_7c1e                             ; $7c1b: $20 $01

	nop                                              ; $7c1d: $00

jr_048_7c1e:
	jr   nz, jr_048_7c20                             ; $7c1e: $20 $00

jr_048_7c20:
	ld   bc, $a502                                   ; $7c20: $01 $02 $a5
	inc  b                                           ; $7c23: $04
	xor  d                                           ; $7c24: $aa
	ld   a, l                                        ; $7c25: $7d
	sub  b                                           ; $7c26: $90
	ld   d, h                                        ; $7c27: $54
	inc  bc                                          ; $7c28: $03
	and  a                                           ; $7c29: $a7
	and  c                                           ; $7c2a: $a1
	ld   l, [hl]                                     ; $7c2b: $6e
	inc  b                                           ; $7c2c: $04
	ld   a, b                                        ; $7c2d: $78
	ld   e, d                                        ; $7c2e: $5a
	dec  c                                           ; $7c2f: $0d
	ld   d, d                                        ; $7c30: $52
	ld   d, d                                        ; $7c31: $52
	halt                                             ; $7c32: $76
	dec  b                                           ; $7c33: $05
	pop  de                                          ; $7c34: $d1
	ld   d, h                                        ; $7c35: $54
	sbc  l                                           ; $7c36: $9d
	sbc  a                                           ; $7c37: $9f
	dec  c                                           ; $7c38: $0d
	ld   l, e                                        ; $7c39: $6b
	sbc  d                                           ; $7c3a: $9a
	ld   h, [hl]                                     ; $7c3b: $66
	sub  c                                           ; $7c3c: $91
	sbc  [hl]                                        ; $7c3d: $9e
	ld   e, b                                        ; $7c3e: $58
	inc  b                                           ; $7c3f: $04
	ld   a, e                                        ; $7c40: $7b
	sbc  d                                           ; $7c41: $9a
	ld   h, e                                        ; $7c42: $63
	adc  h                                           ; $7c43: $8c
	sbc  a                                           ; $7c44: $9f
	dec  c                                           ; $7c45: $0d
	nop                                              ; $7c46: $00
	ld   a, [bc]                                     ; $7c47: $0a
	rrca                                             ; $7c48: $0f
	nop                                              ; $7c49: $00
	ld   bc, $000d                                   ; $7c4a: $01 $0d $00
	nop                                              ; $7c4d: $00
	add  hl, bc                                      ; $7c4e: $09
	ld   e, $00                                      ; $7c4f: $1e $00
	rrca                                             ; $7c51: $0f
	nop                                              ; $7c52: $00
	ld   bc, $7d01                                   ; $7c53: $01 $01 $7d
	ld   d, d                                        ; $7c56: $52
	sbc  [hl]                                        ; $7c57: $9e
	ld   l, [hl]                                     ; $7c58: $6e
	ld   d, d                                        ; $7c59: $52
	ld   h, [hl]                                     ; $7c5a: $66
	sub  l                                           ; $7c5b: $95
	rst  $38                                         ; $7c5c: $ff
	ld   d, h                                        ; $7c5d: $54
	rst  $38                                         ; $7c5e: $ff
	rst  $38                                         ; $7c5f: $ff
	add  h                                           ; $7c60: $84
	rst  $38                                         ; $7c61: $ff
	rst  $38                                         ; $7c62: $ff
	dec  c                                           ; $7c63: $0d
	nop                                              ; $7c64: $00
	dec  c                                           ; $7c65: $0d
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	inc  c                                           ; $7c68: $0c
	ld   [bc], a                                     ; $7c69: $02
	ld   c, $03                                      ; $7c6a: $0e $03
	ld   bc, $9a50                                   ; $7c6c: $01 $50 $9a
	rst  $38                                         ; $7c6f: $ff
	rst  $38                                         ; $7c70: $ff
	rst  $38                                         ; $7c71: $ff
	ld   sp, hl                                      ; $7c72: $f9
	dec  c                                           ; $7c73: $0d
	ld   e, c                                        ; $7c74: $59
	sub  a                                           ; $7c75: $97
	rst  $38                                         ; $7c76: $ff
	rst  $38                                         ; $7c77: $ff
	ld   l, [hl]                                     ; $7c78: $6e
	rst  $38                                         ; $7c79: $ff
	rst  $38                                         ; $7c7a: $ff
	ld   e, d                                        ; $7c7b: $5a
	rst  $38                                         ; $7c7c: $ff
	rst  $38                                         ; $7c7d: $ff
	dec  c                                           ; $7c7e: $0d
	nop                                              ; $7c7f: $00
	ld   a, [bc]                                     ; $7c80: $0a
	ld   l, $01                                      ; $7c81: $2e $01
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	dec  b                                           ; $7c85: $05
	ld   b, b                                        ; $7c86: $40
	ld   b, h                                        ; $7c87: $44
	inc  bc                                          ; $7c88: $03
	ld   b, h                                        ; $7c89: $44
	ld   bc, $2801                                   ; $7c8a: $01 $01 $28
	nop                                              ; $7c8d: $00
	inc  e                                           ; $7c8e: $1c
	inc  bc                                          ; $7c8f: $03
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	ld   bc, $0458                                   ; $7c92: $01 $58 $04
	ld   a, e                                        ; $7c95: $7b
	sbc  d                                           ; $7c96: $9a
	ld   h, e                                        ; $7c97: $63
	adc  h                                           ; $7c98: $8c
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	dec  c                                           ; $7c9b: $0d
	nop                                              ; $7c9c: $00
	inc  e                                           ; $7c9d: $1c
	inc  bc                                          ; $7c9e: $03
	rlca                                             ; $7c9f: $07
	rlca                                             ; $7ca0: $07
	ld   bc, $9750                                   ; $7ca1: $01 $50 $97
	ld   sp, hl                                      ; $7ca4: $f9
	db   $10                                         ; $7ca5: $10
	ld   [hl], a                                     ; $7ca6: $77
	ld   d, h                                        ; $7ca7: $54
	ld   h, l                                        ; $7ca8: $65
	ld   l, l                                        ; $7ca9: $6d
	ld   a, h                                        ; $7caa: $7c
	ld   sp, hl                                      ; $7cab: $f9
	dec  c                                           ; $7cac: $0d
	ld   [bc], a                                     ; $7cad: $02
	ld   [hl], d                                     ; $7cae: $72
	ld   e, d                                        ; $7caf: $5a
	inc  bc                                          ; $7cb0: $03
	xor  l                                           ; $7cb1: $ad
	ld   [hl], c                                     ; $7cb2: $71
	inc  bc                                          ; $7cb3: $03
	ld   a, [bc]                                     ; $7cb4: $0a
	sub  [hl]                                        ; $7cb5: $96
	sbc  a                                           ; $7cb6: $9f
	dec  c                                           ; $7cb7: $0d
	nop                                              ; $7cb8: $00
	ld   a, [bc]                                     ; $7cb9: $0a
	rrca                                             ; $7cba: $0f
	nop                                              ; $7cbb: $00
	ld   bc, $5601                                   ; $7cbc: $01 $01 $56
	ld   d, [hl]                                     ; $7cbf: $56
	rst  $38                                         ; $7cc0: $ff
	rst  $38                                         ; $7cc1: $ff
	ld   a, b                                        ; $7cc2: $78
	and  c                                           ; $7cc3: $a1
	ld   l, [hl]                                     ; $7cc4: $6e
	ld   e, c                                        ; $7cc5: $59
	ld   h, e                                        ; $7cc6: $63
	ld   [hl], c                                     ; $7cc7: $71
	ld   e, e                                        ; $7cc8: $5b
	ld   e, c                                        ; $7cc9: $59
	sub  a                                           ; $7cca: $97
	dec  c                                           ; $7ccb: $0d
	inc  b                                           ; $7ccc: $04
	dec  c                                           ; $7ccd: $0d
	ld   e, d                                        ; $7cce: $5a
	ld   l, [hl]                                     ; $7ccf: $6e
	sbc  c                                           ; $7cd0: $99
	ld   e, l                                        ; $7cd1: $5d
	ld   [hl], h                                     ; $7cd2: $74
	rst  $38                                         ; $7cd3: $ff
	rst  $38                                         ; $7cd4: $ff
	dec  c                                           ; $7cd5: $0d
	nop                                              ; $7cd6: $00
	ld   a, [bc]                                     ; $7cd7: $0a

Call_048_7cd8:
	ld   bc, $6254                                   ; $7cd8: $01 $54 $62
	rst  $38                                         ; $7cdb: $ff
	rst  $38                                         ; $7cdc: $ff
	ld   e, c                                        ; $7cdd: $59
	rst  $38                                         ; $7cde: $ff
	rst  $38                                         ; $7cdf: $ff
	ld   a, b                                        ; $7ce0: $78
	rst  $38                                         ; $7ce1: $ff
	rst  $38                                         ; $7ce2: $ff
	dec  c                                           ; $7ce3: $0d
	nop                                              ; $7ce4: $00
	dec  c                                           ; $7ce5: $0d
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	inc  c                                           ; $7ce8: $0c
	ld   [bc], a                                     ; $7ce9: $02
	ld   c, $03                                      ; $7cea: $0e $03
	ld   bc, $9a50                                   ; $7cec: $01 $50 $9a
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	ld   sp, hl                                      ; $7cf2: $f9
	dec  c                                           ; $7cf3: $0d
	ld   [hl], a                                     ; $7cf4: $77
	ld   d, h                                        ; $7cf5: $54
	ld   h, l                                        ; $7cf6: $65
	rst  $38                                         ; $7cf7: $ff
	rst  $38                                         ; $7cf8: $ff
	ld   l, l                                        ; $7cf9: $6d
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	and  c                                           ; $7cfc: $a1
	rst  $38                                         ; $7cfd: $ff
	rst  $38                                         ; $7cfe: $ff
	dec  c                                           ; $7cff: $0d
	nop                                              ; $7d00: $00
	ld   a, [bc]                                     ; $7d01: $0a
	ld   l, $01                                      ; $7d02: $2e $01
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	rrca                                             ; $7d06: $0f
	inc  bc                                          ; $7d07: $03
	inc  b                                           ; $7d08: $04
	ld   bc, $546b                                   ; $7d09: $01 $6b $54
	rst  $38                                         ; $7d0c: $ff
	rst  $38                                         ; $7d0d: $ff
	dec  c                                           ; $7d0e: $0d
	sbc  l                                           ; $7d0f: $9d
	ld   e, c                                        ; $7d10: $59
	ld   [hl], c                                     ; $7d11: $71
	ld   l, l                                        ; $7d12: $6d
	sbc  l                                           ; $7d13: $9d
	sbc  a                                           ; $7d14: $9f
	dec  c                                           ; $7d15: $0d
	nop                                              ; $7d16: $00
	ld   a, [bc]                                     ; $7d17: $0a
	inc  e                                           ; $7d18: $1c
	inc  bc                                          ; $7d19: $03
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	ld   bc, $6d9d                                   ; $7d1c: $01 $9d $6d
	ld   h, l                                        ; $7d1f: $65
	halt                                             ; $7d20: $76
	ld   a, h                                        ; $7d21: $7c
	inc  bc                                          ; $7d22: $03
	ld   l, l                                        ; $7d23: $6d
	dec  b                                           ; $7d24: $05
	add  hl, de                                      ; $7d25: $19
	ld   a, l                                        ; $7d26: $7d
	sbc  [hl]                                        ; $7d27: $9e
	ld   [bc], a                                     ; $7d28: $02
	and  l                                           ; $7d29: $a5
	ld   [bc], a                                     ; $7d2a: $02
	sub  e                                           ; $7d2b: $93
	ld   e, d                                        ; $7d2c: $5a
	dec  c                                           ; $7d2d: $0d
	ld   a, l                                        ; $7d2e: $7d
	ld   h, [hl]                                     ; $7d2f: $66
	adc  a                                           ; $7d30: $8f
	ld   [hl], h                                     ; $7d31: $74
	ld   l, [hl]                                     ; $7d32: $6e
	ld   [hl], c                                     ; $7d33: $71
	ld   l, l                                        ; $7d34: $6d
	sbc  l                                           ; $7d35: $9d
	ld   a, e                                        ; $7d36: $7b
	ld   sp, hl                                      ; $7d37: $f9
	dec  c                                           ; $7d38: $0d
	nop                                              ; $7d39: $00
	ld   a, [bc]                                     ; $7d3a: $0a
	ld   bc, $6d9d                                   ; $7d3b: $01 $9d $6d
	ld   h, l                                        ; $7d3e: $65
	ld   a, h                                        ; $7d3f: $7c
	inc  bc                                          ; $7d40: $03
	ld   l, l                                        ; $7d41: $6d
	dec  b                                           ; $7d42: $05
	add  hl, de                                      ; $7d43: $19
	ld   [hl], l                                     ; $7d44: $75
	ld   a, l                                        ; $7d45: $7d
	sbc  [hl]                                        ; $7d46: $9e
	ld   b, $25                                      ; $7d47: $06 $25
	inc  b                                           ; $7d49: $04
	dec  bc                                          ; $7d4a: $0b
	ld   b, $80                                      ; $7d4b: $06 $80
	and  b                                           ; $7d4d: $a0
	dec  c                                           ; $7d4e: $0d
	ld   [bc], a                                     ; $7d4f: $02
	cp   [hl]                                        ; $7d50: $be
	adc  a                                           ; $7d51: $8f
	sbc  c                                           ; $7d52: $99
	halt                                             ; $7d53: $76
	halt                                             ; $7d54: $76
	sub  b                                           ; $7d55: $90
	ld   a, c                                        ; $7d56: $79
	sbc  [hl]                                        ; $7d57: $9e
	inc  bc                                          ; $7d58: $03
	ld   h, d                                        ; $7d59: $62
	inc  b                                           ; $7d5a: $04
	dec  bc                                          ; $7d5b: $0b
	dec  b                                           ; $7d5c: $05
	ld   a, [bc]                                     ; $7d5d: $0a
	and  b                                           ; $7d5e: $a0
	dec  c                                           ; $7d5f: $0d
	inc  b                                           ; $7d60: $04
	pop  de                                          ; $7d61: $d1
	ld   a, c                                        ; $7d62: $79
	ld   [hl], d                                     ; $7d63: $72
	ld   e, a                                        ; $7d64: $5f
	ld   [hl], h                                     ; $7d65: $74
	sub  b                                           ; $7d66: $90
	sub  a                                           ; $7d67: $97
	ld   d, d                                        ; $7d68: $52
	adc  h                                           ; $7d69: $8c
	ld   h, a                                        ; $7d6a: $67
	sbc  a                                           ; $7d6b: $9f
	dec  c                                           ; $7d6c: $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	ld   bc, $9a6b                                   ; $7d6f: $01 $6b $9a
	ld   h, [hl]                                     ; $7d72: $66
	sub  c                                           ; $7d73: $91
	sbc  [hl]                                        ; $7d74: $9e
	dec  b                                           ; $7d75: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d76: $cf
	adc  a                                           ; $7d77: $8f
	sbc  c                                           ; $7d78: $99
	sbc  l                                           ; $7d79: $9d
	sub  [hl]                                        ; $7d7a: $96
	sbc  a                                           ; $7d7b: $9f
	dec  c                                           ; $7d7c: $0d
	nop                                              ; $7d7d: $00
	ld   a, [bc]                                     ; $7d7e: $0a
	ld   b, $bb                                      ; $7d7f: $06 $bb
	inc  bc                                          ; $7d81: $03
	dec  c                                           ; $7d82: $0d
	inc  bc                                          ; $7d83: $03
	nop                                              ; $7d84: $00
	rrca                                             ; $7d85: $0f
	nop                                              ; $7d86: $00
	ld   bc, $0102                                   ; $7d87: $01 $02 $01
	ld   h, c                                        ; $7d8a: $61
	and  c                                           ; $7d8b: $a1
	ld   a, c                                        ; $7d8c: $79
	ld   l, a                                        ; $7d8d: $6f
	ld   a, l                                        ; $7d8e: $7d
	sbc  [hl]                                        ; $7d8f: $9e
	rst  JumpTable                                         ; $7d90: $df
	db   $ec                                         ; $7d91: $ec
	and  e                                           ; $7d92: $a3
	ld   h, e                                        ; $7d93: $63
	and  c                                           ; $7d94: $a1
	sbc  a                                           ; $7d95: $9f
	dec  c                                           ; $7d96: $0d
	ld   d, b                                        ; $7d97: $50
	ld   a, h                                        ; $7d98: $7c
	sbc  [hl]                                        ; $7d99: $9e
	inc  bc                                          ; $7d9a: $03
	ld   l, l                                        ; $7d9b: $6d
	dec  b                                           ; $7d9c: $05
	add  hl, de                                      ; $7d9d: $19
	and  b                                           ; $7d9e: $a0
	ld   e, b                                        ; $7d9f: $58
	ld   [bc], a                                     ; $7da0: $02
	add  b                                           ; $7da1: $80
	ld   d, d                                        ; $7da2: $52
	ld   h, l                                        ; $7da3: $65
	ld   l, l                                        ; $7da4: $6d
	ld   d, d                                        ; $7da5: $52
	ld   a, h                                        ; $7da6: $7c
	dec  c                                           ; $7da7: $0d
	ld   [hl], l                                     ; $7da8: $75
	ld   h, a                                        ; $7da9: $67
	ld   e, d                                        ; $7daa: $5a
	rst  $38                                         ; $7dab: $ff
	rst  $38                                         ; $7dac: $ff
	dec  c                                           ; $7dad: $0d
	nop                                              ; $7dae: $00
	ld   a, [bc]                                     ; $7daf: $0a
	rrca                                             ; $7db0: $0f
	inc  bc                                          ; $7db1: $03
	nop                                              ; $7db2: $00
	ld   bc, $5252                                   ; $7db3: $01 $52 $52
	sbc  l                                           ; $7db6: $9d
	sub  [hl]                                        ; $7db7: $96
	sbc  a                                           ; $7db8: $9f
	dec  c                                           ; $7db9: $0d
	ld   l, e                                        ; $7dba: $6b
	sbc  d                                           ; $7dbb: $9a
	ld   h, [hl]                                     ; $7dbc: $66
	sub  c                                           ; $7dbd: $91
	sbc  [hl]                                        ; $7dbe: $9e
	ld   h, e                                        ; $7dbf: $63
	ld   [hl], c                                     ; $7dc0: $71
	ld   l, e                                        ; $7dc1: $6b
	ld   e, l                                        ; $7dc2: $5d
	dec  c                                           ; $7dc3: $0d
	dec  b                                           ; $7dc4: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dc5: $cf
	adc  a                                           ; $7dc6: $8f
	adc  h                                           ; $7dc7: $8c
	ld   h, l                                        ; $7dc8: $65
	sub  l                                           ; $7dc9: $95
	ld   d, h                                        ; $7dca: $54
	sbc  a                                           ; $7dcb: $9f
	dec  c                                           ; $7dcc: $0d
	nop                                              ; $7dcd: $00
	ld   a, [bc]                                     ; $7dce: $0a
	dec  h                                           ; $7dcf: $25
	inc  bc                                          ; $7dd0: $03
	rlca                                             ; $7dd1: $07
	ld   e, b                                        ; $7dd2: $58
	inc  b                                           ; $7dd3: $04
	inc  bc                                          ; $7dd4: $03
	jr   nz, jr_048_7dd8                             ; $7dd5: $20 $01

	nop                                              ; $7dd7: $00

jr_048_7dd8:
	jr   nz, jr_048_7dda                             ; $7dd8: $20 $00

jr_048_7dda:
	inc  e                                           ; $7dda: $1c
	inc  bc                                          ; $7ddb: $03
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	ld   bc, $0458                                   ; $7dde: $01 $58 $04
	ld   a, e                                        ; $7de1: $7b
	sbc  d                                           ; $7de2: $9a
	ld   h, e                                        ; $7de3: $63
	adc  h                                           ; $7de4: $8c
	sbc  a                                           ; $7de5: $9f
	dec  c                                           ; $7de6: $0d
	nop                                              ; $7de7: $00
	dec  b                                           ; $7de8: $05
	ld   b, b                                        ; $7de9: $40
	ld   b, h                                        ; $7dea: $44
	inc  bc                                          ; $7deb: $03
	ld   b, h                                        ; $7dec: $44
	ld   bc, $2801                                   ; $7ded: $01 $01 $28
	nop                                              ; $7df0: $00
	ld   bc, $a502                                   ; $7df1: $01 $02 $a5
	inc  b                                           ; $7df4: $04
	xor  d                                           ; $7df5: $aa
	ld   a, l                                        ; $7df6: $7d
	ld   h, c                                        ; $7df7: $61
	sbc  d                                           ; $7df8: $9a
	ld   e, l                                        ; $7df9: $5d
	sub  a                                           ; $7dfa: $97
	ld   d, d                                        ; $7dfb: $52
	ld   a, c                                        ; $7dfc: $79
	dec  c                                           ; $7dfd: $0d
	ld   h, l                                        ; $7dfe: $65
	ld   [hl], h                                     ; $7dff: $74
	ld   e, b                                        ; $7e00: $58
	ld   e, e                                        ; $7e01: $5b
	adc  h                                           ; $7e02: $8c
	ld   h, l                                        ; $7e03: $65
	sub  l                                           ; $7e04: $95
	ld   d, h                                        ; $7e05: $54
	sbc  a                                           ; $7e06: $9f
	dec  c                                           ; $7e07: $0d
	nop                                              ; $7e08: $00
	ld   a, [bc]                                     ; $7e09: $0a
	ld   bc, $9a6b                                   ; $7e0a: $01 $6b $9a
	ld   [hl], l                                     ; $7e0d: $75
	ld   a, l                                        ; $7e0e: $7d
	sbc  [hl]                                        ; $7e0f: $9e
	inc  b                                           ; $7e10: $04
	adc  a                                           ; $7e11: $8f
	inc  b                                           ; $7e12: $04
	xor  d                                           ; $7e13: $aa
	ld   a, h                                        ; $7e14: $7c
	ld   [bc], a                                     ; $7e15: $02
	or   d                                           ; $7e16: $b2
	ld   [bc], a                                     ; $7e17: $02
	xor  d                                           ; $7e18: $aa
	ld   a, h                                        ; $7e19: $7c
	inc  bc                                          ; $7e1a: $03
	ld   l, l                                        ; $7e1b: $6d
	dec  b                                           ; $7e1c: $05
	add  hl, de                                      ; $7e1d: $19
	and  b                                           ; $7e1e: $a0
	dec  c                                           ; $7e1f: $0d
	inc  bc                                          ; $7e20: $03
	ld   a, [hl]                                     ; $7e21: $7e
	sbc  l                                           ; $7e22: $9d
	sbc  b                                           ; $7e23: $98
	adc  h                                           ; $7e24: $8c
	ld   h, a                                        ; $7e25: $67
	sbc  a                                           ; $7e26: $9f
	dec  c                                           ; $7e27: $0d
	nop                                              ; $7e28: $00
	ld   a, [bc]                                     ; $7e29: $0a
	dec  c                                           ; $7e2a: $0d
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	rrca                                             ; $7e2d: $0f
	nop                                              ; $7e2e: $00
	ld   bc, $0d00                                   ; $7e2f: $01 $00 $0d
	inc  bc                                          ; $7e32: $03
	nop                                              ; $7e33: $00
	rrca                                             ; $7e34: $0f
	nop                                              ; $7e35: $00
	ld   bc, $0102                                   ; $7e36: $01 $02 $01
	ld   h, c                                        ; $7e39: $61
	and  c                                           ; $7e3a: $a1
	ld   a, c                                        ; $7e3b: $79
	ld   l, a                                        ; $7e3c: $6f
	ld   a, l                                        ; $7e3d: $7d
	sbc  [hl]                                        ; $7e3e: $9e
	rst  JumpTable                                         ; $7e3f: $df
	db   $ec                                         ; $7e40: $ec
	and  e                                           ; $7e41: $a3
	ld   h, e                                        ; $7e42: $63
	and  c                                           ; $7e43: $a1
	sbc  a                                           ; $7e44: $9f
	dec  c                                           ; $7e45: $0d
	inc  bc                                          ; $7e46: $03
	ld   l, l                                        ; $7e47: $6d
	dec  b                                           ; $7e48: $05
	add  hl, de                                      ; $7e49: $19
	and  b                                           ; $7e4a: $a0
	ld   e, b                                        ; $7e4b: $58
	ld   [bc], a                                     ; $7e4c: $02
	add  b                                           ; $7e4d: $80
	ld   d, d                                        ; $7e4e: $52
	ld   h, l                                        ; $7e4f: $65
	ld   l, l                                        ; $7e50: $6d
	ld   d, d                                        ; $7e51: $52
	ld   a, h                                        ; $7e52: $7c
	dec  c                                           ; $7e53: $0d
	ld   [hl], l                                     ; $7e54: $75
	ld   h, a                                        ; $7e55: $67
	ld   e, d                                        ; $7e56: $5a
	rst  $38                                         ; $7e57: $ff
	rst  $38                                         ; $7e58: $ff
	dec  c                                           ; $7e59: $0d
	nop                                              ; $7e5a: $00
	ld   a, [bc]                                     ; $7e5b: $0a
	rlca                                             ; $7e5c: $07
	reti                                             ; $7e5d: $d9


	ld   b, $03                                      ; $7e5e: $06 $03
	ld   b, h                                        ; $7e60: $44
	ld   bc, $2504                                   ; $7e61: $01 $04 $25
	nop                                              ; $7e64: $00
	rrca                                             ; $7e65: $0f
	inc  bc                                          ; $7e66: $03
	nop                                              ; $7e67: $00
	ld   bc, $5252                                   ; $7e68: $01 $52 $52
	sbc  l                                           ; $7e6b: $9d
	sub  [hl]                                        ; $7e6c: $96
	sbc  a                                           ; $7e6d: $9f
	dec  c                                           ; $7e6e: $0d
	ld   l, e                                        ; $7e6f: $6b
	sbc  d                                           ; $7e70: $9a
	ld   h, [hl]                                     ; $7e71: $66
	sub  c                                           ; $7e72: $91
	sbc  [hl]                                        ; $7e73: $9e
	ld   h, e                                        ; $7e74: $63
	ld   [hl], c                                     ; $7e75: $71
	ld   l, e                                        ; $7e76: $6b
	ld   e, l                                        ; $7e77: $5d
	dec  c                                           ; $7e78: $0d
	dec  b                                           ; $7e79: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e7a: $cf
	adc  a                                           ; $7e7b: $8f
	adc  h                                           ; $7e7c: $8c
	ld   h, l                                        ; $7e7d: $65
	sub  l                                           ; $7e7e: $95
	ld   d, h                                        ; $7e7f: $54
	sbc  a                                           ; $7e80: $9f
	dec  c                                           ; $7e81: $0d
	nop                                              ; $7e82: $00
	ld   a, [bc]                                     ; $7e83: $0a
	dec  h                                           ; $7e84: $25
	inc  bc                                          ; $7e85: $03
	rlca                                             ; $7e86: $07
	ld   e, b                                        ; $7e87: $58
	inc  b                                           ; $7e88: $04
	inc  bc                                          ; $7e89: $03
	jr   nz, jr_048_7e8d                             ; $7e8a: $20 $01

	nop                                              ; $7e8c: $00

jr_048_7e8d:
	jr   nz, jr_048_7e8f                             ; $7e8d: $20 $00

jr_048_7e8f:
	inc  e                                           ; $7e8f: $1c
	inc  bc                                          ; $7e90: $03
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	ld   bc, $0458                                   ; $7e93: $01 $58 $04
	ld   a, e                                        ; $7e96: $7b
	sbc  d                                           ; $7e97: $9a
	ld   h, e                                        ; $7e98: $63
	adc  h                                           ; $7e99: $8c
	sbc  a                                           ; $7e9a: $9f
	dec  c                                           ; $7e9b: $0d
	ld   e, c                                        ; $7e9c: $59
	ld   a, b                                        ; $7e9d: $78
	sbc  b                                           ; $7e9e: $98
	ld   b, $25                                      ; $7e9f: $06 $25
	inc  b                                           ; $7ea1: $04
	dec  bc                                          ; $7ea2: $0b
	ld   h, a                                        ; $7ea3: $67
	sbc  c                                           ; $7ea4: $99
	sub  [hl]                                        ; $7ea5: $96
	ld   d, h                                        ; $7ea6: $54
	ld   a, c                                        ; $7ea7: $79
	dec  c                                           ; $7ea8: $0d
	ld   a, b                                        ; $7ea9: $78
	ld   [hl], c                                     ; $7eaa: $71
	ld   l, l                                        ; $7eab: $6d
	sbc  l                                           ; $7eac: $9d
	ld   a, e                                        ; $7ead: $7b
	rst  $38                                         ; $7eae: $ff
	rst  $38                                         ; $7eaf: $ff
	sbc  a                                           ; $7eb0: $9f
	dec  c                                           ; $7eb1: $0d
	nop                                              ; $7eb2: $00
	ld   a, [bc]                                     ; $7eb3: $0a
	inc  e                                           ; $7eb4: $1c
	inc  bc                                          ; $7eb5: $03
	inc  bc                                          ; $7eb6: $03
	inc  bc                                          ; $7eb7: $03
	ld   bc, $9a61                                   ; $7eb8: $01 $61 $9a
	ld   e, c                                        ; $7ebb: $59
	sub  a                                           ; $7ebc: $97
	sub  b                                           ; $7ebd: $90
	sbc  [hl]                                        ; $7ebe: $9e
	ld   h, c                                        ; $7ebf: $61
	ld   a, h                                        ; $7ec0: $7c
	inc  bc                                          ; $7ec1: $03
	cp   $03                                         ; $7ec2: $fe $03
	add  [hl]                                        ; $7ec4: $86
	ld   [hl], l                                     ; $7ec5: $75
	dec  c                                           ; $7ec6: $0d
	ld   e, d                                        ; $7ec7: $5a
	and  c                                           ; $7ec8: $a1
	ld   a, [hl]                                     ; $7ec9: $7e
	sbc  b                                           ; $7eca: $98
	ld   a, b                                        ; $7ecb: $78
	ld   h, e                                        ; $7ecc: $63
	ld   d, d                                        ; $7ecd: $52
	sbc  a                                           ; $7ece: $9f
	dec  c                                           ; $7ecf: $0d
	nop                                              ; $7ed0: $00
	ld   a, [bc]                                     ; $7ed1: $0a
	dec  b                                           ; $7ed2: $05
	ld   b, b                                        ; $7ed3: $40
	ld   b, h                                        ; $7ed4: $44
	inc  bc                                          ; $7ed5: $03
	ld   b, h                                        ; $7ed6: $44
	ld   bc, $2801                                   ; $7ed7: $01 $01 $28
	nop                                              ; $7eda: $00
	inc  e                                           ; $7edb: $1c
	inc  bc                                          ; $7edc: $03
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	ld   bc, $9a6b                                   ; $7edf: $01 $6b $9a
	ld   [hl], l                                     ; $7ee2: $75
	ld   a, l                                        ; $7ee3: $7d
	sbc  [hl]                                        ; $7ee4: $9e
	inc  b                                           ; $7ee5: $04
	adc  a                                           ; $7ee6: $8f
	inc  b                                           ; $7ee7: $04
	xor  d                                           ; $7ee8: $aa
	ld   a, h                                        ; $7ee9: $7c
	ld   [bc], a                                     ; $7eea: $02
	or   d                                           ; $7eeb: $b2
	ld   [bc], a                                     ; $7eec: $02
	xor  d                                           ; $7eed: $aa
	ld   a, h                                        ; $7eee: $7c
	inc  bc                                          ; $7eef: $03
	ld   l, l                                        ; $7ef0: $6d
	dec  b                                           ; $7ef1: $05
	add  hl, de                                      ; $7ef2: $19
	and  b                                           ; $7ef3: $a0
	dec  c                                           ; $7ef4: $0d
	inc  bc                                          ; $7ef5: $03
	ld   a, [hl]                                     ; $7ef6: $7e
	sbc  l                                           ; $7ef7: $9d
	sbc  b                                           ; $7ef8: $98
	adc  h                                           ; $7ef9: $8c
	ld   h, a                                        ; $7efa: $67
	sbc  a                                           ; $7efb: $9f
	dec  c                                           ; $7efc: $0d
	nop                                              ; $7efd: $00
	ld   a, [bc]                                     ; $7efe: $0a
	dec  c                                           ; $7eff: $0d
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	rrca                                             ; $7f02: $0f
	nop                                              ; $7f03: $00
	ld   bc, $0f00                                   ; $7f04: $01 $00 $0f
	inc  bc                                          ; $7f07: $03
	nop                                              ; $7f08: $00
	ld   bc, $5252                                   ; $7f09: $01 $52 $52
	sbc  l                                           ; $7f0c: $9d
	sub  [hl]                                        ; $7f0d: $96
	sbc  a                                           ; $7f0e: $9f
	dec  c                                           ; $7f0f: $0d
	ld   l, e                                        ; $7f10: $6b
	sbc  d                                           ; $7f11: $9a
	ld   h, [hl]                                     ; $7f12: $66
	sub  c                                           ; $7f13: $91
	sbc  [hl]                                        ; $7f14: $9e
	ld   h, e                                        ; $7f15: $63
	ld   [hl], c                                     ; $7f16: $71
	ld   l, e                                        ; $7f17: $6b
	ld   e, l                                        ; $7f18: $5d
	dec  c                                           ; $7f19: $0d
	dec  b                                           ; $7f1a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f1b: $cf
	adc  a                                           ; $7f1c: $8f
	adc  h                                           ; $7f1d: $8c
	ld   h, l                                        ; $7f1e: $65
	sub  l                                           ; $7f1f: $95
	ld   d, h                                        ; $7f20: $54
	sbc  a                                           ; $7f21: $9f
	dec  c                                           ; $7f22: $0d
	nop                                              ; $7f23: $00
	ld   a, [bc]                                     ; $7f24: $0a
	dec  h                                           ; $7f25: $25
	inc  bc                                          ; $7f26: $03
	rlca                                             ; $7f27: $07
	ld   e, b                                        ; $7f28: $58
	inc  b                                           ; $7f29: $04
	inc  bc                                          ; $7f2a: $03
	jr   nz, jr_048_7f2e                             ; $7f2b: $20 $01

	nop                                              ; $7f2d: $00

jr_048_7f2e:
	jr   nz, jr_048_7f30                             ; $7f2e: $20 $00

jr_048_7f30:
	inc  e                                           ; $7f30: $1c
	inc  bc                                          ; $7f31: $03
	inc  bc                                          ; $7f32: $03
	inc  bc                                          ; $7f33: $03
	ld   bc, $0458                                   ; $7f34: $01 $58 $04
	ld   a, e                                        ; $7f37: $7b
	sbc  d                                           ; $7f38: $9a
	ld   h, e                                        ; $7f39: $63
	adc  h                                           ; $7f3a: $8c
	sbc  a                                           ; $7f3b: $9f
	dec  c                                           ; $7f3c: $0d
	ld   a, b                                        ; $7f3d: $78
	ld   e, c                                        ; $7f3e: $59
	ld   a, b                                        ; $7f3f: $78
	ld   e, c                                        ; $7f40: $59
	ld   d, d                                        ; $7f41: $52
	ld   d, d                                        ; $7f42: $52
	ld   [bc], a                                     ; $7f43: $02
	scf                                              ; $7f44: $37
	ld   h, [hl]                                     ; $7f45: $66
	sub  [hl]                                        ; $7f46: $96
	sbc  a                                           ; $7f47: $9f
	dec  c                                           ; $7f48: $0d
	ld   h, c                                        ; $7f49: $61
	ld   a, h                                        ; $7f4a: $7c
	inc  bc                                          ; $7f4b: $03
	cp   $03                                         ; $7f4c: $fe $03
	add  [hl]                                        ; $7f4e: $86
	ld   [hl], l                                     ; $7f4f: $75
	ld   e, d                                        ; $7f50: $5a
	and  c                                           ; $7f51: $a1
	ld   a, [hl]                                     ; $7f52: $7e
	sbc  b                                           ; $7f53: $98
	ld   a, b                                        ; $7f54: $78
	ld   h, e                                        ; $7f55: $63
	ld   d, d                                        ; $7f56: $52
	sbc  a                                           ; $7f57: $9f
	dec  c                                           ; $7f58: $0d
	nop                                              ; $7f59: $00
	ld   a, [bc]                                     ; $7f5a: $0a
	dec  b                                           ; $7f5b: $05
	ld   b, b                                        ; $7f5c: $40
	ld   b, h                                        ; $7f5d: $44
	inc  bc                                          ; $7f5e: $03
	ld   b, h                                        ; $7f5f: $44
	ld   bc, $2801                                   ; $7f60: $01 $01 $28
	nop                                              ; $7f63: $00
	inc  e                                           ; $7f64: $1c
	inc  bc                                          ; $7f65: $03
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	ld   bc, $9a6b                                   ; $7f68: $01 $6b $9a
	ld   [hl], l                                     ; $7f6b: $75
	ld   a, l                                        ; $7f6c: $7d
	sbc  [hl]                                        ; $7f6d: $9e
	inc  b                                           ; $7f6e: $04
	adc  a                                           ; $7f6f: $8f
	inc  b                                           ; $7f70: $04
	xor  d                                           ; $7f71: $aa
	ld   a, h                                        ; $7f72: $7c
	ld   [bc], a                                     ; $7f73: $02
	or   d                                           ; $7f74: $b2
	ld   [bc], a                                     ; $7f75: $02
	xor  d                                           ; $7f76: $aa
	ld   a, h                                        ; $7f77: $7c
	inc  bc                                          ; $7f78: $03
	ld   l, l                                        ; $7f79: $6d
	dec  b                                           ; $7f7a: $05
	add  hl, de                                      ; $7f7b: $19
	and  b                                           ; $7f7c: $a0
	dec  c                                           ; $7f7d: $0d
	inc  bc                                          ; $7f7e: $03
	ld   a, [hl]                                     ; $7f7f: $7e
	sbc  l                                           ; $7f80: $9d
	sbc  b                                           ; $7f81: $98
	adc  h                                           ; $7f82: $8c
	ld   h, a                                        ; $7f83: $67
	sbc  a                                           ; $7f84: $9f
	dec  c                                           ; $7f85: $0d
	nop                                              ; $7f86: $00
	ld   a, [bc]                                     ; $7f87: $0a
	dec  c                                           ; $7f88: $0d
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	rrca                                             ; $7f8b: $0f
	nop                                              ; $7f8c: $00
	ld   bc, $0d00                                   ; $7f8d: $01 $00 $0d
	inc  bc                                          ; $7f90: $03
	nop                                              ; $7f91: $00
	rrca                                             ; $7f92: $0f
	nop                                              ; $7f93: $00
	ld   bc, $0102                                   ; $7f94: $01 $02 $01
	ld   h, c                                        ; $7f97: $61
	and  c                                           ; $7f98: $a1
	ld   a, c                                        ; $7f99: $79
	ld   l, a                                        ; $7f9a: $6f
	ld   a, l                                        ; $7f9b: $7d
	sbc  [hl]                                        ; $7f9c: $9e
	rst  JumpTable                                         ; $7f9d: $df
	db   $ec                                         ; $7f9e: $ec
	and  e                                           ; $7f9f: $a3
	ld   h, e                                        ; $7fa0: $63
	and  c                                           ; $7fa1: $a1
	sbc  a                                           ; $7fa2: $9f
	dec  c                                           ; $7fa3: $0d
	inc  bc                                          ; $7fa4: $03
	ld   l, l                                        ; $7fa5: $6d
	dec  b                                           ; $7fa6: $05
	add  hl, de                                      ; $7fa7: $19
	and  b                                           ; $7fa8: $a0
	ld   e, b                                        ; $7fa9: $58
	ld   [bc], a                                     ; $7faa: $02
	add  b                                           ; $7fab: $80
	ld   d, d                                        ; $7fac: $52
	ld   h, l                                        ; $7fad: $65
	ld   l, l                                        ; $7fae: $6d
	ld   d, d                                        ; $7faf: $52
	ld   a, h                                        ; $7fb0: $7c
	dec  c                                           ; $7fb1: $0d
	ld   [hl], l                                     ; $7fb2: $75
	ld   h, a                                        ; $7fb3: $67
	ld   e, d                                        ; $7fb4: $5a
	rst  $38                                         ; $7fb5: $ff
	rst  $38                                         ; $7fb6: $ff
	dec  c                                           ; $7fb7: $0d
	nop                                              ; $7fb8: $00
	ld   a, [bc]                                     ; $7fb9: $0a
	rlca                                             ; $7fba: $07
	add  hl, sp                                      ; $7fbb: $39
	ld   [$4403], sp                                 ; $7fbc: $08 $03 $44
	ld   bc, $2507                                   ; $7fbf: $01 $07 $25
	nop                                              ; $7fc2: $00
	rrca                                             ; $7fc3: $0f
	inc  bc                                          ; $7fc4: $03
	nop                                              ; $7fc5: $00
	ld   bc, $5252                                   ; $7fc6: $01 $52 $52
	sbc  l                                           ; $7fc9: $9d
	sub  [hl]                                        ; $7fca: $96
	sbc  a                                           ; $7fcb: $9f
	dec  c                                           ; $7fcc: $0d
	ld   l, e                                        ; $7fcd: $6b
	sbc  d                                           ; $7fce: $9a
	ld   h, [hl]                                     ; $7fcf: $66
	sub  c                                           ; $7fd0: $91
	sbc  [hl]                                        ; $7fd1: $9e
	ld   h, e                                        ; $7fd2: $63
	ld   [hl], c                                     ; $7fd3: $71
	ld   l, e                                        ; $7fd4: $6b
	ld   e, l                                        ; $7fd5: $5d
	dec  c                                           ; $7fd6: $0d
	dec  b                                           ; $7fd7: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fd8: $cf
	adc  a                                           ; $7fd9: $8f
	adc  h                                           ; $7fda: $8c
	ld   h, l                                        ; $7fdb: $65
	sub  l                                           ; $7fdc: $95
	ld   d, h                                        ; $7fdd: $54
	sbc  a                                           ; $7fde: $9f
	dec  c                                           ; $7fdf: $0d
	nop                                              ; $7fe0: $00
	ld   a, [bc]                                     ; $7fe1: $0a
	dec  h                                           ; $7fe2: $25
	inc  bc                                          ; $7fe3: $03
	rlca                                             ; $7fe4: $07
	ld   e, b                                        ; $7fe5: $58
	inc  b                                           ; $7fe6: $04
	inc  bc                                          ; $7fe7: $03
	jr   nz, jr_048_7feb                             ; $7fe8: $20 $01

	nop                                              ; $7fea: $00

jr_048_7feb:
	jr   nz, jr_048_7fed                             ; $7feb: $20 $00

jr_048_7fed:
	inc  e                                           ; $7fed: $1c
	inc  bc                                          ; $7fee: $03
	inc  bc                                          ; $7fef: $03
	inc  bc                                          ; $7ff0: $03
	ld   bc, $a603                                   ; $7ff1: $01 $03 $a6
	dec  b                                           ; $7ff4: $05
	call nc, Call_048_6597                           ; $7ff5: $d4 $97 $65
	ld   d, d                                        ; $7ff8: $52
	inc  bc                                          ; $7ff9: $03
	ld   h, l                                        ; $7ffa: $65
	inc  bc                                          ; $7ffb: $03
	rst  $30                                         ; $7ffc: $f7
	add  h                                           ; $7ffd: $84
	sbc  b                                           ; $7ffe: $98
	ld   a, e                                        ; $7fff: $7b
