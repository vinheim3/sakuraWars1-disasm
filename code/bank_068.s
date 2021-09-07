; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $068", ROMX[$4000], BANK[$68]

	ld   d, $01                                      ; $4000: $16 $01
	ld   [bc], a                                     ; $4002: $02
	jr   z, jr_068_4005                              ; $4003: $28 $00

jr_068_4005:
	ld   bc, $716b                                   ; $4005: $01 $6b $71
	ld   e, c                                        ; $4008: $59
	sbc  [hl]                                        ; $4009: $9e
	ld   h, d                                        ; $400a: $62
	ld   e, l                                        ; $400b: $5d
	sbc  e                                           ; $400c: $9b
	ld   d, h                                        ; $400d: $54
	ld   h, e                                        ; $400e: $63
	and  c                                           ; $400f: $a1
	sbc  a                                           ; $4010: $9f
	dec  c                                           ; $4011: $0d
	ld   h, [hl]                                     ; $4012: $66
	sub  c                                           ; $4013: $91
	sbc  [hl]                                        ; $4014: $9e
	ld   d, b                                        ; $4015: $50
	ld   l, l                                        ; $4016: $6d
	ld   d, d                                        ; $4017: $52
	ld   a, l                                        ; $4018: $7d
	db   $e3                                         ; $4019: $e3
	cp   b                                           ; $401a: $b8
	ld   a, h                                        ; $401b: $7c
	inc  bc                                          ; $401c: $03
	ld   l, a                                        ; $401d: $6f
	ld   [bc], a                                     ; $401e: $02
	xor  c                                           ; $401f: $a9
	dec  c                                           ; $4020: $0d
	ld   l, [hl]                                     ; $4021: $6e
	ld   e, c                                        ; $4022: $59
	sub  a                                           ; $4023: $97
	sbc  [hl]                                        ; $4024: $9e
	adc  h                                           ; $4025: $8c
	ld   l, l                                        ; $4026: $6d
	sbc  [hl]                                        ; $4027: $9e
	ld   [bc], a                                     ; $4028: $02
	xor  d                                           ; $4029: $aa
	ld   [hl], l                                     ; $402a: $75
	ld   a, b                                        ; $402b: $78
	sbc  a                                           ; $402c: $9f
	dec  c                                           ; $402d: $0d
	nop                                              ; $402e: $00
	ld   a, [bc]                                     ; $402f: $0a
	nop                                              ; $4030: $00
	rrca                                             ; $4031: $0f
	nop                                              ; $4032: $00
	ld   bc, $ff01                                   ; $4033: $01 $01 $ff
	rst  $38                                         ; $4036: $ff
	cp   d                                           ; $4037: $ba
	rst  ToBoot                                         ; $4038: $c7
	ei                                               ; $4039: $fb
	xor  [hl]                                        ; $403a: $ae
	ld   a, c                                        ; $403b: $79
	dec  c                                           ; $403c: $0d
	ld   [bc], a                                     ; $403d: $02
	sub  l                                           ; $403e: $95
	halt                                             ; $403f: $76
	sbc  d                                           ; $4040: $9a
	ld   [hl], h                                     ; $4041: $74
	ld   d, d                                        ; $4042: $52
	adc  h                                           ; $4043: $8c
	ld   h, l                                        ; $4044: $65
	ld   l, l                                        ; $4045: $6d
	rst  $38                                         ; $4046: $ff
	rst  $38                                         ; $4047: $ff
	dec  c                                           ; $4048: $0d
	nop                                              ; $4049: $00
	ld   a, [bc]                                     ; $404a: $0a
	inc  e                                           ; $404b: $1c
	ld   b, $01                                      ; $404c: $06 $01
	ld   bc, $6b01                                   ; $404e: $01 $01 $6b
	ld   d, h                                        ; $4051: $54
	ld   l, [hl]                                     ; $4052: $6e
	sub  [hl]                                        ; $4053: $96
	ld   a, b                                        ; $4054: $78
	sbc  a                                           ; $4055: $9f
	ld   d, h                                        ; $4056: $54
	adc  h                                           ; $4057: $8c
	ld   d, d                                        ; $4058: $52
	sub  b                                           ; $4059: $90
	and  c                                           ; $405a: $a1
	ld   a, b                                        ; $405b: $78
	sbc  a                                           ; $405c: $9f
	dec  c                                           ; $405d: $0d
	ld   h, [hl]                                     ; $405e: $66
	sub  c                                           ; $405f: $91
	sbc  [hl]                                        ; $4060: $9e
	ld   d, b                                        ; $4061: $50
	ld   l, l                                        ; $4062: $6d
	ld   d, d                                        ; $4063: $52
	ld   a, l                                        ; $4064: $7d
	db   $e3                                         ; $4065: $e3
	cp   b                                           ; $4066: $b8
	ld   a, h                                        ; $4067: $7c
	inc  bc                                          ; $4068: $03
	ld   l, a                                        ; $4069: $6f
	ld   [bc], a                                     ; $406a: $02
	xor  c                                           ; $406b: $a9
	dec  c                                           ; $406c: $0d
	ld   l, [hl]                                     ; $406d: $6e
	ld   e, c                                        ; $406e: $59
	sub  a                                           ; $406f: $97
	sbc  [hl]                                        ; $4070: $9e
	adc  h                                           ; $4071: $8c
	ld   l, l                                        ; $4072: $6d
	ld   [bc], a                                     ; $4073: $02
	xor  d                                           ; $4074: $aa
	ld   [hl], l                                     ; $4075: $75
	ld   a, b                                        ; $4076: $78
	sbc  a                                           ; $4077: $9f
	dec  c                                           ; $4078: $0d
	nop                                              ; $4079: $00
	ld   a, [bc]                                     ; $407a: $0a
	nop                                              ; $407b: $00
	rrca                                             ; $407c: $0f
	nop                                              ; $407d: $00
	ld   bc, $6b01                                   ; $407e: $01 $01 $6b
	ld   a, h                                        ; $4081: $7c
	cp   d                                           ; $4082: $ba
	rst  ToBoot                                         ; $4083: $c7
	ei                                               ; $4084: $fb
	xor  [hl]                                        ; $4085: $ae
	dec  c                                           ; $4086: $0d
	inc  bc                                          ; $4087: $03
	adc  e                                           ; $4088: $8b
	ld   a, c                                        ; $4089: $79
	cp   d                                           ; $408a: $ba
	rst  ToBoot                                         ; $408b: $c7
	ei                                               ; $408c: $fb
	xor  [hl]                                        ; $408d: $ae
	ld   [hl], l                                     ; $408e: $75
	ld   h, a                                        ; $408f: $67
	ld   a, e                                        ; $4090: $7b
	sbc  a                                           ; $4091: $9f
	dec  c                                           ; $4092: $0d
	nop                                              ; $4093: $00
	ld   a, [bc]                                     ; $4094: $0a
	inc  e                                           ; $4095: $1c
	ld   b, $05                                      ; $4096: $06 $05
	dec  b                                           ; $4098: $05
	dec  e                                           ; $4099: $1d
	ld   b, b                                        ; $409a: $40
	ld   d, $03                                      ; $409b: $16 $03
	ld   d, $01                                      ; $409d: $16 $01
	ld   [bc], a                                     ; $409f: $02
	add  hl, hl                                      ; $40a0: $29
	nop                                              ; $40a1: $00
	ld   bc, $9e92                                   ; $40a2: $01 $92 $9e
	sub  d                                           ; $40a5: $92
	adc  a                                           ; $40a6: $8f
	ld   [hl], h                                     ; $40a7: $74
	ld   e, l                                        ; $40a8: $5d
	sbc  d                                           ; $40a9: $9a
	ei                                               ; $40aa: $fb
	ld   a, [$d90d]                                  ; $40ab: $fa $0d $d9
	ret  nz                                          ; $40ae: $c0

	ld   a, b                                        ; $40af: $78
	pop  bc                                          ; $40b0: $c1
	cp   c                                           ; $40b1: $b9
	push hl                                          ; $40b2: $e5
	xor  $7d                                         ; $40b3: $ee $7d
	ld   a, [$e30d]                                  ; $40b5: $fa $0d $e3
	cp   b                                           ; $40b8: $b8
	ld   e, d                                        ; $40b9: $5a
	adc  h                                           ; $40ba: $8c
	ld   l, b                                        ; $40bb: $68
	ld   e, l                                        ; $40bc: $5d
	ld   a, b                                        ; $40bd: $78
	sbc  c                                           ; $40be: $99
	ld   a, [$000d]                                  ; $40bf: $fa $0d $00
	ld   a, [bc]                                     ; $40c2: $0a
	inc  e                                           ; $40c3: $1c
	ld   b, $02                                      ; $40c4: $06 $02
	ld   [bc], a                                     ; $40c6: $02
	ld   bc, $a502                                   ; $40c7: $01 $02 $a5
	ld   e, c                                        ; $40ca: $59
	sub  a                                           ; $40cb: $97
	db   $e3                                         ; $40cc: $e3
	cp   b                                           ; $40cd: $b8
	ld   a, b                                        ; $40ce: $78
	and  c                                           ; $40cf: $a1
	ld   l, [hl]                                     ; $40d0: $6e
	ld   e, c                                        ; $40d1: $59
	sub  a                                           ; $40d2: $97
	dec  c                                           ; $40d3: $0d
	ld   d, b                                        ; $40d4: $50
	ld   [hl], c                                     ; $40d5: $71
	ld   l, a                                        ; $40d6: $6f
	add  [hl]                                        ; $40d7: $86
	ld   [bc], a                                     ; $40d8: $02
	ld   a, a                                        ; $40d9: $7f
	ld   e, a                                        ; $40da: $5f
	ld   a, [$000d]                                  ; $40db: $fa $0d $00
	ld   a, [bc]                                     ; $40de: $0a
	nop                                              ; $40df: $00
	inc  e                                           ; $40e0: $1c
	ld   b, $00                                      ; $40e1: $06 $00
	nop                                              ; $40e3: $00
	ld   bc, $6d50                                   ; $40e4: $01 $50 $6d
	ld   d, d                                        ; $40e7: $52
	ld   [bc], a                                     ; $40e8: $02
	and  l                                           ; $40e9: $a5
	ld   e, c                                        ; $40ea: $59
	sub  a                                           ; $40eb: $97
	db   $e3                                         ; $40ec: $e3
	cp   b                                           ; $40ed: $b8
	ld   l, [hl]                                     ; $40ee: $6e
	ld   e, c                                        ; $40ef: $59
	sub  a                                           ; $40f0: $97
	dec  c                                           ; $40f1: $0d
	inc  b                                           ; $40f2: $04
	ld   c, c                                        ; $40f3: $49
	ld   e, c                                        ; $40f4: $59
	ld   d, b                                        ; $40f5: $50
	sbc  c                                           ; $40f6: $99
	and  c                                           ; $40f7: $a1
	ld   l, [hl]                                     ; $40f8: $6e
	ld   [hl], c                                     ; $40f9: $71
	ld   l, l                                        ; $40fa: $6d
	sub  a                                           ; $40fb: $97
	dec  c                                           ; $40fc: $0d
	ld   [bc], a                                     ; $40fd: $02
	xor  d                                           ; $40fe: $aa
	ld   [hl], l                                     ; $40ff: $75
	ld   a, b                                        ; $4100: $78
	sbc  a                                           ; $4101: $9f
	dec  c                                           ; $4102: $0d
	nop                                              ; $4103: $00
	ld   a, [bc]                                     ; $4104: $0a
	nop                                              ; $4105: $00
	nop                                              ; $4106: $00
	inc  e                                           ; $4107: $1c
	inc  bc                                          ; $4108: $03
	nop                                              ; $4109: $00
	nop                                              ; $410a: $00
	ld   [bc], a                                     ; $410b: $02
	inc  e                                           ; $410c: $1c
	inc  bc                                          ; $410d: $03
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00
	ld   bc, $9e50                                   ; $4110: $01 $50 $9e
	ld   [$5d00], sp                                 ; $4113: $08 $00 $5d
	and  c                                           ; $4116: $a1
	sbc  a                                           ; $4117: $9f
	dec  c                                           ; $4118: $0d
	ld   l, a                                        ; $4119: $6f
	sub  l                                           ; $411a: $95
	ld   d, h                                        ; $411b: $54
	ld   [hl], a                                     ; $411c: $77
	sub  [hl]                                        ; $411d: $96
	ld   e, c                                        ; $411e: $59
	ld   [hl], c                                     ; $411f: $71
	ld   l, l                                        ; $4120: $6d
	sbc  l                                           ; $4121: $9d
	rst  $38                                         ; $4122: $ff
	rst  $38                                         ; $4123: $ff
	dec  c                                           ; $4124: $0d
	nop                                              ; $4125: $00
	ld   a, [bc]                                     ; $4126: $0a
	ld   bc, $2202                                   ; $4127: $01 $02 $22
	sub  b                                           ; $412a: $90
	sbc  b                                           ; $412b: $98
	ld   a, h                                        ; $412c: $7c
	inc  bc                                          ; $412d: $03
	ld   a, e                                        ; $412e: $7b
	dec  b                                           ; $412f: $05
	ld   de, $03a0                                   ; $4130: $11 $a0 $03
	ld   l, e                                        ; $4133: $6b
	inc  b                                           ; $4134: $04
	ld   [de], a                                     ; $4135: $12
	ld   [hl], c                                     ; $4136: $71
	ld   [hl], h                                     ; $4137: $74
	dec  c                                           ; $4138: $0d
	adc  c                                           ; $4139: $89
	ld   h, l                                        ; $413a: $65
	ld   d, d                                        ; $413b: $52
	ld   a, h                                        ; $413c: $7c
	sub  [hl]                                        ; $413d: $96
	sbc  a                                           ; $413e: $9f
	dec  c                                           ; $413f: $0d
	nop                                              ; $4140: $00
	ld   a, [bc]                                     ; $4141: $0a
	ld   bc, $7152                                   ; $4142: $01 $52 $71
	ld   h, l                                        ; $4145: $65
	sub  l                                           ; $4146: $95
	ld   a, c                                        ; $4147: $79
	ld   [bc], a                                     ; $4148: $02
	ld   hl, $5d02                                   ; $4149: $21 $02 $5d
	dec  b                                           ; $414c: $05
	ld   h, l                                        ; $414d: $65
	inc  b                                           ; $414e: $04
	sub  l                                           ; $414f: $95
	ld   [bc], a                                     ; $4150: $02
	ld   hl, $758c                                   ; $4151: $21 $8c $75
	dec  c                                           ; $4154: $0d
	dec  b                                           ; $4155: $05
	db   $10                                         ; $4156: $10
	ld   [hl], h                                     ; $4157: $74
	ld   l, a                                        ; $4158: $6f
	sub  l                                           ; $4159: $95
	ld   d, h                                        ; $415a: $54
	ld   l, [hl]                                     ; $415b: $6e
	ld   d, d                                        ; $415c: $52
	sbc  a                                           ; $415d: $9f
	dec  c                                           ; $415e: $0d
	nop                                              ; $415f: $00
	ld   a, [bc]                                     ; $4160: $0a
	dec  c                                           ; $4161: $0d
	nop                                              ; $4162: $00
	nop                                              ; $4163: $00
	rrca                                             ; $4164: $0f
	nop                                              ; $4165: $00
	ld   bc, $0323                                   ; $4166: $01 $23 $03
	rrca                                             ; $4169: $0f
	nop                                              ; $416a: $00
	ld   bc, $5401                                   ; $416b: $01 $01 $54
	sbc  l                                           ; $416e: $9d
	ld   [hl], c                                     ; $416f: $71
	ld   a, [$030d]                                  ; $4170: $fa $0d $03
	xor  l                                           ; $4173: $ad
	ld   [hl], c                                     ; $4174: $71
	ld   [bc], a                                     ; $4175: $02
	ld   sp, $9166                                   ; $4176: $31 $66 $91
	ld   a, b                                        ; $4179: $78
	ld   d, d                                        ; $417a: $52
	ld   [hl], l                                     ; $417b: $75
	ld   h, a                                        ; $417c: $67
	ld   e, c                                        ; $417d: $59
	sbc  a                                           ; $417e: $9f
	dec  c                                           ; $417f: $0d
	nop                                              ; $4180: $00
	ld   a, [bc]                                     ; $4181: $0a
	rrca                                             ; $4182: $0f
	inc  bc                                          ; $4183: $03
	inc  b                                           ; $4184: $04
	ld   bc, $546b                                   ; $4185: $01 $6b $54
	ld   a, b                                        ; $4188: $78
	ld   a, h                                        ; $4189: $7c
	sub  [hl]                                        ; $418a: $96
	sbc  a                                           ; $418b: $9f
	dec  c                                           ; $418c: $0d
	inc  bc                                          ; $418d: $03
	db   $e4                                         ; $418e: $e4
	dec  b                                           ; $418f: $05
	ld   [hl], l                                     ; $4190: $75
	ld   e, d                                        ; $4191: $5a
	inc  bc                                          ; $4192: $03
	dec  de                                          ; $4193: $1b
	sbc  d                                           ; $4194: $9a
	ld   [hl], h                                     ; $4195: $74
	inc  bc                                          ; $4196: $03
	xor  l                                           ; $4197: $ad
	ld   [hl], c                                     ; $4198: $71
	ld   [bc], a                                     ; $4199: $02
	ld   sp, $7c78                                   ; $419a: $31 $78 $7c
	sub  [hl]                                        ; $419d: $96
	sbc  a                                           ; $419e: $9f
	dec  c                                           ; $419f: $0d
	nop                                              ; $41a0: $00
	ld   a, [bc]                                     ; $41a1: $0a
	rrca                                             ; $41a2: $0f
	inc  bc                                          ; $41a3: $03
	nop                                              ; $41a4: $00
	ld   bc, $9075                                   ; $41a5: $01 $75 $90
	sbc  [hl]                                        ; $41a8: $9e
	inc  b                                           ; $41a9: $04
	ld   a, d                                        ; $41aa: $7a
	inc  bc                                          ; $41ab: $03
	ld   c, e                                        ; $41ac: $4b
	ld   a, l                                        ; $41ad: $7d
	inc  bc                                          ; $41ae: $03
	ret  z                                           ; $41af: $c8

	ld   e, d                                        ; $41b0: $5a
	inc  bc                                          ; $41b1: $03
	ld   a, [hl+]                                    ; $41b2: $2a
	inc  bc                                          ; $41b3: $03
	add  hl, hl                                      ; $41b4: $29
	ld   h, a                                        ; $41b5: $67
	sbc  c                                           ; $41b6: $99
	ld   e, c                                        ; $41b7: $59
	sub  a                                           ; $41b8: $97
	dec  c                                           ; $41b9: $0d
	inc  bc                                          ; $41ba: $03
	ld   [hl], l                                     ; $41bb: $75
	inc  b                                           ; $41bc: $04
	xor  e                                           ; $41bd: $ab
	ld   h, l                                        ; $41be: $65
	ld   a, b                                        ; $41bf: $78
	ld   d, d                                        ; $41c0: $52
	ld   [hl], l                                     ; $41c1: $75
	sbc  a                                           ; $41c2: $9f
	dec  c                                           ; $41c3: $0d
	ld   h, e                                        ; $41c4: $63
	sbc  [hl]                                        ; $41c5: $9e
	dec  b                                           ; $41c6: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41c7: $cf
	adc  a                                           ; $41c8: $8f
	sbc  c                                           ; $41c9: $99
	sbc  l                                           ; $41ca: $9d
	sub  [hl]                                        ; $41cb: $96
	sbc  a                                           ; $41cc: $9f
	dec  c                                           ; $41cd: $0d
	nop                                              ; $41ce: $00
	ld   a, [bc]                                     ; $41cf: $0a
	rrca                                             ; $41d0: $0f
	inc  bc                                          ; $41d1: $03
	nop                                              ; $41d2: $00
	ld   bc, $688c                                   ; $41d3: $01 $8c $68
	ld   a, [bc]                                     ; $41d6: $0a
	ld   [bc], a                                     ; $41d7: $02
	inc  bc                                          ; $41d8: $03
	ld   c, a                                        ; $41d9: $4f
	add  [hl]                                        ; $41da: $86
	ld   [de], a                                     ; $41db: $12
	ld   de, $9f04                                   ; $41dc: $11 $04 $9f
	ld   a, [bc]                                     ; $41df: $0a
	inc  bc                                          ; $41e0: $03
	sbc  a                                           ; $41e1: $9f
	dec  c                                           ; $41e2: $0d
	nop                                              ; $41e3: $00
	ld   a, [bc]                                     ; $41e4: $0a
	rrca                                             ; $41e5: $0f
	nop                                              ; $41e6: $00
	ld   bc, $0301                                   ; $41e7: $01 $01 $03
	ld   c, a                                        ; $41ea: $4f
	ld   a, c                                        ; $41eb: $79
	ld   [de], a                                     ; $41ec: $12
	ld   de, $9f04                                   ; $41ed: $11 $04 $9f
	rst  $38                                         ; $41f0: $ff
	rst  $38                                         ; $41f1: $ff
	halt                                             ; $41f2: $76
	sbc  a                                           ; $41f3: $9f
	dec  c                                           ; $41f4: $0d
	dec  b                                           ; $41f5: $05
	ld   l, d                                        ; $41f6: $6a
	inc  b                                           ; $41f7: $04
	dec  de                                          ; $41f8: $1b
	ld   h, l                                        ; $41f9: $65
	adc  h                                           ; $41fa: $8c
	ld   h, l                                        ; $41fb: $65
	ld   l, l                                        ; $41fc: $6d
	sbc  a                                           ; $41fd: $9f
	dec  c                                           ; $41fe: $0d
	nop                                              ; $41ff: $00
	ld   a, [bc]                                     ; $4200: $0a
	rrca                                             ; $4201: $0f
	inc  bc                                          ; $4202: $03
	nop                                              ; $4203: $00
	ld   bc, $6803                                   ; $4204: $01 $03 $68
	ld   a, l                                        ; $4207: $7d
	ld   a, [bc]                                     ; $4208: $0a
	ld   [bc], a                                     ; $4209: $02
	inc  bc                                          ; $420a: $03
	ld   h, b                                        ; $420b: $60
	ld   a, c                                        ; $420c: $79
	jr   jr_068_4213                                 ; $420d: $18 $04

	sbc  a                                           ; $420f: $9f
	ld   a, [bc]                                     ; $4210: $0a
	inc  bc                                          ; $4211: $03
	sbc  a                                           ; $4212: $9f

jr_068_4213:
	dec  c                                           ; $4213: $0d
	nop                                              ; $4214: $00
	ld   a, [bc]                                     ; $4215: $0a
	rrca                                             ; $4216: $0f
	nop                                              ; $4217: $00
	ld   bc, $0301                                   ; $4218: $01 $01 $03
	ld   h, b                                        ; $421b: $60
	ld   a, c                                        ; $421c: $79
	jr   jr_068_4223                                 ; $421d: $18 $04

	sbc  a                                           ; $421f: $9f
	rst  $38                                         ; $4220: $ff
	rst  $38                                         ; $4221: $ff
	halt                                             ; $4222: $76

jr_068_4223:
	sbc  a                                           ; $4223: $9f
	dec  c                                           ; $4224: $0d
	dec  b                                           ; $4225: $05
	ld   l, d                                        ; $4226: $6a
	inc  b                                           ; $4227: $04
	dec  de                                          ; $4228: $1b
	ld   h, l                                        ; $4229: $65
	adc  h                                           ; $422a: $8c
	ld   h, l                                        ; $422b: $65
	ld   l, l                                        ; $422c: $6d
	sbc  a                                           ; $422d: $9f
	dec  c                                           ; $422e: $0d
	nop                                              ; $422f: $00
	ld   a, [bc]                                     ; $4230: $0a
	rrca                                             ; $4231: $0f
	inc  bc                                          ; $4232: $03
	nop                                              ; $4233: $00
	ld   bc, $6903                                   ; $4234: $01 $03 $69
	ld   [bc], a                                     ; $4237: $02
	xor  d                                           ; $4238: $aa
	ld   a, c                                        ; $4239: $79
	ld   a, [bc]                                     ; $423a: $0a
	ld   [bc], a                                     ; $423b: $02
	inc  bc                                          ; $423c: $03
	ld   c, a                                        ; $423d: $4f
	add  [hl]                                        ; $423e: $86
	inc  d                                           ; $423f: $14
	inc  b                                           ; $4240: $04
	sbc  a                                           ; $4241: $9f
	sub  [hl]                                        ; $4242: $96
	ld   a, [bc]                                     ; $4243: $0a
	inc  bc                                          ; $4244: $03
	sbc  a                                           ; $4245: $9f
	dec  c                                           ; $4246: $0d
	nop                                              ; $4247: $00
	ld   a, [bc]                                     ; $4248: $0a
	rrca                                             ; $4249: $0f
	nop                                              ; $424a: $00
	ld   bc, $0301                                   ; $424b: $01 $01 $03
	ld   c, a                                        ; $424e: $4f
	ld   a, c                                        ; $424f: $79
	inc  d                                           ; $4250: $14
	inc  b                                           ; $4251: $04
	sbc  a                                           ; $4252: $9f
	rst  $38                                         ; $4253: $ff
	rst  $38                                         ; $4254: $ff
	halt                                             ; $4255: $76
	sbc  a                                           ; $4256: $9f
	dec  c                                           ; $4257: $0d
	ld   h, c                                        ; $4258: $61
	ld   h, c                                        ; $4259: $61
	ld   [hl], l                                     ; $425a: $75
	ld   h, a                                        ; $425b: $67
	ld   e, c                                        ; $425c: $59
	ld   sp, hl                                      ; $425d: $f9
	dec  c                                           ; $425e: $0d
	nop                                              ; $425f: $00
	ld   a, [bc]                                     ; $4260: $0a
	rrca                                             ; $4261: $0f
	inc  bc                                          ; $4262: $03
	nop                                              ; $4263: $00
	ld   bc, $546b                                   ; $4264: $01 $6b $54
	sub  [hl]                                        ; $4267: $96
	sbc  a                                           ; $4268: $9f
	dec  c                                           ; $4269: $0d
	nop                                              ; $426a: $00
	ld   a, [bc]                                     ; $426b: $0a
	rrca                                             ; $426c: $0f
	nop                                              ; $426d: $00
	ld   bc, $9601                                   ; $426e: $01 $01 $96
	ld   [hl], c                                     ; $4271: $71
	ld   h, c                                        ; $4272: $61
	sub  a                                           ; $4273: $97
	ld   l, c                                        ; $4274: $69
	rst  $38                                         ; $4275: $ff
	rst  $38                                         ; $4276: $ff
	halt                                             ; $4277: $76
	sbc  a                                           ; $4278: $9f
	dec  c                                           ; $4279: $0d
	nop                                              ; $427a: $00
	ld   a, [bc]                                     ; $427b: $0a
	ld   bc, $da03                                   ; $427c: $01 $03 $da
	ld   h, l                                        ; $427f: $65
	adc  h                                           ; $4280: $8c
	ld   h, l                                        ; $4281: $65
	ld   l, l                                        ; $4282: $6d
	sub  [hl]                                        ; $4283: $96
	sbc  a                                           ; $4284: $9f
	dec  c                                           ; $4285: $0d
	nop                                              ; $4286: $00
	ld   a, [bc]                                     ; $4287: $0a
	rrca                                             ; $4288: $0f
	dec  c                                           ; $4289: $0d
	inc  b                                           ; $428a: $04
	ld   bc, $ecdf                                   ; $428b: $01 $df $ec
	and  e                                           ; $428e: $a3
	ld   h, e                                        ; $428f: $63
	ei                                               ; $4290: $fb
	and  c                                           ; $4291: $a1
	ld   a, [$030d]                                  ; $4292: $fa $0d $03
	add  l                                           ; $4295: $85
	inc  b                                           ; $4296: $04
	xor  e                                           ; $4297: $ab
	inc  bc                                          ; $4298: $03
	add  d                                           ; $4299: $82
	ld   e, d                                        ; $429a: $5a
	ld   e, b                                        ; $429b: $58
	ld   [bc], a                                     ; $429c: $02
	ld   a, b                                        ; $429d: $78
	add  c                                           ; $429e: $81
	ld   [hl], l                                     ; $429f: $75
	ld   h, a                                        ; $42a0: $67
	ld   a, [$040d]                                  ; $42a1: $fa $0d $04
	ld   c, $05                                      ; $42a4: $0e $05
	cp   d                                           ; $42a6: $ba
	dec  b                                           ; $42a7: $05
	jr   z, jr_068_4318                              ; $42a8: $28 $6e

	ld   l, e                                        ; $42aa: $6b
	ld   d, h                                        ; $42ab: $54
	ld   [hl], l                                     ; $42ac: $75
	ld   h, a                                        ; $42ad: $67
	ld   a, [$000d]                                  ; $42ae: $fa $0d $00
	ld   a, [bc]                                     ; $42b1: $0a
	rrca                                             ; $42b2: $0f
	inc  bc                                          ; $42b3: $03
	nop                                              ; $42b4: $00
	ld   bc, $a502                                   ; $42b5: $01 $02 $a5
	sbc  [hl]                                        ; $42b8: $9e
	ld   [bc], a                                     ; $42b9: $02
	ld   a, a                                        ; $42ba: $7f
	ld   e, l                                        ; $42bb: $5d
	sbc  l                                           ; $42bc: $9d
	sbc  a                                           ; $42bd: $9f
	dec  c                                           ; $42be: $0d
	nop                                              ; $42bf: $00
	ld   a, [bc]                                     ; $42c0: $0a
	ld   bc, $9166                                   ; $42c1: $01 $66 $91
	sbc  [hl]                                        ; $42c4: $9e
	ld   [$5d00], sp                                 ; $42c5: $08 $00 $5d
	and  c                                           ; $42c8: $a1
	sbc  a                                           ; $42c9: $9f
	dec  c                                           ; $42ca: $0d
	sub  b                                           ; $42cb: $90
	ld   [hl], a                                     ; $42cc: $77
	ld   [hl], c                                     ; $42cd: $71
	ld   [hl], h                                     ; $42ce: $74
	ld   e, l                                        ; $42cf: $5d
	sbc  c                                           ; $42d0: $99
	inc  bc                                          ; $42d1: $03
	ld   l, a                                        ; $42d2: $6f
	ld   a, l                                        ; $42d3: $7d
	inc  b                                           ; $42d4: $04
	ld   d, $02                                      ; $42d5: $16 $02
	ld   a, [$0da0]                                  ; $42d7: $fa $a0 $0d
	adc  h                                           ; $42da: $8c
	ld   l, a                                        ; $42db: $6f
	ld   e, d                                        ; $42dc: $5a
	ld   d, [hl]                                     ; $42dd: $56
	ld   a, b                                        ; $42de: $78
	ld   d, d                                        ; $42df: $52
	ld   [hl], l                                     ; $42e0: $75
	ld   a, e                                        ; $42e1: $7b
	sbc  a                                           ; $42e2: $9f
	dec  c                                           ; $42e3: $0d
	nop                                              ; $42e4: $00
	ld   a, [bc]                                     ; $42e5: $0a
	ld   bc, $7c6b                                   ; $42e6: $01 $6b $7c
	inc  b                                           ; $42e9: $04
	ld   d, $02                                      ; $42ea: $16 $02
	dec  bc                                          ; $42ec: $0b
	ld   [bc], a                                     ; $42ed: $02
	bit  7, l                                        ; $42ee: $cb $7d
	dec  c                                           ; $42f0: $0d
	sub  h                                           ; $42f1: $94
	ld   e, c                                        ; $42f2: $59
	ld   e, d                                        ; $42f3: $5a
	ld   e, l                                        ; $42f4: $5d
	ld   h, e                                        ; $42f5: $63
	ld   [hl], c                                     ; $42f6: $71
	ld   [hl], h                                     ; $42f7: $74
	sbc  c                                           ; $42f8: $99
	ld   e, c                                        ; $42f9: $59
	sub  a                                           ; $42fa: $97
	dec  c                                           ; $42fb: $0d
	ld   d, b                                        ; $42fc: $50
	add  h                                           ; $42fd: $84
	ld   a, b                                        ; $42fe: $78
	ld   d, d                                        ; $42ff: $52
	sbc  l                                           ; $4300: $9d
	sub  [hl]                                        ; $4301: $96
	sbc  a                                           ; $4302: $9f
	dec  c                                           ; $4303: $0d
	nop                                              ; $4304: $00
	ld   a, [bc]                                     ; $4305: $0a
	ld   bc, $9a6b                                   ; $4306: $01 $6b $9a
	ld   h, [hl]                                     ; $4309: $66
	sub  c                                           ; $430a: $91
	sbc  a                                           ; $430b: $9f
	dec  c                                           ; $430c: $0d
	nop                                              ; $430d: $00
	ld   a, [bc]                                     ; $430e: $0a
	rrca                                             ; $430f: $0f
	nop                                              ; $4310: $00
	ld   bc, $5601                                   ; $4311: $01 $01 $56
	ld   [hl], c                                     ; $4314: $71
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $4315: $fa $10 $0d

jr_068_4318:
	ld   l, e                                        ; $4318: $6b
	sbc  [hl]                                        ; $4319: $9e
	ld   l, e                                        ; $431a: $6b
	sbc  d                                           ; $431b: $9a
	ld   h, [hl]                                     ; $431c: $66
	sub  c                                           ; $431d: $91
	ld   [hl], c                                     ; $431e: $71
	ld   [hl], h                                     ; $431f: $74
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	dec  c                                           ; $4322: $0d
	ld   [bc], a                                     ; $4323: $02
	ld   a, a                                        ; $4324: $7f
	ld   [hl], c                                     ; $4325: $71
	ld   l, a                                        ; $4326: $6f
	sub  c                                           ; $4327: $91
	ld   [hl], c                                     ; $4328: $71
	ld   l, l                                        ; $4329: $6d
	sub  [hl]                                        ; $432a: $96
	rst  $38                                         ; $432b: $ff
	rst  $38                                         ; $432c: $ff
	dec  c                                           ; $432d: $0d
	nop                                              ; $432e: $00
	ld   a, [bc]                                     ; $432f: $0a
	rrca                                             ; $4330: $0f
	nop                                              ; $4331: $00
	ld   bc, $5601                                   ; $4332: $01 $01 $56
	rst  $38                                         ; $4335: $ff
	rst  $38                                         ; $4336: $ff
	halt                                             ; $4337: $76
	sbc  [hl]                                        ; $4338: $9e
	adc  h                                           ; $4339: $8c
	ld   l, b                                        ; $433a: $68
	ld   a, l                                        ; $433b: $7d
	dec  c                                           ; $433c: $0d
	adc  h                                           ; $433d: $8c
	sbc  l                                           ; $433e: $9d
	sbc  d                                           ; $433f: $9a
	ld   [bc], a                                     ; $4340: $02
	inc  e                                           ; $4341: $1c
	and  b                                           ; $4342: $a0
	ld   h, l                                        ; $4343: $65
	ld   [hl], h                                     ; $4344: $74
	rst  $38                                         ; $4345: $ff
	rst  $38                                         ; $4346: $ff
	dec  c                                           ; $4347: $0d
	nop                                              ; $4348: $00
	ld   a, [bc]                                     ; $4349: $0a
	add  hl, de                                      ; $434a: $19
	dec  b                                           ; $434b: $05
	inc  bc                                          ; $434c: $03
	inc  bc                                          ; $434d: $03
	ld   c, a                                        ; $434e: $4f
	add  [hl]                                        ; $434f: $86
	inc  d                                           ; $4350: $14
	inc  b                                           ; $4351: $04
	sbc  a                                           ; $4352: $9f
	nop                                              ; $4353: $00
	nop                                              ; $4354: $00
	inc  bc                                          ; $4355: $03
	ld   c, a                                        ; $4356: $4f
	add  [hl]                                        ; $4357: $86
	dec  d                                           ; $4358: $15
	inc  b                                           ; $4359: $04
	sbc  a                                           ; $435a: $9f
	nop                                              ; $435b: $00
	ld   bc, $4f03                                   ; $435c: $01 $03 $4f
	add  [hl]                                        ; $435f: $86
	ld   d, $04                                      ; $4360: $16 $04
	sbc  a                                           ; $4362: $9f
	nop                                              ; $4363: $00
	ld   [bc], a                                     ; $4364: $02
	rlca                                             ; $4365: $07
	sub  c                                           ; $4366: $91
	ld   [bc], a                                     ; $4367: $02
	ld   [bc], a                                     ; $4368: $02
	inc  bc                                          ; $4369: $03
	ld   bc, $2000                                   ; $436a: $01 $00 $20
	nop                                              ; $436d: $00
	rlca                                             ; $436e: $07
	cp   h                                           ; $436f: $bc
	ld   [bc], a                                     ; $4370: $02
	ld   [bc], a                                     ; $4371: $02
	inc  bc                                          ; $4372: $03
	ld   bc, $2001                                   ; $4373: $01 $01 $20
	nop                                              ; $4376: $00
	rlca                                             ; $4377: $07
	db   $ed                                         ; $4378: $ed
	ld   [bc], a                                     ; $4379: $02
	ld   [bc], a                                     ; $437a: $02
	inc  bc                                          ; $437b: $03
	ld   bc, $2002                                   ; $437c: $01 $02 $20
	nop                                              ; $437f: $00
	ld   b, $7c                                      ; $4380: $06 $7c
	ld   [bc], a                                     ; $4382: $02
	rrca                                             ; $4383: $0f
	nop                                              ; $4384: $00
	ld   bc, $0301                                   ; $4385: $01 $01 $03
	ld   c, a                                        ; $4388: $4f
	add  [hl]                                        ; $4389: $86
	dec  b                                           ; $438a: $05
	db   $dd                                         ; $438b: $dd
	adc  h                                           ; $438c: $8c
	ld   a, b                                        ; $438d: $78
	ld   e, e                                        ; $438e: $5b
	sub  c                                           ; $438f: $91
	rst  $38                                         ; $4390: $ff
	rst  $38                                         ; $4391: $ff
	dec  c                                           ; $4392: $0d
	nop                                              ; $4393: $00
	ld   a, [bc]                                     ; $4394: $0a
	ld   b, $43                                      ; $4395: $06 $43
	ld   [bc], a                                     ; $4397: $02
	rrca                                             ; $4398: $0f
	nop                                              ; $4399: $00
	ld   bc, $0301                                   ; $439a: $01 $01 $03
	ld   c, a                                        ; $439d: $4f
	add  [hl]                                        ; $439e: $86
	inc  d                                           ; $439f: $14
	inc  b                                           ; $43a0: $04
	sbc  a                                           ; $43a1: $9f
	rst  $38                                         ; $43a2: $ff
	halt                                             ; $43a3: $76
	sbc  a                                           ; $43a4: $9f
	dec  c                                           ; $43a5: $0d
	nop                                              ; $43a6: $00
	ld   a, [bc]                                     ; $43a7: $0a
	dec  b                                           ; $43a8: $05
	ld   b, b                                        ; $43a9: $40
	rst  $38                                         ; $43aa: $ff
	inc  bc                                          ; $43ab: $03
	rst  $38                                         ; $43ac: $ff
	ld   bc, $2801                                   ; $43ad: $01 $01 $28
	nop                                              ; $43b0: $00
	ld   bc, $6596                                   ; $43b1: $01 $96 $65
	sbc  [hl]                                        ; $43b4: $9e
	ld   l, [hl]                                     ; $43b5: $6e
	ld   d, d                                        ; $43b6: $52
	ld   h, [hl]                                     ; $43b7: $66
	sub  l                                           ; $43b8: $95
	ld   d, h                                        ; $43b9: $54
	add  h                                           ; $43ba: $84
	ld   l, [hl]                                     ; $43bb: $6e
	sbc  a                                           ; $43bc: $9f
	dec  c                                           ; $43bd: $0d
	nop                                              ; $43be: $00
	ld   a, [bc]                                     ; $43bf: $0a
	ld   b, $1e                                      ; $43c0: $06 $1e
	inc  bc                                          ; $43c2: $03
	rrca                                             ; $43c3: $0f
	nop                                              ; $43c4: $00
	ld   bc, $0301                                   ; $43c5: $01 $01 $03
	ld   c, a                                        ; $43c8: $4f
	add  [hl]                                        ; $43c9: $86
	dec  d                                           ; $43ca: $15
	inc  b                                           ; $43cb: $04
	sbc  a                                           ; $43cc: $9f
	rst  $38                                         ; $43cd: $ff
	halt                                             ; $43ce: $76
	sbc  a                                           ; $43cf: $9f
	dec  c                                           ; $43d0: $0d
	nop                                              ; $43d1: $00
	ld   a, [bc]                                     ; $43d2: $0a
	inc  c                                           ; $43d3: $0c
	inc  bc                                          ; $43d4: $03
	ld   bc, $9d54                                   ; $43d5: $01 $54 $9d
	ld   [hl], c                                     ; $43d8: $71
	ld   a, [$120d]                                  ; $43d9: $fa $0d $12
	inc  b                                           ; $43dc: $04
	sbc  a                                           ; $43dd: $9f
	inc  b                                           ; $43de: $04
	rrca                                             ; $43df: $0f
	ld   e, c                                        ; $43e0: $59
	ld   [hl], c                                     ; $43e1: $71
	ld   l, l                                        ; $43e2: $6d
	rst  $38                                         ; $43e3: $ff
	rst  $38                                         ; $43e4: $ff
	dec  c                                           ; $43e5: $0d
	nop                                              ; $43e6: $00
	ld   a, [bc]                                     ; $43e7: $0a
	ld   sp, $2040                                   ; $43e8: $31 $40 $20
	inc  bc                                          ; $43eb: $03
	jr   nz, jr_068_43ef                             ; $43ec: $20 $01

	ld   a, [bc]                                     ; $43ee: $0a

jr_068_43ef:
	add  hl, hl                                      ; $43ef: $29
	nop                                              ; $43f0: $00
	ld   b, $1e                                      ; $43f1: $06 $1e
	inc  bc                                          ; $43f3: $03
	rrca                                             ; $43f4: $0f
	nop                                              ; $43f5: $00
	ld   bc, $0301                                   ; $43f6: $01 $01 $03
	ld   c, a                                        ; $43f9: $4f
	add  [hl]                                        ; $43fa: $86
	ld   d, $04                                      ; $43fb: $16 $04
	sbc  a                                           ; $43fd: $9f
	rst  $38                                         ; $43fe: $ff
	halt                                             ; $43ff: $76
	sbc  a                                           ; $4400: $9f
	dec  c                                           ; $4401: $0d
	nop                                              ; $4402: $00
	ld   a, [bc]                                     ; $4403: $0a
	inc  c                                           ; $4404: $0c
	inc  bc                                          ; $4405: $03
	ld   bc, $9d54                                   ; $4406: $01 $54 $9d
	ld   [hl], c                                     ; $4409: $71
	ld   a, [$130d]                                  ; $440a: $fa $0d $13
	inc  b                                           ; $440d: $04
	sbc  a                                           ; $440e: $9f
	inc  b                                           ; $440f: $04
	rrca                                             ; $4410: $0f
	ld   e, c                                        ; $4411: $59
	ld   [hl], c                                     ; $4412: $71
	ld   l, l                                        ; $4413: $6d
	rst  $38                                         ; $4414: $ff
	rst  $38                                         ; $4415: $ff
	dec  c                                           ; $4416: $0d
	nop                                              ; $4417: $00
	ld   a, [bc]                                     ; $4418: $0a
	ld   sp, $2040                                   ; $4419: $31 $40 $20
	inc  bc                                          ; $441c: $03
	jr   nz, jr_068_4420                             ; $441d: $20 $01

	ld   a, [bc]                                     ; $441f: $0a

jr_068_4420:
	add  hl, hl                                      ; $4420: $29
	nop                                              ; $4421: $00
	ld   b, $1e                                      ; $4422: $06 $1e
	inc  bc                                          ; $4424: $03
	ld   bc, $7463                                   ; $4425: $01 $63 $74
	inc  bc                                          ; $4428: $03
	ld   l, b                                        ; $4429: $68
	ld   a, l                                        ; $442a: $7d
	rst  $38                                         ; $442b: $ff
	rst  $38                                         ; $442c: $ff
	dec  c                                           ; $442d: $0d
	nop                                              ; $442e: $00
	ld   a, [bc]                                     ; $442f: $0a
	add  hl, de                                      ; $4430: $19
	dec  b                                           ; $4431: $05
	ld   [bc], a                                     ; $4432: $02
	inc  bc                                          ; $4433: $03
	ld   h, b                                        ; $4434: $60
	add  [hl]                                        ; $4435: $86
	jr   jr_068_443c                                 ; $4436: $18 $04

	sbc  a                                           ; $4438: $9f
	nop                                              ; $4439: $00
	nop                                              ; $443a: $00
	ld   [bc], a                                     ; $443b: $02

jr_068_443c:
	inc  e                                           ; $443c: $1c
	add  [hl]                                        ; $443d: $86
	jr   @+$06                                       ; $443e: $18 $04

	sbc  a                                           ; $4440: $9f
	nop                                              ; $4441: $00
	ld   bc, $6707                                   ; $4442: $01 $07 $67
	inc  bc                                          ; $4445: $03
	ld   [bc], a                                     ; $4446: $02
	inc  bc                                          ; $4447: $03
	ld   bc, $2000                                   ; $4448: $01 $00 $20
	nop                                              ; $444b: $00
	rlca                                             ; $444c: $07
	sub  d                                           ; $444d: $92
	inc  bc                                          ; $444e: $03
	ld   [bc], a                                     ; $444f: $02
	inc  bc                                          ; $4450: $03
	ld   bc, $2001                                   ; $4451: $01 $01 $20
	nop                                              ; $4454: $00
	ld   b, $51                                      ; $4455: $06 $51
	inc  bc                                          ; $4457: $03
	rrca                                             ; $4458: $0f
	nop                                              ; $4459: $00
	ld   bc, $7701                                   ; $445a: $01 $01 $77
	ld   [hl], c                                     ; $445d: $71
	ld   l, a                                        ; $445e: $6f
	ld   e, c                                        ; $445f: $59
	ld   [bc], a                                     ; $4460: $02
	ld   a, a                                        ; $4461: $7f
	ld   e, c                                        ; $4462: $59
	ld   a, b                                        ; $4463: $78
	ld   e, e                                        ; $4464: $5b
	sub  c                                           ; $4465: $91
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	dec  c                                           ; $4468: $0d
	nop                                              ; $4469: $00
	ld   a, [bc]                                     ; $446a: $0a
	ld   b, $29                                      ; $446b: $06 $29
	inc  bc                                          ; $446d: $03
	rrca                                             ; $446e: $0f
	nop                                              ; $446f: $00
	ld   bc, $0301                                   ; $4470: $01 $01 $03
	ld   h, b                                        ; $4473: $60
	add  [hl]                                        ; $4474: $86
	jr   jr_068_447b                                 ; $4475: $18 $04

	sbc  a                                           ; $4477: $9f
	rst  $38                                         ; $4478: $ff
	halt                                             ; $4479: $76
	sbc  a                                           ; $447a: $9f

jr_068_447b:
	dec  c                                           ; $447b: $0d
	nop                                              ; $447c: $00
	ld   a, [bc]                                     ; $447d: $0a
	ld   bc, $6596                                   ; $447e: $01 $96 $65
	sbc  [hl]                                        ; $4481: $9e
	ld   l, [hl]                                     ; $4482: $6e
	ld   d, d                                        ; $4483: $52
	ld   h, [hl]                                     ; $4484: $66
	sub  l                                           ; $4485: $95
	ld   d, h                                        ; $4486: $54
	add  h                                           ; $4487: $84
	ld   l, [hl]                                     ; $4488: $6e
	sbc  a                                           ; $4489: $9f
	dec  c                                           ; $448a: $0d
	nop                                              ; $448b: $00
	ld   a, [bc]                                     ; $448c: $0a
	dec  b                                           ; $448d: $05
	ld   b, b                                        ; $448e: $40
	rst  $38                                         ; $448f: $ff
	inc  bc                                          ; $4490: $03
	rst  $38                                         ; $4491: $ff
	ld   bc, $2801                                   ; $4492: $01 $01 $28
	nop                                              ; $4495: $00
	ld   b, $c0                                      ; $4496: $06 $c0
	inc  bc                                          ; $4498: $03
	rrca                                             ; $4499: $0f
	nop                                              ; $449a: $00
	ld   bc, $0201                                   ; $449b: $01 $01 $02
	inc  e                                           ; $449e: $1c
	add  [hl]                                        ; $449f: $86
	jr   jr_068_44a6                                 ; $44a0: $18 $04

	sbc  a                                           ; $44a2: $9f
	rst  $38                                         ; $44a3: $ff
	halt                                             ; $44a4: $76
	sbc  a                                           ; $44a5: $9f

jr_068_44a6:
	dec  c                                           ; $44a6: $0d
	nop                                              ; $44a7: $00
	ld   a, [bc]                                     ; $44a8: $0a
	inc  c                                           ; $44a9: $0c
	inc  bc                                          ; $44aa: $03
	ld   bc, $9d54                                   ; $44ab: $01 $54 $9d
	ld   [hl], c                                     ; $44ae: $71
	ld   a, [$030d]                                  ; $44af: $fa $0d $03
	ld   h, b                                        ; $44b2: $60
	ld   l, [hl]                                     ; $44b3: $6e
	ld   [hl], c                                     ; $44b4: $71
	ld   l, l                                        ; $44b5: $6d
	rst  $38                                         ; $44b6: $ff
	rst  $38                                         ; $44b7: $ff
	dec  c                                           ; $44b8: $0d
	nop                                              ; $44b9: $00
	ld   a, [bc]                                     ; $44ba: $0a
	ld   sp, $2040                                   ; $44bb: $31 $40 $20
	inc  bc                                          ; $44be: $03
	jr   nz, jr_068_44c2                             ; $44bf: $20 $01

	ld   a, [bc]                                     ; $44c1: $0a

jr_068_44c2:
	add  hl, hl                                      ; $44c2: $29
	nop                                              ; $44c3: $00
	ld   b, $c0                                      ; $44c4: $06 $c0
	inc  bc                                          ; $44c6: $03
	ld   bc, $656b                                   ; $44c7: $01 $6b $65
	ld   [hl], h                                     ; $44ca: $74
	inc  bc                                          ; $44cb: $03
	ld   l, c                                        ; $44cc: $69
	ld   [bc], a                                     ; $44cd: $02
	xor  d                                           ; $44ce: $aa
	ld   a, l                                        ; $44cf: $7d
	rst  $38                                         ; $44d0: $ff
	rst  $38                                         ; $44d1: $ff
	dec  c                                           ; $44d2: $0d
	nop                                              ; $44d3: $00
	ld   a, [bc]                                     ; $44d4: $0a
	add  hl, de                                      ; $44d5: $19
	dec  b                                           ; $44d6: $05
	inc  bc                                          ; $44d7: $03
	inc  bc                                          ; $44d8: $03
	ld   c, a                                        ; $44d9: $4f
	add  [hl]                                        ; $44da: $86
	ld   [de], a                                     ; $44db: $12
	ld   de, $9f04                                   ; $44dc: $11 $04 $9f
	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	inc  bc                                          ; $44e1: $03
	ld   h, b                                        ; $44e2: $60
	add  [hl]                                        ; $44e3: $86
	ld   a, [de]                                     ; $44e4: $1a
	inc  b                                           ; $44e5: $04
	sbc  a                                           ; $44e6: $9f
	nop                                              ; $44e7: $00
	ld   bc, $aa02                                   ; $44e8: $01 $02 $aa
	sbc  e                                           ; $44eb: $9b
	add  [hl]                                        ; $44ec: $86
	add  hl, de                                      ; $44ed: $19
	inc  b                                           ; $44ee: $04
	sbc  a                                           ; $44ef: $9f
	nop                                              ; $44f0: $00
	ld   [bc], a                                     ; $44f1: $02
	rlca                                             ; $44f2: $07
	dec  de                                          ; $44f3: $1b
	inc  b                                           ; $44f4: $04
	ld   [bc], a                                     ; $44f5: $02
	inc  bc                                          ; $44f6: $03
	ld   bc, $2000                                   ; $44f7: $01 $00 $20
	nop                                              ; $44fa: $00
	rlca                                             ; $44fb: $07
	ld   b, a                                        ; $44fc: $47
	inc  b                                           ; $44fd: $04
	ld   [bc], a                                     ; $44fe: $02
	inc  bc                                          ; $44ff: $03
	ld   bc, $2001                                   ; $4500: $01 $01 $20
	nop                                              ; $4503: $00
	rlca                                             ; $4504: $07
	ld   a, b                                        ; $4505: $78
	inc  b                                           ; $4506: $04
	ld   [bc], a                                     ; $4507: $02
	inc  bc                                          ; $4508: $03
	ld   bc, $2002                                   ; $4509: $01 $02 $20
	nop                                              ; $450c: $00
	ld   b, $09                                      ; $450d: $06 $09
	inc  b                                           ; $450f: $04
	ld   bc, $4f03                                   ; $4510: $01 $03 $4f
	add  [hl]                                        ; $4513: $86
	dec  b                                           ; $4514: $05
	db   $dd                                         ; $4515: $dd
	adc  h                                           ; $4516: $8c
	ld   a, b                                        ; $4517: $78
	ld   e, e                                        ; $4518: $5b
	sub  c                                           ; $4519: $91
	rst  $38                                         ; $451a: $ff
	rst  $38                                         ; $451b: $ff
	dec  c                                           ; $451c: $0d
	nop                                              ; $451d: $00
	ld   a, [bc]                                     ; $451e: $0a
	ld   b, $ce                                      ; $451f: $06 $ce
	inc  bc                                          ; $4521: $03
	rrca                                             ; $4522: $0f
	nop                                              ; $4523: $00
	ld   bc, $0301                                   ; $4524: $01 $01 $03
	ld   c, a                                        ; $4527: $4f
	add  [hl]                                        ; $4528: $86
	ld   [de], a                                     ; $4529: $12
	ld   de, $9f04                                   ; $452a: $11 $04 $9f
	rst  $38                                         ; $452d: $ff
	halt                                             ; $452e: $76
	sbc  a                                           ; $452f: $9f
	dec  c                                           ; $4530: $0d
	nop                                              ; $4531: $00
	ld   a, [bc]                                     ; $4532: $0a
	ld   bc, $6596                                   ; $4533: $01 $96 $65
	sbc  [hl]                                        ; $4536: $9e
	ld   l, [hl]                                     ; $4537: $6e
	ld   d, d                                        ; $4538: $52
	ld   h, [hl]                                     ; $4539: $66
	sub  l                                           ; $453a: $95
	ld   d, h                                        ; $453b: $54
	add  h                                           ; $453c: $84
	ld   l, [hl]                                     ; $453d: $6e
	sbc  a                                           ; $453e: $9f
	dec  c                                           ; $453f: $0d
	nop                                              ; $4540: $00
	ld   a, [bc]                                     ; $4541: $0a
	dec  b                                           ; $4542: $05
	ld   b, b                                        ; $4543: $40
	rst  $38                                         ; $4544: $ff
	inc  bc                                          ; $4545: $03
	rst  $38                                         ; $4546: $ff
	ld   bc, $2801                                   ; $4547: $01 $01 $28
	nop                                              ; $454a: $00
	ld   b, $ab                                      ; $454b: $06 $ab
	inc  b                                           ; $454d: $04
	rrca                                             ; $454e: $0f
	nop                                              ; $454f: $00
	ld   bc, $0301                                   ; $4550: $01 $01 $03
	ld   h, b                                        ; $4553: $60
	add  [hl]                                        ; $4554: $86
	ld   a, [de]                                     ; $4555: $1a
	inc  b                                           ; $4556: $04
	sbc  a                                           ; $4557: $9f
	rst  $38                                         ; $4558: $ff
	halt                                             ; $4559: $76
	sbc  a                                           ; $455a: $9f
	dec  c                                           ; $455b: $0d
	nop                                              ; $455c: $00
	ld   a, [bc]                                     ; $455d: $0a
	inc  c                                           ; $455e: $0c
	inc  bc                                          ; $455f: $03
	ld   bc, $9d54                                   ; $4560: $01 $54 $9d
	ld   [hl], c                                     ; $4563: $71
	ld   a, [$030d]                                  ; $4564: $fa $0d $03
	ld   h, b                                        ; $4567: $60
	ld   h, [hl]                                     ; $4568: $66
	sub  c                                           ; $4569: $91
	ld   a, b                                        ; $456a: $78
	ld   e, c                                        ; $456b: $59
	ld   [hl], c                                     ; $456c: $71
	ld   l, l                                        ; $456d: $6d
	rst  $38                                         ; $456e: $ff
	rst  $38                                         ; $456f: $ff
	dec  c                                           ; $4570: $0d
	nop                                              ; $4571: $00
	ld   a, [bc]                                     ; $4572: $0a
	ld   sp, $2040                                   ; $4573: $31 $40 $20
	inc  bc                                          ; $4576: $03
	jr   nz, jr_068_457a                             ; $4577: $20 $01

	ld   a, [bc]                                     ; $4579: $0a

jr_068_457a:
	add  hl, hl                                      ; $457a: $29
	nop                                              ; $457b: $00
	ld   b, $ab                                      ; $457c: $06 $ab
	inc  b                                           ; $457e: $04
	rrca                                             ; $457f: $0f
	nop                                              ; $4580: $00
	ld   bc, $0201                                   ; $4581: $01 $01 $02
	xor  d                                           ; $4584: $aa
	sbc  e                                           ; $4585: $9b
	add  [hl]                                        ; $4586: $86
	add  hl, de                                      ; $4587: $19
	inc  b                                           ; $4588: $04
	sbc  a                                           ; $4589: $9f
	rst  $38                                         ; $458a: $ff
	halt                                             ; $458b: $76
	sbc  a                                           ; $458c: $9f
	dec  c                                           ; $458d: $0d
	nop                                              ; $458e: $00
	ld   a, [bc]                                     ; $458f: $0a
	inc  c                                           ; $4590: $0c
	inc  bc                                          ; $4591: $03
	ld   bc, $9d54                                   ; $4592: $01 $54 $9d
	ld   [hl], c                                     ; $4595: $71
	ld   a, [$020d]                                  ; $4596: $fa $0d $02
	xor  d                                           ; $4599: $aa
	sbc  e                                           ; $459a: $9b
	ld   h, [hl]                                     ; $459b: $66
	sub  c                                           ; $459c: $91
	ld   a, b                                        ; $459d: $78
	ld   e, c                                        ; $459e: $59
	ld   [hl], c                                     ; $459f: $71
	ld   l, l                                        ; $45a0: $6d
	rst  $38                                         ; $45a1: $ff
	rst  $38                                         ; $45a2: $ff
	dec  c                                           ; $45a3: $0d
	nop                                              ; $45a4: $00
	ld   a, [bc]                                     ; $45a5: $0a
	ld   sp, $2040                                   ; $45a6: $31 $40 $20
	inc  bc                                          ; $45a9: $03
	jr   nz, jr_068_45ad                             ; $45aa: $20 $01

	ld   a, [bc]                                     ; $45ac: $0a

jr_068_45ad:
	add  hl, hl                                      ; $45ad: $29
	nop                                              ; $45ae: $00
	ld   b, $ab                                      ; $45af: $06 $ab
	inc  b                                           ; $45b1: $04
	ld   c, $5e                                      ; $45b2: $0e $5e
	rrca                                             ; $45b4: $0f
	nop                                              ; $45b5: $00
	ld   bc, $8301                                   ; $45b6: $01 $01 $83
	ld   d, h                                        ; $45b9: $54
	rst  $38                                         ; $45ba: $ff
	rst  $38                                         ; $45bb: $ff
	dec  c                                           ; $45bc: $0d
	ld   a, b                                        ; $45bd: $78
	and  c                                           ; $45be: $a1
	halt                                             ; $45bf: $76
	ld   e, c                                        ; $45c0: $59
	inc  bc                                          ; $45c1: $03
	add  b                                           ; $45c2: $80
	ld   [hl], h                                     ; $45c3: $74
	dec  b                                           ; $45c4: $05
	db   $10                                         ; $45c5: $10
	sbc  d                                           ; $45c6: $9a
	ld   l, l                                        ; $45c7: $6d
	rst  $38                                         ; $45c8: $ff
	rst  $38                                         ; $45c9: $ff
	dec  c                                           ; $45ca: $0d
	nop                                              ; $45cb: $00
	ld   a, [bc]                                     ; $45cc: $0a
	inc  e                                           ; $45cd: $1c
	inc  bc                                          ; $45ce: $03
	nop                                              ; $45cf: $00
	nop                                              ; $45d0: $00
	ld   bc, $9e50                                   ; $45d1: $01 $50 $9e
	ld   [$5d00], sp                                 ; $45d4: $08 $00 $5d
	and  c                                           ; $45d7: $a1
	sbc  a                                           ; $45d8: $9f
	dec  c                                           ; $45d9: $0d
	inc  bc                                          ; $45da: $03
	ld   a, [hl]                                     ; $45db: $7e
	sbc  l                                           ; $45dc: $9d
	ld   [hl], c                                     ; $45dd: $71
	ld   l, l                                        ; $45de: $6d
	ld   a, h                                        ; $45df: $7c
	ld   sp, hl                                      ; $45e0: $f9
	dec  c                                           ; $45e1: $0d
	nop                                              ; $45e2: $00
	ld   a, [bc]                                     ; $45e3: $0a
	rrca                                             ; $45e4: $0f
	nop                                              ; $45e5: $00
	ld   bc, $7601                                   ; $45e6: $01 $01 $76
	sbc  b                                           ; $45e9: $98
	ld   d, b                                        ; $45ea: $50
	ld   d, [hl]                                     ; $45eb: $56
	ld   l, b                                        ; $45ec: $68
	ld   a, l                                        ; $45ed: $7d
	rst  $38                                         ; $45ee: $ff
	rst  $38                                         ; $45ef: $ff
	dec  c                                           ; $45f0: $0d
	nop                                              ; $45f1: $00
	ld   a, [bc]                                     ; $45f2: $0a
	rrca                                             ; $45f3: $0f
	inc  bc                                          ; $45f4: $03
	nop                                              ; $45f5: $00
	ld   bc, $9166                                   ; $45f6: $01 $66 $91
	sbc  [hl]                                        ; $45f9: $9e
	ld   l, a                                        ; $45fa: $6f
	sub  l                                           ; $45fb: $95
	ld   [hl], c                                     ; $45fc: $71
	halt                                             ; $45fd: $76
	ld   [bc], a                                     ; $45fe: $02
	sub  l                                           ; $45ff: $95
	ld   [hl], h                                     ; $4600: $74
	ld   e, l                                        ; $4601: $5d
	sbc  c                                           ; $4602: $99
	sbc  l                                           ; $4603: $9d
	ld   a, e                                        ; $4604: $7b
	sbc  a                                           ; $4605: $9f
	dec  c                                           ; $4606: $0d
	nop                                              ; $4607: $00
	ld   a, [bc]                                     ; $4608: $0a
	dec  c                                           ; $4609: $0d
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	rrca                                             ; $460c: $0f
	nop                                              ; $460d: $00
	ld   bc, $0b0c                                   ; $460e: $01 $0c $0b
	rlca                                             ; $4611: $07
	ld   h, b                                        ; $4612: $60
	dec  b                                           ; $4613: $05
	inc  bc                                          ; $4614: $03
	rst  $38                                         ; $4615: $ff
	ld   bc, $2003                                   ; $4616: $01 $03 $20
	nop                                              ; $4619: $00
	inc  e                                           ; $461a: $1c
	inc  bc                                          ; $461b: $03
	inc  b                                           ; $461c: $04
	inc  b                                           ; $461d: $04
	ld   bc, $4904                                   ; $461e: $01 $04 $49
	ld   hl, sp+$03                                  ; $4621: $f8 $03
	ld   c, e                                        ; $4623: $4b
	ld   e, c                                        ; $4624: $59
	sbc  [hl]                                        ; $4625: $9e
	sub  h                                           ; $4626: $94
	ld   e, c                                        ; $4627: $59
	ld   e, d                                        ; $4628: $5a
	ld   a, d                                        ; $4629: $7a
	ld   e, a                                        ; $462a: $5f
	ld   [hl], h                                     ; $462b: $74
	sbc  c                                           ; $462c: $99
	dec  c                                           ; $462d: $0d
	sub  [hl]                                        ; $462e: $96
	ld   d, h                                        ; $462f: $54
	ld   a, e                                        ; $4630: $7b
	rst  $38                                         ; $4631: $ff
	rst  $38                                         ; $4632: $ff
	dec  c                                           ; $4633: $0d
	nop                                              ; $4634: $00
	ld   a, [bc]                                     ; $4635: $0a
	inc  e                                           ; $4636: $1c
	inc  bc                                          ; $4637: $03
	ld   [bc], a                                     ; $4638: $02
	ld   [bc], a                                     ; $4639: $02
	dec  e                                           ; $463a: $1d
	ld   b, b                                        ; $463b: $40
	inc  de                                          ; $463c: $13
	inc  bc                                          ; $463d: $03
	inc  de                                          ; $463e: $13
	ld   bc, $2903                                   ; $463f: $01 $03 $29
	nop                                              ; $4642: $00
	ld   bc, $8d83                                   ; $4643: $01 $83 $8d
	ld   a, d                                        ; $4646: $7a
	ld   d, d                                        ; $4647: $52
	ld   l, l                                        ; $4648: $6d
	halt                                             ; $4649: $76
	ld   h, c                                        ; $464a: $61
	sbc  e                                           ; $464b: $9b
	ld   a, l                                        ; $464c: $7d
	dec  c                                           ; $464d: $0d
	ld   l, a                                        ; $464e: $6f
	sub  c                                           ; $464f: $91
	and  c                                           ; $4650: $a1
	halt                                             ; $4651: $76
	inc  bc                                          ; $4652: $03
	jp   c, Jump_068_7465                            ; $4653: $da $65 $74

	ld   e, b                                        ; $4656: $58
	ld   d, d                                        ; $4657: $52
	ld   [hl], h                                     ; $4658: $74
	ld   a, e                                        ; $4659: $7b
	sbc  a                                           ; $465a: $9f
	dec  c                                           ; $465b: $0d
	nop                                              ; $465c: $00
	ld   a, [bc]                                     ; $465d: $0a
	dec  c                                           ; $465e: $0d
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	rrca                                             ; $4661: $0f
	nop                                              ; $4662: $00
	ld   bc, $1e09                                   ; $4663: $01 $09 $1e
	nop                                              ; $4666: $00
	inc  e                                           ; $4667: $1c
	inc  bc                                          ; $4668: $03
	inc  bc                                          ; $4669: $03
	inc  bc                                          ; $466a: $03
	dec  e                                           ; $466b: $1d
	ld   b, b                                        ; $466c: $40
	inc  de                                          ; $466d: $13
	inc  bc                                          ; $466e: $03
	inc  de                                          ; $466f: $13
	ld   bc, $2803                                   ; $4670: $01 $03 $28
	nop                                              ; $4673: $00
	ld   bc, $916f                                   ; $4674: $01 $6f $91
	and  c                                           ; $4677: $a1
	halt                                             ; $4678: $76
	inc  bc                                          ; $4679: $03
	jp   c, Jump_068_7471                            ; $467a: $da $71 $74

	ld   l, l                                        ; $467d: $6d
	sbc  l                                           ; $467e: $9d
	sbc  a                                           ; $467f: $9f

jr_068_4680:
	dec  c                                           ; $4680: $0d
	nop                                              ; $4681: $00
	dec  b                                           ; $4682: $05
	add  b                                           ; $4683: $80
	ld   [hl], b                                     ; $4684: $70
	ld   bc, $0001                                   ; $4685: $01 $01 $00
	ld   bc, $9850                                   ; $4688: $01 $50 $98
	ld   e, d                                        ; $468b: $5a
	halt                                             ; $468c: $76
	ld   d, h                                        ; $468d: $54
	sbc  a                                           ; $468e: $9f
	dec  c                                           ; $468f: $0d
	ld   h, d                                        ; $4690: $62
	ld   e, l                                        ; $4691: $5d
	sbc  e                                           ; $4692: $9b
	ld   d, h                                        ; $4693: $54
	ld   h, e                                        ; $4694: $63
	adc  h                                           ; $4695: $8c
	ld   [hl], l                                     ; $4696: $75
	ld   h, l                                        ; $4697: $65
	ld   l, l                                        ; $4698: $6d

jr_068_4699:
	sbc  a                                           ; $4699: $9f
	dec  c                                           ; $469a: $0d
	nop                                              ; $469b: $00
	ld   a, [bc]                                     ; $469c: $0a
	dec  c                                           ; $469d: $0d
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	rrca                                             ; $46a0: $0f
	nop                                              ; $46a1: $00
	ld   bc, $1e09                                   ; $46a2: $01 $09 $1e
	nop                                              ; $46a5: $00
	nop                                              ; $46a6: $00
	inc  bc                                          ; $46a7: $03
	ld   c, [hl]                                     ; $46a8: $4e
	ld   [bc], a                                     ; $46a9: $02
	nop                                              ; $46aa: $00
	inc  bc                                          ; $46ab: $03
	ld   c, b                                        ; $46ac: $48
	add  hl, hl                                      ; $46ad: $29
	add  hl, hl                                      ; $46ae: $29
	ld   bc, $2201                                   ; $46af: $01 $01 $22
	nop                                              ; $46b2: $00
	rrca                                             ; $46b3: $0f
	nop                                              ; $46b4: $00
	ld   bc, $010d                                   ; $46b5: $01 $0d $01
	nop                                              ; $46b8: $00
	ld   [bc], a                                     ; $46b9: $02
	ld   bc, $5d63                                   ; $46ba: $01 $63 $5d
	sub  a                                           ; $46bd: $97
	ld   h, e                                        ; $46be: $63
	and  c                                           ; $46bf: $a1
	sbc  a                                           ; $46c0: $9f
	dec  c                                           ; $46c1: $0d
	nop                                              ; $46c2: $00
	ld   a, [bc]                                     ; $46c3: $0a
	inc  e                                           ; $46c4: $1c
	ld   bc, $0000                                   ; $46c5: $01 $00 $00
	ld   bc, $9750                                   ; $46c8: $01 $50 $97
	sbc  [hl]                                        ; $46cb: $9e
	ld   [$6300], sp                                 ; $46cc: $08 $00 $63
	and  c                                           ; $46cf: $a1
	sbc  a                                           ; $46d0: $9f
	dec  c                                           ; $46d1: $0d
	nop                                              ; $46d2: $00
	ld   a, [bc]                                     ; $46d3: $0a
	rrca                                             ; $46d4: $0f
	nop                                              ; $46d5: $00
	ld   bc, $0101                                   ; $46d6: $01 $01 $01
	inc  bc                                          ; $46d9: $03
	inc  b                                           ; $46da: $04
	ld   c, c                                        ; $46db: $49
	ld   a, h                                        ; $46dc: $7c
	dec  b                                           ; $46dd: $05
	jr   nz, jr_068_4680                             ; $46de: $20 $a0

	ld   h, l                                        ; $46e0: $65
	sub  [hl]                                        ; $46e1: $96
	ld   d, h                                        ; $46e2: $54
	ld   e, c                                        ; $46e3: $59
	ld   a, b                                        ; $46e4: $78
	rst  $38                                         ; $46e5: $ff
	rst  $38                                         ; $46e6: $ff
	ld   bc, $0d04                                   ; $46e7: $01 $04 $0d
	nop                                              ; $46ea: $00
	ld   a, [bc]                                     ; $46eb: $0a
	add  hl, de                                      ; $46ec: $19
	dec  b                                           ; $46ed: $05
	inc  bc                                          ; $46ee: $03
	ret  z                                           ; $46ef: $c8

	call nc, $fbe7                                   ; $46f0: $d4 $e7 $fb
	inc  bc                                          ; $46f3: $03
	xor  h                                           ; $46f4: $ac
	ld   a, h                                        ; $46f5: $7c
	dec  b                                           ; $46f6: $05
	jr   nz, jr_068_4699                             ; $46f7: $20 $a0

	ld   [bc], a                                     ; $46f9: $02
	jp   nz, $005d                                   ; $46fa: $c2 $5d $00

	nop                                              ; $46fd: $00
	dec  b                                           ; $46fe: $05
	db   $10                                         ; $46ff: $10
	inc  bc                                          ; $4700: $03
	ld   a, c                                        ; $4701: $79
	ld   a, h                                        ; $4702: $7c
	ld   [bc], a                                     ; $4703: $02
	sbc  c                                           ; $4704: $99
	ld   [bc], a                                     ; $4705: $02
	rra                                              ; $4706: $1f
	ld   a, c                                        ; $4707: $79
	ld   [hl], d                                     ; $4708: $72
	ld   d, d                                        ; $4709: $52
	ld   [hl], h                                     ; $470a: $74
	ld   [bc], a                                     ; $470b: $02
	jp   nz, $005d                                   ; $470c: $c2 $5d $00

	ld   bc, $8e04                                   ; $470f: $01 $04 $8e
	inc  b                                           ; $4712: $04
	inc  c                                           ; $4713: $0c
	ld   [hl], l                                     ; $4714: $75
	ld   a, h                                        ; $4715: $7c
	inc  bc                                          ; $4716: $03
	add  e                                           ; $4717: $83
	inc  b                                           ; $4718: $04
	sbc  b                                           ; $4719: $98
	ld   a, c                                        ; $471a: $79
	ld   [hl], d                                     ; $471b: $72
	ld   d, d                                        ; $471c: $52
	ld   [hl], h                                     ; $471d: $74
	ld   [bc], a                                     ; $471e: $02
	jp   nz, $005d                                   ; $471f: $c2 $5d $00

	ld   [bc], a                                     ; $4722: $02
	rlca                                             ; $4723: $07
	xor  [hl]                                        ; $4724: $ae
	nop                                              ; $4725: $00
	ld   [bc], a                                     ; $4726: $02
	inc  bc                                          ; $4727: $03
	ld   bc, $2000                                   ; $4728: $01 $00 $20
	nop                                              ; $472b: $00
	rlca                                             ; $472c: $07
	sub  a                                           ; $472d: $97
	ld   bc, $0302                                   ; $472e: $01 $02 $03
	ld   bc, $2001                                   ; $4731: $01 $01 $20
	nop                                              ; $4734: $00
	rlca                                             ; $4735: $07
	rst  JumpTable                                         ; $4736: $df
	ld   [bc], a                                     ; $4737: $02
	ld   [bc], a                                     ; $4738: $02
	inc  bc                                          ; $4739: $03
	ld   bc, $2002                                   ; $473a: $01 $02 $20
	nop                                              ; $473d: $00
	ld   b, $8e                                      ; $473e: $06 $8e
	nop                                              ; $4740: $00
	inc  e                                           ; $4741: $1c
	ld   bc, $0000                                   ; $4742: $01 $00 $00
	ld   bc, $f304                                   ; $4745: $01 $04 $f3
	ld   e, d                                        ; $4748: $5a
	ld   a, b                                        ; $4749: $78
	ld   d, d                                        ; $474a: $52
	ld   a, h                                        ; $474b: $7c
	ld   a, b                                        ; $474c: $78
	sub  a                                           ; $474d: $97
	ld   [bc], a                                     ; $474e: $02
	ld   a, a                                        ; $474f: $7f
	ld   e, e                                        ; $4750: $5b
	adc  h                                           ; $4751: $8c
	ld   h, a                                        ; $4752: $67
	ld   a, e                                        ; $4753: $7b
	sbc  a                                           ; $4754: $9f
	dec  c                                           ; $4755: $0d
	nop                                              ; $4756: $00
	ld   a, [bc]                                     ; $4757: $0a
	dec  c                                           ; $4758: $0d
	nop                                              ; $4759: $00
	nop                                              ; $475a: $00
	rrca                                             ; $475b: $0f
	nop                                              ; $475c: $00
	ld   bc, $1e09                                   ; $475d: $01 $09 $1e
	nop                                              ; $4760: $00
	rrca                                             ; $4761: $0f
	nop                                              ; $4762: $00
	ld   bc, $6301                                   ; $4763: $01 $01 $63
	ld   e, l                                        ; $4766: $5d
	sub  a                                           ; $4767: $97
	ld   h, e                                        ; $4768: $63
	and  c                                           ; $4769: $a1
	ld   e, d                                        ; $476a: $5a
	ret  z                                           ; $476b: $c8

	call nc, $fbe7                                   ; $476c: $d4 $e7 $fb
	ld   h, l                                        ; $476f: $65
	ld   l, l                                        ; $4770: $6d
	dec  c                                           ; $4771: $0d
	inc  bc                                          ; $4772: $03
	xor  h                                           ; $4773: $ac
	inc  b                                           ; $4774: $04
	ld   h, c                                        ; $4775: $61
	ld   [hl], h                                     ; $4776: $74
	inc  b                                           ; $4777: $04
	ld   c, c                                        ; $4778: $49
	ld   [hl], l                                     ; $4779: $75
	ld   h, a                                        ; $477a: $67
	ld   e, c                                        ; $477b: $59
	ld   sp, hl                                      ; $477c: $f9
	dec  c                                           ; $477d: $0d
	nop                                              ; $477e: $00
	ld   a, [bc]                                     ; $477f: $0a
	inc  e                                           ; $4780: $1c
	ld   bc, $0000                                   ; $4781: $01 $00 $00
	ld   bc, $e7b9                                   ; $4784: $01 $b9 $e7
	db   $ec                                         ; $4787: $ec
	xor  e                                           ; $4788: $ab
	halt                                             ; $4789: $76
	rst  $28                                         ; $478a: $ef
	ldh  [$a9], a                                    ; $478b: $e0 $a9
	call nz, Call_068_76c9                           ; $478d: $c4 $c9 $76
	ld   d, d                                        ; $4790: $52
	ld   d, h                                        ; $4791: $54
	dec  c                                           ; $4792: $0d
	inc  bc                                          ; $4793: $03
	xor  h                                           ; $4794: $ac
	inc  b                                           ; $4795: $04
	ld   h, c                                        ; $4796: $61
	ld   [hl], l                                     ; $4797: $75
	ld   h, a                                        ; $4798: $67
	sub  [hl]                                        ; $4799: $96
	sbc  a                                           ; $479a: $9f
	dec  c                                           ; $479b: $0d
	nop                                              ; $479c: $00
	ld   a, [bc]                                     ; $479d: $0a
	inc  e                                           ; $479e: $1c
	ld   bc, $0404                                   ; $479f: $01 $04 $04
	ld   bc, $5b9d                                   ; $47a2: $01 $9d $5b
	inc  b                                           ; $47a5: $04
	db   $ec                                         ; $47a6: $ec
	ld   l, [hl]                                     ; $47a7: $6e
	ld   [hl], c                                     ; $47a8: $71
	ld   l, l                                        ; $47a9: $6d
	and  c                                           ; $47aa: $a1
	ld   [hl], l                                     ; $47ab: $75
	ld   h, a                                        ; $47ac: $67
	ld   e, a                                        ; $47ad: $5f
	ld   [hl], a                                     ; $47ae: $77
	sbc  [hl]                                        ; $47af: $9e
	dec  c                                           ; $47b0: $0d
	inc  bc                                          ; $47b1: $03
	inc  c                                           ; $47b2: $0c
	adc  a                                           ; $47b3: $8f
	ld   [hl], h                                     ; $47b4: $74
	ld   a, h                                        ; $47b5: $7c
	inc  b                                           ; $47b6: $04
	adc  [hl]                                        ; $47b7: $8e
	inc  b                                           ; $47b8: $04
	inc  c                                           ; $47b9: $0c
	ld   l, [hl]                                     ; $47ba: $6e
	ld   e, c                                        ; $47bb: $59
	sub  a                                           ; $47bc: $97
	sbc  [hl]                                        ; $47bd: $9e
	ld   h, a                                        ; $47be: $67
	ld   h, d                                        ; $47bf: $62
	ld   e, l                                        ; $47c0: $5d
	dec  c                                           ; $47c1: $0d
	ld   e, e                                        ; $47c2: $5b
	and  c                                           ; $47c3: $a1
	ld   l, a                                        ; $47c4: $6f
	sub  l                                           ; $47c5: $95
	ld   d, h                                        ; $47c6: $54
	ld   h, l                                        ; $47c7: $65
	ld   l, a                                        ; $47c8: $6f
	sub  c                                           ; $47c9: $91
	ld   [hl], c                                     ; $47ca: $71
	ld   [hl], h                                     ; $47cb: $74
	rst  $38                                         ; $47cc: $ff
	rst  $38                                         ; $47cd: $ff
	dec  c                                           ; $47ce: $0d
	nop                                              ; $47cf: $00
	ld   a, [bc]                                     ; $47d0: $0a
	ld   bc, $9a6b                                   ; $47d1: $01 $6b $9a
	ld   a, c                                        ; $47d4: $79
	sbc  [hl]                                        ; $47d5: $9e
	ld   d, b                                        ; $47d6: $50
	ld   l, l                                        ; $47d7: $6d
	ld   h, l                                        ; $47d8: $65
	adc  l                                           ; $47d9: $8d
	ld   l, l                                        ; $47da: $6d
	ld   d, d                                        ; $47db: $52
	ld   a, b                                        ; $47dc: $78
	inc  bc                                          ; $47dd: $03
	and  [hl]                                        ; $47de: $a6
	inc  bc                                          ; $47df: $03
	add  d                                           ; $47e0: $82
	ld   e, d                                        ; $47e1: $5a
	dec  c                                           ; $47e2: $0d
	inc  b                                           ; $47e3: $04
	adc  [hl]                                        ; $47e4: $8e
	inc  b                                           ; $47e5: $04
	inc  c                                           ; $47e6: $0c
	ld   a, c                                        ; $47e7: $79
	dec  b                                           ; $47e8: $05
	ld   d, $72                                      ; $47e9: $16 $72
	ld   h, c                                        ; $47eb: $61
	halt                                             ; $47ec: $76
	ld   e, d                                        ; $47ed: $5a
	sbc  [hl]                                        ; $47ee: $9e
	ld   h, a                                        ; $47ef: $67
	adc  l                                           ; $47f0: $8d
	sbc  d                                           ; $47f1: $9a
	ld   h, e                                        ; $47f2: $63
	and  c                                           ; $47f3: $a1
	dec  c                                           ; $47f4: $0d
	inc  b                                           ; $47f5: $04
	ret  c                                           ; $47f6: $d8

	inc  b                                           ; $47f7: $04
	xor  h                                           ; $47f8: $ac
	ld   e, l                                        ; $47f9: $5d
	ld   a, b                                        ; $47fa: $78
	ld   e, c                                        ; $47fb: $59
	ld   [hl], c                                     ; $47fc: $71
	ld   l, l                                        ; $47fd: $6d
	adc  l                                           ; $47fe: $8d
	ld   l, l                                        ; $47ff: $6d
	ld   d, d                                        ; $4800: $52
	ld   [hl], l                                     ; $4801: $75
	rst  $38                                         ; $4802: $ff
	rst  $38                                         ; $4803: $ff
	dec  c                                           ; $4804: $0d
	nop                                              ; $4805: $00
	ld   a, [bc]                                     ; $4806: $0a
	inc  e                                           ; $4807: $1c
	ld   bc, $0101                                   ; $4808: $01 $01 $01
	ld   bc, $9075                                   ; $480b: $01 $75 $90
	sbc  [hl]                                        ; $480e: $9e
	inc  bc                                          ; $480f: $03
	dec  bc                                          ; $4810: $0b
	ld   bc, $5014                                   ; $4811: $01 $14 $50
	sbc  b                                           ; $4814: $98
	adc  h                                           ; $4815: $8c
	ld   h, l                                        ; $4816: $65
	ld   l, l                                        ; $4817: $6d
	ld   e, a                                        ; $4818: $5f
	ld   [hl], a                                     ; $4819: $77
	dec  c                                           ; $481a: $0d
	ld   h, a                                        ; $481b: $67
	ld   h, d                                        ; $481c: $62
	ld   e, l                                        ; $481d: $5d
	ld   d, d                                        ; $481e: $52
	ld   d, d                                        ; $481f: $52
	inc  bc                                          ; $4820: $03
	ld   a, [de]                                     ; $4821: $1a
	ld   d, d                                        ; $4822: $52
	inc  bc                                          ; $4823: $03
	add  b                                           ; $4824: $80
	ld   [hl], l                                     ; $4825: $75
	ld   h, a                                        ; $4826: $67
	sub  [hl]                                        ; $4827: $96
	sbc  a                                           ; $4828: $9f
	dec  c                                           ; $4829: $0d
	nop                                              ; $482a: $00
	ld   a, [bc]                                     ; $482b: $0a
	inc  e                                           ; $482c: $1c
	ld   bc, $0000                                   ; $482d: $01 $00 $00
	ld   bc, $9166                                   ; $4830: $01 $66 $91
	sbc  [hl]                                        ; $4833: $9e
	ld   d, b                                        ; $4834: $50
	ld   l, l                                        ; $4835: $6d
	ld   h, l                                        ; $4836: $65
	ld   [bc], a                                     ; $4837: $02
	ld   a, a                                        ; $4838: $7f
	ld   e, e                                        ; $4839: $5b
	adc  h                                           ; $483a: $8c
	ld   h, a                                        ; $483b: $67
	ld   a, e                                        ; $483c: $7b
	sbc  a                                           ; $483d: $9f
	dec  c                                           ; $483e: $0d
	nop                                              ; $483f: $00
	ld   a, [bc]                                     ; $4840: $0a
	dec  c                                           ; $4841: $0d
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	rrca                                             ; $4844: $0f
	nop                                              ; $4845: $00
	ld   bc, $1e09                                   ; $4846: $01 $09 $1e
	nop                                              ; $4849: $00
	rrca                                             ; $484a: $0f
	nop                                              ; $484b: $00
	ld   bc, $5201                                   ; $484c: $01 $01 $52
	sub  [hl]                                        ; $484f: $96
	ld   d, d                                        ; $4850: $52
	sub  [hl]                                        ; $4851: $96
	dec  b                                           ; $4852: $05
	db   $10                                         ; $4853: $10
	inc  bc                                          ; $4854: $03
	ld   a, c                                        ; $4855: $79
	ld   e, d                                        ; $4856: $5a
	ld   [bc], a                                     ; $4857: $02
	sbc  c                                           ; $4858: $99
	ld   [bc], a                                     ; $4859: $02
	rra                                              ; $485a: $1f
	ld   [hl], l                                     ; $485b: $75
	ld   h, a                                        ; $485c: $67
	ld   a, e                                        ; $485d: $7b
	sbc  a                                           ; $485e: $9f
	dec  c                                           ; $485f: $0d
	nop                                              ; $4860: $00
	ld   a, [bc]                                     ; $4861: $0a
	inc  e                                           ; $4862: $1c
	ld   bc, $0000                                   ; $4863: $01 $00 $00
	ld   bc, $5656                                   ; $4866: $01 $56 $56
	sbc  a                                           ; $4869: $9f
	dec  c                                           ; $486a: $0d
	ld   h, c                                        ; $486b: $61
	ld   a, h                                        ; $486c: $7c
	inc  bc                                          ; $486d: $03
	ld   l, a                                        ; $486e: $6f
	ld   [bc], a                                     ; $486f: $02
	pop  bc                                          ; $4870: $c1
	ld   a, c                                        ; $4871: $79
	ld   a, b                                        ; $4872: $78
	sbc  c                                           ; $4873: $99
	halt                                             ; $4874: $76
	ld   [bc], a                                     ; $4875: $02
	pop  bc                                          ; $4876: $c1
	inc  b                                           ; $4877: $04
	rla                                              ; $4878: $17
	halt                                             ; $4879: $76
	inc  b                                           ; $487a: $04
	and  b                                           ; $487b: $a0
	ld   [bc], a                                     ; $487c: $02
	ld   h, $75                                      ; $487d: $26 $75
	dec  c                                           ; $487f: $0d
	ld   d, d                                        ; $4880: $52
	ld   [hl], c                                     ; $4881: $71
	ld   a, a                                        ; $4882: $7f
	ld   d, d                                        ; $4883: $52
	ld   a, c                                        ; $4884: $79
	ld   a, b                                        ; $4885: $78
	sbc  b                                           ; $4886: $98
	adc  h                                           ; $4887: $8c
	ld   h, a                                        ; $4888: $67
	sbc  a                                           ; $4889: $9f
	dec  c                                           ; $488a: $0d
	nop                                              ; $488b: $00
	ld   a, [bc]                                     ; $488c: $0a
	add  hl, de                                      ; $488d: $19
	dec  b                                           ; $488e: $05
	ld   [bc], a                                     ; $488f: $02
	sbc  l                                           ; $4890: $9d
	ld   e, c                                        ; $4891: $59
	sbc  b                                           ; $4892: $98
	adc  h                                           ; $4893: $8c
	ld   h, a                                        ; $4894: $67
	sub  [hl]                                        ; $4895: $96
	nop                                              ; $4896: $00
	nop                                              ; $4897: $00
	inc  bc                                          ; $4898: $03
	xor  a                                           ; $4899: $af
	inc  bc                                          ; $489a: $03
	ld   [hl], l                                     ; $489b: $75
	inc  bc                                          ; $489c: $03
	or   b                                           ; $489d: $b0
	ld   [hl], l                                     ; $489e: $75
	ld   h, a                                        ; $489f: $67
	ld   a, e                                        ; $48a0: $7b
	nop                                              ; $48a1: $00
	ld   bc, $0507                                   ; $48a2: $01 $07 $05
	ld   [bc], a                                     ; $48a5: $02
	ld   [bc], a                                     ; $48a6: $02
	inc  bc                                          ; $48a7: $03
	ld   bc, $2000                                   ; $48a8: $01 $00 $20
	nop                                              ; $48ab: $00
	rlca                                             ; $48ac: $07
	add  c                                           ; $48ad: $81
	ld   [bc], a                                     ; $48ae: $02
	ld   [bc], a                                     ; $48af: $02
	inc  bc                                          ; $48b0: $03
	ld   bc, $2001                                   ; $48b1: $01 $01 $20
	nop                                              ; $48b4: $00
	ld   b, $63                                      ; $48b5: $06 $63
	ld   [bc], a                                     ; $48b7: $02
	rrca                                             ; $48b8: $0f
	nop                                              ; $48b9: $00
	ld   bc, $9d01                                   ; $48ba: $01 $01 $9d
	ld   e, c                                        ; $48bd: $59
	sbc  b                                           ; $48be: $98
	adc  h                                           ; $48bf: $8c
	ld   h, a                                        ; $48c0: $67
	sub  [hl]                                        ; $48c1: $96
	sbc  a                                           ; $48c2: $9f
	dec  c                                           ; $48c3: $0d
	inc  b                                           ; $48c4: $04
	adc  [hl]                                        ; $48c5: $8e
	inc  b                                           ; $48c6: $04
	inc  c                                           ; $48c7: $0c
	ld   [hl], l                                     ; $48c8: $75
	ld   a, l                                        ; $48c9: $7d
	ld   d, b                                        ; $48ca: $50
	sbc  b                                           ; $48cb: $98
	adc  h                                           ; $48cc: $8c
	ld   l, c                                        ; $48cd: $69
	and  c                                           ; $48ce: $a1
	ld   e, d                                        ; $48cf: $5a
	inc  b                                           ; $48d0: $04
	ld   l, l                                        ; $48d1: $6d
	sub  b                                           ; $48d2: $90
	sbc  [hl]                                        ; $48d3: $9e
	dec  c                                           ; $48d4: $0d
	ld   l, e                                        ; $48d5: $6b
	ld   d, h                                        ; $48d6: $54
	ld   d, d                                        ; $48d7: $52
	ld   d, h                                        ; $48d8: $54
	inc  bc                                          ; $48d9: $03
	ld   l, a                                        ; $48da: $6f
	ld   e, d                                        ; $48db: $5a
	ld   d, b                                        ; $48dc: $50
	sbc  b                                           ; $48dd: $98
	adc  h                                           ; $48de: $8c
	ld   h, a                                        ; $48df: $67
	ld   e, c                                        ; $48e0: $59
	sub  a                                           ; $48e1: $97
	rst  $38                                         ; $48e2: $ff
	rst  $38                                         ; $48e3: $ff
	dec  c                                           ; $48e4: $0d
	nop                                              ; $48e5: $00
	ld   a, [bc]                                     ; $48e6: $0a
	inc  e                                           ; $48e7: $1c
	ld   bc, $0303                                   ; $48e8: $01 $03 $03
	dec  e                                           ; $48eb: $1d
	ld   b, b                                        ; $48ec: $40
	ld   de, $1103                                   ; $48ed: $11 $03 $11
	ld   bc, $2802                                   ; $48f0: $01 $02 $28
	nop                                              ; $48f3: $00
	ld   bc, $546b                                   ; $48f4: $01 $6b $54
	ld   a, b                                        ; $48f7: $78
	and  c                                           ; $48f8: $a1
	ld   [hl], l                                     ; $48f9: $75
	ld   h, a                                        ; $48fa: $67
	ld   e, c                                        ; $48fb: $59
	ld   sp, hl                                      ; $48fc: $f9
	dec  c                                           ; $48fd: $0d
	sub  [hl]                                        ; $48fe: $96
	ld   e, c                                        ; $48ff: $59
	ld   [hl], c                                     ; $4900: $71
	ld   l, l                                        ; $4901: $6d
	sbc  [hl]                                        ; $4902: $9e
	ld   d, b                                        ; $4903: $50
	ld   l, l                                        ; $4904: $6d
	ld   h, l                                        ; $4905: $65
	ld   l, [hl]                                     ; $4906: $6e
	ld   e, a                                        ; $4907: $5f
	ld   h, [hl]                                     ; $4908: $66
	sub  c                                           ; $4909: $91
	dec  c                                           ; $490a: $0d
	ld   a, b                                        ; $490b: $78
	ld   d, d                                        ; $490c: $52
	and  c                                           ; $490d: $a1
	ld   [hl], l                                     ; $490e: $75
	ld   h, a                                        ; $490f: $67
	ld   a, e                                        ; $4910: $7b
	rst  $38                                         ; $4911: $ff
	rst  $38                                         ; $4912: $ff
	dec  c                                           ; $4913: $0d
	nop                                              ; $4914: $00
	ld   a, [bc]                                     ; $4915: $0a
	inc  e                                           ; $4916: $1c
	ld   bc, $0101                                   ; $4917: $01 $01 $01
	ld   bc, $9166                                   ; $491a: $01 $66 $91
	sbc  [hl]                                        ; $491d: $9e
	ld   d, b                                        ; $491e: $50
	ld   l, l                                        ; $491f: $6d
	ld   h, l                                        ; $4920: $65
	ld   [bc], a                                     ; $4921: $02
	ld   a, a                                        ; $4922: $7f
	ld   e, e                                        ; $4923: $5b
	adc  h                                           ; $4924: $8c
	ld   h, a                                        ; $4925: $67
	ld   a, e                                        ; $4926: $7b
	sbc  a                                           ; $4927: $9f
	dec  c                                           ; $4928: $0d
	nop                                              ; $4929: $00
	ld   a, [bc]                                     ; $492a: $0a
	dec  c                                           ; $492b: $0d
	nop                                              ; $492c: $00
	nop                                              ; $492d: $00
	rrca                                             ; $492e: $0f
	nop                                              ; $492f: $00
	ld   bc, $1e09                                   ; $4930: $01 $09 $1e
	nop                                              ; $4933: $00
	rrca                                             ; $4934: $0f
	nop                                              ; $4935: $00
	ld   bc, $0301                                   ; $4936: $01 $01 $03
	xor  a                                           ; $4939: $af
	inc  bc                                          ; $493a: $03
	ld   [hl], l                                     ; $493b: $75
	inc  bc                                          ; $493c: $03
	or   b                                           ; $493d: $b0
	ld   [hl], l                                     ; $493e: $75
	ld   h, a                                        ; $493f: $67
	ld   a, e                                        ; $4940: $7b
	rst  $38                                         ; $4941: $ff
	rst  $38                                         ; $4942: $ff
	dec  c                                           ; $4943: $0d
	nop                                              ; $4944: $00
	ld   a, [bc]                                     ; $4945: $0a
	inc  e                                           ; $4946: $1c
	ld   bc, $0202                                   ; $4947: $01 $02 $02
	dec  e                                           ; $494a: $1d
	ld   b, b                                        ; $494b: $40
	ld   de, $1103                                   ; $494c: $11 $03 $11
	ld   bc, $2901                                   ; $494f: $01 $01 $29
	nop                                              ; $4952: $00
	ld   bc, $546b                                   ; $4953: $01 $6b $54
	ld   d, d                                        ; $4956: $52
	ld   d, h                                        ; $4957: $54
	ld   [bc], a                                     ; $4958: $02
	sbc  l                                           ; $4959: $9d
	ld   d, d                                        ; $495a: $52
	inc  b                                           ; $495b: $04
	ld   a, b                                        ; $495c: $78
	ld   [hl], c                                     ; $495d: $71
	ld   [hl], h                                     ; $495e: $74
	dec  c                                           ; $495f: $0d
	nop                                              ; $4960: $00
	dec  b                                           ; $4961: $05
	ld   b, b                                        ; $4962: $40
	ld   c, b                                        ; $4963: $48
	ld   [bc], a                                     ; $4964: $02
	nop                                              ; $4965: $00
	nop                                              ; $4966: $00
	ld   bc, $a150                                   ; $4967: $01 $50 $a1
	adc  h                                           ; $496a: $8c
	sbc  b                                           ; $496b: $98
	ld   h, [hl]                                     ; $496c: $66
	sub  c                                           ; $496d: $91
	ld   a, b                                        ; $496e: $78
	ld   d, d                                        ; $496f: $52
	ld   [hl], l                                     ; $4970: $75
	ld   h, a                                        ; $4971: $67
	ld   e, c                                        ; $4972: $59
	ld   sp, hl                                      ; $4973: $f9
	dec  c                                           ; $4974: $0d
	nop                                              ; $4975: $00
	ld   a, [bc]                                     ; $4976: $0a
	dec  b                                           ; $4977: $05
	ld   b, b                                        ; $4978: $40
	ld   c, [hl]                                     ; $4979: $4e
	ld   bc, $0001                                   ; $497a: $01 $01 $00
	ld   bc, $8303                                   ; $497d: $01 $03 $83
	dec  b                                           ; $4980: $05
	dec  c                                           ; $4981: $0d
	ld   h, l                                        ; $4982: $65
	adc  h                                           ; $4983: $8c
	ld   h, a                                        ; $4984: $67
	ld   a, [$000d]                                  ; $4985: $fa $0d $00
	ld   a, [bc]                                     ; $4988: $0a
	dec  c                                           ; $4989: $0d
	nop                                              ; $498a: $00
	nop                                              ; $498b: $00
	rrca                                             ; $498c: $0f
	nop                                              ; $498d: $00
	ld   bc, $1e09                                   ; $498e: $01 $09 $1e
	nop                                              ; $4991: $00
	rrca                                             ; $4992: $0f
	nop                                              ; $4993: $00
	ld   bc, $0401                                   ; $4994: $01 $01 $04
	adc  [hl]                                        ; $4997: $8e
	inc  b                                           ; $4998: $04
	inc  c                                           ; $4999: $0c
	ld   [hl], l                                     ; $499a: $75
	inc  bc                                          ; $499b: $03
	add  e                                           ; $499c: $83
	inc  b                                           ; $499d: $04
	sbc  b                                           ; $499e: $98
	ld   h, l                                        ; $499f: $65
	ld   l, l                                        ; $49a0: $6d
	ld   [bc], a                                     ; $49a1: $02
	jp   Jump_068_7471                               ; $49a2: $c3 $71 $74


	dec  c                                           ; $49a5: $0d
	ld   d, b                                        ; $49a6: $50
	sbc  b                                           ; $49a7: $98
	adc  h                                           ; $49a8: $8c
	ld   h, a                                        ; $49a9: $67
	ld   e, c                                        ; $49aa: $59
	ld   sp, hl                                      ; $49ab: $f9
	dec  c                                           ; $49ac: $0d
	nop                                              ; $49ad: $00
	ld   a, [bc]                                     ; $49ae: $0a
	inc  e                                           ; $49af: $1c
	ld   bc, $0505                                   ; $49b0: $01 $05 $05
	ld   bc, $9e56                                   ; $49b3: $01 $56 $9e
	ld   d, [hl]                                     ; $49b6: $56
	ld   d, [hl]                                     ; $49b7: $56
	rst  $38                                         ; $49b8: $ff
	rst  $38                                         ; $49b9: $ff
	dec  c                                           ; $49ba: $0d
	inc  bc                                          ; $49bb: $03
	adc  e                                           ; $49bc: $8b
	ld   a, l                                        ; $49bd: $7d
	inc  bc                                          ; $49be: $03
	sub  h                                           ; $49bf: $94
	inc  b                                           ; $49c0: $04
	sbc  [hl]                                        ; $49c1: $9e
	ld   a, h                                        ; $49c2: $7c
	cp   d                                           ; $49c3: $ba
	xor  h                                           ; $49c4: $ac
	ei                                               ; $49c5: $fb
	ret                                              ; $49c6: $c9


	and  b                                           ; $49c7: $a0
	dec  c                                           ; $49c8: $0d
	add  e                                           ; $49c9: $83
	and  c                                           ; $49ca: $a1
	ld   h, [hl]                                     ; $49cb: $66
	sub  c                                           ; $49cc: $91
	ld   [hl], c                                     ; $49cd: $71
	ld   [hl], h                                     ; $49ce: $74
	rst  $38                                         ; $49cf: $ff
	rst  $38                                         ; $49d0: $ff
	dec  c                                           ; $49d1: $0d
	nop                                              ; $49d2: $00
	ld   a, [bc]                                     ; $49d3: $0a
	ld   bc, $9a6b                                   ; $49d4: $01 $6b $9a
	ld   [hl], l                                     ; $49d7: $75
	inc  b                                           ; $49d8: $04
	inc  b                                           ; $49d9: $04
	sbc  d                                           ; $49da: $9a
	ld   l, e                                        ; $49db: $6b
	ld   d, h                                        ; $49dc: $54
	ld   a, c                                        ; $49dd: $79
	ld   a, b                                        ; $49de: $78
	ld   [hl], c                                     ; $49df: $71
	ld   l, l                                        ; $49e0: $6d
	ld   a, h                                        ; $49e1: $7c
	ld   [hl], l                                     ; $49e2: $75
	dec  c                                           ; $49e3: $0d
	inc  b                                           ; $49e4: $04
	reti                                             ; $49e5: $d9


	and  b                                           ; $49e6: $a0
	ld   [hl], d                                     ; $49e7: $72
	ld   e, c                                        ; $49e8: $59
	and  c                                           ; $49e9: $a1
	ld   l, [hl]                                     ; $49ea: $6e
	sub  a                                           ; $49eb: $97
	rst  $38                                         ; $49ec: $ff
	rst  $38                                         ; $49ed: $ff
	inc  b                                           ; $49ee: $04
	ld   c, $04                                      ; $49ef: $0e $04
	ld   d, $02                                      ; $49f1: $16 $02
	xor  b                                           ; $49f3: $a8
	halt                                             ; $49f4: $76
	ld   e, c                                        ; $49f5: $59
	dec  c                                           ; $49f6: $0d
	ld   [bc], a                                     ; $49f7: $02
	ldh  a, [$5b]                                    ; $49f8: $f0 $5b
	ld   [bc], a                                     ; $49fa: $02
	ld   b, b                                        ; $49fb: $40
	and  c                                           ; $49fc: $a1
	ld   h, [hl]                                     ; $49fd: $66
	sub  c                                           ; $49fe: $91
	ld   [hl], c                                     ; $49ff: $71
	ld   [hl], h                                     ; $4a00: $74
	rst  $38                                         ; $4a01: $ff
	rst  $38                                         ; $4a02: $ff
	dec  c                                           ; $4a03: $0d
	nop                                              ; $4a04: $00
	ld   a, [bc]                                     ; $4a05: $0a
	ld   bc, $8e04                                   ; $4a06: $01 $04 $8e
	inc  b                                           ; $4a09: $04
	inc  c                                           ; $4a0a: $0c
	and  b                                           ; $4a0b: $a0
	adc  a                                           ; $4a0c: $8f
	ld   l, a                                        ; $4a0d: $6f
	sub  c                                           ; $4a0e: $91
	ld   e, l                                        ; $4a0f: $5d
	ld   l, a                                        ; $4a10: $6f
	sub  c                                           ; $4a11: $91
	ld   a, c                                        ; $4a12: $79
	dec  c                                           ; $4a13: $0d
	ld   h, l                                        ; $4a14: $65
	ld   l, a                                        ; $4a15: $6f
	sub  c                                           ; $4a16: $91
	ld   [hl], c                                     ; $4a17: $71
	ld   l, l                                        ; $4a18: $6d
	ld   [bc], a                                     ; $4a19: $02
	jp   Jump_068_505a                               ; $4a1a: $c3 $5a $50


	sbc  c                                           ; $4a1d: $99
	and  c                                           ; $4a1e: $a1
	ld   [hl], l                                     ; $4a1f: $75
	ld   h, a                                        ; $4a20: $67
	rst  $38                                         ; $4a21: $ff
	rst  $38                                         ; $4a22: $ff
	dec  c                                           ; $4a23: $0d
	nop                                              ; $4a24: $00
	ld   a, [bc]                                     ; $4a25: $0a
	add  hl, de                                      ; $4a26: $19
	dec  b                                           ; $4a27: $05
	ld   [bc], a                                     ; $4a28: $02
	ld   l, e                                        ; $4a29: $6b
	sbc  d                                           ; $4a2a: $9a
	ld   a, l                                        ; $4a2b: $7d
	ld   h, a                                        ; $4a2c: $67
	ld   h, d                                        ; $4a2d: $62
	ld   d, d                                        ; $4a2e: $52
	rst  $38                                         ; $4a2f: $ff
	rst  $38                                         ; $4a30: $ff
	nop                                              ; $4a31: $00
	nop                                              ; $4a32: $00
	ld   l, e                                        ; $4a33: $6b
	sbc  d                                           ; $4a34: $9a
	ld   a, l                                        ; $4a35: $7d
	add  b                                           ; $4a36: $80
	ld   [hl], a                                     ; $4a37: $77
	ld   d, d                                        ; $4a38: $52
	rst  $38                                         ; $4a39: $ff
	rst  $38                                         ; $4a3a: $ff
	nop                                              ; $4a3b: $00
	ld   bc, $9f07                                   ; $4a3c: $01 $07 $9f
	inc  bc                                          ; $4a3f: $03
	ld   [bc], a                                     ; $4a40: $02
	inc  bc                                          ; $4a41: $03
	ld   bc, $2000                                   ; $4a42: $01 $00 $20
	nop                                              ; $4a45: $00
	rlca                                             ; $4a46: $07
	xor  $03                                         ; $4a47: $ee $03
	ld   [bc], a                                     ; $4a49: $02
	inc  bc                                          ; $4a4a: $03
	ld   bc, $2001                                   ; $4a4b: $01 $01 $20
	nop                                              ; $4a4e: $00
	ld   b, $d0                                      ; $4a4f: $06 $d0
	inc  bc                                          ; $4a51: $03
	rrca                                             ; $4a52: $0f
	nop                                              ; $4a53: $00
	ld   bc, $6b01                                   ; $4a54: $01 $01 $6b
	sbc  d                                           ; $4a57: $9a
	ld   a, l                                        ; $4a58: $7d
	ld   h, a                                        ; $4a59: $67
	ld   h, d                                        ; $4a5a: $62
	ld   d, d                                        ; $4a5b: $52
	rst  $38                                         ; $4a5c: $ff
	rst  $38                                         ; $4a5d: $ff
	dec  c                                           ; $4a5e: $0d
	nop                                              ; $4a5f: $00
	ld   a, [bc]                                     ; $4a60: $0a
	inc  e                                           ; $4a61: $1c
	ld   bc, $0505                                   ; $4a62: $01 $05 $05
	dec  e                                           ; $4a65: $1d
	ld   b, b                                        ; $4a66: $40
	ld   de, $1103                                   ; $4a67: $11 $03 $11
	ld   bc, $2802                                   ; $4a6a: $01 $02 $28
	nop                                              ; $4a6d: $00
	ld   bc, $a502                                   ; $4a6e: $01 $02 $a5
	ld   l, [hl]                                     ; $4a71: $6e
	ld   e, c                                        ; $4a72: $59
	sub  a                                           ; $4a73: $97
	inc  bc                                          ; $4a74: $03
	rlca                                             ; $4a75: $07
	ld   d, [hl]                                     ; $4a76: $56
	sbc  c                                           ; $4a77: $99
	dec  b                                           ; $4a78: $05
	jr   nz, jr_068_4af0                             ; $4a79: $20 $75

	ld   h, a                                        ; $4a7b: $67
	ld   e, a                                        ; $4a7c: $5f
	ld   [hl], a                                     ; $4a7d: $77
	rst  $38                                         ; $4a7e: $ff
	rst  $38                                         ; $4a7f: $ff
	dec  c                                           ; $4a80: $0d
	nop                                              ; $4a81: $00
	ld   a, [bc]                                     ; $4a82: $0a
	inc  e                                           ; $4a83: $1c
	ld   bc, $0000                                   ; $4a84: $01 $00 $00
	ld   bc, $9166                                   ; $4a87: $01 $66 $91
	sbc  [hl]                                        ; $4a8a: $9e
	ld   d, b                                        ; $4a8b: $50
	ld   l, l                                        ; $4a8c: $6d
	ld   h, l                                        ; $4a8d: $65
	ld   [bc], a                                     ; $4a8e: $02
	ld   a, a                                        ; $4a8f: $7f
	ld   e, e                                        ; $4a90: $5b
	adc  h                                           ; $4a91: $8c
	ld   h, a                                        ; $4a92: $67
	ld   a, e                                        ; $4a93: $7b
	sbc  a                                           ; $4a94: $9f
	dec  c                                           ; $4a95: $0d
	nop                                              ; $4a96: $00
	ld   a, [bc]                                     ; $4a97: $0a
	dec  c                                           ; $4a98: $0d
	nop                                              ; $4a99: $00
	nop                                              ; $4a9a: $00
	rrca                                             ; $4a9b: $0f
	nop                                              ; $4a9c: $00
	ld   bc, $1e09                                   ; $4a9d: $01 $09 $1e
	nop                                              ; $4aa0: $00
	rrca                                             ; $4aa1: $0f
	nop                                              ; $4aa2: $00
	ld   bc, $6b01                                   ; $4aa3: $01 $01 $6b
	sbc  d                                           ; $4aa6: $9a
	ld   a, l                                        ; $4aa7: $7d
	add  b                                           ; $4aa8: $80
	ld   [hl], a                                     ; $4aa9: $77
	ld   d, d                                        ; $4aaa: $52
	rst  $38                                         ; $4aab: $ff
	rst  $38                                         ; $4aac: $ff
	dec  c                                           ; $4aad: $0d
	nop                                              ; $4aae: $00
	ld   a, [bc]                                     ; $4aaf: $0a
	inc  e                                           ; $4ab0: $1c
	ld   bc, $0404                                   ; $4ab1: $01 $04 $04
	dec  e                                           ; $4ab4: $1d
	ld   b, b                                        ; $4ab5: $40
	ld   de, $1103                                   ; $4ab6: $11 $03 $11
	ld   bc, $2901                                   ; $4ab9: $01 $01 $29
	nop                                              ; $4abc: $00
	ld   bc, $7780                                   ; $4abd: $01 $80 $77
	ld   d, d                                        ; $4ac0: $52
	rst  $38                                         ; $4ac1: $ff
	rst  $38                                         ; $4ac2: $ff
	ld   [hl], l                                     ; $4ac3: $75
	ld   h, a                                        ; $4ac4: $67
	ld   e, c                                        ; $4ac5: $59
	ld   sp, hl                                      ; $4ac6: $f9
	dec  c                                           ; $4ac7: $0d
	ld   l, e                                        ; $4ac8: $6b
	sbc  [hl]                                        ; $4ac9: $9e
	ld   l, e                                        ; $4aca: $6b
	ld   d, h                                        ; $4acb: $54
	ld   [hl], l                                     ; $4acc: $75
	ld   h, a                                        ; $4acd: $67
	sub  [hl]                                        ; $4ace: $96
	ld   a, e                                        ; $4acf: $7b
	rst  $38                                         ; $4ad0: $ff
	rst  $38                                         ; $4ad1: $ff
	dec  c                                           ; $4ad2: $0d
	nop                                              ; $4ad3: $00
	ld   a, [bc]                                     ; $4ad4: $0a
	ld   bc, $ffff                                   ; $4ad5: $01 $ff $ff
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	dec  c                                           ; $4ada: $0d
	inc  bc                                          ; $4adb: $03
	add  e                                           ; $4adc: $83
	dec  b                                           ; $4add: $05
	dec  c                                           ; $4ade: $0d
	ld   h, l                                        ; $4adf: $65
	adc  h                                           ; $4ae0: $8c
	ld   h, a                                        ; $4ae1: $67
	sbc  a                                           ; $4ae2: $9f
	dec  c                                           ; $4ae3: $0d
	nop                                              ; $4ae4: $00
	ld   a, [bc]                                     ; $4ae5: $0a
	dec  c                                           ; $4ae6: $0d
	nop                                              ; $4ae7: $00
	nop                                              ; $4ae8: $00
	rrca                                             ; $4ae9: $0f
	nop                                              ; $4aea: $00
	ld   bc, $1e09                                   ; $4aeb: $01 $09 $1e
	nop                                              ; $4aee: $00
	nop                                              ; $4aef: $00

jr_068_4af0:
	ld   d, $38                                      ; $4af0: $16 $38
	rrca                                             ; $4af2: $0f
	nop                                              ; $4af3: $00
	ld   bc, $0102                                   ; $4af4: $01 $02 $01
	ld   bc, $5003                                   ; $4af7: $01 $03 $50
	sbc  d                                           ; $4afa: $9a
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	ld   sp, hl                                      ; $4afd: $f9
	dec  c                                           ; $4afe: $0d
	db   $10                                         ; $4aff: $10
	and  e                                           ; $4b00: $a3
	and  l                                           ; $4b01: $a5
	db   $ec                                         ; $4b02: $ec
	cp   d                                           ; $4b03: $ba
	ld   e, d                                        ; $4b04: $5a
	ld   [bc], a                                     ; $4b05: $02
	jr   nz, jr_068_4b0b                             ; $4b06: $20 $03

	add  d                                           ; $4b08: $82
	ld   [hl], l                                     ; $4b09: $75
	dec  c                                           ; $4b0a: $0d

jr_068_4b0b:
	db   $10                                         ; $4b0b: $10
	ld   e, a                                        ; $4b0c: $5f
	ld   d, d                                        ; $4b0d: $52
	ld   h, c                                        ; $4b0e: $61
	ld   h, l                                        ; $4b0f: $65
	ld   [hl], h                                     ; $4b10: $74
	ld   d, d                                        ; $4b11: $52
	sbc  c                                           ; $4b12: $99
	rst  $38                                         ; $4b13: $ff
	rst  $38                                         ; $4b14: $ff
	ld   bc, $0d04                                   ; $4b15: $01 $04 $0d
	nop                                              ; $4b18: $00
	ld   a, [bc]                                     ; $4b19: $0a
	add  hl, de                                      ; $4b1a: $19
	dec  b                                           ; $4b1b: $05
	inc  bc                                          ; $4b1c: $03
	inc  b                                           ; $4b1d: $04
	add  e                                           ; $4b1e: $83
	inc  bc                                          ; $4b1f: $03
	ld   l, e                                        ; $4b20: $6b
	and  b                                           ; $4b21: $a0
	ld   h, a                                        ; $4b22: $67
	sbc  c                                           ; $4b23: $99
	nop                                              ; $4b24: $00
	nop                                              ; $4b25: $00
	inc  b                                           ; $4b26: $04
	ld   e, b                                        ; $4b27: $58
	inc  b                                           ; $4b28: $04
	ld   d, a                                        ; $4b29: $57
	ld   h, a                                        ; $4b2a: $67
	sbc  c                                           ; $4b2b: $99
	nop                                              ; $4b2c: $00
	ld   bc, $716b                                   ; $4b2d: $01 $6b $71
	halt                                             ; $4b30: $76
	ld   h, l                                        ; $4b31: $65
	ld   [hl], h                                     ; $4b32: $74
	ld   e, b                                        ; $4b33: $58
	ld   e, l                                        ; $4b34: $5d
	nop                                              ; $4b35: $00
	ld   [bc], a                                     ; $4b36: $02
	rlca                                             ; $4b37: $07
	ld   h, l                                        ; $4b38: $65
	nop                                              ; $4b39: $00
	ld   [bc], a                                     ; $4b3a: $02
	inc  bc                                          ; $4b3b: $03
	ld   bc, $2000                                   ; $4b3c: $01 $00 $20
	nop                                              ; $4b3f: $00
	rlca                                             ; $4b40: $07
	ret  c                                           ; $4b41: $d8

	nop                                              ; $4b42: $00
	ld   [bc], a                                     ; $4b43: $02
	inc  bc                                          ; $4b44: $03
	ld   bc, $2001                                   ; $4b45: $01 $01 $20
	nop                                              ; $4b48: $00
	rlca                                             ; $4b49: $07
	ld   d, e                                        ; $4b4a: $53
	ld   bc, $0302                                   ; $4b4b: $01 $02 $03
	ld   bc, $2002                                   ; $4b4e: $01 $02 $20
	nop                                              ; $4b51: $00
	ld   b, $74                                      ; $4b52: $06 $74
	ld   bc, $000f                                   ; $4b54: $01 $0f $00
	ld   bc, $d201                                   ; $4b57: $01 $01 $d2
	jp   nz, $c2d2                                   ; $4b5a: $c2 $d2 $c2

	jp   nc, $fac2                                   ; $4b5d: $d2 $c2 $fa

	dec  c                                           ; $4b60: $0d
	ld   d, h                                        ; $4b61: $54
	adc  h                                           ; $4b62: $8c
	ld   d, d                                        ; $4b63: $52
	sub  [hl]                                        ; $4b64: $96
	sbc  [hl]                                        ; $4b65: $9e
	and  e                                           ; $4b66: $a3
	and  l                                           ; $4b67: $a5
	db   $ec                                         ; $4b68: $ec
	cp   d                                           ; $4b69: $ba
	sbc  a                                           ; $4b6a: $9f
	dec  c                                           ; $4b6b: $0d
	nop                                              ; $4b6c: $00
	ld   a, [bc]                                     ; $4b6d: $0a
	dec  c                                           ; $4b6e: $0d
	nop                                              ; $4b6f: $00
	nop                                              ; $4b70: $00
	ld   c, $19                                      ; $4b71: $0e $19
	inc  e                                           ; $4b73: $1c
	inc  b                                           ; $4b74: $04
	ld   b, $06                                      ; $4b75: $06 $06
	dec  e                                           ; $4b77: $1d
	ld   b, b                                        ; $4b78: $40
	inc  d                                           ; $4b79: $14
	inc  bc                                          ; $4b7a: $03
	inc  d                                           ; $4b7b: $14
	ld   bc, $2802                                   ; $4b7c: $01 $02 $28
	nop                                              ; $4b7f: $00
	ld   bc, $9e50                                   ; $4b80: $01 $50 $9e
	ld   l, a                                        ; $4b83: $6f
	ld   d, d                                        ; $4b84: $52
	ld   [bc], a                                     ; $4b85: $02
	inc  de                                          ; $4b86: $13
	ld   l, a                                        ; $4b87: $6f
	sub  c                                           ; $4b88: $91
	and  c                                           ; $4b89: $a1
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	dec  c                                           ; $4b8c: $0d
	nop                                              ; $4b8d: $00
	inc  e                                           ; $4b8e: $1c
	inc  b                                           ; $4b8f: $04
	dec  b                                           ; $4b90: $05
	dec  b                                           ; $4b91: $05
	ld   bc, $d9a9                                   ; $4b92: $01 $a9 $d9
	reti                                             ; $4b95: $d9


	rst  $38                                         ; $4b96: $ff
	rst  $38                                         ; $4b97: $ff
	ld   d, b                                        ; $4b98: $50
	sbc  b                                           ; $4b99: $98
	ld   e, d                                        ; $4b9a: $5a
	halt                                             ; $4b9b: $76
	ld   d, h                                        ; $4b9c: $54
	sbc  a                                           ; $4b9d: $9f
	dec  c                                           ; $4b9e: $0d
	nop                                              ; $4b9f: $00
	ld   a, [bc]                                     ; $4ba0: $0a
	inc  e                                           ; $4ba1: $1c
	inc  b                                           ; $4ba2: $04
	nop                                              ; $4ba3: $00
	nop                                              ; $4ba4: $00
	ld   bc, $956f                                   ; $4ba5: $01 $6f $95
	ld   [hl], c                                     ; $4ba8: $71
	halt                                             ; $4ba9: $76
	add  b                                           ; $4baa: $80
	halt                                             ; $4bab: $76
	sbc  b                                           ; $4bac: $98
	ld   [hl], l                                     ; $4bad: $75
	sub  d                                           ; $4bae: $92
	sbc  b                                           ; $4baf: $98
	ld   l, l                                        ; $4bb0: $6d
	ld   d, d                                        ; $4bb1: $52
	ld   e, c                                        ; $4bb2: $59
	sub  a                                           ; $4bb3: $97
	dec  c                                           ; $4bb4: $0d
	adc  h                                           ; $4bb5: $8c
	ld   l, l                                        ; $4bb6: $6d
	ld   d, b                                        ; $4bb7: $50
	halt                                             ; $4bb8: $76
	ld   [hl], l                                     ; $4bb9: $75
	ld   a, e                                        ; $4bba: $7b
	sbc  a                                           ; $4bbb: $9f
	dec  c                                           ; $4bbc: $0d
	nop                                              ; $4bbd: $00
	ld   a, [bc]                                     ; $4bbe: $0a
	dec  c                                           ; $4bbf: $0d
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	rrca                                             ; $4bc2: $0f
	nop                                              ; $4bc3: $00
	ld   bc, $1e09                                   ; $4bc4: $01 $09 $1e
	nop                                              ; $4bc7: $00
	rrca                                             ; $4bc8: $0f
	nop                                              ; $4bc9: $00
	ld   bc, $5401                                   ; $4bca: $01 $01 $54
	ei                                               ; $4bcd: $fb
	and  c                                           ; $4bce: $a1
	rst  $38                                         ; $4bcf: $ff
	rst  $38                                         ; $4bd0: $ff
	dec  c                                           ; $4bd1: $0d
	ld   d, d                                        ; $4bd2: $52
	adc  h                                           ; $4bd3: $8c
	add  b                                           ; $4bd4: $80
	halt                                             ; $4bd5: $76
	ld   [hl], d                                     ; $4bd6: $72
	inc  b                                           ; $4bd7: $04
	dec  de                                          ; $4bd8: $1b
	ld   e, e                                        ; $4bd9: $5b
	ld   a, c                                        ; $4bda: $79
	dec  c                                           ; $4bdb: $0d
	xor  [hl]                                        ; $4bdc: $ae
	xor  $5a                                         ; $4bdd: $ee $5a
	ld   a, b                                        ; $4bdf: $78
	ld   d, d                                        ; $4be0: $52
	ld   a, b                                        ; $4be1: $78
	ld   c, a                                        ; $4be2: $4f
	rst  $38                                         ; $4be3: $ff
	rst  $38                                         ; $4be4: $ff
	dec  c                                           ; $4be5: $0d
	nop                                              ; $4be6: $00
	ld   a, [bc]                                     ; $4be7: $0a
	dec  c                                           ; $4be8: $0d
	nop                                              ; $4be9: $00
	nop                                              ; $4bea: $00
	ld   c, $19                                      ; $4beb: $0e $19
	inc  e                                           ; $4bed: $1c
	inc  b                                           ; $4bee: $04
	ld   b, $06                                      ; $4bef: $06 $06
	dec  e                                           ; $4bf1: $1d
	ld   b, b                                        ; $4bf2: $40
	inc  d                                           ; $4bf3: $14
	inc  bc                                          ; $4bf4: $03
	inc  d                                           ; $4bf5: $14
	ld   bc, $2903                                   ; $4bf6: $01 $03 $29
	nop                                              ; $4bf9: $00
	ld   bc, $9e50                                   ; $4bfa: $01 $50 $9e
	ld   l, a                                        ; $4bfd: $6f
	ld   d, d                                        ; $4bfe: $52
	ld   [bc], a                                     ; $4bff: $02
	inc  de                                          ; $4c00: $13
	ld   l, a                                        ; $4c01: $6f
	sub  c                                           ; $4c02: $91
	and  c                                           ; $4c03: $a1
	rst  $38                                         ; $4c04: $ff
	rst  $38                                         ; $4c05: $ff
	dec  c                                           ; $4c06: $0d
	nop                                              ; $4c07: $00
	inc  e                                           ; $4c08: $1c
	inc  b                                           ; $4c09: $04
	rlca                                             ; $4c0a: $07
	rlca                                             ; $4c0b: $07
	ld   bc, $9954                                   ; $4c0c: $01 $54 $99
	ld   h, e                                        ; $4c0f: $63
	ld   d, d                                        ; $4c10: $52
	ld   a, b                                        ; $4c11: $78
	ld   c, a                                        ; $4c12: $4f
	rst  $38                                         ; $4c13: $ff
	rst  $38                                         ; $4c14: $ff
	dec  c                                           ; $4c15: $0d
	ld   l, [hl]                                     ; $4c16: $6e
	adc  h                                           ; $4c17: $8c
	ld   [hl], c                                     ; $4c18: $71
	ld   [hl], h                                     ; $4c19: $74
	ld   [hl], h                                     ; $4c1a: $74
	sub  [hl]                                        ; $4c1b: $96
	sbc  a                                           ; $4c1c: $9f
	dec  c                                           ; $4c1d: $0d
	nop                                              ; $4c1e: $00
	ld   a, [bc]                                     ; $4c1f: $0a
	ld   bc, $a5a3                                   ; $4c20: $01 $a3 $a5
	db   $ec                                         ; $4c23: $ec
	cp   d                                           ; $4c24: $ba
	sbc  [hl]                                        ; $4c25: $9e
	add  b                                           ; $4c26: $80
	halt                                             ; $4c27: $76
	sbc  b                                           ; $4c28: $98
	ld   [hl], l                                     ; $4c29: $75
	sub  d                                           ; $4c2a: $92
	sbc  c                                           ; $4c2b: $99
	ld   a, h                                        ; $4c2c: $7c
	ld   a, [$500d]                                  ; $4c2d: $fa $0d $50
	ld   [hl], c                                     ; $4c30: $71
	ld   l, a                                        ; $4c31: $6f
	ld   d, d                                        ; $4c32: $52
	ld   [hl], c                                     ; $4c33: $71
	ld   [hl], h                                     ; $4c34: $74
	ld   [hl], h                                     ; $4c35: $74
	ld   a, [$000d]                                  ; $4c36: $fa $0d $00
	ld   a, [bc]                                     ; $4c39: $0a
	dec  c                                           ; $4c3a: $0d
	nop                                              ; $4c3b: $00
	nop                                              ; $4c3c: $00
	rrca                                             ; $4c3d: $0f
	nop                                              ; $4c3e: $00
	ld   bc, $1e09                                   ; $4c3f: $01 $09 $1e
	nop                                              ; $4c42: $00
	rrca                                             ; $4c43: $0f
	nop                                              ; $4c44: $00
	ld   bc, $0101                                   ; $4c45: $01 $01 $01
	inc  bc                                          ; $4c48: $03
	inc  bc                                          ; $4c49: $03
	ld   h, d                                        ; $4c4a: $62
	inc  b                                           ; $4c4b: $04
	dec  bc                                          ; $4c4c: $0b
	ld   h, l                                        ; $4c4d: $65
	ld   [hl], h                                     ; $4c4e: $74
	sbc  c                                           ; $4c4f: $99
	ld   e, c                                        ; $4c50: $59
	sub  a                                           ; $4c51: $97
	dec  c                                           ; $4c52: $0d
	db   $10                                         ; $4c53: $10
	ld   l, e                                        ; $4c54: $6b
	ld   [hl], c                                     ; $4c55: $71
	halt                                             ; $4c56: $76
	ld   h, l                                        ; $4c57: $65
	ld   [hl], h                                     ; $4c58: $74
	ld   e, b                                        ; $4c59: $58
	ld   h, c                                        ; $4c5a: $61
	ld   d, h                                        ; $4c5b: $54
	rst  $38                                         ; $4c5c: $ff
	rst  $38                                         ; $4c5d: $ff
	ld   bc, $0d04                                   ; $4c5e: $01 $04 $0d
	nop                                              ; $4c61: $00
	ld   a, [bc]                                     ; $4c62: $0a
	nop                                              ; $4c63: $00
	dec  c                                           ; $4c64: $0d
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	ld   c, $19                                      ; $4c67: $0e $19
	inc  e                                           ; $4c69: $1c
	inc  b                                           ; $4c6a: $04
	inc  bc                                          ; $4c6b: $03
	inc  bc                                          ; $4c6c: $03
	dec  e                                           ; $4c6d: $1d
	ld   b, b                                        ; $4c6e: $40
	inc  d                                           ; $4c6f: $14
	inc  bc                                          ; $4c70: $03
	inc  d                                           ; $4c71: $14
	ld   bc, $2902                                   ; $4c72: $01 $02 $29
	nop                                              ; $4c75: $00
	ld   bc, $ffff                                   ; $4c76: $01 $ff $ff
	ld   l, a                                        ; $4c79: $6f
	ld   d, d                                        ; $4c7a: $52
	ld   [bc], a                                     ; $4c7b: $02
	inc  de                                          ; $4c7c: $13
	ld   l, a                                        ; $4c7d: $6f
	sub  c                                           ; $4c7e: $91
	and  c                                           ; $4c7f: $a1
	sbc  a                                           ; $4c80: $9f
	dec  c                                           ; $4c81: $0d
	ld   l, [hl]                                     ; $4c82: $6e
	adc  h                                           ; $4c83: $8c
	ld   [hl], c                                     ; $4c84: $71
	ld   [hl], h                                     ; $4c85: $74
	ld   l, e                                        ; $4c86: $6b
	ld   h, c                                        ; $4c87: $61
	ld   a, c                                        ; $4c88: $79
	ld   d, d                                        ; $4c89: $52
	sub  a                                           ; $4c8a: $97
	sbc  d                                           ; $4c8b: $9a
	sbc  c                                           ; $4c8c: $99
	halt                                             ; $4c8d: $76
	dec  c                                           ; $4c8e: $0d
	ld   e, e                                        ; $4c8f: $5b
	ld   e, d                                        ; $4c90: $5a
	ld   l, a                                        ; $4c91: $6f
	ld   [hl], c                                     ; $4c92: $71
	ld   l, a                                        ; $4c93: $6f
	sub  c                                           ; $4c94: $91
	ld   d, h                                        ; $4c95: $54
	sub  [hl]                                        ; $4c96: $96
	ld   d, a                                        ; $4c97: $57
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	dec  c                                           ; $4c9a: $0d
	nop                                              ; $4c9b: $00
	ld   a, [bc]                                     ; $4c9c: $0a
	inc  e                                           ; $4c9d: $1c
	inc  b                                           ; $4c9e: $04
	ld   [bc], a                                     ; $4c9f: $02
	ld   [bc], a                                     ; $4ca0: $02
	ld   bc, $a5a3                                   ; $4ca1: $01 $a3 $a5
	db   $ec                                         ; $4ca4: $ec
	cp   d                                           ; $4ca5: $ba
	sbc  [hl]                                        ; $4ca6: $9e
	ld   d, d                                        ; $4ca7: $52
	ld   l, e                                        ; $4ca8: $6b
	ld   e, d                                        ; $4ca9: $5a
	ld   h, l                                        ; $4caa: $65
	ld   d, d                                        ; $4cab: $52
	ld   e, c                                        ; $4cac: $59
	sub  a                                           ; $4cad: $97
	dec  c                                           ; $4cae: $0d
	ld   d, b                                        ; $4caf: $50
	ld   [hl], c                                     ; $4cb0: $71
	ld   l, a                                        ; $4cb1: $6f
	ld   d, d                                        ; $4cb2: $52
	ld   [hl], c                                     ; $4cb3: $71
	ld   [hl], h                                     ; $4cb4: $74
	ld   [hl], h                                     ; $4cb5: $74
	sbc  a                                           ; $4cb6: $9f
	dec  c                                           ; $4cb7: $0d
	nop                                              ; $4cb8: $00
	ld   a, [bc]                                     ; $4cb9: $0a
	dec  c                                           ; $4cba: $0d
	nop                                              ; $4cbb: $00
	nop                                              ; $4cbc: $00
	rrca                                             ; $4cbd: $0f
	nop                                              ; $4cbe: $00
	ld   bc, $1e09                                   ; $4cbf: $01 $09 $1e
	nop                                              ; $4cc2: $00
	nop                                              ; $4cc3: $00
	ld   c, $54                                      ; $4cc4: $0e $54
	inc  e                                           ; $4cc6: $1c
	dec  b                                           ; $4cc7: $05
	nop                                              ; $4cc8: $00
	nop                                              ; $4cc9: $00
	ld   [bc], a                                     ; $4cca: $02
	ld   bc, $9e58                                   ; $4ccb: $01 $58 $9e
	ld   [$7d00], sp                                 ; $4cce: $08 $00 $7d
	and  c                                           ; $4cd1: $a1
	sbc  a                                           ; $4cd2: $9f
	dec  c                                           ; $4cd3: $0d
	xor  c                                           ; $4cd4: $a9
	xor  c                                           ; $4cd5: $a9
	halt                                             ; $4cd6: $76
	ld   h, c                                        ; $4cd7: $61
	ld   a, c                                        ; $4cd8: $79
	ld   e, e                                        ; $4cd9: $5b
	ld   l, l                                        ; $4cda: $6d
	sbc  a                                           ; $4cdb: $9f
	dec  c                                           ; $4cdc: $0d
	nop                                              ; $4cdd: $00
	ld   a, [bc]                                     ; $4cde: $0a
	ld   bc, $956f                                   ; $4cdf: $01 $6f $95
	ld   [hl], c                                     ; $4ce2: $71
	halt                                             ; $4ce3: $76
	inc  bc                                          ; $4ce4: $03
	ld   l, e                                        ; $4ce5: $6b
	inc  b                                           ; $4ce6: $04
	ld   [de], a                                     ; $4ce7: $12
	ld   [hl], c                                     ; $4ce8: $71
	ld   [hl], h                                     ; $4ce9: $74
	dec  c                                           ; $4cea: $0d
	inc  b                                           ; $4ceb: $04
	db   $e3                                         ; $4cec: $e3
	ld   h, l                                        ; $4ced: $65
	ld   d, d                                        ; $4cee: $52
	ld   a, e                                        ; $4cef: $7b
	and  c                                           ; $4cf0: $a1
	ld   e, a                                        ; $4cf1: $5f
	ld   [hl], a                                     ; $4cf2: $77
	rst  $38                                         ; $4cf3: $ff
	rst  $38                                         ; $4cf4: $ff
	sbc  a                                           ; $4cf5: $9f
	dec  c                                           ; $4cf6: $0d
	ld   [bc], a                                     ; $4cf7: $02
	and  l                                           ; $4cf8: $a5
	sbc  [hl]                                        ; $4cf9: $9e
	db   $d3                                         ; $4cfa: $d3
	rst  JumpTable                                         ; $4cfb: $df
	ld   sp, hl                                      ; $4cfc: $f9
	dec  c                                           ; $4cfd: $0d
	nop                                              ; $4cfe: $00
	ld   a, [bc]                                     ; $4cff: $0a
	add  hl, de                                      ; $4d00: $19
	dec  b                                           ; $4d01: $05
	ld   [bc], a                                     ; $4d02: $02
	db   $d3                                         ; $4d03: $d3
	rst  JumpTable                                         ; $4d04: $df
	nop                                              ; $4d05: $00
	nop                                              ; $4d06: $00
	ld   l, a                                        ; $4d07: $6f
	sub  l                                           ; $4d08: $95
	ld   [hl], c                                     ; $4d09: $71
	halt                                             ; $4d0a: $76
	inc  b                                           ; $4d0b: $04
	ld   [hl], l                                     ; $4d0c: $75
	ld   h, l                                        ; $4d0d: $65
	ld   d, d                                        ; $4d0e: $52
	nop                                              ; $4d0f: $00
	ld   bc, $6207                                   ; $4d10: $01 $07 $62
	nop                                              ; $4d13: $00
	ld   [bc], a                                     ; $4d14: $02
	inc  bc                                          ; $4d15: $03
	ld   bc, $2000                                   ; $4d16: $01 $00 $20
	nop                                              ; $4d19: $00
	rlca                                             ; $4d1a: $07
	sbc  d                                           ; $4d1b: $9a
	nop                                              ; $4d1c: $00
	ld   [bc], a                                     ; $4d1d: $02
	inc  bc                                          ; $4d1e: $03
	ld   bc, $2001                                   ; $4d1f: $01 $01 $20
	nop                                              ; $4d22: $00
	ld   b, $de                                      ; $4d23: $06 $de
	nop                                              ; $4d25: $00
	rrca                                             ; $4d26: $0f
	nop                                              ; $4d27: $00
	ld   bc, $5601                                   ; $4d28: $01 $01 $56
	ld   d, [hl]                                     ; $4d2b: $56
	sbc  [hl]                                        ; $4d2c: $9e
	ld   d, d                                        ; $4d2d: $52
	ld   d, d                                        ; $4d2e: $52
	ld   [hl], l                                     ; $4d2f: $75
	ld   h, a                                        ; $4d30: $67
	sub  [hl]                                        ; $4d31: $96
	sbc  a                                           ; $4d32: $9f
	dec  c                                           ; $4d33: $0d
	inc  b                                           ; $4d34: $04
	ld   l, l                                        ; $4d35: $6d
	ld   [hl], l                                     ; $4d36: $75
	ld   e, b                                        ; $4d37: $58
	inc  b                                           ; $4d38: $04
	db   $ec                                         ; $4d39: $ec
	ld   a, c                                        ; $4d3a: $79
	dec  b                                           ; $4d3b: $05
	ld   d, $74                                      ; $4d3c: $16 $74
	sbc  c                                           ; $4d3e: $99
	ld   a, b                                        ; $4d3f: $78
	sub  a                                           ; $4d40: $97
	sbc  a                                           ; $4d41: $9f
	dec  c                                           ; $4d42: $0d
	nop                                              ; $4d43: $00
	ld   a, [bc]                                     ; $4d44: $0a
	inc  e                                           ; $4d45: $1c
	dec  b                                           ; $4d46: $05
	ld   bc, $0101                                   ; $4d47: $01 $01 $01
	adc  c                                           ; $4d4a: $89
	ld   a, b                                        ; $4d4b: $78
	sbc  [hl]                                        ; $4d4c: $9e
	ld   a, l                                        ; $4d4d: $7d
	ld   h, [hl]                                     ; $4d4e: $66
	adc  a                                           ; $4d4f: $8f
	sub  [hl]                                        ; $4d50: $96
	ld   e, c                                        ; $4d51: $59
	dec  c                                           ; $4d52: $0d
	nop                                              ; $4d53: $00
	ld   a, [bc]                                     ; $4d54: $0a
	dec  c                                           ; $4d55: $0d
	nop                                              ; $4d56: $00
	nop                                              ; $4d57: $00
	rrca                                             ; $4d58: $0f
	nop                                              ; $4d59: $00
	ld   bc, $ff06                                   ; $4d5a: $01 $06 $ff
	nop                                              ; $4d5d: $00
	rrca                                             ; $4d5e: $0f
	nop                                              ; $4d5f: $00
	ld   bc, $6701                                   ; $4d60: $01 $01 $67
	adc  l                                           ; $4d63: $8d
	adc  h                                           ; $4d64: $8c
	ld   l, c                                        ; $4d65: $69
	and  c                                           ; $4d66: $a1
	sbc  a                                           ; $4d67: $9f
	dec  c                                           ; $4d68: $0d
	ld   l, a                                        ; $4d69: $6f
	sub  l                                           ; $4d6a: $95
	ld   [hl], c                                     ; $4d6b: $71
	halt                                             ; $4d6c: $76
	ld   h, c                                        ; $4d6d: $61
	ld   a, h                                        ; $4d6e: $7c
	ld   [bc], a                                     ; $4d6f: $02
	xor  d                                           ; $4d70: $aa
	dec  c                                           ; $4d71: $0d
	dec  b                                           ; $4d72: $05
	ld   e, a                                        ; $4d73: $5f
	inc  bc                                          ; $4d74: $03
	call nc, Call_068_505a                           ; $4d75: $d4 $5a $50
	sbc  b                                           ; $4d78: $98
	adc  h                                           ; $4d79: $8c
	ld   h, l                                        ; $4d7a: $65
	ld   [hl], h                                     ; $4d7b: $74
	rst  $38                                         ; $4d7c: $ff
	rst  $38                                         ; $4d7d: $ff
	sbc  a                                           ; $4d7e: $9f
	dec  c                                           ; $4d7f: $0d
	nop                                              ; $4d80: $00
	ld   a, [bc]                                     ; $4d81: $0a
	inc  e                                           ; $4d82: $1c
	dec  b                                           ; $4d83: $05
	ld   [bc], a                                     ; $4d84: $02
	ld   [bc], a                                     ; $4d85: $02
	ld   bc, $546b                                   ; $4d86: $01 $6b $54
	ld   e, c                                        ; $4d89: $59
	sbc  [hl]                                        ; $4d8a: $9e
	ld   h, l                                        ; $4d8b: $65
	sub  c                                           ; $4d8c: $91
	ei                                               ; $4d8d: $fb
	ld   a, b                                        ; $4d8e: $78
	ld   d, d                                        ; $4d8f: $52
	ld   a, b                                        ; $4d90: $78
	ei                                               ; $4d91: $fb
	sbc  a                                           ; $4d92: $9f
	dec  c                                           ; $4d93: $0d
	adc  c                                           ; $4d94: $89
	ld   a, b                                        ; $4d95: $78
	sbc  [hl]                                        ; $4d96: $9e
	adc  h                                           ; $4d97: $8c
	ld   l, l                                        ; $4d98: $6d
	inc  b                                           ; $4d99: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d9a: $cf
	inc  b                                           ; $4d9b: $04
	xor  d                                           ; $4d9c: $aa
	sbc  a                                           ; $4d9d: $9f
	dec  c                                           ; $4d9e: $0d
	nop                                              ; $4d9f: $00
	ld   a, [bc]                                     ; $4da0: $0a
	nop                                              ; $4da1: $00
	inc  e                                           ; $4da2: $1c
	dec  b                                           ; $4da3: $05
	ld   bc, $0101                                   ; $4da4: $01 $01 $01
	sub  [hl]                                        ; $4da7: $96
	ld   h, l                                        ; $4da8: $65
	sbc  [hl]                                        ; $4da9: $9e
	adc  c                                           ; $4daa: $89
	ld   a, b                                        ; $4dab: $78
	inc  bc                                          ; $4dac: $03
	ld   l, e                                        ; $4dad: $6b
	inc  b                                           ; $4dae: $04
	ld   [de], a                                     ; $4daf: $12
	ld   [hl], c                                     ; $4db0: $71
	ld   [hl], h                                     ; $4db1: $74
	sub  b                                           ; $4db2: $90
	sub  a                                           ; $4db3: $97
	ld   e, b                                        ; $4db4: $58
	ld   e, c                                        ; $4db5: $59
	sbc  a                                           ; $4db6: $9f
	dec  c                                           ; $4db7: $0d
	nop                                              ; $4db8: $00
	ld   a, [bc]                                     ; $4db9: $0a
	dec  c                                           ; $4dba: $0d
	nop                                              ; $4dbb: $00
	nop                                              ; $4dbc: $00
	rrca                                             ; $4dbd: $0f
	nop                                              ; $4dbe: $00
	ld   bc, $ff06                                   ; $4dbf: $01 $06 $ff
	nop                                              ; $4dc2: $00
	ld   a, [de]                                     ; $4dc3: $1a
	dec  b                                           ; $4dc4: $05
	rlca                                             ; $4dc5: $07
	adc  e                                           ; $4dc6: $8b
	ld   bc, $0402                                   ; $4dc7: $01 $02 $04
	ld   bc, $2002                                   ; $4dca: $01 $02 $20
	nop                                              ; $4dcd: $00
	rlca                                             ; $4dce: $07
	ld   d, $01                                      ; $4dcf: $16 $01
	ld   [bc], a                                     ; $4dd1: $02
	inc  b                                           ; $4dd2: $04
	ld   bc, $2001                                   ; $4dd3: $01 $01 $20
	nop                                              ; $4dd6: $00
	ld   b, $3c                                      ; $4dd7: $06 $3c
	ld   bc, $051c                                   ; $4dd9: $01 $1c $05
	nop                                              ; $4ddc: $00
	nop                                              ; $4ddd: $00
	dec  e                                           ; $4dde: $1d
	ld   b, b                                        ; $4ddf: $40
	dec  d                                           ; $4de0: $15
	inc  bc                                          ; $4de1: $03
	dec  d                                           ; $4de2: $15
	ld   bc, $2801                                   ; $4de3: $01 $01 $28
	nop                                              ; $4de6: $00
	ld   bc, $a154                                   ; $4de7: $01 $54 $a1
	sbc  a                                           ; $4dea: $9f
	ld   a, b                                        ; $4deb: $78
	ld   e, c                                        ; $4dec: $59
	ld   a, b                                        ; $4ded: $78
	ld   e, c                                        ; $4dee: $59
	sub  d                                           ; $4def: $92
	sbc  c                                           ; $4df0: $99
	sub  d                                           ; $4df1: $92
	and  c                                           ; $4df2: $a1
	sbc  a                                           ; $4df3: $9f
	dec  c                                           ; $4df4: $0d
	ld   [$7d00], sp                                 ; $4df5: $08 $00 $7d
	and  c                                           ; $4df8: $a1
	sbc  a                                           ; $4df9: $9f
	dec  c                                           ; $4dfa: $0d
	nop                                              ; $4dfb: $00
	ld   a, [bc]                                     ; $4dfc: $0a
	ld   b, $6b                                      ; $4dfd: $06 $6b
	ld   bc, $051c                                   ; $4dff: $01 $1c $05
	ld   [bc], a                                     ; $4e02: $02
	ld   [bc], a                                     ; $4e03: $02
	dec  e                                           ; $4e04: $1d
	ld   b, b                                        ; $4e05: $40
	dec  d                                           ; $4e06: $15
	inc  bc                                          ; $4e07: $03
	dec  d                                           ; $4e08: $15
	ld   bc, $2901                                   ; $4e09: $01 $01 $29
	nop                                              ; $4e0c: $00
	ld   bc, $5703                                   ; $4e0d: $01 $03 $57
	inc  bc                                          ; $4e10: $03
	sbc  c                                           ; $4e11: $99
	and  e                                           ; $4e12: $a3
	xor  h                                           ; $4e13: $ac
	push af                                          ; $4e14: $f5
	sub  d                                           ; $4e15: $92
	and  c                                           ; $4e16: $a1
	ld   e, c                                        ; $4e17: $59
	db   $fc                                         ; $4e18: $fc
	sbc  a                                           ; $4e19: $9f
	dec  c                                           ; $4e1a: $0d
	sub  b                                           ; $4e1b: $90
	ld   d, h                                        ; $4e1c: $54
	ld   l, a                                        ; $4e1d: $6f
	sub  l                                           ; $4e1e: $95
	ld   [hl], c                                     ; $4e1f: $71
	halt                                             ; $4e20: $76
	ld   e, d                                        ; $4e21: $5a
	and  c                                           ; $4e22: $a1
	ld   a, [hl]                                     ; $4e23: $7e
	ld   [hl], c                                     ; $4e24: $71
	ld   [hl], h                                     ; $4e25: $74
	db   $fc                                         ; $4e26: $fc
	ld   a, b                                        ; $4e27: $78
	sbc  a                                           ; $4e28: $9f
	dec  c                                           ; $4e29: $0d
	nop                                              ; $4e2a: $00
	ld   a, [bc]                                     ; $4e2b: $0a
	ld   b, $6b                                      ; $4e2c: $06 $6b
	ld   bc, $051c                                   ; $4e2e: $01 $1c $05
	nop                                              ; $4e31: $00
	nop                                              ; $4e32: $00
	ld   bc, $9166                                   ; $4e33: $01 $66 $91
	sbc  [hl]                                        ; $4e36: $9e
	ld   e, b                                        ; $4e37: $58
	inc  b                                           ; $4e38: $04
	ld   a, e                                        ; $4e39: $7b
	sbc  d                                           ; $4e3a: $9a
	ld   h, e                                        ; $4e3b: $63
	and  c                                           ; $4e3c: $a1
	ld   [hl], l                                     ; $4e3d: $75
	ld   h, l                                        ; $4e3e: $65
	ld   l, l                                        ; $4e3f: $6d
	sbc  a                                           ; $4e40: $9f
	dec  c                                           ; $4e41: $0d
	adc  h                                           ; $4e42: $8c
	ld   l, l                                        ; $4e43: $6d
	sbc  [hl]                                        ; $4e44: $9e
	ld   l, l                                        ; $4e45: $6d
	ld   a, h                                        ; $4e46: $7c
	adc  [hl]                                        ; $4e47: $8e
	sbc  l                                           ; $4e48: $9d
	ld   a, b                                        ; $4e49: $78
	sbc  a                                           ; $4e4a: $9f
	dec  c                                           ; $4e4b: $0d
	nop                                              ; $4e4c: $00
	ld   a, [bc]                                     ; $4e4d: $0a
	nop                                              ; $4e4e: $00
	inc  e                                           ; $4e4f: $1c
	dec  b                                           ; $4e50: $05
	ld   bc, $1d01                                   ; $4e51: $01 $01 $1d
	ld   b, b                                        ; $4e54: $40
	dec  d                                           ; $4e55: $15
	inc  bc                                          ; $4e56: $03
	dec  d                                           ; $4e57: $15
	ld   bc, $2803                                   ; $4e58: $01 $03 $28
	nop                                              ; $4e5b: $00
	ld   bc, $b5ba                                   ; $4e5c: $01 $ba $b5
	and  l                                           ; $4e5f: $a5
	sub  d                                           ; $4e60: $92
	and  c                                           ; $4e61: $a1
	ld   a, [$080d]                                  ; $4e62: $fa $0d $08
	nop                                              ; $4e65: $00
	ld   a, l                                        ; $4e66: $7d
	and  c                                           ; $4e67: $a1
	sbc  a                                           ; $4e68: $9f
	dec  c                                           ; $4e69: $0d
	ld   h, e                                        ; $4e6a: $63
	ld   h, a                                        ; $4e6b: $67
	ld   e, d                                        ; $4e6c: $5a
	sub  d                                           ; $4e6d: $92
	sbc  l                                           ; $4e6e: $9d
	sbc  a                                           ; $4e6f: $9f
	dec  c                                           ; $4e70: $0d
	nop                                              ; $4e71: $00
	ld   a, [bc]                                     ; $4e72: $0a
	ld   bc, $546b                                   ; $4e73: $01 $6b $54
	sub  d                                           ; $4e76: $92
	sbc  [hl]                                        ; $4e77: $9e
	dec  c                                           ; $4e78: $0d
	ld   [bc], a                                     ; $4e79: $02
	and  l                                           ; $4e7a: $a5
	inc  b                                           ; $4e7b: $04
	ld   e, d                                        ; $4e7c: $5a
	sbc  [hl]                                        ; $4e7d: $9e
	inc  bc                                          ; $4e7e: $03
	ld   l, a                                        ; $4e7f: $6f
	ld   [bc], a                                     ; $4e80: $02
	xor  c                                           ; $4e81: $a9
	ld   d, b                                        ; $4e82: $50
	sbc  c                                           ; $4e83: $99
	ld   sp, hl                                      ; $4e84: $f9
	dec  c                                           ; $4e85: $0d
	nop                                              ; $4e86: $00
	ld   a, [bc]                                     ; $4e87: $0a
	add  hl, de                                      ; $4e88: $19
	dec  b                                           ; $4e89: $05
	ld   [bc], a                                     ; $4e8a: $02
	ld   d, b                                        ; $4e8b: $50
	sbc  c                                           ; $4e8c: $99
	nop                                              ; $4e8d: $00
	nop                                              ; $4e8e: $00
	ld   a, b                                        ; $4e8f: $78
	ld   d, d                                        ; $4e90: $52
	nop                                              ; $4e91: $00
	ld   bc, $e407                                   ; $4e92: $01 $07 $e4
	ld   bc, $0302                                   ; $4e95: $01 $02 $03
	ld   bc, $2000                                   ; $4e98: $01 $00 $20
	nop                                              ; $4e9b: $00
	rlca                                             ; $4e9c: $07
	ld   d, l                                        ; $4e9d: $55
	ld   [bc], a                                     ; $4e9e: $02
	ld   [bc], a                                     ; $4e9f: $02
	inc  bc                                          ; $4ea0: $03
	ld   bc, $2001                                   ; $4ea1: $01 $01 $20
	nop                                              ; $4ea4: $00
	ld   b, $94                                      ; $4ea5: $06 $94
	ld   [bc], a                                     ; $4ea7: $02
	rrca                                             ; $4ea8: $0f
	nop                                              ; $4ea9: $00
	ld   bc, $5001                                   ; $4eaa: $01 $01 $50
	sbc  b                                           ; $4ead: $98
	adc  h                                           ; $4eae: $8c
	ld   h, a                                        ; $4eaf: $67
	sub  [hl]                                        ; $4eb0: $96
	sbc  a                                           ; $4eb1: $9f
	dec  c                                           ; $4eb2: $0d
	nop                                              ; $4eb3: $00
	ld   a, [bc]                                     ; $4eb4: $0a
	rrca                                             ; $4eb5: $0f
	dec  b                                           ; $4eb6: $05
	ld   bc, $401d                                   ; $4eb7: $01 $1d $40
	dec  d                                           ; $4eba: $15
	inc  bc                                          ; $4ebb: $03
	dec  d                                           ; $4ebc: $15
	ld   bc, $2801                                   ; $4ebd: $01 $01 $28
	nop                                              ; $4ec0: $00
	ld   bc, $546b                                   ; $4ec1: $01 $6b $54
	ld   e, c                                        ; $4ec4: $59
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $4ec5: $fa $10 $0d
	ld   l, e                                        ; $4ec8: $6b
	ld   h, l                                        ; $4ec9: $65
	ld   l, l                                        ; $4eca: $6d
	sub  a                                           ; $4ecb: $97
	sbc  [hl]                                        ; $4ecc: $9e
	ld   [bc], a                                     ; $4ecd: $02
	and  l                                           ; $4ece: $a5
	inc  b                                           ; $4ecf: $04
	ld   e, d                                        ; $4ed0: $5a
	and  a                                           ; $4ed1: $a7
	jp   nz, $047c                                   ; $4ed2: $c2 $7c $04

	sub  l                                           ; $4ed5: $95
	ld   [bc], a                                     ; $4ed6: $02
	ld   hl, $000d                                   ; $4ed7: $21 $0d $00
	dec  b                                           ; $4eda: $05
	ld   b, b                                        ; $4edb: $40
	ld   h, d                                        ; $4edc: $62
	ld   [bc], a                                     ; $4edd: $02
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	ld   bc, $5879                                   ; $4ee0: $01 $79 $58
	ld   d, d                                        ; $4ee3: $52
	ld   [hl], l                                     ; $4ee4: $75
	sbc  a                                           ; $4ee5: $9f
	dec  c                                           ; $4ee6: $0d
	nop                                              ; $4ee7: $00
	ld   a, [bc]                                     ; $4ee8: $0a
	inc  e                                           ; $4ee9: $1c
	dec  b                                           ; $4eea: $05
	dec  b                                           ; $4eeb: $05
	dec  b                                           ; $4eec: $05
	ld   bc, $a9a9                                   ; $4eed: $01 $a9 $a9
	sub  b                                           ; $4ef0: $90
	and  c                                           ; $4ef1: $a1
	ld   [bc], a                                     ; $4ef2: $02
	sub  l                                           ; $4ef3: $95
	ld   l, c                                        ; $4ef4: $69
	ld   l, l                                        ; $4ef5: $6d
	sbc  c                                           ; $4ef6: $99
	ld   h, e                                        ; $4ef7: $63
	ld   e, c                                        ; $4ef8: $59
	ld   d, d                                        ; $4ef9: $52
	ld   a, c                                        ; $4efa: $79
	sbc  a                                           ; $4efb: $9f
	dec  c                                           ; $4efc: $0d
	inc  bc                                          ; $4efd: $03
	ld   e, a                                        ; $4efe: $5f
	inc  b                                           ; $4eff: $04
	dec  b                                           ; $4f00: $05
	ld   a, c                                        ; $4f01: $79
	ld   e, e                                        ; $4f02: $5b
	ld   [hl], h                                     ; $4f03: $74
	sub  d                                           ; $4f04: $92
	sbc  a                                           ; $4f05: $9f
	dec  c                                           ; $4f06: $0d
	inc  b                                           ; $4f07: $04
	rla                                              ; $4f08: $17
	ld   [hl], c                                     ; $4f09: $71
	ld   [hl], h                                     ; $4f0a: $74
	sbc  c                                           ; $4f0b: $99
	ld   e, c                                        ; $4f0c: $59
	sub  a                                           ; $4f0d: $97
	sbc  a                                           ; $4f0e: $9f
	dec  c                                           ; $4f0f: $0d
	nop                                              ; $4f10: $00
	ld   a, [bc]                                     ; $4f11: $0a
	dec  b                                           ; $4f12: $05
	add  b                                           ; $4f13: $80
	inc  l                                           ; $4f14: $2c
	ld   bc, $0001                                   ; $4f15: $01 $01 $00
	nop                                              ; $4f18: $00
	rrca                                             ; $4f19: $0f
	nop                                              ; $4f1a: $00
	ld   bc, $6701                                   ; $4f1b: $01 $01 $67
	adc  l                                           ; $4f1e: $8d
	adc  h                                           ; $4f1f: $8c
	ld   l, c                                        ; $4f20: $69
	and  c                                           ; $4f21: $a1
	sbc  a                                           ; $4f22: $9f
	dec  c                                           ; $4f23: $0d
	ld   [bc], a                                     ; $4f24: $02
	and  l                                           ; $4f25: $a5
	inc  b                                           ; $4f26: $04
	ld   e, d                                        ; $4f27: $5a
	ld   a, l                                        ; $4f28: $7d
	ld   l, a                                        ; $4f29: $6f
	sub  l                                           ; $4f2a: $95
	ld   [hl], c                                     ; $4f2b: $71
	halt                                             ; $4f2c: $76
	rst  $38                                         ; $4f2d: $ff
	rst  $38                                         ; $4f2e: $ff
	dec  c                                           ; $4f2f: $0d
	nop                                              ; $4f30: $00
	ld   a, [bc]                                     ; $4f31: $0a
	inc  e                                           ; $4f32: $1c
	dec  b                                           ; $4f33: $05
	ld   [bc], a                                     ; $4f34: $02
	ld   [bc], a                                     ; $4f35: $02
	ld   bc, $546b                                   ; $4f36: $01 $6b $54
	ld   e, c                                        ; $4f39: $59
	sbc  a                                           ; $4f3a: $9f
	dec  c                                           ; $4f3b: $0d
	adc  h                                           ; $4f3c: $8c
	ld   d, b                                        ; $4f3d: $50
	sbc  [hl]                                        ; $4f3e: $9e
	ld   h, l                                        ; $4f3f: $65
	sub  c                                           ; $4f40: $91
	ei                                               ; $4f41: $fb
	ld   a, b                                        ; $4f42: $78
	ld   d, d                                        ; $4f43: $52
	ld   a, b                                        ; $4f44: $78
	sbc  a                                           ; $4f45: $9f
	dec  c                                           ; $4f46: $0d
	adc  c                                           ; $4f47: $89
	ld   a, b                                        ; $4f48: $78
	sbc  [hl]                                        ; $4f49: $9e
	ld   e, b                                        ; $4f4a: $58
	inc  b                                           ; $4f4b: $04
	ld   a, e                                        ; $4f4c: $7b
	sbc  d                                           ; $4f4d: $9a
	ld   h, e                                        ; $4f4e: $63
	and  c                                           ; $4f4f: $a1
	ld   [hl], l                                     ; $4f50: $75
	ld   h, l                                        ; $4f51: $65
	ld   l, l                                        ; $4f52: $6d
	sbc  a                                           ; $4f53: $9f
	dec  c                                           ; $4f54: $0d
	nop                                              ; $4f55: $00
	ld   a, [bc]                                     ; $4f56: $0a
	nop                                              ; $4f57: $00
	inc  e                                           ; $4f58: $1c
	dec  b                                           ; $4f59: $05
	ld   [bc], a                                     ; $4f5a: $02
	ld   [bc], a                                     ; $4f5b: $02
	ld   bc, $9e50                                   ; $4f5c: $01 $50 $9e
	inc  b                                           ; $4f5f: $04
	ld   [hl], l                                     ; $4f60: $75
	ld   h, l                                        ; $4f61: $65
	ld   d, d                                        ; $4f62: $52
	ld   a, e                                        ; $4f63: $7b
	sub  d                                           ; $4f64: $92
	ld   [hl], c                                     ; $4f65: $71

jr_068_4f66:
	ld   l, l                                        ; $4f66: $6d
	sub  a                                           ; $4f67: $97
	dec  c                                           ; $4f68: $0d
	ldh  [c], a                                      ; $4f69: $e2
	db   $ec                                         ; $4f6a: $ec
	ld   l, c                                        ; $4f6b: $69
	and  c                                           ; $4f6c: $a1
	ld   [hl], l                                     ; $4f6d: $75
	xor  c                                           ; $4f6e: $a9
	xor  c                                           ; $4f6f: $a9
	ld   [hl], l                                     ; $4f70: $75
	sbc  a                                           ; $4f71: $9f
	dec  c                                           ; $4f72: $0d
	adc  c                                           ; $4f73: $89
	ld   a, b                                        ; $4f74: $78
	sbc  [hl]                                        ; $4f75: $9e
	ld   e, b                                        ; $4f76: $58
	inc  b                                           ; $4f77: $04
	ld   a, e                                        ; $4f78: $7b
	sbc  d                                           ; $4f79: $9a
	ld   h, e                                        ; $4f7a: $63
	and  c                                           ; $4f7b: $a1
	ld   [hl], l                                     ; $4f7c: $75
	ld   h, l                                        ; $4f7d: $65
	ld   l, l                                        ; $4f7e: $6d
	sbc  a                                           ; $4f7f: $9f
	dec  c                                           ; $4f80: $0d
	nop                                              ; $4f81: $00
	ld   a, [bc]                                     ; $4f82: $0a
	nop                                              ; $4f83: $00
	nop                                              ; $4f84: $00
	rrca                                             ; $4f85: $0f
	nop                                              ; $4f86: $00
	ld   bc, $020d                                   ; $4f87: $01 $0d $02
	nop                                              ; $4f8a: $00
	ld   [bc], a                                     ; $4f8b: $02
	ld   bc, $8d67                                   ; $4f8c: $01 $67 $8d
	sbc  d                                           ; $4f8f: $9a
	ld   h, e                                        ; $4f90: $63
	and  c                                           ; $4f91: $a1
	sbc  a                                           ; $4f92: $9f
	dec  c                                           ; $4f93: $0d
	ld   e, b                                        ; $4f94: $58
	inc  b                                           ; $4f95: $04
	ld   a, e                                        ; $4f96: $7b
	sbc  d                                           ; $4f97: $9a
	ld   h, e                                        ; $4f98: $63
	adc  h                                           ; $4f99: $8c
	ld   [hl], l                                     ; $4f9a: $75
	ld   h, a                                        ; $4f9b: $67
	sbc  a                                           ; $4f9c: $9f
	dec  c                                           ; $4f9d: $0d
	nop                                              ; $4f9e: $00
	ld   a, [bc]                                     ; $4f9f: $0a
	inc  e                                           ; $4fa0: $1c
	ld   [bc], a                                     ; $4fa1: $02
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	ld   bc, $9750                                   ; $4fa4: $01 $50 $97
	sbc  [hl]                                        ; $4fa7: $9e
	ld   [$6300], sp                                 ; $4fa8: $08 $00 $63
	and  c                                           ; $4fab: $a1
	sbc  a                                           ; $4fac: $9f
	dec  c                                           ; $4fad: $0d
	ld   l, a                                        ; $4fae: $6f
	sub  l                                           ; $4faf: $95
	ld   d, h                                        ; $4fb0: $54
	ld   [hl], a                                     ; $4fb1: $77
	sub  [hl]                                        ; $4fb2: $96
	ld   d, d                                        ; $4fb3: $52
	halt                                             ; $4fb4: $76
	ld   h, c                                        ; $4fb5: $61
	sbc  e                                           ; $4fb6: $9b
	ld   a, c                                        ; $4fb7: $79
	sbc  a                                           ; $4fb8: $9f
	dec  c                                           ; $4fb9: $0d
	nop                                              ; $4fba: $00
	ld   a, [bc]                                     ; $4fbb: $0a
	ld   bc, $7850                                   ; $4fbc: $01 $50 $78
	ld   l, l                                        ; $4fbf: $6d
	ld   a, h                                        ; $4fc0: $7c
	ld   [bc], a                                     ; $4fc1: $02
	dec  sp                                          ; $4fc2: $3b
	ld   [bc], a                                     ; $4fc3: $02
	jr   nc, jr_068_4f66                             ; $4fc4: $30 $a0

	dec  b                                           ; $4fc6: $05
	sub  $71                                         ; $4fc7: $d6 $71
	ld   [hl], h                                     ; $4fc9: $74
	dec  c                                           ; $4fca: $0d
	ld   h, e                                        ; $4fcb: $63
	ld   h, l                                        ; $4fcc: $65
	inc  bc                                          ; $4fcd: $03
	ld   h, l                                        ; $4fce: $65
	ld   h, b                                        ; $4fcf: $60
	adc  h                                           ; $4fd0: $8c
	ld   h, a                                        ; $4fd1: $67
	sbc  l                                           ; $4fd2: $9d
	sbc  a                                           ; $4fd3: $9f
	dec  c                                           ; $4fd4: $0d
	ld   d, d                                        ; $4fd5: $52
	ld   e, e                                        ; $4fd6: $5b
	adc  h                                           ; $4fd7: $8c
	ld   h, a                                        ; $4fd8: $67
	sbc  l                                           ; $4fd9: $9d
	sub  [hl]                                        ; $4fda: $96
	sbc  a                                           ; $4fdb: $9f
	dec  c                                           ; $4fdc: $0d
	nop                                              ; $4fdd: $00
	ld   a, [bc]                                     ; $4fde: $0a
	ld   bc, $7250                                   ; $4fdf: $01 $50 $72
	ld   d, d                                        ; $4fe2: $52
	ld   [bc], a                                     ; $4fe3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fe4: $cf
	inc  bc                                          ; $4fe5: $03
	jp   Jump_068_505a                               ; $4fe6: $c3 $5a $50


	sbc  b                                           ; $4fe9: $98
	adc  h                                           ; $4fea: $8c
	ld   h, a                                        ; $4feb: $67
	sbc  a                                           ; $4fec: $9f
	dec  c                                           ; $4fed: $0d
	ld   [$6300], sp                                 ; $4fee: $08 $00 $63
	and  c                                           ; $4ff1: $a1
	ld   a, b                                        ; $4ff2: $78
	sub  a                                           ; $4ff3: $97
	ld   [hl], a                                     ; $4ff4: $77
	sbc  d                                           ; $4ff5: $9a
	ld   e, l                                        ; $4ff6: $5d
	sub  a                                           ; $4ff7: $97
	ld   d, d                                        ; $4ff8: $52
	dec  c                                           ; $4ff9: $0d
	ld   [bc], a                                     ; $4ffa: $02
	rlca                                             ; $4ffb: $07
	adc  l                                           ; $4ffc: $8d
	adc  h                                           ; $4ffd: $8c
	ld   h, a                                        ; $4ffe: $67
	ld   e, c                                        ; $4fff: $59
	ld   sp, hl                                      ; $5000: $f9
	dec  c                                           ; $5001: $0d
	nop                                              ; $5002: $00
	ld   a, [bc]                                     ; $5003: $0a
	add  hl, de                                      ; $5004: $19
	dec  b                                           ; $5005: $05
	inc  bc                                          ; $5006: $03
	ld   l, a                                        ; $5007: $6f
	sub  l                                           ; $5008: $95
	ld   [hl], c                                     ; $5009: $71
	halt                                             ; $500a: $76
	nop                                              ; $500b: $00
	nop                                              ; $500c: $00
	inc  b                                           ; $500d: $04
	ld   [hl], d                                     ; $500e: $72
	inc  b                                           ; $500f: $04
	sbc  [hl]                                        ; $5010: $9e
	nop                                              ; $5011: $00
	ld   bc, $5703                                   ; $5012: $01 $03 $57
	inc  b                                           ; $5015: $04
	sub  l                                           ; $5016: $95
	nop                                              ; $5017: $00
	ld   [bc], a                                     ; $5018: $02
	rlca                                             ; $5019: $07
	or   d                                           ; $501a: $b2
	nop                                              ; $501b: $00
	ld   [bc], a                                     ; $501c: $02
	inc  bc                                          ; $501d: $03
	ld   bc, $2000                                   ; $501e: $01 $00 $20
	nop                                              ; $5021: $00
	rlca                                             ; $5022: $07
	ld   a, [$0200]                                  ; $5023: $fa $00 $02
	inc  bc                                          ; $5026: $03
	ld   bc, $2001                                   ; $5027: $01 $01 $20
	nop                                              ; $502a: $00
	rlca                                             ; $502b: $07
	ld   b, a                                        ; $502c: $47
	ld   bc, $0302                                   ; $502d: $01 $02 $03
	ld   bc, $2002                                   ; $5030: $01 $02 $20
	nop                                              ; $5033: $00
	ld   b, $a0                                      ; $5034: $06 $a0
	ld   bc, $021c                                   ; $5036: $01 $1c $02
	nop                                              ; $5039: $00
	nop                                              ; $503a: $00
	ld   bc, $956f                                   ; $503b: $01 $6f $95
	ld   [hl], c                                     ; $503e: $71
	halt                                             ; $503f: $76
	ld   [hl], l                                     ; $5040: $75
	ld   h, a                                        ; $5041: $67
	ld   a, h                                        ; $5042: $7c
	ld   sp, hl                                      ; $5043: $f9
	dec  c                                           ; $5044: $0d
	ld   d, b                                        ; $5045: $50
	ld   a, b                                        ; $5046: $78
	ld   l, l                                        ; $5047: $6d
	ld   a, l                                        ; $5048: $7d
	sbc  [hl]                                        ; $5049: $9e
	or   h                                           ; $504a: $b4
	push bc                                          ; $504b: $c5
	or   h                                           ; $504c: $b4
	push bc                                          ; $504d: $c5
	ld   l, l                                        ; $504e: $6d
	adc  a                                           ; $504f: $8f
	sbc  c                                           ; $5050: $99
	dec  c                                           ; $5051: $0d
	ret  nz                                          ; $5052: $c0

	and  l                                           ; $5053: $a5
	ret  c                                           ; $5054: $d8

	rst  $38                                         ; $5055: $ff
	rst  $38                                         ; $5056: $ff
	ld   [hl], l                                     ; $5057: $75
	ld   h, a                                        ; $5058: $67
	ld   [hl], c                                     ; $5059: $71

Call_068_505a:
Jump_068_505a:
	ld   [hl], h                                     ; $505a: $74
	sbc  a                                           ; $505b: $9f
	dec  c                                           ; $505c: $0d
	nop                                              ; $505d: $00
	ld   a, [bc]                                     ; $505e: $0a
	inc  e                                           ; $505f: $1c
	ld   [bc], a                                     ; $5060: $02
	ld   b, $06                                      ; $5061: $06 $06
	dec  e                                           ; $5063: $1d
	ld   b, b                                        ; $5064: $40
	ld   [de], a                                     ; $5065: $12
	inc  bc                                          ; $5066: $03
	ld   [de], a                                     ; $5067: $12
	ld   bc, $2902                                   ; $5068: $01 $02 $29
	nop                                              ; $506b: $00
	ld   bc, $a178                                   ; $506c: $01 $78 $a1
	ld   l, [hl]                                     ; $506f: $6e
	ld   e, c                                        ; $5070: $59
	sbc  [hl]                                        ; $5071: $9e
	ld   h, l                                        ; $5072: $65
	sub  l                                           ; $5073: $95
	adc  d                                           ; $5074: $8a
	ld   d, d                                        ; $5075: $52
	ld   [hl], l                                     ; $5076: $75
	ld   h, a                                        ; $5077: $67
	sbc  l                                           ; $5078: $9d
	ld   a, e                                        ; $5079: $7b
	sbc  a                                           ; $507a: $9f
	dec  c                                           ; $507b: $0d
	nop                                              ; $507c: $00
	ld   a, [bc]                                     ; $507d: $0a
	nop                                              ; $507e: $00
	inc  e                                           ; $507f: $1c
	ld   [bc], a                                     ; $5080: $02
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	ld   bc, $7204                                   ; $5083: $01 $04 $72
	inc  b                                           ; $5086: $04
	sbc  [hl]                                        ; $5087: $9e
	ld   [hl], l                                     ; $5088: $75
	ld   h, a                                        ; $5089: $67
	ld   a, h                                        ; $508a: $7c
	ld   sp, hl                                      ; $508b: $f9
	dec  c                                           ; $508c: $0d
	inc  b                                           ; $508d: $04
	cp   e                                           ; $508e: $bb
	inc  b                                           ; $508f: $04
	cp   h                                           ; $5090: $bc
	ld   a, c                                        ; $5091: $79
	sub  b                                           ; $5092: $90
	inc  b                                           ; $5093: $04
	ld   c, $02                                      ; $5094: $0e $02
	dec  sp                                          ; $5096: $3b
	inc  bc                                          ; $5097: $03
	and  b                                           ; $5098: $a0
	ld   l, a                                        ; $5099: $6f
	ld   a, c                                        ; $509a: $79
	sub  b                                           ; $509b: $90
	ld   a, b                                        ; $509c: $78
	sub  a                                           ; $509d: $97
	ld   a, b                                        ; $509e: $78
	ld   d, d                                        ; $509f: $52
	dec  c                                           ; $50a0: $0d
	inc  b                                           ; $50a1: $04
	dec  bc                                          ; $50a2: $0b
	inc  b                                           ; $50a3: $04
	ld   [hl-], a                                    ; $50a4: $32
	inc  b                                           ; $50a5: $04
	ld   [hl], d                                     ; $50a6: $72
	inc  b                                           ; $50a7: $04
	sbc  e                                           ; $50a8: $9b
	ld   a, b                                        ; $50a9: $78
	ret  nz                                          ; $50aa: $c0

	and  l                                           ; $50ab: $a5
	ret  c                                           ; $50ac: $d8

	ld   [hl], l                                     ; $50ad: $75
	ld   h, a                                        ; $50ae: $67
	ld   [hl], c                                     ; $50af: $71
	ld   [hl], h                                     ; $50b0: $74
	sbc  a                                           ; $50b1: $9f
	dec  c                                           ; $50b2: $0d
	nop                                              ; $50b3: $00
	ld   a, [bc]                                     ; $50b4: $0a
	inc  e                                           ; $50b5: $1c
	ld   [bc], a                                     ; $50b6: $02
	dec  b                                           ; $50b7: $05
	dec  b                                           ; $50b8: $05
	ld   bc, $c403                                   ; $50b9: $01 $03 $c4
	inc  b                                           ; $50bc: $04
	sbc  $04                                         ; $50bd: $de $04
	ret  z                                           ; $50bf: $c8

	inc  bc                                          ; $50c0: $03
	add  b                                           ; $50c1: $80
	ld   h, l                                        ; $50c2: $65
	ld   [hl], l                                     ; $50c3: $75
	ld   h, a                                        ; $50c4: $67
	sbc  l                                           ; $50c5: $9d
	ld   a, e                                        ; $50c6: $7b
	sbc  a                                           ; $50c7: $9f
	dec  c                                           ; $50c8: $0d
	nop                                              ; $50c9: $00
	ld   a, [bc]                                     ; $50ca: $0a
	nop                                              ; $50cb: $00
	inc  e                                           ; $50cc: $1c
	ld   [bc], a                                     ; $50cd: $02
	nop                                              ; $50ce: $00
	nop                                              ; $50cf: $00
	ld   bc, $5703                                   ; $50d0: $01 $03 $57
	inc  b                                           ; $50d3: $04
	sub  l                                           ; $50d4: $95
	ld   [hl], l                                     ; $50d5: $75
	ld   h, a                                        ; $50d6: $67
	ld   a, h                                        ; $50d7: $7c
	ld   sp, hl                                      ; $50d8: $f9
	dec  c                                           ; $50d9: $0d
	ld   [bc], a                                     ; $50da: $02
	jr   nz, jr_068_50df                             ; $50db: $20 $02

	sub  $03                                         ; $50dd: $d6 $03

jr_068_50df:
	xor  d                                           ; $50df: $aa
	ld   [bc], a                                     ; $50e0: $02
	dec  sp                                          ; $50e1: $3b
	ld   e, c                                        ; $50e2: $59
	inc  b                                           ; $50e3: $04
	sub  $02                                         ; $50e4: $d6 $02
	jr   nz, jr_068_50ec                             ; $50e6: $20 $04

	sub  b                                           ; $50e8: $90
	ld   e, c                                        ; $50e9: $59
	ld   a, h                                        ; $50ea: $7c
	dec  c                                           ; $50eb: $0d

jr_068_50ec:
	ld   a, l                                        ; $50ec: $7d
	adc  a                                           ; $50ed: $8f
	ld   [hl], d                                     ; $50ee: $72
	ret  nz                                          ; $50ef: $c0

	and  l                                           ; $50f0: $a5
	ret  c                                           ; $50f1: $d8

	ld   [hl], l                                     ; $50f2: $75
	ld   h, a                                        ; $50f3: $67
	ld   [hl], c                                     ; $50f4: $71
	ld   [hl], h                                     ; $50f5: $74
	sbc  a                                           ; $50f6: $9f
	dec  c                                           ; $50f7: $0d
	nop                                              ; $50f8: $00
	ld   a, [bc]                                     ; $50f9: $0a
	inc  e                                           ; $50fa: $1c
	ld   [bc], a                                     ; $50fb: $02
	ld   bc, $1d01                                   ; $50fc: $01 $01 $1d
	ld   b, b                                        ; $50ff: $40
	ld   [de], a                                     ; $5100: $12
	inc  bc                                          ; $5101: $03
	ld   [de], a                                     ; $5102: $12
	ld   bc, $2802                                   ; $5103: $01 $02 $28
	nop                                              ; $5106: $00
	ld   bc, $2d05                                   ; $5107: $01 $05 $2d
	inc  b                                           ; $510a: $04
	or   d                                           ; $510b: $b2
	ld   a, l                                        ; $510c: $7d
	ld   d, b                                        ; $510d: $50
	sbc  c                                           ; $510e: $99
	ld   [hl], c                                     ; $510f: $71
	ld   [hl], h                                     ; $5110: $74
	ld   h, c                                        ; $5111: $61
	halt                                             ; $5112: $76
	ld   [hl], l                                     ; $5113: $75
	ld   h, a                                        ; $5114: $67
	sbc  l                                           ; $5115: $9d
	sbc  a                                           ; $5116: $9f
	dec  c                                           ; $5117: $0d
	ld   e, d                                        ; $5118: $5a
	and  c                                           ; $5119: $a1
	ld   a, [hl]                                     ; $511a: $7e
	sbc  b                                           ; $511b: $98
	ld   a, b                                        ; $511c: $78
	ld   h, e                                        ; $511d: $63
	ld   d, d                                        ; $511e: $52
	ld   a, b                                        ; $511f: $78
	sbc  a                                           ; $5120: $9f
	dec  c                                           ; $5121: $0d
	nop                                              ; $5122: $00
	ld   a, [bc]                                     ; $5123: $0a
	nop                                              ; $5124: $00
	inc  e                                           ; $5125: $1c
	ld   [bc], a                                     ; $5126: $02
	rlca                                             ; $5127: $07
	rlca                                             ; $5128: $07
	ld   bc, $6b58                                   ; $5129: $01 $58 $6b
	ld   d, d                                        ; $512c: $52
	ld   [hl], l                                     ; $512d: $75
	ld   h, a                                        ; $512e: $67
	sbc  l                                           ; $512f: $9d
	sbc  a                                           ; $5130: $9f
	dec  c                                           ; $5131: $0d
	sub  h                                           ; $5132: $94
	ld   d, h                                        ; $5133: $54
	ld   h, [hl]                                     ; $5134: $66
	sub  e                                           ; $5135: $93
	ld   d, h                                        ; $5136: $54
	add  e                                           ; $5137: $83
	ld   l, [hl]                                     ; $5138: $6e
	and  c                                           ; $5139: $a1
	ld   [hl], l                                     ; $513a: $75
	ld   h, a                                        ; $513b: $67
	ld   a, h                                        ; $513c: $7c
	ld   a, e                                        ; $513d: $7b
	sbc  a                                           ; $513e: $9f
	dec  c                                           ; $513f: $0d
	nop                                              ; $5140: $00
	ld   a, [bc]                                     ; $5141: $0a
	dec  e                                           ; $5142: $1d
	ld   b, b                                        ; $5143: $40
	ld   [de], a                                     ; $5144: $12
	inc  bc                                          ; $5145: $03
	ld   [de], a                                     ; $5146: $12
	ld   bc, $2902                                   ; $5147: $01 $02 $29
	nop                                              ; $514a: $00
	ld   bc, $a16b                                   ; $514b: $01 $6b $a1
	ld   a, b                                        ; $514e: $78
	ld   h, c                                        ; $514f: $61
	halt                                             ; $5150: $76
	ld   h, [hl]                                     ; $5151: $66
	sub  c                                           ; $5152: $91
	dec  c                                           ; $5153: $0d
	dec  b                                           ; $5154: $05
	sub  $54                                         ; $5155: $d6 $54
	adc  h                                           ; $5157: $8c
	ld   [hl], l                                     ; $5158: $75
	sub  b                                           ; $5159: $90
	ld   a, b                                        ; $515a: $78
	ld   e, l                                        ; $515b: $5d
	dec  c                                           ; $515c: $0d
	inc  b                                           ; $515d: $04
	cp   e                                           ; $515e: $bb
	inc  b                                           ; $515f: $04
	cp   h                                           ; $5160: $bc
	adc  h                                           ; $5161: $8c
	ld   [hl], c                                     ; $5162: $71
	ld   h, l                                        ; $5163: $65
	ld   e, [hl]                                     ; $5164: $5e
	sub  a                                           ; $5165: $97
	ld   [hl], l                                     ; $5166: $75
	ld   h, a                                        ; $5167: $67
	sbc  l                                           ; $5168: $9d
	sbc  a                                           ; $5169: $9f
	dec  c                                           ; $516a: $0d
	nop                                              ; $516b: $00
	ld   a, [bc]                                     ; $516c: $0a
	nop                                              ; $516d: $00
	nop                                              ; $516e: $00
	ld   c, $6f                                      ; $516f: $0e $6f
	dec  c                                           ; $5171: $0d
	ld   b, $00                                      ; $5172: $06 $00
	rrca                                             ; $5174: $0f
	nop                                              ; $5175: $00
	ld   bc, $0102                                   ; $5176: $01 $02 $01
	xor  h                                           ; $5179: $ac
	push af                                          ; $517a: $f5
	bit  4, e                                        ; $517b: $cb $63
	and  c                                           ; $517d: $a1
	sbc  a                                           ; $517e: $9f
	dec  c                                           ; $517f: $0d
	nop                                              ; $5180: $00
	ld   a, [bc]                                     ; $5181: $0a
	rrca                                             ; $5182: $0f
	ld   b, $00                                      ; $5183: $06 $00
	ld   bc, $5896                                   ; $5185: $01 $96 $58
	sbc  [hl]                                        ; $5188: $9e
	ld   [$9f00], sp                                 ; $5189: $08 $00 $9f
	dec  c                                           ; $518c: $0d
	ld   e, b                                        ; $518d: $58
	inc  bc                                          ; $518e: $03
	ld   c, a                                        ; $518f: $4f
	ld   a, h                                        ; $5190: $7c
	inc  b                                           ; $5191: $04
	dec  c                                           ; $5192: $0d
	ld   [bc], a                                     ; $5193: $02
	sub  [hl]                                        ; $5194: $96
	inc  b                                           ; $5195: $04
	ld   b, l                                        ; $5196: $45
	inc  b                                           ; $5197: $04
	ld   a, [bc]                                     ; $5198: $0a
	sub  b                                           ; $5199: $90
	dec  c                                           ; $519a: $0d
	ld   l, e                                        ; $519b: $6b
	sbc  e                                           ; $519c: $9b
	ld   l, e                                        ; $519d: $6b
	sbc  e                                           ; $519e: $9b
	inc  bc                                          ; $519f: $03
	ld   a, [hl]                                     ; $51a0: $7e
	sbc  l                                           ; $51a1: $9d
	sbc  b                                           ; $51a2: $98
	ld   l, [hl]                                     ; $51a3: $6e
	ld   a, b                                        ; $51a4: $78
	db   $fc                                         ; $51a5: $fc
	sbc  a                                           ; $51a6: $9f
	dec  c                                           ; $51a7: $0d
	nop                                              ; $51a8: $00
	ld   a, [bc]                                     ; $51a9: $0a
	ld   bc, $7150                                   ; $51aa: $01 $50 $71
	sbc  [hl]                                        ; $51ad: $9e
	ld   l, e                                        ; $51ae: $6b
	ld   d, h                                        ; $51af: $54
	ld   l, [hl]                                     ; $51b0: $6e
	sbc  a                                           ; $51b1: $9f
	dec  c                                           ; $51b2: $0d
	ld   [$5a00], sp                                 ; $51b3: $08 $00 $5a
	sbc  [hl]                                        ; $51b6: $9e
	ld   [hl], a                                     ; $51b7: $77
	sbc  d                                           ; $51b8: $9a
	ld   l, [hl]                                     ; $51b9: $6e
	ld   e, a                                        ; $51ba: $5f
	dec  c                                           ; $51bb: $0d
	ld   [bc], a                                     ; $51bc: $02
	call nc, Call_068_785d                           ; $51bd: $d4 $5d $78
	ld   [hl], c                                     ; $51c0: $71
	ld   l, l                                        ; $51c1: $6d
	ld   e, c                                        ; $51c2: $59
	ld   [bc], a                                     ; $51c3: $02
	sub  l                                           ; $51c4: $95
	ld   [hl], h                                     ; $51c5: $74
	sub  d                                           ; $51c6: $92
	sbc  c                                           ; $51c7: $99
	sub  [hl]                                        ; $51c8: $96
	sbc  a                                           ; $51c9: $9f
	dec  c                                           ; $51ca: $0d
	nop                                              ; $51cb: $00
	ld   a, [bc]                                     ; $51cc: $0a
	add  hl, de                                      ; $51cd: $19
	dec  b                                           ; $51ce: $05
	ld   [bc], a                                     ; $51cf: $02
	ld   e, b                                        ; $51d0: $58
	ld   [bc], a                                     ; $51d1: $02
	add  b                                           ; $51d2: $80
	ld   d, d                                        ; $51d3: $52
	ld   h, l                                        ; $51d4: $65
	adc  h                                           ; $51d5: $8c
	ld   h, a                                        ; $51d6: $67
	nop                                              ; $51d7: $00
	nop                                              ; $51d8: $00
	ld   d, [hl]                                     ; $51d9: $56
	and  c                                           ; $51da: $a1
	sbc  b                                           ; $51db: $98
	sub  l                                           ; $51dc: $95
	ld   h, l                                        ; $51dd: $65
	adc  h                                           ; $51de: $8c
	ld   h, a                                        ; $51df: $67
	nop                                              ; $51e0: $00
	ld   bc, $cd07                                   ; $51e1: $01 $07 $cd
	nop                                              ; $51e4: $00
	ld   [bc], a                                     ; $51e5: $02
	inc  bc                                          ; $51e6: $03
	ld   bc, $2000                                   ; $51e7: $01 $00 $20
	nop                                              ; $51ea: $00
	rlca                                             ; $51eb: $07
	adc  b                                           ; $51ec: $88
	nop                                              ; $51ed: $00
	ld   [bc], a                                     ; $51ee: $02
	inc  bc                                          ; $51ef: $03
	ld   bc, $2001                                   ; $51f0: $01 $01 $20
	nop                                              ; $51f3: $00
	ld   b, $cd                                      ; $51f4: $06 $cd
	nop                                              ; $51f6: $00
	rrca                                             ; $51f7: $0f
	nop                                              ; $51f8: $00
	ld   bc, $6701                                   ; $51f9: $01 $01 $67
	adc  l                                           ; $51fc: $8d
	adc  h                                           ; $51fd: $8c
	ld   l, c                                        ; $51fe: $69
	and  c                                           ; $51ff: $a1
	sbc  a                                           ; $5200: $9f
	dec  c                                           ; $5201: $0d
	ld   [bc], a                                     ; $5202: $02
	and  l                                           ; $5203: $a5
	sbc  [hl]                                        ; $5204: $9e
	inc  b                                           ; $5205: $04
	di                                               ; $5206: $f3
	ld   [bc], a                                     ; $5207: $02
	jp   Jump_068_767c                               ; $5208: $c3 $7c $76


	ld   l, a                                        ; $520b: $6f
	sub  e                                           ; $520c: $93
	ld   d, h                                        ; $520d: $54
	dec  c                                           ; $520e: $0d
	ld   a, b                                        ; $520f: $78
	and  c                                           ; $5210: $a1
	ld   [hl], l                                     ; $5211: $75
	ld   h, a                                        ; $5212: $67
	sub  [hl]                                        ; $5213: $96
	sbc  a                                           ; $5214: $9f
	dec  c                                           ; $5215: $0d
	nop                                              ; $5216: $00
	ld   a, [bc]                                     ; $5217: $0a
	inc  e                                           ; $5218: $1c
	ld   b, $05                                      ; $5219: $06 $05
	dec  b                                           ; $521b: $05
	dec  e                                           ; $521c: $1d
	ld   b, b                                        ; $521d: $40
	ld   d, $03                                      ; $521e: $16 $03
	ld   d, $01                                      ; $5220: $16 $01
	ld   bc, $0029                                   ; $5222: $01 $29 $00
	ld   bc, $546b                                   ; $5225: $01 $6b $54
	ld   e, c                                        ; $5228: $59
	db   $fc                                         ; $5229: $fc
	dec  c                                           ; $522a: $0d
	ld   h, [hl]                                     ; $522b: $66
	sub  c                                           ; $522c: $91
	ld   d, b                                        ; $522d: $50
	sbc  [hl]                                        ; $522e: $9e
	ld   h, l                                        ; $522f: $65
	sub  l                                           ; $5230: $95
	ld   d, h                                        ; $5231: $54
	ld   e, d                                        ; $5232: $5a
	ld   a, e                                        ; $5233: $7b
	ei                                               ; $5234: $fb
	ld   e, c                                        ; $5235: $59
	rst  $38                                         ; $5236: $ff
	rst  $38                                         ; $5237: $ff
	dec  c                                           ; $5238: $0d
	nop                                              ; $5239: $00
	ld   a, [bc]                                     ; $523a: $0a
	nop                                              ; $523b: $00
	rrca                                             ; $523c: $0f
	nop                                              ; $523d: $00
	ld   bc, $6a01                                   ; $523e: $01 $01 $6a
	add  b                                           ; $5241: $80
	ld   e, b                                        ; $5242: $58
	ld   [bc], a                                     ; $5243: $02
	add  b                                           ; $5244: $80
	ld   d, d                                        ; $5245: $52
	ld   h, l                                        ; $5246: $65
	adc  h                                           ; $5247: $8c
	ld   h, a                                        ; $5248: $67
	sbc  a                                           ; $5249: $9f
	dec  c                                           ; $524a: $0d
	xor  h                                           ; $524b: $ac
	push af                                          ; $524c: $f5
	bit  4, e                                        ; $524d: $cb $63
	and  c                                           ; $524f: $a1
	sbc  a                                           ; $5250: $9f
	dec  c                                           ; $5251: $0d
	nop                                              ; $5252: $00
	ld   a, [bc]                                     ; $5253: $0a
	inc  e                                           ; $5254: $1c
	ld   b, $02                                      ; $5255: $06 $02
	ld   [bc], a                                     ; $5257: $02
	ld   bc, $6596                                   ; $5258: $01 $96 $65
	sbc  [hl]                                        ; $525b: $9e
	ld   h, [hl]                                     ; $525c: $66
	sub  c                                           ; $525d: $91
	ld   d, b                                        ; $525e: $50
	adc  h                                           ; $525f: $8c
	ld   l, b                                        ; $5260: $68
	dec  c                                           ; $5261: $0d
	ld   e, c                                        ; $5262: $59
	sbc  l                                           ; $5263: $9d
	sub  a                                           ; $5264: $97
	ld   [bc], a                                     ; $5265: $02
	halt                                             ; $5266: $76
	sbc  b                                           ; $5267: $98
	ld   e, c                                        ; $5268: $59
	sub  a                                           ; $5269: $97
	ld   l, [hl]                                     ; $526a: $6e
	sbc  a                                           ; $526b: $9f
	dec  c                                           ; $526c: $0d
	dec  b                                           ; $526d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $526e: $cf
	adc  a                                           ; $526f: $8f
	ld   a, [$000d]                                  ; $5270: $fa $0d $00
	ld   a, [bc]                                     ; $5273: $0a
	add  hl, de                                      ; $5274: $19
	dec  b                                           ; $5275: $05
	inc  bc                                          ; $5276: $03
	jr   jr_068_527d                                 ; $5277: $18 $04

	push bc                                          ; $5279: $c5
	ld   [bc], a                                     ; $527a: $02
	halt                                             ; $527b: $76
	sbc  d                                           ; $527c: $9a

jr_068_527d:
	ld   l, l                                        ; $527d: $6d
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	ld   d, $11                                      ; $5280: $16 $11
	inc  b                                           ; $5282: $04
	push bc                                          ; $5283: $c5
	ld   [bc], a                                     ; $5284: $02
	halt                                             ; $5285: $76
	sbc  b                                           ; $5286: $98
	ld   l, l                                        ; $5287: $6d
	ld   e, c                                        ; $5288: $59
	ld   [hl], c                                     ; $5289: $71
	ld   l, l                                        ; $528a: $6d
	nop                                              ; $528b: $00
	ld   bc, $1412                                   ; $528c: $01 $12 $14
	inc  b                                           ; $528f: $04
	push bc                                          ; $5290: $c5
	ld   [bc], a                                     ; $5291: $02
	halt                                             ; $5292: $76
	sbc  d                                           ; $5293: $9a
	ld   [hl], h                                     ; $5294: $74
	sub  [hl]                                        ; $5295: $96
	ld   e, c                                        ; $5296: $59
	ld   [hl], c                                     ; $5297: $71
	ld   l, l                                        ; $5298: $6d
	nop                                              ; $5299: $00
	ld   [bc], a                                     ; $529a: $02
	rlca                                             ; $529b: $07
	ld   c, d                                        ; $529c: $4a
	ld   bc, $0302                                   ; $529d: $01 $02 $03
	ld   bc, $2000                                   ; $52a0: $01 $00 $20
	nop                                              ; $52a3: $00
	rlca                                             ; $52a4: $07
	ld   a, l                                        ; $52a5: $7d
	ld   bc, $0302                                   ; $52a6: $01 $02 $03
	ld   bc, $2001                                   ; $52a9: $01 $01 $20
	nop                                              ; $52ac: $00
	rlca                                             ; $52ad: $07
	add  $01                                         ; $52ae: $c6 $01
	ld   [bc], a                                     ; $52b0: $02
	inc  bc                                          ; $52b1: $03
	ld   bc, $2002                                   ; $52b2: $01 $02 $20
	nop                                              ; $52b5: $00
	ld   b, $fe                                      ; $52b6: $06 $fe
	ld   bc, $061c                                   ; $52b8: $01 $1c $06
	nop                                              ; $52bb: $00
	nop                                              ; $52bc: $00
	dec  e                                           ; $52bd: $1d
	ld   b, b                                        ; $52be: $40
	ld   d, $03                                      ; $52bf: $16 $03
	ld   d, $01                                      ; $52c1: $16 $01
	ld   bc, $0028                                   ; $52c3: $01 $28 $00
	ld   bc, $7158                                   ; $52c6: $01 $58 $71
	ld   a, [$1810]                                  ; $52c9: $fa $10 $18
	inc  b                                           ; $52cc: $04
	push bc                                          ; $52cd: $c5
	ld   e, c                                        ; $52ce: $59
	sbc  a                                           ; $52cf: $9f
	dec  c                                           ; $52d0: $0d
	adc  h                                           ; $52d1: $8c
	ld   l, b                                        ; $52d2: $68
	adc  h                                           ; $52d3: $8c
	ld   l, b                                        ; $52d4: $68
	ld   h, [hl]                                     ; $52d5: $66
	sub  c                                           ; $52d6: $91
	ld   a, b                                        ; $52d7: $78
	ld   d, d                                        ; $52d8: $52
	ld   e, c                                        ; $52d9: $59
	sbc  a                                           ; $52da: $9f
	dec  c                                           ; $52db: $0d
	ld   h, [hl]                                     ; $52dc: $66
	sub  c                                           ; $52dd: $91
	ld   d, b                                        ; $52de: $50
	sbc  [hl]                                        ; $52df: $9e
	sub  b                                           ; $52e0: $90
	ld   d, h                                        ; $52e1: $54
	ld   [de], a                                     ; $52e2: $12
	ld   [bc], a                                     ; $52e3: $02
	sub  e                                           ; $52e4: $93
	sbc  a                                           ; $52e5: $9f
	dec  c                                           ; $52e6: $0d
	nop                                              ; $52e7: $00
	ld   a, [bc]                                     ; $52e8: $0a
	ld   b, $57                                      ; $52e9: $06 $57
	ld   [bc], a                                     ; $52eb: $02
	inc  e                                           ; $52ec: $1c
	ld   b, $05                                      ; $52ed: $06 $05
	dec  b                                           ; $52ef: $05
	ld   bc, $9850                                   ; $52f0: $01 $50 $98
	sub  c                                           ; $52f3: $91
	ei                                               ; $52f4: $fb
	sbc  [hl]                                        ; $52f5: $9e
	ld   d, $11                                      ; $52f6: $16 $11
	inc  b                                           ; $52f8: $04
	push bc                                          ; $52f9: $c5
	ld   e, l                                        ; $52fa: $5d
	sub  a                                           ; $52fb: $97
	ld   d, d                                        ; $52fc: $52
	dec  c                                           ; $52fd: $0d
	ld   [bc], a                                     ; $52fe: $02
	halt                                             ; $52ff: $76
	sbc  b                                           ; $5300: $98
	ld   l, e                                        ; $5301: $6b
	ld   d, h                                        ; $5302: $54
	ld   a, b                                        ; $5303: $78
	sbc  [hl]                                        ; $5304: $9e
	ld   d, d                                        ; $5305: $52
	ld   e, e                                        ; $5306: $5b
	ld   e, b                                        ; $5307: $58
	ld   d, d                                        ; $5308: $52
	ld   l, [hl]                                     ; $5309: $6e
	ld   [hl], c                                     ; $530a: $71
	ld   l, l                                        ; $530b: $6d
	dec  c                                           ; $530c: $0d
	ld   a, h                                        ; $530d: $7c
	ld   a, c                                        ; $530e: $79
	ld   d, $04                                      ; $530f: $16 $04
	push bc                                          ; $5311: $c5
	ld   h, l                                        ; $5312: $65
	ld   e, c                                        ; $5313: $59
	ld   [bc], a                                     ; $5314: $02
	halt                                             ; $5315: $76
	sbc  d                                           ; $5316: $9a
	ld   [hl], h                                     ; $5317: $74
	ld   a, b                                        ; $5318: $78
	ld   d, d                                        ; $5319: $52
	ld   l, d                                        ; $531a: $6a
	sbc  a                                           ; $531b: $9f
	dec  c                                           ; $531c: $0d
	nop                                              ; $531d: $00
	ld   a, [bc]                                     ; $531e: $0a
	inc  e                                           ; $531f: $1c
	ld   b, $00                                      ; $5320: $06 $00
	nop                                              ; $5322: $00
	ld   bc, $9166                                   ; $5323: $01 $66 $91
	ld   d, b                                        ; $5326: $50
	sbc  [hl]                                        ; $5327: $9e
	sub  b                                           ; $5328: $90
	ld   d, h                                        ; $5329: $54
	ld   [de], a                                     ; $532a: $12
	ld   [bc], a                                     ; $532b: $02
	sub  e                                           ; $532c: $93
	ld   l, [hl]                                     ; $532d: $6e
	sbc  a                                           ; $532e: $9f
	dec  c                                           ; $532f: $0d
	nop                                              ; $5330: $00
	ld   a, [bc]                                     ; $5331: $0a
	ld   b, $57                                      ; $5332: $06 $57
	ld   [bc], a                                     ; $5334: $02
	inc  e                                           ; $5335: $1c
	ld   b, $01                                      ; $5336: $06 $01
	ld   bc, $401d                                   ; $5338: $01 $1d $40
	ld   d, $03                                      ; $533b: $16 $03
	ld   d, $01                                      ; $533d: $16 $01
	ld   [bc], a                                     ; $533f: $02
	jr   z, jr_068_5342                              ; $5340: $28 $00

jr_068_5342:
	ld   bc, $7158                                   ; $5342: $01 $58 $71
	ld   a, [$1210]                                  ; $5345: $fa $10 $12
	inc  d                                           ; $5348: $14
	inc  b                                           ; $5349: $04
	push bc                                          ; $534a: $c5
	sub  b                                           ; $534b: $90
	ld   [bc], a                                     ; $534c: $02
	halt                                             ; $534d: $76
	sbc  c                                           ; $534e: $99
	halt                                             ; $534f: $76
	ld   a, l                                        ; $5350: $7d
	dec  c                                           ; $5351: $0d
	ld   a, b                                        ; $5352: $78
	ld   e, c                                        ; $5353: $59
	ld   a, b                                        ; $5354: $78
	ld   e, c                                        ; $5355: $59
	sub  d                                           ; $5356: $92
	sbc  c                                           ; $5357: $99
	ld   h, [hl]                                     ; $5358: $66
	sub  c                                           ; $5359: $91
	and  c                                           ; $535a: $a1
	sbc  a                                           ; $535b: $9f
	dec  c                                           ; $535c: $0d
	sub  [hl]                                        ; $535d: $96
	ld   h, l                                        ; $535e: $65
	sbc  [hl]                                        ; $535f: $9e
	sub  b                                           ; $5360: $90
	ld   d, h                                        ; $5361: $54
	ld   [de], a                                     ; $5362: $12
	ld   [bc], a                                     ; $5363: $02
	sub  e                                           ; $5364: $93
	ld   l, [hl]                                     ; $5365: $6e
	sbc  a                                           ; $5366: $9f
	dec  c                                           ; $5367: $0d
	nop                                              ; $5368: $00
	ld   a, [bc]                                     ; $5369: $0a
	ld   b, $57                                      ; $536a: $06 $57
	ld   [bc], a                                     ; $536c: $02
	inc  e                                           ; $536d: $1c
	ld   b, $02                                      ; $536e: $06 $02
	ld   [bc], a                                     ; $5370: $02
	ld   bc, $a178                                   ; $5371: $01 $78 $a1
	ld   l, [hl]                                     ; $5374: $6e
	sub  [hl]                                        ; $5375: $96
	sbc  [hl]                                        ; $5376: $9e
	ld   h, c                                        ; $5377: $61
	and  c                                           ; $5378: $a1
	ld   a, b                                        ; $5379: $78
	ld   e, c                                        ; $537a: $59
	sbc  l                                           ; $537b: $9d
	sub  a                                           ; $537c: $97
	ld   e, [hl]                                     ; $537d: $5e
	sub  a                                           ; $537e: $97
	ld   d, d                                        ; $537f: $52
	dec  c                                           ; $5380: $0d
	ld   [hl], l                                     ; $5381: $75
	call nc, $a1d4                                   ; $5382: $d4 $d4 $a1
	ld   a, b                                        ; $5385: $78
	sub  [hl]                                        ; $5386: $96
	ld   a, b                                        ; $5387: $78
	sbc  a                                           ; $5388: $9f
	dec  c                                           ; $5389: $0d
	sub  b                                           ; $538a: $90
	ld   d, h                                        ; $538b: $54
	ld   d, d                                        ; $538c: $52
	ld   d, d                                        ; $538d: $52
	sbc  [hl]                                        ; $538e: $9e
	ld   d, d                                        ; $538f: $52
	ld   e, a                                        ; $5390: $5f
	sub  [hl]                                        ; $5391: $96
	sbc  a                                           ; $5392: $9f
	dec  c                                           ; $5393: $0d
	nop                                              ; $5394: $00
	ld   a, [bc]                                     ; $5395: $0a
	dec  e                                           ; $5396: $1d
	ld   b, b                                        ; $5397: $40
	ld   d, $03                                      ; $5398: $16 $03
	ld   d, $01                                      ; $539a: $16 $01
	inc  bc                                          ; $539c: $03

jr_068_539d:
	add  hl, hl                                      ; $539d: $29
	nop                                              ; $539e: $00
	ld   bc, $7c61                                   ; $539f: $01 $61 $7c
	ld   [bc], a                                     ; $53a2: $02
	jr   nz, jr_068_539d                             ; $53a3: $20 $f8

	ld   [bc], a                                     ; $53a5: $02
	sbc  e                                           ; $53a6: $9b
	sbc  [hl]                                        ; $53a7: $9e
	inc  b                                           ; $53a8: $04
	ld   c, c                                        ; $53a9: $49
	ld   h, l                                        ; $53aa: $65
	ld   [hl], h                                     ; $53ab: $74
	ld   l, l                                        ; $53ac: $6d
	and  c                                           ; $53ad: $a1
	ld   l, [hl]                                     ; $53ae: $6e
	sbc  a                                           ; $53af: $9f
	dec  c                                           ; $53b0: $0d
	ld   [$9f00], sp                                 ; $53b1: $08 $00 $9f
	dec  c                                           ; $53b4: $0d
	nop                                              ; $53b5: $00
	inc  e                                           ; $53b6: $1c
	ld   b, $05                                      ; $53b7: $06 $05
	dec  b                                           ; $53b9: $05
	ld   bc, $715a                                   ; $53ba: $01 $5a $71
	ld   e, c                                        ; $53bd: $59
	sbc  b                                           ; $53be: $98
	ld   l, [hl]                                     ; $53bf: $6e
	ld   l, d                                        ; $53c0: $6a
	sbc  a                                           ; $53c1: $9f
	dec  c                                           ; $53c2: $0d
	nop                                              ; $53c3: $00
	ld   a, [bc]                                     ; $53c4: $0a
	nop                                              ; $53c5: $00
	add  hl, de                                      ; $53c6: $19
	dec  b                                           ; $53c7: $05
	inc  bc                                          ; $53c8: $03
	ld   [de], a                                     ; $53c9: $12
	add  hl, de                                      ; $53ca: $19
	inc  b                                           ; $53cb: $04
	push bc                                          ; $53cc: $c5
	ld   [bc], a                                     ; $53cd: $02
	halt                                             ; $53ce: $76
	ld   [hl], c                                     ; $53cf: $71
	ld   [hl], h                                     ; $53d0: $74
	or   h                                           ; $53d1: $b4
	rst  $10                                         ; $53d2: $d7
	cp   b                                           ; $53d3: $b8
	ld   d, d                                        ; $53d4: $52
	ld   l, l                                        ; $53d5: $6d
	adc  a                                           ; $53d6: $8f
	ld   l, l                                        ; $53d7: $6d
	nop                                              ; $53d8: $00
	nop                                              ; $53d9: $00
	ld   [de], a                                     ; $53da: $12
	rla                                              ; $53db: $17
	inc  b                                           ; $53dc: $04
	push bc                                          ; $53dd: $c5
	ld   [bc], a                                     ; $53de: $02
	halt                                             ; $53df: $76
	sbc  d                                           ; $53e0: $9a
	ld   [hl], h                                     ; $53e1: $74
	sub  [hl]                                        ; $53e2: $96
	ld   e, c                                        ; $53e3: $59
	ld   [hl], c                                     ; $53e4: $71
	ld   l, l                                        ; $53e5: $6d
	nop                                              ; $53e6: $00
	ld   bc, $0419                                   ; $53e7: $01 $19 $04
	push bc                                          ; $53ea: $c5
	ld   [bc], a                                     ; $53eb: $02
	halt                                             ; $53ec: $76
	sbc  d                                           ; $53ed: $9a
	ld   l, l                                        ; $53ee: $6d
	nop                                              ; $53ef: $00
	ld   [bc], a                                     ; $53f0: $02
	rlca                                             ; $53f1: $07
	and  b                                           ; $53f2: $a0
	ld   [bc], a                                     ; $53f3: $02
	ld   [bc], a                                     ; $53f4: $02
	inc  bc                                          ; $53f5: $03
	ld   bc, $2000                                   ; $53f6: $01 $00 $20
	nop                                              ; $53f9: $00
	rlca                                             ; $53fa: $07
	rst  $38                                         ; $53fb: $ff
	ld   [bc], a                                     ; $53fc: $02
	ld   [bc], a                                     ; $53fd: $02
	inc  bc                                          ; $53fe: $03
	ld   bc, $2001                                   ; $53ff: $01 $01 $20
	nop                                              ; $5402: $00
	rlca                                             ; $5403: $07
	jr   nc, @+$05                                   ; $5404: $30 $03

	ld   [bc], a                                     ; $5406: $02
	inc  bc                                          ; $5407: $03
	ld   bc, $2002                                   ; $5408: $01 $02 $20
	nop                                              ; $540b: $00
	ld   b, $fe                                      ; $540c: $06 $fe
	ld   bc, $061c                                   ; $540e: $01 $1c $06
	inc  bc                                          ; $5411: $03
	inc  bc                                          ; $5412: $03
	ld   bc, $9850                                   ; $5413: $01 $50 $98
	sub  c                                           ; $5416: $91
	sbc  b                                           ; $5417: $98
	sub  c                                           ; $5418: $91
	rst  $38                                         ; $5419: $ff
	rst  $38                                         ; $541a: $ff
	dec  c                                           ; $541b: $0d
	ld   [$9e00], sp                                 ; $541c: $08 $00 $9e
	ld   e, b                                        ; $541f: $58
	inc  bc                                          ; $5420: $03
	ld   c, a                                        ; $5421: $4f
	or   h                                           ; $5422: $b4
	rst  $10                                         ; $5423: $d7
	cp   b                                           ; $5424: $b8
	dec  c                                           ; $5425: $0d
	ld   d, d                                        ; $5426: $52
	ld   l, l                                        ; $5427: $6d
	adc  a                                           ; $5428: $8f
	ld   [hl], h                                     ; $5429: $74
	sbc  c                                           ; $542a: $99
	ld   h, [hl]                                     ; $542b: $66
	sub  c                                           ; $542c: $91
	ld   a, b                                        ; $542d: $78
	ld   d, d                                        ; $542e: $52
	ld   e, c                                        ; $542f: $59
	sbc  a                                           ; $5430: $9f
	dec  c                                           ; $5431: $0d
	nop                                              ; $5432: $00
	ld   a, [bc]                                     ; $5433: $0a
	inc  e                                           ; $5434: $1c
	ld   b, $05                                      ; $5435: $06 $05
	dec  b                                           ; $5437: $05
	ld   bc, $9861                                   ; $5438: $01 $61 $98
	sub  c                                           ; $543b: $91
	sbc  [hl]                                        ; $543c: $9e
	sub  d                                           ; $543d: $92
	adc  a                                           ; $543e: $8f
	ld   l, l                                        ; $543f: $6d
	inc  b                                           ; $5440: $04
	ld   a, b                                        ; $5441: $78
	ld   e, d                                        ; $5442: $5a
	ld   d, d                                        ; $5443: $52
	ld   d, d                                        ; $5444: $52
	ld   a, b                                        ; $5445: $78
	sbc  a                                           ; $5446: $9f
	dec  c                                           ; $5447: $0d
	ld   [hl], l                                     ; $5448: $75
	sub  b                                           ; $5449: $90
	sbc  [hl]                                        ; $544a: $9e
	ld   [bc], a                                     ; $544b: $02
	ld   [hl], $05                                   ; $544c: $36 $05
	pop  bc                                          ; $544e: $c1
	ld   l, [hl]                                     ; $544f: $6e
	ld   e, c                                        ; $5450: $59
	sub  a                                           ; $5451: $97
	ld   h, a                                        ; $5452: $67
	ld   e, [hl]                                     ; $5453: $5e
	inc  bc                                          ; $5454: $03
	ld   sp, hl                                      ; $5455: $f9
	sbc  c                                           ; $5456: $99
	sub  [hl]                                        ; $5457: $96
	sbc  a                                           ; $5458: $9f
	dec  c                                           ; $5459: $0d
	ld   h, [hl]                                     ; $545a: $66
	sub  c                                           ; $545b: $91
	ld   d, b                                        ; $545c: $50
	sbc  [hl]                                        ; $545d: $9e
	adc  h                                           ; $545e: $8c
	ld   l, l                                        ; $545f: $6d
	ld   a, b                                        ; $5460: $78
	sbc  a                                           ; $5461: $9f
	dec  c                                           ; $5462: $0d
	nop                                              ; $5463: $00
	ld   a, [bc]                                     ; $5464: $0a
	dec  c                                           ; $5465: $0d
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	rrca                                             ; $5468: $0f
	nop                                              ; $5469: $00
	ld   bc, $1e09                                   ; $546a: $01 $09 $1e
	nop                                              ; $546d: $00
	inc  e                                           ; $546e: $1c
	ld   b, $01                                      ; $546f: $06 $01
	ld   bc, $401d                                   ; $5471: $01 $1d $40
	ld   d, $03                                      ; $5474: $16 $03
	ld   d, $01                                      ; $5476: $16 $01
	inc  bc                                          ; $5478: $03
	jr   z, jr_068_547b                              ; $5479: $28 $00

jr_068_547b:
	ld   bc, $5858                                   ; $547b: $01 $58 $58
	sbc  [hl]                                        ; $547e: $9e
	ld   [de], a                                     ; $547f: $12
	rla                                              ; $5480: $17
	inc  b                                           ; $5481: $04
	push bc                                          ; $5482: $c5
	ld   e, c                                        ; $5483: $59
	ld   a, [$670d]                                  ; $5484: $fa $0d $67
	ld   h, d                                        ; $5487: $62
	ld   d, d                                        ; $5488: $52
	ld   a, b                                        ; $5489: $78
	sbc  [hl]                                        ; $548a: $9e
	ld   [$9f00], sp                                 ; $548b: $08 $00 $9f
	dec  c                                           ; $548e: $0d
	sub  [hl]                                        ; $548f: $96
	ld   h, l                                        ; $5490: $65
	sbc  [hl]                                        ; $5491: $9e
	db   $eb                                         ; $5492: $eb
	cp   d                                           ; $5493: $ba
	ret                                              ; $5494: $c9


	ld   [de], a                                     ; $5495: $12
	ld   [bc], a                                     ; $5496: $02
	sub  e                                           ; $5497: $93
	sbc  a                                           ; $5498: $9f
	dec  c                                           ; $5499: $0d
	nop                                              ; $549a: $00
	ld   a, [bc]                                     ; $549b: $0a
	ld   b, $62                                      ; $549c: $06 $62
	inc  bc                                          ; $549e: $03
	inc  e                                           ; $549f: $1c
	ld   b, $00                                      ; $54a0: $06 $00
	nop                                              ; $54a2: $00
	dec  e                                           ; $54a3: $1d
	ld   b, b                                        ; $54a4: $40
	ld   d, $03                                      ; $54a5: $16 $03
	ld   d, $01                                      ; $54a7: $16 $01
	ld   bc, $0028                                   ; $54a9: $01 $28 $00
	ld   bc, $0419                                   ; $54ac: $01 $19 $04
	push bc                                          ; $54af: $c5
	ld   l, [hl]                                     ; $54b0: $6e
	ld   l, d                                        ; $54b1: $6a
	sbc  a                                           ; $54b2: $9f
	adc  h                                           ; $54b3: $8c
	ld   l, b                                        ; $54b4: $68
	adc  h                                           ; $54b5: $8c
	ld   l, b                                        ; $54b6: $68
	ld   l, [hl]                                     ; $54b7: $6e
	sbc  a                                           ; $54b8: $9f
	dec  c                                           ; $54b9: $0d
	and  c                                           ; $54ba: $a1
	ld   h, [hl]                                     ; $54bb: $66
	sub  c                                           ; $54bc: $91
	sbc  [hl]                                        ; $54bd: $9e
	db   $eb                                         ; $54be: $eb
	cp   d                                           ; $54bf: $ba
	ret                                              ; $54c0: $c9


	ld   [de], a                                     ; $54c1: $12
	ld   [bc], a                                     ; $54c2: $02
	sub  e                                           ; $54c3: $93
	dec  c                                           ; $54c4: $0d
	ld   e, d                                        ; $54c5: $5a
	and  c                                           ; $54c6: $a1
	ld   a, [hl]                                     ; $54c7: $7e
	sbc  d                                           ; $54c8: $9a
	sub  [hl]                                        ; $54c9: $96
	sbc  a                                           ; $54ca: $9f
	dec  c                                           ; $54cb: $0d
	nop                                              ; $54cc: $00
	ld   a, [bc]                                     ; $54cd: $0a
	ld   b, $62                                      ; $54ce: $06 $62
	inc  bc                                          ; $54d0: $03
	add  hl, de                                      ; $54d1: $19
	dec  b                                           ; $54d2: $05
	inc  bc                                          ; $54d3: $03
	inc  d                                           ; $54d4: $14
	ld   de, $c504                                   ; $54d5: $11 $04 $c5
	ld   [bc], a                                     ; $54d8: $02
	halt                                             ; $54d9: $76
	ld   [hl], c                                     ; $54da: $71
	ld   [hl], h                                     ; $54db: $74
	or   h                                           ; $54dc: $b4
	rst  $10                                         ; $54dd: $d7
	cp   b                                           ; $54de: $b8
	ld   d, d                                        ; $54df: $52
	ld   l, l                                        ; $54e0: $6d
	adc  a                                           ; $54e1: $8f
	ld   l, l                                        ; $54e2: $6d
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	inc  de                                          ; $54e5: $13
	jr   jr_068_54ec                                 ; $54e6: $18 $04

	push bc                                          ; $54e8: $c5
	ld   [bc], a                                     ; $54e9: $02
	halt                                             ; $54ea: $76
	sbc  b                                           ; $54eb: $98

jr_068_54ec:
	ld   l, l                                        ; $54ec: $6d
	ld   e, c                                        ; $54ed: $59
	ld   [hl], c                                     ; $54ee: $71
	ld   l, l                                        ; $54ef: $6d
	nop                                              ; $54f0: $00
	ld   bc, $1814                                   ; $54f1: $01 $14 $18
	inc  b                                           ; $54f4: $04
	push bc                                          ; $54f5: $c5
	ld   [bc], a                                     ; $54f6: $02
	halt                                             ; $54f7: $76
	sbc  d                                           ; $54f8: $9a
	ld   l, l                                        ; $54f9: $6d
	nop                                              ; $54fa: $00
	ld   [bc], a                                     ; $54fb: $02
	rlca                                             ; $54fc: $07
	and  b                                           ; $54fd: $a0
	ld   [bc], a                                     ; $54fe: $02
	ld   [bc], a                                     ; $54ff: $02
	inc  bc                                          ; $5500: $03
	ld   bc, $2000                                   ; $5501: $01 $00 $20
	nop                                              ; $5504: $00
	rlca                                             ; $5505: $07
	xor  e                                           ; $5506: $ab
	inc  bc                                          ; $5507: $03
	ld   [bc], a                                     ; $5508: $02
	inc  bc                                          ; $5509: $03
	ld   bc, $2001                                   ; $550a: $01 $01 $20
	nop                                              ; $550d: $00
	rlca                                             ; $550e: $07
	ldh  [c], a                                      ; $550f: $e2
	inc  bc                                          ; $5510: $03
	ld   [bc], a                                     ; $5511: $02
	inc  bc                                          ; $5512: $03
	ld   bc, $2002                                   ; $5513: $01 $02 $20
	nop                                              ; $5516: $00
	ld   b, $fe                                      ; $5517: $06 $fe
	ld   bc, $061c                                   ; $5519: $01 $1c $06
	ld   bc, $1d01                                   ; $551c: $01 $01 $1d
	ld   b, b                                        ; $551f: $40
	ld   d, $03                                      ; $5520: $16 $03
	ld   d, $01                                      ; $5522: $16 $01
	ld   [bc], a                                     ; $5524: $02
	jr   z, jr_068_5527                              ; $5525: $28 $00

jr_068_5527:
	ld   bc, $5858                                   ; $5527: $01 $58 $58
	ld   [hl], c                                     ; $552a: $71
	ld   a, [$1310]                                  ; $552b: $fa $10 $13
	jr   jr_068_5534                                 ; $552e: $18 $04

	push bc                                          ; $5530: $c5
	ld   sp, hl                                      ; $5531: $f9
	dec  c                                           ; $5532: $0d
	rst  $38                                         ; $5533: $ff

jr_068_5534:
	rst  $38                                         ; $5534: $ff
	ld   e, b                                        ; $5535: $58
	ld   h, l                                        ; $5536: $65
	ld   d, d                                        ; $5537: $52
	ld   a, b                                        ; $5538: $78
	sbc  [hl]                                        ; $5539: $9e
	inc  de                                          ; $553a: $13
	inc  d                                           ; $553b: $14
	inc  b                                           ; $553c: $04
	push bc                                          ; $553d: $c5
	ld   l, [hl]                                     ; $553e: $6e
	sbc  a                                           ; $553f: $9f
	dec  c                                           ; $5540: $0d
	ld   l, e                                        ; $5541: $6b
	sbc  d                                           ; $5542: $9a
	ld   [hl], l                                     ; $5543: $75
	sub  b                                           ; $5544: $90
	sbc  [hl]                                        ; $5545: $9e
	cp   d                                           ; $5546: $ba
	or   l                                           ; $5547: $b5
	and  l                                           ; $5548: $a5
	ld   l, d                                        ; $5549: $6a
	sbc  a                                           ; $554a: $9f
	dec  c                                           ; $554b: $0d
	nop                                              ; $554c: $00
	ld   a, [bc]                                     ; $554d: $0a
	ld   b, $0f                                      ; $554e: $06 $0f
	inc  b                                           ; $5550: $04
	inc  e                                           ; $5551: $1c
	ld   b, $07                                      ; $5552: $06 $07
	rlca                                             ; $5554: $07
	dec  e                                           ; $5555: $1d
	ld   b, b                                        ; $5556: $40
	ld   d, $03                                      ; $5557: $16 $03
	ld   d, $01                                      ; $5559: $16 $01
	inc  bc                                          ; $555b: $03
	jr   z, jr_068_555e                              ; $555c: $28 $00

jr_068_555e:
	ld   bc, $6267                                   ; $555e: $01 $67 $62
	ld   d, d                                        ; $5561: $52
	ld   l, d                                        ; $5562: $6a
	sbc  a                                           ; $5563: $9f
	inc  d                                           ; $5564: $14
	jr   jr_068_556b                                 ; $5565: $18 $04

	push bc                                          ; $5567: $c5
	sub  b                                           ; $5568: $90
	ld   [bc], a                                     ; $5569: $02
	halt                                             ; $556a: $76

jr_068_556b:
	sbc  d                                           ; $556b: $9a
	ld   [hl], h                                     ; $556c: $74
	sbc  c                                           ; $556d: $99
	sbc  a                                           ; $556e: $9f
	dec  c                                           ; $556f: $0d
	sub  d                                           ; $5570: $92
	sbc  c                                           ; $5571: $99
	ld   a, b                                        ; $5572: $78
	ei                                               ; $5573: $fb
	sbc  a                                           ; $5574: $9f
	ld   [$9f00], sp                                 ; $5575: $08 $00 $9f
	dec  c                                           ; $5578: $0d
	nop                                              ; $5579: $00
	ld   a, [bc]                                     ; $557a: $0a
	ld   b, $0f                                      ; $557b: $06 $0f
	inc  b                                           ; $557d: $04
	inc  e                                           ; $557e: $1c
	ld   b, $01                                      ; $557f: $06 $01
	ld   bc, $9601                                   ; $5581: $01 $01 $96
	ld   h, l                                        ; $5584: $65
	sbc  [hl]                                        ; $5585: $9e
	ld   h, [hl]                                     ; $5586: $66
	sub  c                                           ; $5587: $91
	ld   d, b                                        ; $5588: $50
	inc  bc                                          ; $5589: $03
	ld   l, b                                        ; $558a: $68
	ld   a, l                                        ; $558b: $7d
	dec  c                                           ; $558c: $0d
	ld   [bc], a                                     ; $558d: $02
	or   [hl]                                        ; $558e: $b6
	inc  bc                                          ; $558f: $03
	ld   l, e                                        ; $5590: $6b
	ld   a, h                                        ; $5591: $7c
	ld   e, a                                        ; $5592: $5f
	ld   d, d                                        ; $5593: $52
	ld   h, c                                        ; $5594: $61
	ld   l, [hl]                                     ; $5595: $6e
	ld   a, [$000d]                                  ; $5596: $fa $0d $00
	ld   a, [bc]                                     ; $5599: $0a
	ld   a, [de]                                     ; $559a: $1a
	ld   b, $07                                      ; $559b: $06 $07
	ld   b, d                                        ; $559d: $42
	inc  b                                           ; $559e: $04
	ld   [bc], a                                     ; $559f: $02
	inc  b                                           ; $55a0: $04
	ld   bc, $2002                                   ; $55a1: $01 $02 $20
	nop                                              ; $55a4: $00
	rlca                                             ; $55a5: $07
	ld   a, b                                        ; $55a6: $78
	inc  b                                           ; $55a7: $04
	ld   [bc], a                                     ; $55a8: $02
	inc  b                                           ; $55a9: $04
	ld   bc, $2001                                   ; $55aa: $01 $01 $20
	nop                                              ; $55ad: $00
	ld   b, $d9                                      ; $55ae: $06 $d9
	inc  b                                           ; $55b0: $04
	inc  e                                           ; $55b1: $1c
	ld   b, $07                                      ; $55b2: $06 $07
	rlca                                             ; $55b4: $07
	dec  e                                           ; $55b5: $1d
	ld   b, b                                        ; $55b6: $40
	ld   d, $03                                      ; $55b7: $16 $03
	ld   d, $01                                      ; $55b9: $16 $01
	inc  bc                                          ; $55bb: $03
	jr   z, jr_068_55be                              ; $55bc: $28 $00

jr_068_55be:
	ld   bc, $6503                                   ; $55be: $01 $03 $65
	inc  bc                                          ; $55c1: $03
	rst  $30                                         ; $55c2: $f7
	ld   h, l                                        ; $55c3: $65
	ld   l, l                                        ; $55c4: $6d
	ld   a, b                                        ; $55c5: $78
	ld   [$9f00], sp                                 ; $55c6: $08 $00 $9f
	dec  c                                           ; $55c9: $0d
	sub  d                                           ; $55ca: $92
	sbc  c                                           ; $55cb: $99
	ld   h, [hl]                                     ; $55cc: $66
	sub  c                                           ; $55cd: $91
	ld   a, b                                        ; $55ce: $78
	ld   d, d                                        ; $55cf: $52
	ld   e, c                                        ; $55d0: $59
	sbc  a                                           ; $55d1: $9f
	dec  c                                           ; $55d2: $0d
	nop                                              ; $55d3: $00
	dec  b                                           ; $55d4: $05
	add  b                                           ; $55d5: $80
	add  [hl]                                        ; $55d6: $86
	ld   bc, $0001                                   ; $55d7: $01 $01 $00
	ld   bc, $6763                                   ; $55da: $01 $63 $67
	ld   e, d                                        ; $55dd: $5a
	ld   l, [hl]                                     ; $55de: $6e
	ld   l, d                                        ; $55df: $6a
	ld   a, [$000d]                                  ; $55e0: $fa $0d $00
	ld   a, [bc]                                     ; $55e3: $0a
	ld   b, $b5                                      ; $55e4: $06 $b5
	inc  b                                           ; $55e6: $04
	inc  e                                           ; $55e7: $1c
	ld   b, $01                                      ; $55e8: $06 $01
	ld   bc, $401d                                   ; $55ea: $01 $1d $40
	ld   d, $03                                      ; $55ed: $16 $03
	ld   d, $01                                      ; $55ef: $16 $01
	ld   bc, $0028                                   ; $55f1: $01 $28 $00
	ld   bc, $508c                                   ; $55f4: $01 $8c $50
	adc  h                                           ; $55f7: $8c
	ld   d, b                                        ; $55f8: $50
	ld   [hl], c                                     ; $55f9: $71
	ld   [hl], h                                     ; $55fa: $74
	halt                                             ; $55fb: $76
	ld   h, c                                        ; $55fc: $61
	ld   l, [hl]                                     ; $55fd: $6e
	ld   a, b                                        ; $55fe: $78

jr_068_55ff:
	sbc  a                                           ; $55ff: $9f
	dec  c                                           ; $5600: $0d
	ld   [hl], l                                     ; $5601: $75
	sub  b                                           ; $5602: $90
	sbc  [hl]                                        ; $5603: $9e
	ld   [bc], a                                     ; $5604: $02
	jr   nz, jr_068_55ff                             ; $5605: $20 $f8

	ld   [bc], a                                     ; $5607: $02
	sbc  e                                           ; $5608: $9b
	ld   [hl], l                                     ; $5609: $75
	sub  [hl]                                        ; $560a: $96
	ld   e, l                                        ; $560b: $5d
	ld   h, c                                        ; $560c: $61
	ld   h, c                                        ; $560d: $61
	adc  h                                           ; $560e: $8c
	ld   [hl], l                                     ; $560f: $75
	dec  c                                           ; $5610: $0d
	inc  bc                                          ; $5611: $03
	ld   h, l                                        ; $5612: $65
	inc  bc                                          ; $5613: $03
	rst  $30                                         ; $5614: $f7
	ld   h, l                                        ; $5615: $65
	ld   l, l                                        ; $5616: $6d
	ld   a, b                                        ; $5617: $78
	sbc  a                                           ; $5618: $9f
	xor  c                                           ; $5619: $a9
	db   $eb                                         ; $561a: $eb
	and  l                                           ; $561b: $a5
	ld   l, d                                        ; $561c: $6a
	sbc  a                                           ; $561d: $9f
	dec  c                                           ; $561e: $0d
	nop                                              ; $561f: $00
	ld   a, [bc]                                     ; $5620: $0a
	ld   b, $b5                                      ; $5621: $06 $b5
	inc  b                                           ; $5623: $04
	inc  e                                           ; $5624: $1c
	ld   b, $00                                      ; $5625: $06 $00
	nop                                              ; $5627: $00
	ld   bc, $9166                                   ; $5628: $01 $66 $91
	sbc  [hl]                                        ; $562b: $9e
	inc  bc                                          ; $562c: $03
	jr   z, @-$66                                    ; $562d: $28 $98

	sbc  l                                           ; $562f: $9d
	ld   l, b                                        ; $5630: $68
	ld   e, c                                        ; $5631: $59
	ld   l, [hl]                                     ; $5632: $6e
	ld   e, a                                        ; $5633: $5f
	ld   [hl], a                                     ; $5634: $77
	dec  c                                           ; $5635: $0d
	ld   e, d                                        ; $5636: $5a
	and  c                                           ; $5637: $a1
	ld   a, [hl]                                     ; $5638: $7e
	sbc  d                                           ; $5639: $9a
	sub  [hl]                                        ; $563a: $96
	sbc  a                                           ; $563b: $9f
	dec  c                                           ; $563c: $0d
	nop                                              ; $563d: $00
	ld   a, [bc]                                     ; $563e: $0a
	dec  c                                           ; $563f: $0d
	nop                                              ; $5640: $00
	nop                                              ; $5641: $00
	rrca                                             ; $5642: $0f
	nop                                              ; $5643: $00
	ld   bc, $1e09                                   ; $5644: $01 $09 $1e
	nop                                              ; $5647: $00
	inc  e                                           ; $5648: $1c
	ld   b, $05                                      ; $5649: $06 $05
	dec  b                                           ; $564b: $05
	dec  e                                           ; $564c: $1d
	ld   b, b                                        ; $564d: $40
	ld   d, $03                                      ; $564e: $16 $03
	ld   d, $01                                      ; $5650: $16 $01
	ld   [bc], a                                     ; $5652: $02
	add  hl, hl                                      ; $5653: $29
	nop                                              ; $5654: $00
	ld   bc, $a16a                                   ; $5655: $01 $6a $a1
	ld   l, d                                        ; $5658: $6a
	and  c                                           ; $5659: $a1
	pop  bc                                          ; $565a: $c1
	db   $e3                                         ; $565b: $e3
	ld   h, [hl]                                     ; $565c: $66
	sub  c                                           ; $565d: $91
	ld   a, b                                        ; $565e: $78
	ld   d, d                                        ; $565f: $52

jr_068_5660:
	ld   e, c                                        ; $5660: $59
	sbc  a                                           ; $5661: $9f
	dec  c                                           ; $5662: $0d
	ld   h, c                                        ; $5663: $61
	ld   a, h                                        ; $5664: $7c
	ld   [bc], a                                     ; $5665: $02
	jr   nz, jr_068_5660                             ; $5666: $20 $f8

	ld   [bc], a                                     ; $5668: $02
	sbc  e                                           ; $5669: $9b
	inc  b                                           ; $566a: $04
	ld   c, c                                        ; $566b: $49
	ld   h, l                                        ; $566c: $65
	ld   [hl], h                                     ; $566d: $74
	ld   l, l                                        ; $566e: $6d
	and  c                                           ; $566f: $a1
	ld   l, [hl]                                     ; $5670: $6e
	sbc  a                                           ; $5671: $9f
	dec  c                                           ; $5672: $0d
	ld   [$9f00], sp                                 ; $5673: $08 $00 $9f
	ld   e, d                                        ; $5676: $5a
	ld   [hl], c                                     ; $5677: $71
	ld   e, c                                        ; $5678: $59
	sbc  b                                           ; $5679: $98
	ld   l, [hl]                                     ; $567a: $6e
	ld   l, d                                        ; $567b: $6a
	sbc  a                                           ; $567c: $9f
	dec  c                                           ; $567d: $0d
	nop                                              ; $567e: $00
	ld   a, [bc]                                     ; $567f: $0a
	dec  c                                           ; $5680: $0d
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	rrca                                             ; $5683: $0f
	nop                                              ; $5684: $00
	ld   bc, $1e09                                   ; $5685: $01 $09 $1e
	nop                                              ; $5688: $00
	nop                                              ; $5689: $00
	inc  e                                           ; $568a: $1c
	rrca                                             ; $568b: $0f
	ld   bc, $0201                                   ; $568c: $01 $01 $02
	ld   bc, $5092                                   ; $568f: $01 $92 $50
	sbc  [hl]                                        ; $5692: $9e
	ld   [$5d00], sp                                 ; $5693: $08 $00 $5d
	and  c                                           ; $5696: $a1
	sbc  a                                           ; $5697: $9f
	dec  c                                           ; $5698: $0d
	nop                                              ; $5699: $00
	ld   a, [bc]                                     ; $569a: $0a
	dec  b                                           ; $569b: $05
	add  b                                           ; $569c: $80
	ld   a, c                                        ; $569d: $79
	ld   bc, $0001                                   ; $569e: $01 $01 $00
	rlca                                             ; $56a1: $07
	ld   d, a                                        ; $56a2: $57
	nop                                              ; $56a3: $00
	inc  b                                           ; $56a4: $04
	add  b                                           ; $56a5: $80
	rst  ToBoot                                         ; $56a6: $c7
	ld   bc, $20ff                                   ; $56a7: $01 $ff $20
	nop                                              ; $56aa: $00
	dec  b                                           ; $56ab: $05
	add  b                                           ; $56ac: $80
	rst  ToBoot                                         ; $56ad: $c7
	ld   bc, $0001                                   ; $56ae: $01 $01 $00
	ld   bc, $7305                                   ; $56b1: $01 $05 $73
	ld   a, l                                        ; $56b4: $7d
	ld   [bc], a                                     ; $56b5: $02
	ld   d, b                                        ; $56b6: $50
	inc  bc                                          ; $56b7: $03
	ld   e, b                                        ; $56b8: $58
	ld   b, $2d                                      ; $56b9: $06 $2d
	ld   [bc], a                                     ; $56bb: $02
	jr   nz, @+$01                                   ; $56bc: $20 $ff

	rst  $38                                         ; $56be: $ff
	dec  c                                           ; $56bf: $0d
	inc  b                                           ; $56c0: $04
	ld   c, $03                                      ; $56c1: $0e $03
	sub  b                                           ; $56c3: $90
	halt                                             ; $56c4: $76
	ld   a, l                                        ; $56c5: $7d
	inc  b                                           ; $56c6: $04
	ld   c, $7c                                      ; $56c7: $0e $7c
	inc  bc                                          ; $56c9: $03
	sub  d                                           ; $56ca: $92
	inc  b                                           ; $56cb: $04
	ld   [$9f6e], a                                  ; $56cc: $ea $6e $9f
	dec  c                                           ; $56cf: $0d
	ld   [bc], a                                     ; $56d0: $02
	dec  bc                                          ; $56d1: $0b
	ld   [bc], a                                     ; $56d2: $02
	xor  d                                           ; $56d3: $aa
	sbc  [hl]                                        ; $56d4: $9e
	sub  [hl]                                        ; $56d5: $96
	sbc  e                                           ; $56d6: $9b
	ld   h, l                                        ; $56d7: $65
	ld   e, l                                        ; $56d8: $5d
	ld   a, b                                        ; $56d9: $78
	sbc  a                                           ; $56da: $9f
	dec  c                                           ; $56db: $0d
	nop                                              ; $56dc: $00
	ld   a, [bc]                                     ; $56dd: $0a
	ld   b, $81                                      ; $56de: $06 $81
	nop                                              ; $56e0: $00
	ld   bc, $7305                                   ; $56e1: $01 $05 $73
	ld   a, l                                        ; $56e4: $7d
	ld   [bc], a                                     ; $56e5: $02
	ld   d, b                                        ; $56e6: $50
	inc  bc                                          ; $56e7: $03
	ld   e, b                                        ; $56e8: $58
	ld   b, $2d                                      ; $56e9: $06 $2d
	ld   [bc], a                                     ; $56eb: $02
	jr   nz, @+$01                                   ; $56ec: $20 $ff

	rst  $38                                         ; $56ee: $ff
	dec  c                                           ; $56ef: $0d
	ld   e, b                                        ; $56f0: $58
	ld   [hl], c                                     ; $56f1: $71
	halt                                             ; $56f2: $76
	sbc  [hl]                                        ; $56f3: $9e
	inc  bc                                          ; $56f4: $03
	sub  h                                           ; $56f5: $94
	dec  b                                           ; $56f6: $05
	inc  sp                                          ; $56f7: $33
	dec  b                                           ; $56f8: $05
	ld   b, a                                        ; $56f9: $47
	dec  b                                           ; $56fa: $05
	ld   [hl-], a                                    ; $56fb: $32
	ld   a, l                                        ; $56fc: $7d
	dec  c                                           ; $56fd: $0d
	ld   h, c                                        ; $56fe: $61
	ld   a, h                                        ; $56ff: $7c
	inc  bc                                          ; $5700: $03
	ld   c, a                                        ; $5701: $4f
	sub  d                                           ; $5702: $92
	ld   [hl], c                                     ; $5703: $71
	ld   l, l                                        ; $5704: $6d
	ld   a, b                                        ; $5705: $78
	rst  $38                                         ; $5706: $ff
	rst  $38                                         ; $5707: $ff
	dec  c                                           ; $5708: $0d
	nop                                              ; $5709: $00
	ld   a, [bc]                                     ; $570a: $0a
	ld   bc, $ca02                                   ; $570b: $01 $02 $ca
	ld   e, d                                        ; $570e: $5a
	inc  b                                           ; $570f: $04
	ld   [$8f02], sp                                 ; $5710: $08 $02 $8f
	ld   [bc], a                                     ; $5713: $02
	sub  b                                           ; $5714: $90
	ld   [bc], a                                     ; $5715: $02
	sub  c                                           ; $5716: $91
	inc  b                                           ; $5717: $04
	add  hl, bc                                      ; $5718: $09
	ld   a, h                                        ; $5719: $7c
	ld   h, c                                        ; $571a: $61
	halt                                             ; $571b: $76
	and  b                                           ; $571c: $a0
	dec  c                                           ; $571d: $0d
	ld   [hl], a                                     ; $571e: $77
	sbc  d                                           ; $571f: $9a
	ld   l, [hl]                                     ; $5720: $6e
	ld   e, a                                        ; $5721: $5f
	ld   [bc], a                                     ; $5722: $02
	and  d                                           ; $5723: $a2
	and  c                                           ; $5724: $a1
	ld   l, [hl]                                     ; $5725: $6e
	ld   e, c                                        ; $5726: $59
	dec  c                                           ; $5727: $0d
	or   b                                           ; $5728: $b0
	and  l                                           ; $5729: $a5
	cp   e                                           ; $572a: $bb
	ld   [hl], l                                     ; $572b: $75
	ld   [bc], a                                     ; $572c: $02
	sbc  a                                           ; $572d: $9f
	ld   e, c                                        ; $572e: $59
	adc  a                                           ; $572f: $8f
	ld   [hl], h                                     ; $5730: $74
	ld   d, b                                        ; $5731: $50
	ld   h, b                                        ; $5732: $60
	sub  [hl]                                        ; $5733: $96
	ld   d, h                                        ; $5734: $54
	sbc  a                                           ; $5735: $9f
	dec  c                                           ; $5736: $0d
	nop                                              ; $5737: $00
	ld   a, [bc]                                     ; $5738: $0a
	dec  c                                           ; $5739: $0d
	rrca                                             ; $573a: $0f
	db   $10                                         ; $573b: $10
	rrca                                             ; $573c: $0f
	rrca                                             ; $573d: $0f
	ld   bc, $6501                                   ; $573e: $01 $01 $65
	ld   d, b                                        ; $5741: $50
	sbc  l                                           ; $5742: $9d
	ld   l, c                                        ; $5743: $69
	ld   l, [hl]                                     ; $5744: $6e
	ld   a, b                                        ; $5745: $78
	ld   c, a                                        ; $5746: $4f
	db   $fc                                         ; $5747: $fc
	rst  $38                                         ; $5748: $ff
	rst  $38                                         ; $5749: $ff
	dec  c                                           ; $574a: $0d
	ld   h, c                                        ; $574b: $61
	and  c                                           ; $574c: $a1
	ld   a, b                                        ; $574d: $78
	inc  b                                           ; $574e: $04
	db   $ec                                         ; $574f: $ec
	and  b                                           ; $5750: $a0
	sub  b                                           ; $5751: $90
	sub  a                                           ; $5752: $97
	ld   d, [hl]                                     ; $5753: $56
	sbc  c                                           ; $5754: $99
	ld   a, b                                        ; $5755: $78
	and  c                                           ; $5756: $a1
	ld   [hl], h                                     ; $5757: $74
	sbc  a                                           ; $5758: $9f
	dec  c                                           ; $5759: $0d
	nop                                              ; $575a: $00
	ld   a, [bc]                                     ; $575b: $0a
	inc  e                                           ; $575c: $1c
	rrca                                             ; $575d: $0f
	ld   [bc], a                                     ; $575e: $02
	ld   [bc], a                                     ; $575f: $02
	ld   bc, $7463                                   ; $5760: $01 $63 $74
	inc  b                                           ; $5763: $04
	cp   a                                           ; $5764: $bf
	inc  b                                           ; $5765: $04
	dec  d                                           ; $5766: $15
	ld   l, [hl]                                     ; $5767: $6e
	ld   a, [$000d]                                  ; $5768: $fa $0d $00
	ld   a, [bc]                                     ; $576b: $0a
	ld   b, $27                                      ; $576c: $06 $27
	ld   bc, $0f1c                                   ; $576e: $01 $1c $0f
	ld   bc, $0101                                   ; $5771: $01 $01 $01
	ld   [bc], a                                     ; $5774: $02
	dec  bc                                          ; $5775: $0b
	inc  bc                                          ; $5776: $03
	ld   h, l                                        ; $5777: $65
	ld   [hl], l                                     ; $5778: $75
	or   b                                           ; $5779: $b0
	and  l                                           ; $577a: $a5
	cp   e                                           ; $577b: $bb
	ld   a, l                                        ; $577c: $7d
	inc  bc                                          ; $577d: $03
	ld   a, [hl]                                     ; $577e: $7e
	sbc  l                                           ; $577f: $9d
	sbc  b                                           ; $5780: $98
	ld   l, [hl]                                     ; $5781: $6e
	sbc  a                                           ; $5782: $9f
	dec  c                                           ; $5783: $0d
	ld   [bc], a                                     ; $5784: $02
	jp   z, EnqueueHDMATransfer                                    ; $5785: $ca $7c $02

	and  c                                           ; $5788: $a1
	inc  bc                                          ; $5789: $03
	and  b                                           ; $578a: $a0
	ld   l, a                                        ; $578b: $6f
	ld   a, l                                        ; $578c: $7d
	sbc  [hl]                                        ; $578d: $9e
	rst  JumpTable                                         ; $578e: $df
	db   $ec                                         ; $578f: $ec
	and  e                                           ; $5790: $a3
	ld   h, e                                        ; $5791: $63
	and  c                                           ; $5792: $a1
	ld   a, c                                        ; $5793: $79
	dec  c                                           ; $5794: $0d
	inc  b                                           ; $5795: $04
	ld   [de], a                                     ; $5796: $12
	ld   d, [hl]                                     ; $5797: $56
	ld   [hl], h                                     ; $5798: $74
	ld   e, b                                        ; $5799: $58
	ld   e, l                                        ; $579a: $5d
	sub  [hl]                                        ; $579b: $96
	rst  $38                                         ; $579c: $ff
	rst  $38                                         ; $579d: $ff
	and  e                                           ; $579e: $a3
	ret  z                                           ; $579f: $c8

	and  h                                           ; $57a0: $a4
	xor  e                                           ; $57a1: $ab
	cp   d                                           ; $57a2: $ba
	ld   a, [$000d]                                  ; $57a3: $fa $0d $00
	ld   a, [bc]                                     ; $57a6: $0a
	dec  e                                           ; $57a7: $1d
	ld   b, b                                        ; $57a8: $40
	inc  de                                          ; $57a9: $13
	inc  bc                                          ; $57aa: $03
	inc  de                                          ; $57ab: $13
	inc  bc                                          ; $57ac: $03
	rst  $38                                         ; $57ad: $ff
	jr   z, jr_068_57b0                              ; $57ae: $28 $00

jr_068_57b0:
	nop                                              ; $57b0: $00
	dec  b                                           ; $57b1: $05
	ld   b, b                                        ; $57b2: $40
	cp   $01                                         ; $57b3: $fe $01
	nop                                              ; $57b5: $00
	nop                                              ; $57b6: $00
	dec  b                                           ; $57b7: $05
	add  b                                           ; $57b8: $80
	ld   c, a                                        ; $57b9: $4f
	ld   bc, $0000                                   ; $57ba: $01 $00 $00
	dec  b                                           ; $57bd: $05
	add  b                                           ; $57be: $80
	ld   d, b                                        ; $57bf: $50
	ld   bc, $0000                                   ; $57c0: $01 $00 $00
	dec  b                                           ; $57c3: $05
	add  b                                           ; $57c4: $80
	ld   d, c                                        ; $57c5: $51
	ld   bc, $0000                                   ; $57c6: $01 $00 $00
	dec  b                                           ; $57c9: $05
	add  b                                           ; $57ca: $80
	ld   d, d                                        ; $57cb: $52
	ld   bc, $0000                                   ; $57cc: $01 $00 $00
	dec  b                                           ; $57cf: $05
	add  b                                           ; $57d0: $80
	ld   d, e                                        ; $57d1: $53
	ld   bc, $0000                                   ; $57d2: $01 $00 $00
	dec  b                                           ; $57d5: $05
	add  b                                           ; $57d6: $80
	ld   d, h                                        ; $57d7: $54
	ld   bc, $0000                                   ; $57d8: $01 $00 $00
	dec  b                                           ; $57db: $05
	add  b                                           ; $57dc: $80
	ld   d, l                                        ; $57dd: $55
	ld   bc, $0000                                   ; $57de: $01 $00 $00
	dec  b                                           ; $57e1: $05
	add  b                                           ; $57e2: $80
	ld   d, [hl]                                     ; $57e3: $56
	ld   bc, $0000                                   ; $57e4: $01 $00 $00
	dec  b                                           ; $57e7: $05
	add  b                                           ; $57e8: $80
	ld   d, a                                        ; $57e9: $57
	ld   bc, $0000                                   ; $57ea: $01 $00 $00
	rlca                                             ; $57ed: $07
	push hl                                          ; $57ee: $e5
	nop                                              ; $57ef: $00
	inc  bc                                          ; $57f0: $03
	cp   $01                                         ; $57f1: $fe $01
	inc  bc                                          ; $57f3: $03
	dec  h                                           ; $57f4: $25
	nop                                              ; $57f5: $00
	dec  b                                           ; $57f6: $05
	ld   b, b                                        ; $57f7: $40
	cp   $03                                         ; $57f8: $fe $03
	cp   $01                                         ; $57fa: $fe $01
	ld   bc, $0028                                   ; $57fc: $01 $28 $00
	jr   nz, jr_068_5802                             ; $57ff: $20 $01

	ld   e, d                                        ; $5801: $5a

jr_068_5802:
	nop                                              ; $5802: $00
	rlca                                             ; $5803: $07
	call nz, $0201                                   ; $5804: $c4 $01 $02
	dec  b                                           ; $5807: $05
	ld   bc, $220a                                   ; $5808: $01 $0a $22
	nop                                              ; $580b: $00
	rlca                                             ; $580c: $07
	ld   e, l                                        ; $580d: $5d
	ld   [bc], a                                     ; $580e: $02
	ld   [bc], a                                     ; $580f: $02
	dec  b                                           ; $5810: $05
	ld   bc, $2214                                   ; $5811: $01 $14 $22
	nop                                              ; $5814: $00
	rlca                                             ; $5815: $07
	db   $fd                                         ; $5816: $fd
	ld   [bc], a                                     ; $5817: $02
	ld   [bc], a                                     ; $5818: $02
	dec  b                                           ; $5819: $05
	ld   bc, $221e                                   ; $581a: $01 $1e $22
	nop                                              ; $581d: $00
	rlca                                             ; $581e: $07
	and  c                                           ; $581f: $a1
	inc  bc                                          ; $5820: $03
	ld   [bc], a                                     ; $5821: $02
	dec  b                                           ; $5822: $05
	ld   bc, $2228                                   ; $5823: $01 $28 $22
	nop                                              ; $5826: $00
	rlca                                             ; $5827: $07
	add  hl, sp                                      ; $5828: $39
	inc  b                                           ; $5829: $04
	ld   [bc], a                                     ; $582a: $02
	dec  b                                           ; $582b: $05
	ld   bc, $2232                                   ; $582c: $01 $32 $22
	nop                                              ; $582f: $00
	rlca                                             ; $5830: $07
	adc  $04                                         ; $5831: $ce $04
	ld   [bc], a                                     ; $5833: $02
	dec  b                                           ; $5834: $05
	ld   bc, $223c                                   ; $5835: $01 $3c $22
	nop                                              ; $5838: $00
	rlca                                             ; $5839: $07
	ld   l, h                                        ; $583a: $6c
	dec  b                                           ; $583b: $05
	ld   [bc], a                                     ; $583c: $02
	dec  b                                           ; $583d: $05
	ld   bc, $2246                                   ; $583e: $01 $46 $22
	nop                                              ; $5841: $00
	rlca                                             ; $5842: $07
	db   $10                                         ; $5843: $10
	ld   b, $02                                      ; $5844: $06 $02
	dec  b                                           ; $5846: $05
	ld   bc, $2250                                   ; $5847: $01 $50 $22
	nop                                              ; $584a: $00
	ld   b, $c0                                      ; $584b: $06 $c0
	ld   b, $07                                      ; $584d: $06 $07
	ld   e, l                                        ; $584f: $5d
	ld   [bc], a                                     ; $5850: $02
	inc  b                                           ; $5851: $04
	add  b                                           ; $5852: $80
	ld   c, a                                        ; $5853: $4f
	ld   bc, $20ff                                   ; $5854: $01 $ff $20
	nop                                              ; $5857: $00
	dec  b                                           ; $5858: $05
	add  b                                           ; $5859: $80
	ld   c, a                                        ; $585a: $4f
	ld   bc, $0001                                   ; $585b: $01 $01 $00
	ld   bc, $ecdf                                   ; $585e: $01 $df $ec
	and  e                                           ; $5861: $a3
	ld   h, e                                        ; $5862: $63
	and  c                                           ; $5863: $a1
	ld   a, h                                        ; $5864: $7c
	inc  bc                                          ; $5865: $03
	ld   d, d                                        ; $5866: $52
	adc  h                                           ; $5867: $8c
	sbc  d                                           ; $5868: $9a
	ld   l, l                                        ; $5869: $6d
	ld   [bc], a                                     ; $586a: $02
	adc  a                                           ; $586b: $8f
	ld   a, l                                        ; $586c: $7d
	ld   sp, hl                                      ; $586d: $f9
	dec  c                                           ; $586e: $0d
	nop                                              ; $586f: $00
	ld   a, [bc]                                     ; $5870: $0a
	add  hl, de                                      ; $5871: $19
	dec  b                                           ; $5872: $05
	inc  bc                                          ; $5873: $03
	rst  $28                                         ; $5874: $ef
	cp   b                                           ; $5875: $b8
	and  e                                           ; $5876: $a3
	nop                                              ; $5877: $00
	nop                                              ; $5878: $00
	and  e                                           ; $5879: $a3
	db   $e3                                         ; $587a: $e3
	db   $ec                                         ; $587b: $ec

Jump_068_587c:
	xor  h                                           ; $587c: $ac
	nop                                              ; $587d: $00
	ld   bc, $afa5                                   ; $587e: $01 $a5 $af
	db   $ec                                         ; $5881: $ec
	cp   d                                           ; $5882: $ba
	nop                                              ; $5883: $00
	ld   [bc], a                                     ; $5884: $02
	rlca                                             ; $5885: $07
	add  hl, de                                      ; $5886: $19
	ld   [bc], a                                     ; $5887: $02
	ld   [bc], a                                     ; $5888: $02
	inc  bc                                          ; $5889: $03
	ld   bc, $2000                                   ; $588a: $01 $00 $20
	nop                                              ; $588d: $00
	rlca                                             ; $588e: $07
	ld   [hl], $02                                   ; $588f: $36 $02
	ld   [bc], a                                     ; $5891: $02
	inc  bc                                          ; $5892: $03
	ld   bc, $2001                                   ; $5893: $01 $01 $20
	nop                                              ; $5896: $00
	rlca                                             ; $5897: $07
	ld   [hl], $02                                   ; $5898: $36 $02
	ld   [bc], a                                     ; $589a: $02
	inc  bc                                          ; $589b: $03
	ld   bc, $2002                                   ; $589c: $01 $02 $20
	nop                                              ; $589f: $00
	ld   b, $36                                      ; $58a0: $06 $36
	ld   [bc], a                                     ; $58a2: $02
	inc  e                                           ; $58a3: $1c
	rrca                                             ; $58a4: $0f
	ld   bc, $1401                                   ; $58a5: $01 $01 $14
	dec  de                                          ; $58a8: $1b
	ld   bc, $0301                                   ; $58a9: $01 $01 $03
	ld   c, d                                        ; $58ac: $4a
	ld   [bc], a                                     ; $58ad: $02
	or   h                                           ; $58ae: $b4
	ld   l, [hl]                                     ; $58af: $6e
	sbc  a                                           ; $58b0: $9f
	dec  c                                           ; $58b1: $0d
	nop                                              ; $58b2: $00
	ld   a, [bc]                                     ; $58b3: $0a
	dec  b                                           ; $58b4: $05
	ld   b, b                                        ; $58b5: $40
	rst  $38                                         ; $58b6: $ff
	inc  bc                                          ; $58b7: $03
	rst  $38                                         ; $58b8: $ff
	ld   bc, $2801                                   ; $58b9: $01 $01 $28
	nop                                              ; $58bc: $00
	ld   b, $63                                      ; $58bd: $06 $63
	ld   bc, $0f1c                                   ; $58bf: $01 $1c $0f
	ld   [bc], a                                     ; $58c2: $02
	ld   [bc], a                                     ; $58c3: $02
	inc  d                                           ; $58c4: $14
	inc  e                                           ; $58c5: $1c
	ld   bc, $0301                                   ; $58c6: $01 $01 $03
	jr   z, jr_068_58cf                              ; $58c9: $28 $04

	ld   c, b                                        ; $58cb: $48
	ld   l, [hl]                                     ; $58cc: $6e
	ld   [hl], c                                     ; $58cd: $71
	ld   l, l                                        ; $58ce: $6d

jr_068_58cf:
	ld   a, b                                        ; $58cf: $78
	rst  $38                                         ; $58d0: $ff
	rst  $38                                         ; $58d1: $ff
	dec  c                                           ; $58d2: $0d
	inc  bc                                          ; $58d3: $03
	ld   c, d                                        ; $58d4: $4a
	ld   [bc], a                                     ; $58d5: $02
	or   h                                           ; $58d6: $b4
	ld   a, l                                        ; $58d7: $7d
	ld   bc, $ef07                                   ; $58d8: $01 $07 $ef
	cp   b                                           ; $58db: $b8
	and  e                                           ; $58dc: $a3
	ld   bc, $6e08                                   ; $58dd: $01 $08 $6e
	sbc  a                                           ; $58e0: $9f
	dec  c                                           ; $58e1: $0d
	nop                                              ; $58e2: $00
	ld   a, [bc]                                     ; $58e3: $0a
	ld   b, $63                                      ; $58e4: $06 $63
	ld   bc, $fd07                                   ; $58e6: $01 $07 $fd
	ld   [bc], a                                     ; $58e9: $02
	inc  b                                           ; $58ea: $04
	add  b                                           ; $58eb: $80
	ld   d, b                                        ; $58ec: $50
	ld   bc, $20ff                                   ; $58ed: $01 $ff $20
	nop                                              ; $58f0: $00
	dec  b                                           ; $58f1: $05
	add  b                                           ; $58f2: $80
	ld   d, b                                        ; $58f3: $50
	ld   bc, $0001                                   ; $58f4: $01 $01 $00
	ld   bc, $ecdf                                   ; $58f7: $01 $df $ec
	and  e                                           ; $58fa: $a3
	ld   h, e                                        ; $58fb: $63
	and  c                                           ; $58fc: $a1
	ld   e, d                                        ; $58fd: $5a
	ld   b, $02                                      ; $58fe: $06 $02
	ld   [bc], a                                     ; $5900: $02
	ld   b, $76                                      ; $5901: $06 $76
	ld   h, a                                        ; $5903: $67
	sbc  c                                           ; $5904: $99
	dec  c                                           ; $5905: $0d
	dec  b                                           ; $5906: $05
	ld   [bc], a                                     ; $5907: $02
	dec  b                                           ; $5908: $05
	ld   de, $f97d                                   ; $5909: $11 $7d $f9
	dec  c                                           ; $590c: $0d
	nop                                              ; $590d: $00
	ld   a, [bc]                                     ; $590e: $0a
	add  hl, de                                      ; $590f: $19
	dec  b                                           ; $5910: $05
	inc  bc                                          ; $5911: $03
	db   $dd                                         ; $5912: $dd
	db   $ed                                         ; $5913: $ed
	cp   b                                           ; $5914: $b8
	jp   nz, $0000                                  ; $5915: $c2 $00 $00

	xor  h                                           ; $5918: $ac
	xor  $fb                                         ; $5919: $ee $fb
	nop                                              ; $591b: $00
	ld   bc, $d2ba                                   ; $591c: $01 $ba $d2
	or   e                                           ; $591f: $b3
	rst  ToBoot                                         ; $5920: $c7
	and  h                                           ; $5921: $a4
	nop                                              ; $5922: $00
	ld   [bc], a                                     ; $5923: $02
	rlca                                             ; $5924: $07
	cp   b                                           ; $5925: $b8
	ld   [bc], a                                     ; $5926: $02
	ld   [bc], a                                     ; $5927: $02
	inc  bc                                          ; $5928: $03
	ld   bc, $2000                                   ; $5929: $01 $00 $20
	nop                                              ; $592c: $00
	rlca                                             ; $592d: $07
	push de                                          ; $592e: $d5
	ld   [bc], a                                     ; $592f: $02
	ld   [bc], a                                     ; $5930: $02
	inc  bc                                          ; $5931: $03
	ld   bc, $2001                                   ; $5932: $01 $01 $20
	nop                                              ; $5935: $00
	rlca                                             ; $5936: $07
	push de                                          ; $5937: $d5
	ld   [bc], a                                     ; $5938: $02
	ld   [bc], a                                     ; $5939: $02
	inc  bc                                          ; $593a: $03
	ld   bc, $2002                                   ; $593b: $01 $02 $20
	nop                                              ; $593e: $00
	ld   b, $d5                                      ; $593f: $06 $d5
	ld   [bc], a                                     ; $5941: $02
	inc  e                                           ; $5942: $1c
	rrca                                             ; $5943: $0f
	ld   bc, $1401                                   ; $5944: $01 $01 $14
	dec  de                                          ; $5947: $1b
	ld   bc, $0301                                   ; $5948: $01 $01 $03
	ld   c, d                                        ; $594b: $4a
	ld   [bc], a                                     ; $594c: $02
	or   h                                           ; $594d: $b4
	ld   l, [hl]                                     ; $594e: $6e
	sbc  a                                           ; $594f: $9f
	dec  c                                           ; $5950: $0d
	nop                                              ; $5951: $00
	ld   a, [bc]                                     ; $5952: $0a
	dec  b                                           ; $5953: $05
	ld   b, b                                        ; $5954: $40
	rst  $38                                         ; $5955: $ff
	inc  bc                                          ; $5956: $03
	rst  $38                                         ; $5957: $ff
	ld   bc, $2801                                   ; $5958: $01 $01 $28
	nop                                              ; $595b: $00
	ld   b, $63                                      ; $595c: $06 $63
	ld   bc, $0f1c                                   ; $595e: $01 $1c $0f
	ld   [bc], a                                     ; $5961: $02
	ld   [bc], a                                     ; $5962: $02
	inc  d                                           ; $5963: $14
	inc  e                                           ; $5964: $1c
	ld   bc, $0301                                   ; $5965: $01 $01 $03
	jr   z, jr_068_596e                              ; $5968: $28 $04

	ld   c, b                                        ; $596a: $48
	ld   l, [hl]                                     ; $596b: $6e
	ld   [hl], c                                     ; $596c: $71
	ld   l, l                                        ; $596d: $6d

jr_068_596e:
	ld   a, b                                        ; $596e: $78
	rst  $38                                         ; $596f: $ff
	rst  $38                                         ; $5970: $ff
	dec  c                                           ; $5971: $0d
	inc  bc                                          ; $5972: $03
	ld   c, d                                        ; $5973: $4a
	ld   [bc], a                                     ; $5974: $02
	or   h                                           ; $5975: $b4
	ld   a, l                                        ; $5976: $7d
	ld   bc, $dd07                                   ; $5977: $01 $07 $dd
	db   $ed                                         ; $597a: $ed
	cp   b                                           ; $597b: $b8
	jp   nz, $0801                                   ; $597c: $c2 $01 $08

	ld   l, [hl]                                     ; $597f: $6e
	sbc  a                                           ; $5980: $9f
	dec  c                                           ; $5981: $0d
	nop                                              ; $5982: $00
	ld   a, [bc]                                     ; $5983: $0a
	ld   b, $63                                      ; $5984: $06 $63
	ld   bc, $a107                                   ; $5986: $01 $07 $a1
	inc  bc                                          ; $5989: $03
	inc  b                                           ; $598a: $04
	add  b                                           ; $598b: $80
	ld   d, c                                        ; $598c: $51
	ld   bc, $20ff                                   ; $598d: $01 $ff $20
	nop                                              ; $5990: $00
	dec  b                                           ; $5991: $05
	add  b                                           ; $5992: $80
	ld   d, c                                        ; $5993: $51
	ld   bc, $0001                                   ; $5994: $01 $01 $00
	ld   bc, $ecdf                                   ; $5997: $01 $df $ec
	and  e                                           ; $599a: $a3
	ld   h, e                                        ; $599b: $63
	and  c                                           ; $599c: $a1
	ld   a, h                                        ; $599d: $7c
	inc  b                                           ; $599e: $04
	call nc, ConvertAintoBCD                                   ; $599f: $d4 $7d $0d
	ld   [hl], a                                     ; $59a2: $77
	ld   [hl], c                                     ; $59a3: $71
	ld   l, a                                        ; $59a4: $6f
	ld   e, d                                        ; $59a5: $5a
	inc  b                                           ; $59a6: $04
	ld   l, d                                        ; $59a7: $6a
	ld   [hl], l                                     ; $59a8: $75
	ld   e, c                                        ; $59a9: $59
	ld   e, l                                        ; $59aa: $5d
	sbc  d                                           ; $59ab: $9a
	ld   [hl], h                                     ; $59ac: $74
	ld   d, d                                        ; $59ad: $52
	sbc  c                                           ; $59ae: $99
	ld   sp, hl                                      ; $59af: $f9
	dec  c                                           ; $59b0: $0d
	nop                                              ; $59b1: $00
	ld   a, [bc]                                     ; $59b2: $0a
	add  hl, de                                      ; $59b3: $19
	dec  b                                           ; $59b4: $05
	inc  bc                                          ; $59b5: $03
	inc  bc                                          ; $59b6: $03
	ld   h, b                                        ; $59b7: $60
	inc  b                                           ; $59b8: $04
	call nc, $0000                                  ; $59b9: $d4 $00 $00
	ld   [bc], a                                     ; $59bc: $02
	inc  e                                           ; $59bd: $1c
	inc  b                                           ; $59be: $04
	call nc, Boot                                    ; $59bf: $d4 $00 $01
	ld   b, $3a                                      ; $59c2: $06 $3a
	inc  b                                           ; $59c4: $04
	call nc, $0200                                   ; $59c5: $d4 $00 $02
	rlca                                             ; $59c8: $07
	ld   e, h                                        ; $59c9: $5c
	inc  bc                                          ; $59ca: $03
	ld   [bc], a                                     ; $59cb: $02
	inc  bc                                          ; $59cc: $03
	ld   bc, $2000                                   ; $59cd: $01 $00 $20
	nop                                              ; $59d0: $00
	rlca                                             ; $59d1: $07
	ld   a, c                                        ; $59d2: $79
	inc  bc                                          ; $59d3: $03
	ld   [bc], a                                     ; $59d4: $02
	inc  bc                                          ; $59d5: $03
	ld   bc, $2001                                   ; $59d6: $01 $01 $20
	nop                                              ; $59d9: $00
	rlca                                             ; $59da: $07
	ld   a, c                                        ; $59db: $79
	inc  bc                                          ; $59dc: $03
	ld   [bc], a                                     ; $59dd: $02
	inc  bc                                          ; $59de: $03
	ld   bc, $2002                                   ; $59df: $01 $02 $20
	nop                                              ; $59e2: $00
	ld   b, $79                                      ; $59e3: $06 $79
	inc  bc                                          ; $59e5: $03
	inc  e                                           ; $59e6: $1c
	rrca                                             ; $59e7: $0f
	ld   bc, $1401                                   ; $59e8: $01 $01 $14
	dec  de                                          ; $59eb: $1b
	ld   bc, $0301                                   ; $59ec: $01 $01 $03
	ld   c, d                                        ; $59ef: $4a
	ld   [bc], a                                     ; $59f0: $02
	or   h                                           ; $59f1: $b4
	ld   l, [hl]                                     ; $59f2: $6e
	sbc  a                                           ; $59f3: $9f
	dec  c                                           ; $59f4: $0d
	nop                                              ; $59f5: $00
	ld   a, [bc]                                     ; $59f6: $0a
	dec  b                                           ; $59f7: $05
	ld   b, b                                        ; $59f8: $40
	rst  $38                                         ; $59f9: $ff
	inc  bc                                          ; $59fa: $03
	rst  $38                                         ; $59fb: $ff
	ld   bc, $2801                                   ; $59fc: $01 $01 $28
	nop                                              ; $59ff: $00
	ld   b, $63                                      ; $5a00: $06 $63
	ld   bc, $0f1c                                   ; $5a02: $01 $1c $0f
	ld   [bc], a                                     ; $5a05: $02
	ld   [bc], a                                     ; $5a06: $02
	inc  d                                           ; $5a07: $14
	inc  e                                           ; $5a08: $1c
	ld   bc, $0301                                   ; $5a09: $01 $01 $03
	jr   z, jr_068_5a12                              ; $5a0c: $28 $04

	ld   c, b                                        ; $5a0e: $48
	ld   l, [hl]                                     ; $5a0f: $6e
	ld   [hl], c                                     ; $5a10: $71
	ld   l, l                                        ; $5a11: $6d

jr_068_5a12:
	ld   a, b                                        ; $5a12: $78
	rst  $38                                         ; $5a13: $ff
	rst  $38                                         ; $5a14: $ff
	dec  c                                           ; $5a15: $0d
	inc  bc                                          ; $5a16: $03
	ld   c, d                                        ; $5a17: $4a
	ld   [bc], a                                     ; $5a18: $02
	or   h                                           ; $5a19: $b4
	ld   a, l                                        ; $5a1a: $7d
	ld   bc, $0307                                   ; $5a1b: $01 $07 $03
	ld   h, b                                        ; $5a1e: $60
	inc  b                                           ; $5a1f: $04
	call nc, $0801                                   ; $5a20: $d4 $01 $08
	ld   l, [hl]                                     ; $5a23: $6e
	sbc  a                                           ; $5a24: $9f
	dec  c                                           ; $5a25: $0d
	nop                                              ; $5a26: $00
	ld   a, [bc]                                     ; $5a27: $0a
	ld   b, $63                                      ; $5a28: $06 $63
	ld   bc, $3907                                   ; $5a2a: $01 $07 $39
	inc  b                                           ; $5a2d: $04
	inc  b                                           ; $5a2e: $04
	add  b                                           ; $5a2f: $80
	ld   d, d                                        ; $5a30: $52
	ld   bc, $20ff                                   ; $5a31: $01 $ff $20
	nop                                              ; $5a34: $00
	dec  b                                           ; $5a35: $05
	add  b                                           ; $5a36: $80
	ld   d, d                                        ; $5a37: $52
	ld   bc, $0001                                   ; $5a38: $01 $01 $00
	ld   bc, $ecdf                                   ; $5a3b: $01 $df $ec
	and  e                                           ; $5a3e: $a3
	ld   h, e                                        ; $5a3f: $63
	and  c                                           ; $5a40: $a1
	ld   a, h                                        ; $5a41: $7c
	inc  b                                           ; $5a42: $04
	rst  ToBoot                                         ; $5a43: $c7
	inc  bc                                          ; $5a44: $03
	sbc  h                                           ; $5a45: $9c
	ld   a, l                                        ; $5a46: $7d
	ld   sp, hl                                      ; $5a47: $f9
	dec  c                                           ; $5a48: $0d
	nop                                              ; $5a49: $00
	ld   a, [bc]                                     ; $5a4a: $0a
	add  hl, de                                      ; $5a4b: $19
	dec  b                                           ; $5a4c: $05
	inc  bc                                          ; $5a4d: $03
	ret  nz                                          ; $5a4e: $c0

	jp   nz, $cbd1                                   ; $5a4f: $c2 $d1 $cb

	nop                                              ; $5a52: $00
	nop                                              ; $5a53: $00
	or   b                                           ; $5a54: $b0
	or   [hl]                                        ; $5a55: $b6
	res  5, a                                        ; $5a56: $cb $af
	nop                                              ; $5a58: $00
	ld   bc, $eec7                                   ; $5a59: $01 $c7 $ee
	cp   c                                           ; $5a5c: $b9
	and  e                                           ; $5a5d: $a3
	nop                                              ; $5a5e: $00
	ld   [bc], a                                     ; $5a5f: $02
	rlca                                             ; $5a60: $07
	db   $f4                                         ; $5a61: $f4
	inc  bc                                          ; $5a62: $03
	ld   [bc], a                                     ; $5a63: $02
	inc  bc                                          ; $5a64: $03
	ld   bc, $2000                                   ; $5a65: $01 $00 $20
	nop                                              ; $5a68: $00
	rlca                                             ; $5a69: $07
	ld   de, $0204                                   ; $5a6a: $11 $04 $02
	inc  bc                                          ; $5a6d: $03
	ld   bc, $2001                                   ; $5a6e: $01 $01 $20
	nop                                              ; $5a71: $00
	rlca                                             ; $5a72: $07
	ld   de, $0204                                   ; $5a73: $11 $04 $02
	inc  bc                                          ; $5a76: $03
	ld   bc, $2002                                   ; $5a77: $01 $02 $20
	nop                                              ; $5a7a: $00
	ld   b, $11                                      ; $5a7b: $06 $11
	inc  b                                           ; $5a7d: $04
	inc  e                                           ; $5a7e: $1c
	rrca                                             ; $5a7f: $0f
	ld   bc, $1401                                   ; $5a80: $01 $01 $14
	dec  de                                          ; $5a83: $1b
	ld   bc, $0301                                   ; $5a84: $01 $01 $03
	ld   c, d                                        ; $5a87: $4a
	ld   [bc], a                                     ; $5a88: $02
	or   h                                           ; $5a89: $b4
	ld   l, [hl]                                     ; $5a8a: $6e
	sbc  a                                           ; $5a8b: $9f
	dec  c                                           ; $5a8c: $0d
	nop                                              ; $5a8d: $00
	ld   a, [bc]                                     ; $5a8e: $0a
	dec  b                                           ; $5a8f: $05
	ld   b, b                                        ; $5a90: $40
	rst  $38                                         ; $5a91: $ff
	inc  bc                                          ; $5a92: $03
	rst  $38                                         ; $5a93: $ff
	ld   bc, $2801                                   ; $5a94: $01 $01 $28
	nop                                              ; $5a97: $00
	ld   b, $63                                      ; $5a98: $06 $63
	ld   bc, $0f1c                                   ; $5a9a: $01 $1c $0f
	ld   [bc], a                                     ; $5a9d: $02
	ld   [bc], a                                     ; $5a9e: $02
	inc  d                                           ; $5a9f: $14
	inc  e                                           ; $5aa0: $1c
	ld   bc, $0301                                   ; $5aa1: $01 $01 $03
	jr   z, jr_068_5aaa                              ; $5aa4: $28 $04

	ld   c, b                                        ; $5aa6: $48
	ld   l, [hl]                                     ; $5aa7: $6e
	ld   [hl], c                                     ; $5aa8: $71
	ld   l, l                                        ; $5aa9: $6d

jr_068_5aaa:
	ld   a, b                                        ; $5aaa: $78
	rst  $38                                         ; $5aab: $ff
	rst  $38                                         ; $5aac: $ff
	dec  c                                           ; $5aad: $0d
	inc  bc                                          ; $5aae: $03
	ld   c, d                                        ; $5aaf: $4a
	ld   [bc], a                                     ; $5ab0: $02
	or   h                                           ; $5ab1: $b4
	ld   a, l                                        ; $5ab2: $7d
	ld   bc, $c007                                   ; $5ab3: $01 $07 $c0
	jp   nz, $cbd1                                   ; $5ab6: $c2 $d1 $cb

	ld   bc, $6e08                                   ; $5ab9: $01 $08 $6e
	sbc  a                                           ; $5abc: $9f
	dec  c                                           ; $5abd: $0d
	nop                                              ; $5abe: $00
	ld   a, [bc]                                     ; $5abf: $0a
	ld   b, $63                                      ; $5ac0: $06 $63
	ld   bc, $ce07                                   ; $5ac2: $01 $07 $ce
	inc  b                                           ; $5ac5: $04
	inc  b                                           ; $5ac6: $04
	add  b                                           ; $5ac7: $80
	ld   d, e                                        ; $5ac8: $53
	ld   bc, $20ff                                   ; $5ac9: $01 $ff $20
	nop                                              ; $5acc: $00
	dec  b                                           ; $5acd: $05
	add  b                                           ; $5ace: $80
	ld   d, e                                        ; $5acf: $53
	ld   bc, $0001                                   ; $5ad0: $01 $01 $00
	ld   bc, $ecdf                                   ; $5ad3: $01 $df $ec
	and  e                                           ; $5ad6: $a3
	ld   h, e                                        ; $5ad7: $63
	and  c                                           ; $5ad8: $a1
	ld   a, l                                        ; $5ad9: $7d
	inc  b                                           ; $5ada: $04
	ld   c, c                                        ; $5adb: $49
	ld   a, h                                        ; $5adc: $7c
	inc  b                                           ; $5add: $04
	rst  ToBoot                                         ; $5ade: $c7
	inc  bc                                          ; $5adf: $03
	ld   l, e                                        ; $5ae0: $6b
	ld   l, [hl]                                     ; $5ae1: $6e
	ld   sp, hl                                      ; $5ae2: $f9
	dec  c                                           ; $5ae3: $0d
	nop                                              ; $5ae4: $00
	ld   a, [bc]                                     ; $5ae5: $0a
	add  hl, de                                      ; $5ae6: $19
	dec  b                                           ; $5ae7: $05
	inc  bc                                          ; $5ae8: $03
	inc  bc                                          ; $5ae9: $03
	inc  [hl]                                        ; $5aea: $34
	nop                                              ; $5aeb: $00
	nop                                              ; $5aec: $00
	inc  b                                           ; $5aed: $04
	inc  l                                           ; $5aee: $2c
	nop                                              ; $5aef: $00
	ld   bc, $5c78                                   ; $5af0: $01 $78 $5c
	ld   a, b                                        ; $5af3: $78
	ld   l, l                                        ; $5af4: $6d
	nop                                              ; $5af5: $00
	ld   [bc], a                                     ; $5af6: $02
	rlca                                             ; $5af7: $07
	adc  e                                           ; $5af8: $8b
	inc  b                                           ; $5af9: $04
	ld   [bc], a                                     ; $5afa: $02
	inc  bc                                          ; $5afb: $03
	ld   bc, $2000                                   ; $5afc: $01 $00 $20
	nop                                              ; $5aff: $00
	rlca                                             ; $5b00: $07
	xor  b                                           ; $5b01: $a8
	inc  b                                           ; $5b02: $04
	ld   [bc], a                                     ; $5b03: $02
	inc  bc                                          ; $5b04: $03
	ld   bc, $2001                                   ; $5b05: $01 $01 $20
	nop                                              ; $5b08: $00
	rlca                                             ; $5b09: $07
	xor  b                                           ; $5b0a: $a8
	inc  b                                           ; $5b0b: $04
	ld   [bc], a                                     ; $5b0c: $02
	inc  bc                                          ; $5b0d: $03
	ld   bc, $2002                                   ; $5b0e: $01 $02 $20
	nop                                              ; $5b11: $00
	ld   b, $a8                                      ; $5b12: $06 $a8
	inc  b                                           ; $5b14: $04
	inc  e                                           ; $5b15: $1c
	rrca                                             ; $5b16: $0f
	ld   bc, $1401                                   ; $5b17: $01 $01 $14
	dec  de                                          ; $5b1a: $1b
	ld   bc, $0301                                   ; $5b1b: $01 $01 $03
	ld   c, d                                        ; $5b1e: $4a
	ld   [bc], a                                     ; $5b1f: $02
	or   h                                           ; $5b20: $b4
	ld   l, [hl]                                     ; $5b21: $6e
	sbc  a                                           ; $5b22: $9f
	dec  c                                           ; $5b23: $0d
	nop                                              ; $5b24: $00
	ld   a, [bc]                                     ; $5b25: $0a
	dec  b                                           ; $5b26: $05
	ld   b, b                                        ; $5b27: $40
	rst  $38                                         ; $5b28: $ff
	inc  bc                                          ; $5b29: $03
	rst  $38                                         ; $5b2a: $ff
	ld   bc, $2801                                   ; $5b2b: $01 $01 $28
	nop                                              ; $5b2e: $00
	ld   b, $63                                      ; $5b2f: $06 $63
	ld   bc, $0f1c                                   ; $5b31: $01 $1c $0f
	ld   [bc], a                                     ; $5b34: $02
	ld   [bc], a                                     ; $5b35: $02
	inc  d                                           ; $5b36: $14
	inc  e                                           ; $5b37: $1c
	ld   bc, $0301                                   ; $5b38: $01 $01 $03
	jr   z, jr_068_5b41                              ; $5b3b: $28 $04

	ld   c, b                                        ; $5b3d: $48
	ld   l, [hl]                                     ; $5b3e: $6e
	ld   [hl], c                                     ; $5b3f: $71
	ld   l, l                                        ; $5b40: $6d

jr_068_5b41:
	ld   a, b                                        ; $5b41: $78
	rst  $38                                         ; $5b42: $ff
	rst  $38                                         ; $5b43: $ff
	dec  c                                           ; $5b44: $0d
	inc  bc                                          ; $5b45: $03
	ld   c, d                                        ; $5b46: $4a
	ld   [bc], a                                     ; $5b47: $02
	or   h                                           ; $5b48: $b4
	ld   a, l                                        ; $5b49: $7d
	ld   bc, $0307                                   ; $5b4a: $01 $07 $03
	inc  [hl]                                        ; $5b4d: $34
	ld   bc, $6e08                                   ; $5b4e: $01 $08 $6e
	sbc  a                                           ; $5b51: $9f
	dec  c                                           ; $5b52: $0d
	nop                                              ; $5b53: $00
	ld   a, [bc]                                     ; $5b54: $0a
	ld   b, $63                                      ; $5b55: $06 $63
	ld   bc, $6c07                                   ; $5b57: $01 $07 $6c
	dec  b                                           ; $5b5a: $05
	inc  b                                           ; $5b5b: $04
	add  b                                           ; $5b5c: $80
	ld   d, h                                        ; $5b5d: $54
	ld   bc, $20ff                                   ; $5b5e: $01 $ff $20
	nop                                              ; $5b61: $00
	dec  b                                           ; $5b62: $05
	add  b                                           ; $5b63: $80
	ld   d, h                                        ; $5b64: $54
	ld   bc, $0001                                   ; $5b65: $01 $01 $00
	ld   bc, $ecdf                                   ; $5b68: $01 $df $ec
	and  e                                           ; $5b6b: $a3
	ld   h, e                                        ; $5b6c: $63
	and  c                                           ; $5b6d: $a1
	ld   e, d                                        ; $5b6e: $5a
	inc  bc                                          ; $5b6f: $03
	cp   c                                           ; $5b70: $b9
	sbc  c                                           ; $5b71: $99
	ld   [bc], a                                     ; $5b72: $02
	jr   c, jr_068_5b79                              ; $5b73: $38 $04

	ld   d, d                                        ; $5b75: $52
	ld   a, h                                        ; $5b76: $7c
	inc  bc                                          ; $5b77: $03
	dec  bc                                          ; $5b78: $0b

jr_068_5b79:
	ld   a, l                                        ; $5b79: $7d
	ld   sp, hl                                      ; $5b7a: $f9
	dec  c                                           ; $5b7b: $0d
	nop                                              ; $5b7c: $00
	ld   a, [bc]                                     ; $5b7d: $0a
	add  hl, de                                      ; $5b7e: $19
	dec  b                                           ; $5b7f: $05
	inc  bc                                          ; $5b80: $03
	rst  $10                                         ; $5b81: $d7
	db   $eb                                         ; $5b82: $eb
	call nz, $00b0                                   ; $5b83: $c4 $b0 $00
	nop                                              ; $5b86: $00
	and  l                                           ; $5b87: $a5
	xor  c                                           ; $5b88: $a9
	rst  $28                                         ; $5b89: $ef
	ei                                               ; $5b8a: $fb
	nop                                              ; $5b8b: $00
	ld   bc, $ecb1                                   ; $5b8c: $01 $b1 $ec
	ei                                               ; $5b8f: $fb
	push af                                          ; $5b90: $f5
	nop                                              ; $5b91: $00
	ld   [bc], a                                     ; $5b92: $02
	rlca                                             ; $5b93: $07
	daa                                              ; $5b94: $27
	dec  b                                           ; $5b95: $05
	ld   [bc], a                                     ; $5b96: $02
	inc  bc                                          ; $5b97: $03
	ld   bc, $2000                                   ; $5b98: $01 $00 $20
	nop                                              ; $5b9b: $00
	rlca                                             ; $5b9c: $07
	ld   b, h                                        ; $5b9d: $44
	dec  b                                           ; $5b9e: $05
	ld   [bc], a                                     ; $5b9f: $02
	inc  bc                                          ; $5ba0: $03
	ld   bc, $2001                                   ; $5ba1: $01 $01 $20
	nop                                              ; $5ba4: $00
	rlca                                             ; $5ba5: $07
	ld   b, h                                        ; $5ba6: $44
	dec  b                                           ; $5ba7: $05
	ld   [bc], a                                     ; $5ba8: $02
	inc  bc                                          ; $5ba9: $03
	ld   bc, $2002                                   ; $5baa: $01 $02 $20
	nop                                              ; $5bad: $00
	ld   b, $44                                      ; $5bae: $06 $44
	dec  b                                           ; $5bb0: $05
	inc  e                                           ; $5bb1: $1c
	rrca                                             ; $5bb2: $0f
	ld   bc, $1401                                   ; $5bb3: $01 $01 $14
	dec  de                                          ; $5bb6: $1b
	ld   bc, $0301                                   ; $5bb7: $01 $01 $03
	ld   c, d                                        ; $5bba: $4a
	ld   [bc], a                                     ; $5bbb: $02
	or   h                                           ; $5bbc: $b4
	ld   l, [hl]                                     ; $5bbd: $6e
	sbc  a                                           ; $5bbe: $9f
	dec  c                                           ; $5bbf: $0d
	nop                                              ; $5bc0: $00
	ld   a, [bc]                                     ; $5bc1: $0a
	dec  b                                           ; $5bc2: $05
	ld   b, b                                        ; $5bc3: $40
	rst  $38                                         ; $5bc4: $ff
	inc  bc                                          ; $5bc5: $03
	rst  $38                                         ; $5bc6: $ff
	ld   bc, $2801                                   ; $5bc7: $01 $01 $28
	nop                                              ; $5bca: $00
	ld   b, $63                                      ; $5bcb: $06 $63
	ld   bc, $0f1c                                   ; $5bcd: $01 $1c $0f
	ld   [bc], a                                     ; $5bd0: $02
	ld   [bc], a                                     ; $5bd1: $02
	inc  d                                           ; $5bd2: $14
	inc  e                                           ; $5bd3: $1c
	ld   bc, $0301                                   ; $5bd4: $01 $01 $03
	jr   z, jr_068_5bdd                              ; $5bd7: $28 $04

	ld   c, b                                        ; $5bd9: $48
	ld   l, [hl]                                     ; $5bda: $6e
	ld   [hl], c                                     ; $5bdb: $71
	ld   l, l                                        ; $5bdc: $6d

jr_068_5bdd:
	ld   a, b                                        ; $5bdd: $78
	rst  $38                                         ; $5bde: $ff
	rst  $38                                         ; $5bdf: $ff
	dec  c                                           ; $5be0: $0d
	inc  bc                                          ; $5be1: $03
	ld   c, d                                        ; $5be2: $4a
	ld   [bc], a                                     ; $5be3: $02
	or   h                                           ; $5be4: $b4
	ld   a, l                                        ; $5be5: $7d
	ld   bc, $d707                                   ; $5be6: $01 $07 $d7
	db   $eb                                         ; $5be9: $eb
	call nz, $01b0                                   ; $5bea: $c4 $b0 $01
	ld   [$9f6e], sp                                 ; $5bed: $08 $6e $9f
	dec  c                                           ; $5bf0: $0d
	nop                                              ; $5bf1: $00
	ld   a, [bc]                                     ; $5bf2: $0a
	ld   b, $63                                      ; $5bf3: $06 $63
	ld   bc, $1007                                   ; $5bf5: $01 $07 $10
	ld   b, $04                                      ; $5bf8: $06 $04
	add  b                                           ; $5bfa: $80
	ld   d, l                                        ; $5bfb: $55
	ld   bc, $20ff                                   ; $5bfc: $01 $ff $20
	nop                                              ; $5bff: $00
	dec  b                                           ; $5c00: $05
	add  b                                           ; $5c01: $80
	ld   d, l                                        ; $5c02: $55
	ld   bc, $0001                                   ; $5c03: $01 $01 $00
	ld   bc, $ecdf                                   ; $5c06: $01 $df $ec
	and  e                                           ; $5c09: $a3
	ld   h, e                                        ; $5c0a: $63
	and  c                                           ; $5c0b: $a1
	ld   a, l                                        ; $5c0c: $7d
	inc  b                                           ; $5c0d: $04
	ld   c, $03                                      ; $5c0e: $0e $03
	sub  b                                           ; $5c10: $90
	ld   a, h                                        ; $5c11: $7c
	ld   h, c                                        ; $5c12: $61
	halt                                             ; $5c13: $76
	and  b                                           ; $5c14: $a0
	dec  c                                           ; $5c15: $0d
	inc  b                                           ; $5c16: $04
	ld   c, c                                        ; $5c17: $49
	ld   [hl], h                                     ; $5c18: $74
	ld   [bc], a                                     ; $5c19: $02
	ld   a, b                                        ; $5c1a: $78
	add  h                                           ; $5c1b: $84
	ld   sp, hl                                      ; $5c1c: $f9
	dec  c                                           ; $5c1d: $0d
	nop                                              ; $5c1e: $00
	ld   a, [bc]                                     ; $5c1f: $0a
	add  hl, de                                      ; $5c20: $19
	dec  b                                           ; $5c21: $05
	inc  bc                                          ; $5c22: $03
	inc  b                                           ; $5c23: $04
	ld   a, [bc]                                     ; $5c24: $0a
	inc  bc                                          ; $5c25: $03
	jp   nc, $0000                                  ; $5c26: $d2 $00 $00

	inc  b                                           ; $5c29: $04
	ld   c, $03                                      ; $5c2a: $0e $03
	sub  b                                           ; $5c2c: $90
	nop                                              ; $5c2d: $00
	ld   bc, $0e04                                   ; $5c2e: $01 $04 $0e
	inc  bc                                          ; $5c31: $03
	sub  b                                           ; $5c32: $90
	ld   h, e                                        ; $5c33: $63
	and  c                                           ; $5c34: $a1
	nop                                              ; $5c35: $00
	ld   [bc], a                                     ; $5c36: $02
	rlca                                             ; $5c37: $07
	rlc  l                                           ; $5c38: $cb $05
	ld   [bc], a                                     ; $5c3a: $02
	inc  bc                                          ; $5c3b: $03
	ld   bc, $2000                                   ; $5c3c: $01 $00 $20
	nop                                              ; $5c3f: $00
	rlca                                             ; $5c40: $07
	add  sp, $05                                     ; $5c41: $e8 $05
	ld   [bc], a                                     ; $5c43: $02
	inc  bc                                          ; $5c44: $03
	ld   bc, $2001                                   ; $5c45: $01 $01 $20
	nop                                              ; $5c48: $00
	rlca                                             ; $5c49: $07
	add  sp, $05                                     ; $5c4a: $e8 $05
	ld   [bc], a                                     ; $5c4c: $02
	inc  bc                                          ; $5c4d: $03
	ld   bc, $2002                                   ; $5c4e: $01 $02 $20
	nop                                              ; $5c51: $00
	ld   b, $e8                                      ; $5c52: $06 $e8
	dec  b                                           ; $5c54: $05
	inc  e                                           ; $5c55: $1c
	rrca                                             ; $5c56: $0f
	ld   bc, $1401                                   ; $5c57: $01 $01 $14
	dec  de                                          ; $5c5a: $1b
	ld   bc, $0301                                   ; $5c5b: $01 $01 $03
	ld   c, d                                        ; $5c5e: $4a
	ld   [bc], a                                     ; $5c5f: $02
	or   h                                           ; $5c60: $b4
	ld   l, [hl]                                     ; $5c61: $6e
	sbc  a                                           ; $5c62: $9f
	dec  c                                           ; $5c63: $0d
	nop                                              ; $5c64: $00
	ld   a, [bc]                                     ; $5c65: $0a
	dec  b                                           ; $5c66: $05
	ld   b, b                                        ; $5c67: $40
	rst  $38                                         ; $5c68: $ff
	inc  bc                                          ; $5c69: $03
	rst  $38                                         ; $5c6a: $ff
	ld   bc, $2801                                   ; $5c6b: $01 $01 $28
	nop                                              ; $5c6e: $00
	ld   b, $63                                      ; $5c6f: $06 $63
	ld   bc, $0f1c                                   ; $5c71: $01 $1c $0f
	ld   [bc], a                                     ; $5c74: $02
	ld   [bc], a                                     ; $5c75: $02
	inc  d                                           ; $5c76: $14
	inc  e                                           ; $5c77: $1c
	ld   bc, $0301                                   ; $5c78: $01 $01 $03
	jr   z, jr_068_5c81                              ; $5c7b: $28 $04

	ld   c, b                                        ; $5c7d: $48
	ld   l, [hl]                                     ; $5c7e: $6e
	ld   [hl], c                                     ; $5c7f: $71
	ld   l, l                                        ; $5c80: $6d

jr_068_5c81:
	ld   a, b                                        ; $5c81: $78
	rst  $38                                         ; $5c82: $ff
	rst  $38                                         ; $5c83: $ff
	dec  c                                           ; $5c84: $0d
	inc  bc                                          ; $5c85: $03
	ld   c, d                                        ; $5c86: $4a
	ld   [bc], a                                     ; $5c87: $02
	or   h                                           ; $5c88: $b4
	ld   a, l                                        ; $5c89: $7d
	ld   bc, $0407                                   ; $5c8a: $01 $07 $04
	ld   a, [bc]                                     ; $5c8d: $0a
	inc  bc                                          ; $5c8e: $03
	jp   nc, $0801                                   ; $5c8f: $d2 $01 $08

	ld   l, [hl]                                     ; $5c92: $6e
	sbc  a                                           ; $5c93: $9f
	dec  c                                           ; $5c94: $0d
	nop                                              ; $5c95: $00
	ld   a, [bc]                                     ; $5c96: $0a
	ld   b, $63                                      ; $5c97: $06 $63
	ld   bc, $c007                                   ; $5c99: $01 $07 $c0
	ld   b, $04                                      ; $5c9c: $06 $04
	add  b                                           ; $5c9e: $80
	ld   d, [hl]                                     ; $5c9f: $56
	ld   bc, $20ff                                   ; $5ca0: $01 $ff $20
	nop                                              ; $5ca3: $00
	dec  b                                           ; $5ca4: $05
	add  b                                           ; $5ca5: $80
	ld   d, [hl]                                     ; $5ca6: $56
	ld   bc, $0001                                   ; $5ca7: $01 $01 $00
	ld   bc, $ecdf                                   ; $5caa: $01 $df $ec
	and  e                                           ; $5cad: $a3
	ld   h, e                                        ; $5cae: $63
	and  c                                           ; $5caf: $a1
	ld   e, d                                        ; $5cb0: $5a
	inc  b                                           ; $5cb1: $04
	ld   c, e                                        ; $5cb2: $4b
	inc  b                                           ; $5cb3: $04
	ldh  a, [c]                                      ; $5cb4: $f2
	ld   [bc], a                                     ; $5cb5: $02
	sub  a                                           ; $5cb6: $97
	ld   [hl], l                                     ; $5cb7: $75
	dec  c                                           ; $5cb8: $0d
	ld   [bc], a                                     ; $5cb9: $02
	rra                                              ; $5cba: $1f
	ld   h, [hl]                                     ; $5cbb: $66
	sbc  c                                           ; $5cbc: $99
	inc  b                                           ; $5cbd: $04
	db   $ec                                         ; $5cbe: $ec
	ld   a, l                                        ; $5cbf: $7d
	ld   sp, hl                                      ; $5cc0: $f9
	dec  c                                           ; $5cc1: $0d
	nop                                              ; $5cc2: $00
	ld   a, [bc]                                     ; $5cc3: $0a
	add  hl, de                                      ; $5cc4: $19
	dec  b                                           ; $5cc5: $05
	inc  bc                                          ; $5cc6: $03
	inc  bc                                          ; $5cc7: $03
	inc  sp                                          ; $5cc8: $33
	dec  b                                           ; $5cc9: $05
	db   $ec                                         ; $5cca: $ec
	inc  b                                           ; $5ccb: $04
	ld   h, h                                        ; $5ccc: $64
	inc  bc                                          ; $5ccd: $03
	ld   [hl-], a                                    ; $5cce: $32
	nop                                              ; $5ccf: $00
	nop                                              ; $5cd0: $00
	inc  bc                                          ; $5cd1: $03
	ld   d, b                                        ; $5cd2: $50
	ld   [bc], a                                     ; $5cd3: $02
	ld   a, h                                        ; $5cd4: $7c
	ld   [bc], a                                     ; $5cd5: $02
	or   [hl]                                        ; $5cd6: $b6
	nop                                              ; $5cd7: $00
	ld   bc, $f804                                   ; $5cd8: $01 $04 $f8
	ld   [bc], a                                     ; $5cdb: $02
	add  a                                           ; $5cdc: $87
	inc  b                                           ; $5cdd: $04
	or   a                                           ; $5cde: $b7
	inc  bc                                          ; $5cdf: $03
	add  d                                           ; $5ce0: $82
	nop                                              ; $5ce1: $00
	ld   [bc], a                                     ; $5ce2: $02
	rlca                                             ; $5ce3: $07
	ld   [hl], a                                     ; $5ce4: $77
	ld   b, $02                                      ; $5ce5: $06 $02
	inc  bc                                          ; $5ce7: $03
	ld   bc, $2000                                   ; $5ce8: $01 $00 $20
	nop                                              ; $5ceb: $00
	rlca                                             ; $5cec: $07
	sub  h                                           ; $5ced: $94
	ld   b, $02                                      ; $5cee: $06 $02
	inc  bc                                          ; $5cf0: $03
	ld   bc, $2001                                   ; $5cf1: $01 $01 $20
	nop                                              ; $5cf4: $00
	rlca                                             ; $5cf5: $07
	sub  h                                           ; $5cf6: $94
	ld   b, $02                                      ; $5cf7: $06 $02
	inc  bc                                          ; $5cf9: $03
	ld   bc, $2002                                   ; $5cfa: $01 $02 $20
	nop                                              ; $5cfd: $00
	ld   b, $94                                      ; $5cfe: $06 $94
	ld   b, $1c                                      ; $5d00: $06 $1c
	rrca                                             ; $5d02: $0f
	ld   bc, $1401                                   ; $5d03: $01 $01 $14
	dec  de                                          ; $5d06: $1b
	ld   bc, $0301                                   ; $5d07: $01 $01 $03
	ld   c, d                                        ; $5d0a: $4a
	ld   [bc], a                                     ; $5d0b: $02
	or   h                                           ; $5d0c: $b4
	ld   l, [hl]                                     ; $5d0d: $6e
	sbc  a                                           ; $5d0e: $9f
	dec  c                                           ; $5d0f: $0d
	nop                                              ; $5d10: $00
	ld   a, [bc]                                     ; $5d11: $0a
	dec  b                                           ; $5d12: $05
	ld   b, b                                        ; $5d13: $40
	rst  $38                                         ; $5d14: $ff
	inc  bc                                          ; $5d15: $03
	rst  $38                                         ; $5d16: $ff
	ld   bc, $2801                                   ; $5d17: $01 $01 $28
	nop                                              ; $5d1a: $00
	ld   b, $63                                      ; $5d1b: $06 $63
	ld   bc, $0f1c                                   ; $5d1d: $01 $1c $0f
	ld   [bc], a                                     ; $5d20: $02
	ld   [bc], a                                     ; $5d21: $02
	inc  d                                           ; $5d22: $14
	inc  e                                           ; $5d23: $1c
	ld   bc, $0301                                   ; $5d24: $01 $01 $03
	jr   z, jr_068_5d2d                              ; $5d27: $28 $04

	ld   c, b                                        ; $5d29: $48
	ld   l, [hl]                                     ; $5d2a: $6e
	ld   [hl], c                                     ; $5d2b: $71
	ld   l, l                                        ; $5d2c: $6d

jr_068_5d2d:
	ld   a, b                                        ; $5d2d: $78
	rst  $38                                         ; $5d2e: $ff
	rst  $38                                         ; $5d2f: $ff
	dec  c                                           ; $5d30: $0d
	inc  bc                                          ; $5d31: $03
	ld   c, d                                        ; $5d32: $4a
	ld   [bc], a                                     ; $5d33: $02
	or   h                                           ; $5d34: $b4
	ld   a, l                                        ; $5d35: $7d
	ld   bc, $0307                                   ; $5d36: $01 $07 $03
	inc  sp                                          ; $5d39: $33
	dec  b                                           ; $5d3a: $05
	db   $ec                                         ; $5d3b: $ec
	inc  b                                           ; $5d3c: $04
	ld   h, h                                        ; $5d3d: $64
	inc  bc                                          ; $5d3e: $03
	ld   [hl-], a                                    ; $5d3f: $32
	ld   bc, $6e08                                   ; $5d40: $01 $08 $6e
	sbc  a                                           ; $5d43: $9f
	dec  c                                           ; $5d44: $0d
	nop                                              ; $5d45: $00
	ld   a, [bc]                                     ; $5d46: $0a
	ld   b, $63                                      ; $5d47: $06 $63
	ld   bc, $c407                                   ; $5d49: $01 $07 $c4
	ld   bc, $8004                                   ; $5d4c: $01 $04 $80
	ld   d, a                                        ; $5d4f: $57
	ld   bc, $20ff                                   ; $5d50: $01 $ff $20
	nop                                              ; $5d53: $00
	dec  b                                           ; $5d54: $05
	add  b                                           ; $5d55: $80
	ld   d, a                                        ; $5d56: $57
	ld   bc, $0001                                   ; $5d57: $01 $01 $00
	ld   bc, $ecdf                                   ; $5d5a: $01 $df $ec
	and  e                                           ; $5d5d: $a3
	ld   h, e                                        ; $5d5e: $63
	and  c                                           ; $5d5f: $a1
	ld   a, h                                        ; $5d60: $7c
	inc  bc                                          ; $5d61: $03
	sub  a                                           ; $5d62: $97
	inc  b                                           ; $5d63: $04
	jp   nc, $f97d                                   ; $5d64: $d2 $7d $f9

	dec  c                                           ; $5d67: $0d
	nop                                              ; $5d68: $00
	ld   a, [bc]                                     ; $5d69: $0a
	add  hl, de                                      ; $5d6a: $19
	dec  b                                           ; $5d6b: $05
	inc  bc                                          ; $5d6c: $03
	inc  b                                           ; $5d6d: $04
	ld   de, $5503                                   ; $5d6e: $11 $03 $55
	nop                                              ; $5d71: $00
	nop                                              ; $5d72: $00
	ld   [bc], a                                     ; $5d73: $02
	dec  h                                           ; $5d74: $25
	ld   [bc], a                                     ; $5d75: $02
	ld   a, e                                        ; $5d76: $7b
	ld   d, d                                        ; $5d77: $52
	nop                                              ; $5d78: $00
	ld   bc, $ad04                                   ; $5d79: $01 $04 $ad
	inc  b                                           ; $5d7c: $04
	ld   b, d                                        ; $5d7d: $42
	nop                                              ; $5d7e: $00
	ld   [bc], a                                     ; $5d7f: $02
	rlca                                             ; $5d80: $07
	inc  d                                           ; $5d81: $14
	rlca                                             ; $5d82: $07
	ld   [bc], a                                     ; $5d83: $02
	inc  bc                                          ; $5d84: $03
	ld   bc, $2000                                   ; $5d85: $01 $00 $20
	nop                                              ; $5d88: $00
	rlca                                             ; $5d89: $07
	ld   sp, $0207                                   ; $5d8a: $31 $07 $02
	inc  bc                                          ; $5d8d: $03
	ld   bc, $2001                                   ; $5d8e: $01 $01 $20
	nop                                              ; $5d91: $00
	rlca                                             ; $5d92: $07
	ld   sp, $0207                                   ; $5d93: $31 $07 $02
	inc  bc                                          ; $5d96: $03
	ld   bc, $2002                                   ; $5d97: $01 $02 $20
	nop                                              ; $5d9a: $00
	ld   b, $31                                      ; $5d9b: $06 $31
	rlca                                             ; $5d9d: $07
	inc  e                                           ; $5d9e: $1c
	rrca                                             ; $5d9f: $0f
	ld   bc, $1401                                   ; $5da0: $01 $01 $14
	dec  de                                          ; $5da3: $1b
	ld   bc, $0301                                   ; $5da4: $01 $01 $03
	ld   c, d                                        ; $5da7: $4a
	ld   [bc], a                                     ; $5da8: $02
	or   h                                           ; $5da9: $b4
	ld   l, [hl]                                     ; $5daa: $6e
	sbc  a                                           ; $5dab: $9f
	dec  c                                           ; $5dac: $0d
	nop                                              ; $5dad: $00
	ld   a, [bc]                                     ; $5dae: $0a
	dec  b                                           ; $5daf: $05
	ld   b, b                                        ; $5db0: $40
	rst  $38                                         ; $5db1: $ff
	inc  bc                                          ; $5db2: $03
	rst  $38                                         ; $5db3: $ff
	ld   bc, $2801                                   ; $5db4: $01 $01 $28
	nop                                              ; $5db7: $00
	ld   b, $63                                      ; $5db8: $06 $63
	ld   bc, $0f1c                                   ; $5dba: $01 $1c $0f
	ld   [bc], a                                     ; $5dbd: $02
	ld   [bc], a                                     ; $5dbe: $02
	inc  d                                           ; $5dbf: $14
	inc  e                                           ; $5dc0: $1c
	ld   bc, $0301                                   ; $5dc1: $01 $01 $03
	jr   z, jr_068_5dca                              ; $5dc4: $28 $04

	ld   c, b                                        ; $5dc6: $48
	ld   l, [hl]                                     ; $5dc7: $6e
	ld   [hl], c                                     ; $5dc8: $71
	ld   l, l                                        ; $5dc9: $6d

jr_068_5dca:
	ld   a, b                                        ; $5dca: $78
	rst  $38                                         ; $5dcb: $ff
	rst  $38                                         ; $5dcc: $ff
	dec  c                                           ; $5dcd: $0d
	inc  bc                                          ; $5dce: $03
	ld   c, d                                        ; $5dcf: $4a
	ld   [bc], a                                     ; $5dd0: $02
	or   h                                           ; $5dd1: $b4
	ld   a, l                                        ; $5dd2: $7d
	ld   bc, $0407                                   ; $5dd3: $01 $07 $04
	ld   de, $5503                                   ; $5dd6: $11 $03 $55
	ld   bc, $6e08                                   ; $5dd9: $01 $08 $6e
	sbc  a                                           ; $5ddc: $9f
	dec  c                                           ; $5ddd: $0d
	nop                                              ; $5dde: $00
	ld   a, [bc]                                     ; $5ddf: $0a
	ld   b, $63                                      ; $5de0: $06 $63
	ld   bc, $0e00                                   ; $5de2: $01 $00 $0e
	ld   d, [hl]                                     ; $5de5: $56
	inc  e                                           ; $5de6: $1c
	inc  b                                           ; $5de7: $04
	nop                                              ; $5de8: $00
	nop                                              ; $5de9: $00
	ld   [bc], a                                     ; $5dea: $02
	ld   bc, $9752                                   ; $5deb: $01 $52 $97
	ld   [hl], c                                     ; $5dee: $71
	ld   h, l                                        ; $5def: $65
	sub  c                                           ; $5df0: $91
	ld   d, d                                        ; $5df1: $52
	sbc  [hl]                                        ; $5df2: $9e
	ld   l, a                                        ; $5df3: $6f
	ld   d, d                                        ; $5df4: $52
	ld   [bc], a                                     ; $5df5: $02
	inc  de                                          ; $5df6: $13
	ld   l, a                                        ; $5df7: $6f
	sub  c                                           ; $5df8: $91
	and  c                                           ; $5df9: $a1
	sbc  a                                           ; $5dfa: $9f
	dec  c                                           ; $5dfb: $0d
	nop                                              ; $5dfc: $00
	ld   a, [bc]                                     ; $5dfd: $0a
	inc  e                                           ; $5dfe: $1c
	inc  b                                           ; $5dff: $04
	ld   bc, $0101                                   ; $5e00: $01 $01 $01
	ld   d, b                                        ; $5e03: $50
	sbc  [hl]                                        ; $5e04: $9e
	ld   l, e                                        ; $5e05: $6b
	ld   d, h                                        ; $5e06: $54
	ld   l, [hl]                                     ; $5e07: $6e
	ld   a, [$000d]                                  ; $5e08: $fa $0d $00
	ld   a, [bc]                                     ; $5e0b: $0a
	ld   bc, $9a77                                   ; $5e0c: $01 $77 $9a
	ld   l, [hl]                                     ; $5e0f: $6e
	ld   e, a                                        ; $5e10: $5f
	sbc  d                                           ; $5e11: $9a
	ld   d, d                                        ; $5e12: $52
	sbc  b                                           ; $5e13: $98
	sub  l                                           ; $5e14: $95
	ld   e, l                                        ; $5e15: $5d
	ld   e, d                                        ; $5e16: $5a
	dec  c                                           ; $5e17: $0d
	ld   d, b                                        ; $5e18: $50
	ld   e, d                                        ; $5e19: $5a
	ld   [hl], c                                     ; $5e1a: $71
	ld   l, l                                        ; $5e1b: $6d
	ld   e, c                                        ; $5e1c: $59
	sbc  [hl]                                        ; $5e1d: $9e
	dec  c                                           ; $5e1e: $0d
	ld   l, l                                        ; $5e1f: $6d
	adc  a                                           ; $5e20: $8f
	ld   h, l                                        ; $5e21: $65
	ld   [hl], h                                     ; $5e22: $74
	ld   d, b                                        ; $5e23: $50
	ld   h, b                                        ; $5e24: $60
	sbc  c                                           ; $5e25: $99
	sub  [hl]                                        ; $5e26: $96
	sbc  a                                           ; $5e27: $9f
	dec  c                                           ; $5e28: $0d
	nop                                              ; $5e29: $00
	ld   a, [bc]                                     ; $5e2a: $0a
	add  hl, de                                      ; $5e2b: $19
	dec  b                                           ; $5e2c: $05
	ld   [bc], a                                     ; $5e2d: $02
	ld   l, l                                        ; $5e2e: $6d
	adc  a                                           ; $5e2f: $8f
	ld   h, a                                        ; $5e30: $67
	nop                                              ; $5e31: $00
	nop                                              ; $5e32: $00
	ld   l, l                                        ; $5e33: $6d
	adc  a                                           ; $5e34: $8f
	ld   h, e                                        ; $5e35: $63
	ld   a, b                                        ; $5e36: $78
	ld   d, d                                        ; $5e37: $52
	nop                                              ; $5e38: $00
	ld   bc, wSCX                                   ; $5e39: $01 $07 $c2
	nop                                              ; $5e3c: $00
	ld   [bc], a                                     ; $5e3d: $02
	inc  bc                                          ; $5e3e: $03
	ld   bc, $2000                                   ; $5e3f: $01 $00 $20
	nop                                              ; $5e42: $00
	rlca                                             ; $5e43: $07
	ld   l, e                                        ; $5e44: $6b
	nop                                              ; $5e45: $00
	ld   [bc], a                                     ; $5e46: $02
	inc  bc                                          ; $5e47: $03
	ld   bc, $2001                                   ; $5e48: $01 $01 $20
	nop                                              ; $5e4b: $00
	ld   b, $98                                      ; $5e4c: $06 $98
	nop                                              ; $5e4e: $00
	rrca                                             ; $5e4f: $0f
	nop                                              ; $5e50: $00
	ld   bc, $5201                                   ; $5e51: $01 $01 $52
	ld   d, d                                        ; $5e54: $52
	sub  [hl]                                        ; $5e55: $96
	sbc  [hl]                                        ; $5e56: $9e
	add  a                                           ; $5e57: $87
	ld   [hl], d                                     ; $5e58: $72
	ld   a, c                                        ; $5e59: $79
	rst  $38                                         ; $5e5a: $ff
	rst  $38                                         ; $5e5b: $ff
	dec  c                                           ; $5e5c: $0d
	nop                                              ; $5e5d: $00
	ld   a, [bc]                                     ; $5e5e: $0a
	inc  e                                           ; $5e5f: $1c
	inc  b                                           ; $5e60: $04
	ld   [bc], a                                     ; $5e61: $02
	ld   [bc], a                                     ; $5e62: $02
	dec  e                                           ; $5e63: $1d
	ld   b, b                                        ; $5e64: $40
	inc  d                                           ; $5e65: $14
	inc  bc                                          ; $5e66: $03
	inc  d                                           ; $5e67: $14
	ld   bc, $2901                                   ; $5e68: $01 $01 $29
	nop                                              ; $5e6b: $00
	ld   bc, $5484                                   ; $5e6c: $01 $84 $54
	rst  $38                                         ; $5e6f: $ff
	rst  $38                                         ; $5e70: $ff
	ld   [hl], d                                     ; $5e71: $72
	adc  h                                           ; $5e72: $8c
	and  c                                           ; $5e73: $a1
	ld   a, b                                        ; $5e74: $78
	ld   d, d                                        ; $5e75: $52
	ld   a, h                                        ; $5e76: $7c
	sbc  a                                           ; $5e77: $9f
	dec  c                                           ; $5e78: $0d
	nop                                              ; $5e79: $00
	ld   a, [bc]                                     ; $5e7a: $0a
	nop                                              ; $5e7b: $00
	inc  e                                           ; $5e7c: $1c
	inc  b                                           ; $5e7d: $04
	ld   [bc], a                                     ; $5e7e: $02
	ld   [bc], a                                     ; $5e7f: $02
	dec  e                                           ; $5e80: $1d
	ld   b, b                                        ; $5e81: $40
	inc  d                                           ; $5e82: $14
	inc  bc                                          ; $5e83: $03
	inc  d                                           ; $5e84: $14
	ld   bc, $2902                                   ; $5e85: $01 $02 $29
	nop                                              ; $5e88: $00
	ld   bc, $ff50                                   ; $5e89: $01 $50 $ff
	rst  $38                                         ; $5e8c: $ff
	ld   d, d                                        ; $5e8d: $52
	sub  d                                           ; $5e8e: $92
	ld   l, e                                        ; $5e8f: $6b
	ld   d, h                                        ; $5e90: $54
	ld   a, b                                        ; $5e91: $78
	ld   e, c                                        ; $5e92: $59
	ld   e, b                                        ; $5e93: $58
	ld   h, l                                        ; $5e94: $65
	ld   [hl], h                                     ; $5e95: $74
	sbc  c                                           ; $5e96: $99
	sbc  a                                           ; $5e97: $9f
	dec  c                                           ; $5e98: $0d
	ld   h, [hl]                                     ; $5e99: $66
	sub  c                                           ; $5e9a: $91
	ld   d, b                                        ; $5e9b: $50
	sbc  [hl]                                        ; $5e9c: $9e
	ld   e, c                                        ; $5e9d: $59
	ld   d, [hl]                                     ; $5e9e: $56
	ld   [hl], c                                     ; $5e9f: $71
	ld   [hl], h                                     ; $5ea0: $74
	sbc  a                                           ; $5ea1: $9f
	dec  c                                           ; $5ea2: $0d
	nop                                              ; $5ea3: $00
	ld   a, [bc]                                     ; $5ea4: $0a
	nop                                              ; $5ea5: $00
	rrca                                             ; $5ea6: $0f
	nop                                              ; $5ea7: $00
	ld   bc, $6601                                   ; $5ea8: $01 $01 $66
	sub  c                                           ; $5eab: $91
	ld   d, b                                        ; $5eac: $50
	sbc  [hl]                                        ; $5ead: $9e
	sub  d                                           ; $5eae: $92
	ld   [hl], c                                     ; $5eaf: $71
	ld   [hl], h                                     ; $5eb0: $74
	sub  b                                           ; $5eb1: $90
	sub  a                                           ; $5eb2: $97
	ld   e, b                                        ; $5eb3: $58
	ld   d, h                                        ; $5eb4: $54
	ld   e, c                                        ; $5eb5: $59
	sbc  a                                           ; $5eb6: $9f
	dec  c                                           ; $5eb7: $0d
	nop                                              ; $5eb8: $00
	ld   a, [bc]                                     ; $5eb9: $0a
	rrca                                             ; $5eba: $0f
	inc  b                                           ; $5ebb: $04
	ld   bc, $5401                                   ; $5ebc: $01 $01 $54
	and  c                                           ; $5ebf: $a1
	ld   a, [$660d]                                  ; $5ec0: $fa $0d $66
	sub  c                                           ; $5ec3: $91
	sbc  [hl]                                        ; $5ec4: $9e
	ld   d, d                                        ; $5ec5: $52
	ld   [hl], c                                     ; $5ec6: $71
	ld   e, l                                        ; $5ec7: $5d
	sub  [hl]                                        ; $5ec8: $96
	ei                                               ; $5ec9: $fb
	ld   a, [$000d]                                  ; $5eca: $fa $0d $00
	ld   a, [bc]                                     ; $5ecd: $0a
	ld   a, [de]                                     ; $5ece: $1a
	inc  b                                           ; $5ecf: $04
	rlca                                             ; $5ed0: $07
	ld   bc, $0201                                   ; $5ed1: $01 $01 $02
	inc  b                                           ; $5ed4: $04
	ld   bc, $2002                                   ; $5ed5: $01 $02 $20
	nop                                              ; $5ed8: $00
	rlca                                             ; $5ed9: $07
	inc  sp                                          ; $5eda: $33
	ld   bc, $0402                                   ; $5edb: $01 $02 $04
	ld   bc, $2001                                   ; $5ede: $01 $01 $20
	nop                                              ; $5ee1: $00
	ld   b, $5e                                      ; $5ee2: $06 $5e
	ld   bc, $041c                                   ; $5ee4: $01 $1c $04
	dec  b                                           ; $5ee7: $05
	dec  b                                           ; $5ee8: $05
	dec  e                                           ; $5ee9: $1d
	ld   b, b                                        ; $5eea: $40
	inc  d                                           ; $5eeb: $14
	inc  bc                                          ; $5eec: $03
	inc  d                                           ; $5eed: $14
	ld   bc, $2803                                   ; $5eee: $01 $03 $28
	nop                                              ; $5ef1: $00
	ld   bc, $526f                                   ; $5ef2: $01 $6f $52
	ld   [bc], a                                     ; $5ef5: $02
	inc  de                                          ; $5ef6: $13
	ld   l, a                                        ; $5ef7: $6f
	sub  c                                           ; $5ef8: $91
	and  c                                           ; $5ef9: $a1
	cp   d                                           ; $5efa: $ba
	or   l                                           ; $5efb: $b5
	and  l                                           ; $5efc: $a5
	ld   a, [$610d]                                  ; $5efd: $fa $0d $61
	and  c                                           ; $5f00: $a1
	ld   a, b                                        ; $5f01: $78
	ld   a, c                                        ; $5f02: $79
	sbc  d                                           ; $5f03: $9a
	ld   d, d                                        ; $5f04: $52
	sbc  b                                           ; $5f05: $98
	sub  l                                           ; $5f06: $95
	ld   e, l                                        ; $5f07: $5d
	ld   e, d                                        ; $5f08: $5a
	dec  c                                           ; $5f09: $0d
	ld   d, b                                        ; $5f0a: $50
	ld   e, d                                        ; $5f0b: $5a
	ld   [hl], c                                     ; $5f0c: $71
	ld   [hl], h                                     ; $5f0d: $74
	sbc  c                                           ; $5f0e: $99
	sub  [hl]                                        ; $5f0f: $96
	ld   a, [$000d]                                  ; $5f10: $fa $0d $00
	ld   a, [bc]                                     ; $5f13: $0a
	ld   b, $87                                      ; $5f14: $06 $87
	ld   bc, $041c                                   ; $5f16: $01 $1c $04
	ld   bc, $1d01                                   ; $5f19: $01 $01 $1d
	ld   b, b                                        ; $5f1c: $40
	inc  d                                           ; $5f1d: $14
	inc  bc                                          ; $5f1e: $03
	inc  d                                           ; $5f1f: $14
	ld   bc, $2801                                   ; $5f20: $01 $01 $28
	nop                                              ; $5f23: $00
	ld   bc, $9a61                                   ; $5f24: $01 $61 $9a
	ld   e, [hl]                                     ; $5f27: $5e
	sub  a                                           ; $5f28: $97
	ld   d, d                                        ; $5f29: $52
	ld   a, h                                        ; $5f2a: $7c
	sbc  d                                           ; $5f2b: $9a
	ld   d, d                                        ; $5f2c: $52
	sbc  b                                           ; $5f2d: $98
	sub  l                                           ; $5f2e: $95
	ld   e, l                                        ; $5f2f: $5d
	dec  c                                           ; $5f30: $0d
	ld   l, [hl]                                     ; $5f31: $6e
	ld   [hl], c                                     ; $5f32: $71
	ld   l, l                                        ; $5f33: $6d
	sub  a                                           ; $5f34: $97
	sbc  [hl]                                        ; $5f35: $9e
	add  e                                           ; $5f36: $83
	ld   [hl], d                                     ; $5f37: $72
	ld   d, h                                        ; $5f38: $54
	ld   l, [hl]                                     ; $5f39: $6e
	ld   a, e                                        ; $5f3a: $7b
	sbc  a                                           ; $5f3b: $9f
	dec  c                                           ; $5f3c: $0d
	nop                                              ; $5f3d: $00
	ld   a, [bc]                                     ; $5f3e: $0a
	ld   b, $87                                      ; $5f3f: $06 $87
	ld   bc, $041c                                   ; $5f41: $01 $1c $04
	inc  bc                                          ; $5f44: $03
	inc  bc                                          ; $5f45: $03
	dec  e                                           ; $5f46: $1d
	ld   b, b                                        ; $5f47: $40
	inc  d                                           ; $5f48: $14
	inc  bc                                          ; $5f49: $03
	inc  d                                           ; $5f4a: $14
	ld   bc, $2902                                   ; $5f4b: $01 $02 $29
	nop                                              ; $5f4e: $00
	ld   bc, $526f                                   ; $5f4f: $01 $6f $52
	ld   [bc], a                                     ; $5f52: $02
	inc  de                                          ; $5f53: $13
	ld   l, a                                        ; $5f54: $6f
	sub  c                                           ; $5f55: $91
	db   $fc                                         ; $5f56: $fc
	and  c                                           ; $5f57: $a1
	rst  $38                                         ; $5f58: $ff
	rst  $38                                         ; $5f59: $ff
	dec  c                                           ; $5f5a: $0d
	sub  b                                           ; $5f5b: $90
	ld   [hl], c                                     ; $5f5c: $71
	halt                                             ; $5f5d: $76
	ld   e, d                                        ; $5f5e: $5a
	and  c                                           ; $5f5f: $a1
	ld   a, [hl]                                     ; $5f60: $7e
	ld   [hl], c                                     ; $5f61: $71
	ld   [hl], h                                     ; $5f62: $74
	sub  [hl]                                        ; $5f63: $96
	db   $fc                                         ; $5f64: $fc
	rst  $38                                         ; $5f65: $ff
	rst  $38                                         ; $5f66: $ff
	dec  c                                           ; $5f67: $0d
	nop                                              ; $5f68: $00
	ld   a, [bc]                                     ; $5f69: $0a
	nop                                              ; $5f6a: $00
	inc  e                                           ; $5f6b: $1c
	inc  b                                           ; $5f6c: $04
	nop                                              ; $5f6d: $00
	nop                                              ; $5f6e: $00
	ld   bc, $526f                                   ; $5f6f: $01 $6f $52
	ld   [bc], a                                     ; $5f72: $02
	inc  de                                          ; $5f73: $13
	ld   l, a                                        ; $5f74: $6f
	sub  c                                           ; $5f75: $91
	and  c                                           ; $5f76: $a1
	sbc  [hl]                                        ; $5f77: $9e
	ld   e, b                                        ; $5f78: $58
	ld   [hl], d                                     ; $5f79: $72
	ld   e, c                                        ; $5f7a: $59
	sbc  d                                           ; $5f7b: $9a
	ld   h, e                                        ; $5f7c: $63
	adc  h                                           ; $5f7d: $8c
	sbc  a                                           ; $5f7e: $9f
	dec  c                                           ; $5f7f: $0d
	nop                                              ; $5f80: $00
	ld   a, [bc]                                     ; $5f81: $0a
	nop                                              ; $5f82: $00
	nop                                              ; $5f83: $00
	ld   c, $9d                                      ; $5f84: $0e $9d
	inc  e                                           ; $5f86: $1c
	dec  b                                           ; $5f87: $05
	ld   bc, $0201                                   ; $5f88: $01 $01 $02
	ld   bc, $0008                                   ; $5f8b: $01 $08 $00
	ld   a, l                                        ; $5f8e: $7d
	and  c                                           ; $5f8f: $a1
	sbc  a                                           ; $5f90: $9f
	dec  c                                           ; $5f91: $0d
	ld   l, a                                        ; $5f92: $6f
	sub  l                                           ; $5f93: $95
	ld   d, h                                        ; $5f94: $54
	ld   [hl], a                                     ; $5f95: $77
	sub  [hl]                                        ; $5f96: $96
	ld   e, c                                        ; $5f97: $59
	ld   [hl], c                                     ; $5f98: $71
	ld   l, l                                        ; $5f99: $6d
	sbc  a                                           ; $5f9a: $9f
	dec  c                                           ; $5f9b: $0d
	nop                                              ; $5f9c: $00
	ld   a, [bc]                                     ; $5f9d: $0a
	ld   bc, $6590                                   ; $5f9e: $01 $90 $65
	sbc  [hl]                                        ; $5fa1: $9e
	inc  bc                                          ; $5fa2: $03
	ld   l, a                                        ; $5fa3: $6f
	ld   [bc], a                                     ; $5fa4: $02
	xor  c                                           ; $5fa5: $a9
	ld   e, d                                        ; $5fa6: $5a
	ld   d, b                                        ; $5fa7: $50
	ld   [hl], c                                     ; $5fa8: $71
	ld   l, l                                        ; $5fa9: $6d
	sub  a                                           ; $5faa: $97
	dec  c                                           ; $5fab: $0d
	ld   e, a                                        ; $5fac: $5f
	ld   d, d                                        ; $5fad: $52
	ld   h, c                                        ; $5fae: $61
	ld   a, h                                        ; $5faf: $7c
	ld   [bc], a                                     ; $5fb0: $02
	ld   a, [de]                                     ; $5fb1: $1a
	inc  bc                                          ; $5fb2: $03
	ld   l, e                                        ; $5fb3: $6b
	and  b                                           ; $5fb4: $a0
	ld   h, l                                        ; $5fb5: $65
	ld   [hl], h                                     ; $5fb6: $74
	dec  c                                           ; $5fb7: $0d
	sub  b                                           ; $5fb8: $90
	sub  a                                           ; $5fb9: $97
	ld   d, d                                        ; $5fba: $52
	ld   l, l                                        ; $5fbb: $6d
	ld   d, d                                        ; $5fbc: $52
	ld   a, e                                        ; $5fbd: $7b
	and  c                                           ; $5fbe: $a1
	ld   e, a                                        ; $5fbf: $5f
	ld   [hl], a                                     ; $5fc0: $77
	rst  $38                                         ; $5fc1: $ff
	rst  $38                                         ; $5fc2: $ff
	dec  c                                           ; $5fc3: $0d
	nop                                              ; $5fc4: $00
	ld   a, [bc]                                     ; $5fc5: $0a
	add  hl, de                                      ; $5fc6: $19
	dec  b                                           ; $5fc7: $05
	ld   [bc], a                                     ; $5fc8: $02
	ld   [bc], a                                     ; $5fc9: $02
	ld   a, [de]                                     ; $5fca: $1a
	inc  bc                                          ; $5fcb: $03
	ld   l, e                                        ; $5fcc: $6b
	and  b                                           ; $5fcd: $a0
	ld   h, a                                        ; $5fce: $67
	sbc  c                                           ; $5fcf: $99
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	ld   h, c                                        ; $5fd2: $61
	halt                                             ; $5fd3: $76
	sbc  l                                           ; $5fd4: $9d
	sbc  c                                           ; $5fd5: $99
	nop                                              ; $5fd6: $00
	ld   bc, $e407                                   ; $5fd7: $01 $07 $e4
	nop                                              ; $5fda: $00
	ld   [bc], a                                     ; $5fdb: $02
	inc  bc                                          ; $5fdc: $03
	ld   bc, $2000                                   ; $5fdd: $01 $00 $20
	nop                                              ; $5fe0: $00
	rlca                                             ; $5fe1: $07
	ld   l, c                                        ; $5fe2: $69
	nop                                              ; $5fe3: $00
	ld   [bc], a                                     ; $5fe4: $02
	inc  bc                                          ; $5fe5: $03
	ld   bc, $2001                                   ; $5fe6: $01 $01 $20
	nop                                              ; $5fe9: $00
	ld   b, $aa                                      ; $5fea: $06 $aa
	nop                                              ; $5fec: $00
	rrca                                             ; $5fed: $0f
	nop                                              ; $5fee: $00
	ld   bc, $6701                                   ; $5fef: $01 $01 $67
	adc  l                                           ; $5ff2: $8d
	adc  h                                           ; $5ff3: $8c
	ld   l, c                                        ; $5ff4: $69
	and  c                                           ; $5ff5: $a1
	sbc  a                                           ; $5ff6: $9f
	dec  c                                           ; $5ff7: $0d
	ld   l, a                                        ; $5ff8: $6f
	sub  l                                           ; $5ff9: $95
	ld   [hl], c                                     ; $5ffa: $71
	halt                                             ; $5ffb: $76
	ld   [bc], a                                     ; $5ffc: $02
	and  l                                           ; $5ffd: $a5
	ld   a, l                                        ; $5ffe: $7d
	rst  $38                                         ; $5fff: $ff
	rst  $38                                         ; $6000: $ff
	dec  c                                           ; $6001: $0d
	nop                                              ; $6002: $00
	ld   a, [bc]                                     ; $6003: $0a
	inc  e                                           ; $6004: $1c
	dec  b                                           ; $6005: $05
	ld   [bc], a                                     ; $6006: $02
	ld   [bc], a                                     ; $6007: $02
	dec  e                                           ; $6008: $1d
	ld   b, b                                        ; $6009: $40
	dec  d                                           ; $600a: $15
	inc  bc                                          ; $600b: $03
	dec  d                                           ; $600c: $15
	ld   bc, $2901                                   ; $600d: $01 $01 $29
	nop                                              ; $6010: $00
	ld   bc, $546b                                   ; $6011: $01 $6b $54
	ld   e, c                                        ; $6014: $59
	rst  $38                                         ; $6015: $ff
	rst  $38                                         ; $6016: $ff
	dec  c                                           ; $6017: $0d
	ld   h, a                                        ; $6018: $67
	adc  h                                           ; $6019: $8c
	and  c                                           ; $601a: $a1
	ld   a, b                                        ; $601b: $78
	sbc  [hl]                                        ; $601c: $9e
	inc  bc                                          ; $601d: $03
	dec  c                                           ; $601e: $0d
	ld   [bc], a                                     ; $601f: $02
	jp   $0d7c                                       ; $6020: $c3 $7c $0d


	ld   h, [hl]                                     ; $6023: $66
	sub  c                                           ; $6024: $91
	adc  h                                           ; $6025: $8c
	ld   h, l                                        ; $6026: $65
	ld   [hl], h                                     ; $6027: $74
	rst  $38                                         ; $6028: $ff
	rst  $38                                         ; $6029: $ff
	dec  c                                           ; $602a: $0d
	nop                                              ; $602b: $00
	ld   a, [bc]                                     ; $602c: $0a
	nop                                              ; $602d: $00
	inc  e                                           ; $602e: $1c
	dec  b                                           ; $602f: $05
	ld   [bc], a                                     ; $6030: $02
	ld   [bc], a                                     ; $6031: $02
	dec  e                                           ; $6032: $1d
	ld   b, b                                        ; $6033: $40
	dec  d                                           ; $6034: $15
	inc  bc                                          ; $6035: $03
	dec  d                                           ; $6036: $15
	ld   bc, $2901                                   ; $6037: $01 $01 $29
	nop                                              ; $603a: $00
	ld   bc, $9e50                                   ; $603b: $01 $50 $9e
	inc  b                                           ; $603e: $04
	ld   [hl], l                                     ; $603f: $75
	ld   h, l                                        ; $6040: $65
	ld   d, d                                        ; $6041: $52
	and  c                                           ; $6042: $a1
	sub  d                                           ; $6043: $92
	ld   [hl], c                                     ; $6044: $71
	ld   l, l                                        ; $6045: $6d
	sub  a                                           ; $6046: $97
	dec  c                                           ; $6047: $0d
	xor  c                                           ; $6048: $a9
	xor  c                                           ; $6049: $a9
	ld   a, e                                        ; $604a: $7b
	and  c                                           ; $604b: $a1
	ld   [hl], l                                     ; $604c: $75
	sbc  a                                           ; $604d: $9f
	dec  c                                           ; $604e: $0d
	nop                                              ; $604f: $00
	ld   a, [bc]                                     ; $6050: $0a
	ld   bc, $8c67                                   ; $6051: $01 $67 $8c
	and  c                                           ; $6054: $a1
	ld   a, b                                        ; $6055: $78
	sbc  [hl]                                        ; $6056: $9e
	inc  bc                                          ; $6057: $03
	dec  c                                           ; $6058: $0d
	ld   [bc], a                                     ; $6059: $02
	jp   $0d7c                                       ; $605a: $c3 $7c $0d


	ld   h, [hl]                                     ; $605d: $66
	sub  c                                           ; $605e: $91
	adc  h                                           ; $605f: $8c
	ld   h, l                                        ; $6060: $65
	ld   [hl], h                                     ; $6061: $74
	rst  $38                                         ; $6062: $ff
	rst  $38                                         ; $6063: $ff
	dec  c                                           ; $6064: $0d
	nop                                              ; $6065: $00
	ld   a, [bc]                                     ; $6066: $0a
	nop                                              ; $6067: $00
	rrca                                             ; $6068: $0f
	nop                                              ; $6069: $00
	ld   bc, $5201                                   ; $606a: $01 $01 $52
	ld   d, d                                        ; $606d: $52
	ld   [hl], l                                     ; $606e: $75
	ld   h, a                                        ; $606f: $67
	sub  [hl]                                        ; $6070: $96
	sbc  a                                           ; $6071: $9f
	dec  c                                           ; $6072: $0d
	inc  b                                           ; $6073: $04
	ld   l, l                                        ; $6074: $6d
	ld   [hl], l                                     ; $6075: $75
	ld   e, b                                        ; $6076: $58
	inc  b                                           ; $6077: $04
	db   $ec                                         ; $6078: $ec
	ld   a, c                                        ; $6079: $79
	dec  b                                           ; $607a: $05
	ld   d, $74                                      ; $607b: $16 $74
	sbc  c                                           ; $607d: $99
	ld   a, b                                        ; $607e: $78
	sub  a                                           ; $607f: $97
	rst  $38                                         ; $6080: $ff
	rst  $38                                         ; $6081: $ff
	dec  c                                           ; $6082: $0d
	nop                                              ; $6083: $00
	ld   a, [bc]                                     ; $6084: $0a
	rrca                                             ; $6085: $0f
	dec  b                                           ; $6086: $05
	ld   bc, $5801                                   ; $6087: $01 $01 $58
	ld   e, b                                        ; $608a: $58
	ld   e, e                                        ; $608b: $5b
	ld   a, c                                        ; $608c: $79
	ld   d, b                                        ; $608d: $50
	sbc  b                                           ; $608e: $98
	ld   e, d                                        ; $608f: $5a
	halt                                             ; $6090: $76
	ld   d, h                                        ; $6091: $54
	sbc  a                                           ; $6092: $9f
	dec  c                                           ; $6093: $0d
	nop                                              ; $6094: $00
	ld   a, [bc]                                     ; $6095: $0a
	inc  e                                           ; $6096: $1c
	dec  b                                           ; $6097: $05
	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	ld   bc, $9166                                   ; $609a: $01 $66 $91
	ld   d, b                                        ; $609d: $50
	sbc  [hl]                                        ; $609e: $9e
	ld   [$7d00], sp                                 ; $609f: $08 $00 $7d
	and  c                                           ; $60a2: $a1
	ld   a, l                                        ; $60a3: $7d
	dec  c                                           ; $60a4: $0d
	inc  b                                           ; $60a5: $04
	ld   hl, sp+$02                                  ; $60a6: $f8 $02
	add  a                                           ; $60a8: $87
	inc  b                                           ; $60a9: $04
	or   a                                           ; $60aa: $b7
	inc  bc                                          ; $60ab: $03
	add  d                                           ; $60ac: $82
	ld   a, h                                        ; $60ad: $7c
	inc  b                                           ; $60ae: $04
	db   $ec                                         ; $60af: $ec
	and  b                                           ; $60b0: $a0
	ld   e, b                                        ; $60b1: $58
	ld   [bc], a                                     ; $60b2: $02
	add  b                                           ; $60b3: $80
	ld   d, d                                        ; $60b4: $52
	ld   h, a                                        ; $60b5: $67
	sbc  c                                           ; $60b6: $99
	sbc  l                                           ; $60b7: $9d
	sbc  a                                           ; $60b8: $9f
	dec  c                                           ; $60b9: $0d
	nop                                              ; $60ba: $00
	ld   a, [bc]                                     ; $60bb: $0a
	ld   bc, wRandomNumStruct                                   ; $60bc: $01 $a7 $c2
	ld   a, h                                        ; $60bf: $7c
	ld   [bc], a                                     ; $60c0: $02
	rra                                              ; $60c1: $1f
	ld   h, [hl]                                     ; $60c2: $66
	sbc  c                                           ; $60c3: $99
	ld   [bc], a                                     ; $60c4: $02
	db   $f4                                         ; $60c5: $f4
	ld   [bc], a                                     ; $60c6: $02
	ld   a, h                                        ; $60c7: $7c
	ld   [bc], a                                     ; $60c8: $02
	ldh  a, [c]                                      ; $60c9: $f2
	halt                                             ; $60ca: $76
	ld   a, h                                        ; $60cb: $7c
	dec  c                                           ; $60cc: $0d
	and  e                                           ; $60cd: $a3
	or   b                                           ; $60ce: $b0
	cp   b                                           ; $60cf: $b8
	jp   hl                                          ; $60d0: $e9


	push af                                          ; $60d1: $f5
	cp   b                                           ; $60d2: $b8
	ei                                               ; $60d3: $fb
	push af                                          ; $60d4: $f5
	sub  d                                           ; $60d5: $92
	sbc  a                                           ; $60d6: $9f
	dec  c                                           ; $60d7: $0d
	ld   [bc], a                                     ; $60d8: $02
	and  l                                           ; $60d9: $a5
	ld   e, c                                        ; $60da: $59
	sub  a                                           ; $60db: $97
	ld   [bc], a                                     ; $60dc: $02
	sbc  l                                           ; $60dd: $9d
	ld   d, h                                        ; $60de: $54
	ld   e, c                                        ; $60df: $59
	sub  a                                           ; $60e0: $97
	ld   [bc], a                                     ; $60e1: $02
	ld   a, d                                        ; $60e2: $7a
	ld   d, [hl]                                     ; $60e3: $56
	ld   [hl], h                                     ; $60e4: $74
	ld   a, b                                        ; $60e5: $78
	sbc  a                                           ; $60e6: $9f
	dec  c                                           ; $60e7: $0d
	nop                                              ; $60e8: $00
	ld   a, [bc]                                     ; $60e9: $0a
	ld   bc, $688c                                   ; $60ea: $01 $8c $68
	sbc  [hl]                                        ; $60ed: $9e
	and  a                                           ; $60ee: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $60ef: $c2 $7c $02

	ld   c, b                                        ; $60f2: $48
	ld   [bc], a                                     ; $60f3: $02
	sub  c                                           ; $60f4: $91
	and  b                                           ; $60f5: $a0
	dec  c                                           ; $60f6: $0d
	ld   a, [bc]                                     ; $60f7: $0a
	ld   [bc], a                                     ; $60f8: $02
	ld   [bc], a                                     ; $60f9: $02
	inc  e                                           ; $60fa: $1c
	ld   a, c                                        ; $60fb: $79
	ld   e, c                                        ; $60fc: $59
	sbc  l                                           ; $60fd: $9d
	ld   h, a                                        ; $60fe: $67
	ld   a, [bc]                                     ; $60ff: $0a
	inc  bc                                          ; $6100: $03
	sbc  a                                           ; $6101: $9f
	dec  c                                           ; $6102: $0d
	nop                                              ; $6103: $00
	ld   a, [bc]                                     ; $6104: $0a
	ld   bc, $6803                                   ; $6105: $01 $03 $68
	ld   a, c                                        ; $6108: $79
	and  a                                           ; $6109: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $610a: $c2 $7c $02

	ld   c, b                                        ; $610d: $48
	ld   [bc], a                                     ; $610e: $02
	sub  c                                           ; $610f: $91
	and  b                                           ; $6110: $a0
	dec  c                                           ; $6111: $0d
	ld   a, [bc]                                     ; $6112: $0a
	ld   [bc], a                                     ; $6113: $02
	ld   [bc], a                                     ; $6114: $02
	xor  d                                           ; $6115: $aa
	sbc  e                                           ; $6116: $9b
	ld   a, c                                        ; $6117: $79
	ld   e, c                                        ; $6118: $59
	sbc  l                                           ; $6119: $9d
	ld   h, a                                        ; $611a: $67
	ld   a, [bc]                                     ; $611b: $0a
	inc  bc                                          ; $611c: $03
	sbc  a                                           ; $611d: $9f
	dec  c                                           ; $611e: $0d
	nop                                              ; $611f: $00
	ld   a, [bc]                                     ; $6120: $0a
	ld   bc, $6903                                   ; $6121: $01 $03 $69
	ld   [bc], a                                     ; $6124: $02
	xor  d                                           ; $6125: $aa
	ld   a, c                                        ; $6126: $79
	sbc  [hl]                                        ; $6127: $9e
	inc  b                                           ; $6128: $04
	ld   hl, sp+$02                                  ; $6129: $f8 $02
	add  a                                           ; $612b: $87
	inc  b                                           ; $612c: $04
	or   a                                           ; $612d: $b7
	inc  bc                                          ; $612e: $03
	add  d                                           ; $612f: $82
	ld   a, l                                        ; $6130: $7d
	dec  c                                           ; $6131: $0d
	ld   [bc], a                                     ; $6132: $02
	db   $f4                                         ; $6133: $f4
	ld   [bc], a                                     ; $6134: $02
	ld   a, h                                        ; $6135: $7c
	ld   [bc], a                                     ; $6136: $02
	ldh  a, [c]                                      ; $6137: $f2
	ld   a, h                                        ; $6138: $7c
	ld   a, [bc]                                     ; $6139: $0a
	ld   [bc], a                                     ; $613a: $02
	inc  bc                                          ; $613b: $03
	ld   h, b                                        ; $613c: $60
	db   $dd                                         ; $613d: $dd
	ret  z                                           ; $613e: $c8

	and  h                                           ; $613f: $a4
	ei                                               ; $6140: $fb
	ld   a, c                                        ; $6141: $79
	dec  c                                           ; $6142: $0d
	jp   nc, $c2f5                                   ; $6143: $d2 $f5 $c2

	and  b                                           ; $6146: $a0
	inc  b                                           ; $6147: $04
	ld   b, l                                        ; $6148: $45
	sbc  d                                           ; $6149: $9a
	sbc  c                                           ; $614a: $99
	ld   a, [bc]                                     ; $614b: $0a
	inc  bc                                          ; $614c: $03
	sbc  a                                           ; $614d: $9f
	dec  c                                           ; $614e: $0d
	nop                                              ; $614f: $00
	ld   a, [bc]                                     ; $6150: $0a
	inc  e                                           ; $6151: $1c
	dec  b                                           ; $6152: $05
	ld   bc, $0101                                   ; $6153: $01 $01 $01
	ld   [bc], a                                     ; $6156: $02
	ld   a, d                                        ; $6157: $7a
	ld   d, [hl]                                     ; $6158: $56
	ld   l, l                                        ; $6159: $6d
	ld   sp, hl                                      ; $615a: $f9
	dec  c                                           ; $615b: $0d
	adc  c                                           ; $615c: $89
	ld   a, b                                        ; $615d: $78
	sbc  [hl]                                        ; $615e: $9e
	ld   d, d                                        ; $615f: $52
	ld   e, l                                        ; $6160: $5d
	ld   [hl], l                                     ; $6161: $75
	rst  $38                                         ; $6162: $ff
	rst  $38                                         ; $6163: $ff
	dec  c                                           ; $6164: $0d
	nop                                              ; $6165: $00
	ld   a, [bc]                                     ; $6166: $0a
	inc  e                                           ; $6167: $1c
	dec  b                                           ; $6168: $05
	rlca                                             ; $6169: $07
	rlca                                             ; $616a: $07
	ld   bc, $f804                                   ; $616b: $01 $04 $f8
	ld   [bc], a                                     ; $616e: $02
	add  a                                           ; $616f: $87
	inc  b                                           ; $6170: $04
	or   a                                           ; $6171: $b7
	inc  bc                                          ; $6172: $03
	add  d                                           ; $6173: $82
	ld   a, [$5910]                                  ; $6174: $fa $10 $59
	ld   e, l                                        ; $6177: $5d
	ld   h, d                                        ; $6178: $62
	ld   a, [$000d]                                  ; $6179: $fa $0d $00
	ld   a, [bc]                                     ; $617c: $0a
	rrca                                             ; $617d: $0f
	nop                                              ; $617e: $00
	ld   bc, $5601                                   ; $617f: $01 $01 $56
	db   $fc                                         ; $6182: $fc
	halt                                             ; $6183: $76
	rst  $38                                         ; $6184: $ff
	rst  $38                                         ; $6185: $ff
	dec  c                                           ; $6186: $0d
	inc  b                                           ; $6187: $04
	ld   hl, sp+$02                                  ; $6188: $f8 $02
	add  a                                           ; $618a: $87
	inc  b                                           ; $618b: $04
	or   a                                           ; $618c: $b7
	inc  bc                                          ; $618d: $03
	add  d                                           ; $618e: $82
	ld   a, l                                        ; $618f: $7d
	ld   [bc], a                                     ; $6190: $02
	db   $f4                                         ; $6191: $f4
	ld   [bc], a                                     ; $6192: $02
	ld   a, h                                        ; $6193: $7c
	ld   [bc], a                                     ; $6194: $02
	ldh  a, [c]                                      ; $6195: $f2
	ld   a, h                                        ; $6196: $7c
	ld   [bc], a                                     ; $6197: $02
	ld   c, b                                        ; $6198: $48
	ld   [bc], a                                     ; $6199: $02
	sub  c                                           ; $619a: $91
	and  b                                           ; $619b: $a0
	dec  c                                           ; $619c: $0d
	ld   [hl], a                                     ; $619d: $77
	ld   [hl], c                                     ; $619e: $71
	ld   l, a                                        ; $619f: $6f
	ld   a, c                                        ; $61a0: $79
	ld   e, c                                        ; $61a1: $59
	sbc  l                                           ; $61a2: $9d
	ld   h, a                                        ; $61a3: $67
	and  c                                           ; $61a4: $a1
	ld   l, [hl]                                     ; $61a5: $6e
	ld   [hl], c                                     ; $61a6: $71
	ld   e, a                                        ; $61a7: $5f
	ld   sp, hl                                      ; $61a8: $f9
	dec  c                                           ; $61a9: $0d
	nop                                              ; $61aa: $00
	ld   a, [bc]                                     ; $61ab: $0a
	add  hl, de                                      ; $61ac: $19
	dec  b                                           ; $61ad: $05
	inc  bc                                          ; $61ae: $03
	ld   [bc], a                                     ; $61af: $02
	inc  e                                           ; $61b0: $1c
	ld   a, c                                        ; $61b1: $79
	ld   e, c                                        ; $61b2: $59
	sbc  l                                           ; $61b3: $9d
	ld   h, a                                        ; $61b4: $67
	nop                                              ; $61b5: $00
	nop                                              ; $61b6: $00
	inc  bc                                          ; $61b7: $03
	ld   h, b                                        ; $61b8: $60
	ld   a, c                                        ; $61b9: $79
	ld   e, c                                        ; $61ba: $59
	sbc  l                                           ; $61bb: $9d
	ld   h, a                                        ; $61bc: $67
	nop                                              ; $61bd: $00
	ld   bc, $4f03                                   ; $61be: $01 $03 $4f
	ld   a, c                                        ; $61c1: $79
	ld   e, c                                        ; $61c2: $59
	sbc  l                                           ; $61c3: $9d
	ld   h, a                                        ; $61c4: $67
	nop                                              ; $61c5: $00
	ld   [bc], a                                     ; $61c6: $02
	rlca                                             ; $61c7: $07
	ld   h, c                                        ; $61c8: $61
	ld   [bc], a                                     ; $61c9: $02
	ld   [bc], a                                     ; $61ca: $02
	inc  bc                                          ; $61cb: $03
	ld   bc, $2000                                   ; $61cc: $01 $00 $20
	nop                                              ; $61cf: $00
	rlca                                             ; $61d0: $07
	ld   a, e                                        ; $61d1: $7b
	ld   [bc], a                                     ; $61d2: $02
	ld   [bc], a                                     ; $61d3: $02
	inc  bc                                          ; $61d4: $03
	ld   bc, $2001                                   ; $61d5: $01 $01 $20
	nop                                              ; $61d8: $00
	rlca                                             ; $61d9: $07
	sub  d                                           ; $61da: $92
	ld   [bc], a                                     ; $61db: $02
	ld   [bc], a                                     ; $61dc: $02
	inc  bc                                          ; $61dd: $03
	ld   bc, $2002                                   ; $61de: $01 $02 $20
	nop                                              ; $61e1: $00
	ld   b, $da                                      ; $61e2: $06 $da
	inc  b                                           ; $61e4: $04
	rrca                                             ; $61e5: $0f
	nop                                              ; $61e6: $00
	ld   bc, $0201                                   ; $61e7: $01 $01 $02
	inc  e                                           ; $61ea: $1c
	ld   a, c                                        ; $61eb: $79
	ld   e, c                                        ; $61ec: $59
	sbc  l                                           ; $61ed: $9d
	ld   h, a                                        ; $61ee: $67
	ld   a, [$000d]                                  ; $61ef: $fa $0d $00
	ld   a, [bc]                                     ; $61f2: $0a
	dec  b                                           ; $61f3: $05
	ld   b, b                                        ; $61f4: $40
	rst  $38                                         ; $61f5: $ff
	inc  bc                                          ; $61f6: $03
	rst  $38                                         ; $61f7: $ff
	ld   bc, $2801                                   ; $61f8: $01 $01 $28
	nop                                              ; $61fb: $00
	ld   b, $a9                                      ; $61fc: $06 $a9
	ld   [bc], a                                     ; $61fe: $02
	rrca                                             ; $61ff: $0f
	nop                                              ; $6200: $00
	ld   bc, $0301                                   ; $6201: $01 $01 $03
	ld   h, b                                        ; $6204: $60
	ld   a, c                                        ; $6205: $79
	ld   e, c                                        ; $6206: $59
	sbc  l                                           ; $6207: $9d
	ld   h, a                                        ; $6208: $67
	rst  $38                                         ; $6209: $ff
	rst  $38                                         ; $620a: $ff
	ld   l, [hl]                                     ; $620b: $6e
	ld   [hl], c                                     ; $620c: $71
	ld   e, a                                        ; $620d: $5f
	rst  $38                                         ; $620e: $ff
	rst  $38                                         ; $620f: $ff
	dec  c                                           ; $6210: $0d
	nop                                              ; $6211: $00
	ld   a, [bc]                                     ; $6212: $0a
	ld   b, $a9                                      ; $6213: $06 $a9
	ld   [bc], a                                     ; $6215: $02
	rrca                                             ; $6216: $0f
	nop                                              ; $6217: $00
	ld   bc, $0301                                   ; $6218: $01 $01 $03
	ld   c, a                                        ; $621b: $4f
	ld   a, c                                        ; $621c: $79
	ld   e, c                                        ; $621d: $59
	sbc  l                                           ; $621e: $9d
	ld   h, a                                        ; $621f: $67
	rst  $38                                         ; $6220: $ff
	rst  $38                                         ; $6221: $ff
	ld   l, [hl]                                     ; $6222: $6e
	ld   [hl], c                                     ; $6223: $71
	ld   e, a                                        ; $6224: $5f
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	dec  c                                           ; $6227: $0d
	nop                                              ; $6228: $00
	ld   a, [bc]                                     ; $6229: $0a
	ld   b, $a9                                      ; $622a: $06 $a9
	ld   [bc], a                                     ; $622c: $02
	rrca                                             ; $622d: $0f
	dec  b                                           ; $622e: $05
	rlca                                             ; $622f: $07
	ld   bc, $715d                                   ; $6230: $01 $5d $71
	ld   l, e                                        ; $6233: $6b
	ei                                               ; $6234: $fb
	sbc  [hl]                                        ; $6235: $9e
	ld   e, c                                        ; $6236: $59
	sbc  l                                           ; $6237: $9d
	ld   h, e                                        ; $6238: $63
	sbc  d                                           ; $6239: $9a
	ld   l, l                                        ; $623a: $6d
	sbc  a                                           ; $623b: $9f
	dec  c                                           ; $623c: $0d
	ld   a, b                                        ; $623d: $78
	sub  a                                           ; $623e: $97
	ld   a, [hl]                                     ; $623f: $7e
	sbc  [hl]                                        ; $6240: $9e
	ld   h, c                                        ; $6241: $61
	sbc  d                                           ; $6242: $9a
	ld   a, l                                        ; $6243: $7d
	ld   [hl], a                                     ; $6244: $77
	ld   d, h                                        ; $6245: $54
	ld   l, [hl]                                     ; $6246: $6e
	ld   a, [$000d]                                  ; $6247: $fa $0d $00
	ld   a, [bc]                                     ; $624a: $0a
	rrca                                             ; $624b: $0f
	nop                                              ; $624c: $00
	ld   bc, $5601                                   ; $624d: $01 $01 $56
	db   $fc                                         ; $6250: $fc
	halt                                             ; $6251: $76
	rst  $38                                         ; $6252: $ff
	rst  $38                                         ; $6253: $ff
	dec  c                                           ; $6254: $0d
	inc  b                                           ; $6255: $04
	ld   hl, sp+$02                                  ; $6256: $f8 $02
	add  a                                           ; $6258: $87
	inc  b                                           ; $6259: $04
	or   a                                           ; $625a: $b7
	inc  bc                                          ; $625b: $03
	add  d                                           ; $625c: $82
	ld   a, l                                        ; $625d: $7d
	ld   [bc], a                                     ; $625e: $02
	db   $f4                                         ; $625f: $f4
	ld   [bc], a                                     ; $6260: $02
	ld   a, h                                        ; $6261: $7c
	ld   [bc], a                                     ; $6262: $02
	ldh  a, [c]                                      ; $6263: $f2
	ld   a, h                                        ; $6264: $7c
	ld   [bc], a                                     ; $6265: $02
	ld   c, b                                        ; $6266: $48
	ld   [bc], a                                     ; $6267: $02
	sub  c                                           ; $6268: $91
	and  b                                           ; $6269: $a0
	dec  c                                           ; $626a: $0d
	ld   [hl], a                                     ; $626b: $77
	ld   [hl], c                                     ; $626c: $71
	ld   l, a                                        ; $626d: $6f
	ld   a, c                                        ; $626e: $79
	ld   e, c                                        ; $626f: $59
	sbc  l                                           ; $6270: $9d
	ld   h, a                                        ; $6271: $67
	and  c                                           ; $6272: $a1
	ld   l, [hl]                                     ; $6273: $6e
	ld   [hl], c                                     ; $6274: $71
	ld   e, a                                        ; $6275: $5f
	ld   sp, hl                                      ; $6276: $f9
	dec  c                                           ; $6277: $0d
	nop                                              ; $6278: $00
	ld   a, [bc]                                     ; $6279: $0a
	add  hl, de                                      ; $627a: $19
	dec  b                                           ; $627b: $05
	inc  bc                                          ; $627c: $03
	ld   [bc], a                                     ; $627d: $02
	xor  d                                           ; $627e: $aa
	sbc  e                                           ; $627f: $9b
	ld   a, c                                        ; $6280: $79
	ld   e, c                                        ; $6281: $59
	sbc  l                                           ; $6282: $9d
	ld   h, a                                        ; $6283: $67
	nop                                              ; $6284: $00
	nop                                              ; $6285: $00
	ld   [bc], a                                     ; $6286: $02
	inc  e                                           ; $6287: $1c
	ld   a, c                                        ; $6288: $79
	ld   e, c                                        ; $6289: $59
	sbc  l                                           ; $628a: $9d
	ld   h, a                                        ; $628b: $67
	nop                                              ; $628c: $00
	ld   bc, $4f03                                   ; $628d: $01 $03 $4f
	ld   a, c                                        ; $6290: $79
	ld   e, c                                        ; $6291: $59
	sbc  l                                           ; $6292: $9d
	ld   h, a                                        ; $6293: $67
	nop                                              ; $6294: $00
	ld   [bc], a                                     ; $6295: $02
	rlca                                             ; $6296: $07
	jr   nc, @+$05                                   ; $6297: $30 $03

	ld   [bc], a                                     ; $6299: $02
	inc  bc                                          ; $629a: $03
	ld   bc, $2000                                   ; $629b: $01 $00 $20
	nop                                              ; $629e: $00
	rlca                                             ; $629f: $07
	ld   c, e                                        ; $62a0: $4b
	inc  bc                                          ; $62a1: $03
	ld   [bc], a                                     ; $62a2: $02
	inc  bc                                          ; $62a3: $03
	ld   bc, $2001                                   ; $62a4: $01 $01 $20
	nop                                              ; $62a7: $00
	rlca                                             ; $62a8: $07
	ld   h, d                                        ; $62a9: $62
	inc  bc                                          ; $62aa: $03
	ld   [bc], a                                     ; $62ab: $02
	inc  bc                                          ; $62ac: $03
	ld   bc, $2002                                   ; $62ad: $01 $02 $20
	nop                                              ; $62b0: $00
	ld   b, $da                                      ; $62b1: $06 $da
	inc  b                                           ; $62b3: $04
	rrca                                             ; $62b4: $0f
	nop                                              ; $62b5: $00
	ld   bc, $0201                                   ; $62b6: $01 $01 $02
	xor  d                                           ; $62b9: $aa
	sbc  e                                           ; $62ba: $9b
	ld   a, c                                        ; $62bb: $79
	ld   e, c                                        ; $62bc: $59
	sbc  l                                           ; $62bd: $9d
	ld   h, a                                        ; $62be: $67
	ld   a, [$000d]                                  ; $62bf: $fa $0d $00
	ld   a, [bc]                                     ; $62c2: $0a
	dec  b                                           ; $62c3: $05
	ld   b, b                                        ; $62c4: $40
	rst  $38                                         ; $62c5: $ff
	inc  bc                                          ; $62c6: $03
	rst  $38                                         ; $62c7: $ff
	ld   bc, $2801                                   ; $62c8: $01 $01 $28
	nop                                              ; $62cb: $00
	ld   b, $79                                      ; $62cc: $06 $79
	inc  bc                                          ; $62ce: $03
	rrca                                             ; $62cf: $0f
	nop                                              ; $62d0: $00
	ld   bc, $0201                                   ; $62d1: $01 $01 $02
	inc  e                                           ; $62d4: $1c
	ld   a, c                                        ; $62d5: $79
	ld   e, c                                        ; $62d6: $59
	sbc  l                                           ; $62d7: $9d
	ld   h, a                                        ; $62d8: $67
	rst  $38                                         ; $62d9: $ff
	rst  $38                                         ; $62da: $ff
	ld   l, [hl]                                     ; $62db: $6e
	ld   [hl], c                                     ; $62dc: $71
	ld   e, a                                        ; $62dd: $5f
	rst  $38                                         ; $62de: $ff
	rst  $38                                         ; $62df: $ff
	dec  c                                           ; $62e0: $0d
	nop                                              ; $62e1: $00
	ld   a, [bc]                                     ; $62e2: $0a
	ld   b, $79                                      ; $62e3: $06 $79
	inc  bc                                          ; $62e5: $03
	rrca                                             ; $62e6: $0f
	nop                                              ; $62e7: $00
	ld   bc, $0301                                   ; $62e8: $01 $01 $03
	ld   c, a                                        ; $62eb: $4f
	ld   a, c                                        ; $62ec: $79
	ld   e, c                                        ; $62ed: $59
	sbc  l                                           ; $62ee: $9d
	ld   h, a                                        ; $62ef: $67
	rst  $38                                         ; $62f0: $ff
	rst  $38                                         ; $62f1: $ff
	ld   l, [hl]                                     ; $62f2: $6e
	ld   [hl], c                                     ; $62f3: $71
	ld   e, a                                        ; $62f4: $5f
	rst  $38                                         ; $62f5: $ff
	rst  $38                                         ; $62f6: $ff
	dec  c                                           ; $62f7: $0d
	nop                                              ; $62f8: $00
	ld   a, [bc]                                     ; $62f9: $0a
	ld   b, $79                                      ; $62fa: $06 $79
	inc  bc                                          ; $62fc: $03
	inc  e                                           ; $62fd: $1c
	dec  b                                           ; $62fe: $05
	inc  bc                                          ; $62ff: $03
	inc  bc                                          ; $6300: $03
	ld   bc, $7154                                   ; $6301: $01 $54 $71
	sbc  [hl]                                        ; $6304: $9e
	ld   e, c                                        ; $6305: $59
	sbc  l                                           ; $6306: $9d
	ld   h, e                                        ; $6307: $63
	sbc  d                                           ; $6308: $9a
	ld   l, l                                        ; $6309: $6d
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	dec  c                                           ; $630c: $0d
	ld   d, b                                        ; $630d: $50
	ld   [hl], c                                     ; $630e: $71
	ld   a, [$6510]                                  ; $630f: $fa $10 $65
	adc  h                                           ; $6312: $8c
	ld   [hl], c                                     ; $6313: $71
	ld   l, l                                        ; $6314: $6d
	ld   a, [$000d]                                  ; $6315: $fa $0d $00
	ld   a, [bc]                                     ; $6318: $0a
	rrca                                             ; $6319: $0f
	nop                                              ; $631a: $00
	ld   bc, $5601                                   ; $631b: $01 $01 $56
	db   $fc                                         ; $631e: $fc
	halt                                             ; $631f: $76
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	dec  c                                           ; $6322: $0d
	inc  b                                           ; $6323: $04
	ld   hl, sp+$02                                  ; $6324: $f8 $02
	add  a                                           ; $6326: $87
	inc  b                                           ; $6327: $04
	or   a                                           ; $6328: $b7
	inc  bc                                          ; $6329: $03
	add  d                                           ; $632a: $82
	ld   a, l                                        ; $632b: $7d
	ld   [bc], a                                     ; $632c: $02
	db   $f4                                         ; $632d: $f4
	ld   [bc], a                                     ; $632e: $02
	ld   a, h                                        ; $632f: $7c
	ld   [bc], a                                     ; $6330: $02
	ldh  a, [c]                                      ; $6331: $f2
	ld   a, c                                        ; $6332: $79
	dec  c                                           ; $6333: $0d
	ld   [hl], a                                     ; $6334: $77
	and  c                                           ; $6335: $a1
	ld   a, b                                        ; $6336: $78
	ld   [bc], a                                     ; $6337: $02
	ld   c, b                                        ; $6338: $48
	ld   [bc], a                                     ; $6339: $02
	sub  c                                           ; $633a: $91
	and  b                                           ; $633b: $a0
	ld   h, a                                        ; $633c: $67
	sbc  c                                           ; $633d: $99
	and  c                                           ; $633e: $a1
	ld   l, [hl]                                     ; $633f: $6e
	ld   [hl], c                                     ; $6340: $71
	ld   e, a                                        ; $6341: $5f
	ld   sp, hl                                      ; $6342: $f9
	dec  c                                           ; $6343: $0d
	nop                                              ; $6344: $00
	ld   a, [bc]                                     ; $6345: $0a
	add  hl, de                                      ; $6346: $19
	dec  b                                           ; $6347: $05
	inc  bc                                          ; $6348: $03
	inc  bc                                          ; $6349: $03
	ld   h, b                                        ; $634a: $60
	db   $dd                                         ; $634b: $dd
	ret  z                                           ; $634c: $c8

	and  h                                           ; $634d: $a4
	ei                                               ; $634e: $fb
	ld   a, c                                        ; $634f: $79
	jp   nc, $c2f5                                   ; $6350: $d2 $f5 $c2

	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	inc  bc                                          ; $6355: $03
	ld   h, b                                        ; $6356: $60
	adc  c                                           ; $6357: $89
	ld   e, b                                        ; $6358: $58
	ld   a, c                                        ; $6359: $79
	inc  b                                           ; $635a: $04
	xor  b                                           ; $635b: $a8
	inc  bc                                          ; $635c: $03
	ld   l, e                                        ; $635d: $6b
	nop                                              ; $635e: $00
	ld   bc, $aa02                                   ; $635f: $01 $02 $aa
	inc  bc                                          ; $6362: $03
	ret  c                                           ; $6363: $d8

	inc  b                                           ; $6364: $04
	sub  l                                           ; $6365: $95
	ld   a, c                                        ; $6366: $79
	ld   d, [hl]                                     ; $6367: $56
	and  c                                           ; $6368: $a1
	ld   l, b                                        ; $6369: $68
	ld   d, d                                        ; $636a: $52
	ld   e, h                                        ; $636b: $5c
	sbc  b                                           ; $636c: $98
	nop                                              ; $636d: $00
	ld   [bc], a                                     ; $636e: $02
	rlca                                             ; $636f: $07
	add  hl, bc                                      ; $6370: $09
	inc  b                                           ; $6371: $04
	ld   [bc], a                                     ; $6372: $02
	inc  bc                                          ; $6373: $03
	ld   bc, $2000                                   ; $6374: $01 $00 $20
	nop                                              ; $6377: $00
	rlca                                             ; $6378: $07
	jr   z, @+$06                                    ; $6379: $28 $04

	ld   [bc], a                                     ; $637b: $02
	inc  bc                                          ; $637c: $03
	ld   bc, $2001                                   ; $637d: $01 $01 $20
	nop                                              ; $6380: $00
	rlca                                             ; $6381: $07
	add  b                                           ; $6382: $80
	inc  b                                           ; $6383: $04
	ld   [bc], a                                     ; $6384: $02
	inc  bc                                          ; $6385: $03
	ld   bc, $2002                                   ; $6386: $01 $02 $20
	nop                                              ; $6389: $00
	ld   b, $da                                      ; $638a: $06 $da
	inc  b                                           ; $638c: $04
	rrca                                             ; $638d: $0f
	nop                                              ; $638e: $00
	ld   bc, $0301                                   ; $638f: $01 $01 $03
	ld   h, b                                        ; $6392: $60
	db   $dd                                         ; $6393: $dd
	ret  z                                           ; $6394: $c8

	and  h                                           ; $6395: $a4
	ei                                               ; $6396: $fb
	ld   a, c                                        ; $6397: $79
	jp   nc, $c2f5                                   ; $6398: $d2 $f5 $c2

	ld   l, [hl]                                     ; $639b: $6e
	ld   a, [$000d]                                  ; $639c: $fa $0d $00
	ld   a, [bc]                                     ; $639f: $0a
	dec  b                                           ; $63a0: $05
	ld   b, b                                        ; $63a1: $40
	rst  $38                                         ; $63a2: $ff
	inc  bc                                          ; $63a3: $03
	rst  $38                                         ; $63a4: $ff
	ld   bc, $2801                                   ; $63a5: $01 $01 $28
	nop                                              ; $63a8: $00
	ld   b, $0d                                      ; $63a9: $06 $0d
	dec  b                                           ; $63ab: $05
	rrca                                             ; $63ac: $0f
	nop                                              ; $63ad: $00
	ld   bc, $0301                                   ; $63ae: $01 $01 $03
	ld   h, b                                        ; $63b1: $60
	adc  c                                           ; $63b2: $89
	ld   e, b                                        ; $63b3: $58
	ld   a, c                                        ; $63b4: $79
	inc  b                                           ; $63b5: $04
	xor  b                                           ; $63b6: $a8
	inc  bc                                          ; $63b7: $03
	ld   l, e                                        ; $63b8: $6b
	ld   l, [hl]                                     ; $63b9: $6e
	ld   a, [$000d]                                  ; $63ba: $fa $0d $00
	ld   a, [bc]                                     ; $63bd: $0a
	inc  c                                           ; $63be: $0c
	inc  b                                           ; $63bf: $04
	inc  d                                           ; $63c0: $14
	rlca                                             ; $63c1: $07
	ld   bc, $051c                                   ; $63c2: $01 $1c $05
	inc  bc                                          ; $63c5: $03
	inc  bc                                          ; $63c6: $03
	dec  e                                           ; $63c7: $1d
	ld   b, b                                        ; $63c8: $40
	dec  d                                           ; $63c9: $15
	inc  bc                                          ; $63ca: $03
	dec  d                                           ; $63cb: $15
	ld   bc, $2901                                   ; $63cc: $01 $01 $29
	nop                                              ; $63cf: $00
	ld   bc, $7152                                   ; $63d0: $01 $52 $71
	ld   l, l                                        ; $63d3: $6d
	ei                                               ; $63d4: $fb
	ei                                               ; $63d5: $fb
	sbc  a                                           ; $63d6: $9f
	dec  c                                           ; $63d7: $0d
	ld   d, b                                        ; $63d8: $50
	ld   e, c                                        ; $63d9: $59
	and  c                                           ; $63da: $a1
	ld   e, d                                        ; $63db: $5a
	ld   a, b                                        ; $63dc: $78
	sbc  [hl]                                        ; $63dd: $9e
	ld   bc, $0307                                   ; $63de: $01 $07 $03
	ld   h, b                                        ; $63e1: $60
	db   $dd                                         ; $63e2: $dd
	ret  z                                           ; $63e3: $c8

	and  h                                           ; $63e4: $a4
	ei                                               ; $63e5: $fb
	ld   a, c                                        ; $63e6: $79
	dec  c                                           ; $63e7: $0d
	jp   nc, $c2f5                                   ; $63e8: $d2 $f5 $c2

	ld   bc, $9208                                   ; $63eb: $01 $08 $92
	ld   e, d                                        ; $63ee: $5a
	ld   a, b                                        ; $63ef: $78
	sbc  a                                           ; $63f0: $9f
	and  l                                           ; $63f1: $a5
	rst  ToBoot                                         ; $63f2: $c7
	rst  ToBoot                                         ; $63f3: $c7
	rst  ToBoot                                         ; $63f4: $c7
	sbc  a                                           ; $63f5: $9f
	dec  c                                           ; $63f6: $0d
	nop                                              ; $63f7: $00
	ld   a, [bc]                                     ; $63f8: $0a
	dec  c                                           ; $63f9: $0d
	nop                                              ; $63fa: $00
	nop                                              ; $63fb: $00
	rrca                                             ; $63fc: $0f
	nop                                              ; $63fd: $00
	ld   bc, $0b0c                                   ; $63fe: $01 $0c $0b
	ld   b, $0d                                      ; $6401: $06 $0d
	dec  b                                           ; $6403: $05
	rrca                                             ; $6404: $0f
	nop                                              ; $6405: $00
	ld   bc, $0201                                   ; $6406: $01 $01 $02
	xor  d                                           ; $6409: $aa
	inc  bc                                          ; $640a: $03
	ret  c                                           ; $640b: $d8

	inc  b                                           ; $640c: $04
	sub  l                                           ; $640d: $95
	ld   a, c                                        ; $640e: $79
	ld   d, [hl]                                     ; $640f: $56
	and  c                                           ; $6410: $a1
	ld   l, b                                        ; $6411: $68
	ld   d, d                                        ; $6412: $52
	ld   e, h                                        ; $6413: $5c
	sbc  b                                           ; $6414: $98
	ld   l, [hl]                                     ; $6415: $6e
	ld   a, [$000d]                                  ; $6416: $fa $0d $00
	ld   a, [bc]                                     ; $6419: $0a
	inc  c                                           ; $641a: $0c
	inc  b                                           ; $641b: $04
	inc  d                                           ; $641c: $14
	rlca                                             ; $641d: $07
	ld   bc, $051c                                   ; $641e: $01 $1c $05
	inc  bc                                          ; $6421: $03
	inc  bc                                          ; $6422: $03
	dec  e                                           ; $6423: $1d
	ld   b, b                                        ; $6424: $40
	dec  d                                           ; $6425: $15
	inc  bc                                          ; $6426: $03
	dec  d                                           ; $6427: $15
	ld   bc, $2902                                   ; $6428: $01 $02 $29
	nop                                              ; $642b: $00
	ld   bc, $d9b1                                   ; $642c: $01 $b1 $d9
	ei                                               ; $642f: $fb
	call nz, $0dfa                                   ; $6430: $c4 $fa $0d
	ld   l, a                                        ; $6433: $6f
	sbc  [hl]                                        ; $6434: $9e
	ld   l, a                                        ; $6435: $6f
	ld   e, d                                        ; $6436: $5a
	ld   d, h                                        ; $6437: $54
	rst  $38                                         ; $6438: $ff
	ld   bc, $0307                                   ; $6439: $01 $07 $03
	ld   h, b                                        ; $643c: $60
	db   $dd                                         ; $643d: $dd
	ret  z                                           ; $643e: $c8

	and  h                                           ; $643f: $a4
	ei                                               ; $6440: $fb
	ld   a, c                                        ; $6441: $79
	dec  c                                           ; $6442: $0d
	jp   nc, $c2f5                                   ; $6443: $d2 $f5 $c2

	ld   bc, $9208                                   ; $6446: $01 $08 $92
	rst  $38                                         ; $6449: $ff
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	rst  $38                                         ; $644c: $ff
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	sbc  a                                           ; $644f: $9f
	dec  c                                           ; $6450: $0d
	nop                                              ; $6451: $00
	ld   a, [bc]                                     ; $6452: $0a
	dec  c                                           ; $6453: $0d
	nop                                              ; $6454: $00
	nop                                              ; $6455: $00
	rrca                                             ; $6456: $0f
	nop                                              ; $6457: $00
	ld   bc, $0b0c                                   ; $6458: $01 $0c $0b
	ld   b, $0d                                      ; $645b: $06 $0d
	dec  b                                           ; $645d: $05
	inc  e                                           ; $645e: $1c
	dec  b                                           ; $645f: $05
	ld   [bc], a                                     ; $6460: $02
	ld   [bc], a                                     ; $6461: $02
	ld   bc, $7c61                                   ; $6462: $01 $61 $7c
	ld   e, l                                        ; $6465: $5d
	sub  a                                           ; $6466: $97
	ld   d, d                                        ; $6467: $52
	ld   a, h                                        ; $6468: $7c
	inc  b                                           ; $6469: $04
	dec  de                                          ; $646a: $1b
	ld   e, e                                        ; $646b: $5b
	dec  c                                           ; $646c: $0d
	ld   [de], a                                     ; $646d: $12
	ld   [bc], a                                     ; $646e: $02
	sub  e                                           ; $646f: $93
	ld   [hl], l                                     ; $6470: $75
	ld   e, b                                        ; $6471: $58
	adc  d                                           ; $6472: $8a
	ld   d, [hl]                                     ; $6473: $56
	ld   a, b                                        ; $6474: $78
	and  e                                           ; $6475: $a3
	xor  h                                           ; $6476: $ac
	push af                                          ; $6477: $f5
	sub  d                                           ; $6478: $92
	and  c                                           ; $6479: $a1
	sbc  a                                           ; $647a: $9f
	dec  c                                           ; $647b: $0d
	adc  h                                           ; $647c: $8c
	ld   [hl], c                                     ; $647d: $71
	ld   l, l                                        ; $647e: $6d
	ld   e, l                                        ; $647f: $5d
	sub  b                                           ; $6480: $90
	ei                                               ; $6481: $fb
	sbc  a                                           ; $6482: $9f
	dec  c                                           ; $6483: $0d
	nop                                              ; $6484: $00
	ld   a, [bc]                                     ; $6485: $0a
	dec  c                                           ; $6486: $0d
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	rrca                                             ; $6489: $0f
	nop                                              ; $648a: $00
	ld   bc, $0b0c                                   ; $648b: $01 $0c $0b
	ld   b, $6b                                      ; $648e: $06 $6b
	dec  b                                           ; $6490: $05
	rlca                                             ; $6491: $07
	jp   nc, $0305                                   ; $6492: $d2 $05 $03

	rst  $38                                         ; $6495: $ff
	ld   bc, $2003                                   ; $6496: $01 $03 $20
	nop                                              ; $6499: $00
	rlca                                             ; $649a: $07
	jr   z, jr_068_64a2                              ; $649b: $28 $05

	inc  bc                                          ; $649d: $03
	rst  $38                                         ; $649e: $ff
	ld   bc, $2002                                   ; $649f: $01 $02 $20

jr_068_64a2:
	nop                                              ; $64a2: $00
	rlca                                             ; $64a3: $07
	ld   l, e                                        ; $64a4: $6b
	dec  b                                           ; $64a5: $05
	inc  bc                                          ; $64a6: $03
	rst  $38                                         ; $64a7: $ff
	ld   bc, $2301                                   ; $64a8: $01 $01 $23
	nop                                              ; $64ab: $00
	inc  e                                           ; $64ac: $1c
	dec  b                                           ; $64ad: $05
	nop                                              ; $64ae: $00
	nop                                              ; $64af: $00
	dec  e                                           ; $64b0: $1d
	ld   b, b                                        ; $64b1: $40
	dec  d                                           ; $64b2: $15
	inc  bc                                          ; $64b3: $03
	dec  d                                           ; $64b4: $15
	ld   bc, $2802                                   ; $64b5: $01 $02 $28
	nop                                              ; $64b8: $00
	ld   bc, $0008                                   ; $64b9: $01 $08 $00
	ld   a, l                                        ; $64bc: $7d
	and  c                                           ; $64bd: $a1
	sbc  [hl]                                        ; $64be: $9e
	ld   a, b                                        ; $64bf: $78
	ld   e, c                                        ; $64c0: $59
	ld   a, b                                        ; $64c1: $78
	ld   e, c                                        ; $64c2: $59
	dec  c                                           ; $64c3: $0d
	sub  d                                           ; $64c4: $92
	sbc  c                                           ; $64c5: $99
	sub  d                                           ; $64c6: $92
	and  c                                           ; $64c7: $a1
	ld   e, c                                        ; $64c8: $59
	sbc  a                                           ; $64c9: $9f
	dec  c                                           ; $64ca: $0d
	inc  bc                                          ; $64cb: $03
	ld   e, e                                        ; $64cc: $5b
	ld   e, c                                        ; $64cd: $59
	ld   [hl], c                                     ; $64ce: $71
	ld   l, l                                        ; $64cf: $6d
	sbc  l                                           ; $64d0: $9d
	sbc  a                                           ; $64d1: $9f
	dec  c                                           ; $64d2: $0d
	nop                                              ; $64d3: $00
	ld   a, [bc]                                     ; $64d4: $0a
	ld   bc, $7889                                   ; $64d5: $01 $89 $78
	sbc  [hl]                                        ; $64d8: $9e
	ld   e, b                                        ; $64d9: $58
	inc  b                                           ; $64da: $04
	ld   a, e                                        ; $64db: $7b
	sbc  d                                           ; $64dc: $9a
	ld   h, e                                        ; $64dd: $63
	and  c                                           ; $64de: $a1
	ld   [hl], l                                     ; $64df: $75
	ld   h, l                                        ; $64e0: $65
	ld   l, l                                        ; $64e1: $6d
	sbc  a                                           ; $64e2: $9f
	dec  c                                           ; $64e3: $0d
	nop                                              ; $64e4: $00
	ld   a, [bc]                                     ; $64e5: $0a
	dec  c                                           ; $64e6: $0d
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	rrca                                             ; $64e9: $0f
	nop                                              ; $64ea: $00
	ld   bc, $1e09                                   ; $64eb: $01 $09 $1e
	nop                                              ; $64ee: $00
	inc  e                                           ; $64ef: $1c
	dec  b                                           ; $64f0: $05
	ld   [bc], a                                     ; $64f1: $02
	ld   [bc], a                                     ; $64f2: $02
	dec  e                                           ; $64f3: $1d
	ld   b, b                                        ; $64f4: $40
	dec  d                                           ; $64f5: $15
	inc  bc                                          ; $64f6: $03
	dec  d                                           ; $64f7: $15
	ld   bc, $2902                                   ; $64f8: $01 $02 $29
	nop                                              ; $64fb: $00
	ld   bc, $fba1                                   ; $64fc: $01 $a1 $fb
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	rst  $38                                         ; $6501: $ff
	dec  c                                           ; $6502: $0d
	ld   a, b                                        ; $6503: $78
	and  c                                           ; $6504: $a1
	ld   e, c                                        ; $6505: $59
	sbc  [hl]                                        ; $6506: $9e
	ld   d, b                                        ; $6507: $50
	and  c                                           ; $6508: $a1
	adc  h                                           ; $6509: $8c
	ld   h, l                                        ; $650a: $65
	dec  b                                           ; $650b: $05
	add  hl, de                                      ; $650c: $19
	inc  bc                                          ; $650d: $03
	and  h                                           ; $650e: $a4
	ld   a, c                                        ; $650f: $79
	dec  c                                           ; $6510: $0d
	ld   a, b                                        ; $6511: $78
	sbc  d                                           ; $6512: $9a
	add  [hl]                                        ; $6513: $86
	and  c                                           ; $6514: $a1
	ld   e, c                                        ; $6515: $59
	ld   [hl], c                                     ; $6516: $71
	ld   l, l                                        ; $6517: $6d
	ld   a, b                                        ; $6518: $78
	db   $fc                                         ; $6519: $fc
	rst  $38                                         ; $651a: $ff
	rst  $38                                         ; $651b: $ff
	dec  c                                           ; $651c: $0d
	nop                                              ; $651d: $00
	ld   a, [bc]                                     ; $651e: $0a
	ld   bc, $ffff                                   ; $651f: $01 $ff $ff
	inc  b                                           ; $6522: $04
	ld   e, $7c                                      ; $6523: $1e $7c
	inc  bc                                          ; $6525: $03
	add  d                                           ; $6526: $82
	ld   a, c                                        ; $6527: $79
	ld   l, l                                        ; $6528: $6d
	ld   a, h                                        ; $6529: $7c
	and  c                                           ; $652a: $a1
	ld   l, [hl]                                     ; $652b: $6e
	inc  b                                           ; $652c: $04
	ld   a, b                                        ; $652d: $78
	ld   e, d                                        ; $652e: $5a
	dec  c                                           ; $652f: $0d
	dec  b                                           ; $6530: $05
	dec  d                                           ; $6531: $15
	ld   e, c                                        ; $6532: $59
	ld   [hl], c                                     ; $6533: $71
	ld   l, l                                        ; $6534: $6d
	ld   e, c                                        ; $6535: $59
	sub  b                                           ; $6536: $90
	ld   h, l                                        ; $6537: $65
	sbc  d                                           ; $6538: $9a
	and  c                                           ; $6539: $a1
	ld   a, b                                        ; $653a: $78
	rst  $38                                         ; $653b: $ff
	rst  $38                                         ; $653c: $ff
	dec  c                                           ; $653d: $0d
	adc  h                                           ; $653e: $8c
	sbc  [hl]                                        ; $653f: $9e
	ld   e, b                                        ; $6540: $58
	inc  b                                           ; $6541: $04
	ld   a, e                                        ; $6542: $7b
	sbc  d                                           ; $6543: $9a
	ld   h, e                                        ; $6544: $63
	and  c                                           ; $6545: $a1
	ld   [hl], l                                     ; $6546: $75
	ld   h, l                                        ; $6547: $65
	ld   l, l                                        ; $6548: $6d
	sbc  a                                           ; $6549: $9f
	dec  c                                           ; $654a: $0d
	nop                                              ; $654b: $00
	ld   a, [bc]                                     ; $654c: $0a
	dec  c                                           ; $654d: $0d
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	rrca                                             ; $6550: $0f
	nop                                              ; $6551: $00
	ld   bc, $1e09                                   ; $6552: $01 $09 $1e
	nop                                              ; $6555: $00
	inc  e                                           ; $6556: $1c
	dec  b                                           ; $6557: $05
	ld   bc, $0101                                   ; $6558: $01 $01 $01
	ld   [$7d00], sp                                 ; $655b: $08 $00 $7d
	and  c                                           ; $655e: $a1
	sbc  [hl]                                        ; $655f: $9e
	ld   d, h                                        ; $6560: $54
	adc  h                                           ; $6561: $8c
	ld   d, d                                        ; $6562: $52
	sub  d                                           ; $6563: $92
	and  c                                           ; $6564: $a1
	sbc  a                                           ; $6565: $9f
	dec  c                                           ; $6566: $0d
	ld   [bc], a                                     ; $6567: $02
	jr   nz, @+$06                                   ; $6568: $20 $04

	ld   e, [hl]                                     ; $656a: $5e
	ld   [hl], l                                     ; $656b: $75
	call nc, $c4b8                                   ; $656c: $d4 $b8 $c4
	halt                                             ; $656f: $76
	ld   [bc], a                                     ; $6570: $02
	add  e                                           ; $6571: $83
	adc  a                                           ; $6572: $8f
	sbc  c                                           ; $6573: $99
	sub  d                                           ; $6574: $92
	ld   a, b                                        ; $6575: $78
	and  c                                           ; $6576: $a1
	ld   [hl], h                                     ; $6577: $74
	dec  c                                           ; $6578: $0d
	cp   d                                           ; $6579: $ba
	or   l                                           ; $657a: $b5
	and  l                                           ; $657b: $a5
	ld   [hl], l                                     ; $657c: $75
	sbc  a                                           ; $657d: $9f
	dec  c                                           ; $657e: $0d
	nop                                              ; $657f: $00
	ld   a, [bc]                                     ; $6580: $0a
	dec  e                                           ; $6581: $1d
	ld   b, b                                        ; $6582: $40
	dec  d                                           ; $6583: $15
	inc  bc                                          ; $6584: $03
	dec  d                                           ; $6585: $15
	ld   bc, $2803                                   ; $6586: $01 $03 $28
	nop                                              ; $6589: $00
	ld   bc, $5858                                   ; $658a: $01 $58 $58
	ld   e, e                                        ; $658d: $5b
	ld   a, c                                        ; $658e: $79
	sbc  [hl]                                        ; $658f: $9e
	inc  bc                                          ; $6590: $03
	ld   e, e                                        ; $6591: $5b
	ld   e, c                                        ; $6592: $59
	ld   [hl], c                                     ; $6593: $71
	ld   l, l                                        ; $6594: $6d
	sbc  l                                           ; $6595: $9d
	sbc  a                                           ; $6596: $9f
	dec  c                                           ; $6597: $0d
	adc  c                                           ; $6598: $89
	and  c                                           ; $6599: $a1
	adc  h                                           ; $659a: $8c
	sbc  [hl]                                        ; $659b: $9e
	ld   e, b                                        ; $659c: $58
	ld   e, b                                        ; $659d: $58
	ld   e, e                                        ; $659e: $5b
	ld   a, c                                        ; $659f: $79

Call_068_65a0:
	ld   a, b                                        ; $65a0: $78
	sbc  a                                           ; $65a1: $9f
	dec  c                                           ; $65a2: $0d
	nop                                              ; $65a3: $00
	ld   a, [bc]                                     ; $65a4: $0a
	dec  b                                           ; $65a5: $05
	add  b                                           ; $65a6: $80
	cpl                                              ; $65a7: $2f
	ld   bc, $0001                                   ; $65a8: $01 $01 $00
	ld   bc, $7889                                   ; $65ab: $01 $89 $78
	sbc  [hl]                                        ; $65ae: $9e
	ld   e, b                                        ; $65af: $58
	inc  b                                           ; $65b0: $04
	ld   a, e                                        ; $65b1: $7b
	sbc  d                                           ; $65b2: $9a
	ld   h, e                                        ; $65b3: $63
	and  c                                           ; $65b4: $a1
	ld   [hl], l                                     ; $65b5: $75
	ld   h, l                                        ; $65b6: $65
	ld   l, l                                        ; $65b7: $6d
	sbc  a                                           ; $65b8: $9f
	dec  c                                           ; $65b9: $0d
	nop                                              ; $65ba: $00
	ld   a, [bc]                                     ; $65bb: $0a
	dec  c                                           ; $65bc: $0d
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	rrca                                             ; $65bf: $0f
	nop                                              ; $65c0: $00
	ld   bc, $1e09                                   ; $65c1: $01 $09 $1e
	nop                                              ; $65c4: $00
	nop                                              ; $65c5: $00
	inc  bc                                          ; $65c6: $03
	ld   c, a                                        ; $65c7: $4f
	ld   [bc], a                                     ; $65c8: $02
	nop                                              ; $65c9: $00
	inc  bc                                          ; $65ca: $03
	ld   c, c                                        ; $65cb: $49
	add  hl, hl                                      ; $65cc: $29
	add  hl, hl                                      ; $65cd: $29
	ld   bc, $2201                                   ; $65ce: $01 $01 $22
	nop                                              ; $65d1: $00
	rrca                                             ; $65d2: $0f
	nop                                              ; $65d3: $00
	ld   bc, $020d                                   ; $65d4: $01 $0d $02
	nop                                              ; $65d7: $00
	ld   [bc], a                                     ; $65d8: $02
	ld   bc, $8d67                                   ; $65d9: $01 $67 $8d
	sbc  d                                           ; $65dc: $9a
	ld   h, e                                        ; $65dd: $63
	and  c                                           ; $65de: $a1
	sbc  a                                           ; $65df: $9f
	dec  c                                           ; $65e0: $0d
	ld   e, b                                        ; $65e1: $58
	inc  b                                           ; $65e2: $04
	ld   a, e                                        ; $65e3: $7b
	sbc  d                                           ; $65e4: $9a
	ld   h, e                                        ; $65e5: $63
	adc  h                                           ; $65e6: $8c
	ld   [hl], l                                     ; $65e7: $75
	ld   h, a                                        ; $65e8: $67
	sbc  a                                           ; $65e9: $9f
	dec  c                                           ; $65ea: $0d
	nop                                              ; $65eb: $00
	ld   a, [bc]                                     ; $65ec: $0a
	inc  e                                           ; $65ed: $1c
	ld   [bc], a                                     ; $65ee: $02
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	ld   bc, $9750                                   ; $65f1: $01 $50 $97
	sbc  [hl]                                        ; $65f4: $9e
	ld   [$6300], sp                                 ; $65f5: $08 $00 $63
	and  c                                           ; $65f8: $a1
	sbc  a                                           ; $65f9: $9f
	dec  c                                           ; $65fa: $0d
	sub  b                                           ; $65fb: $90
	ld   d, h                                        ; $65fc: $54
	ld   l, e                                        ; $65fd: $6b
	sbc  e                                           ; $65fe: $9b
	ld   l, e                                        ; $65ff: $6b
	sbc  e                                           ; $6600: $9b
	sbc  [hl]                                        ; $6601: $9e
	inc  b                                           ; $6602: $04
	dec  c                                           ; $6603: $0d
	ld   [bc], a                                     ; $6604: $02
	sub  [hl]                                        ; $6605: $96
	inc  b                                           ; $6606: $04
	ld   b, l                                        ; $6607: $45
	inc  b                                           ; $6608: $04
	ld   a, [bc]                                     ; $6609: $0a
	sub  b                                           ; $660a: $90
	dec  c                                           ; $660b: $0d
	ld   e, b                                        ; $660c: $58
	ld   h, l                                        ; $660d: $65
	adc  h                                           ; $660e: $8c
	ld   d, d                                        ; $660f: $52
	ld   [hl], l                                     ; $6610: $75
	ld   h, a                                        ; $6611: $67
	sbc  l                                           ; $6612: $9d
	ld   a, e                                        ; $6613: $7b
	sbc  a                                           ; $6614: $9f
	dec  c                                           ; $6615: $0d
	nop                                              ; $6616: $00
	ld   a, [bc]                                     ; $6617: $0a
	ld   bc, $ffff                                   ; $6618: $01 $ff $ff
	ld   l, e                                        ; $661b: $6b
	ld   d, h                                        ; $661c: $54
	ld   [hl], l                                     ; $661d: $75
	ld   h, a                                        ; $661e: $67
	sbc  l                                           ; $661f: $9d
	sbc  a                                           ; $6620: $9f
	dec  c                                           ; $6621: $0d

jr_068_6622:
	ld   [$6300], sp                                 ; $6622: $08 $00 $63
	and  c                                           ; $6625: $a1
	ld   a, h                                        ; $6626: $7c
	ld   [bc], a                                     ; $6627: $02
	jr   nz, jr_068_6622                             ; $6628: $20 $f8

	ld   [bc], a                                     ; $662a: $02
	sbc  e                                           ; $662b: $9b
	ld   a, h                                        ; $662c: $7c
	dec  c                                           ; $662d: $0d
	inc  bc                                          ; $662e: $03
	ld   [de], a                                     ; $662f: $12
	ld   [bc], a                                     ; $6630: $02
	ld   h, e                                        ; $6631: $63
	and  b                                           ; $6632: $a0
	ld   [bc], a                                     ; $6633: $02
	sub  l                                           ; $6634: $95
	ld   l, c                                        ; $6635: $69
	ld   [hl], h                                     ; $6636: $74
	sub  b                                           ; $6637: $90
	sub  a                                           ; $6638: $97
	ld   e, b                                        ; $6639: $58
	ld   d, h                                        ; $663a: $54
	ld   e, c                                        ; $663b: $59
	ld   h, l                                        ; $663c: $65
	sub  a                                           ; $663d: $97

jr_068_663e:
	sbc  a                                           ; $663e: $9f
	dec  c                                           ; $663f: $0d
	nop                                              ; $6640: $00
	ld   a, [bc]                                     ; $6641: $0a
	dec  c                                           ; $6642: $0d
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	rrca                                             ; $6645: $0f
	nop                                              ; $6646: $00
	ld   bc, $021a                                   ; $6647: $01 $1a $02
	rlca                                             ; $664a: $07
	add  h                                           ; $664b: $84
	nop                                              ; $664c: $00
	ld   [bc], a                                     ; $664d: $02
	inc  b                                           ; $664e: $04
	ld   bc, $2002                                   ; $664f: $01 $02 $20
	nop                                              ; $6652: $00
	ld   b, $fa                                      ; $6653: $06 $fa
	nop                                              ; $6655: $00
	inc  e                                           ; $6656: $1c
	ld   [bc], a                                     ; $6657: $02
	ld   bc, $1d01                                   ; $6658: $01 $01 $1d
	ld   b, b                                        ; $665b: $40
	ld   [de], a                                     ; $665c: $12
	inc  bc                                          ; $665d: $03
	ld   [de], a                                     ; $665e: $12
	ld   bc, $2803                                   ; $665f: $01 $03 $28
	nop                                              ; $6662: $00
	ld   bc, $6763                                   ; $6663: $01 $63 $67
	ld   e, d                                        ; $6666: $5a
	ld   [hl], l                                     ; $6667: $75
	ld   h, a                                        ; $6668: $67
	sbc  l                                           ; $6669: $9d
	ld   a, e                                        ; $666a: $7b
	sbc  a                                           ; $666b: $9f
	dec  c                                           ; $666c: $0d
	ld   [$6300], sp                                 ; $666d: $08 $00 $63
	and  c                                           ; $6670: $a1
	sbc  a                                           ; $6671: $9f
	dec  c                                           ; $6672: $0d
	nop                                              ; $6673: $00
	ld   a, [bc]                                     ; $6674: $0a
	ld   bc, $9502                                   ; $6675: $01 $02 $95
	inc  bc                                          ; $6678: $03
	jp   c, $8c65                                    ; $6679: $da $65 $8c

	ld   h, l                                        ; $667c: $65
	ld   l, l                                        ; $667d: $6d
	sbc  a                                           ; $667e: $9f
	dec  c                                           ; $667f: $0d
	ld   [bc], a                                     ; $6680: $02
	ld   h, $03                                      ; $6681: $26 $03
	ld   [hl], l                                     ; $6683: $75
	ld   h, l                                        ; $6684: $65
	ld   [hl], h                                     ; $6685: $74
	ld   [$6300], sp                                 ; $6686: $08 $00 $63
	and  c                                           ; $6689: $a1
	and  b                                           ; $668a: $a0
	dec  c                                           ; $668b: $0d
	inc  bc                                          ; $668c: $03
	sbc  a                                           ; $668d: $9f
	sbc  b                                           ; $668e: $98
	inc  bc                                          ; $668f: $03
	add  b                                           ; $6690: $80
	ld   l, c                                        ; $6691: $69
	adc  h                                           ; $6692: $8c
	ld   h, a                                        ; $6693: $67
	sbc  l                                           ; $6694: $9d
	sbc  a                                           ; $6695: $9f
	dec  c                                           ; $6696: $0d
	nop                                              ; $6697: $00
	ld   a, [bc]                                     ; $6698: $0a
	ld   bc, $7d75                                   ; $6699: $01 $75 $7d
	sbc  [hl]                                        ; $669c: $9e
	ld   [$6300], sp                                 ; $669d: $08 $00 $63
	and  c                                           ; $66a0: $a1
	sbc  a                                           ; $66a1: $9f
	dec  c                                           ; $66a2: $0d
	inc  bc                                          ; $66a3: $03
	jr   z, jr_068_663e                              ; $66a4: $28 $98

	inc  bc                                          ; $66a6: $03
	ld   l, h                                        ; $66a7: $6c
	ld   a, b                                        ; $66a8: $78
	ld   d, d                                        ; $66a9: $52
	inc  b                                           ; $66aa: $04
	ld   [$9202], sp                                 ; $66ab: $08 $02 $92
	ld   [hl], l                                     ; $66ae: $75
	ld   a, h                                        ; $66af: $7c
	inc  bc                                          ; $66b0: $03
	ld   d, d                                        ; $66b1: $52
	ld   [bc], a                                     ; $66b2: $02
	or   a                                           ; $66b3: $b7
	sbc  a                                           ; $66b4: $9f
	dec  c                                           ; $66b5: $0d
	ld   e, l                                        ; $66b6: $5d
	ld   d, d                                        ; $66b7: $52
	ld   a, h                                        ; $66b8: $7c
	ld   a, b                                        ; $66b9: $78
	ld   d, d                                        ; $66ba: $52
	sub  [hl]                                        ; $66bb: $96

jr_068_66bc:
	ld   d, h                                        ; $66bc: $54
	ld   a, c                                        ; $66bd: $79
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	dec  c                                           ; $66c0: $0d
	nop                                              ; $66c1: $00
	ld   a, [bc]                                     ; $66c2: $0a
	dec  c                                           ; $66c3: $0d
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	rrca                                             ; $66c6: $0f
	nop                                              ; $66c7: $00
	ld   bc, $1e09                                   ; $66c8: $01 $09 $1e
	nop                                              ; $66cb: $00
	inc  e                                           ; $66cc: $1c
	ld   [bc], a                                     ; $66cd: $02
	jr   nc, jr_068_66e9                             ; $66ce: $30 $19

	ld   bc, $6d9d                                   ; $66d0: $01 $9d $6d
	ld   e, l                                        ; $66d3: $5d
	ld   h, l                                        ; $66d4: $65
	ld   a, h                                        ; $66d5: $7c
	inc  bc                                          ; $66d6: $03
	ld   c, [hl]                                     ; $66d7: $4e
	ld   l, a                                        ; $66d8: $6f
	ld   [hl], l                                     ; $66d9: $75
	ld   h, a                                        ; $66da: $67
	sbc  l                                           ; $66db: $9d
	ld   a, e                                        ; $66dc: $7b
	sbc  a                                           ; $66dd: $9f
	dec  c                                           ; $66de: $0d
	ld   [hl], l                                     ; $66df: $75
	sub  b                                           ; $66e0: $90
	sbc  [hl]                                        ; $66e1: $9e
	ld   [bc], a                                     ; $66e2: $02
	and  c                                           ; $66e3: $a1
	ld   a, c                                        ; $66e4: $79
	ld   a, b                                        ; $66e5: $78
	ld   h, e                                        ; $66e6: $63
	sub  a                                           ; $66e7: $97
	ld   a, b                                        ; $66e8: $78

jr_068_66e9:
	ld   e, l                                        ; $66e9: $5d
	ld   [hl], h                                     ; $66ea: $74
	dec  c                                           ; $66eb: $0d
	ld   e, a                                        ; $66ec: $5f
	ld   [hl], c                                     ; $66ed: $71
	ld   h, c                                        ; $66ee: $61
	ld   d, h                                        ; $66ef: $54
	ld   [hl], l                                     ; $66f0: $75
	ld   h, a                                        ; $66f1: $67
	sbc  l                                           ; $66f2: $9d
	sub  [hl]                                        ; $66f3: $96
	sbc  a                                           ; $66f4: $9f
	dec  c                                           ; $66f5: $0d
	nop                                              ; $66f6: $00
	ld   a, [bc]                                     ; $66f7: $0a
	inc  e                                           ; $66f8: $1c
	ld   [bc], a                                     ; $66f9: $02
	ld   bc, $0101                                   ; $66fa: $01 $01 $01
	sbc  l                                           ; $66fd: $9d
	ld   l, l                                        ; $66fe: $6d
	ld   e, l                                        ; $66ff: $5d
	ld   h, l                                        ; $6700: $65
	ld   e, d                                        ; $6701: $5a
	ld   [bc], a                                     ; $6702: $02
	call nc, Call_068_7159                           ; $6703: $d4 $59 $71
	ld   l, l                                        ; $6706: $6d
	sbc  a                                           ; $6707: $9f
	dec  c                                           ; $6708: $0d
	ld   l, l                                        ; $6709: $6d
	ld   l, [hl]                                     ; $670a: $6e
	ld   l, e                                        ; $670b: $6b
	sbc  d                                           ; $670c: $9a
	ld   l, [hl]                                     ; $670d: $6e
	ld   e, a                                        ; $670e: $5f
	ld   [hl], l                                     ; $670f: $75
	ld   h, a                                        ; $6710: $67
	ld   e, c                                        ; $6711: $59
	sub  a                                           ; $6712: $97
	sbc  a                                           ; $6713: $9f
	dec  c                                           ; $6714: $0d
	nop                                              ; $6715: $00
	ld   a, [bc]                                     ; $6716: $0a
	ld   bc, $7d75                                   ; $6717: $01 $75 $7d
	sbc  [hl]                                        ; $671a: $9e
	ld   [$6300], sp                                 ; $671b: $08 $00 $63
	and  c                                           ; $671e: $a1
	sbc  a                                           ; $671f: $9f
	dec  c                                           ; $6720: $0d
	inc  bc                                          ; $6721: $03
	jr   z, jr_068_66bc                              ; $6722: $28 $98

	inc  bc                                          ; $6724: $03
	ld   l, h                                        ; $6725: $6c
	ld   a, b                                        ; $6726: $78
	ld   d, d                                        ; $6727: $52
	inc  b                                           ; $6728: $04
	ld   [$9202], sp                                 ; $6729: $08 $02 $92
	ld   [hl], l                                     ; $672c: $75
	ld   a, h                                        ; $672d: $7c
	inc  bc                                          ; $672e: $03
	ld   d, d                                        ; $672f: $52
	ld   [bc], a                                     ; $6730: $02
	or   a                                           ; $6731: $b7
	sbc  a                                           ; $6732: $9f
	dec  c                                           ; $6733: $0d
	ld   e, l                                        ; $6734: $5d
	ld   d, d                                        ; $6735: $52
	ld   a, h                                        ; $6736: $7c
	ld   a, b                                        ; $6737: $78
	ld   d, d                                        ; $6738: $52
	sub  [hl]                                        ; $6739: $96
	ld   d, h                                        ; $673a: $54
	ld   a, c                                        ; $673b: $79
	rst  $38                                         ; $673c: $ff
	rst  $38                                         ; $673d: $ff
	dec  c                                           ; $673e: $0d
	nop                                              ; $673f: $00
	ld   a, [bc]                                     ; $6740: $0a
	dec  c                                           ; $6741: $0d
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	rrca                                             ; $6744: $0f
	nop                                              ; $6745: $00
	ld   bc, $1e09                                   ; $6746: $01 $09 $1e
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	ld   c, $2d                                      ; $674b: $0e $2d
	rrca                                             ; $674d: $0f
	nop                                              ; $674e: $00
	ld   bc, $0102                                   ; $674f: $01 $02 $01
	ld   h, e                                        ; $6752: $63
	ld   e, l                                        ; $6753: $5d
	sub  a                                           ; $6754: $97
	ld   h, e                                        ; $6755: $63
	and  c                                           ; $6756: $a1
	sbc  a                                           ; $6757: $9f
	dec  c                                           ; $6758: $0d
	inc  b                                           ; $6759: $04
	ld   c, c                                        ; $675a: $49
	and  b                                           ; $675b: $a0
	ld   h, l                                        ; $675c: $65
	ld   [hl], h                                     ; $675d: $74
	sbc  c                                           ; $675e: $99
	and  c                                           ; $675f: $a1
	ld   [hl], l                                     ; $6760: $75
	ld   h, a                                        ; $6761: $67
	ld   e, c                                        ; $6762: $59
	ld   sp, hl                                      ; $6763: $f9
	dec  c                                           ; $6764: $0d
	nop                                              ; $6765: $00
	ld   a, [bc]                                     ; $6766: $0a
	rrca                                             ; $6767: $0f
	ld   bc, $0d08                                   ; $6768: $01 $08 $0d
	ld   bc, $0120                                   ; $676b: $01 $20 $01
	ld   d, b                                        ; $676e: $50
	sub  a                                           ; $676f: $97
	sbc  [hl]                                        ; $6770: $9e
	ld   [$6300], sp                                 ; $6771: $08 $00 $63
	and  c                                           ; $6774: $a1

Jump_068_6775:
	sbc  a                                           ; $6775: $9f
	dec  c                                           ; $6776: $0d
	nop                                              ; $6777: $00
	ld   a, [bc]                                     ; $6778: $0a
	rrca                                             ; $6779: $0f
	ld   bc, $0d0d                                   ; $677a: $01 $0d $0d
	ld   bc, $0125                                   ; $677d: $01 $25 $01
	ld   [bc], a                                     ; $6780: $02
	dec  bc                                          ; $6781: $0b
	inc  bc                                          ; $6782: $03
	ld   c, a                                        ; $6783: $4f
	inc  b                                           ; $6784: $04
	rlca                                             ; $6785: $07
	ld   l, l                                        ; $6786: $6d
	ld   [bc], a                                     ; $6787: $02
	ld   de, $4c03                                   ; $6788: $11 $03 $4c
	ld   a, b                                        ; $678b: $78
	and  c                                           ; $678c: $a1
	ld   [hl], l                                     ; $678d: $75
	ld   h, a                                        ; $678e: $67
	ld   e, a                                        ; $678f: $5f
	ld   [hl], a                                     ; $6790: $77
	rst  $38                                         ; $6791: $ff
	rst  $38                                         ; $6792: $ff
	dec  c                                           ; $6793: $0d
	ld   [hl], a                                     ; $6794: $77
	ld   d, h                                        ; $6795: $54
	ld   [hl], l                                     ; $6796: $75
	ld   h, a                                        ; $6797: $67
	ld   e, c                                        ; $6798: $59
	ld   sp, hl                                      ; $6799: $f9
	dec  c                                           ; $679a: $0d
	nop                                              ; $679b: $00
	ld   a, [bc]                                     ; $679c: $0a
	add  hl, de                                      ; $679d: $19
	dec  b                                           ; $679e: $05
	ld   [bc], a                                     ; $679f: $02
	inc  b                                           ; $67a0: $04
	ld   c, l                                        ; $67a1: $4d
	ld   [bc], a                                     ; $67a2: $02
	ld   a, e                                        ; $67a3: $7b
	ld   [hl], c                                     ; $67a4: $71
	ld   [hl], h                                     ; $67a5: $74
	adc  h                                           ; $67a6: $8c
	ld   h, a                                        ; $67a7: $67
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	inc  bc                                          ; $67aa: $03
	ld   l, h                                        ; $67ab: $6c
	ld   h, l                                        ; $67ac: $65
	inc  b                                           ; $67ad: $04
	adc  h                                           ; $67ae: $8c
	ld   [hl], l                                     ; $67af: $75
	ld   h, a                                        ; $67b0: $67
	ld   a, e                                        ; $67b1: $7b
	nop                                              ; $67b2: $00
	ld   bc, $7e07                                   ; $67b3: $01 $07 $7e
	nop                                              ; $67b6: $00
	ld   [bc], a                                     ; $67b7: $02
	inc  bc                                          ; $67b8: $03
	ld   bc, $2000                                   ; $67b9: $01 $00 $20
	nop                                              ; $67bc: $00
	rlca                                             ; $67bd: $07
	ldh  [rP1], a                                    ; $67be: $e0 $00
	ld   [bc], a                                     ; $67c0: $02
	inc  bc                                          ; $67c1: $03
	ld   bc, $2001                                   ; $67c2: $01 $01 $20
	nop                                              ; $67c5: $00
	ld   b, $53                                      ; $67c6: $06 $53
	ld   bc, $000f                                   ; $67c8: $01 $0f $00
	ld   bc, $0401                                   ; $67cb: $01 $01 $04
	ld   c, l                                        ; $67ce: $4d
	ld   [bc], a                                     ; $67cf: $02
	ld   a, e                                        ; $67d0: $7b
	ld   [hl], c                                     ; $67d1: $71
	ld   [hl], h                                     ; $67d2: $74
	adc  h                                           ; $67d3: $8c
	ld   h, a                                        ; $67d4: $67
	sbc  a                                           ; $67d5: $9f
	dec  c                                           ; $67d6: $0d
	nop                                              ; $67d7: $00
	ld   a, [bc]                                     ; $67d8: $0a
	rrca                                             ; $67d9: $0f
	ld   bc, $0d09                                   ; $67da: $01 $09 $0d
	ld   bc, $1d21                                   ; $67dd: $01 $21 $1d
	ld   b, b                                        ; $67e0: $40
	ld   de, $1103                                   ; $67e1: $11 $03 $11
	ld   bc, $2802                                   ; $67e4: $01 $02 $28
	nop                                              ; $67e7: $00
	ld   bc, $d105                                   ; $67e8: $01 $05 $d1
	ld   d, d                                        ; $67eb: $52
	inc  bc                                          ; $67ec: $03
	add  b                                           ; $67ed: $80
	ld   a, h                                        ; $67ee: $7c
	ld   [bc], a                                     ; $67ef: $02
	ld   de, $4c03                                   ; $67f0: $11 $03 $4c
	ld   a, b                                        ; $67f3: $78
	ld   a, h                                        ; $67f4: $7c
	ld   [hl], l                                     ; $67f5: $75
	sbc  [hl]                                        ; $67f6: $9e
	dec  c                                           ; $67f7: $0d
	ld   l, e                                        ; $67f8: $6b
	ld   d, h                                        ; $67f9: $54
	ld   d, d                                        ; $67fa: $52
	ld   [hl], c                                     ; $67fb: $71
	ld   [hl], h                                     ; $67fc: $74
	sub  b                                           ; $67fd: $90
	sub  a                                           ; $67fe: $97
	ld   d, [hl]                                     ; $67ff: $56
	sbc  c                                           ; $6800: $99
	halt                                             ; $6801: $76
	dec  c                                           ; $6802: $0d
	ld   d, h                                        ; $6803: $54
	sbc  d                                           ; $6804: $9a
	ld   h, l                                        ; $6805: $65
	ld   d, d                                        ; $6806: $52
	ld   [hl], l                                     ; $6807: $75
	ld   h, a                                        ; $6808: $67
	sbc  a                                           ; $6809: $9f
	dec  c                                           ; $680a: $0d
	nop                                              ; $680b: $00
	ld   a, [bc]                                     ; $680c: $0a
	ld   bc, $1e04                                   ; $680d: $01 $04 $1e
	ld   a, h                                        ; $6810: $7c
	inc  bc                                          ; $6811: $03
	add  d                                           ; $6812: $82
	ld   a, c                                        ; $6813: $79
	sub  b                                           ; $6814: $90
	ld   [bc], a                                     ; $6815: $02
	sub  l                                           ; $6816: $95
	ld   [hl], h                                     ; $6817: $74
	sub  b                                           ; $6818: $90
	sub  a                                           ; $6819: $97
	ld   e, b                                        ; $681a: $58
	ld   d, h                                        ; $681b: $54
	ld   [hl], c                                     ; $681c: $71
	halt                                             ; $681d: $76
	sbc  a                                           ; $681e: $9f
	dec  c                                           ; $681f: $0d
	nop                                              ; $6820: $00
	ld   a, [bc]                                     ; $6821: $0a
	dec  c                                           ; $6822: $0d
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	rrca                                             ; $6825: $0f
	nop                                              ; $6826: $00
	ld   bc, $1e09                                   ; $6827: $01 $09 $1e
	nop                                              ; $682a: $00
	rrca                                             ; $682b: $0f
	nop                                              ; $682c: $00
	ld   bc, $0301                                   ; $682d: $01 $01 $03
	ld   l, h                                        ; $6830: $6c
	ld   h, l                                        ; $6831: $65
	inc  b                                           ; $6832: $04
	adc  h                                           ; $6833: $8c
	ld   [hl], l                                     ; $6834: $75
	ld   h, a                                        ; $6835: $67
	ld   a, e                                        ; $6836: $7b
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	dec  c                                           ; $6839: $0d
	nop                                              ; $683a: $00
	ld   a, [bc]                                     ; $683b: $0a
	rrca                                             ; $683c: $0f
	ld   bc, $0d0c                                   ; $683d: $01 $0c $0d
	ld   bc, $1d24                                   ; $6840: $01 $24 $1d
	ld   b, b                                        ; $6843: $40
	ld   de, $1103                                   ; $6844: $11 $03 $11
	ld   bc, $2902                                   ; $6847: $01 $02 $29
	nop                                              ; $684a: $00
	ld   bc, $546b                                   ; $684b: $01 $6b $54
	ld   [hl], l                                     ; $684e: $75
	ld   h, a                                        ; $684f: $67
	ld   e, c                                        ; $6850: $59
	rst  $38                                         ; $6851: $ff
	rst  $38                                         ; $6852: $ff
	ld   sp, hl                                      ; $6853: $f9
	dec  c                                           ; $6854: $0d
	ld   e, a                                        ; $6855: $5f
	ld   [hl], c                                     ; $6856: $71
	ld   h, c                                        ; $6857: $61
	ld   d, h                                        ; $6858: $54
	ld   [bc], a                                     ; $6859: $02
	and  c                                           ; $685a: $a1
	ld   a, c                                        ; $685b: $79
	inc  b                                           ; $685c: $04
	ld   b, l                                        ; $685d: $45
	ld   [hl], c                                     ; $685e: $71
	ld   [hl], h                                     ; $685f: $74
	sbc  c                                           ; $6860: $99
	and  c                                           ; $6861: $a1
	ld   [hl], l                                     ; $6862: $75
	ld   h, a                                        ; $6863: $67
	dec  c                                           ; $6864: $0d
	ld   e, a                                        ; $6865: $5f
	ld   [hl], a                                     ; $6866: $77
	rst  $38                                         ; $6867: $ff
	rst  $38                                         ; $6868: $ff
	dec  c                                           ; $6869: $0d
	nop                                              ; $686a: $00
	ld   a, [bc]                                     ; $686b: $0a
	rrca                                             ; $686c: $0f
	ld   bc, $0d0a                                   ; $686d: $01 $0a $0d
	ld   bc, $0122                                   ; $6870: $01 $22 $01
	inc  b                                           ; $6873: $04
	ld   e, $7c                                      ; $6874: $1e $7c
	inc  bc                                          ; $6876: $03
	add  d                                           ; $6877: $82
	ld   a, h                                        ; $6878: $7c
	ld   [bc], a                                     ; $6879: $02
	ld   b, $02                                      ; $687a: $06 $02
	sub  l                                           ; $687c: $95
	sub  b                                           ; $687d: $90
	ld   [bc], a                                     ; $687e: $02
	jp   nz, Jump_068_7452                           ; $687f: $c2 $52 $74

	adc  l                                           ; $6882: $8d
	adc  h                                           ; $6883: $8c
	ld   h, a                                        ; $6884: $67
	sbc  a                                           ; $6885: $9f
	dec  c                                           ; $6886: $0d
	nop                                              ; $6887: $00
	ld   a, [bc]                                     ; $6888: $0a
	dec  b                                           ; $6889: $05
	ld   b, b                                        ; $688a: $40
	ld   c, b                                        ; $688b: $48
	ld   [bc], a                                     ; $688c: $02
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	dec  b                                           ; $688f: $05
	ld   b, b                                        ; $6890: $40
	ld   c, [hl]                                     ; $6891: $4e
	ld   bc, $0001                                   ; $6892: $01 $01 $00
	dec  c                                           ; $6895: $0d
	nop                                              ; $6896: $00
	nop                                              ; $6897: $00
	rrca                                             ; $6898: $0f
	nop                                              ; $6899: $00
	ld   bc, $1e09                                   ; $689a: $01 $09 $1e
	nop                                              ; $689d: $00
	rlca                                             ; $689e: $07
	xor  l                                           ; $689f: $ad
	ld   bc, $1103                                   ; $68a0: $01 $03 $11
	ld   bc, $22b4                                   ; $68a3: $01 $b4 $22
	nop                                              ; $68a6: $00
	rrca                                             ; $68a7: $0f
	ld   bc, $0d0d                                   ; $68a8: $01 $0d $0d
	ld   bc, $1d25                                   ; $68ab: $01 $25 $1d
	ld   b, b                                        ; $68ae: $40
	ld   de, $1103                                   ; $68af: $11 $03 $11
	ld   bc, $2801                                   ; $68b2: $01 $01 $28
	nop                                              ; $68b5: $00
	ld   bc, $6e92                                   ; $68b6: $01 $92 $6e
	rst  $38                                         ; $68b9: $ff
	rst  $38                                         ; $68ba: $ff
	dec  c                                           ; $68bb: $0d
	ld   l, e                                        ; $68bc: $6b
	and  c                                           ; $68bd: $a1
	ld   a, b                                        ; $68be: $78
	ld   a, c                                        ; $68bf: $79
	ld   [bc], a                                     ; $68c0: $02
	sub  l                                           ; $68c1: $95
	ld   [hl], d                                     ; $68c2: $72
	adc  a                                           ; $68c3: $8f
	ld   a, b                                        ; $68c4: $78
	ld   d, d                                        ; $68c5: $52
	ld   [hl], l                                     ; $68c6: $75
	ld   [bc], a                                     ; $68c7: $02
	inc  [hl]                                        ; $68c8: $34
	ld   h, e                                        ; $68c9: $63
	ld   d, d                                        ; $68ca: $52
	sbc  a                                           ; $68cb: $9f
	dec  c                                           ; $68cc: $0d
	nop                                              ; $68cd: $00
	ld   a, [bc]                                     ; $68ce: $0a
	ld   bc, $9e6b                                   ; $68cf: $01 $6b $9e
	ld   l, e                                        ; $68d2: $6b
	ld   d, h                                        ; $68d3: $54
	ld   l, [hl]                                     ; $68d4: $6e
	rst  $38                                         ; $68d5: $ff
	rst  $38                                         ; $68d6: $ff
	dec  c                                           ; $68d7: $0d
	rst  JumpTable                                         ; $68d8: $df
	db   $ec                                         ; $68d9: $ec
	and  e                                           ; $68da: $a3
	ld   h, e                                        ; $68db: $63
	and  c                                           ; $68dc: $a1
	ld   a, c                                        ; $68dd: $79
	sub  b                                           ; $68de: $90
	dec  c                                           ; $68df: $0d
	ld   [bc], a                                     ; $68e0: $02
	sub  l                                           ; $68e1: $95
	ld   [hl], h                                     ; $68e2: $74
	sub  b                                           ; $68e3: $90
	sub  a                                           ; $68e4: $97
	sbc  l                                           ; $68e5: $9d
	ld   a, b                                        ; $68e6: $78
	ld   e, l                                        ; $68e7: $5d
	ld   l, a                                        ; $68e8: $6f
	sub  c                                           ; $68e9: $91
	rst  $38                                         ; $68ea: $ff
	rst  $38                                         ; $68eb: $ff
	dec  c                                           ; $68ec: $0d
	nop                                              ; $68ed: $00
	ld   a, [bc]                                     ; $68ee: $0a
	dec  c                                           ; $68ef: $0d
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
	rrca                                             ; $68f2: $0f
	nop                                              ; $68f3: $00
	ld   bc, $1e09                                   ; $68f4: $01 $09 $1e
	nop                                              ; $68f7: $00
	rrca                                             ; $68f8: $0f
	ld   bc, $0d0c                                   ; $68f9: $01 $0c $0d
	ld   bc, $0124                                   ; $68fc: $01 $24 $01
	ld   l, e                                        ; $68ff: $6b
	and  c                                           ; $6900: $a1
	ld   a, b                                        ; $6901: $78
	adc  [hl]                                        ; $6902: $8e
	ld   l, b                                        ; $6903: $68
	ld   e, c                                        ; $6904: $59
	ld   h, l                                        ; $6905: $65
	ld   d, d                                        ; $6906: $52
	inc  bc                                          ; $6907: $03
	dec  d                                           ; $6908: $15
	inc  b                                           ; $6909: $04
	cp   a                                           ; $690a: $bf
	dec  c                                           ; $690b: $0d
	ld   [hl], l                                     ; $690c: $75
	ld   h, l                                        ; $690d: $65
	ld   l, l                                        ; $690e: $6d
	ld   e, c                                        ; $690f: $59
	ld   sp, hl                                      ; $6910: $f9
	dec  c                                           ; $6911: $0d
	nop                                              ; $6912: $00
	ld   a, [bc]                                     ; $6913: $0a
	rrca                                             ; $6914: $0f
	ld   bc, $0d0a                                   ; $6915: $01 $0a $0d
	ld   bc, $1d22                                   ; $6918: $01 $22 $1d
	ld   b, b                                        ; $691b: $40
	ld   de, $1103                                   ; $691c: $11 $03 $11
	ld   bc, $2901                                   ; $691f: $01 $01 $29
	nop                                              ; $6922: $00
	ld   bc, $9778                                   ; $6923: $01 $78 $97
	ld   d, d                                        ; $6926: $52
	ld   d, d                                        ; $6927: $52
	ld   [hl], l                                     ; $6928: $75
	ld   h, a                                        ; $6929: $67
	rst  $38                                         ; $692a: $ff
	rst  $38                                         ; $692b: $ff
	dec  c                                           ; $692c: $0d
	nop                                              ; $692d: $00
	dec  b                                           ; $692e: $05
	ld   b, b                                        ; $692f: $40
	ld   c, b                                        ; $6930: $48
	ld   [bc], a                                     ; $6931: $02
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	ld   bc, $1e04                                   ; $6934: $01 $04 $1e
	ld   a, h                                        ; $6937: $7c
	inc  bc                                          ; $6938: $03
	add  d                                           ; $6939: $82
	ld   a, c                                        ; $693a: $79
	ld   [bc], a                                     ; $693b: $02
	jp   nz, $8c5b                                   ; $693c: $c2 $5b $8c

	ld   h, a                                        ; $693f: $67
	ld   e, c                                        ; $6940: $59
	sub  a                                           ; $6941: $97
	sbc  a                                           ; $6942: $9f
	dec  c                                           ; $6943: $0d
	nop                                              ; $6944: $00
	ld   a, [bc]                                     ; $6945: $0a
	dec  b                                           ; $6946: $05
	ld   b, b                                        ; $6947: $40
	ld   c, [hl]                                     ; $6948: $4e
	ld   bc, $0001                                   ; $6949: $01 $01 $00
	dec  c                                           ; $694c: $0d
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	rrca                                             ; $694f: $0f
	nop                                              ; $6950: $00
	ld   bc, $1e09                                   ; $6951: $01 $09 $1e
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	ld   [bc], a                                     ; $6956: $02
	ld   b, $01                                      ; $6957: $06 $01
	add  hl, bc                                      ; $6959: $09
	jr   nz, @+$05                                   ; $695a: $20 $03

	ld   d, l                                        ; $695c: $55
	ld   bc, $2502                                   ; $695d: $01 $02 $25
	inc  e                                           ; $6960: $1c
	nop                                              ; $6961: $00
	ld   c, $64                                      ; $6962: $0e $64
	inc  e                                           ; $6964: $1c
	add  hl, bc                                      ; $6965: $09
	ld   bc, $0201                                   ; $6966: $01 $01 $02
	ld   bc, $5092                                   ; $6969: $01 $92 $50
	sbc  [hl]                                        ; $696c: $9e
	ld   [$5d00], sp                                 ; $696d: $08 $00 $5d
	and  c                                           ; $6970: $a1
	sbc  a                                           ; $6971: $9f
	dec  c                                           ; $6972: $0d
	ld   l, e                                        ; $6973: $6b
	sbc  d                                           ; $6974: $9a
	ld   h, [hl]                                     ; $6975: $66
	sub  c                                           ; $6976: $91
	sbc  [hl]                                        ; $6977: $9e
	ld   h, e                                        ; $6978: $63
	ld   [hl], c                                     ; $6979: $71
	ld   l, e                                        ; $697a: $6b
	ld   e, l                                        ; $697b: $5d
	rst  ToBoot                                         ; $697c: $c7
	cp   d                                           ; $697d: $ba
	ret                                              ; $697e: $c9


	and  b                                           ; $697f: $a0
	dec  c                                           ; $6980: $0d
	dec  b                                           ; $6981: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6982: $cf
	adc  a                                           ; $6983: $8f
	sub  [hl]                                        ; $6984: $96
	ld   d, h                                        ; $6985: $54
	ld   e, c                                        ; $6986: $59
	sbc  a                                           ; $6987: $9f
	dec  c                                           ; $6988: $0d
	nop                                              ; $6989: $00
	ld   a, [bc]                                     ; $698a: $0a
	ld   bc, $3802                                   ; $698b: $01 $02 $38
	inc  b                                           ; $698e: $04
	ld   d, d                                        ; $698f: $52
	and  b                                           ; $6990: $a0
	ld   d, [hl]                                     ; $6991: $56
	sub  a                                           ; $6992: $97
	and  c                                           ; $6993: $a1
	ld   [hl], l                                     ; $6994: $75
	rst  $38                                         ; $6995: $ff
	dec  c                                           ; $6996: $0d
	nop                                              ; $6997: $00
	ld   a, [bc]                                     ; $6998: $0a
	inc  de                                          ; $6999: $13
	nop                                              ; $699a: $00
	ld   [de], a                                     ; $699b: $12
	nop                                              ; $699c: $00
	inc  d                                           ; $699d: $14
	ld   c, h                                        ; $699e: $4c
	nop                                              ; $699f: $00
	inc  de                                          ; $69a0: $13
	inc  c                                           ; $69a1: $0c
	ld   bc, $fbd4                                   ; $69a2: $01 $d4 $fb
	ld   a, [$d410]                                  ; $69a5: $fa $10 $d4
	ei                                               ; $69a8: $fb
	ld   a, [$d410]                                  ; $69a9: $fa $10 $d4
	ei                                               ; $69ac: $fb
	ld   a, [$000d]                                  ; $69ad: $fa $0d $00
	ld   a, [bc]                                     ; $69b0: $0a
	dec  c                                           ; $69b1: $0d
	add  hl, bc                                      ; $69b2: $09
	ld   [bc], a                                     ; $69b3: $02
	rrca                                             ; $69b4: $0f
	nop                                              ; $69b5: $00
	ld   bc, $5f01                                   ; $69b6: $01 $01 $5f
	ld   d, d                                        ; $69b9: $52
	adc  c                                           ; $69ba: $89
	ld   d, h                                        ; $69bb: $54
	ld   sp, hl                                      ; $69bc: $f9
	dec  c                                           ; $69bd: $0d
	nop                                              ; $69be: $00
	ld   a, [bc]                                     ; $69bf: $0a
	rrca                                             ; $69c0: $0f
	add  hl, bc                                      ; $69c1: $09
	ld   [bc], a                                     ; $69c2: $02
	ld   [de], a                                     ; $69c3: $12
	rst  $38                                         ; $69c4: $ff
	ld   bc, $0008                                   ; $69c5: $01 $08 $00
	ld   e, l                                        ; $69c8: $5d
	and  c                                           ; $69c9: $a1
	ld   a, [$000d]                                  ; $69ca: $fa $0d $00
	ld   a, [bc]                                     ; $69cd: $0a
	rrca                                             ; $69ce: $0f
	nop                                              ; $69cf: $00
	ld   bc, $0301                                   ; $69d0: $01 $01 $03
	add  b                                           ; $69d3: $80
	ld   [bc], a                                     ; $69d4: $02
	sub  c                                           ; $69d5: $91
	ld   [hl], l                                     ; $69d6: $75
	ld   h, a                                        ; $69d7: $67
	ld   e, c                                        ; $69d8: $59
	ld   sp, hl                                      ; $69d9: $f9
	dec  c                                           ; $69da: $0d
	nop                                              ; $69db: $00
	ld   a, [bc]                                     ; $69dc: $0a
	inc  e                                           ; $69dd: $1c
	add  hl, bc                                      ; $69de: $09
	ld   [bc], a                                     ; $69df: $02
	ld   [bc], a                                     ; $69e0: $02
	ld   bc, $546b                                   ; $69e1: $01 $6b $54
	ld   l, [hl]                                     ; $69e4: $6e
	sbc  a                                           ; $69e5: $9f
	dec  c                                           ; $69e6: $0d
	inc  bc                                          ; $69e7: $03
	ld   a, [hl+]                                    ; $69e8: $2a
	dec  b                                           ; $69e9: $05
	ld   bc, $4d03                                   ; $69ea: $01 $03 $4d
	ld   a, c                                        ; $69ed: $79
	dec  b                                           ; $69ee: $05
	jr   z, jr_068_6a4f                              ; $69ef: $28 $5e

	and  c                                           ; $69f1: $a1
	ld   l, [hl]                                     ; $69f2: $6e
	ld   a, [$000d]                                  ; $69f3: $fa $0d $00
	ld   a, [bc]                                     ; $69f6: $0a
	dec  c                                           ; $69f7: $0d
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	rrca                                             ; $69fa: $0f
	nop                                              ; $69fb: $00
	ld   bc, $9e06                                   ; $69fc: $01 $06 $9e
	nop                                              ; $69ff: $00
	inc  hl                                          ; $6a00: $23
	ld   h, e                                        ; $6a01: $63
	inc  e                                           ; $6a02: $1c
	ld   a, [bc]                                     ; $6a03: $0a
	ld   [hl+], a                                    ; $6a04: $22
	ld   c, $01                                      ; $6a05: $0e $01
	ld   e, b                                        ; $6a07: $58
	ld   l, e                                        ; $6a08: $6b
	ld   d, d                                        ; $6a09: $52
	ld   l, h                                        ; $6a0a: $6c
	ld   a, [$040d]                                  ; $6a0b: $fa $0d $04
	ld   c, c                                        ; $6a0e: $49
	sub  d                                           ; $6a0f: $92
	ld   [hl], c                                     ; $6a10: $71
	ld   [hl], h                                     ; $6a11: $74
	ld   l, l                                        ; $6a12: $6d
	and  c                                           ; $6a13: $a1
	ld   l, [hl]                                     ; $6a14: $6e
	ld   a, [$000d]                                  ; $6a15: $fa $0d $00
	ld   a, [bc]                                     ; $6a18: $0a
	rrca                                             ; $6a19: $0f
	add  hl, bc                                      ; $6a1a: $09
	db   $10                                         ; $6a1b: $10
	ld   bc, $8d67                                   ; $6a1c: $01 $67 $8d
	adc  h                                           ; $6a1f: $8c
	ld   l, c                                        ; $6a20: $69
	and  c                                           ; $6a21: $a1
	ld   a, [$6b0d]                                  ; $6a22: $fa $0d $6b
	sbc  d                                           ; $6a25: $9a
	sub  [hl]                                        ; $6a26: $96
	sbc  b                                           ; $6a27: $98
	dec  b                                           ; $6a28: $05
	pop  hl                                          ; $6a29: $e1
	dec  b                                           ; $6a2a: $05
	add  e                                           ; $6a2b: $83
	ld   a, l                                        ; $6a2c: $7d
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	ld   sp, hl                                      ; $6a2f: $f9
	dec  c                                           ; $6a30: $0d
	nop                                              ; $6a31: $00
	ld   a, [bc]                                     ; $6a32: $0a
	inc  e                                           ; $6a33: $1c
	ld   a, [bc]                                     ; $6a34: $0a
	ld   [hl+], a                                    ; $6a35: $22
	ld   c, $01                                      ; $6a36: $0e $01
	inc  b                                           ; $6a38: $04
	cp   $7c                                         ; $6a39: $fe $7c
	inc  bc                                          ; $6a3b: $03
	adc  e                                           ; $6a3c: $8b
	ld   [bc], a                                     ; $6a3d: $02
	sub  [hl]                                        ; $6a3e: $96
	ld   [bc], a                                     ; $6a3f: $02
	ld   e, b                                        ; $6a40: $58
	ld   e, d                                        ; $6a41: $5a
	ld   [bc], a                                     ; $6a42: $02
	ld   [hl], l                                     ; $6a43: $75
	inc  b                                           ; $6a44: $04
	dec  a                                           ; $6a45: $3d
	ld   [bc], a                                     ; $6a46: $02
	ld   e, c                                        ; $6a47: $59
	and  b                                           ; $6a48: $a0
	dec  c                                           ; $6a49: $0d
	ld   a, l                                        ; $6a4a: $7d
	ld   e, c                                        ; $6a4b: $59
	ld   d, d                                        ; $6a4c: $52
	ld   h, l                                        ; $6a4d: $65
	ld   [hl], h                                     ; $6a4e: $74

jr_068_6a4f:
	inc  bc                                          ; $6a4f: $03
	add  b                                           ; $6a50: $80
	ld   [hl], h                                     ; $6a51: $74
	ld   [bc], a                                     ; $6a52: $02
	ld   a, a                                        ; $6a53: $7f
	ld   e, e                                        ; $6a54: $5b
	sub  d                                           ; $6a55: $92
	ld   e, d                                        ; $6a56: $5a
	ld   [hl], c                                     ; $6a57: $71
	ld   l, l                                        ; $6a58: $6d
	sbc  a                                           ; $6a59: $9f
	dec  c                                           ; $6a5a: $0d
	nop                                              ; $6a5b: $00
	ld   a, [bc]                                     ; $6a5c: $0a
	rrca                                             ; $6a5d: $0f
	add  hl, bc                                      ; $6a5e: $09
	inc  d                                           ; $6a5f: $14
	ld   bc, $a903                                   ; $6a60: $01 $03 $a9
	ld   e, d                                        ; $6a63: $5a
	inc  bc                                          ; $6a64: $03
	cp   c                                           ; $6a65: $b9
	ld   [hl], c                                     ; $6a66: $71
	ld   [hl], h                                     ; $6a67: $74
	sbc  c                                           ; $6a68: $99
	and  c                                           ; $6a69: $a1
	ld   [hl], l                                     ; $6a6a: $75
	ld   h, a                                        ; $6a6b: $67
	ld   e, c                                        ; $6a6c: $59
	ld   sp, hl                                      ; $6a6d: $f9
	dec  c                                           ; $6a6e: $0d
	nop                                              ; $6a6f: $00
	ld   a, [bc]                                     ; $6a70: $0a
	inc  e                                           ; $6a71: $1c
	dec  bc                                          ; $6a72: $0b
	ld   [bc], a                                     ; $6a73: $02
	ld   [bc], a                                     ; $6a74: $02
	ld   bc, $a903                                   ; $6a75: $01 $03 $a9
	sub  b                                           ; $6a78: $90
	inc  bc                                          ; $6a79: $03
	cp   c                                           ; $6a7a: $b9
	ld   [hl], c                                     ; $6a7b: $71
	ld   [hl], h                                     ; $6a7c: $74
	ld   a, b                                        ; $6a7d: $78
	ld   d, d                                        ; $6a7e: $52
	sbc  l                                           ; $6a7f: $9d
	rst  $38                                         ; $6a80: $ff
	rst  $38                                         ; $6a81: $ff
	dec  c                                           ; $6a82: $0d
	nop                                              ; $6a83: $00
	ld   a, [bc]                                     ; $6a84: $0a
	rrca                                             ; $6a85: $0f
	add  hl, bc                                      ; $6a86: $09
	inc  d                                           ; $6a87: $14
	ld   bc, $9250                                   ; $6a88: $01 $50 $92
	adc  a                                           ; $6a8b: $8f
	ld   h, e                                        ; $6a8c: $63
	and  c                                           ; $6a8d: $a1
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	ld   sp, hl                                      ; $6a90: $f9
	dec  c                                           ; $6a91: $0d
	nop                                              ; $6a92: $00
	ld   a, [bc]                                     ; $6a93: $0a
	inc  e                                           ; $6a94: $1c
	dec  bc                                          ; $6a95: $0b
	dec  b                                           ; $6a96: $05
	dec  b                                           ; $6a97: $05
	ld   bc, $a903                                   ; $6a98: $01 $03 $a9
	sub  b                                           ; $6a9b: $90
	inc  bc                                          ; $6a9c: $03
	cp   c                                           ; $6a9d: $b9
	ld   [hl], c                                     ; $6a9e: $71
	ld   [hl], h                                     ; $6a9f: $74
	ld   a, b                                        ; $6aa0: $78
	ld   d, d                                        ; $6aa1: $52
	ld   a, h                                        ; $6aa2: $7c
	sub  [hl]                                        ; $6aa3: $96
	sbc  [hl]                                        ; $6aa4: $9e
	dec  c                                           ; $6aa5: $0d
	ld   d, b                                        ; $6aa6: $50
	ld   a, h                                        ; $6aa7: $7c
	ld   [bc], a                                     ; $6aa8: $02
	jr   c, jr_068_6aaf                              ; $6aa9: $38 $04

	ld   d, d                                        ; $6aab: $52
	ld   a, c                                        ; $6aac: $79
	ld   a, l                                        ; $6aad: $7d
	rst  $38                                         ; $6aae: $ff

jr_068_6aaf:
	rst  $38                                         ; $6aaf: $ff
	dec  c                                           ; $6ab0: $0d
	nop                                              ; $6ab1: $00
	ld   a, [bc]                                     ; $6ab2: $0a
	ld   bc, $8103                                   ; $6ab3: $01 $03 $81
	ld   [bc], a                                     ; $6ab6: $02
	adc  b                                           ; $6ab7: $88
	inc  b                                           ; $6ab8: $04
	ld   e, [hl]                                     ; $6ab9: $5e
	ld   a, h                                        ; $6aba: $7c
	inc  bc                                          ; $6abb: $03
	sub  h                                           ; $6abc: $94
	dec  b                                           ; $6abd: $05
	ld   d, $b8                                      ; $6abe: $16 $b8
	cp   d                                           ; $6ac0: $ba
	rst  ToBoot                                         ; $6ac1: $c7
	ldh  [c], a                                      ; $6ac2: $e2
	ld   e, d                                        ; $6ac3: $5a
	dec  c                                           ; $6ac4: $0d
	adc  d                                           ; $6ac5: $8a
	ld   d, h                                        ; $6ac6: $54
	dec  b                                           ; $6ac7: $05
	cp   c                                           ; $6ac8: $b9
	ld   h, l                                        ; $6ac9: $65
	ld   [hl], h                                     ; $6aca: $74
	sbc  c                                           ; $6acb: $99
	ld   l, [hl]                                     ; $6acc: $6e
	ld   e, a                                        ; $6acd: $5f
	rst  $38                                         ; $6ace: $ff
	rst  $38                                         ; $6acf: $ff
	dec  c                                           ; $6ad0: $0d
	nop                                              ; $6ad1: $00
	ld   a, [bc]                                     ; $6ad2: $0a
	inc  e                                           ; $6ad3: $1c
	dec  bc                                          ; $6ad4: $0b
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	ld   bc, $7c50                                   ; $6ad7: $01 $50 $7c
	ld   [bc], a                                     ; $6ada: $02
	jr   c, jr_068_6ae1                              ; $6adb: $38 $04

	ld   d, d                                        ; $6add: $52
	ld   a, l                                        ; $6ade: $7d
	inc  bc                                          ; $6adf: $03
	sub  h                                           ; $6ae0: $94

jr_068_6ae1:
	inc  b                                           ; $6ae1: $04
	sbc  [hl]                                        ; $6ae2: $9e
	ld   [hl], l                                     ; $6ae3: $75
	dec  c                                           ; $6ae4: $0d
	inc  b                                           ; $6ae5: $04
	dec  de                                          ; $6ae6: $1b
	ld   d, d                                        ; $6ae7: $52
	ld   [hl], h                                     ; $6ae8: $74
	ld   d, d                                        ; $6ae9: $52
	sbc  c                                           ; $6aea: $99
	ld   a, h                                        ; $6aeb: $7c
	sub  [hl]                                        ; $6aec: $96
	rst  $38                                         ; $6aed: $ff
	rst  $38                                         ; $6aee: $ff
	dec  c                                           ; $6aef: $0d
	nop                                              ; $6af0: $00
	ld   a, [bc]                                     ; $6af1: $0a
	inc  e                                           ; $6af2: $1c
	dec  b                                           ; $6af3: $05
	rla                                              ; $6af4: $17
	db   $10                                         ; $6af5: $10
	ld   bc, $9e8c                                   ; $6af6: $01 $8c $9e
	inc  bc                                          ; $6af9: $03
	ld   l, c                                        ; $6afa: $69
	inc  bc                                          ; $6afb: $03
	inc  c                                           ; $6afc: $0c
	ld   [hl], c                                     ; $6afd: $71
	ld   e, c                                        ; $6afe: $59
	sub  a                                           ; $6aff: $97
	ld   h, c                                        ; $6b00: $61
	ld   d, h                                        ; $6b01: $54
	ld   a, b                                        ; $6b02: $78
	sbc  c                                           ; $6b03: $99
	ld   [bc], a                                     ; $6b04: $02
	and  c                                           ; $6b05: $a1
	ld   e, d                                        ; $6b06: $5a
	dec  c                                           ; $6b07: $0d
	ld   h, l                                        ; $6b08: $65
	halt                                             ; $6b09: $76
	ld   [hl], c                                     ; $6b0a: $71
	ld   l, l                                        ; $6b0b: $6d
	and  c                                           ; $6b0c: $a1
	sub  d                                           ; $6b0d: $92
	ld   e, a                                        ; $6b0e: $5f
	ld   [hl], a                                     ; $6b0f: $77
	ld   a, b                                        ; $6b10: $78
	rst  $38                                         ; $6b11: $ff
	rst  $38                                         ; $6b12: $ff
	dec  c                                           ; $6b13: $0d
	nop                                              ; $6b14: $00
	ld   a, [bc]                                     ; $6b15: $0a
	inc  e                                           ; $6b16: $1c
	dec  b                                           ; $6b17: $05
	ld   [de], a                                     ; $6b18: $12
	dec  bc                                          ; $6b19: $0b
	ld   bc, $9003                                   ; $6b1a: $01 $03 $90
	inc  bc                                          ; $6b1d: $03
	cp   e                                           ; $6b1e: $bb
	inc  bc                                          ; $6b1f: $03
	ccf                                              ; $6b20: $3f
	ld   [bc], a                                     ; $6b21: $02
	ld   c, a                                        ; $6b22: $4f
	ld   e, d                                        ; $6b23: $5a
	ld   [bc], a                                     ; $6b24: $02
	adc  b                                           ; $6b25: $88
	inc  b                                           ; $6b26: $04
	ld   e, [hl]                                     ; $6b27: $5e
	ld   h, l                                        ; $6b28: $65
	ld   l, l                                        ; $6b29: $6d
	sbc  [hl]                                        ; $6b2a: $9e
	ld   e, h                                        ; $6b2b: $5c
	ld   h, [hl]                                     ; $6b2c: $66
	dec  b                                           ; $6b2d: $05
	add  hl, bc                                      ; $6b2e: $09
	inc  bc                                          ; $6b2f: $03
	add  [hl]                                        ; $6b30: $86
	dec  c                                           ; $6b31: $0d
	dec  b                                           ; $6b32: $05
	ld   a, [bc]                                     ; $6b33: $0a
	ld   a, c                                        ; $6b34: $79
	sub  [hl]                                        ; $6b35: $96
	sbc  c                                           ; $6b36: $99
	inc  bc                                          ; $6b37: $03
	sub  h                                           ; $6b38: $94
	dec  b                                           ; $6b39: $05
	ld   d, $b8                                      ; $6b3a: $16 $b8
	cp   d                                           ; $6b3c: $ba
	rst  ToBoot                                         ; $6b3d: $c7
	ldh  [c], a                                      ; $6b3e: $e2
	rst  $38                                         ; $6b3f: $ff
	rst  $38                                         ; $6b40: $ff
	dec  c                                           ; $6b41: $0d
	dec  b                                           ; $6b42: $05
	ld   de, $fb04                                   ; $6b43: $11 $04 $fb
	ld   a, l                                        ; $6b46: $7d
	dec  b                                           ; $6b47: $05
	and  b                                           ; $6b48: $a0
	adc  b                                           ; $6b49: $88
	ld   e, e                                        ; $6b4a: $5b
	adc  l                                           ; $6b4b: $8d
	ld   l, l                                        ; $6b4c: $6d
	ld   d, d                                        ; $6b4d: $52
	sub  d                                           ; $6b4e: $92
	ld   e, a                                        ; $6b4f: $5f
	ld   [hl], a                                     ; $6b50: $77
	rst  $38                                         ; $6b51: $ff
	rst  $38                                         ; $6b52: $ff
	dec  c                                           ; $6b53: $0d
	nop                                              ; $6b54: $00
	ld   a, [bc]                                     ; $6b55: $0a
	inc  e                                           ; $6b56: $1c
	dec  b                                           ; $6b57: $05
	rla                                              ; $6b58: $17
	db   $10                                         ; $6b59: $10
	ld   bc, $9075                                   ; $6b5a: $01 $75 $90
	ld   d, b                                        ; $6b5d: $50
	sbc  d                                           ; $6b5e: $9a
	ld   a, c                                        ; $6b5f: $79
	ld   a, l                                        ; $6b60: $7d
	inc  b                                           ; $6b61: $04
	ld   c, c                                        ; $6b62: $49
	ld   e, c                                        ; $6b63: $59
	ld   d, h                                        ; $6b64: $54
	ld   h, e                                        ; $6b65: $63
	and  c                                           ; $6b66: $a1
	ld   e, l                                        ; $6b67: $5d
	ld   h, e                                        ; $6b68: $63
	ld   d, d                                        ; $6b69: $52
	dec  c                                           ; $6b6a: $0d
	ld   [bc], a                                     ; $6b6b: $02
	scf                                              ; $6b6c: $37
	ld   h, [hl]                                     ; $6b6d: $66
	ld   e, d                                        ; $6b6e: $5a
	ld   h, l                                        ; $6b6f: $65
	ld   [hl], h                                     ; $6b70: $74
	ld   a, b                                        ; $6b71: $78
	rst  $38                                         ; $6b72: $ff
	rst  $38                                         ; $6b73: $ff
	dec  c                                           ; $6b74: $0d
	adc  h                                           ; $6b75: $8c
	sbc  [hl]                                        ; $6b76: $9e
	ld   [bc], a                                     ; $6b77: $02
	add  h                                           ; $6b78: $84
	ld   [bc], a                                     ; $6b79: $02
	and  d                                           ; $6b7a: $a2
	inc  bc                                          ; $6b7b: $03
	or   b                                           ; $6b7c: $b0
	ld   a, h                                        ; $6b7d: $7c
	xor  h                                           ; $6b7e: $ac
	push af                                          ; $6b7f: $f5
	ld   [hl], c                                     ; $6b80: $71
	ld   [hl], h                                     ; $6b81: $74
	sub  d                                           ; $6b82: $92
	ld   [hl], d                                     ; $6b83: $72
	sub  d                                           ; $6b84: $92
	sbc  a                                           ; $6b85: $9f
	dec  c                                           ; $6b86: $0d
	nop                                              ; $6b87: $00
	ld   a, [bc]                                     ; $6b88: $0a
	rrca                                             ; $6b89: $0f
	add  hl, bc                                      ; $6b8a: $09
	inc  d                                           ; $6b8b: $14
	ld   bc, $a178                                   ; $6b8c: $01 $78 $a1
	ld   [hl], l                                     ; $6b8f: $75
	sbc  [hl]                                        ; $6b90: $9e
	ld   l, e                                        ; $6b91: $6b
	and  c                                           ; $6b92: $a1
	ld   a, b                                        ; $6b93: $78
	cp   b                                           ; $6b94: $b8
	cp   d                                           ; $6b95: $ba
	rst  ToBoot                                         ; $6b96: $c7
	ldh  [c], a                                      ; $6b97: $e2
	and  b                                           ; $6b98: $a0
	ld   sp, hl                                      ; $6b99: $f9
	dec  c                                           ; $6b9a: $0d
	inc  bc                                          ; $6b9b: $03
	add  d                                           ; $6b9c: $82
	ld   [bc], a                                     ; $6b9d: $02
	xor  c                                           ; $6b9e: $a9
	ld   a, h                                        ; $6b9f: $7c
	inc  bc                                          ; $6ba0: $03
	cp   c                                           ; $6ba1: $b9
	sbc  c                                           ; $6ba2: $99
	inc  b                                           ; $6ba3: $04
	sub  d                                           ; $6ba4: $92
	ld   a, c                                        ; $6ba5: $79
	rst  $38                                         ; $6ba6: $ff
	rst  $38                                         ; $6ba7: $ff
	dec  c                                           ; $6ba8: $0d
	nop                                              ; $6ba9: $00
	ld   a, [bc]                                     ; $6baa: $0a
	inc  e                                           ; $6bab: $1c
	dec  bc                                          ; $6bac: $0b
	dec  b                                           ; $6bad: $05
	dec  b                                           ; $6bae: $05
	ld   bc, $2506                                   ; $6baf: $01 $06 $25
	ld   e, d                                        ; $6bb2: $5a
	ld   e, a                                        ; $6bb3: $5f
	ld   a, h                                        ; $6bb4: $7c
	inc  bc                                          ; $6bb5: $03
	xor  b                                           ; $6bb6: $a8
	ld   d, d                                        ; $6bb7: $52
	ld   a, c                                        ; $6bb8: $79
	ld   [bc], a                                     ; $6bb9: $02
	jr   nz, jr_068_6bbf                             ; $6bba: $20 $03

	add  d                                           ; $6bbc: $82
	ld   [hl], l                                     ; $6bbd: $75
	sub  b                                           ; $6bbe: $90

jr_068_6bbf:
	inc  b                                           ; $6bbf: $04
	rrca                                             ; $6bc0: $0f
	ld   e, l                                        ; $6bc1: $5d
	dec  c                                           ; $6bc2: $0d
	ld   [bc], a                                     ; $6bc3: $02
	ldh  a, [$5b]                                    ; $6bc4: $f0 $5b
	ld   [bc], a                                     ; $6bc6: $02
	ld   b, b                                        ; $6bc7: $40
	adc  h                                           ; $6bc8: $8c
	ld   a, b                                        ; $6bc9: $78
	ld   d, d                                        ; $6bca: $52
	ld   l, l                                        ; $6bcb: $6d
	adc  a                                           ; $6bcc: $8f
	sub  [hl]                                        ; $6bcd: $96
	rst  $38                                         ; $6bce: $ff
	rst  $38                                         ; $6bcf: $ff
	dec  c                                           ; $6bd0: $0d
	nop                                              ; $6bd1: $00
	ld   a, [bc]                                     ; $6bd2: $0a
	rrca                                             ; $6bd3: $0f
	add  hl, bc                                      ; $6bd4: $09
	inc  de                                          ; $6bd5: $13
	ld   bc, $9250                                   ; $6bd6: $01 $50 $92
	adc  a                                           ; $6bd9: $8f
	ld   h, e                                        ; $6bda: $63
	and  c                                           ; $6bdb: $a1
	rst  $38                                         ; $6bdc: $ff
	rst  $38                                         ; $6bdd: $ff
	dec  c                                           ; $6bde: $0d
	nop                                              ; $6bdf: $00
	ld   a, [bc]                                     ; $6be0: $0a
	inc  e                                           ; $6be1: $1c
	ld   a, [bc]                                     ; $6be2: $0a
	ld   [hl+], a                                    ; $6be3: $22
	ld   c, $01                                      ; $6be4: $0e $01
	ld   e, b                                        ; $6be6: $58
	ld   h, l                                        ; $6be7: $65
	sub  c                                           ; $6be8: $91
	add  a                                           ; $6be9: $87
	sbc  b                                           ; $6bea: $98
	ld   a, l                                        ; $6beb: $7d
	ld   l, e                                        ; $6bec: $6b
	ld   h, c                                        ; $6bed: $61
	adc  h                                           ; $6bee: $8c
	ld   [hl], l                                     ; $6bef: $75
	ld   l, [hl]                                     ; $6bf0: $6e
	rst  $38                                         ; $6bf1: $ff
	rst  $38                                         ; $6bf2: $ff
	dec  c                                           ; $6bf3: $0d
	ld   [bc], a                                     ; $6bf4: $02
	sbc  b                                           ; $6bf5: $98
	inc  bc                                          ; $6bf6: $03
	nop                                              ; $6bf7: $00
	inc  bc                                          ; $6bf8: $03
	ld   d, a                                        ; $6bf9: $57
	ld   [bc], a                                     ; $6bfa: $02
	nop                                              ; $6bfb: $00
	sbc  [hl]                                        ; $6bfc: $9e
	inc  bc                                          ; $6bfd: $03
	add  b                                           ; $6bfe: $80
	ld   [bc], a                                     ; $6bff: $02
	sub  c                                           ; $6c00: $91
	ld   a, h                                        ; $6c01: $7c
	dec  c                                           ; $6c02: $0d
	ld   h, [hl]                                     ; $6c03: $66
	sub  e                                           ; $6c04: $93
	and  c                                           ; $6c05: $a1
	add  c                                           ; $6c06: $81
	and  b                                           ; $6c07: $a0
	ld   h, l                                        ; $6c08: $65
	sbc  e                                           ; $6c09: $9b
	sbc  a                                           ; $6c0a: $9f
	dec  c                                           ; $6c0b: $0d
	nop                                              ; $6c0c: $00
	ld   a, [bc]                                     ; $6c0d: $0a
	ld   bc, $6e6d                                   ; $6c0e: $01 $6d $6e
	ld   h, l                                        ; $6c11: $65
	sbc  [hl]                                        ; $6c12: $9e
	ld   [$ff00], sp                                 ; $6c13: $08 $00 $ff
	rst  $38                                         ; $6c16: $ff
	dec  c                                           ; $6c17: $0d
	ld   e, b                                        ; $6c18: $58
	inc  bc                                          ; $6c19: $03
	ld   c, a                                        ; $6c1a: $4f
	ld   a, l                                        ; $6c1b: $7d
	sbc  c                                           ; $6c1c: $99
	ld   h, a                                        ; $6c1d: $67
	ld   a, [hl]                                     ; $6c1e: $7e
	and  c                                           ; $6c1f: $a1
	ld   l, [hl]                                     ; $6c20: $6e
	sbc  a                                           ; $6c21: $9f
	dec  c                                           ; $6c22: $0d
	nop                                              ; $6c23: $00
	ld   a, [bc]                                     ; $6c24: $0a
	add  hl, de                                      ; $6c25: $19
	inc  bc                                          ; $6c26: $03
	ld   [bc], a                                     ; $6c27: $02
	dec  b                                           ; $6c28: $05
	nop                                              ; $6c29: $00
	ld   [bc], a                                     ; $6c2a: $02
	or   h                                           ; $6c2b: $b4
	ld   h, l                                        ; $6c2c: $65
	adc  h                                           ; $6c2d: $8c
	ld   h, l                                        ; $6c2e: $65
	ld   l, l                                        ; $6c2f: $6d
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	inc  b                                           ; $6c32: $04
	ld   l, l                                        ; $6c33: $6d
	sub  b                                           ; $6c34: $90
	inc  bc                                          ; $6c35: $03
	add  b                                           ; $6c36: $80
	ld   [bc], a                                     ; $6c37: $02
	sub  c                                           ; $6c38: $91
	ld   h, l                                        ; $6c39: $65
	adc  h                                           ; $6c3a: $8c
	ld   h, a                                        ; $6c3b: $67
	nop                                              ; $6c3c: $00
	ld   bc, $f107                                   ; $6c3d: $01 $07 $f1
	ld   [bc], a                                     ; $6c40: $02
	ld   [bc], a                                     ; $6c41: $02
	inc  bc                                          ; $6c42: $03
	ld   bc, $2000                                   ; $6c43: $01 $00 $20
	nop                                              ; $6c46: $00
	rlca                                             ; $6c47: $07
	jr   nc, @+$05                                   ; $6c48: $30 $03

	ld   [bc], a                                     ; $6c4a: $02
	inc  bc                                          ; $6c4b: $03
	ld   bc, $2001                                   ; $6c4c: $01 $01 $20
	nop                                              ; $6c4f: $00
	ld   b, $a7                                      ; $6c50: $06 $a7
	inc  bc                                          ; $6c52: $03
	rrca                                             ; $6c53: $0f
	nop                                              ; $6c54: $00
	ld   bc, $0501                                   ; $6c55: $01 $01 $05
	nop                                              ; $6c58: $00
	ld   [bc], a                                     ; $6c59: $02
	or   h                                           ; $6c5a: $b4
	ld   h, l                                        ; $6c5b: $65
	adc  h                                           ; $6c5c: $8c
	ld   h, l                                        ; $6c5d: $65
	ld   l, l                                        ; $6c5e: $6d
	sbc  a                                           ; $6c5f: $9f
	dec  c                                           ; $6c60: $0d
	nop                                              ; $6c61: $00
	ld   a, [bc]                                     ; $6c62: $0a
	inc  e                                           ; $6c63: $1c
	ld   a, [bc]                                     ; $6c64: $0a
	ld   [hl+], a                                    ; $6c65: $22
	ld   c, $01                                      ; $6c66: $0e $01
	ld   [bc], a                                     ; $6c68: $02
	and  l                                           ; $6c69: $a5
	ld   [bc], a                                     ; $6c6a: $02
	sub  e                                           ; $6c6b: $93
	ld   a, l                                        ; $6c6c: $7d
	inc  b                                           ; $6c6d: $04
	adc  a                                           ; $6c6e: $8f
	ld   [bc], a                                     ; $6c6f: $02
	ld   [hl], l                                     ; $6c70: $75
	inc  b                                           ; $6c71: $04
	jr   nz, @+$7a                                   ; $6c72: $20 $78

	inc  bc                                          ; $6c74: $03
	xor  b                                           ; $6c75: $a8
	ld   d, d                                        ; $6c76: $52
	ld   a, c                                        ; $6c77: $79
	dec  c                                           ; $6c78: $0d
	ld   a, b                                        ; $6c79: $78
	sbc  b                                           ; $6c7a: $98
	ld   l, e                                        ; $6c7b: $6b
	ld   d, h                                        ; $6c7c: $54
	ld   l, [hl]                                     ; $6c7d: $6e
	ld   e, c                                        ; $6c7e: $59
	sub  a                                           ; $6c7f: $97
	ld   a, b                                        ; $6c80: $78
	rst  $38                                         ; $6c81: $ff
	rst  $38                                         ; $6c82: $ff
	dec  c                                           ; $6c83: $0d
	ld   [bc], a                                     ; $6c84: $02
	jr   z, jr_068_6ce4                              ; $6c85: $28 $5d

	dec  b                                           ; $6c87: $05
	pop  de                                          ; $6c88: $d1
	ld   d, h                                        ; $6c89: $54
	ld   a, b                                        ; $6c8a: $78
	sbc  a                                           ; $6c8b: $9f
	dec  c                                           ; $6c8c: $0d
	nop                                              ; $6c8d: $00
	ld   a, [bc]                                     ; $6c8e: $0a
	ld   b, $c6                                      ; $6c8f: $06 $c6
	inc  bc                                          ; $6c91: $03
	rrca                                             ; $6c92: $0f
	nop                                              ; $6c93: $00
	ld   bc, $0401                                   ; $6c94: $01 $01 $04
	ld   l, l                                        ; $6c97: $6d
	sub  b                                           ; $6c98: $90
	inc  bc                                          ; $6c99: $03
	add  b                                           ; $6c9a: $80
	ld   [bc], a                                     ; $6c9b: $02
	sub  c                                           ; $6c9c: $91
	ld   h, l                                        ; $6c9d: $65
	adc  h                                           ; $6c9e: $8c
	ld   h, a                                        ; $6c9f: $67
	sbc  a                                           ; $6ca0: $9f
	dec  c                                           ; $6ca1: $0d
	nop                                              ; $6ca2: $00
	ld   a, [bc]                                     ; $6ca3: $0a
	inc  e                                           ; $6ca4: $1c
	ld   a, [bc]                                     ; $6ca5: $0a
	ld   [hl+], a                                    ; $6ca6: $22
	ld   c, $01                                      ; $6ca7: $0e $01
	pop  de                                          ; $6ca9: $d1
	xor  h                                           ; $6caa: $ac
	and  $ef                                         ; $6cab: $e6 $ef
	and  a                                           ; $6cad: $a7
	ld   a, [$040d]                                  ; $6cae: $fa $0d $04
	ldh  a, [c]                                      ; $6cb1: $f2
	add  c                                           ; $6cb2: $81
	ld   h, [hl]                                     ; $6cb3: $66
	sub  c                                           ; $6cb4: $91
	ld   a, e                                        ; $6cb5: $7b
	ld   d, [hl]                                     ; $6cb6: $56
	and  c                                           ; $6cb7: $a1
	ld   l, [hl]                                     ; $6cb8: $6e
	ld   l, h                                        ; $6cb9: $6c
	ld   a, [$040d]                                  ; $6cba: $fa $0d $04
	ld   c, $03                                      ; $6cbd: $0e $03
	add  d                                           ; $6cbf: $82
	ld   h, l                                        ; $6cc0: $65
	ld   e, l                                        ; $6cc1: $5d
	ld   h, l                                        ; $6cc2: $65
	ld   [hl], h                                     ; $6cc3: $74
	sbc  e                                           ; $6cc4: $9b
	ld   a, [$000d]                                  ; $6cc5: $fa $0d $00
	ld   a, [bc]                                     ; $6cc8: $0a
	rrca                                             ; $6cc9: $0f
	nop                                              ; $6cca: $00
	ld   bc, $ff01                                   ; $6ccb: $01 $01 $ff
	rst  $38                                         ; $6cce: $ff
	rst  $38                                         ; $6ccf: $ff
	rst  $38                                         ; $6cd0: $ff
	ld   a, l                                        ; $6cd1: $7d
	ld   d, d                                        ; $6cd2: $52
	rst  $38                                         ; $6cd3: $ff
	rst  $38                                         ; $6cd4: $ff
	dec  c                                           ; $6cd5: $0d
	sbc  l                                           ; $6cd6: $9d
	ld   e, c                                        ; $6cd7: $59
	sbc  b                                           ; $6cd8: $98
	adc  h                                           ; $6cd9: $8c
	ld   h, l                                        ; $6cda: $65
	ld   l, l                                        ; $6cdb: $6d
	rst  $38                                         ; $6cdc: $ff
	rst  $38                                         ; $6cdd: $ff
	dec  c                                           ; $6cde: $0d
	nop                                              ; $6cdf: $00
	ld   a, [bc]                                     ; $6ce0: $0a
	inc  e                                           ; $6ce1: $1c
	add  hl, bc                                      ; $6ce2: $09
	ld   [hl+], a                                    ; $6ce3: $22

jr_068_6ce4:
	db   $10                                         ; $6ce4: $10
	ld   bc, $ffff                                   ; $6ce5: $01 $ff $ff
	sub  [hl]                                        ; $6ce8: $96
	ld   h, l                                        ; $6ce9: $65
	ld   a, [$0dfa]                                  ; $6cea: $fa $fa $0d
	inc  b                                           ; $6ced: $04
	ld   [$8f02], sp                                 ; $6cee: $08 $02 $8f
	ld   [bc], a                                     ; $6cf1: $02
	sub  b                                           ; $6cf2: $90
	ld   [bc], a                                     ; $6cf3: $02
	sub  c                                           ; $6cf4: $91
	inc  b                                           ; $6cf5: $04
	add  hl, bc                                      ; $6cf6: $09
	sbc  [hl]                                        ; $6cf7: $9e
	inc  bc                                          ; $6cf8: $03
	add  b                                           ; $6cf9: $80
	ld   [bc], a                                     ; $6cfa: $02
	sub  c                                           ; $6cfb: $91
	ld   a, [$000d]                                  ; $6cfc: $fa $0d $00
	ld   a, [bc]                                     ; $6cff: $0a
	dec  c                                           ; $6d00: $0d
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	rrca                                             ; $6d03: $0f
	nop                                              ; $6d04: $00
	ld   bc, $e706                                   ; $6d05: $01 $06 $e7
	inc  bc                                          ; $6d08: $03
	inc  e                                           ; $6d09: $1c
	ld   a, [bc]                                     ; $6d0a: $0a
	ld   [hl+], a                                    ; $6d0b: $22
	ld   c, $01                                      ; $6d0c: $0e $01
	inc  b                                           ; $6d0e: $04
	and  b                                           ; $6d0f: $a0
	inc  b                                           ; $6d10: $04
	and  l                                           ; $6d11: $a5
	ld   l, e                                        ; $6d12: $6b
	ld   d, h                                        ; $6d13: $54
	ld   l, [hl]                                     ; $6d14: $6e
	ld   a, b                                        ; $6d15: $78
	rst  $38                                         ; $6d16: $ff
	rst  $38                                         ; $6d17: $ff
	dec  c                                           ; $6d18: $0d
	ld   l, [hl]                                     ; $6d19: $6e
	ld   e, d                                        ; $6d1a: $5a
	sbc  [hl]                                        ; $6d1b: $9e
	ld   [bc], a                                     ; $6d1c: $02
	and  l                                           ; $6d1d: $a5
	ld   [bc], a                                     ; $6d1e: $02
	sub  e                                           ; $6d1f: $93
	ld   a, l                                        ; $6d20: $7d
	pop  bc                                          ; $6d21: $c1
	db   $e3                                         ; $6d22: $e3
	ld   l, [hl]                                     ; $6d23: $6e
	sbc  a                                           ; $6d24: $9f
	dec  c                                           ; $6d25: $0d
	nop                                              ; $6d26: $00
	ld   a, [bc]                                     ; $6d27: $0a

jr_068_6d28:
	inc  e                                           ; $6d28: $1c
	add  hl, bc                                      ; $6d29: $09
	ld   [hl+], a                                    ; $6d2a: $22
	db   $10                                         ; $6d2b: $10
	ld   bc, $0804                                   ; $6d2c: $01 $04 $08
	ld   [bc], a                                     ; $6d2f: $02
	adc  a                                           ; $6d30: $8f
	ld   [bc], a                                     ; $6d31: $02
	sub  b                                           ; $6d32: $90
	ld   [bc], a                                     ; $6d33: $02
	sub  c                                           ; $6d34: $91
	inc  b                                           ; $6d35: $04
	add  hl, bc                                      ; $6d36: $09
	sbc  [hl]                                        ; $6d37: $9e
	inc  bc                                          ; $6d38: $03
	add  b                                           ; $6d39: $80
	ld   [bc], a                                     ; $6d3a: $02
	sub  c                                           ; $6d3b: $91
	ld   a, [$000d]                                  ; $6d3c: $fa $0d $00
	ld   a, [bc]                                     ; $6d3f: $0a
	dec  c                                           ; $6d40: $0d
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	rrca                                             ; $6d43: $0f
	nop                                              ; $6d44: $00
	ld   bc, $e706                                   ; $6d45: $01 $06 $e7
	inc  bc                                          ; $6d48: $03
	inc  hl                                          ; $6d49: $23
	sbc  e                                           ; $6d4a: $9b
	rrca                                             ; $6d4b: $0f
	add  hl, bc                                      ; $6d4c: $09
	db   $10                                         ; $6d4d: $10
	ld   bc, $8b03                                   ; $6d4e: $01 $03 $8b
	ld   [bc], a                                     ; $6d51: $02

Jump_068_6d52:
	sub  [hl]                                        ; $6d52: $96
	ld   [bc], a                                     ; $6d53: $02
	ld   e, b                                        ; $6d54: $58
	ld   a, l                                        ; $6d55: $7d
	ld   [hl], a                                     ; $6d56: $77
	ld   h, c                                        ; $6d57: $61
	ld   l, [hl]                                     ; $6d58: $6e
	rst  $38                                         ; $6d59: $ff
	rst  $38                                         ; $6d5a: $ff
	ld   sp, hl                                      ; $6d5b: $f9
	dec  c                                           ; $6d5c: $0d
	nop                                              ; $6d5d: $00
	ld   a, [bc]                                     ; $6d5e: $0a
	rrca                                             ; $6d5f: $0f
	ld   bc, $0113                                   ; $6d60: $01 $13 $01
	inc  b                                           ; $6d63: $04
	ld   c, $03                                      ; $6d64: $0e $03
	sub  b                                           ; $6d66: $90
	ld   h, e                                        ; $6d67: $63
	and  c                                           ; $6d68: $a1
	sbc  [hl]                                        ; $6d69: $9e
	ld   d, b                                        ; $6d6a: $50
	ld   l, e                                        ; $6d6b: $6b
	ld   h, c                                        ; $6d6c: $61
	ld   [hl], l                                     ; $6d6d: $75
	ld   h, a                                        ; $6d6e: $67
	ld   a, [$000d]                                  ; $6d6f: $fa $0d $00
	ld   a, [bc]                                     ; $6d72: $0a
	dec  de                                          ; $6d73: $1b
	dec  a                                           ; $6d74: $3d
	rrca                                             ; $6d75: $0f
	add  hl, bc                                      ; $6d76: $09
	db   $10                                         ; $6d77: $10
	ld   bc, $ffff                                   ; $6d78: $01 $ff $ff
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	dec  c                                           ; $6d7d: $0d
	nop                                              ; $6d7e: $00
	ld   a, [bc]                                     ; $6d7f: $0a
	ld   bc, $a18d                                   ; $6d80: $01 $8d $a1
	ld   a, b                                        ; $6d83: $78
	sbc  [hl]                                        ; $6d84: $9e

jr_068_6d85:
	inc  bc                                          ; $6d85: $03
	adc  e                                           ; $6d86: $8b
	ld   [bc], a                                     ; $6d87: $02
	sub  [hl]                                        ; $6d88: $96
	ld   [bc], a                                     ; $6d89: $02
	ld   e, b                                        ; $6d8a: $58
	and  b                                           ; $6d8b: $a0
	dec  c                                           ; $6d8c: $0d
	inc  bc                                          ; $6d8d: $03
	jr   jr_068_6d28                                 ; $6d8e: $18 $98

	ld   [bc], a                                     ; $6d90: $02
	ld   a, [bc]                                     ; $6d91: $0a
	adc  [hl]                                        ; $6d92: $8e
	and  c                                           ; $6d93: $a1
	ld   l, [hl]                                     ; $6d94: $6e
	ld   a, [$000d]                                  ; $6d95: $fa $0d $00
	ld   a, [bc]                                     ; $6d98: $0a
	inc  d                                           ; $6d99: $14
	ld   a, [de]                                     ; $6d9a: $1a
	ld   bc, $090f                                   ; $6d9b: $01 $0f $09
	inc  d                                           ; $6d9e: $14
	inc  d                                           ; $6d9f: $14
	ld   a, [de]                                     ; $6da0: $1a
	ld   bc, $5001                                   ; $6da1: $01 $01 $50
	ld   [hl], c                                     ; $6da4: $71
	ld   a, [$0dfa]                                  ; $6da5: $fa $fa $0d
	nop                                              ; $6da8: $00
	ld   a, [bc]                                     ; $6da9: $0a
	dec  c                                           ; $6daa: $0d
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	rrca                                             ; $6dad: $0f
	nop                                              ; $6dae: $00
	ld   bc, $6323                                   ; $6daf: $01 $23 $63
	inc  e                                           ; $6db2: $1c
	ld   a, [bc]                                     ; $6db3: $0a
	ld   [hl+], a                                    ; $6db4: $22
	ld   c, $01                                      ; $6db5: $0e $01
	ld   [hl], a                                     ; $6db7: $77
	ld   d, h                                        ; $6db8: $54
	ld   h, l                                        ; $6db9: $65
	ld   l, l                                        ; $6dba: $6d
	inc  b                                           ; $6dbb: $04
	ld   c, $03                                      ; $6dbc: $0e $03
	sub  b                                           ; $6dbe: $90
	ld   a, [$0df9]                                  ; $6dbf: $fa $f9 $0d
	dec  b                                           ; $6dc2: $05
	pop  hl                                          ; $6dc3: $e1
	dec  b                                           ; $6dc4: $05
	add  e                                           ; $6dc5: $83
	and  b                                           ; $6dc6: $a0
	inc  b                                           ; $6dc7: $04
	ld   l, a                                        ; $6dc8: $6f
	ld   [bc], a                                     ; $6dc9: $02
	ld   [hl], h                                     ; $6dca: $74
	ld   h, l                                        ; $6dcb: $65
	sbc  e                                           ; $6dcc: $9b
	sbc  a                                           ; $6dcd: $9f
	dec  c                                           ; $6dce: $0d
	nop                                              ; $6dcf: $00
	ld   a, [bc]                                     ; $6dd0: $0a
	rrca                                             ; $6dd1: $0f
	add  hl, bc                                      ; $6dd2: $09
	db   $10                                         ; $6dd3: $10
	ld   bc, $ffff                                   ; $6dd4: $01 $ff $ff
	dec  b                                           ; $6dd7: $05
	ld   b, [hl]                                     ; $6dd8: $46
	ld   h, l                                        ; $6dd9: $65
	ld   b, $27                                      ; $6dda: $06 $27
	ld   d, b                                        ; $6ddc: $50
	sbc  b                                           ; $6ddd: $98
	adc  h                                           ; $6dde: $8c
	ld   l, c                                        ; $6ddf: $69
	and  c                                           ; $6de0: $a1
	sbc  a                                           ; $6de1: $9f
	dec  c                                           ; $6de2: $0d
	inc  bc                                          ; $6de3: $03
	adc  e                                           ; $6de4: $8b
	ld   [bc], a                                     ; $6de5: $02
	sub  [hl]                                        ; $6de6: $96
	ld   [bc], a                                     ; $6de7: $02
	ld   e, b                                        ; $6de8: $58
	and  b                                           ; $6de9: $a0
	inc  bc                                          ; $6dea: $03
	jr   jr_068_6d85                                 ; $6deb: $18 $98

	inc  bc                                          ; $6ded: $03
	push de                                          ; $6dee: $d5
	ld   e, d                                        ; $6def: $5a
	ld   h, l                                        ; $6df0: $65
	adc  h                                           ; $6df1: $8c
	ld   h, l                                        ; $6df2: $65
	ld   l, l                                        ; $6df3: $6d
	ld   a, [$000d]                                  ; $6df4: $fa $0d $00
	ld   a, [bc]                                     ; $6df7: $0a
	inc  e                                           ; $6df8: $1c
	ld   a, [bc]                                     ; $6df9: $0a
	inc  hl                                          ; $6dfa: $23
	rrca                                             ; $6dfb: $0f
	ld   bc, $a178                                   ; $6dfc: $01 $78 $a1
	ld   l, [hl]                                     ; $6dff: $6e
	halt                                             ; $6e00: $76
	ld   d, a                                        ; $6e01: $57
	ld   sp, hl                                      ; $6e02: $f9
	dec  c                                           ; $6e03: $0d
	nop                                              ; $6e04: $00
	ld   a, [bc]                                     ; $6e05: $0a
	rrca                                             ; $6e06: $0f
	add  hl, bc                                      ; $6e07: $09
	db   $10                                         ; $6e08: $10
	ld   bc, $6202                                   ; $6e09: $01 $02 $62
	dec  b                                           ; $6e0c: $05
	cp   b                                           ; $6e0d: $b8
	sbc  [hl]                                        ; $6e0e: $9e
	inc  b                                           ; $6e0f: $04
	call nc, $1f06                                   ; $6e10: $d4 $06 $1f
	ld   a, l                                        ; $6e13: $7d
	ld   [bc], a                                     ; $6e14: $02
	ld   l, h                                        ; $6e15: $6c
	inc  bc                                          ; $6e16: $03
	ld   d, h                                        ; $6e17: $54
	add  [hl]                                        ; $6e18: $86
	ld   [bc], a                                     ; $6e19: $02
	jp   nc, Jump_068_745f                           ; $6e1a: $d2 $5f $74

	dec  c                                           ; $6e1d: $0d
	inc  bc                                          ; $6e1e: $03
	push de                                          ; $6e1f: $d5
	dec  b                                           ; $6e20: $05
	cp   c                                           ; $6e21: $b9
	inc  b                                           ; $6e22: $04
	dec  bc                                          ; $6e23: $0b
	rst  $38                                         ; $6e24: $ff
	rst  $38                                         ; $6e25: $ff
	dec  c                                           ; $6e26: $0d
	dec  b                                           ; $6e27: $05
	dec  hl                                          ; $6e28: $2b
	ld   bc, $9014                                   ; $6e29: $01 $14 $90
	inc  bc                                          ; $6e2c: $03
	ld   d, a                                        ; $6e2d: $57
	dec  b                                           ; $6e2e: $05
	ld   a, [bc]                                     ; $6e2f: $0a
	ld   [hl], l                                     ; $6e30: $75
	ld   [hl], d                                     ; $6e31: $72
	ld   d, d                                        ; $6e32: $52
	ld   h, b                                        ; $6e33: $60
	ld   e, e                                        ; $6e34: $5b
	ld   h, l                                        ; $6e35: $65
	adc  h                                           ; $6e36: $8c
	ld   h, a                                        ; $6e37: $67
	ld   a, [$000d]                                  ; $6e38: $fa $0d $00
	ld   a, [bc]                                     ; $6e3b: $0a
	inc  e                                           ; $6e3c: $1c
	ld   a, [bc]                                     ; $6e3d: $0a
	ld   [hl+], a                                    ; $6e3e: $22
	ld   c, $01                                      ; $6e3f: $0e $01
	ld   [bc], a                                     ; $6e41: $02
	ld   l, h                                        ; $6e42: $6c
	inc  bc                                          ; $6e43: $03
	ld   d, h                                        ; $6e44: $54
	ld   l, [hl]                                     ; $6e45: $6e
	ld   c, a                                        ; $6e46: $4f
	rst  $38                                         ; $6e47: $ff
	rst  $38                                         ; $6e48: $ff
	ld   sp, hl                                      ; $6e49: $f9
	dec  c                                           ; $6e4a: $0d
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	ld   e, l                                        ; $6e4d: $5d
	ld   l, e                                        ; $6e4e: $6b
	ld   [hl], c                                     ; $6e4f: $71
	ld   a, [$040d]                                  ; $6e50: $fa $0d $04
	ld   [$9202], sp                                 ; $6e53: $08 $02 $92
	ld   a, l                                        ; $6e56: $7d
	xor  l                                           ; $6e57: $ad
	db   $eb                                         ; $6e58: $eb
	ld   [bc], a                                     ; $6e59: $02
	or   [hl]                                        ; $6e5a: $b6
	ld   e, e                                        ; $6e5b: $5b
	ld   l, [hl]                                     ; $6e5c: $6e
	ld   l, h                                        ; $6e5d: $6c
	sbc  a                                           ; $6e5e: $9f
	dec  c                                           ; $6e5f: $0d
	nop                                              ; $6e60: $00
	ld   a, [bc]                                     ; $6e61: $0a
	rrca                                             ; $6e62: $0f
	dec  bc                                          ; $6e63: $0b
	dec  b                                           ; $6e64: $05
	ld   bc, $2a03                                   ; $6e65: $01 $03 $2a
	dec  b                                           ; $6e68: $05
	ld   bc, $ffff                                   ; $6e69: $01 $ff $ff
	dec  c                                           ; $6e6c: $0d
	nop                                              ; $6e6d: $00
	ld   a, [bc]                                     ; $6e6e: $0a
	inc  e                                           ; $6e6f: $1c
	ld   a, [bc]                                     ; $6e70: $0a
	ld   [hl+], a                                    ; $6e71: $22
	ld   c, $01                                      ; $6e72: $0e $01
	ld   e, b                                        ; $6e74: $58
	ld   d, d                                        ; $6e75: $52
	sbc  [hl]                                        ; $6e76: $9e
	ld   [$9f00], sp                                 ; $6e77: $08 $00 $9f
	ld   [bc], a                                     ; $6e7a: $02
	ld   [hl], l                                     ; $6e7b: $75
	inc  b                                           ; $6e7c: $04
	dec  a                                           ; $6e7d: $3d
	ld   [bc], a                                     ; $6e7e: $02
	ld   e, c                                        ; $6e7f: $59
	ld   a, c                                        ; $6e80: $79
	dec  c                                           ; $6e81: $0d
	dec  b                                           ; $6e82: $05
	and  l                                           ; $6e83: $a5
	inc  b                                           ; $6e84: $04
	ld   a, [bc]                                     ; $6e85: $0a
	ld   [bc], a                                     ; $6e86: $02
	nop                                              ; $6e87: $00
	ld   a, h                                        ; $6e88: $7c
	dec  b                                           ; $6e89: $05
	ld   e, a                                        ; $6e8a: $5f
	inc  b                                           ; $6e8b: $04
	ld   d, e                                        ; $6e8c: $53
	ld   a, h                                        ; $6e8d: $7c
	ld   [bc], a                                     ; $6e8e: $02
	ld   e, b                                        ; $6e8f: $58
	inc  b                                           ; $6e90: $04
	dec  c                                           ; $6e91: $0d
	ld   e, d                                        ; $6e92: $5a
	ld   d, b                                        ; $6e93: $50
	sbc  c                                           ; $6e94: $99
	rst  $38                                         ; $6e95: $ff
	rst  $38                                         ; $6e96: $ff
	dec  c                                           ; $6e97: $0d
	inc  bc                                          ; $6e98: $03
	add  b                                           ; $6e99: $80
	ld   [bc], a                                     ; $6e9a: $02
	sub  c                                           ; $6e9b: $91
	ld   a, h                                        ; $6e9c: $7c
	inc  bc                                          ; $6e9d: $03
	inc  e                                           ; $6e9e: $1c
	inc  b                                           ; $6e9f: $04
	ld   d, e                                        ; $6ea0: $53
	and  b                                           ; $6ea1: $a0
	ld   h, l                                        ; $6ea2: $65
	sbc  e                                           ; $6ea3: $9b
	sbc  a                                           ; $6ea4: $9f
	dec  c                                           ; $6ea5: $0d
	nop                                              ; $6ea6: $00
	ld   a, [bc]                                     ; $6ea7: $0a
	rrca                                             ; $6ea8: $0f
	dec  bc                                          ; $6ea9: $0b
	inc  b                                           ; $6eaa: $04
	ld   bc, $a16b                                   ; $6eab: $01 $6b $a1
	ld   a, b                                        ; $6eae: $78
	rst  $38                                         ; $6eaf: $ff
	rst  $38                                         ; $6eb0: $ff
	inc  b                                           ; $6eb1: $04
	sub  $03                                         ; $6eb2: $d6 $03
	jp   Jump_068_6775                               ; $6eb4: $c3 $75 $67


	ld   a, [$000d]                                  ; $6eb7: $fa $0d $00
	ld   a, [bc]                                     ; $6eba: $0a
	inc  e                                           ; $6ebb: $1c
	ld   a, [bc]                                     ; $6ebc: $0a
	ld   [hl+], a                                    ; $6ebd: $22
	ld   c, $01                                      ; $6ebe: $0e $01
	inc  bc                                          ; $6ec0: $03
	dec  c                                           ; $6ec1: $0d
	inc  b                                           ; $6ec2: $04
	ld   a, b                                        ; $6ec3: $78
	ld   a, e                                        ; $6ec4: $7b
	ld   d, [hl]                                     ; $6ec5: $56
	ld   l, [hl]                                     ; $6ec6: $6e
	sbc  e                                           ; $6ec7: $9b
	rst  $38                                         ; $6ec8: $ff
	rst  $38                                         ; $6ec9: $ff
	dec  c                                           ; $6eca: $0d
	ld   [bc], a                                     ; $6ecb: $02
	sbc  b                                           ; $6ecc: $98
	inc  bc                                          ; $6ecd: $03
	nop                                              ; $6ece: $00
	and  b                                           ; $6ecf: $a0
	inc  b                                           ; $6ed0: $04
	rla                                              ; $6ed1: $17
	ld   [hl], c                                     ; $6ed2: $71
	ld   [hl], h                                     ; $6ed3: $74
	sbc  c                                           ; $6ed4: $99
	ld   d, b                                        ; $6ed5: $50
	ld   d, d                                        ; $6ed6: $52
	ld   l, [hl]                                     ; $6ed7: $6e
	ld   a, c                                        ; $6ed8: $79
	dec  c                                           ; $6ed9: $0d
	and  $c5                                         ; $6eda: $e6 $c5
	ld   e, d                                        ; $6edc: $5a
	dec  b                                           ; $6edd: $05
	db   $10                                         ; $6ede: $10
	ld   l, l                                        ; $6edf: $6d
	sub  a                                           ; $6ee0: $97
	ld   [hl], a                                     ; $6ee1: $77
	ld   d, h                                        ; $6ee2: $54
	ld   h, a                                        ; $6ee3: $67
	sbc  c                                           ; $6ee4: $99
	rst  $38                                         ; $6ee5: $ff
	rst  $38                                         ; $6ee6: $ff
	dec  c                                           ; $6ee7: $0d
	nop                                              ; $6ee8: $00
	ld   a, [bc]                                     ; $6ee9: $0a
	ld   bc, $0008                                   ; $6eea: $01 $08 $00
	sbc  [hl]                                        ; $6eed: $9e
	inc  bc                                          ; $6eee: $03
	add  b                                           ; $6eef: $80
	ld   [bc], a                                     ; $6ef0: $02
	sub  c                                           ; $6ef1: $91
	ld   l, [hl]                                     ; $6ef2: $6e
	rst  $38                                         ; $6ef3: $ff
	rst  $38                                         ; $6ef4: $ff
	dec  c                                           ; $6ef5: $0d
	nop                                              ; $6ef6: $00
	ld   a, [bc]                                     ; $6ef7: $0a
	rrca                                             ; $6ef8: $0f
	nop                                              ; $6ef9: $00
	ld   bc, $7d01                                   ; $6efa: $01 $01 $7d
	ld   d, d                                        ; $6efd: $52
	ld   a, [$000d]                                  ; $6efe: $fa $0d $00
	ld   a, [bc]                                     ; $6f01: $0a
	jr   z, jr_068_6f13                              ; $6f02: $28 $0f

	nop                                              ; $6f04: $00
	ld   bc, $0801                                   ; $6f05: $01 $01 $08
	nop                                              ; $6f08: $00
	sbc  [hl]                                        ; $6f09: $9e
	ld   [bc], a                                     ; $6f0a: $02
	ld   a, a                                        ; $6f0b: $7f
	ld   e, e                                        ; $6f0c: $5b
	adc  h                                           ; $6f0d: $8c
	ld   h, a                                        ; $6f0e: $67
	ld   a, [$000d]                                  ; $6f0f: $fa $0d $00
	ld   a, [bc]                                     ; $6f12: $0a

jr_068_6f13:
	dec  c                                           ; $6f13: $0d
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	rrca                                             ; $6f16: $0f
	nop                                              ; $6f17: $00
	ld   bc, $8623                                   ; $6f18: $01 $23 $86
	ld   bc, $638c                                   ; $6f1b: $01 $8c $63
	ld   e, c                                        ; $6f1e: $59
	sbc  [hl]                                        ; $6f1f: $9e
	inc  bc                                          ; $6f20: $03
	add  b                                           ; $6f21: $80
	ld   [bc], a                                     ; $6f22: $02
	sub  c                                           ; $6f23: $91
	ld   h, a                                        ; $6f24: $67
	sbc  c                                           ; $6f25: $99
	ld   h, c                                        ; $6f26: $61
	halt                                             ; $6f27: $76
	ld   a, c                                        ; $6f28: $79
	dec  c                                           ; $6f29: $0d
	ld   a, b                                        ; $6f2a: $78
	sbc  c                                           ; $6f2b: $99
	halt                                             ; $6f2c: $76
	ld   a, l                                        ; $6f2d: $7d
	dec  b                                           ; $6f2e: $05
	pop  de                                          ; $6f2f: $d1
	sbc  l                                           ; $6f30: $9d
	ld   a, b                                        ; $6f31: $78
	ld   e, c                                        ; $6f32: $59
	ld   [hl], c                                     ; $6f33: $71
	ld   l, l                                        ; $6f34: $6d
	rst  $38                                         ; $6f35: $ff
	rst  $38                                         ; $6f36: $ff
	dec  c                                           ; $6f37: $0d
	ld   [hl], l                                     ; $6f38: $75
	sub  b                                           ; $6f39: $90
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	dec  c                                           ; $6f3c: $0d
	nop                                              ; $6f3d: $00
	ld   a, [bc]                                     ; $6f3e: $0a
	inc  c                                           ; $6f3f: $0c
	dec  c                                           ; $6f40: $0d
	dec  de                                          ; $6f41: $1b
	dec  a                                           ; $6f42: $3d
	ld   bc, $1005                                   ; $6f43: $01 $05 $10
	sbc  c                                           ; $6f46: $99
	ld   a, b                                        ; $6f47: $78
	sub  a                                           ; $6f48: $97
	ld   h, c                                        ; $6f49: $61
	ld   d, d                                        ; $6f4a: $52
	ld   a, [$610d]                                  ; $6f4b: $fa $0d $61
	ld   h, c                                        ; $6f4e: $61
	ld   a, l                                        ; $6f4f: $7d
	sbc  [hl]                                        ; $6f50: $9e
	inc  b                                           ; $6f51: $04
	ld   l, l                                        ; $6f52: $6d
	ld   e, d                                        ; $6f53: $5a
	inc  bc                                          ; $6f54: $03
	sub  e                                           ; $6f55: $93
	sbc  c                                           ; $6f56: $99
	ld   a, [$0dfa]                                  ; $6f57: $fa $fa $0d
	nop                                              ; $6f5a: $00
	ld   a, [bc]                                     ; $6f5b: $0a
	inc  c                                           ; $6f5c: $0c
	ld   [bc], a                                     ; $6f5d: $02
	inc  de                                          ; $6f5e: $13
	nop                                              ; $6f5f: $00
	daa                                              ; $6f60: $27
	inc  b                                           ; $6f61: $04
	rlca                                             ; $6f62: $07
	add  hl, bc                                      ; $6f63: $09
	ld   b, $02                                      ; $6f64: $06 $02
	inc  b                                           ; $6f66: $04
	nop                                              ; $6f67: $00
	ld   b, $aa                                      ; $6f68: $06 $aa
	rlca                                             ; $6f6a: $07
	ld   d, $3e                                      ; $6f6b: $16 $3e
	inc  de                                          ; $6f6d: $13
	rrca                                             ; $6f6e: $0f
	rrca                                             ; $6f6f: $0f
	nop                                              ; $6f70: $00
	ld   bc, $0301                                   ; $6f71: $01 $01 $03
	adc  e                                           ; $6f74: $8b
	ld   [bc], a                                     ; $6f75: $02
	sub  [hl]                                        ; $6f76: $96
	ld   [bc], a                                     ; $6f77: $02
	ld   e, b                                        ; $6f78: $58
	ld   a, h                                        ; $6f79: $7c
	sbc  [hl]                                        ; $6f7a: $9e
	ld   a, l                                        ; $6f7b: $7d
	ld   e, c                                        ; $6f7c: $59
	ld   d, d                                        ; $6f7d: $52
	ld   a, c                                        ; $6f7e: $79
	inc  bc                                          ; $6f7f: $03
	ld   [de], a                                     ; $6f80: $12
	ld   [bc], a                                     ; $6f81: $02
	ld   c, h                                        ; $6f82: $4c
	rst  $38                                         ; $6f83: $ff
	rst  $38                                         ; $6f84: $ff
	dec  c                                           ; $6f85: $0d
	inc  b                                           ; $6f86: $04
	call nc, $1f06                                   ; $6f87: $d4 $06 $1f
	ld   a, l                                        ; $6f8a: $7d
	dec  b                                           ; $6f8b: $05
	and  b                                           ; $6f8c: $a0
	inc  bc                                          ; $6f8d: $03
	ld   d, a                                        ; $6f8e: $57
	ld   a, c                                        ; $6f8f: $79
	ld   l, a                                        ; $6f90: $6f
	and  c                                           ; $6f91: $a1
	sub  b                                           ; $6f92: $90
	ld   e, l                                        ; $6f93: $5d
	dec  c                                           ; $6f94: $0d
	nop                                              ; $6f95: $00
	dec  b                                           ; $6f96: $05
	add  b                                           ; $6f97: $80
	jp   nc, $0101                                   ; $6f98: $d2 $01 $01

	nop                                              ; $6f9b: $00
	ld   bc, $8c65                                   ; $6f9c: $01 $65 $8c
	ld   h, l                                        ; $6f9f: $65
	ld   l, l                                        ; $6fa0: $6d
	sbc  a                                           ; $6fa1: $9f
	dec  c                                           ; $6fa2: $0d
	nop                                              ; $6fa3: $00
	ld   a, [bc]                                     ; $6fa4: $0a
	rrca                                             ; $6fa5: $0f
	ld   a, [bc]                                     ; $6fa6: $0a
	inc  c                                           ; $6fa7: $0c
	ld   bc, $8e54                                   ; $6fa8: $01 $54 $8e
	rst  $38                                         ; $6fab: $ff
	rst  $38                                         ; $6fac: $ff
	dec  c                                           ; $6fad: $0d
	sub  [hl]                                        ; $6fae: $96
	ld   e, l                                        ; $6faf: $5d
	sub  d                                           ; $6fb0: $92
	ld   [hl], c                                     ; $6fb1: $71
	ld   l, l                                        ; $6fb2: $6d
	sbc  [hl]                                        ; $6fb3: $9e
	ld   [$9f00], sp                                 ; $6fb4: $08 $00 $9f
	dec  c                                           ; $6fb7: $0d
	nop                                              ; $6fb8: $00
	ld   a, [bc]                                     ; $6fb9: $0a
	rrca                                             ; $6fba: $0f
	nop                                              ; $6fbb: $00
	ld   bc, $020c                                   ; $6fbc: $01 $0c $02
	ld   c, $63                                      ; $6fbf: $0e $63
	inc  e                                           ; $6fc1: $1c
	add  hl, bc                                      ; $6fc2: $09
	ld   hl, $010f                                   ; $6fc3: $21 $0f $01
	sub  [hl]                                        ; $6fc6: $96
	ld   e, l                                        ; $6fc7: $5d
	sub  d                                           ; $6fc8: $92
	ld   [hl], c                                     ; $6fc9: $71
	ld   l, l                                        ; $6fca: $6d
	sbc  [hl]                                        ; $6fcb: $9e
	ld   [$5d00], sp                                 ; $6fcc: $08 $00 $5d
	and  c                                           ; $6fcf: $a1
	sbc  a                                           ; $6fd0: $9f
	dec  c                                           ; $6fd1: $0d
	ld   [bc], a                                     ; $6fd2: $02
	jp   z, Jump_068_587c                            ; $6fd3: $ca $7c $58

	ld   e, c                                        ; $6fd6: $59
	ld   h, b                                        ; $6fd7: $60
	ld   [hl], l                                     ; $6fd8: $75
	inc  bc                                          ; $6fd9: $03
	ld   e, e                                        ; $6fda: $5b
	ld   e, c                                        ; $6fdb: $59
	ld   [hl], c                                     ; $6fdc: $71
	ld   l, l                                        ; $6fdd: $6d
	sub  [hl]                                        ; $6fde: $96
	sbc  a                                           ; $6fdf: $9f
	dec  c                                           ; $6fe0: $0d
	nop                                              ; $6fe1: $00
	ld   a, [bc]                                     ; $6fe2: $0a
	inc  e                                           ; $6fe3: $1c
	ld   bc, $1111                                   ; $6fe4: $01 $11 $11
	dec  e                                           ; $6fe7: $1d
	ld   b, b                                        ; $6fe8: $40
	ld   de, $1103                                   ; $6fe9: $11 $03 $11
	ld   bc, $2803                                   ; $6fec: $01 $03 $28
	nop                                              ; $6fef: $00
	ld   bc, $9850                                   ; $6ff0: $01 $50 $98
	ld   e, d                                        ; $6ff3: $5a
	halt                                             ; $6ff4: $76
	ld   d, h                                        ; $6ff5: $54
	ld   h, d                                        ; $6ff6: $62
	ld   h, h                                        ; $6ff7: $64
	ld   d, d                                        ; $6ff8: $52
	adc  h                                           ; $6ff9: $8c
	ld   h, a                                        ; $6ffa: $67
	sbc  [hl]                                        ; $6ffb: $9e
	dec  c                                           ; $6ffc: $0d
	ld   [$6300], sp                                 ; $6ffd: $08 $00 $63
	and  c                                           ; $7000: $a1
	sbc  a                                           ; $7001: $9f
	dec  c                                           ; $7002: $0d
	nop                                              ; $7003: $00
	ld   a, [bc]                                     ; $7004: $0a
	inc  e                                           ; $7005: $1c
	ld   [bc], a                                     ; $7006: $02
	ld   de, $1d0a                                   ; $7007: $11 $0a $1d
	ld   b, b                                        ; $700a: $40
	ld   [de], a                                     ; $700b: $12
	inc  bc                                          ; $700c: $03
	ld   [de], a                                     ; $700d: $12
	ld   bc, $2803                                   ; $700e: $01 $03 $28
	nop                                              ; $7011: $00
	ld   bc, $6c03                                   ; $7012: $01 $03 $6c
	ld   h, l                                        ; $7015: $65
	ld   a, l                                        ; $7016: $7d
	ld   e, b                                        ; $7017: $58
	inc  bc                                          ; $7018: $03
	add  b                                           ; $7019: $80
	dec  b                                           ; $701a: $05
	db   $10                                         ; $701b: $10
	ld   a, c                                        ; $701c: $79
	ld   a, b                                        ; $701d: $78
	sbc  c                                           ; $701e: $99
	sub  [hl]                                        ; $701f: $96
	ld   d, h                                        ; $7020: $54
	ld   [hl], l                                     ; $7021: $75
	ld   h, a                                        ; $7022: $67
	dec  c                                           ; $7023: $0d
	sbc  l                                           ; $7024: $9d
	ld   a, e                                        ; $7025: $7b
	rst  $38                                         ; $7026: $ff
	rst  $38                                         ; $7027: $ff
	ld   [bc], a                                     ; $7028: $02
	sub  l                                           ; $7029: $95
	inc  bc                                          ; $702a: $03
	jp   c, $8c65                                    ; $702b: $da $65 $8c

	ld   h, l                                        ; $702e: $65
	ld   l, l                                        ; $702f: $6d
	sbc  l                                           ; $7030: $9d
	sbc  a                                           ; $7031: $9f
	dec  c                                           ; $7032: $0d
	nop                                              ; $7033: $00
	ld   a, [bc]                                     ; $7034: $0a
	inc  e                                           ; $7035: $1c
	inc  bc                                          ; $7036: $03
	inc  de                                          ; $7037: $13
	dec  bc                                          ; $7038: $0b
	dec  e                                           ; $7039: $1d
	ld   b, b                                        ; $703a: $40
	inc  de                                          ; $703b: $13
	inc  bc                                          ; $703c: $03
	inc  de                                          ; $703d: $13
	ld   bc, $2803                                   ; $703e: $01 $03 $28
	nop                                              ; $7041: $00
	ld   bc, $7850                                   ; $7042: $01 $50 $78
	ld   l, l                                        ; $7045: $6d
	ld   e, d                                        ; $7046: $5a
	ld   d, d                                        ; $7047: $52
	ld   a, b                                        ; $7048: $78
	ld   e, c                                        ; $7049: $59
	ld   [hl], c                                     ; $704a: $71
	ld   l, l                                        ; $704b: $6d
	sub  a                                           ; $704c: $97
	sbc  [hl]                                        ; $704d: $9e
	dec  c                                           ; $704e: $0d
	inc  b                                           ; $704f: $04
	sbc  $02                                         ; $7050: $de $02
	xor  c                                           ; $7052: $a9
	inc  bc                                          ; $7053: $03
	add  d                                           ; $7054: $82
	ld   a, c                                        ; $7055: $79
	add  b                                           ; $7056: $80
	ld   e, d                                        ; $7057: $5a
	ld   d, d                                        ; $7058: $52
	ld   e, d                                        ; $7059: $5a
	inc  bc                                          ; $705a: $03
	add  b                                           ; $705b: $80
	ld   [hl], h                                     ; $705c: $74
	ld   d, d                                        ; $705d: $52
	ld   l, l                                        ; $705e: $6d
	sbc  l                                           ; $705f: $9d
	sbc  a                                           ; $7060: $9f
	dec  c                                           ; $7061: $0d
	ld   d, b                                        ; $7062: $50
	sbc  b                                           ; $7063: $98
	ld   e, d                                        ; $7064: $5a
	halt                                             ; $7065: $76
	ld   d, h                                        ; $7066: $54
	sbc  a                                           ; $7067: $9f
	dec  c                                           ; $7068: $0d
	nop                                              ; $7069: $00
	ld   a, [bc]                                     ; $706a: $0a
	inc  e                                           ; $706b: $1c
	ld   b, $11                                      ; $706c: $06 $11
	ld   a, [bc]                                     ; $706e: $0a
	dec  e                                           ; $706f: $1d
	ld   b, b                                        ; $7070: $40
	ld   d, $03                                      ; $7071: $16 $03
	ld   d, $01                                      ; $7073: $16 $01
	inc  bc                                          ; $7075: $03
	jr   z, jr_068_7078                              ; $7076: $28 $00

jr_068_7078:
	ld   bc, $9992                                   ; $7078: $01 $92 $99
	ld   h, [hl]                                     ; $707b: $66
	sub  c                                           ; $707c: $91
	ld   a, e                                        ; $707d: $7b
	ld   d, [hl]                                     ; $707e: $56
	ld   e, c                                        ; $707f: $59
	sbc  [hl]                                        ; $7080: $9e
	ld   [$9f00], sp                                 ; $7081: $08 $00 $9f
	dec  c                                           ; $7084: $0d
	nop                                              ; $7085: $00
	ld   a, [bc]                                     ; $7086: $0a
	inc  e                                           ; $7087: $1c
	inc  b                                           ; $7088: $04
	ld   de, $1d23                                   ; $7089: $11 $23 $1d
	ld   b, b                                        ; $708c: $40
	inc  d                                           ; $708d: $14
	inc  bc                                          ; $708e: $03
	inc  d                                           ; $708f: $14
	ld   bc, $2803                                   ; $7090: $01 $03 $28
	nop                                              ; $7093: $00
	ld   bc, $526f                                   ; $7094: $01 $6f $52
	ld   [bc], a                                     ; $7097: $02
	inc  de                                          ; $7098: $13
	ld   l, a                                        ; $7099: $6f
	sub  c                                           ; $709a: $91
	and  c                                           ; $709b: $a1
	sbc  [hl]                                        ; $709c: $9e
	xor  h                                           ; $709d: $ac
	call nz, $a5b4                                   ; $709e: $c4 $b4 $a5
	and  l                                           ; $70a1: $a5
	ld   a, [$000d]                                  ; $70a2: $fa $0d $00
	ld   a, [bc]                                     ; $70a5: $0a
	inc  e                                           ; $70a6: $1c
	dec  b                                           ; $70a7: $05
	ld   de, $1d0a                                   ; $70a8: $11 $0a $1d
	ld   b, b                                        ; $70ab: $40
	dec  d                                           ; $70ac: $15
	inc  bc                                          ; $70ad: $03
	dec  d                                           ; $70ae: $15
	ld   bc, $2803                                   ; $70af: $01 $03 $28
	nop                                              ; $70b2: $00
	ld   bc, $6267                                   ; $70b3: $01 $67 $62
	ld   d, d                                        ; $70b6: $52
	sub  d                                           ; $70b7: $92
	and  c                                           ; $70b8: $a1
	ld   a, [$080d]                                  ; $70b9: $fa $0d $08
	nop                                              ; $70bc: $00
	ld   a, l                                        ; $70bd: $7d
	and  c                                           ; $70be: $a1
	ld   a, [$0dfa]                                  ; $70bf: $fa $fa $0d
	nop                                              ; $70c2: $00
	ld   a, [bc]                                     ; $70c3: $0a
	inc  e                                           ; $70c4: $1c
	ld   a, [bc]                                     ; $70c5: $0a
	ld   hl, $010d                                   ; $70c6: $21 $0d $01
	inc  b                                           ; $70c9: $04
	adc  a                                           ; $70ca: $8f
	inc  b                                           ; $70cb: $04
	jr   jr_068_7147                                 ; $70cc: $18 $79

	sub  [hl]                                        ; $70ce: $96
	ld   e, l                                        ; $70cf: $5d
	sub  d                                           ; $70d0: $92
	ld   [hl], c                                     ; $70d1: $71
	ld   l, l                                        ; $70d2: $6d
	rst  $38                                         ; $70d3: $ff
	rst  $38                                         ; $70d4: $ff
	dec  c                                           ; $70d5: $0d
	ld   h, d                                        ; $70d6: $62
	ld   e, l                                        ; $70d7: $5d
	sbc  e                                           ; $70d8: $9b
	ld   d, h                                        ; $70d9: $54
	ld   h, e                                        ; $70da: $63
	and  c                                           ; $70db: $a1
	ld   l, [hl]                                     ; $70dc: $6e
	ld   [hl], c                                     ; $70dd: $71
	ld   l, l                                        ; $70de: $6d
	ld   a, b                                        ; $70df: $78
	sbc  a                                           ; $70e0: $9f
	dec  c                                           ; $70e1: $0d
	ld   d, b                                        ; $70e2: $50
	sbc  b                                           ; $70e3: $98
	ld   e, d                                        ; $70e4: $5a
	halt                                             ; $70e5: $76
	sub  [hl]                                        ; $70e6: $96
	sbc  a                                           ; $70e7: $9f
	dec  c                                           ; $70e8: $0d
	nop                                              ; $70e9: $00
	ld   a, [bc]                                     ; $70ea: $0a
	ld   bc, $a502                                   ; $70eb: $01 $02 $a5
	inc  b                                           ; $70ee: $04
	xor  d                                           ; $70ef: $aa
	ld   a, l                                        ; $70f0: $7d
	sub  b                                           ; $70f1: $90
	ld   d, h                                        ; $70f2: $54
	sbc  [hl]                                        ; $70f3: $9e
	sub  h                                           ; $70f4: $94
	ld   [hl], c                                     ; $70f5: $71
	ld   e, l                                        ; $70f6: $5d
	sbc  b                                           ; $70f7: $98
	dec  c                                           ; $70f8: $0d
	inc  bc                                          ; $70f9: $03
	and  a                                           ; $70fa: $a7
	adc  l                                           ; $70fb: $8d
	ld   a, b                                        ; $70fc: $78
	sbc  a                                           ; $70fd: $9f
	dec  c                                           ; $70fe: $0d
	nop                                              ; $70ff: $00
	ld   a, [bc]                                     ; $7100: $0a
	dec  c                                           ; $7101: $0d
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	rrca                                             ; $7104: $0f
	nop                                              ; $7105: $00
	ld   bc, $1e09                                   ; $7106: $01 $09 $1e
	add  hl, hl                                      ; $7109: $29
	rlca                                             ; $710a: $07
	nop                                              ; $710b: $00
	rlca                                             ; $710c: $07
	ld   c, e                                        ; $710d: $4b
	dec  bc                                          ; $710e: $0b
	inc  bc                                          ; $710f: $03
	ld   de, $9601                                   ; $7110: $11 $01 $96
	inc  hl                                          ; $7113: $23
	inc  bc                                          ; $7114: $03
	ld   [de], a                                     ; $7115: $12
	ld   bc, $2396                                   ; $7116: $01 $96 $23
	inc  e                                           ; $7119: $1c
	inc  bc                                          ; $711a: $03
	inc  de                                          ; $711b: $13
	ld   bc, $2396                                   ; $711c: $01 $96 $23
	inc  e                                           ; $711f: $1c
	inc  bc                                          ; $7120: $03
	ld   d, $01                                      ; $7121: $16 $01
	sub  [hl]                                        ; $7123: $96
	inc  hl                                          ; $7124: $23
	inc  e                                           ; $7125: $1c
	inc  bc                                          ; $7126: $03
	dec  d                                           ; $7127: $15
	ld   bc, $2396                                   ; $7128: $01 $96 $23
	inc  e                                           ; $712b: $1c
	inc  bc                                          ; $712c: $03
	inc  d                                           ; $712d: $14
	ld   bc, $2396                                   ; $712e: $01 $96 $23
	inc  e                                           ; $7131: $1c
	nop                                              ; $7132: $00
	rlca                                             ; $7133: $07
	ld   a, c                                        ; $7134: $79
	ld   [$1103], sp                                 ; $7135: $08 $03 $11
	inc  bc                                          ; $7138: $03
	ld   [de], a                                     ; $7139: $12
	dec  h                                           ; $713a: $25
	inc  bc                                          ; $713b: $03
	ld   de, $1303                                   ; $713c: $11 $03 $13
	dec  h                                           ; $713f: $25
	inc  e                                           ; $7140: $1c
	inc  bc                                          ; $7141: $03
	ld   de, $1603                                   ; $7142: $11 $03 $16
	dec  h                                           ; $7145: $25
	inc  e                                           ; $7146: $1c

jr_068_7147:
	inc  bc                                          ; $7147: $03
	ld   de, $1503                                   ; $7148: $11 $03 $15
	dec  h                                           ; $714b: $25
	inc  e                                           ; $714c: $1c
	inc  bc                                          ; $714d: $03
	ld   de, $1403                                   ; $714e: $11 $03 $14
	dec  h                                           ; $7151: $25
	inc  e                                           ; $7152: $1c
	nop                                              ; $7153: $00
	rlca                                             ; $7154: $07
	ld   sp, hl                                      ; $7155: $f9
	ld   [$1203], sp                                 ; $7156: $08 $03 $12

Call_068_7159:
	inc  bc                                          ; $7159: $03
	ld   de, $0325                                   ; $715a: $11 $25 $03
	ld   [de], a                                     ; $715d: $12
	inc  bc                                          ; $715e: $03
	inc  de                                          ; $715f: $13
	dec  h                                           ; $7160: $25
	inc  e                                           ; $7161: $1c
	inc  bc                                          ; $7162: $03
	ld   [de], a                                     ; $7163: $12
	inc  bc                                          ; $7164: $03
	ld   d, $25                                      ; $7165: $16 $25
	inc  e                                           ; $7167: $1c
	inc  bc                                          ; $7168: $03
	ld   [de], a                                     ; $7169: $12
	inc  bc                                          ; $716a: $03
	dec  d                                           ; $716b: $15
	dec  h                                           ; $716c: $25
	inc  e                                           ; $716d: $1c
	inc  bc                                          ; $716e: $03
	ld   [de], a                                     ; $716f: $12
	inc  bc                                          ; $7170: $03
	inc  d                                           ; $7171: $14
	dec  h                                           ; $7172: $25
	inc  e                                           ; $7173: $1c
	nop                                              ; $7174: $00
	rlca                                             ; $7175: $07
	ld   a, [hl]                                     ; $7176: $7e
	add  hl, bc                                      ; $7177: $09
	inc  bc                                          ; $7178: $03
	inc  de                                          ; $7179: $13
	inc  bc                                          ; $717a: $03
	ld   de, $0325                                   ; $717b: $11 $25 $03
	inc  de                                          ; $717e: $13
	inc  bc                                          ; $717f: $03
	ld   [de], a                                     ; $7180: $12
	dec  h                                           ; $7181: $25
	inc  e                                           ; $7182: $1c
	inc  bc                                          ; $7183: $03
	inc  de                                          ; $7184: $13
	inc  bc                                          ; $7185: $03
	ld   d, $25                                      ; $7186: $16 $25
	inc  e                                           ; $7188: $1c
	inc  bc                                          ; $7189: $03
	inc  de                                          ; $718a: $13
	inc  bc                                          ; $718b: $03
	dec  d                                           ; $718c: $15
	dec  h                                           ; $718d: $25
	inc  e                                           ; $718e: $1c
	inc  bc                                          ; $718f: $03
	inc  de                                          ; $7190: $13
	inc  bc                                          ; $7191: $03
	inc  d                                           ; $7192: $14
	dec  h                                           ; $7193: $25
	inc  e                                           ; $7194: $1c
	nop                                              ; $7195: $00
	rlca                                             ; $7196: $07
	db   $fd                                         ; $7197: $fd
	add  hl, bc                                      ; $7198: $09
	inc  bc                                          ; $7199: $03
	ld   d, $03                                      ; $719a: $16 $03
	ld   de, $0325                                   ; $719c: $11 $25 $03
	ld   d, $03                                      ; $719f: $16 $03
	ld   [de], a                                     ; $71a1: $12
	dec  h                                           ; $71a2: $25
	inc  e                                           ; $71a3: $1c
	inc  bc                                          ; $71a4: $03
	ld   d, $03                                      ; $71a5: $16 $03
	inc  de                                          ; $71a7: $13
	dec  h                                           ; $71a8: $25
	inc  e                                           ; $71a9: $1c
	inc  bc                                          ; $71aa: $03
	ld   d, $03                                      ; $71ab: $16 $03
	dec  d                                           ; $71ad: $15
	dec  h                                           ; $71ae: $25
	inc  e                                           ; $71af: $1c
	inc  bc                                          ; $71b0: $03
	ld   d, $03                                      ; $71b1: $16 $03
	inc  d                                           ; $71b3: $14
	dec  h                                           ; $71b4: $25
	inc  e                                           ; $71b5: $1c
	nop                                              ; $71b6: $00
	rlca                                             ; $71b7: $07
	sub  $0a                                         ; $71b8: $d6 $0a
	inc  bc                                          ; $71ba: $03
	dec  d                                           ; $71bb: $15
	inc  bc                                          ; $71bc: $03
	ld   de, $0325                                   ; $71bd: $11 $25 $03
	dec  d                                           ; $71c0: $15
	inc  bc                                          ; $71c1: $03
	ld   [de], a                                     ; $71c2: $12
	dec  h                                           ; $71c3: $25
	inc  e                                           ; $71c4: $1c
	inc  bc                                          ; $71c5: $03
	dec  d                                           ; $71c6: $15
	inc  bc                                          ; $71c7: $03
	inc  de                                          ; $71c8: $13
	dec  h                                           ; $71c9: $25
	inc  e                                           ; $71ca: $1c
	inc  bc                                          ; $71cb: $03
	dec  d                                           ; $71cc: $15
	inc  bc                                          ; $71cd: $03
	ld   d, $25                                      ; $71ce: $16 $25
	inc  e                                           ; $71d0: $1c
	inc  bc                                          ; $71d1: $03
	dec  d                                           ; $71d2: $15
	inc  bc                                          ; $71d3: $03
	inc  d                                           ; $71d4: $14
	dec  h                                           ; $71d5: $25
	inc  e                                           ; $71d6: $1c
	nop                                              ; $71d7: $00
	ld   b, $77                                      ; $71d8: $06 $77
	ld   a, [bc]                                     ; $71da: $0a
	ld   c, $86                                      ; $71db: $0e $86
	dec  de                                          ; $71dd: $1b
	dec  a                                           ; $71de: $3d
	rrca                                             ; $71df: $0f
	ld   bc, $0112                                   ; $71e0: $01 $12 $01
	ld   d, b                                        ; $71e3: $50
	add  h                                           ; $71e4: $84
	ld   a, b                                        ; $71e5: $78
	ld   d, d                                        ; $71e6: $52
	sbc  [hl]                                        ; $71e7: $9e
	ld   [$6300], sp                                 ; $71e8: $08 $00 $63
	and  c                                           ; $71eb: $a1
	ld   a, [$000d]                                  ; $71ec: $fa $0d $00
	ld   a, [bc]                                     ; $71ef: $0a
	ld   bc, $9604                                   ; $71f0: $01 $04 $96
	inc  bc                                          ; $71f3: $03
	ld   h, c                                        ; $71f4: $61
	ld   [bc], a                                     ; $71f5: $02
	cp   h                                           ; $71f6: $bc
	dec  b                                           ; $71f7: $05
	db   $db                                         ; $71f8: $db
	di                                               ; $71f9: $f3
	inc  bc                                          ; $71fa: $03
	adc  a                                           ; $71fb: $8f
	ld   [bc], a                                     ; $71fc: $02
	sbc  b                                           ; $71fd: $98
	inc  b                                           ; $71fe: $04
	sbc  c                                           ; $71ff: $99
	inc  bc                                          ; $7200: $03
	sub  b                                           ; $7201: $90
	ld   a, [$000d]                                  ; $7202: $fa $0d $00
	ld   a, [bc]                                     ; $7205: $0a
	inc  c                                           ; $7206: $0c
	ld   [$020c], sp                                 ; $7207: $08 $0c $02
	ld   d, $3e                                      ; $720a: $16 $3e
	inc  de                                          ; $720c: $13
	rrca                                             ; $720d: $0f
	rrca                                             ; $720e: $0f
	ld   bc, $0110                                   ; $720f: $01 $10 $01
	inc  bc                                          ; $7212: $03
	adc  e                                           ; $7213: $8b
	ld   [bc], a                                     ; $7214: $02
	sub  [hl]                                        ; $7215: $96
	ld   [bc], a                                     ; $7216: $02
	ld   e, b                                        ; $7217: $58
	ld   a, h                                        ; $7218: $7c
	ld   a, l                                        ; $7219: $7d
	ld   e, c                                        ; $721a: $59
	ld   d, d                                        ; $721b: $52
	ld   a, c                                        ; $721c: $79
	inc  bc                                          ; $721d: $03
	ld   [de], a                                     ; $721e: $12
	ld   [bc], a                                     ; $721f: $02
	ld   c, h                                        ; $7220: $4c
	rst  $38                                         ; $7221: $ff
	rst  $38                                         ; $7222: $ff
	dec  c                                           ; $7223: $0d
	inc  b                                           ; $7224: $04
	call nc, $1f06                                   ; $7225: $d4 $06 $1f
	ld   a, l                                        ; $7228: $7d
	dec  b                                           ; $7229: $05
	and  b                                           ; $722a: $a0
	inc  bc                                          ; $722b: $03
	ld   d, a                                        ; $722c: $57
	ld   a, c                                        ; $722d: $79
	ld   l, a                                        ; $722e: $6f
	and  c                                           ; $722f: $a1
	sub  b                                           ; $7230: $90
	ld   e, l                                        ; $7231: $5d
	dec  c                                           ; $7232: $0d
	ld   h, l                                        ; $7233: $65
	adc  h                                           ; $7234: $8c
	ld   h, l                                        ; $7235: $65
	ld   l, l                                        ; $7236: $6d
	sbc  a                                           ; $7237: $9f
	dec  c                                           ; $7238: $0d
	nop                                              ; $7239: $00
	ld   a, [bc]                                     ; $723a: $0a
	rrca                                             ; $723b: $0f
	ld   bc, $0111                                   ; $723c: $01 $11 $01
	ld   [$6300], sp                                 ; $723f: $08 $00 $63
	and  c                                           ; $7242: $a1
	sbc  [hl]                                        ; $7243: $9e
	dec  c                                           ; $7244: $0d
	ld   e, b                                        ; $7245: $58
	ld   e, a                                        ; $7246: $5f
	ld   e, d                                        ; $7247: $5a
	ld   a, l                                        ; $7248: $7d
	ld   d, b                                        ; $7249: $50
	sbc  b                                           ; $724a: $98
	adc  h                                           ; $724b: $8c
	ld   l, c                                        ; $724c: $69
	and  c                                           ; $724d: $a1
	ld   e, c                                        ; $724e: $59
	ld   sp, hl                                      ; $724f: $f9
	dec  c                                           ; $7250: $0d
	nop                                              ; $7251: $00
	ld   a, [bc]                                     ; $7252: $0a
	rrca                                             ; $7253: $0f
	nop                                              ; $7254: $00
	ld   bc, $020c                                   ; $7255: $01 $0c $02
	ld   b, $d4                                      ; $7258: $06 $d4
	dec  bc                                          ; $725a: $0b
	ld   c, $86                                      ; $725b: $0e $86
	dec  de                                          ; $725d: $1b
	dec  a                                           ; $725e: $3d
	rrca                                             ; $725f: $0f
	ld   [bc], a                                     ; $7260: $02
	dec  bc                                          ; $7261: $0b
	ld   bc, $0008                                   ; $7262: $01 $08 $00
	ld   h, e                                        ; $7265: $63
	and  c                                           ; $7266: $a1
	sbc  [hl]                                        ; $7267: $9e
	dec  c                                           ; $7268: $0d
	ld   e, b                                        ; $7269: $58
	ld   h, e                                        ; $726a: $63
	ld   e, d                                        ; $726b: $5a
	sbc  b                                           ; $726c: $98
	ld   a, b                                        ; $726d: $78
	ld   h, e                                        ; $726e: $63
	ld   d, d                                        ; $726f: $52
	ld   a, [$000d]                                  ; $7270: $fa $0d $00
	ld   a, [bc]                                     ; $7273: $0a
	ld   bc, $9003                                   ; $7274: $01 $03 $90
	inc  bc                                          ; $7277: $03
	cp   e                                           ; $7278: $bb
	inc  b                                           ; $7279: $04
	ld   [hl], a                                     ; $727a: $77
	inc  bc                                          ; $727b: $03
	or   l                                           ; $727c: $b5
	dec  b                                           ; $727d: $05
	inc  d                                           ; $727e: $14
	di                                               ; $727f: $f3
	ld   [bc], a                                     ; $7280: $02
	ret  c                                           ; $7281: $d8

	inc  b                                           ; $7282: $04
	ld   sp, $047c                                   ; $7283: $31 $7c $04
	adc  [hl]                                        ; $7286: $8e
	ld   a, [$000d]                                  ; $7287: $fa $0d $00
	ld   a, [bc]                                     ; $728a: $0a
	inc  c                                           ; $728b: $0c
	ld   [$020c], sp                                 ; $728c: $08 $0c $02
	ld   d, $3e                                      ; $728f: $16 $3e
	inc  de                                          ; $7291: $13
	rrca                                             ; $7292: $0f
	rrca                                             ; $7293: $0f
	ld   [bc], a                                     ; $7294: $02
	add  hl, bc                                      ; $7295: $09
	ld   bc, $8b03                                   ; $7296: $01 $03 $8b
	ld   [bc], a                                     ; $7299: $02
	sub  [hl]                                        ; $729a: $96
	ld   [bc], a                                     ; $729b: $02
	ld   e, b                                        ; $729c: $58
	ld   a, h                                        ; $729d: $7c
	ld   a, l                                        ; $729e: $7d
	ld   e, c                                        ; $729f: $59
	ld   d, d                                        ; $72a0: $52
	ld   a, c                                        ; $72a1: $79
	inc  bc                                          ; $72a2: $03
	ld   [de], a                                     ; $72a3: $12
	ld   [bc], a                                     ; $72a4: $02
	ld   c, h                                        ; $72a5: $4c
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	dec  c                                           ; $72a8: $0d
	inc  b                                           ; $72a9: $04
	call nc, $1f06                                   ; $72aa: $d4 $06 $1f
	ld   a, l                                        ; $72ad: $7d
	dec  b                                           ; $72ae: $05
	and  b                                           ; $72af: $a0
	inc  bc                                          ; $72b0: $03
	ld   d, a                                        ; $72b1: $57
	ld   a, c                                        ; $72b2: $79
	ld   l, a                                        ; $72b3: $6f
	and  c                                           ; $72b4: $a1
	sub  b                                           ; $72b5: $90
	ld   e, l                                        ; $72b6: $5d
	dec  c                                           ; $72b7: $0d
	ld   h, l                                        ; $72b8: $65
	adc  h                                           ; $72b9: $8c
	ld   h, l                                        ; $72ba: $65
	ld   l, l                                        ; $72bb: $6d
	sbc  l                                           ; $72bc: $9d
	sbc  a                                           ; $72bd: $9f
	dec  c                                           ; $72be: $0d
	nop                                              ; $72bf: $00
	ld   a, [bc]                                     ; $72c0: $0a
	rrca                                             ; $72c1: $0f
	ld   [bc], a                                     ; $72c2: $02
	ld   a, [bc]                                     ; $72c3: $0a
	ld   bc, $6e8c                                   ; $72c4: $01 $8c $6e
	adc  h                                           ; $72c7: $8c
	ld   l, [hl]                                     ; $72c8: $6e
	ld   [hl], l                                     ; $72c9: $75
	ld   h, a                                        ; $72ca: $67
	sbc  l                                           ; $72cb: $9d
	ld   a, e                                        ; $72cc: $7b
	rst  $38                                         ; $72cd: $ff
	rst  $38                                         ; $72ce: $ff
	dec  c                                           ; $72cf: $0d
	ld   [$6300], sp                                 ; $72d0: $08 $00 $63
	and  c                                           ; $72d3: $a1
	sbc  a                                           ; $72d4: $9f
	dec  c                                           ; $72d5: $0d
	nop                                              ; $72d6: $00
	ld   a, [bc]                                     ; $72d7: $0a
	rrca                                             ; $72d8: $0f
	nop                                              ; $72d9: $00
	ld   bc, $020c                                   ; $72da: $01 $0c $02
	ld   b, $d4                                      ; $72dd: $06 $d4
	dec  bc                                          ; $72df: $0b
	ld   c, $86                                      ; $72e0: $0e $86
	dec  de                                          ; $72e2: $1b
	dec  a                                           ; $72e3: $3d
	rrca                                             ; $72e4: $0f
	inc  bc                                          ; $72e5: $03
	ld   c, $01                                      ; $72e6: $0e $01
	ld   h, e                                        ; $72e8: $63
	ld   e, d                                        ; $72e9: $5a
	sbc  b                                           ; $72ea: $98
	ld   a, b                                        ; $72eb: $78
	ld   h, e                                        ; $72ec: $63
	ld   d, d                                        ; $72ed: $52
	ld   a, [$080d]                                  ; $72ee: $fa $0d $08
	nop                                              ; $72f1: $00
	ld   e, l                                        ; $72f2: $5d
	and  c                                           ; $72f3: $a1
	ld   a, [$000d]                                  ; $72f4: $fa $0d $00
	ld   a, [bc]                                     ; $72f7: $0a
	ld   bc, $ceba                                   ; $72f8: $01 $ba $ce
	or   c                                           ; $72fb: $b1
	ei                                               ; $72fc: $fb
	db   $eb                                         ; $72fd: $eb
	jp   nz, $faac                                   ; $72fe: $c2 $ac $fa

	dec  c                                           ; $7301: $0d
	nop                                              ; $7302: $00
	ld   a, [bc]                                     ; $7303: $0a
	inc  c                                           ; $7304: $0c
	ld   [$020c], sp                                 ; $7305: $08 $0c $02
	ld   d, $3e                                      ; $7308: $16 $3e
	inc  de                                          ; $730a: $13
	rrca                                             ; $730b: $0f
	rrca                                             ; $730c: $0f
	inc  bc                                          ; $730d: $03
	ld   [$0301], sp                                 ; $730e: $08 $01 $03
	adc  e                                           ; $7311: $8b
	ld   [bc], a                                     ; $7312: $02
	sub  [hl]                                        ; $7313: $96
	ld   [bc], a                                     ; $7314: $02
	ld   e, b                                        ; $7315: $58
	ld   a, h                                        ; $7316: $7c
	ld   a, l                                        ; $7317: $7d
	ld   e, c                                        ; $7318: $59
	ld   d, d                                        ; $7319: $52
	ld   a, c                                        ; $731a: $79
	inc  bc                                          ; $731b: $03
	ld   [de], a                                     ; $731c: $12
	ld   [bc], a                                     ; $731d: $02
	ld   c, h                                        ; $731e: $4c
	rst  $38                                         ; $731f: $ff
	rst  $38                                         ; $7320: $ff
	dec  c                                           ; $7321: $0d
	inc  b                                           ; $7322: $04
	call nc, $1f06                                   ; $7323: $d4 $06 $1f
	ld   a, l                                        ; $7326: $7d
	dec  b                                           ; $7327: $05
	and  b                                           ; $7328: $a0
	inc  bc                                          ; $7329: $03
	ld   d, a                                        ; $732a: $57
	ld   a, c                                        ; $732b: $79
	ld   l, a                                        ; $732c: $6f
	and  c                                           ; $732d: $a1
	sub  b                                           ; $732e: $90
	ld   e, l                                        ; $732f: $5d
	dec  c                                           ; $7330: $0d
	ld   h, l                                        ; $7331: $65
	adc  h                                           ; $7332: $8c
	ld   h, l                                        ; $7333: $65
	ld   l, l                                        ; $7334: $6d
	sbc  a                                           ; $7335: $9f
	dec  c                                           ; $7336: $0d
	nop                                              ; $7337: $00
	ld   a, [bc]                                     ; $7338: $0a
	rrca                                             ; $7339: $0f
	inc  bc                                          ; $733a: $03
	dec  bc                                          ; $733b: $0b
	ld   bc, $8450                                   ; $733c: $01 $50 $84
	ld   a, b                                        ; $733f: $78
	ld   e, c                                        ; $7340: $59
	ld   [hl], c                                     ; $7341: $71
	ld   l, l                                        ; $7342: $6d
	sbc  l                                           ; $7343: $9d
	ld   a, e                                        ; $7344: $7b
	rst  $38                                         ; $7345: $ff
	rst  $38                                         ; $7346: $ff
	dec  c                                           ; $7347: $0d
	inc  b                                           ; $7348: $04
	ld   c, $03                                      ; $7349: $0e $03
	sbc  l                                           ; $734b: $9d
	inc  b                                           ; $734c: $04
	and  [hl]                                        ; $734d: $a6
	sbc  [hl]                                        ; $734e: $9e
	ld   [$5d00], sp                                 ; $734f: $08 $00 $5d
	and  c                                           ; $7352: $a1
	ld   sp, hl                                      ; $7353: $f9
	dec  c                                           ; $7354: $0d
	nop                                              ; $7355: $00
	ld   a, [bc]                                     ; $7356: $0a
	rrca                                             ; $7357: $0f
	nop                                              ; $7358: $00
	ld   bc, $020c                                   ; $7359: $01 $0c $02
	ld   b, $d4                                      ; $735c: $06 $d4
	dec  bc                                          ; $735e: $0b
	ld   c, $86                                      ; $735f: $0e $86
	dec  de                                          ; $7361: $1b
	dec  a                                           ; $7362: $3d
	rrca                                             ; $7363: $0f
	ld   b, $0b                                      ; $7364: $06 $0b
	ld   bc, $8450                                   ; $7366: $01 $50 $84
	ld   a, e                                        ; $7369: $7b
	ld   d, [hl]                                     ; $736a: $56
	sbc  [hl]                                        ; $736b: $9e
	ld   [$fa00], sp                                 ; $736c: $08 $00 $fa
	dec  c                                           ; $736f: $0d
	nop                                              ; $7370: $00
	ld   a, [bc]                                     ; $7371: $0a
	ld   bc, $9a61                                   ; $7372: $01 $61 $9a
	ld   [hl], l                                     ; $7375: $75
	sub  b                                           ; $7376: $90
	ld   e, l                                        ; $7377: $5d
	sub  a                                           ; $7378: $97
	ld   d, d                                        ; $7379: $52
	sub  d                                           ; $737a: $92
	ld   e, d                                        ; $737b: $5a
	sbc  d                                           ; $737c: $9a
	ld   a, [$000d]                                  ; $737d: $fa $0d $00
	ld   a, [bc]                                     ; $7380: $0a
	inc  c                                           ; $7381: $0c
	ld   [$020c], sp                                 ; $7382: $08 $0c $02
	ld   d, $3e                                      ; $7385: $16 $3e
	inc  de                                          ; $7387: $13
	rrca                                             ; $7388: $0f
	rrca                                             ; $7389: $0f
	ld   b, $09                                      ; $738a: $06 $09
	ld   bc, $8b03                                   ; $738c: $01 $03 $8b
	ld   [bc], a                                     ; $738f: $02
	sub  [hl]                                        ; $7390: $96
	ld   [bc], a                                     ; $7391: $02
	ld   e, b                                        ; $7392: $58
	ld   a, h                                        ; $7393: $7c
	ld   a, l                                        ; $7394: $7d
	ld   e, c                                        ; $7395: $59
	ld   d, d                                        ; $7396: $52
	ld   a, c                                        ; $7397: $79
	inc  bc                                          ; $7398: $03
	ld   [de], a                                     ; $7399: $12
	ld   [bc], a                                     ; $739a: $02
	ld   c, h                                        ; $739b: $4c
	rst  $38                                         ; $739c: $ff
	rst  $38                                         ; $739d: $ff
	dec  c                                           ; $739e: $0d
	inc  b                                           ; $739f: $04
	call nc, $1f06                                   ; $73a0: $d4 $06 $1f
	ld   a, l                                        ; $73a3: $7d
	dec  b                                           ; $73a4: $05
	and  b                                           ; $73a5: $a0
	inc  bc                                          ; $73a6: $03
	ld   d, a                                        ; $73a7: $57
	ld   a, c                                        ; $73a8: $79
	ld   l, a                                        ; $73a9: $6f
	and  c                                           ; $73aa: $a1
	sub  b                                           ; $73ab: $90
	ld   e, l                                        ; $73ac: $5d
	sbc  a                                           ; $73ad: $9f
	dec  c                                           ; $73ae: $0d
	nop                                              ; $73af: $00
	ld   a, [bc]                                     ; $73b0: $0a
	rrca                                             ; $73b1: $0f
	ld   b, $0a                                      ; $73b2: $06 $0a
	ld   bc, $8450                                   ; $73b4: $01 $50 $84
	ld   a, b                                        ; $73b7: $78
	ld   e, c                                        ; $73b8: $59
	ld   [hl], c                                     ; $73b9: $71
	ld   l, l                                        ; $73ba: $6d
	ld   a, b                                        ; $73bb: $78
	sbc  [hl]                                        ; $73bc: $9e
	ld   [$9f00], sp                                 ; $73bd: $08 $00 $9f
	dec  c                                           ; $73c0: $0d
	adc  h                                           ; $73c1: $8c
	sbc  [hl]                                        ; $73c2: $9e
	ld   [bc], a                                     ; $73c3: $02
	xor  d                                           ; $73c4: $aa
	ld   [hl], l                                     ; $73c5: $75
	db   $e3                                         ; $73c6: $e3
	cp   b                                           ; $73c7: $b8
	ld   e, b                                        ; $73c8: $58
	ld   h, d                                        ; $73c9: $62
	sbc  d                                           ; $73ca: $9a
	sub  [hl]                                        ; $73cb: $96
	ld   a, b                                        ; $73cc: $78
	sbc  a                                           ; $73cd: $9f
	dec  c                                           ; $73ce: $0d
	nop                                              ; $73cf: $00
	ld   a, [bc]                                     ; $73d0: $0a
	rrca                                             ; $73d1: $0f
	nop                                              ; $73d2: $00
	ld   bc, $020c                                   ; $73d3: $01 $0c $02
	ld   b, $d4                                      ; $73d6: $06 $d4
	dec  bc                                          ; $73d8: $0b
	ld   c, $86                                      ; $73d9: $0e $86
	dec  de                                          ; $73db: $1b
	dec  a                                           ; $73dc: $3d
	rrca                                             ; $73dd: $0f
	inc  b                                           ; $73de: $04
	inc  h                                           ; $73df: $24
	ld   bc, $526f                                   ; $73e0: $01 $6f $52
	ld   [bc], a                                     ; $73e3: $02
	inc  de                                          ; $73e4: $13
	ld   l, a                                        ; $73e5: $6f
	sub  c                                           ; $73e6: $91
	and  c                                           ; $73e7: $a1
	sbc  [hl]                                        ; $73e8: $9e
	ld   d, b                                        ; $73e9: $50
	add  h                                           ; $73ea: $84
	ld   a, b                                        ; $73eb: $78
	ld   d, d                                        ; $73ec: $52
	ld   a, [$000d]                                  ; $73ed: $fa $0d $00
	ld   a, [bc]                                     ; $73f0: $0a
	ld   bc, $fb56                                   ; $73f1: $01 $56 $fb
	ld   d, d                                        ; $73f4: $52
	ld   a, [$000d]                                  ; $73f5: $fa $0d $00
	ld   a, [bc]                                     ; $73f8: $0a
	inc  c                                           ; $73f9: $0c
	ld   [$020c], sp                                 ; $73fa: $08 $0c $02
	ld   d, $3e                                      ; $73fd: $16 $3e
	inc  de                                          ; $73ff: $13
	rrca                                             ; $7400: $0f
	rrca                                             ; $7401: $0f
	inc  b                                           ; $7402: $04
	ld   [hl+], a                                    ; $7403: $22
	ld   bc, $7192                                   ; $7404: $01 $92 $71
	ld   l, l                                        ; $7407: $6d
	sub  [hl]                                        ; $7408: $96
	ld   a, [$a30d]                                  ; $7409: $fa $0d $a3
	and  l                                           ; $740c: $a5
	db   $ec                                         ; $740d: $ec
	cp   d                                           ; $740e: $ba
	sbc  [hl]                                        ; $740f: $9e
	sub  d                                           ; $7410: $92
	ld   [hl], c                                     ; $7411: $71
	ld   [hl], d                                     ; $7412: $72
	ld   e, a                                        ; $7413: $5f
	ld   l, l                                        ; $7414: $6d
	sub  [hl]                                        ; $7415: $96
	ld   a, [$000d]                                  ; $7416: $fa $0d $00
	ld   a, [bc]                                     ; $7419: $0a
	rrca                                             ; $741a: $0f
	inc  b                                           ; $741b: $04
	inc  hl                                          ; $741c: $23
	ld   bc, $526e                                   ; $741d: $01 $6e $52
	ld   h, [hl]                                     ; $7420: $66
	sub  l                                           ; $7421: $95
	ld   d, h                                        ; $7422: $54
	add  h                                           ; $7423: $84
	sbc  [hl]                                        ; $7424: $9e
	ld   l, a                                        ; $7425: $6f
	ld   d, d                                        ; $7426: $52
	ld   [bc], a                                     ; $7427: $02
	inc  de                                          ; $7428: $13
	ld   l, a                                        ; $7429: $6f
	sub  c                                           ; $742a: $91
	and  c                                           ; $742b: $a1
	ld   sp, hl                                      ; $742c: $f9
	dec  c                                           ; $742d: $0d
	nop                                              ; $742e: $00
	ld   a, [bc]                                     ; $742f: $0a
	rrca                                             ; $7430: $0f
	nop                                              ; $7431: $00
	ld   bc, $020c                                   ; $7432: $01 $0c $02
	ld   b, $d4                                      ; $7435: $06 $d4
	dec  bc                                          ; $7437: $0b
	ld   c, $86                                      ; $7438: $0e $86
	dec  de                                          ; $743a: $1b
	dec  a                                           ; $743b: $3d
	rrca                                             ; $743c: $0f
	dec  b                                           ; $743d: $05
	db   $10                                         ; $743e: $10
	ld   bc, $8450                                   ; $743f: $01 $50 $84
	ld   a, b                                        ; $7442: $78
	ld   d, d                                        ; $7443: $52
	ld   a, [$0810]                                  ; $7444: $fa $10 $08
	nop                                              ; $7447: $00
	ld   a, l                                        ; $7448: $7d
	and  c                                           ; $7449: $a1
	ld   a, [$000d]                                  ; $744a: $fa $0d $00
	ld   a, [bc]                                     ; $744d: $0a
	ld   bc, $7f02                                   ; $744e: $01 $02 $7f
	ld   e, a                                        ; $7451: $5f

Jump_068_7452:
	ld   a, [wInGameButtonsPressed]                                  ; $7452: $fa $10 $c2
	call nc, $ddef                                   ; $7455: $d4 $ef $dd
	ld   l, l                                        ; $7458: $6d
	ld   l, a                                        ; $7459: $6f
	ld   a, [$000d]                                  ; $745a: $fa $0d $00
	ld   a, [bc]                                     ; $745d: $0a
	inc  c                                           ; $745e: $0c

Jump_068_745f:
	ld   [$020c], sp                                 ; $745f: $08 $0c $02
	ld   d, $3e                                      ; $7462: $16 $3e
	inc  de                                          ; $7464: $13

Call_068_7465:
Jump_068_7465:
	rrca                                             ; $7465: $0f
	rrca                                             ; $7466: $0f
	dec  b                                           ; $7467: $05
	add  hl, bc                                      ; $7468: $09
	ld   bc, $8b03                                   ; $7469: $01 $03 $8b
	ld   [bc], a                                     ; $746c: $02
	sub  [hl]                                        ; $746d: $96
	ld   [bc], a                                     ; $746e: $02
	ld   e, b                                        ; $746f: $58
	ld   a, h                                        ; $7470: $7c

Jump_068_7471:
	ld   a, l                                        ; $7471: $7d
	ld   e, c                                        ; $7472: $59
	ld   d, d                                        ; $7473: $52
	ld   a, c                                        ; $7474: $79
	inc  bc                                          ; $7475: $03
	ld   [de], a                                     ; $7476: $12
	ld   [bc], a                                     ; $7477: $02
	ld   c, h                                        ; $7478: $4c
	ld   a, [$920d]                                  ; $7479: $fa $0d $92
	ld   [hl], c                                     ; $747c: $71
	ld   h, c                                        ; $747d: $61
	ld   h, e                                        ; $747e: $63
	and  c                                           ; $747f: $a1
	dec  b                                           ; $7480: $05
	and  b                                           ; $7481: $a0
	inc  bc                                          ; $7482: $03
	ld   d, a                                        ; $7483: $57
	ld   a, c                                        ; $7484: $79
	ld   e, b                                        ; $7485: $58
	ld   h, l                                        ; $7486: $65
	sub  c                                           ; $7487: $91
	ld   e, c                                        ; $7488: $59
	sub  d                                           ; $7489: $92
	ld   a, [$000d]                                  ; $748a: $fa $0d $00
	ld   a, [bc]                                     ; $748d: $0a
	rrca                                             ; $748e: $0f
	dec  b                                           ; $748f: $05
	ld   a, [bc]                                     ; $7490: $0a
	ld   bc, $8450                                   ; $7491: $01 $50 $84
	ld   a, b                                        ; $7494: $78
	ld   e, c                                        ; $7495: $59
	ld   [hl], c                                     ; $7496: $71
	ld   l, l                                        ; $7497: $6d
	ld   a, b                                        ; $7498: $78
	ld   c, a                                        ; $7499: $4f
	rst  $38                                         ; $749a: $ff
	rst  $38                                         ; $749b: $ff
	dec  c                                           ; $749c: $0d
	ld   [$7d00], sp                                 ; $749d: $08 $00 $7d
	and  c                                           ; $74a0: $a1
	sbc  a                                           ; $74a1: $9f
	dec  c                                           ; $74a2: $0d
	nop                                              ; $74a3: $00
	ld   a, [bc]                                     ; $74a4: $0a
	rrca                                             ; $74a5: $0f
	nop                                              ; $74a6: $00
	ld   bc, $020c                                   ; $74a7: $01 $0c $02
	ld   b, $d4                                      ; $74aa: $06 $d4
	dec  bc                                          ; $74ac: $0b
	ld   c, $86                                      ; $74ad: $0e $86
	dec  de                                          ; $74af: $1b
	dec  a                                           ; $74b0: $3d
	rrca                                             ; $74b1: $0f
	add  hl, bc                                      ; $74b2: $09
	db   $10                                         ; $74b3: $10
	ld   bc, $8450                                   ; $74b4: $01 $50 $84
	ld   a, b                                        ; $74b7: $78
	ld   d, d                                        ; $74b8: $52
	ld   a, [$0810]                                  ; $74b9: $fa $10 $08
	nop                                              ; $74bc: $00
	ld   e, l                                        ; $74bd: $5d
	and  c                                           ; $74be: $a1
	ld   a, [$000d]                                  ; $74bf: $fa $0d $00
	ld   a, [bc]                                     ; $74c2: $0a
	ld   bc, $3206                                   ; $74c3: $01 $06 $32
	ld   b, $e1                                      ; $74c6: $06 $e1
	ld   b, $e2                                      ; $74c8: $06 $e2
	ld   b, $a1                                      ; $74ca: $06 $a1
	di                                               ; $74cc: $f3
	dec  b                                           ; $74cd: $05
	sbc  d                                           ; $74ce: $9a
	inc  b                                           ; $74cf: $04
	inc  l                                           ; $74d0: $2c
	dec  b                                           ; $74d1: $05
	ld   h, b                                        ; $74d2: $60
	ld   b, $b9                                      ; $74d3: $06 $b9
	ld   a, [$0dfa]                                  ; $74d5: $fa $fa $0d
	nop                                              ; $74d8: $00
	ld   a, [bc]                                     ; $74d9: $0a
	inc  c                                           ; $74da: $0c
	ld   [$020c], sp                                 ; $74db: $08 $0c $02
	ld   d, $3e                                      ; $74de: $16 $3e
	inc  de                                          ; $74e0: $13
	rrca                                             ; $74e1: $0f
	rrca                                             ; $74e2: $0f
	add  hl, bc                                      ; $74e3: $09
	db   $10                                         ; $74e4: $10
	ld   bc, $8b03                                   ; $74e5: $01 $03 $8b
	ld   [bc], a                                     ; $74e8: $02
	sub  [hl]                                        ; $74e9: $96
	ld   [bc], a                                     ; $74ea: $02
	ld   e, b                                        ; $74eb: $58
	ld   a, h                                        ; $74ec: $7c
	ld   a, l                                        ; $74ed: $7d
	ld   e, c                                        ; $74ee: $59
	ld   d, d                                        ; $74ef: $52
	ld   a, c                                        ; $74f0: $79
	inc  bc                                          ; $74f1: $03
	ld   [de], a                                     ; $74f2: $12
	ld   [bc], a                                     ; $74f3: $02
	ld   c, h                                        ; $74f4: $4c
	ld   a, [$040d]                                  ; $74f5: $fa $0d $04
	call nc, $1f06                                   ; $74f8: $d4 $06 $1f
	ld   a, l                                        ; $74fb: $7d
	dec  b                                           ; $74fc: $05
	and  b                                           ; $74fd: $a0
	inc  bc                                          ; $74fe: $03
	ld   d, a                                        ; $74ff: $57
	ld   a, c                                        ; $7500: $79
	ld   l, a                                        ; $7501: $6f
	and  c                                           ; $7502: $a1
	sub  b                                           ; $7503: $90
	ld   e, l                                        ; $7504: $5d
	sbc  a                                           ; $7505: $9f
	dec  c                                           ; $7506: $0d
	nop                                              ; $7507: $00
	ld   a, [bc]                                     ; $7508: $0a
	rrca                                             ; $7509: $0f
	add  hl, bc                                      ; $750a: $09
	rrca                                             ; $750b: $0f
	ld   bc, $8450                                   ; $750c: $01 $50 $84
	ld   a, b                                        ; $750f: $78
	ld   e, c                                        ; $7510: $59
	ld   [hl], c                                     ; $7511: $71
	ld   l, l                                        ; $7512: $6d
	ld   a, b                                        ; $7513: $78
	sbc  [hl]                                        ; $7514: $9e
	dec  c                                           ; $7515: $0d
	ld   [$5d00], sp                                 ; $7516: $08 $00 $5d
	and  c                                           ; $7519: $a1
	sbc  a                                           ; $751a: $9f
	dec  c                                           ; $751b: $0d
	ld   h, l                                        ; $751c: $65
	ld   e, c                                        ; $751d: $59
	ld   h, l                                        ; $751e: $65
	sbc  [hl]                                        ; $751f: $9e
	sub  [hl]                                        ; $7520: $96
	ld   e, l                                        ; $7521: $5d
	dec  b                                           ; $7522: $05
	di                                               ; $7523: $f3
	ld   d, [hl]                                     ; $7524: $56
	ld   [hl], h                                     ; $7525: $74
	ld   e, l                                        ; $7526: $5d
	sbc  d                                           ; $7527: $9a
	ld   l, l                                        ; $7528: $6d
	rst  $38                                         ; $7529: $ff
	rst  $38                                         ; $752a: $ff
	dec  c                                           ; $752b: $0d
	nop                                              ; $752c: $00
	ld   a, [bc]                                     ; $752d: $0a
	rrca                                             ; $752e: $0f
	nop                                              ; $752f: $00
	ld   bc, $020c                                   ; $7530: $01 $0c $02
	ld   b, $d4                                      ; $7533: $06 $d4
	dec  bc                                          ; $7535: $0b
	dec  c                                           ; $7536: $0d
	nop                                              ; $7537: $00
	nop                                              ; $7538: $00
	ld   c, $63                                      ; $7539: $0e $63
	inc  e                                           ; $753b: $1c
	ld   a, [bc]                                     ; $753c: $0a
	jr   nz, jr_068_754b                             ; $753d: $20 $0c

	ld   bc, $2002                                   ; $753f: $01 $02 $20
	inc  bc                                          ; $7542: $03
	ld   l, a                                        ; $7543: $6f
	ld   a, l                                        ; $7544: $7d
	ld   [hl], a                                     ; $7545: $77
	ld   d, h                                        ; $7546: $54
	ld   a, b                                        ; $7547: $78
	sbc  c                                           ; $7548: $99
	ld   e, c                                        ; $7549: $59
	halt                                             ; $754a: $76

jr_068_754b:
	dec  b                                           ; $754b: $05
	pop  de                                          ; $754c: $d1
	ld   [hl], c                                     ; $754d: $71
	ld   l, l                                        ; $754e: $6d
	ld   e, d                                        ; $754f: $5a
	dec  c                                           ; $7550: $0d
	inc  b                                           ; $7551: $04
	ld   c, $03                                      ; $7552: $0e $03
	sub  b                                           ; $7554: $90
	ld   l, l                                        ; $7555: $6d
	ld   l, a                                        ; $7556: $6f
	ld   e, d                                        ; $7557: $5a
	ld   [bc], a                                     ; $7558: $02
	xor  c                                           ; $7559: $a9
	ld   a, c                                        ; $755a: $79
	ld   [bc], a                                     ; $755b: $02
	ld   a, e                                        ; $755c: $7b
	ld   [hl], c                                     ; $755d: $71
	ld   [hl], h                                     ; $755e: $74
	ld   e, l                                        ; $755f: $5d
	sbc  d                                           ; $7560: $9a
	ld   [hl], h                                     ; $7561: $74
	dec  c                                           ; $7562: $0d
	sub  [hl]                                        ; $7563: $96
	ld   e, c                                        ; $7564: $59
	ld   [hl], c                                     ; $7565: $71
	ld   l, l                                        ; $7566: $6d
	rst  $38                                         ; $7567: $ff
	rst  $38                                         ; $7568: $ff
	dec  c                                           ; $7569: $0d
	nop                                              ; $756a: $00
	ld   a, [bc]                                     ; $756b: $0a
	rrca                                             ; $756c: $0f
	dec  bc                                          ; $756d: $0b
	nop                                              ; $756e: $00
	ld   bc, $6c02                                   ; $756f: $01 $02 $6c
	inc  bc                                          ; $7572: $03
	ld   d, h                                        ; $7573: $54
	ld   [hl], l                                     ; $7574: $75
	ld   a, h                                        ; $7575: $7c
	add  b                                           ; $7576: $80
	ld   e, d                                        ; $7577: $5a
	ld   d, d                                        ; $7578: $52
	ld   a, l                                        ; $7579: $7d
	inc  bc                                          ; $757a: $03
	ld   l, h                                        ; $757b: $6c
	ld   a, b                                        ; $757c: $78
	ld   e, l                                        ; $757d: $5d
	sbc  [hl]                                        ; $757e: $9e
	dec  c                                           ; $757f: $0d
	inc  bc                                          ; $7580: $03
	ld   a, $05                                      ; $7581: $3e $05
	pop  bc                                          ; $7583: $c1
	inc  bc                                          ; $7584: $03
	or   b                                           ; $7585: $b0
	ld   a, l                                        ; $7586: $7d
	ld   a, b                                        ; $7587: $78
	ld   h, l                                        ; $7588: $65
	ld   [hl], l                                     ; $7589: $75
	ld   h, a                                        ; $758a: $67
	sbc  a                                           ; $758b: $9f
	dec  c                                           ; $758c: $0d
	nop                                              ; $758d: $00
	ld   a, [bc]                                     ; $758e: $0a
	inc  e                                           ; $758f: $1c
	ld   a, [bc]                                     ; $7590: $0a
	ld   hl, $010d                                   ; $7591: $21 $0d $01
	ld   [$ff00], sp                                 ; $7594: $08 $00 $ff
	rst  $38                                         ; $7597: $ff
	dec  c                                           ; $7598: $0d
	ld   e, b                                        ; $7599: $58
	inc  bc                                          ; $759a: $03
	ld   c, a                                        ; $759b: $4f
	ld   a, c                                        ; $759c: $79
	or   d                                           ; $759d: $b2
	xor  l                                           ; $759e: $ad
	ld   e, d                                        ; $759f: $5a
	ld   a, b                                        ; $75a0: $78
	ld   e, l                                        ; $75a1: $5d
	ld   [hl], h                                     ; $75a2: $74
	inc  b                                           ; $75a3: $04
	ld   c, c                                        ; $75a4: $49
	sub  [hl]                                        ; $75a5: $96
	sbc  b                                           ; $75a6: $98
	ld   l, [hl]                                     ; $75a7: $6e
	sbc  a                                           ; $75a8: $9f
	dec  c                                           ; $75a9: $0d
	ld   h, d                                        ; $75aa: $62
	ld   e, l                                        ; $75ab: $5d
	sbc  e                                           ; $75ac: $9b
	ld   d, h                                        ; $75ad: $54
	ld   h, e                                        ; $75ae: $63
	and  c                                           ; $75af: $a1
	ld   l, [hl]                                     ; $75b0: $6e
	ld   [hl], c                                     ; $75b1: $71
	ld   l, l                                        ; $75b2: $6d
	ld   a, b                                        ; $75b3: $78
	sbc  a                                           ; $75b4: $9f
	dec  c                                           ; $75b5: $0d
	nop                                              ; $75b6: $00
	ld   a, [bc]                                     ; $75b7: $0a
	ld   bc, $a502                                   ; $75b8: $01 $02 $a5
	inc  b                                           ; $75bb: $04
	xor  d                                           ; $75bc: $aa
	ld   a, l                                        ; $75bd: $7d
	sub  b                                           ; $75be: $90
	ld   d, h                                        ; $75bf: $54
	sbc  [hl]                                        ; $75c0: $9e
	sub  h                                           ; $75c1: $94
	ld   [hl], c                                     ; $75c2: $71
	ld   e, l                                        ; $75c3: $5d
	sbc  b                                           ; $75c4: $98
	dec  c                                           ; $75c5: $0d
	inc  bc                                          ; $75c6: $03
	and  a                                           ; $75c7: $a7
	adc  l                                           ; $75c8: $8d
	ld   a, b                                        ; $75c9: $78
	sbc  a                                           ; $75ca: $9f
	dec  c                                           ; $75cb: $0d
	nop                                              ; $75cc: $00
	ld   a, [bc]                                     ; $75cd: $0a
	dec  c                                           ; $75ce: $0d
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	rrca                                             ; $75d1: $0f
	nop                                              ; $75d2: $00
	ld   bc, $1e09                                   ; $75d3: $01 $09 $1e
	add  hl, hl                                      ; $75d6: $29
	rlca                                             ; $75d7: $07
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	ld   [bc], a                                     ; $75da: $02
	ld   b, $01                                      ; $75db: $06 $01
	add  hl, bc                                      ; $75dd: $09
	jr   nz, jr_068_75e0                             ; $75de: $20 $00

jr_068_75e0:
	ld   c, $7b                                      ; $75e0: $0e $7b
	inc  e                                           ; $75e2: $1c
	add  hl, bc                                      ; $75e3: $09
	nop                                              ; $75e4: $00
	nop                                              ; $75e5: $00
	ld   [bc], a                                     ; $75e6: $02
	ld   bc, $5092                                   ; $75e7: $01 $92 $50
	sbc  [hl]                                        ; $75ea: $9e
	ld   [$5d00], sp                                 ; $75eb: $08 $00 $5d
	and  c                                           ; $75ee: $a1
	sbc  a                                           ; $75ef: $9f
	dec  c                                           ; $75f0: $0d
	ld   l, e                                        ; $75f1: $6b
	sbc  d                                           ; $75f2: $9a
	ld   h, [hl]                                     ; $75f3: $66
	sub  c                                           ; $75f4: $91
	sbc  [hl]                                        ; $75f5: $9e
	ld   h, e                                        ; $75f6: $63
	ld   [hl], c                                     ; $75f7: $71
	ld   l, e                                        ; $75f8: $6b
	ld   e, l                                        ; $75f9: $5d
	rst  ToBoot                                         ; $75fa: $c7
	cp   d                                           ; $75fb: $ba
	ret                                              ; $75fc: $c9


	and  b                                           ; $75fd: $a0
	dec  c                                           ; $75fe: $0d
	dec  b                                           ; $75ff: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7600: $cf
	adc  a                                           ; $7601: $8f
	sub  [hl]                                        ; $7602: $96
	ld   d, h                                        ; $7603: $54
	ld   e, c                                        ; $7604: $59
	sbc  a                                           ; $7605: $9f
	dec  c                                           ; $7606: $0d
	nop                                              ; $7607: $00
	ld   a, [bc]                                     ; $7608: $0a
	ld   bc, $3802                                   ; $7609: $01 $02 $38
	inc  b                                           ; $760c: $04
	ld   d, d                                        ; $760d: $52
	and  b                                           ; $760e: $a0
	inc  bc                                          ; $760f: $03
	ld   sp, $75a1                                   ; $7610: $31 $a1 $75
	ld   e, l                                        ; $7613: $5d
	sbc  d                                           ; $7614: $9a
	sbc  a                                           ; $7615: $9f
	dec  c                                           ; $7616: $0d
	nop                                              ; $7617: $00
	ld   a, [bc]                                     ; $7618: $0a
	dec  c                                           ; $7619: $0d
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	rrca                                             ; $761c: $0f
	nop                                              ; $761d: $00
	ld   bc, $1c28                                   ; $761e: $01 $28 $1c
	add  hl, bc                                      ; $7621: $09
	ld   [bc], a                                     ; $7622: $02
	ld   [bc], a                                     ; $7623: $02
	ld   bc, $7c61                                   ; $7624: $01 $61 $7c
	ld   [bc], a                                     ; $7627: $02
	jr   c, jr_068_762e                              ; $7628: $38 $04

	ld   d, d                                        ; $762a: $52
	ld   [hl], l                                     ; $762b: $75
	ld   d, d                                        ; $762c: $52
	ld   d, d                                        ; $762d: $52

jr_068_762e:
	and  c                                           ; $762e: $a1
	ld   l, [hl]                                     ; $762f: $6e
	ld   a, b                                        ; $7630: $78
	ld   sp, hl                                      ; $7631: $f9
	dec  c                                           ; $7632: $0d
	nop                                              ; $7633: $00
	ld   a, [bc]                                     ; $7634: $0a
	jr   jr_068_7639                                 ; $7635: $18 $02

	nop                                              ; $7637: $00
	ld   a, l                                        ; $7638: $7d

jr_068_7639:
	ld   d, d                                        ; $7639: $52
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	ld   d, d                                        ; $763c: $52
	ld   d, d                                        ; $763d: $52
	ld   d, [hl]                                     ; $763e: $56
	nop                                              ; $763f: $00
	ld   bc, $7307                                   ; $7640: $01 $07 $73
	nop                                              ; $7643: $00
	ld   [bc], a                                     ; $7644: $02
	ld   [bc], a                                     ; $7645: $02
	ld   bc, $2000                                   ; $7646: $01 $00 $20
	nop                                              ; $7649: $00
	rlca                                             ; $764a: $07
	add  hl, sp                                      ; $764b: $39
	nop                                              ; $764c: $00
	ld   [bc], a                                     ; $764d: $02
	ld   [bc], a                                     ; $764e: $02
	ld   bc, $2001                                   ; $764f: $01 $01 $20
	nop                                              ; $7652: $00
	inc  e                                           ; $7653: $1c
	add  hl, bc                                      ; $7654: $09
	ld   [bc], a                                     ; $7655: $02
	ld   [bc], a                                     ; $7656: $02
	ld   bc, $6596                                   ; $7657: $01 $96 $65
	rst  $38                                         ; $765a: $ff
	rst  $38                                         ; $765b: $ff
	dec  c                                           ; $765c: $0d
	ld   b, $a5                                      ; $765d: $06 $a5
	ld   b, $a6                                      ; $765f: $06 $a6
	inc  bc                                          ; $7661: $03
	xor  b                                           ; $7662: $a8
	dec  b                                           ; $7663: $05
	rst  $38                                         ; $7664: $ff
	ld   l, [hl]                                     ; $7665: $6e
	ld   e, c                                        ; $7666: $59
	sub  a                                           ; $7667: $97
	halt                                             ; $7668: $76
	ld   d, d                                        ; $7669: $52
	ld   [hl], c                                     ; $766a: $71
	ld   [hl], h                                     ; $766b: $74
	sbc  [hl]                                        ; $766c: $9e
	dec  c                                           ; $766d: $0d
	ld   [bc], a                                     ; $766e: $02
	and  c                                           ; $766f: $a1
	and  b                                           ; $7670: $a0
	inc  b                                           ; $7671: $04
	sub  h                                           ; $7672: $94
	ld   e, l                                        ; $7673: $5d
	and  c                                           ; $7674: $a1
	ld   h, [hl]                                     ; $7675: $66
	sub  c                                           ; $7676: $91
	ld   a, b                                        ; $7677: $78
	ld   d, d                                        ; $7678: $52
	ld   l, h                                        ; $7679: $6c
	sbc  a                                           ; $767a: $9f
	dec  c                                           ; $767b: $0d

Jump_068_767c:
	nop                                              ; $767c: $00
	ld   a, [bc]                                     ; $767d: $0a
	ld   bc, $7d75                                   ; $767e: $01 $75 $7d
	sbc  [hl]                                        ; $7681: $9e
	dec  b                                           ; $7682: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7683: $cf
	adc  a                                           ; $7684: $8f
	ld   a, [$000d]                                  ; $7685: $fa $0d $00
	ld   a, [bc]                                     ; $7688: $0a
	dec  c                                           ; $7689: $0d
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	rrca                                             ; $768c: $0f
	nop                                              ; $768d: $00
	ld   bc, $0527                                   ; $768e: $01 $27 $05
	rlca                                             ; $7691: $07
	cp   d                                           ; $7692: $ba
	nop                                              ; $7693: $00
	ld   [bc], a                                     ; $7694: $02
	inc  b                                           ; $7695: $04
	nop                                              ; $7696: $00
	ld   b, $72                                      ; $7697: $06 $72
	ld   bc, $091c                                   ; $7699: $01 $1c $09
	ld   bc, $0501                                   ; $769c: $01 $01 $05
	ld   b, b                                        ; $769f: $40
	ld   d, l                                        ; $76a0: $55
	inc  bc                                          ; $76a1: $03
	ld   d, l                                        ; $76a2: $55
	ld   bc, $2801                                   ; $76a3: $01 $01 $28
	nop                                              ; $76a6: $00
	ld   bc, $7192                                   ; $76a7: $01 $92 $71
	ld   l, l                                        ; $76aa: $6d
	ld   a, b                                        ; $76ab: $78
	sbc  [hl]                                        ; $76ac: $9e
	ld   [$5d00], sp                                 ; $76ad: $08 $00 $5d
	and  c                                           ; $76b0: $a1
	sbc  a                                           ; $76b1: $9f
	dec  c                                           ; $76b2: $0d
	ld   a, b                                        ; $76b3: $78
	ld   e, c                                        ; $76b4: $59
	ld   a, b                                        ; $76b5: $78
	ld   e, c                                        ; $76b6: $59
	ld   a, h                                        ; $76b7: $7c
	inc  bc                                          ; $76b8: $03
	xor  b                                           ; $76b9: $a8
	ld   d, d                                        ; $76ba: $52
	add  h                                           ; $76bb: $84
	sbc  b                                           ; $76bc: $98
	ld   l, [hl]                                     ; $76bd: $6e
	ld   [hl], c                                     ; $76be: $71
	ld   l, l                                        ; $76bf: $6d
	ld   l, h                                        ; $76c0: $6c
	sbc  a                                           ; $76c1: $9f
	dec  c                                           ; $76c2: $0d
	nop                                              ; $76c3: $00
	ld   a, [bc]                                     ; $76c4: $0a
	ld   bc, $7c61                                   ; $76c5: $01 $61 $7c
	ld   [bc], a                                     ; $76c8: $02

Call_068_76c9:
	jp   $9e7d                                       ; $76c9: $c3 $7d $9e


	inc  b                                           ; $76cc: $04
	rst  $10                                         ; $76cd: $d7
	inc  b                                           ; $76ce: $04
	ld   hl, $0b04                                   ; $76cf: $21 $04 $0b
	inc  bc                                          ; $76d2: $03
	ld   h, h                                        ; $76d3: $64
	ld   a, c                                        ; $76d4: $79
	sub  b                                           ; $76d5: $90
	dec  c                                           ; $76d6: $0d
	inc  b                                           ; $76d7: $04
	ld   l, a                                        ; $76d8: $6f
	ld   [bc], a                                     ; $76d9: $02
	ld   [hl], h                                     ; $76da: $74
	ld   h, l                                        ; $76db: $65
	ld   [hl], h                                     ; $76dc: $74
	ld   e, b                                        ; $76dd: $58
	ld   e, l                                        ; $76de: $5d
	sub  [hl]                                        ; $76df: $96
	sbc  a                                           ; $76e0: $9f
	dec  c                                           ; $76e1: $0d
	nop                                              ; $76e2: $00
	ld   a, [bc]                                     ; $76e3: $0a
	rrca                                             ; $76e4: $0f
	nop                                              ; $76e5: $00
	ld   bc, $0401                                   ; $76e6: $01 $01 $04
	ld   c, $03                                      ; $76e9: $0e $03
	sub  b                                           ; $76eb: $90
	ld   h, e                                        ; $76ec: $63
	and  c                                           ; $76ed: $a1
	rst  $38                                         ; $76ee: $ff
	rst  $38                                         ; $76ef: $ff
	dec  c                                           ; $76f0: $0d
	ld   d, b                                        ; $76f1: $50
	sbc  b                                           ; $76f2: $98
	ld   e, d                                        ; $76f3: $5a
	halt                                             ; $76f4: $76
	ld   d, h                                        ; $76f5: $54
	ld   h, d                                        ; $76f6: $62
	ld   h, h                                        ; $76f7: $64
	ld   d, d                                        ; $76f8: $52
	adc  h                                           ; $76f9: $8c
	ld   h, l                                        ; $76fa: $65
	ld   l, l                                        ; $76fb: $6d
	ld   a, [$0dfa]                                  ; $76fc: $fa $fa $0d
	nop                                              ; $76ff: $00
	ld   a, [bc]                                     ; $7700: $0a
	rrca                                             ; $7701: $0f
	add  hl, bc                                      ; $7702: $09
	ld   bc, $5401                                   ; $7703: $01 $01 $54
	and  c                                           ; $7706: $a1
	sbc  [hl]                                        ; $7707: $9e
	sub  [hl]                                        ; $7708: $96
	ld   e, l                                        ; $7709: $5d
	ld   e, d                                        ; $770a: $5a
	and  c                                           ; $770b: $a1
	ld   a, [hl]                                     ; $770c: $7e
	ld   [hl], c                                     ; $770d: $71
	ld   l, l                                        ; $770e: $6d
	ld   a, b                                        ; $770f: $78
	sbc  a                                           ; $7710: $9f
	dec  c                                           ; $7711: $0d
	nop                                              ; $7712: $00
	ld   a, [bc]                                     ; $7713: $0a
	dec  c                                           ; $7714: $0d
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	rrca                                             ; $7717: $0f
	nop                                              ; $7718: $00
	ld   bc, $1e09                                   ; $7719: $01 $09 $1e
	rlca                                             ; $771c: $07
	ld   hl, sp+$01                                  ; $771d: $f8 $01
	ld   [bc], a                                     ; $771f: $02
	rlca                                             ; $7720: $07
	ld   bc, $2001                                   ; $7721: $01 $01 $20
	nop                                              ; $7724: $00
	rlca                                             ; $7725: $07
	sub  a                                           ; $7726: $97
	dec  b                                           ; $7727: $05
	ld   [bc], a                                     ; $7728: $02
	rlca                                             ; $7729: $07
	ld   bc, $2004                                   ; $772a: $01 $04 $20
	nop                                              ; $772d: $00
	rlca                                             ; $772e: $07
	ld   a, [de]                                     ; $772f: $1a
	inc  bc                                          ; $7730: $03
	ld   [bc], a                                     ; $7731: $02
	rlca                                             ; $7732: $07
	ld   bc, $2002                                   ; $7733: $01 $02 $20
	nop                                              ; $7736: $00
	rlca                                             ; $7737: $07
	sbc  h                                           ; $7738: $9c
	ld   b, $02                                      ; $7739: $06 $02
	rlca                                             ; $773b: $07
	ld   bc, $2005                                   ; $773c: $01 $05 $20
	nop                                              ; $773f: $00
	rlca                                             ; $7740: $07
	adc  e                                           ; $7741: $8b
	inc  b                                           ; $7742: $04
	ld   [bc], a                                     ; $7743: $02
	rlca                                             ; $7744: $07
	ld   bc, $2003                                   ; $7745: $01 $03 $20
	nop                                              ; $7748: $00
	rlca                                             ; $7749: $07
	push de                                          ; $774a: $d5
	rlca                                             ; $774b: $07
	ld   [bc], a                                     ; $774c: $02
	rlca                                             ; $774d: $07
	ld   bc, $2006                                   ; $774e: $01 $06 $20
	nop                                              ; $7751: $00
	rrca                                             ; $7752: $0f
	nop                                              ; $7753: $00
	ld   bc, $8c01                                   ; $7754: $01 $01 $8c
	rst  $38                                         ; $7757: $ff
	rst  $38                                         ; $7758: $ff
	inc  b                                           ; $7759: $04
	ld   a, l                                        ; $775a: $7d
	ld   e, a                                        ; $775b: $5f
	ld   l, l                                        ; $775c: $6d
	rst  $38                                         ; $775d: $ff
	rst  $38                                         ; $775e: $ff
	dec  c                                           ; $775f: $0d
	nop                                              ; $7760: $00
	ld   a, [bc]                                     ; $7761: $0a
	inc  e                                           ; $7762: $1c
	add  hl, bc                                      ; $7763: $09
	ld   [bc], a                                     ; $7764: $02
	ld   [bc], a                                     ; $7765: $02
	ld   bc, $2803                                   ; $7766: $01 $03 $28
	inc  b                                           ; $7769: $04
	ld   c, b                                        ; $776a: $48
	ld   l, [hl]                                     ; $776b: $6e
	ld   [hl], c                                     ; $776c: $71
	ld   l, l                                        ; $776d: $6d
	ld   a, b                                        ; $776e: $78
	sbc  [hl]                                        ; $776f: $9e
	dec  c                                           ; $7770: $0d
	ld   [$5d00], sp                                 ; $7771: $08 $00 $5d
	and  c                                           ; $7774: $a1
	sbc  a                                           ; $7775: $9f
	dec  c                                           ; $7776: $0d
	nop                                              ; $7777: $00
	ld   a, [bc]                                     ; $7778: $0a
	inc  e                                           ; $7779: $1c
	add  hl, bc                                      ; $777a: $09
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	ld   bc, $508c                                   ; $777d: $01 $8c $50
	sbc  [hl]                                        ; $7780: $9e
	ld   [bc], a                                     ; $7781: $02
	and  l                                           ; $7782: $a5
	inc  b                                           ; $7783: $04
	xor  d                                           ; $7784: $aa
	ld   a, l                                        ; $7785: $7d
	ld   e, c                                        ; $7786: $59
	ld   a, b                                        ; $7787: $78
	sbc  b                                           ; $7788: $98
	ld   [bc], a                                     ; $7789: $02
	call nc, Call_068_798f                           ; $778a: $d4 $8f $79
	dec  c                                           ; $778d: $0d
	dec  b                                           ; $778e: $05
	add  $03                                         ; $778f: $c6 $03
	call nc, Call_068_7465                           ; $7791: $d4 $65 $74
	ld   d, b                                        ; $7794: $50
	ld   [hl], c                                     ; $7795: $71
	ld   l, l                                        ; $7796: $6d
	ld   e, c                                        ; $7797: $59
	sub  a                                           ; $7798: $97
	ld   a, b                                        ; $7799: $78
	sbc  a                                           ; $779a: $9f
	dec  c                                           ; $779b: $0d
	ld   d, b                                        ; $779c: $50
	adc  h                                           ; $779d: $8c
	sbc  b                                           ; $779e: $98
	ld   [bc], a                                     ; $779f: $02
	and  c                                           ; $77a0: $a1
	and  b                                           ; $77a1: $a0
	ld   e, b                                        ; $77a2: $58
	halt                                             ; $77a3: $76
	ld   h, a                                        ; $77a4: $67
	ld   a, b                                        ; $77a5: $78
	sub  [hl]                                        ; $77a6: $96
	sbc  a                                           ; $77a7: $9f
	dec  c                                           ; $77a8: $0d
	nop                                              ; $77a9: $00
	ld   a, [bc]                                     ; $77aa: $0a
	ld   bc, $9a6b                                   ; $77ab: $01 $6b $9a
	ld   h, [hl]                                     ; $77ae: $66
	sub  c                                           ; $77af: $91
	sbc  [hl]                                        ; $77b0: $9e
	ld   [bc], a                                     ; $77b1: $02
	and  l                                           ; $77b2: $a5
	ld   [bc], a                                     ; $77b3: $02
	sub  e                                           ; $77b4: $93
	ld   a, h                                        ; $77b5: $7c
	rst  ToBoot                                         ; $77b6: $c7
	cp   d                                           ; $77b7: $ba
	ret                                              ; $77b8: $c9


	ld   a, l                                        ; $77b9: $7d
	dec  c                                           ; $77ba: $0d
	ld   h, c                                        ; $77bb: $61
	sbc  d                                           ; $77bc: $9a
	ld   [hl], l                                     ; $77bd: $75
	inc  bc                                          ; $77be: $03
	ld   a, [hl]                                     ; $77bf: $7e
	dec  b                                           ; $77c0: $05
	nop                                              ; $77c1: $00
	ld   l, [hl]                                     ; $77c2: $6e
	sbc  a                                           ; $77c3: $9f
	dec  c                                           ; $77c4: $0d
	ld   e, b                                        ; $77c5: $58
	ld   [hl], d                                     ; $77c6: $72
	ld   e, c                                        ; $77c7: $59
	sbc  d                                           ; $77c8: $9a
	ld   h, e                                        ; $77c9: $63
	adc  h                                           ; $77ca: $8c
	sbc  a                                           ; $77cb: $9f
	dec  c                                           ; $77cc: $0d
	nop                                              ; $77cd: $00
	ld   a, [bc]                                     ; $77ce: $0a
	dec  c                                           ; $77cf: $0d
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	rrca                                             ; $77d2: $0f
	nop                                              ; $77d3: $00
	ld   bc, $1e09                                   ; $77d4: $01 $09 $1e
	nop                                              ; $77d7: $00
	inc  c                                           ; $77d8: $0c
	ld   [bc], a                                     ; $77d9: $02
	ld   c, $33                                      ; $77da: $0e $33
	rrca                                             ; $77dc: $0f
	nop                                              ; $77dd: $00
	ld   bc, $ff01                                   ; $77de: $01 $01 $ff
	rst  $38                                         ; $77e1: $ff
	add  e                                           ; $77e2: $83
	ld   d, h                                        ; $77e3: $54
	rst  $38                                         ; $77e4: $ff
	rst  $38                                         ; $77e5: $ff
	dec  c                                           ; $77e6: $0d
	ld   [bc], a                                     ; $77e7: $02
	and  l                                           ; $77e8: $a5
	inc  b                                           ; $77e9: $04
	xor  d                                           ; $77ea: $aa
	ld   a, h                                        ; $77eb: $7c
	rst  ToBoot                                         ; $77ec: $c7
	cp   d                                           ; $77ed: $ba
	ret                                              ; $77ee: $c9


	ld   a, l                                        ; $77ef: $7d
	dec  c                                           ; $77f0: $0d
	ld   e, e                                        ; $77f1: $5b
	and  c                                           ; $77f2: $a1
	ld   l, a                                        ; $77f3: $6f
	sub  l                                           ; $77f4: $95
	ld   d, h                                        ; $77f5: $54
	ld   h, l                                        ; $77f6: $65
	ld   l, l                                        ; $77f7: $6d
	ld   a, b                                        ; $77f8: $78
	ld   d, b                                        ; $77f9: $50
	rst  $38                                         ; $77fa: $ff
	rst  $38                                         ; $77fb: $ff
	dec  c                                           ; $77fc: $0d
	nop                                              ; $77fd: $00
	ld   a, [bc]                                     ; $77fe: $0a
	inc  e                                           ; $77ff: $1c
	ld   bc, $0000                                   ; $7800: $01 $00 $00
	ld   bc, $0458                                   ; $7803: $01 $58 $04
	ld   a, e                                        ; $7806: $7b
	sbc  d                                           ; $7807: $9a
	ld   h, e                                        ; $7808: $63
	adc  h                                           ; $7809: $8c
	ld   [hl], l                                     ; $780a: $75
	ld   h, l                                        ; $780b: $65
	ld   l, l                                        ; $780c: $6d
	sbc  a                                           ; $780d: $9f
	dec  c                                           ; $780e: $0d
	ld   [$6300], sp                                 ; $780f: $08 $00 $63
	and  c                                           ; $7812: $a1
	sbc  a                                           ; $7813: $9f
	dec  c                                           ; $7814: $0d
	nop                                              ; $7815: $00
	ld   a, [bc]                                     ; $7816: $0a
	rrca                                             ; $7817: $0f
	nop                                              ; $7818: $00
	ld   bc, $5001                                   ; $7819: $01 $01 $50
	ld   [hl], c                                     ; $781c: $71
	sbc  [hl]                                        ; $781d: $9e
	ld   h, e                                        ; $781e: $63
	ld   e, l                                        ; $781f: $5d
	sub  a                                           ; $7820: $97
	ld   h, e                                        ; $7821: $63
	and  c                                           ; $7822: $a1
	rst  $38                                         ; $7823: $ff
	rst  $38                                         ; $7824: $ff
	dec  c                                           ; $7825: $0d
	nop                                              ; $7826: $00
	ld   a, [bc]                                     ; $7827: $0a
	inc  e                                           ; $7828: $1c
	ld   bc, $0101                                   ; $7829: $01 $01 $01
	ld   bc, $bac7                                   ; $782c: $01 $c7 $ba
	ret                                              ; $782f: $c9


	sbc  [hl]                                        ; $7830: $9e
	ld   d, d                                        ; $7831: $52
	ld   d, d                                        ; $7832: $52
	ld   [bc], a                                     ; $7833: $02
	reti                                             ; $7834: $d9


	ld   [bc], a                                     ; $7835: $02
	ld   h, e                                        ; $7836: $63
	ld   l, [hl]                                     ; $7837: $6e
	ld   [hl], c                                     ; $7838: $71
	ld   l, l                                        ; $7839: $6d
	dec  c                                           ; $783a: $0d
	adc  l                                           ; $783b: $8d
	ld   l, l                                        ; $783c: $6d
	ld   d, d                                        ; $783d: $52
	ld   [hl], l                                     ; $783e: $75
	ld   h, a                                        ; $783f: $67
	ld   a, e                                        ; $7840: $7b
	sbc  a                                           ; $7841: $9f
	dec  c                                           ; $7842: $0d
	nop                                              ; $7843: $00
	ld   a, [bc]                                     ; $7844: $0a
	ld   bc, $5965                                   ; $7845: $01 $65 $59
	sub  b                                           ; $7848: $90
	sbc  [hl]                                        ; $7849: $9e
	ld   d, b                                        ; $784a: $50
	ld   l, l                                        ; $784b: $6d
	ld   h, l                                        ; $784c: $65
	ld   a, h                                        ; $784d: $7c
	ld   [bc], a                                     ; $784e: $02
	jr   c, jr_068_7855                              ; $784f: $38 $04

	ld   d, d                                        ; $7851: $52
	ld   [hl], l                                     ; $7852: $75
	dec  c                                           ; $7853: $0d
	rst  ToBoot                                         ; $7854: $c7

jr_068_7855:
	cp   d                                           ; $7855: $ba
	ret                                              ; $7856: $c9


	ld   h, l                                        ; $7857: $65
	ld   l, l                                        ; $7858: $6d
	and  c                                           ; $7859: $a1
	ld   [hl], l                                     ; $785a: $75
	ld   h, a                                        ; $785b: $67
	ld   [hl], c                                     ; $785c: $71

Call_068_785d:
	ld   [hl], h                                     ; $785d: $74
	ld   sp, hl                                      ; $785e: $f9
	dec  c                                           ; $785f: $0d
	inc  b                                           ; $7860: $04
	ld   c, $03                                      ; $7861: $0e $03
	sub  b                                           ; $7863: $90
	ld   h, e                                        ; $7864: $63
	and  c                                           ; $7865: $a1
	ld   a, c                                        ; $7866: $79
	ld   [bc], a                                     ; $7867: $02
	jp   nz, $8c5b                                   ; $7868: $c2 $5b $8c

	ld   h, l                                        ; $786b: $65
	ld   l, l                                        ; $786c: $6d
	sub  [hl]                                        ; $786d: $96
	sbc  a                                           ; $786e: $9f
	dec  c                                           ; $786f: $0d
	nop                                              ; $7870: $00
	ld   a, [bc]                                     ; $7871: $0a
	rrca                                             ; $7872: $0f
	nop                                              ; $7873: $00
	ld   bc, $7d01                                   ; $7874: $01 $01 $7d
	ld   d, d                                        ; $7877: $52
	sbc  [hl]                                        ; $7878: $9e
	ld   d, b                                        ; $7879: $50
	sbc  b                                           ; $787a: $98
	ld   e, d                                        ; $787b: $5a
	halt                                             ; $787c: $76
	ld   d, h                                        ; $787d: $54
	ld   h, d                                        ; $787e: $62
	ld   h, h                                        ; $787f: $64
	ld   d, d                                        ; $7880: $52
	adc  h                                           ; $7881: $8c
	ld   h, a                                        ; $7882: $67
	ld   a, [$610d]                                  ; $7883: $fa $0d $61
	sbc  d                                           ; $7886: $9a
	sub  b                                           ; $7887: $90
	sbc  [hl]                                        ; $7888: $9e
	ld   h, e                                        ; $7889: $63
	ld   e, l                                        ; $788a: $5d
	sub  a                                           ; $788b: $97
	ld   h, e                                        ; $788c: $63
	and  c                                           ; $788d: $a1
	ld   a, h                                        ; $788e: $7c
	inc  bc                                          ; $788f: $03
	ld   l, l                                        ; $7890: $6d
	dec  b                                           ; $7891: $05
	add  hl, de                                      ; $7892: $19
	ld   a, h                                        ; $7893: $7c
	dec  c                                           ; $7894: $0d
	ld   e, b                                        ; $7895: $58
	ld   e, c                                        ; $7896: $59
	ld   h, b                                        ; $7897: $60
	ld   [hl], l                                     ; $7898: $75
	ld   h, a                                        ; $7899: $67
	sub  [hl]                                        ; $789a: $96
	sbc  a                                           ; $789b: $9f
	dec  c                                           ; $789c: $0d
	nop                                              ; $789d: $00
	ld   a, [bc]                                     ; $789e: $0a
	inc  e                                           ; $789f: $1c
	ld   bc, $0101                                   ; $78a0: $01 $01 $01
	dec  e                                           ; $78a3: $1d
	ld   b, b                                        ; $78a4: $40
	ld   de, $1103                                   ; $78a5: $11 $03 $11
	ld   bc, $2803                                   ; $78a8: $01 $03 $28
	nop                                              ; $78ab: $00
	ld   bc, $d6d6                                   ; $78ac: $01 $d6 $d6
	rst  $38                                         ; $78af: $ff
	rst  $38                                         ; $78b0: $ff
	ld   [hl], l                                     ; $78b1: $75
	sub  b                                           ; $78b2: $90
	sbc  [hl]                                        ; $78b3: $9e
	ld   [bc], a                                     ; $78b4: $02
	reti                                             ; $78b5: $d9


	ld   [bc], a                                     ; $78b6: $02
	ld   h, e                                        ; $78b7: $63
	and  b                                           ; $78b8: $a0
	inc  bc                                          ; $78b9: $03
	add  b                                           ; $78ba: $80
	ld   l, c                                        ; $78bb: $69
	ld   l, l                                        ; $78bc: $6d
	dec  c                                           ; $78bd: $0d
	ld   a, h                                        ; $78be: $7c
	ld   a, l                                        ; $78bf: $7d
	sbc  [hl]                                        ; $78c0: $9e
	ld   [$6300], sp                                 ; $78c1: $08 $00 $63
	and  c                                           ; $78c4: $a1
	ld   e, d                                        ; $78c5: $5a
	dec  c                                           ; $78c6: $0d
	ld   e, d                                        ; $78c7: $5a
	and  c                                           ; $78c8: $a1
	ld   a, [hl]                                     ; $78c9: $7e
	ld   [hl], c                                     ; $78ca: $71
	ld   l, l                                        ; $78cb: $6d
	ld   e, c                                        ; $78cc: $59
	sub  a                                           ; $78cd: $97
	ld   [hl], l                                     ; $78ce: $75
	ld   h, a                                        ; $78cf: $67
	sub  [hl]                                        ; $78d0: $96
	sbc  a                                           ; $78d1: $9f
	dec  c                                           ; $78d2: $0d
	nop                                              ; $78d3: $00
	ld   a, [bc]                                     ; $78d4: $0a
	ld   bc, $9a61                                   ; $78d5: $01 $61 $9a
	ld   e, c                                        ; $78d8: $59
	sub  a                                           ; $78d9: $97
	sub  b                                           ; $78da: $90
	sbc  [hl]                                        ; $78db: $9e
	ld   h, c                                        ; $78dc: $61
	ld   a, h                                        ; $78dd: $7c
	inc  bc                                          ; $78de: $03
	cp   $03                                         ; $78df: $fe $03
	add  [hl]                                        ; $78e1: $86
	ld   [hl], l                                     ; $78e2: $75
	dec  c                                           ; $78e3: $0d
	ld   e, d                                        ; $78e4: $5a
	and  c                                           ; $78e5: $a1
	ld   a, [hl]                                     ; $78e6: $7e
	ld   [hl], c                                     ; $78e7: $71
	ld   [hl], h                                     ; $78e8: $74
	ld   e, l                                        ; $78e9: $5d
	ld   l, [hl]                                     ; $78ea: $6e
	ld   h, e                                        ; $78eb: $63
	ld   d, d                                        ; $78ec: $52
	sbc  a                                           ; $78ed: $9f
	dec  c                                           ; $78ee: $0d
	nop                                              ; $78ef: $00
	ld   a, [bc]                                     ; $78f0: $0a
	dec  c                                           ; $78f1: $0d
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	rrca                                             ; $78f4: $0f
	nop                                              ; $78f5: $00
	ld   bc, $1e09                                   ; $78f6: $01 $09 $1e
	nop                                              ; $78f9: $00
	inc  c                                           ; $78fa: $0c
	ld   [bc], a                                     ; $78fb: $02
	ld   c, $3f                                      ; $78fc: $0e $3f
	rrca                                             ; $78fe: $0f
	nop                                              ; $78ff: $00
	ld   bc, $ff01                                   ; $7900: $01 $01 $ff
	rst  $38                                         ; $7903: $ff
	add  e                                           ; $7904: $83
	ld   d, h                                        ; $7905: $54
	rst  $38                                         ; $7906: $ff
	rst  $38                                         ; $7907: $ff
	dec  c                                           ; $7908: $0d
	ld   [bc], a                                     ; $7909: $02
	and  l                                           ; $790a: $a5
	inc  b                                           ; $790b: $04
	xor  d                                           ; $790c: $aa
	ld   a, h                                        ; $790d: $7c
	rst  ToBoot                                         ; $790e: $c7
	cp   d                                           ; $790f: $ba
	ret                                              ; $7910: $c9


	ld   a, l                                        ; $7911: $7d
	ld   e, e                                        ; $7912: $5b
	and  c                                           ; $7913: $a1
	ld   l, a                                        ; $7914: $6f
	sub  l                                           ; $7915: $95
	ld   d, h                                        ; $7916: $54
	dec  c                                           ; $7917: $0d
	ld   h, l                                        ; $7918: $65
	ld   l, l                                        ; $7919: $6d
	ld   a, b                                        ; $791a: $78
	ld   d, b                                        ; $791b: $50
	rst  $38                                         ; $791c: $ff
	rst  $38                                         ; $791d: $ff
	dec  c                                           ; $791e: $0d
	nop                                              ; $791f: $00
	ld   a, [bc]                                     ; $7920: $0a
	inc  e                                           ; $7921: $1c
	ld   [bc], a                                     ; $7922: $02
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	ld   bc, $0458                                   ; $7925: $01 $58 $04
	ld   a, e                                        ; $7928: $7b
	sbc  d                                           ; $7929: $9a
	ld   h, e                                        ; $792a: $63
	adc  h                                           ; $792b: $8c
	ld   [hl], l                                     ; $792c: $75
	ld   h, l                                        ; $792d: $65
	ld   l, l                                        ; $792e: $6d
	sbc  a                                           ; $792f: $9f
	dec  c                                           ; $7930: $0d
	ld   [$6300], sp                                 ; $7931: $08 $00 $63
	and  c                                           ; $7934: $a1
	sbc  a                                           ; $7935: $9f
	dec  c                                           ; $7936: $0d
	nop                                              ; $7937: $00
	ld   a, [bc]                                     ; $7938: $0a
	rrca                                             ; $7939: $0f
	nop                                              ; $793a: $00
	ld   bc, $5001                                   ; $793b: $01 $01 $50
	ld   [hl], c                                     ; $793e: $71
	sbc  [hl]                                        ; $793f: $9e
	ld   h, a                                        ; $7940: $67
	adc  l                                           ; $7941: $8d
	sbc  d                                           ; $7942: $9a
	ld   h, e                                        ; $7943: $63
	and  c                                           ; $7944: $a1
	rst  $38                                         ; $7945: $ff
	rst  $38                                         ; $7946: $ff
	dec  c                                           ; $7947: $0d
	nop                                              ; $7948: $00
	ld   a, [bc]                                     ; $7949: $0a
	inc  e                                           ; $794a: $1c
	ld   [bc], a                                     ; $794b: $02
	ld   bc, $0101                                   ; $794c: $01 $01 $01
	rst  ToBoot                                         ; $794f: $c7
	cp   d                                           ; $7950: $ba
	ret                                              ; $7951: $c9


	sbc  [hl]                                        ; $7952: $9e
	ld   d, d                                        ; $7953: $52
	ld   d, d                                        ; $7954: $52
	ld   [bc], a                                     ; $7955: $02
	reti                                             ; $7956: $d9


	ld   [bc], a                                     ; $7957: $02
	ld   h, e                                        ; $7958: $63
	ld   l, [hl]                                     ; $7959: $6e
	ld   [hl], c                                     ; $795a: $71
	ld   l, l                                        ; $795b: $6d
	dec  c                                           ; $795c: $0d
	adc  l                                           ; $795d: $8d
	ld   l, l                                        ; $795e: $6d
	ld   d, d                                        ; $795f: $52
	ld   [hl], l                                     ; $7960: $75
	ld   h, a                                        ; $7961: $67
	sbc  l                                           ; $7962: $9d
	ld   a, e                                        ; $7963: $7b
	sbc  a                                           ; $7964: $9f
	dec  c                                           ; $7965: $0d
	nop                                              ; $7966: $00
	ld   a, [bc]                                     ; $7967: $0a
	ld   bc, $5965                                   ; $7968: $01 $65 $59
	sub  b                                           ; $796b: $90
	sbc  [hl]                                        ; $796c: $9e
	sbc  l                                           ; $796d: $9d
	ld   l, l                                        ; $796e: $6d
	ld   e, l                                        ; $796f: $5d
	ld   h, l                                        ; $7970: $65
	ld   a, h                                        ; $7971: $7c
	ld   [bc], a                                     ; $7972: $02
	jr   c, jr_068_7979                              ; $7973: $38 $04

	ld   d, d                                        ; $7975: $52
	ld   [hl], l                                     ; $7976: $75
	dec  c                                           ; $7977: $0d
	rst  ToBoot                                         ; $7978: $c7

jr_068_7979:
	cp   d                                           ; $7979: $ba
	ret                                              ; $797a: $c9


	ld   h, l                                        ; $797b: $65
	ld   l, l                                        ; $797c: $6d
	and  c                                           ; $797d: $a1
	ld   [hl], l                                     ; $797e: $75
	ld   h, a                                        ; $797f: $67
	ld   [hl], c                                     ; $7980: $71
	ld   [hl], h                                     ; $7981: $74
	ld   sp, hl                                      ; $7982: $f9
	dec  c                                           ; $7983: $0d
	inc  bc                                          ; $7984: $03
	ld   l, h                                        ; $7985: $6c
	dec  b                                           ; $7986: $05
	ld   h, $79                                      ; $7987: $26 $79
	ld   [bc], a                                     ; $7989: $02
	jp   nz, $8c5b                                   ; $798a: $c2 $5b $8c

	ld   h, l                                        ; $798d: $65
	ld   l, l                                        ; $798e: $6d

Call_068_798f:
	sbc  l                                           ; $798f: $9d
	sbc  a                                           ; $7990: $9f
	dec  c                                           ; $7991: $0d
	nop                                              ; $7992: $00
	ld   a, [bc]                                     ; $7993: $0a
	rrca                                             ; $7994: $0f
	nop                                              ; $7995: $00
	ld   bc, $7d01                                   ; $7996: $01 $01 $7d
	ld   d, d                                        ; $7999: $52
	sbc  [hl]                                        ; $799a: $9e
	ld   d, b                                        ; $799b: $50
	sbc  b                                           ; $799c: $98
	ld   e, d                                        ; $799d: $5a
	halt                                             ; $799e: $76
	ld   d, h                                        ; $799f: $54
	ld   h, d                                        ; $79a0: $62
	ld   h, h                                        ; $79a1: $64
	ld   d, d                                        ; $79a2: $52
	adc  h                                           ; $79a3: $8c
	ld   h, a                                        ; $79a4: $67
	ld   a, [$610d]                                  ; $79a5: $fa $0d $61
	sbc  d                                           ; $79a8: $9a
	sub  b                                           ; $79a9: $90
	sbc  [hl]                                        ; $79aa: $9e
	ld   h, a                                        ; $79ab: $67
	adc  l                                           ; $79ac: $8d
	sbc  d                                           ; $79ad: $9a
	ld   h, e                                        ; $79ae: $63
	and  c                                           ; $79af: $a1
	ld   a, h                                        ; $79b0: $7c
	inc  bc                                          ; $79b1: $03
	ld   l, l                                        ; $79b2: $6d
	dec  b                                           ; $79b3: $05
	add  hl, de                                      ; $79b4: $19
	ld   a, h                                        ; $79b5: $7c
	dec  c                                           ; $79b6: $0d
	ld   e, b                                        ; $79b7: $58
	ld   e, c                                        ; $79b8: $59
	ld   h, b                                        ; $79b9: $60
	ld   [hl], l                                     ; $79ba: $75
	ld   h, a                                        ; $79bb: $67
	sbc  a                                           ; $79bc: $9f
	dec  c                                           ; $79bd: $0d
	nop                                              ; $79be: $00
	ld   a, [bc]                                     ; $79bf: $0a
	inc  e                                           ; $79c0: $1c
	ld   [bc], a                                     ; $79c1: $02
	jr   nc, @+$1b                                   ; $79c2: $30 $19

	ld   bc, $fc58                                   ; $79c4: $01 $58 $fc
	ld   [hl], c                                     ; $79c7: $71
	adc  c                                           ; $79c8: $89
	ld   [hl], c                                     ; $79c9: $71
	adc  c                                           ; $79ca: $89
	ld   [hl], c                                     ; $79cb: $71
	adc  c                                           ; $79cc: $89
	sbc  a                                           ; $79cd: $9f
	dec  c                                           ; $79ce: $0d
	inc  b                                           ; $79cf: $04
	jr   jr_068_79d5                                 ; $79d0: $18 $03

	sbc  c                                           ; $79d2: $99
	ld   [hl], l                                     ; $79d3: $75
	ld   h, a                                        ; $79d4: $67

jr_068_79d5:
	sbc  l                                           ; $79d5: $9d
	sbc  a                                           ; $79d6: $9f
	dec  c                                           ; $79d7: $0d
	nop                                              ; $79d8: $00
	ld   a, [bc]                                     ; $79d9: $0a
	inc  e                                           ; $79da: $1c
	ld   [bc], a                                     ; $79db: $02
	ld   bc, $1d01                                   ; $79dc: $01 $01 $1d
	ld   b, b                                        ; $79df: $40
	ld   [de], a                                     ; $79e0: $12
	inc  bc                                          ; $79e1: $03
	ld   [de], a                                     ; $79e2: $12
	ld   bc, $2803                                   ; $79e3: $01 $03 $28
	nop                                              ; $79e6: $00
	ld   bc, $7d76                                   ; $79e7: $01 $76 $7d
	ld   d, d                                        ; $79ea: $52
	ld   d, [hl]                                     ; $79eb: $56
	rst  $38                                         ; $79ec: $ff
	ld   d, b                                        ; $79ed: $50
	ld   a, b                                        ; $79ee: $78
	ld   l, l                                        ; $79ef: $6d
	ld   a, h                                        ; $79f0: $7c
	ld   e, d                                        ; $79f1: $5a
	and  c                                           ; $79f2: $a1
	ld   a, [hl]                                     ; $79f3: $7e
	sbc  b                                           ; $79f4: $98
	ld   e, d                                        ; $79f5: $5a
	dec  c                                           ; $79f6: $0d
	ld   d, b                                        ; $79f7: $50
	ld   [hl], c                                     ; $79f8: $71
	ld   l, l                                        ; $79f9: $6d
	ld   e, c                                        ; $79fa: $59
	sub  a                                           ; $79fb: $97
	ld   h, c                                        ; $79fc: $61
	ld   l, e                                        ; $79fd: $6b
	ld   [hl], l                                     ; $79fe: $75
	ld   h, a                                        ; $79ff: $67
	sbc  l                                           ; $7a00: $9d
	sbc  a                                           ; $7a01: $9f
	dec  c                                           ; $7a02: $0d
	nop                                              ; $7a03: $00
	ld   a, [bc]                                     ; $7a04: $0a
	ld   bc, $9a61                                   ; $7a05: $01 $61 $9a
	ld   e, c                                        ; $7a08: $59
	sub  a                                           ; $7a09: $97
	sub  b                                           ; $7a0a: $90
	sbc  [hl]                                        ; $7a0b: $9e
	ld   h, c                                        ; $7a0c: $61
	ld   a, h                                        ; $7a0d: $7c
	inc  bc                                          ; $7a0e: $03
	cp   $03                                         ; $7a0f: $fe $03
	add  [hl]                                        ; $7a11: $86
	ld   [hl], l                                     ; $7a12: $75
	dec  c                                           ; $7a13: $0d
	ld   e, d                                        ; $7a14: $5a
	and  c                                           ; $7a15: $a1
	ld   a, [hl]                                     ; $7a16: $7e
	ld   [hl], c                                     ; $7a17: $71
	ld   [hl], h                                     ; $7a18: $74
	ld   e, l                                        ; $7a19: $5d
	ld   l, [hl]                                     ; $7a1a: $6e
	ld   h, e                                        ; $7a1b: $63
	ld   d, d                                        ; $7a1c: $52
	ld   a, b                                        ; $7a1d: $78
	sbc  a                                           ; $7a1e: $9f
	dec  c                                           ; $7a1f: $0d
	nop                                              ; $7a20: $00
	ld   a, [bc]                                     ; $7a21: $0a
	ld   bc, $7190                                   ; $7a22: $01 $90 $71
	halt                                             ; $7a25: $76
	sub  b                                           ; $7a26: $90
	rst  $38                                         ; $7a27: $ff
	rst  $38                                         ; $7a28: $ff
	sbc  l                                           ; $7a29: $9d
	ld   l, l                                        ; $7a2a: $6d
	ld   e, l                                        ; $7a2b: $5d
	ld   h, l                                        ; $7a2c: $65
	ld   a, h                                        ; $7a2d: $7c
	inc  bc                                          ; $7a2e: $03
	ld   l, l                                        ; $7a2f: $6d
	dec  b                                           ; $7a30: $05
	add  hl, de                                      ; $7a31: $19
	and  b                                           ; $7a32: $a0
	dec  c                                           ; $7a33: $0d
	ld   d, h                                        ; $7a34: $54
	ld   e, a                                        ; $7a35: $5f
	ld   [hl], h                                     ; $7a36: $74
	sbc  [hl]                                        ; $7a37: $9e
	sbc  l                                           ; $7a38: $9d
	sbc  c                                           ; $7a39: $99
	ld   d, d                                        ; $7a3a: $52
	ld   [bc], a                                     ; $7a3b: $02
	reti                                             ; $7a3c: $d9


	ld   [bc], a                                     ; $7a3d: $02
	ld   h, e                                        ; $7a3e: $63
	ld   a, c                                        ; $7a3f: $79
	ld   a, b                                        ; $7a40: $78
	sbc  c                                           ; $7a41: $99
	dec  c                                           ; $7a42: $0d
	sbc  l                                           ; $7a43: $9d
	ld   e, a                                        ; $7a44: $5f
	ld   a, l                                        ; $7a45: $7d
	ld   h, d                                        ; $7a46: $62
	ld   h, h                                        ; $7a47: $64
	ld   d, d                                        ; $7a48: $52
	adc  h                                           ; $7a49: $8c
	ld   l, c                                        ; $7a4a: $69
	and  c                                           ; $7a4b: $a1
	ld   e, a                                        ; $7a4c: $5f
	sbc  d                                           ; $7a4d: $9a
	ld   [hl], a                                     ; $7a4e: $77
	rst  $38                                         ; $7a4f: $ff
	rst  $38                                         ; $7a50: $ff
	dec  c                                           ; $7a51: $0d
	nop                                              ; $7a52: $00
	ld   a, [bc]                                     ; $7a53: $0a
	ld   bc, $9a6b                                   ; $7a54: $01 $6b $9a
	ld   [hl], l                                     ; $7a57: $75
	ld   a, l                                        ; $7a58: $7d
	sbc  [hl]                                        ; $7a59: $9e
	inc  bc                                          ; $7a5a: $03
	add  e                                           ; $7a5b: $83
	dec  b                                           ; $7a5c: $05
	dec  c                                           ; $7a5d: $0d
	sbc  a                                           ; $7a5e: $9f
	dec  c                                           ; $7a5f: $0d
	nop                                              ; $7a60: $00
	ld   a, [bc]                                     ; $7a61: $0a
	dec  c                                           ; $7a62: $0d
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	rrca                                             ; $7a65: $0f
	nop                                              ; $7a66: $00
	ld   bc, $1e09                                   ; $7a67: $01 $09 $1e
	nop                                              ; $7a6a: $00
	inc  c                                           ; $7a6b: $0c
	ld   [bc], a                                     ; $7a6c: $02
	ld   c, $33                                      ; $7a6d: $0e $33
	rrca                                             ; $7a6f: $0f
	nop                                              ; $7a70: $00
	ld   bc, $ff01                                   ; $7a71: $01 $01 $ff
	rst  $38                                         ; $7a74: $ff
	add  e                                           ; $7a75: $83
	ld   d, h                                        ; $7a76: $54
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	dec  c                                           ; $7a79: $0d
	ld   [bc], a                                     ; $7a7a: $02
	and  l                                           ; $7a7b: $a5
	inc  b                                           ; $7a7c: $04
	xor  d                                           ; $7a7d: $aa
	ld   a, h                                        ; $7a7e: $7c
	rst  ToBoot                                         ; $7a7f: $c7
	cp   d                                           ; $7a80: $ba
	ret                                              ; $7a81: $c9


	ld   a, l                                        ; $7a82: $7d
	dec  c                                           ; $7a83: $0d
	ld   e, e                                        ; $7a84: $5b
	and  c                                           ; $7a85: $a1
	ld   l, a                                        ; $7a86: $6f
	sub  l                                           ; $7a87: $95
	ld   d, h                                        ; $7a88: $54
	ld   h, l                                        ; $7a89: $65
	ld   l, l                                        ; $7a8a: $6d
	ld   a, b                                        ; $7a8b: $78
	ld   d, b                                        ; $7a8c: $50
	rst  $38                                         ; $7a8d: $ff
	rst  $38                                         ; $7a8e: $ff
	dec  c                                           ; $7a8f: $0d
	nop                                              ; $7a90: $00
	ld   a, [bc]                                     ; $7a91: $0a
	inc  e                                           ; $7a92: $1c
	inc  bc                                          ; $7a93: $03
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	ld   bc, $0458                                   ; $7a96: $01 $58 $04
	ld   a, e                                        ; $7a99: $7b
	sbc  d                                           ; $7a9a: $9a
	ld   h, e                                        ; $7a9b: $63
	adc  h                                           ; $7a9c: $8c
	sbc  a                                           ; $7a9d: $9f
	dec  c                                           ; $7a9e: $0d
	ld   [$5d00], sp                                 ; $7a9f: $08 $00 $5d
	and  c                                           ; $7aa2: $a1
	sbc  a                                           ; $7aa3: $9f
	dec  c                                           ; $7aa4: $0d
	nop                                              ; $7aa5: $00
	ld   a, [bc]                                     ; $7aa6: $0a
	rrca                                             ; $7aa7: $0f
	nop                                              ; $7aa8: $00
	ld   bc, $5001                                   ; $7aa9: $01 $01 $50
	ld   [hl], c                                     ; $7aac: $71
	sbc  [hl]                                        ; $7aad: $9e
	rst  JumpTable                                         ; $7aae: $df
	db   $ec                                         ; $7aaf: $ec
	and  e                                           ; $7ab0: $a3
	ld   h, e                                        ; $7ab1: $63
	and  c                                           ; $7ab2: $a1
	rst  $38                                         ; $7ab3: $ff
	rst  $38                                         ; $7ab4: $ff
	dec  c                                           ; $7ab5: $0d
	nop                                              ; $7ab6: $00
	ld   a, [bc]                                     ; $7ab7: $0a
	inc  e                                           ; $7ab8: $1c
	inc  bc                                          ; $7ab9: $03
	inc  bc                                          ; $7aba: $03
	inc  bc                                          ; $7abb: $03
	ld   bc, $bac7                                   ; $7abc: $01 $c7 $ba
	ret                                              ; $7abf: $c9


	sbc  [hl]                                        ; $7ac0: $9e
	ld   d, d                                        ; $7ac1: $52
	ld   d, d                                        ; $7ac2: $52
	ld   [bc], a                                     ; $7ac3: $02
	reti                                             ; $7ac4: $d9


	ld   [bc], a                                     ; $7ac5: $02
	ld   h, e                                        ; $7ac6: $63
	ld   l, [hl]                                     ; $7ac7: $6e
	ld   [hl], c                                     ; $7ac8: $71
	ld   l, l                                        ; $7ac9: $6d
	dec  c                                           ; $7aca: $0d
	adc  l                                           ; $7acb: $8d
	ld   l, l                                        ; $7acc: $6d
	ld   d, d                                        ; $7acd: $52
	ld   a, e                                        ; $7ace: $7b
	sbc  a                                           ; $7acf: $9f
	dec  c                                           ; $7ad0: $0d
	nop                                              ; $7ad1: $00
	ld   a, [bc]                                     ; $7ad2: $0a
	ld   bc, $5965                                   ; $7ad3: $01 $65 $59
	sub  b                                           ; $7ad6: $90
	sbc  [hl]                                        ; $7ad7: $9e
	sbc  l                                           ; $7ad8: $9d
	ld   l, l                                        ; $7ad9: $6d
	ld   h, l                                        ; $7ada: $65
	ld   a, h                                        ; $7adb: $7c
	ld   [bc], a                                     ; $7adc: $02
	jr   c, jr_068_7ae3                              ; $7add: $38 $04

	ld   d, d                                        ; $7adf: $52
	ld   [hl], l                                     ; $7ae0: $75
	dec  c                                           ; $7ae1: $0d
	rst  ToBoot                                         ; $7ae2: $c7

jr_068_7ae3:
	cp   d                                           ; $7ae3: $ba
	ret                                              ; $7ae4: $c9


	ld   h, l                                        ; $7ae5: $65
	ld   l, l                                        ; $7ae6: $6d
	and  c                                           ; $7ae7: $a1
	ld   [hl], l                                     ; $7ae8: $75
	ld   h, a                                        ; $7ae9: $67
	ld   [hl], c                                     ; $7aea: $71
	ld   [hl], h                                     ; $7aeb: $74
	ld   sp, hl                                      ; $7aec: $f9
	dec  c                                           ; $7aed: $0d
	inc  b                                           ; $7aee: $04
	ld   a, [bc]                                     ; $7aef: $0a
	inc  bc                                          ; $7af0: $03
	jp   nc, $0279                                   ; $7af1: $d2 $79 $02

	jp   nz, $8c5b                                   ; $7af4: $c2 $5b $8c

	ld   h, l                                        ; $7af7: $65
	ld   l, l                                        ; $7af8: $6d
	sub  [hl]                                        ; $7af9: $96
	sbc  a                                           ; $7afa: $9f
	dec  c                                           ; $7afb: $0d
	nop                                              ; $7afc: $00
	ld   a, [bc]                                     ; $7afd: $0a
	rrca                                             ; $7afe: $0f
	nop                                              ; $7aff: $00
	ld   bc, $7d01                                   ; $7b00: $01 $01 $7d
	ld   d, d                                        ; $7b03: $52
	sbc  [hl]                                        ; $7b04: $9e
	ld   d, b                                        ; $7b05: $50
	sbc  b                                           ; $7b06: $98
	ld   e, d                                        ; $7b07: $5a
	halt                                             ; $7b08: $76
	ld   d, h                                        ; $7b09: $54
	ld   h, d                                        ; $7b0a: $62
	ld   h, h                                        ; $7b0b: $64
	ld   d, d                                        ; $7b0c: $52
	adc  h                                           ; $7b0d: $8c
	ld   h, a                                        ; $7b0e: $67
	ld   a, [$df0d]                                  ; $7b0f: $fa $0d $df
	db   $ec                                         ; $7b12: $ec
	and  e                                           ; $7b13: $a3
	ld   h, e                                        ; $7b14: $63
	and  c                                           ; $7b15: $a1
	ld   a, h                                        ; $7b16: $7c
	inc  bc                                          ; $7b17: $03
	ld   l, l                                        ; $7b18: $6d
	dec  b                                           ; $7b19: $05
	add  hl, de                                      ; $7b1a: $19
	ld   a, h                                        ; $7b1b: $7c
	dec  c                                           ; $7b1c: $0d
	ld   e, b                                        ; $7b1d: $58
	ld   e, c                                        ; $7b1e: $59
	ld   h, b                                        ; $7b1f: $60
	ld   [hl], l                                     ; $7b20: $75
	ld   h, a                                        ; $7b21: $67
	sbc  a                                           ; $7b22: $9f
	dec  c                                           ; $7b23: $0d
	nop                                              ; $7b24: $00
	ld   a, [bc]                                     ; $7b25: $0a
	rrca                                             ; $7b26: $0f
	inc  bc                                          ; $7b27: $03
	inc  bc                                          ; $7b28: $03
	dec  e                                           ; $7b29: $1d
	ld   b, b                                        ; $7b2a: $40
	inc  de                                          ; $7b2b: $13
	inc  bc                                          ; $7b2c: $03
	inc  de                                          ; $7b2d: $13
	ld   bc, $2803                                   ; $7b2e: $01 $03 $28
	nop                                              ; $7b31: $00
	ld   bc, $d6d6                                   ; $7b32: $01 $d6 $d6
	rst  $38                                         ; $7b35: $ff
	rst  $38                                         ; $7b36: $ff
	ld   [hl], l                                     ; $7b37: $75
	sub  b                                           ; $7b38: $90
	sbc  [hl]                                        ; $7b39: $9e
	ld   [bc], a                                     ; $7b3a: $02
	reti                                             ; $7b3b: $d9


	ld   [bc], a                                     ; $7b3c: $02
	ld   h, e                                        ; $7b3d: $63
	and  b                                           ; $7b3e: $a0
	inc  bc                                          ; $7b3f: $03
	add  b                                           ; $7b40: $80
	ld   l, c                                        ; $7b41: $69
	ld   l, l                                        ; $7b42: $6d
	dec  c                                           ; $7b43: $0d
	ld   a, h                                        ; $7b44: $7c
	ld   a, l                                        ; $7b45: $7d
	sbc  [hl]                                        ; $7b46: $9e
	ld   [$5d00], sp                                 ; $7b47: $08 $00 $5d
	and  c                                           ; $7b4a: $a1
	ld   e, d                                        ; $7b4b: $5a
	dec  c                                           ; $7b4c: $0d
	ld   e, d                                        ; $7b4d: $5a
	and  c                                           ; $7b4e: $a1
	ld   a, [hl]                                     ; $7b4f: $7e
	ld   [hl], c                                     ; $7b50: $71
	ld   l, l                                        ; $7b51: $6d
	ld   e, c                                        ; $7b52: $59
	sub  a                                           ; $7b53: $97
	sub  [hl]                                        ; $7b54: $96
	sbc  a                                           ; $7b55: $9f
	dec  c                                           ; $7b56: $0d
	nop                                              ; $7b57: $00
	ld   a, [bc]                                     ; $7b58: $0a
	ld   bc, $9403                                   ; $7b59: $01 $03 $94
	ld   [bc], a                                     ; $7b5c: $02
	ld   hl, sp-$60                                  ; $7b5d: $f8 $a0
	sub  b                                           ; $7b5f: $90
	ld   l, a                                        ; $7b60: $6f
	ld   a, b                                        ; $7b61: $78
	ld   h, e                                        ; $7b62: $63
	ld   d, d                                        ; $7b63: $52
	sbc  a                                           ; $7b64: $9f
	dec  c                                           ; $7b65: $0d
	ld   l, e                                        ; $7b66: $6b
	sbc  d                                           ; $7b67: $9a
	ld   h, [hl]                                     ; $7b68: $66
	sub  c                                           ; $7b69: $91
	sbc  a                                           ; $7b6a: $9f
	dec  c                                           ; $7b6b: $0d
	nop                                              ; $7b6c: $00
	ld   a, [bc]                                     ; $7b6d: $0a
	dec  c                                           ; $7b6e: $0d
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	rrca                                             ; $7b71: $0f
	nop                                              ; $7b72: $00
	ld   bc, $1e09                                   ; $7b73: $01 $09 $1e
	nop                                              ; $7b76: $00
	inc  c                                           ; $7b77: $0c
	ld   [bc], a                                     ; $7b78: $02
	ld   c, $31                                      ; $7b79: $0e $31
	rrca                                             ; $7b7b: $0f
	nop                                              ; $7b7c: $00
	ld   bc, $ff01                                   ; $7b7d: $01 $01 $ff
	rst  $38                                         ; $7b80: $ff
	add  e                                           ; $7b81: $83
	ld   d, h                                        ; $7b82: $54
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	dec  c                                           ; $7b85: $0d
	ld   [bc], a                                     ; $7b86: $02
	and  l                                           ; $7b87: $a5
	inc  b                                           ; $7b88: $04
	xor  d                                           ; $7b89: $aa
	ld   a, h                                        ; $7b8a: $7c
	rst  ToBoot                                         ; $7b8b: $c7
	cp   d                                           ; $7b8c: $ba
	ret                                              ; $7b8d: $c9


	ld   a, l                                        ; $7b8e: $7d
	dec  c                                           ; $7b8f: $0d
	ld   e, e                                        ; $7b90: $5b
	and  c                                           ; $7b91: $a1
	ld   l, a                                        ; $7b92: $6f
	sub  l                                           ; $7b93: $95
	ld   d, h                                        ; $7b94: $54
	ld   h, l                                        ; $7b95: $65
	ld   l, l                                        ; $7b96: $6d
	ld   a, b                                        ; $7b97: $78
	ld   d, b                                        ; $7b98: $50
	rst  $38                                         ; $7b99: $ff
	rst  $38                                         ; $7b9a: $ff
	dec  c                                           ; $7b9b: $0d
	nop                                              ; $7b9c: $00
	ld   a, [bc]                                     ; $7b9d: $0a
	inc  e                                           ; $7b9e: $1c
	inc  b                                           ; $7b9f: $04
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	ld   bc, $7258                                   ; $7ba2: $01 $58 $72
	ld   e, c                                        ; $7ba5: $59
	sbc  d                                           ; $7ba6: $9a
	ld   h, e                                        ; $7ba7: $63
	adc  h                                           ; $7ba8: $8c
	ld   [hl], c                                     ; $7ba9: $71
	ld   a, [$0dfa]                                  ; $7baa: $fa $fa $0d
	ld   l, a                                        ; $7bad: $6f
	ld   d, d                                        ; $7bae: $52
	ld   [bc], a                                     ; $7baf: $02
	inc  de                                          ; $7bb0: $13
	ld   l, a                                        ; $7bb1: $6f
	sub  c                                           ; $7bb2: $91
	and  c                                           ; $7bb3: $a1
	ld   a, [$0dfa]                                  ; $7bb4: $fa $fa $0d
	nop                                              ; $7bb7: $00
	ld   a, [bc]                                     ; $7bb8: $0a
	rrca                                             ; $7bb9: $0f
	nop                                              ; $7bba: $00
	ld   bc, $5001                                   ; $7bbb: $01 $01 $50
	ld   [hl], c                                     ; $7bbe: $71
	sbc  [hl]                                        ; $7bbf: $9e
	and  e                                           ; $7bc0: $a3
	and  l                                           ; $7bc1: $a5
	db   $ec                                         ; $7bc2: $ec
	cp   d                                           ; $7bc3: $ba
	rst  $38                                         ; $7bc4: $ff
	dec  c                                           ; $7bc5: $0d
	nop                                              ; $7bc6: $00
	ld   a, [bc]                                     ; $7bc7: $0a
	inc  e                                           ; $7bc8: $1c
	inc  b                                           ; $7bc9: $04
	ld   bc, $0101                                   ; $7bca: $01 $01 $01
	rst  ToBoot                                         ; $7bcd: $c7
	cp   d                                           ; $7bce: $ba
	ret                                              ; $7bcf: $c9


	sbc  [hl]                                        ; $7bd0: $9e
	ld   d, d                                        ; $7bd1: $52
	ld   d, d                                        ; $7bd2: $52
	ld   e, a                                        ; $7bd3: $5f
	ld   [hl], c                                     ; $7bd4: $71
	ld   e, c                                        ; $7bd5: $59
	ld   l, [hl]                                     ; $7bd6: $6e
	ld   [hl], c                                     ; $7bd7: $71
	ld   l, l                                        ; $7bd8: $6d
	dec  c                                           ; $7bd9: $0d
	adc  l                                           ; $7bda: $8d
	ld   l, l                                        ; $7bdb: $6d
	ld   d, d                                        ; $7bdc: $52
	ld   l, [hl]                                     ; $7bdd: $6e
	ld   a, e                                        ; $7bde: $7b
	ei                                               ; $7bdf: $fb
	sbc  a                                           ; $7be0: $9f
	dec  c                                           ; $7be1: $0d
	nop                                              ; $7be2: $00
	ld   a, [bc]                                     ; $7be3: $0a
	ld   bc, $a15a                                   ; $7be4: $01 $5a $a1
	ld   a, [hl]                                     ; $7be7: $7e
	ld   [hl], c                                     ; $7be8: $71
	ld   l, l                                        ; $7be9: $6d
	and  c                                           ; $7bea: $a1
	ld   l, [hl]                                     ; $7beb: $6e
	ld   a, e                                        ; $7bec: $7b
	ld   a, [$0dfa]                                  ; $7bed: $fa $fa $0d
	ld   l, a                                        ; $7bf0: $6f
	ld   d, d                                        ; $7bf1: $52
	ld   [bc], a                                     ; $7bf2: $02
	inc  de                                          ; $7bf3: $13
	ld   l, a                                        ; $7bf4: $6f
	sub  c                                           ; $7bf5: $91
	and  c                                           ; $7bf6: $a1
	ld   a, [$0dfa]                                  ; $7bf7: $fa $fa $0d
	nop                                              ; $7bfa: $00
	ld   a, [bc]                                     ; $7bfb: $0a
	rrca                                             ; $7bfc: $0f
	nop                                              ; $7bfd: $00
	ld   bc, $5001                                   ; $7bfe: $01 $01 $50
	sbc  b                                           ; $7c01: $98
	ld   e, d                                        ; $7c02: $5a
	halt                                             ; $7c03: $76
	ld   d, h                                        ; $7c04: $54
	sbc  [hl]                                        ; $7c05: $9e
	and  e                                           ; $7c06: $a3
	and  l                                           ; $7c07: $a5
	db   $ec                                         ; $7c08: $ec
	cp   d                                           ; $7c09: $ba
	sbc  a                                           ; $7c0a: $9f
	dec  c                                           ; $7c0b: $0d
	ld   h, c                                        ; $7c0c: $61
	sbc  d                                           ; $7c0d: $9a
	sub  b                                           ; $7c0e: $90
	sbc  [hl]                                        ; $7c0f: $9e
	and  e                                           ; $7c10: $a3
	and  l                                           ; $7c11: $a5
	db   $ec                                         ; $7c12: $ec
	cp   d                                           ; $7c13: $ba
	ld   a, h                                        ; $7c14: $7c
	inc  bc                                          ; $7c15: $03
	ld   l, l                                        ; $7c16: $6d
	dec  b                                           ; $7c17: $05
	add  hl, de                                      ; $7c18: $19
	ld   a, h                                        ; $7c19: $7c
	dec  c                                           ; $7c1a: $0d
	ld   e, b                                        ; $7c1b: $58
	ld   e, c                                        ; $7c1c: $59
	ld   h, b                                        ; $7c1d: $60
	ld   l, [hl]                                     ; $7c1e: $6e
	sub  [hl]                                        ; $7c1f: $96
	sbc  a                                           ; $7c20: $9f
	dec  c                                           ; $7c21: $0d
	nop                                              ; $7c22: $00
	ld   a, [bc]                                     ; $7c23: $0a
	inc  e                                           ; $7c24: $1c
	inc  b                                           ; $7c25: $04
	dec  b                                           ; $7c26: $05
	dec  b                                           ; $7c27: $05
	dec  e                                           ; $7c28: $1d
	ld   b, b                                        ; $7c29: $40
	inc  d                                           ; $7c2a: $14
	inc  bc                                          ; $7c2b: $03
	inc  d                                           ; $7c2c: $14
	ld   bc, $2803                                   ; $7c2d: $01 $03 $28
	nop                                              ; $7c30: $00
	ld   bc, $d9a9                                   ; $7c31: $01 $a9 $d9
	reti                                             ; $7c34: $d9


	rst  $38                                         ; $7c35: $ff
	rst  $38                                         ; $7c36: $ff
	dec  c                                           ; $7c37: $0d
	ld   l, a                                        ; $7c38: $6f
	ld   d, d                                        ; $7c39: $52
	ld   [bc], a                                     ; $7c3a: $02
	inc  de                                          ; $7c3b: $13
	ld   l, a                                        ; $7c3c: $6f
	sub  c                                           ; $7c3d: $91
	and  c                                           ; $7c3e: $a1
	ld   e, d                                        ; $7c3f: $5a
	sbc  [hl]                                        ; $7c40: $9e
	ld   e, d                                        ; $7c41: $5a
	and  c                                           ; $7c42: $a1
	ld   a, [hl]                                     ; $7c43: $7e
	ld   [hl], c                                     ; $7c44: $71
	ld   l, l                                        ; $7c45: $6d
	dec  c                                           ; $7c46: $0d
	ld   e, c                                        ; $7c47: $59
	sub  a                                           ; $7c48: $97
	ld   l, [hl]                                     ; $7c49: $6e
	sub  [hl]                                        ; $7c4a: $96
	ld   d, a                                        ; $7c4b: $57
	db   $fc                                         ; $7c4c: $fc
	sbc  a                                           ; $7c4d: $9f
	dec  c                                           ; $7c4e: $0d
	nop                                              ; $7c4f: $00
	ld   a, [bc]                                     ; $7c50: $0a
	ld   bc, $9a6b                                   ; $7c51: $01 $6b $9a
	ld   h, [hl]                                     ; $7c54: $66
	sub  c                                           ; $7c55: $91
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	dec  c                                           ; $7c58: $0d
	ld   h, c                                        ; $7c59: $61
	sbc  d                                           ; $7c5a: $9a
	ld   e, c                                        ; $7c5b: $59
	sub  a                                           ; $7c5c: $97
	sub  b                                           ; $7c5d: $90
	sbc  [hl]                                        ; $7c5e: $9e
	ld   e, d                                        ; $7c5f: $5a
	and  c                                           ; $7c60: $a1
	ld   a, [hl]                                     ; $7c61: $7e
	ld   [hl], c                                     ; $7c62: $71
	ld   [hl], h                                     ; $7c63: $74
	ld   a, e                                        ; $7c64: $7b
	ld   a, [$6f0d]                                  ; $7c65: $fa $0d $6f
	ld   d, d                                        ; $7c68: $52
	ld   [bc], a                                     ; $7c69: $02
	inc  de                                          ; $7c6a: $13
	ld   l, a                                        ; $7c6b: $6f
	sub  c                                           ; $7c6c: $91
	and  c                                           ; $7c6d: $a1
	ld   a, [$0dfa]                                  ; $7c6e: $fa $fa $0d
	nop                                              ; $7c71: $00
	ld   a, [bc]                                     ; $7c72: $0a
	dec  c                                           ; $7c73: $0d
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	rrca                                             ; $7c76: $0f
	nop                                              ; $7c77: $00
	ld   bc, $1e09                                   ; $7c78: $01 $09 $1e
	nop                                              ; $7c7b: $00
	inc  c                                           ; $7c7c: $0c
	ld   [bc], a                                     ; $7c7d: $02
	ld   c, $3f                                      ; $7c7e: $0e $3f
	rrca                                             ; $7c80: $0f
	nop                                              ; $7c81: $00
	ld   bc, $ff01                                   ; $7c82: $01 $01 $ff
	rst  $38                                         ; $7c85: $ff
	add  e                                           ; $7c86: $83
	ld   d, h                                        ; $7c87: $54
	rst  $38                                         ; $7c88: $ff
	rst  $38                                         ; $7c89: $ff
	dec  c                                           ; $7c8a: $0d
	ld   [bc], a                                     ; $7c8b: $02
	and  l                                           ; $7c8c: $a5
	inc  b                                           ; $7c8d: $04
	xor  d                                           ; $7c8e: $aa
	ld   a, h                                        ; $7c8f: $7c
	rst  ToBoot                                         ; $7c90: $c7
	cp   d                                           ; $7c91: $ba
	ret                                              ; $7c92: $c9


	ld   a, l                                        ; $7c93: $7d
	dec  c                                           ; $7c94: $0d
	ld   e, e                                        ; $7c95: $5b
	and  c                                           ; $7c96: $a1
	ld   l, a                                        ; $7c97: $6f
	sub  l                                           ; $7c98: $95
	ld   d, h                                        ; $7c99: $54
	ld   h, l                                        ; $7c9a: $65
	ld   l, l                                        ; $7c9b: $6d
	ld   a, b                                        ; $7c9c: $78
	ld   d, b                                        ; $7c9d: $50
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	dec  c                                           ; $7ca0: $0d
	nop                                              ; $7ca1: $00
	ld   a, [bc]                                     ; $7ca2: $0a
	inc  e                                           ; $7ca3: $1c
	dec  b                                           ; $7ca4: $05
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	ld   bc, $0458                                   ; $7ca7: $01 $58 $04
	ld   a, e                                        ; $7caa: $7b
	sbc  d                                           ; $7cab: $9a
	ld   h, e                                        ; $7cac: $63
	and  c                                           ; $7cad: $a1
	ld   [hl], l                                     ; $7cae: $75
	ld   h, l                                        ; $7caf: $65
	ld   l, l                                        ; $7cb0: $6d
	sbc  a                                           ; $7cb1: $9f
	dec  c                                           ; $7cb2: $0d
	ld   [$7d00], sp                                 ; $7cb3: $08 $00 $7d
	and  c                                           ; $7cb6: $a1
	sbc  a                                           ; $7cb7: $9f
	dec  c                                           ; $7cb8: $0d
	nop                                              ; $7cb9: $00
	ld   a, [bc]                                     ; $7cba: $0a
	rrca                                             ; $7cbb: $0f
	nop                                              ; $7cbc: $00
	ld   bc, $5001                                   ; $7cbd: $01 $01 $50
	ld   [hl], c                                     ; $7cc0: $71
	sbc  [hl]                                        ; $7cc1: $9e
	ld   [bc], a                                     ; $7cc2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cc3: $cf
	dec  b                                           ; $7cc4: $05
	ld   a, [de]                                     ; $7cc5: $1a
	ld   h, e                                        ; $7cc6: $63
	and  c                                           ; $7cc7: $a1
	rst  $38                                         ; $7cc8: $ff
	rst  $38                                         ; $7cc9: $ff
	dec  c                                           ; $7cca: $0d
	nop                                              ; $7ccb: $00
	ld   a, [bc]                                     ; $7ccc: $0a
	inc  e                                           ; $7ccd: $1c
	dec  b                                           ; $7cce: $05
	ld   bc, $0101                                   ; $7ccf: $01 $01 $01
	rst  ToBoot                                         ; $7cd2: $c7
	cp   d                                           ; $7cd3: $ba
	ret                                              ; $7cd4: $c9


	sbc  [hl]                                        ; $7cd5: $9e
	ld   d, [hl]                                     ; $7cd6: $56
	ld   d, [hl]                                     ; $7cd7: $56
	ld   [bc], a                                     ; $7cd8: $02
	reti                                             ; $7cd9: $d9


	ld   [bc], a                                     ; $7cda: $02
	ld   h, e                                        ; $7cdb: $63
	sub  d                                           ; $7cdc: $92
	ld   [hl], c                                     ; $7cdd: $71
	ld   l, l                                        ; $7cde: $6d
	dec  c                                           ; $7cdf: $0d
	adc  l                                           ; $7ce0: $8d
	ld   l, l                                        ; $7ce1: $6d
	ld   d, d                                        ; $7ce2: $52
	sub  d                                           ; $7ce3: $92
	ld   a, b                                        ; $7ce4: $78
	ei                                               ; $7ce5: $fb
	sbc  a                                           ; $7ce6: $9f
	dec  c                                           ; $7ce7: $0d
	nop                                              ; $7ce8: $00
	ld   a, [bc]                                     ; $7ce9: $0a
	ld   bc, $5965                                   ; $7cea: $01 $65 $59
	sub  b                                           ; $7ced: $90
	sbc  [hl]                                        ; $7cee: $9e
	and  a                                           ; $7cef: $a7
	jp   nz, EnqueueHDMATransfer                                   ; $7cf0: $c2 $7c $02

	jr   c, jr_068_7cf9                              ; $7cf3: $38 $04

	ld   d, d                                        ; $7cf5: $52
	ld   [hl], l                                     ; $7cf6: $75
	dec  c                                           ; $7cf7: $0d
	rst  ToBoot                                         ; $7cf8: $c7

jr_068_7cf9:
	cp   d                                           ; $7cf9: $ba
	ret                                              ; $7cfa: $c9


	ld   h, l                                        ; $7cfb: $65
	ld   l, l                                        ; $7cfc: $6d
	and  c                                           ; $7cfd: $a1
	sub  d                                           ; $7cfe: $92
	ld   [hl], h                                     ; $7cff: $74
	ld   sp, hl                                      ; $7d00: $f9
	dec  c                                           ; $7d01: $0d
	inc  b                                           ; $7d02: $04
	ld   c, $03                                      ; $7d03: $0e $03
	sub  b                                           ; $7d05: $90
	ld   a, l                                        ; $7d06: $7d
	and  c                                           ; $7d07: $a1
	ld   a, c                                        ; $7d08: $79
	ld   [bc], a                                     ; $7d09: $02
	jp   nz, Jump_068_6d52                           ; $7d0a: $c2 $52 $6d

	ld   [hl], l                                     ; $7d0d: $75
	db   $fc                                         ; $7d0e: $fc
	sbc  a                                           ; $7d0f: $9f
	dec  c                                           ; $7d10: $0d
	nop                                              ; $7d11: $00
	ld   a, [bc]                                     ; $7d12: $0a
	rrca                                             ; $7d13: $0f
	nop                                              ; $7d14: $00
	ld   bc, $7d01                                   ; $7d15: $01 $01 $7d
	ld   d, d                                        ; $7d18: $52
	sbc  [hl]                                        ; $7d19: $9e
	ld   d, b                                        ; $7d1a: $50
	sbc  b                                           ; $7d1b: $98
	ld   e, d                                        ; $7d1c: $5a
	halt                                             ; $7d1d: $76
	ld   d, h                                        ; $7d1e: $54
	ld   h, d                                        ; $7d1f: $62
	ld   h, h                                        ; $7d20: $64
	ld   d, d                                        ; $7d21: $52
	adc  h                                           ; $7d22: $8c
	ld   h, a                                        ; $7d23: $67
	ld   a, [$610d]                                  ; $7d24: $fa $0d $61
	sbc  d                                           ; $7d27: $9a
	sub  b                                           ; $7d28: $90
	sbc  [hl]                                        ; $7d29: $9e
	ld   [bc], a                                     ; $7d2a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d2b: $cf
	dec  b                                           ; $7d2c: $05
	ld   a, [de]                                     ; $7d2d: $1a
	ld   h, e                                        ; $7d2e: $63
	and  c                                           ; $7d2f: $a1
	ld   a, h                                        ; $7d30: $7c
	inc  bc                                          ; $7d31: $03
	ld   l, l                                        ; $7d32: $6d
	dec  b                                           ; $7d33: $05
	add  hl, de                                      ; $7d34: $19
	ld   a, h                                        ; $7d35: $7c
	dec  c                                           ; $7d36: $0d
	ld   e, b                                        ; $7d37: $58
	ld   e, c                                        ; $7d38: $59
	ld   h, b                                        ; $7d39: $60
	ld   [hl], l                                     ; $7d3a: $75
	ld   h, a                                        ; $7d3b: $67
	sub  [hl]                                        ; $7d3c: $96
	sbc  a                                           ; $7d3d: $9f
	dec  c                                           ; $7d3e: $0d
	nop                                              ; $7d3f: $00
	ld   a, [bc]                                     ; $7d40: $0a
	rrca                                             ; $7d41: $0f
	dec  b                                           ; $7d42: $05
	ld   bc, $8c01                                   ; $7d43: $01 $01 $8c
	ld   l, l                                        ; $7d46: $6d
	adc  h                                           ; $7d47: $8c
	ld   l, l                                        ; $7d48: $6d
	db   $fc                                         ; $7d49: $fc
	sbc  a                                           ; $7d4a: $9f
	dec  c                                           ; $7d4b: $0d
	ld   d, b                                        ; $7d4c: $50
	and  c                                           ; $7d4d: $a1
	adc  h                                           ; $7d4e: $8c
	inc  bc                                          ; $7d4f: $03
	and  b                                           ; $7d50: $a0
	ld   l, a                                        ; $7d51: $6f
	inc  bc                                          ; $7d52: $03
	ld   h, l                                        ; $7d53: $65
	ld   h, b                                        ; $7d54: $60
	and  c                                           ; $7d55: $a1
	halt                                             ; $7d56: $76
	ld   d, d                                        ; $7d57: $52
	ld   [hl], h                                     ; $7d58: $74
	sub  d                                           ; $7d59: $92
	sbc  a                                           ; $7d5a: $9f
	dec  c                                           ; $7d5b: $0d
	nop                                              ; $7d5c: $00
	ld   a, [bc]                                     ; $7d5d: $0a
	dec  e                                           ; $7d5e: $1d
	ld   b, b                                        ; $7d5f: $40
	dec  d                                           ; $7d60: $15
	inc  bc                                          ; $7d61: $03
	dec  d                                           ; $7d62: $15
	ld   bc, $2803                                   ; $7d63: $01 $03 $28
	nop                                              ; $7d66: $00
	ld   bc, $ffff                                   ; $7d67: $01 $ff $ff
	ld   [hl], l                                     ; $7d6a: $75
	sub  b                                           ; $7d6b: $90
	sbc  [hl]                                        ; $7d6c: $9e
	ld   d, [hl]                                     ; $7d6d: $56
	ld   d, [hl]                                     ; $7d6e: $56
	ld   [bc], a                                     ; $7d6f: $02
	reti                                             ; $7d70: $d9


	ld   [bc], a                                     ; $7d71: $02
	ld   h, e                                        ; $7d72: $63
	ld   e, d                                        ; $7d73: $5a
	inc  bc                                          ; $7d74: $03
	add  b                                           ; $7d75: $80
	ld   l, l                                        ; $7d76: $6d
	and  c                                           ; $7d77: $a1
	ld   a, l                                        ; $7d78: $7d
	dec  c                                           ; $7d79: $0d
	sub  d                                           ; $7d7a: $92
	ld   [hl], c                                     ; $7d7b: $71
	ld   a, a                                        ; $7d7c: $7f
	sbc  b                                           ; $7d7d: $98
	ld   [$7d00], sp                                 ; $7d7e: $08 $00 $7d
	and  c                                           ; $7d81: $a1
	ld   e, d                                        ; $7d82: $5a
	dec  c                                           ; $7d83: $0d
	ld   e, d                                        ; $7d84: $5a
	and  c                                           ; $7d85: $a1
	ld   a, [hl]                                     ; $7d86: $7e
	ld   [hl], c                                     ; $7d87: $71
	ld   l, l                                        ; $7d88: $6d
	ld   e, c                                        ; $7d89: $59
	sub  a                                           ; $7d8a: $97
	sub  d                                           ; $7d8b: $92
	sbc  a                                           ; $7d8c: $9f
	dec  c                                           ; $7d8d: $0d
	nop                                              ; $7d8e: $00
	ld   a, [bc]                                     ; $7d8f: $0a
	ld   bc, $7889                                   ; $7d90: $01 $89 $78
	sbc  [hl]                                        ; $7d93: $9e
	ld   h, c                                        ; $7d94: $61
	sbc  d                                           ; $7d95: $9a
	ld   e, c                                        ; $7d96: $59
	sub  a                                           ; $7d97: $97
	sub  b                                           ; $7d98: $90
	sbc  [hl]                                        ; $7d99: $9e
	dec  c                                           ; $7d9a: $0d
	ld   h, c                                        ; $7d9b: $61
	ld   a, h                                        ; $7d9c: $7c
	inc  bc                                          ; $7d9d: $03
	cp   $03                                         ; $7d9e: $fe $03
	add  [hl]                                        ; $7da0: $86
	ld   [hl], l                                     ; $7da1: $75
	ld   e, d                                        ; $7da2: $5a
	and  c                                           ; $7da3: $a1
	ld   a, [hl]                                     ; $7da4: $7e
	ld   [hl], c                                     ; $7da5: $71
	ld   [hl], h                                     ; $7da6: $74
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
	inc  c                                           ; $7db5: $0c
	ld   [bc], a                                     ; $7db6: $02
	ld   c, $9d                                      ; $7db7: $0e $9d
	rrca                                             ; $7db9: $0f
	nop                                              ; $7dba: $00
	ld   bc, $ff01                                   ; $7dbb: $01 $01 $ff
	rst  $38                                         ; $7dbe: $ff
	add  e                                           ; $7dbf: $83
	ld   d, h                                        ; $7dc0: $54
	rst  $38                                         ; $7dc1: $ff
	rst  $38                                         ; $7dc2: $ff
	dec  c                                           ; $7dc3: $0d
	ld   [bc], a                                     ; $7dc4: $02
	and  l                                           ; $7dc5: $a5
	inc  b                                           ; $7dc6: $04
	xor  d                                           ; $7dc7: $aa
	ld   a, h                                        ; $7dc8: $7c
	rst  ToBoot                                         ; $7dc9: $c7
	cp   d                                           ; $7dca: $ba
	ret                                              ; $7dcb: $c9


	ld   a, l                                        ; $7dcc: $7d
	dec  c                                           ; $7dcd: $0d
	ld   e, e                                        ; $7dce: $5b
	and  c                                           ; $7dcf: $a1
	ld   l, a                                        ; $7dd0: $6f
	sub  l                                           ; $7dd1: $95
	ld   d, h                                        ; $7dd2: $54
	ld   h, l                                        ; $7dd3: $65
	ld   l, l                                        ; $7dd4: $6d
	ld   a, b                                        ; $7dd5: $78
	ld   d, b                                        ; $7dd6: $50
	rst  $38                                         ; $7dd7: $ff
	rst  $38                                         ; $7dd8: $ff
	dec  c                                           ; $7dd9: $0d
	nop                                              ; $7dda: $00
	ld   a, [bc]                                     ; $7ddb: $0a
	inc  e                                           ; $7ddc: $1c
	ld   b, $00                                      ; $7ddd: $06 $00
	nop                                              ; $7ddf: $00
	ld   bc, $5896                                   ; $7de0: $01 $96 $58
	ld   [hl], c                                     ; $7de3: $71
	sbc  [hl]                                        ; $7de4: $9e
	ld   [$fa00], sp                                 ; $7de5: $08 $00 $fa
	ld   a, [$580d]                                  ; $7de8: $fa $0d $58
	inc  b                                           ; $7deb: $04
	ld   a, e                                        ; $7dec: $7b
	sbc  d                                           ; $7ded: $9a
	ld   h, e                                        ; $7dee: $63
	and  c                                           ; $7def: $a1
	sbc  a                                           ; $7df0: $9f
	dec  c                                           ; $7df1: $0d
	nop                                              ; $7df2: $00
	ld   a, [bc]                                     ; $7df3: $0a
	rrca                                             ; $7df4: $0f
	nop                                              ; $7df5: $00
	ld   bc, $5001                                   ; $7df6: $01 $01 $50
	ld   [hl], c                                     ; $7df9: $71
	sbc  [hl]                                        ; $7dfa: $9e
	xor  h                                           ; $7dfb: $ac
	push af                                          ; $7dfc: $f5
	bit  4, e                                        ; $7dfd: $cb $63
	and  c                                           ; $7dff: $a1
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	dec  c                                           ; $7e02: $0d
	nop                                              ; $7e03: $00
	ld   a, [bc]                                     ; $7e04: $0a
	inc  e                                           ; $7e05: $1c
	ld   b, $07                                      ; $7e06: $06 $07
	rlca                                             ; $7e08: $07
	ld   bc, $bac7                                   ; $7e09: $01 $c7 $ba
	ret                                              ; $7e0c: $c9


	sbc  [hl]                                        ; $7e0d: $9e
	ld   d, d                                        ; $7e0e: $52
	ld   d, d                                        ; $7e0f: $52
	ld   [bc], a                                     ; $7e10: $02
	reti                                             ; $7e11: $d9


	ld   [bc], a                                     ; $7e12: $02
	ld   h, e                                        ; $7e13: $63
	ld   l, [hl]                                     ; $7e14: $6e
	ld   [hl], c                                     ; $7e15: $71
	ld   l, l                                        ; $7e16: $6d
	dec  c                                           ; $7e17: $0d
	adc  l                                           ; $7e18: $8d
	ld   l, l                                        ; $7e19: $6d
	ld   d, d                                        ; $7e1a: $52
	ld   h, [hl]                                     ; $7e1b: $66
	sub  c                                           ; $7e1c: $91
	ld   a, e                                        ; $7e1d: $7b
	ld   d, [hl]                                     ; $7e1e: $56
	ld   e, c                                        ; $7e1f: $59
	sbc  a                                           ; $7e20: $9f
	dec  c                                           ; $7e21: $0d
	nop                                              ; $7e22: $00
	ld   a, [bc]                                     ; $7e23: $0a
	inc  e                                           ; $7e24: $1c
	ld   b, $01                                      ; $7e25: $06 $01
	ld   bc, $6501                                   ; $7e27: $01 $01 $65
	ld   e, c                                        ; $7e2a: $59
	sub  b                                           ; $7e2b: $90
	sbc  [hl]                                        ; $7e2c: $9e
	ld   d, b                                        ; $7e2d: $50
	ld   l, l                                        ; $7e2e: $6d
	ld   d, d                                        ; $7e2f: $52
	ld   a, h                                        ; $7e30: $7c
	ld   [bc], a                                     ; $7e31: $02
	jr   c, jr_068_7e38                              ; $7e32: $38 $04

	ld   d, d                                        ; $7e34: $52
	ld   [hl], l                                     ; $7e35: $75
	dec  c                                           ; $7e36: $0d
	rst  ToBoot                                         ; $7e37: $c7

jr_068_7e38:
	cp   d                                           ; $7e38: $ba
	ret                                              ; $7e39: $c9


	ld   h, l                                        ; $7e3a: $65
	ld   l, l                                        ; $7e3b: $6d
	and  c                                           ; $7e3c: $a1
	ld   l, [hl]                                     ; $7e3d: $6e
	ld   [hl], c                                     ; $7e3e: $71
	ld   [hl], h                                     ; $7e3f: $74
	ld   sp, hl                                      ; $7e40: $f9
	dec  c                                           ; $7e41: $0d
	inc  b                                           ; $7e42: $04
	ld   a, [bc]                                     ; $7e43: $0a
	inc  bc                                          ; $7e44: $03
	jp   nc, $0279                                   ; $7e45: $d2 $79 $02

	jp   nz, Jump_068_6d52                           ; $7e48: $c2 $52 $6d

	ld   l, d                                        ; $7e4b: $6a
	sbc  a                                           ; $7e4c: $9f
	dec  c                                           ; $7e4d: $0d
	nop                                              ; $7e4e: $00
	ld   a, [bc]                                     ; $7e4f: $0a
	rrca                                             ; $7e50: $0f
	nop                                              ; $7e51: $00
	ld   bc, $7d01                                   ; $7e52: $01 $01 $7d
	ld   d, d                                        ; $7e55: $52
	sbc  [hl]                                        ; $7e56: $9e
	ld   d, b                                        ; $7e57: $50
	sbc  b                                           ; $7e58: $98
	ld   e, d                                        ; $7e59: $5a
	halt                                             ; $7e5a: $76
	ld   d, h                                        ; $7e5b: $54
	ld   h, d                                        ; $7e5c: $62
	ld   h, h                                        ; $7e5d: $64
	ld   d, d                                        ; $7e5e: $52
	adc  h                                           ; $7e5f: $8c
	ld   h, a                                        ; $7e60: $67
	ld   a, [$610d]                                  ; $7e61: $fa $0d $61
	sbc  d                                           ; $7e64: $9a
	sub  b                                           ; $7e65: $90
	xor  h                                           ; $7e66: $ac
	push af                                          ; $7e67: $f5
	bit  4, e                                        ; $7e68: $cb $63
	and  c                                           ; $7e6a: $a1
	ld   a, h                                        ; $7e6b: $7c
	inc  bc                                          ; $7e6c: $03
	ld   l, l                                        ; $7e6d: $6d
	dec  b                                           ; $7e6e: $05
	add  hl, de                                      ; $7e6f: $19
	ld   a, h                                        ; $7e70: $7c
	dec  c                                           ; $7e71: $0d
	ld   e, b                                        ; $7e72: $58
	ld   e, c                                        ; $7e73: $59
	ld   h, b                                        ; $7e74: $60
	ld   [hl], l                                     ; $7e75: $75
	ld   h, a                                        ; $7e76: $67
	sbc  a                                           ; $7e77: $9f
	dec  c                                           ; $7e78: $0d
	nop                                              ; $7e79: $00
	ld   a, [bc]                                     ; $7e7a: $0a
	inc  e                                           ; $7e7b: $1c
	ld   b, $04                                      ; $7e7c: $06 $04
	inc  b                                           ; $7e7e: $04
	dec  e                                           ; $7e7f: $1d
	ld   b, b                                        ; $7e80: $40
	ld   d, $03                                      ; $7e81: $16 $03
	ld   d, $01                                      ; $7e83: $16 $01
	inc  bc                                          ; $7e85: $03
	jr   z, jr_068_7e88                              ; $7e86: $28 $00

jr_068_7e88:
	ld   bc, $8686                                   ; $7e88: $01 $86 $86
	rst  $38                                         ; $7e8b: $ff
	rst  $38                                         ; $7e8c: $ff
	ld   d, h                                        ; $7e8d: $54
	sbc  d                                           ; $7e8e: $9a
	ld   h, l                                        ; $7e8f: $65
	ld   d, d                                        ; $7e90: $52
	ld   h, c                                        ; $7e91: $61
	halt                                             ; $7e92: $76
	ld   [bc], a                                     ; $7e93: $02
	sbc  l                                           ; $7e94: $9d
	ld   [hl], c                                     ; $7e95: $71
	ld   [hl], h                                     ; $7e96: $74
	dec  c                                           ; $7e97: $0d
	ld   e, l                                        ; $7e98: $5d
	sbc  d                                           ; $7e99: $9a
	sbc  c                                           ; $7e9a: $99
	ld   h, [hl]                                     ; $7e9b: $66
	sub  c                                           ; $7e9c: $91
	ld   a, e                                        ; $7e9d: $7b
	ld   d, [hl]                                     ; $7e9e: $56
	ld   e, c                                        ; $7e9f: $59
	sbc  a                                           ; $7ea0: $9f
	dec  c                                           ; $7ea1: $0d
	nop                                              ; $7ea2: $00
	ld   a, [bc]                                     ; $7ea3: $0a
	inc  e                                           ; $7ea4: $1c
	ld   b, $01                                      ; $7ea5: $06 $01
	ld   bc, $7501                                   ; $7ea7: $01 $01 $75
	sub  b                                           ; $7eaa: $90
	ld   a, b                                        ; $7eab: $78
	rst  $38                                         ; $7eac: $ff
	rst  $38                                         ; $7ead: $ff
	ld   e, b                                        ; $7eae: $58
	inc  bc                                          ; $7eaf: $03
	ld   c, a                                        ; $7eb0: $4f
	ld   a, h                                        ; $7eb1: $7c
	ld   e, d                                        ; $7eb2: $5a
	and  c                                           ; $7eb3: $a1
	ld   a, [hl]                                     ; $7eb4: $7e
	sbc  b                                           ; $7eb5: $98
	dec  c                                           ; $7eb6: $0d
	ld   l, [hl]                                     ; $7eb7: $6e
	ld   [hl], c                                     ; $7eb8: $71
	ld   [hl], h                                     ; $7eb9: $74
	sbc  [hl]                                        ; $7eba: $9e
	ld   d, b                                        ; $7ebb: $50
	ld   l, l                                        ; $7ebc: $6d
	ld   d, d                                        ; $7ebd: $52
	ld   a, l                                        ; $7ebe: $7d
	ld   l, a                                        ; $7ebf: $6f
	sub  c                                           ; $7ec0: $91
	and  c                                           ; $7ec1: $a1
	halt                                             ; $7ec2: $76
	dec  c                                           ; $7ec3: $0d
	inc  b                                           ; $7ec4: $04
	ld   d, a                                        ; $7ec5: $57
	dec  b                                           ; $7ec6: $05
	add  hl, hl                                      ; $7ec7: $29
	ld   h, l                                        ; $7ec8: $65
	ld   [hl], h                                     ; $7ec9: $74
	sbc  c                                           ; $7eca: $99
	ld   l, d                                        ; $7ecb: $6a
	sbc  a                                           ; $7ecc: $9f
	dec  c                                           ; $7ecd: $0d
	nop                                              ; $7ece: $00
	ld   a, [bc]                                     ; $7ecf: $0a
	ld   bc, $9a6b                                   ; $7ed0: $01 $6b $9a
	ld   h, [hl]                                     ; $7ed3: $66
	sub  c                                           ; $7ed4: $91
	sbc  [hl]                                        ; $7ed5: $9e
	ld   h, c                                        ; $7ed6: $61
	sbc  d                                           ; $7ed7: $9a
	ld   e, c                                        ; $7ed8: $59
	sub  a                                           ; $7ed9: $97
	sub  b                                           ; $7eda: $90
	dec  c                                           ; $7edb: $0d
	ld   h, c                                        ; $7edc: $61
	ld   a, h                                        ; $7edd: $7c
	inc  bc                                          ; $7ede: $03
	cp   $03                                         ; $7edf: $fe $03
	add  [hl]                                        ; $7ee1: $86
	ld   [hl], l                                     ; $7ee2: $75
	ld   e, d                                        ; $7ee3: $5a
	and  c                                           ; $7ee4: $a1
	ld   a, [hl]                                     ; $7ee5: $7e
	sbc  d                                           ; $7ee6: $9a
	sub  [hl]                                        ; $7ee7: $96
	ld   a, [$0dfa]                                  ; $7ee8: $fa $fa $0d
	nop                                              ; $7eeb: $00
	ld   a, [bc]                                     ; $7eec: $0a
	dec  c                                           ; $7eed: $0d
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	rrca                                             ; $7ef0: $0f
	nop                                              ; $7ef1: $00
	ld   bc, $1e09                                   ; $7ef2: $01 $09 $1e
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	inc  b                                           ; $7ef7: $04
	add  b                                           ; $7ef8: $80
	ld   [hl], c                                     ; $7ef9: $71
	ld   bc, $20ff                                   ; $7efa: $01 $ff $20
	inc  b                                           ; $7efd: $04
	add  b                                           ; $7efe: $80
	ld   [hl], d                                     ; $7eff: $72
	ld   bc, $2000                                   ; $7f00: $01 $00 $20
	inc  e                                           ; $7f03: $1c
	inc  bc                                          ; $7f04: $03
	ld   e, e                                        ; $7f05: $5b
	ld   [bc], a                                     ; $7f06: $02
	nop                                              ; $7f07: $00
	jr   nz, jr_068_7f26                             ; $7f08: $20 $1c

	nop                                              ; $7f0a: $00
	ld   c, $02                                      ; $7f0b: $0e $02
	rrca                                             ; $7f0d: $0f
	nop                                              ; $7f0e: $00
	ld   bc, $0102                                   ; $7f0f: $01 $02 $01
	ld   l, e                                        ; $7f12: $6b
	sbc  e                                           ; $7f13: $9b
	ld   l, e                                        ; $7f14: $6b
	sbc  e                                           ; $7f15: $9b
	sbc  [hl]                                        ; $7f16: $9e
	ld   [bc], a                                     ; $7f17: $02
	sub  l                                           ; $7f18: $95
	ld   [bc], a                                     ; $7f19: $02
	sub  e                                           ; $7f1a: $93
	sbc  b                                           ; $7f1b: $98
	ld   a, c                                        ; $7f1c: $79
	ld   [bc], a                                     ; $7f1d: $02
	ld   a, a                                        ; $7f1e: $7f
	ld   e, l                                        ; $7f1f: $5d
	dec  c                                           ; $7f20: $0d
	inc  bc                                          ; $7f21: $03
	ld   l, a                                        ; $7f22: $6f
	ld   [bc], a                                     ; $7f23: $02
	xor  c                                           ; $7f24: $a9
	ld   l, [hl]                                     ; $7f25: $6e

jr_068_7f26:
	ld   a, b                                        ; $7f26: $78
	rst  $38                                         ; $7f27: $ff
	rst  $38                                         ; $7f28: $ff
	dec  c                                           ; $7f29: $0d
	nop                                              ; $7f2a: $00
	ld   a, [bc]                                     ; $7f2b: $0a
	inc  d                                           ; $7f2c: $14
	ld   b, $01                                      ; $7f2d: $06 $01
	rrca                                             ; $7f2f: $0f
	inc  bc                                          ; $7f30: $03
	ld   [bc], a                                     ; $7f31: $02
	ld   bc, $0008                                   ; $7f32: $01 $08 $00
	ld   e, l                                        ; $7f35: $5d
	and  c                                           ; $7f36: $a1
	sbc  a                                           ; $7f37: $9f
	ld   d, d                                        ; $7f38: $52
	sbc  c                                           ; $7f39: $99
	ld   sp, hl                                      ; $7f3a: $f9
	dec  c                                           ; $7f3b: $0d
	inc  b                                           ; $7f3c: $04
	ld   b, l                                        ; $7f3d: $45
	sbc  c                                           ; $7f3e: $99
	sbc  l                                           ; $7f3f: $9d
	sub  [hl]                                        ; $7f40: $96
	sbc  a                                           ; $7f41: $9f
	dec  c                                           ; $7f42: $0d
	nop                                              ; $7f43: $00
	ld   a, [bc]                                     ; $7f44: $0a
	rrca                                             ; $7f45: $0f
	nop                                              ; $7f46: $00
	ld   bc, $7d01                                   ; $7f47: $01 $01 $7d
	ld   d, d                                        ; $7f4a: $52
	sbc  [hl]                                        ; $7f4b: $9e
	ld   [hl], a                                     ; $7f4c: $77
	ld   d, h                                        ; $7f4d: $54
	ld   l, h                                        ; $7f4e: $6c
	sbc  a                                           ; $7f4f: $9f
	dec  c                                           ; $7f50: $0d
	nop                                              ; $7f51: $00
	ld   a, [bc]                                     ; $7f52: $0a
	inc  d                                           ; $7f53: $14
	ld   a, [bc]                                     ; $7f54: $0a
	ld   bc, $031c                                   ; $7f55: $01 $1c $03
	ld   [bc], a                                     ; $7f58: $02
	ld   [bc], a                                     ; $7f59: $02
	ld   bc, $0008                                   ; $7f5a: $01 $08 $00
	ld   e, l                                        ; $7f5d: $5d
	and  c                                           ; $7f5e: $a1
	sbc  a                                           ; $7f5f: $9f
	dec  c                                           ; $7f60: $0d
	ld   a, b                                        ; $7f61: $78
	ld   a, c                                        ; $7f62: $79
	ld   e, c                                        ; $7f63: $59
	inc  b                                           ; $7f64: $04
	and  e                                           ; $7f65: $a3
	sbc  d                                           ; $7f66: $9a
	ld   [hl], h                                     ; $7f67: $74
	ld   a, b                                        ; $7f68: $78
	ld   d, d                                        ; $7f69: $52
	ld   sp, hl                                      ; $7f6a: $f9
	dec  c                                           ; $7f6b: $0d
	nop                                              ; $7f6c: $00
	ld   a, [bc]                                     ; $7f6d: $0a
	inc  e                                           ; $7f6e: $1c
	inc  bc                                          ; $7f6f: $03
	ld   b, $06                                      ; $7f70: $06 $06
	ld   bc, $c803                                   ; $7f72: $01 $03 $c8
	halt                                             ; $7f75: $76
	ld   a, h                                        ; $7f76: $7c
	inc  b                                           ; $7f77: $04
	ldh  [$03], a                                    ; $7f78: $e0 $03
	dec  hl                                          ; $7f7a: $2b
	sub  d                                           ; $7f7b: $92
	add  h                                           ; $7f7c: $84
	ld   [hl], c                                     ; $7f7d: $71
	ld   l, l                                        ; $7f7e: $6d
	ld   [hl], l                                     ; $7f7f: $75
	ld   h, l                                        ; $7f80: $65
	sub  l                                           ; $7f81: $95
	sbc  a                                           ; $7f82: $9f
	dec  c                                           ; $7f83: $0d
	inc  bc                                          ; $7f84: $03
	ret  z                                           ; $7f85: $c8

	ld   l, b                                        ; $7f86: $68
	ld   [hl], c                                     ; $7f87: $71
	halt                                             ; $7f88: $76
	inc  bc                                          ; $7f89: $03
	db   $f4                                         ; $7f8a: $f4
	inc  b                                           ; $7f8b: $04
	ld   e, c                                        ; $7f8c: $59
	ld   [hl], l                                     ; $7f8d: $75
	adc  h                                           ; $7f8e: $8c
	ld   [hl], c                                     ; $7f8f: $71
	ld   [hl], h                                     ; $7f90: $74
	ld   l, l                                        ; $7f91: $6d
	ld   a, h                                        ; $7f92: $7c
	sub  [hl]                                        ; $7f93: $96
	ld   a, [$000d]                                  ; $7f94: $fa $0d $00
	ld   a, [bc]                                     ; $7f97: $0a
	dec  e                                           ; $7f98: $1d
	ld   b, b                                        ; $7f99: $40
	inc  de                                          ; $7f9a: $13
	inc  bc                                          ; $7f9b: $03
	inc  de                                          ; $7f9c: $13
	ld   bc, $2903                                   ; $7f9d: $01 $03 $29
	nop                                              ; $7fa0: $00
	ld   bc, $e004                                   ; $7fa1: $01 $04 $e0
	inc  bc                                          ; $7fa4: $03
	dec  hl                                          ; $7fa5: $2b
	and  b                                           ; $7fa6: $a0
	sub  d                                           ; $7fa7: $92
	add  h                                           ; $7fa8: $84
	sbc  c                                           ; $7fa9: $99
	ld   a, b                                        ; $7faa: $78
	and  c                                           ; $7fab: $a1
	ld   [hl], h                                     ; $7fac: $74
	dec  c                                           ; $7fad: $0d
	inc  bc                                          ; $7fae: $03
	ld   l, c                                        ; $7faf: $69
	inc  bc                                          ; $7fb0: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fb1: $cf
	ld   l, [hl]                                     ; $7fb2: $6e
	sbc  l                                           ; $7fb3: $9d
	ld   a, [$000d]                                  ; $7fb4: $fa $0d $00
	ld   a, [bc]                                     ; $7fb7: $0a
	dec  c                                           ; $7fb8: $0d
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	rrca                                             ; $7fbb: $0f
	nop                                              ; $7fbc: $00
	ld   bc, $1e09                                   ; $7fbd: $01 $09 $1e
	add  hl, hl                                      ; $7fc0: $29
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	inc  b                                           ; $7fc4: $04
	add  b                                           ; $7fc5: $80
	ld   [hl], b                                     ; $7fc6: $70
	ld   bc, $20ff                                   ; $7fc7: $01 $ff $20
	nop                                              ; $7fca: $00
	inc  e                                           ; $7fcb: $1c
	inc  bc                                          ; $7fcc: $03
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	ld   [bc], a                                     ; $7fcf: $02
	ld   bc, $9750                                   ; $7fd0: $01 $50 $97
	sbc  [hl]                                        ; $7fd3: $9e
	ld   [$5d00], sp                                 ; $7fd4: $08 $00 $5d
	and  c                                           ; $7fd7: $a1
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	dec  c                                           ; $7fda: $0d
	nop                                              ; $7fdb: $00
	ld   a, [bc]                                     ; $7fdc: $0a
	rrca                                             ; $7fdd: $0f
	nop                                              ; $7fde: $00
	ld   bc, $7701                                   ; $7fdf: $01 $01 $77
	ld   d, h                                        ; $7fe2: $54
	ld   h, l                                        ; $7fe3: $65
	ld   l, l                                        ; $7fe4: $6d
	and  c                                           ; $7fe5: $a1
	ld   [hl], l                                     ; $7fe6: $75
	ld   h, a                                        ; $7fe7: $67
	ld   e, c                                        ; $7fe8: $59
	ld   sp, hl                                      ; $7fe9: $f9
	dec  c                                           ; $7fea: $0d
	inc  b                                           ; $7feb: $04
	ld   c, c                                        ; $7fec: $49
	ld   e, c                                        ; $7fed: $59
	ld   [bc], a                                     ; $7fee: $02
	ld   bc, $0452                                   ; $7fef: $01 $52 $04
	call nc, Call_068_65a0                           ; $7ff2: $d4 $a0 $65
	ld   [hl], h                                     ; $7ff5: $74
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	dec  c                                           ; $7ff8: $0d
	nop                                              ; $7ff9: $00
	ld   a, [bc]                                     ; $7ffa: $0a
	inc  e                                           ; $7ffb: $1c
	inc  bc                                          ; $7ffc: $03
	inc  b                                           ; $7ffd: $04
	inc  b                                           ; $7ffe: $04
	db   $01                                         ; $7fff: $01
