; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

	sub  c                                           ; $4000: $91
	ld   l, [hl]                                     ; $4001: $6e
	adc  a                                           ; $4002: $8f
	ld   l, [hl]                                     ; $4003: $6e
	sub  [hl]                                        ; $4004: $96
	sbc  a                                           ; $4005: $9f
	dec  c                                           ; $4006: $0d
	nop                                              ; $4007: $00
	inc  e                                           ; $4008: $1c
	inc  b                                           ; $4009: $04
	ld   bc, $0101                                   ; $400a: $01 $01 $01
	ld   h, [hl]                                     ; $400d: $66
	sub  c                                           ; $400e: $91
	sbc  [hl]                                        ; $400f: $9e
	ld   e, b                                        ; $4010: $58
	sub  d                                           ; $4011: $92
	ld   h, a                                        ; $4012: $67
	adc  l                                           ; $4013: $8d
	sbc  a                                           ; $4014: $9f
	dec  c                                           ; $4015: $0d
	nop                                              ; $4016: $00
	ld   a, [bc]                                     ; $4017: $0a
	dec  c                                           ; $4018: $0d
	nop                                              ; $4019: $00
	nop                                              ; $401a: $00
	rrca                                             ; $401b: $0f
	nop                                              ; $401c: $00
	ld   bc, $1e09                                   ; $401d: $01 $09 $1e
	nop                                              ; $4020: $00
	rrca                                             ; $4021: $0f
	nop                                              ; $4022: $00
	ld   bc, $6201                                   ; $4023: $01 $01 $62
	adc  a                                           ; $4026: $8f
	and  c                                           ; $4027: $a1
	ld   a, e                                        ; $4028: $7b
	rst  $38                                         ; $4029: $ff
	rst  $38                                         ; $402a: $ff
	dec  c                                           ; $402b: $0d
	inc  b                                           ; $402c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $402d: $cf
	inc  b                                           ; $402e: $04
	xor  d                                           ; $402f: $aa
	ld   a, l                                        ; $4030: $7d
	ld   l, a                                        ; $4031: $6f
	sub  l                                           ; $4032: $95
	ld   [hl], c                                     ; $4033: $71
	halt                                             ; $4034: $76
	rst  $38                                         ; $4035: $ff
	rst  $38                                         ; $4036: $ff
	dec  c                                           ; $4037: $0d
	nop                                              ; $4038: $00
	ld   a, [bc]                                     ; $4039: $0a
	inc  e                                           ; $403a: $1c
	inc  b                                           ; $403b: $04
	inc  bc                                          ; $403c: $03
	inc  bc                                          ; $403d: $03
	dec  e                                           ; $403e: $1d
	ld   b, b                                        ; $403f: $40
	inc  d                                           ; $4040: $14
	inc  bc                                          ; $4041: $03
	inc  d                                           ; $4042: $14
	ld   bc, $2901                                   ; $4043: $01 $01 $29
	nop                                              ; $4046: $00
	ld   bc, $5656                                   ; $4047: $01 $56 $56
	rst  $38                                         ; $404a: $ff
	rst  $38                                         ; $404b: $ff
	dec  c                                           ; $404c: $0d
	ld   [hl], d                                     ; $404d: $72
	adc  h                                           ; $404e: $8c
	and  c                                           ; $404f: $a1
	ld   a, b                                        ; $4050: $78
	ei                                               ; $4051: $fb
	ld   d, d                                        ; $4052: $52
	ld   a, [$660d]                                  ; $4053: $fa $0d $66
	sub  c                                           ; $4056: $91
	ld   d, b                                        ; $4057: $50
	sbc  [hl]                                        ; $4058: $9e
	ld   d, d                                        ; $4059: $52
	ld   d, d                                        ; $405a: $52
	sub  b                                           ; $405b: $90
	and  c                                           ; $405c: $a1
	ld   a, [$000d]                                  ; $405d: $fa $0d $00
	ld   a, [bc]                                     ; $4060: $0a
	dec  c                                           ; $4061: $0d
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	rrca                                             ; $4064: $0f
	nop                                              ; $4065: $00
	ld   bc, $1e09                                   ; $4066: $01 $09 $1e
	nop                                              ; $4069: $00
	inc  e                                           ; $406a: $1c
	inc  b                                           ; $406b: $04
	ld   [bc], a                                     ; $406c: $02
	ld   [bc], a                                     ; $406d: $02
	dec  e                                           ; $406e: $1d
	ld   b, b                                        ; $406f: $40
	inc  d                                           ; $4070: $14
	inc  bc                                          ; $4071: $03
	inc  d                                           ; $4072: $14
	ld   bc, $2903                                   ; $4073: $01 $03 $29
	nop                                              ; $4076: $00
	ld   bc, $ff50                                   ; $4077: $01 $50 $ff
	rst  $38                                         ; $407a: $ff
	ld   d, d                                        ; $407b: $52
	sub  d                                           ; $407c: $92
	ld   l, e                                        ; $407d: $6b
	ld   d, h                                        ; $407e: $54
	ld   a, b                                        ; $407f: $78
	ld   e, c                                        ; $4080: $59
	ld   e, b                                        ; $4081: $58
	ld   h, l                                        ; $4082: $65
	ld   [hl], h                                     ; $4083: $74
	sbc  c                                           ; $4084: $99
	sbc  a                                           ; $4085: $9f
	dec  c                                           ; $4086: $0d
	ld   h, [hl]                                     ; $4087: $66
	sub  c                                           ; $4088: $91
	ld   d, b                                        ; $4089: $50
	sbc  [hl]                                        ; $408a: $9e
	sub  b                                           ; $408b: $90
	ld   d, h                                        ; $408c: $54
	ld   d, d                                        ; $408d: $52
	ld   d, d                                        ; $408e: $52
	sub  [hl]                                        ; $408f: $96
	ld   a, [$000d]                                  ; $4090: $fa $0d $00
	ld   a, [bc]                                     ; $4093: $0a
	dec  c                                           ; $4094: $0d
	nop                                              ; $4095: $00
	nop                                              ; $4096: $00
	rrca                                             ; $4097: $0f
	nop                                              ; $4098: $00
	ld   bc, $1e09                                   ; $4099: $01 $09 $1e
	nop                                              ; $409c: $00
	nop                                              ; $409d: $00
	inc  bc                                          ; $409e: $03
	inc  de                                          ; $409f: $13
	ld   bc, $25aa                                   ; $40a0: $01 $aa $25
	inc  b                                           ; $40a3: $04
	add  b                                           ; $40a4: $80
	halt                                             ; $40a5: $76
	ld   bc, $20ff                                   ; $40a6: $01 $ff $20
	inc  e                                           ; $40a9: $1c
	nop                                              ; $40aa: $00
	ld   c, $02                                      ; $40ab: $0e $02
	rrca                                             ; $40ad: $0f
	nop                                              ; $40ae: $00
	ld   bc, $0102                                   ; $40af: $01 $02 $01
	rst  $38                                         ; $40b2: $ff
	rst  $38                                         ; $40b3: $ff
	and  c                                           ; $40b4: $a1
	ld   sp, hl                                      ; $40b5: $f9
	dec  c                                           ; $40b6: $0d
	sub  b                                           ; $40b7: $90
	ld   d, h                                        ; $40b8: $54
	ld   h, c                                        ; $40b9: $61
	and  c                                           ; $40ba: $a1
	ld   a, b                                        ; $40bb: $78
	inc  bc                                          ; $40bc: $03
	ld   l, a                                        ; $40bd: $6f
	ld   [bc], a                                     ; $40be: $02
	xor  c                                           ; $40bf: $a9
	ld   e, c                                        ; $40c0: $59
	rst  $38                                         ; $40c1: $ff
	rst  $38                                         ; $40c2: $ff
	dec  c                                           ; $40c3: $0d
	nop                                              ; $40c4: $00
	inc  d                                           ; $40c5: $14
	ld   b, $01                                      ; $40c6: $06 $01
	ld   bc, $aa04                                   ; $40c8: $01 $04 $aa
	ld   [bc], a                                     ; $40cb: $02
	sub  a                                           ; $40cc: $97
	and  b                                           ; $40cd: $a0
	ld   [hl], d                                     ; $40ce: $72
	ld   e, a                                        ; $40cf: $5f
	ld   [hl], h                                     ; $40d0: $74
	sbc  [hl]                                        ; $40d1: $9e
	inc  b                                           ; $40d2: $04
	ld   b, d                                        ; $40d3: $42
	sub  [hl]                                        ; $40d4: $96
	ld   d, h                                        ; $40d5: $54
	sbc  a                                           ; $40d6: $9f
	dec  c                                           ; $40d7: $0d
	nop                                              ; $40d8: $00
	ld   a, [bc]                                     ; $40d9: $0a
	rrca                                             ; $40da: $0f
	inc  bc                                          ; $40db: $03
	inc  bc                                          ; $40dc: $03
	ld   bc, $0008                                   ; $40dd: $01 $08 $00
	ld   e, l                                        ; $40e0: $5d
	and  c                                           ; $40e1: $a1
	dec  c                                           ; $40e2: $0d
	ld   d, d                                        ; $40e3: $52
	sbc  c                                           ; $40e4: $99
	ld   e, c                                        ; $40e5: $59
	ld   h, l                                        ; $40e6: $65
	sub  a                                           ; $40e7: $97
	ld   sp, hl                                      ; $40e8: $f9
	dec  c                                           ; $40e9: $0d
	nop                                              ; $40ea: $00
	ld   a, [bc]                                     ; $40eb: $0a
	rrca                                             ; $40ec: $0f
	nop                                              ; $40ed: $00
	ld   bc, $7d01                                   ; $40ee: $01 $01 $7d
	ld   d, d                                        ; $40f1: $52
	sbc  [hl]                                        ; $40f2: $9e
	ld   [hl], a                                     ; $40f3: $77
	ld   d, h                                        ; $40f4: $54
	ld   l, h                                        ; $40f5: $6c
	sbc  a                                           ; $40f6: $9f
	dec  c                                           ; $40f7: $0d
	nop                                              ; $40f8: $00
	ld   a, [bc]                                     ; $40f9: $0a
	inc  d                                           ; $40fa: $14
	ld   a, [bc]                                     ; $40fb: $0a
	ld   bc, $031c                                   ; $40fc: $01 $1c $03
	inc  bc                                          ; $40ff: $03
	inc  bc                                          ; $4100: $03
	ld   bc, $ef04                                   ; $4101: $01 $04 $ef
	ld   e, b                                        ; $4104: $58
	ld   l, e                                        ; $4105: $6b
	ld   e, l                                        ; $4106: $5d
	ld   a, c                                        ; $4107: $79
	sbc  [hl]                                        ; $4108: $9e
	ld   h, d                                        ; $4109: $62
	adc  a                                           ; $410a: $8f
	and  c                                           ; $410b: $a1
	ld   a, b                                        ; $410c: $78
	ld   h, e                                        ; $410d: $63
	ld   d, d                                        ; $410e: $52
	sbc  a                                           ; $410f: $9f
	dec  c                                           ; $4110: $0d
	ld   [$5d00], sp                                 ; $4111: $08 $00 $5d
	and  c                                           ; $4114: $a1
	ld   a, l                                        ; $4115: $7d
	dec  c                                           ; $4116: $0d
	inc  b                                           ; $4117: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4118: $cf
	inc  b                                           ; $4119: $04
	xor  d                                           ; $411a: $aa
	sbc  [hl]                                        ; $411b: $9e
	add  b                                           ; $411c: $80
	adc  h                                           ; $411d: $8c
	ld   e, c                                        ; $411e: $59
	ld   h, l                                        ; $411f: $65
	sub  a                                           ; $4120: $97
	ld   sp, hl                                      ; $4121: $f9
	dec  c                                           ; $4122: $0d
	nop                                              ; $4123: $00
	ld   a, [bc]                                     ; $4124: $0a
	ld   bc, $956f                                   ; $4125: $01 $6f $95
	ld   [hl], c                                     ; $4128: $71
	halt                                             ; $4129: $76
	inc  bc                                          ; $412a: $03
	ld   l, e                                        ; $412b: $6b
	inc  b                                           ; $412c: $04
	ld   [de], a                                     ; $412d: $12
	ld   [hl], c                                     ; $412e: $71
	ld   [hl], h                                     ; $412f: $74
	dec  c                                           ; $4130: $0d
	inc  b                                           ; $4131: $04
	db   $e3                                         ; $4132: $e3
	ld   h, l                                        ; $4133: $65
	ld   d, d                                        ; $4134: $52
	ld   h, c                                        ; $4135: $61
	halt                                             ; $4136: $76
	ld   e, d                                        ; $4137: $5a
	ld   d, b                                        ; $4138: $50
	sbc  c                                           ; $4139: $99
	and  c                                           ; $413a: $a1
	ld   l, [hl]                                     ; $413b: $6e
	ld   e, a                                        ; $413c: $5f
	ld   [hl], a                                     ; $413d: $77
	rst  $38                                         ; $413e: $ff
	rst  $38                                         ; $413f: $ff
	dec  c                                           ; $4140: $0d
	nop                                              ; $4141: $00
	ld   a, [bc]                                     ; $4142: $0a
	add  hl, de                                      ; $4143: $19
	dec  b                                           ; $4144: $05
	ld   [bc], a                                     ; $4145: $02
	db   $d3                                         ; $4146: $d3
	rst  JumpTable                                         ; $4147: $df
	nop                                              ; $4148: $00
	nop                                              ; $4149: $00
	ld   d, d                                        ; $414a: $52
	ld   l, e                                        ; $414b: $6b
	ld   e, d                                        ; $414c: $5a
	ld   h, l                                        ; $414d: $65
	ld   d, d                                        ; $414e: $52
	nop                                              ; $414f: $00
	ld   bc, $4307                                   ; $4150: $01 $07 $43
	ld   bc, $0302                                   ; $4153: $01 $02 $03
	ld   bc, $2000                                   ; $4156: $01 $00 $20
	nop                                              ; $4159: $00
	rlca                                             ; $415a: $07
	cp   e                                           ; $415b: $bb
	nop                                              ; $415c: $00
	ld   [bc], a                                     ; $415d: $02
	inc  bc                                          ; $415e: $03
	ld   bc, $2001                                   ; $415f: $01 $01 $20
	nop                                              ; $4162: $00
	ld   b, $0b                                      ; $4163: $06 $0b
	ld   bc, $000f                                   ; $4165: $01 $0f $00
	ld   bc, $6701                                   ; $4168: $01 $01 $67
	adc  l                                           ; $416b: $8d
	adc  h                                           ; $416c: $8c
	ld   l, c                                        ; $416d: $69
	and  c                                           ; $416e: $a1
	rst  $38                                         ; $416f: $ff
	rst  $38                                         ; $4170: $ff
	dec  c                                           ; $4171: $0d
	inc  b                                           ; $4172: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4173: $cf
	inc  b                                           ; $4174: $04
	xor  d                                           ; $4175: $aa
	ld   a, l                                        ; $4176: $7d
	ld   l, a                                        ; $4177: $6f
	sub  l                                           ; $4178: $95
	ld   [hl], c                                     ; $4179: $71
	halt                                             ; $417a: $76
	rst  $38                                         ; $417b: $ff
	rst  $38                                         ; $417c: $ff
	dec  c                                           ; $417d: $0d
	nop                                              ; $417e: $00
	ld   a, [bc]                                     ; $417f: $0a
	inc  e                                           ; $4180: $1c
	inc  bc                                          ; $4181: $03
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	ld   bc, $f304                                   ; $4184: $01 $04 $f3
	ld   [bc], a                                     ; $4187: $02
	jp   $505a                               ; $4188: $c3 $5a $50


	sbc  c                                           ; $418b: $99
	ld   a, h                                        ; $418c: $7c
	ld   a, e                                        ; $418d: $7b
	sbc  a                                           ; $418e: $9f
	dec  c                                           ; $418f: $0d
	ld   l, e                                        ; $4190: $6b
	sbc  d                                           ; $4191: $9a
	ld   h, [hl]                                     ; $4192: $66
	sub  c                                           ; $4193: $91
	sbc  [hl]                                        ; $4194: $9e
	inc  bc                                          ; $4195: $03
	dec  c                                           ; $4196: $0d
	inc  b                                           ; $4197: $04
	ld   a, b                                        ; $4198: $78
	ld   a, b                                        ; $4199: $78
	ld   d, d                                        ; $419a: $52
	sbc  l                                           ; $419b: $9d
	ld   a, e                                        ; $419c: $7b
	sbc  a                                           ; $419d: $9f
	dec  c                                           ; $419e: $0d
	ld   h, [hl]                                     ; $419f: $66
	sub  c                                           ; $41a0: $91
	sbc  [hl]                                        ; $41a1: $9e
	ld   e, b                                        ; $41a2: $58
	sub  d                                           ; $41a3: $92
	ld   h, a                                        ; $41a4: $67
	adc  l                                           ; $41a5: $8d
	ld   a, b                                        ; $41a6: $78
	ld   h, e                                        ; $41a7: $63
	ld   d, d                                        ; $41a8: $52
	sbc  a                                           ; $41a9: $9f
	dec  c                                           ; $41aa: $0d
	nop                                              ; $41ab: $00
	ld   a, [bc]                                     ; $41ac: $0a
	dec  c                                           ; $41ad: $0d
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	rrca                                             ; $41b0: $0f
	nop                                              ; $41b1: $00
	ld   bc, $1e09                                   ; $41b2: $01 $09 $1e
	nop                                              ; $41b5: $00
	inc  e                                           ; $41b6: $1c
	inc  bc                                          ; $41b7: $03
	inc  b                                           ; $41b8: $04
	inc  b                                           ; $41b9: $04
	dec  e                                           ; $41ba: $1d
	ld   b, b                                        ; $41bb: $40
	inc  de                                          ; $41bc: $13
	inc  bc                                          ; $41bd: $03
	inc  de                                          ; $41be: $13
	ld   bc, $2902                                   ; $41bf: $01 $02 $29
	nop                                              ; $41c2: $00
	ld   bc, $a102                                   ; $41c3: $01 $02 $a1
	ld   e, d                                        ; $41c6: $5a
	inc  bc                                          ; $41c7: $03
	cp   c                                           ; $41c8: $b9
	sub  a                                           ; $41c9: $97
	ld   a, b                                        ; $41ca: $78
	ld   d, d                                        ; $41cb: $52
	ld   a, b                                        ; $41cc: $78
	sub  a                                           ; $41cd: $97
	ld   d, d                                        ; $41ce: $52
	ld   d, d                                        ; $41cf: $52
	sbc  l                                           ; $41d0: $9d
	sbc  a                                           ; $41d1: $9f
	dec  c                                           ; $41d2: $0d
	ld   l, e                                        ; $41d3: $6b
	sbc  d                                           ; $41d4: $9a
	ld   h, [hl]                                     ; $41d5: $66
	sub  c                                           ; $41d6: $91
	rst  $38                                         ; $41d7: $ff
	rst  $38                                         ; $41d8: $ff
	dec  c                                           ; $41d9: $0d
	ld   e, b                                        ; $41da: $58
	sub  d                                           ; $41db: $92
	ld   h, a                                        ; $41dc: $67
	adc  l                                           ; $41dd: $8d
	ld   a, b                                        ; $41de: $78
	ld   h, e                                        ; $41df: $63
	ld   d, d                                        ; $41e0: $52
	sbc  a                                           ; $41e1: $9f
	dec  c                                           ; $41e2: $0d
	nop                                              ; $41e3: $00
	ld   a, [bc]                                     ; $41e4: $0a
	dec  c                                           ; $41e5: $0d
	nop                                              ; $41e6: $00
	nop                                              ; $41e7: $00
	rrca                                             ; $41e8: $0f
	nop                                              ; $41e9: $00
	ld   bc, $1e09                                   ; $41ea: $01 $09 $1e
	nop                                              ; $41ed: $00
	rrca                                             ; $41ee: $0f
	nop                                              ; $41ef: $00
	ld   bc, $5601                                   ; $41f0: $01 $01 $56
	ld   d, [hl]                                     ; $41f3: $56
	sbc  [hl]                                        ; $41f4: $9e
	db   $d3                                         ; $41f5: $d3
	rst  JumpTable                                         ; $41f6: $df
	ld   [hl], l                                     ; $41f7: $75
	ld   h, a                                        ; $41f8: $67
	ld   e, a                                        ; $41f9: $5f
	ld   [hl], a                                     ; $41fa: $77
	sbc  a                                           ; $41fb: $9f
	dec  c                                           ; $41fc: $0d
	nop                                              ; $41fd: $00
	ld   a, [bc]                                     ; $41fe: $0a
	inc  e                                           ; $41ff: $1c
	inc  bc                                          ; $4200: $03
	inc  bc                                          ; $4201: $03
	inc  bc                                          ; $4202: $03
	ld   bc, $9166                                   ; $4203: $01 $66 $91
	ld   d, b                                        ; $4206: $50
	sbc  [hl]                                        ; $4207: $9e
	inc  b                                           ; $4208: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4209: $cf
	inc  b                                           ; $420a: $04
	xor  d                                           ; $420b: $aa
	sbc  [hl]                                        ; $420c: $9e
	adc  h                                           ; $420d: $8c
	sbc  c                                           ; $420e: $99
	ld   [bc], a                                     ; $420f: $02
	jr   nz, jr_06b_4216                             ; $4210: $20 $04

	xor  d                                           ; $4212: $aa
	dec  c                                           ; $4213: $0d
	ld   [hl], d                                     ; $4214: $72
	ld   e, e                                        ; $4215: $5b

jr_06b_4216:
	ld   d, b                                        ; $4216: $50
	ld   [hl], c                                     ; $4217: $71
	ld   [hl], h                                     ; $4218: $74
	sub  b                                           ; $4219: $90
	sub  a                                           ; $421a: $97
	ld   d, h                                        ; $421b: $54
	sbc  l                                           ; $421c: $9d
	sub  [hl]                                        ; $421d: $96
	sbc  a                                           ; $421e: $9f
	dec  c                                           ; $421f: $0d
	nop                                              ; $4220: $00
	ld   a, [bc]                                     ; $4221: $0a
	ld   bc, $cf04                                   ; $4222: $01 $04 $cf
	inc  b                                           ; $4225: $04
	xor  d                                           ; $4226: $aa
	ld   a, h                                        ; $4227: $7c
	inc  bc                                          ; $4228: $03
	ld   d, $9e                                      ; $4229: $16 $9e
	ld   [de], a                                     ; $422b: $12
	ld   [bc], a                                     ; $422c: $02
	ld   e, h                                        ; $422d: $5c
	ld   a, h                                        ; $422e: $7c
	call c, $edfb                                    ; $422f: $dc $fb $ed
	ld   [hl], l                                     ; $4232: $75
	dec  c                                           ; $4233: $0d
	inc  b                                           ; $4234: $04
	rla                                              ; $4235: $17
	ld   [hl], c                                     ; $4236: $71
	ld   [hl], h                                     ; $4237: $74
	sbc  c                                           ; $4238: $99
	sbc  l                                           ; $4239: $9d
	sbc  a                                           ; $423a: $9f
	dec  c                                           ; $423b: $0d
	nop                                              ; $423c: $00
	dec  b                                           ; $423d: $05
	add  b                                           ; $423e: $80
	ld   [hl], a                                     ; $423f: $77
	ld   bc, $0001                                   ; $4240: $01 $01 $00
	ld   bc, $9258                                   ; $4243: $01 $58 $92
	ld   h, a                                        ; $4246: $67
	adc  l                                           ; $4247: $8d
	ld   a, b                                        ; $4248: $78
	ld   h, e                                        ; $4249: $63
	ld   d, d                                        ; $424a: $52
	sbc  a                                           ; $424b: $9f
	dec  c                                           ; $424c: $0d
	nop                                              ; $424d: $00
	ld   a, [bc]                                     ; $424e: $0a
	dec  c                                           ; $424f: $0d
	nop                                              ; $4250: $00
	nop                                              ; $4251: $00
	rrca                                             ; $4252: $0f
	nop                                              ; $4253: $00
	ld   bc, $1e09                                   ; $4254: $01 $09 $1e
	nop                                              ; $4257: $00
	nop                                              ; $4258: $00
	inc  bc                                          ; $4259: $03
	dec  d                                           ; $425a: $15
	ld   bc, $25b4                                   ; $425b: $01 $b4 $25
	inc  b                                           ; $425e: $04
	add  b                                           ; $425f: $80
	inc  [hl]                                        ; $4260: $34
	ld   bc, $20ff                                   ; $4261: $01 $ff $20
	inc  e                                           ; $4264: $1c
	nop                                              ; $4265: $00
	ld   c, $02                                      ; $4266: $0e $02
	rrca                                             ; $4268: $0f
	nop                                              ; $4269: $00
	ld   bc, $0102                                   ; $426a: $01 $02 $01
	rst  $38                                         ; $426d: $ff
	rst  $38                                         ; $426e: $ff
	and  c                                           ; $426f: $a1
	ld   sp, hl                                      ; $4270: $f9
	dec  c                                           ; $4271: $0d
	sub  b                                           ; $4272: $90
	ld   d, h                                        ; $4273: $54
	ld   h, c                                        ; $4274: $61
	and  c                                           ; $4275: $a1
	ld   a, b                                        ; $4276: $78
	inc  bc                                          ; $4277: $03
	ld   l, a                                        ; $4278: $6f
	ld   [bc], a                                     ; $4279: $02
	xor  c                                           ; $427a: $a9
	ld   e, c                                        ; $427b: $59
	rst  $38                                         ; $427c: $ff
	rst  $38                                         ; $427d: $ff
	dec  c                                           ; $427e: $0d
	nop                                              ; $427f: $00
	inc  d                                           ; $4280: $14
	ld   b, $01                                      ; $4281: $06 $01
	ld   bc, $aa04                                   ; $4283: $01 $04 $aa
	ld   [bc], a                                     ; $4286: $02
	sub  a                                           ; $4287: $97
	and  b                                           ; $4288: $a0
	ld   [hl], d                                     ; $4289: $72
	ld   e, a                                        ; $428a: $5f
	ld   [hl], h                                     ; $428b: $74
	sbc  [hl]                                        ; $428c: $9e
	inc  b                                           ; $428d: $04
	ld   b, d                                        ; $428e: $42
	sub  [hl]                                        ; $428f: $96
	ld   d, h                                        ; $4290: $54
	sbc  a                                           ; $4291: $9f
	dec  c                                           ; $4292: $0d
	nop                                              ; $4293: $00
	ld   a, [bc]                                     ; $4294: $0a
	rrca                                             ; $4295: $0f
	dec  b                                           ; $4296: $05
	ld   bc, $0801                                   ; $4297: $01 $01 $08
	nop                                              ; $429a: $00
	ld   a, l                                        ; $429b: $7d
	and  c                                           ; $429c: $a1
	dec  c                                           ; $429d: $0d
	ld   l, a                                        ; $429e: $6f
	sub  l                                           ; $429f: $95
	ld   [hl], c                                     ; $42a0: $71
	halt                                             ; $42a1: $76
	xor  c                                           ; $42a2: $a9
	xor  c                                           ; $42a3: $a9
	ld   e, c                                        ; $42a4: $59
	ld   sp, hl                                      ; $42a5: $f9
	dec  c                                           ; $42a6: $0d
	nop                                              ; $42a7: $00
	ld   a, [bc]                                     ; $42a8: $0a
	rrca                                             ; $42a9: $0f
	nop                                              ; $42aa: $00
	ld   bc, $7d01                                   ; $42ab: $01 $01 $7d
	ld   d, d                                        ; $42ae: $52
	sbc  [hl]                                        ; $42af: $9e
	ld   [hl], a                                     ; $42b0: $77
	ld   d, h                                        ; $42b1: $54
	ld   l, h                                        ; $42b2: $6c
	sbc  a                                           ; $42b3: $9f
	dec  c                                           ; $42b4: $0d
	nop                                              ; $42b5: $00
	ld   a, [bc]                                     ; $42b6: $0a
	inc  d                                           ; $42b7: $14
	ld   a, [bc]                                     ; $42b8: $0a
	ld   bc, $051c                                   ; $42b9: $01 $1c $05
	ld   bc, $0101                                   ; $42bc: $01 $01 $01
	inc  b                                           ; $42bf: $04
	rst  $28                                         ; $42c0: $ef
	ld   e, b                                        ; $42c1: $58
	ld   l, e                                        ; $42c2: $6b
	ld   e, l                                        ; $42c3: $5d
	ld   a, c                                        ; $42c4: $79
	ld   h, d                                        ; $42c5: $62
	adc  a                                           ; $42c6: $8f
	and  c                                           ; $42c7: $a1
	ld   a, b                                        ; $42c8: $78
	sbc  [hl]                                        ; $42c9: $9e
	dec  c                                           ; $42ca: $0d
	ld   [$7d00], sp                                 ; $42cb: $08 $00 $7d
	and  c                                           ; $42ce: $a1
	sbc  a                                           ; $42cf: $9f
	dec  c                                           ; $42d0: $0d
	nop                                              ; $42d1: $00
	ld   a, [bc]                                     ; $42d2: $0a
	ld   bc, $0008                                   ; $42d3: $01 $08 $00
	ld   a, l                                        ; $42d6: $7d
	and  c                                           ; $42d7: $a1
	sbc  [hl]                                        ; $42d8: $9e
	dec  c                                           ; $42d9: $0d
	sub  b                                           ; $42da: $90
	ld   h, l                                        ; $42db: $65
	sbc  [hl]                                        ; $42dc: $9e
	inc  b                                           ; $42dd: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42de: $cf
	inc  b                                           ; $42df: $04
	xor  d                                           ; $42e0: $aa
	add  b                                           ; $42e1: $80
	adc  h                                           ; $42e2: $8c
	sub  d                                           ; $42e3: $92
	ld   [hl], c                                     ; $42e4: $71
	ld   l, l                                        ; $42e5: $6d
	sub  a                                           ; $42e6: $97
	dec  c                                           ; $42e7: $0d
	and  a                                           ; $42e8: $a7
	jp   nz, $0479                                   ; $42e9: $c2 $79 $04

	ld   [hl], c                                     ; $42ec: $71
	ld   e, e                                        ; $42ed: $5b
	ld   d, b                                        ; $42ee: $50
	ld   [hl], c                                     ; $42ef: $71
	ld   [hl], h                                     ; $42f0: $74
	ld   e, l                                        ; $42f1: $5d
	sbc  d                                           ; $42f2: $9a
	add  [hl]                                        ; $42f3: $86
	and  c                                           ; $42f4: $a1
	ld   sp, hl                                      ; $42f5: $f9
	dec  c                                           ; $42f6: $0d
	nop                                              ; $42f7: $00
	ld   a, [bc]                                     ; $42f8: $0a
	add  hl, de                                      ; $42f9: $19
	dec  b                                           ; $42fa: $05
	ld   [bc], a                                     ; $42fb: $02
	ld   a, l                                        ; $42fc: $7d
	ld   d, d                                        ; $42fd: $52
	sbc  [hl]                                        ; $42fe: $9e
	sub  [hl]                                        ; $42ff: $96
	sbc  e                                           ; $4300: $9b
	ld   h, c                                        ; $4301: $61
	and  c                                           ; $4302: $a1
	ld   [hl], l                                     ; $4303: $75
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	inc  b                                           ; $4306: $04
	di                                               ; $4307: $f3
	ld   [bc], a                                     ; $4308: $02
	jp   $505a                               ; $4309: $c3 $5a $50


	sbc  c                                           ; $430c: $99
	nop                                              ; $430d: $00
	ld   bc, $be07                                   ; $430e: $01 $07 $be
	nop                                              ; $4311: $00
	ld   [bc], a                                     ; $4312: $02
	inc  bc                                          ; $4313: $03
	ld   bc, $2000                                   ; $4314: $01 $00 $20
	nop                                              ; $4317: $00
	rlca                                             ; $4318: $07
	ld   [hl+], a                                    ; $4319: $22
	ld   bc, $0302                                   ; $431a: $01 $02 $03
	ld   bc, $2001                                   ; $431d: $01 $01 $20
	nop                                              ; $4320: $00
	ld   b, $6c                                      ; $4321: $06 $6c
	ld   bc, $000f                                   ; $4323: $01 $0f $00
	ld   bc, $5601                                   ; $4326: $01 $01 $56
	ld   d, [hl]                                     ; $4329: $56
	sbc  [hl]                                        ; $432a: $9e
	ld   d, d                                        ; $432b: $52
	ld   d, d                                        ; $432c: $52
	ld   [hl], l                                     ; $432d: $75
	ld   h, a                                        ; $432e: $67
	sub  [hl]                                        ; $432f: $96
	sbc  a                                           ; $4330: $9f
	dec  c                                           ; $4331: $0d
	sub  [hl]                                        ; $4332: $96
	sbc  e                                           ; $4333: $9b
	ld   h, c                                        ; $4334: $61
	and  c                                           ; $4335: $a1
	ld   [hl], l                                     ; $4336: $75
	sbc  a                                           ; $4337: $9f
	dec  c                                           ; $4338: $0d
	nop                                              ; $4339: $00
	ld   a, [bc]                                     ; $433a: $0a
	rrca                                             ; $433b: $0f
	dec  b                                           ; $433c: $05
	ld   bc, $6b01                                   ; $433d: $01 $01 $6b
	ld   d, h                                        ; $4340: $54
	ld   e, c                                        ; $4341: $59
	ld   a, [$5810]                                  ; $4342: $fa $10 $58
	ld   e, b                                        ; $4345: $58
	ld   e, e                                        ; $4346: $5b
	ld   a, c                                        ; $4347: $79
	ld   a, [$890d]                                  ; $4348: $fa $0d $89
	ld   a, b                                        ; $434b: $78
	sbc  [hl]                                        ; $434c: $9e
	inc  b                                           ; $434d: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $434e: $cf
	inc  b                                           ; $434f: $04
	xor  d                                           ; $4350: $aa
	ld   a, h                                        ; $4351: $7c
	inc  bc                                          ; $4352: $03
	ld   d, $9e                                      ; $4353: $16 $9e
	dec  c                                           ; $4355: $0d
	ld   [de], a                                     ; $4356: $12
	ld   [bc], a                                     ; $4357: $02
	ld   e, h                                        ; $4358: $5c
	ld   a, h                                        ; $4359: $7c
	call c, $edfb                                    ; $435a: $dc $fb $ed
	ld   [hl], l                                     ; $435d: $75
	ld   a, b                                        ; $435e: $78
	sbc  a                                           ; $435f: $9f
	dec  c                                           ; $4360: $0d
	nop                                              ; $4361: $00
	ld   a, [bc]                                     ; $4362: $0a
	dec  b                                           ; $4363: $05
	add  b                                           ; $4364: $80
	dec  [hl]                                        ; $4365: $35
	ld   bc, $0001                                   ; $4366: $01 $01 $00
	ld   bc, $5d58                                   ; $4369: $01 $58 $5d
	sbc  d                                           ; $436c: $9a
	and  c                                           ; $436d: $a1
	sub  [hl]                                        ; $436e: $96
	ld   d, h                                        ; $436f: $54
	ld   a, c                                        ; $4370: $79
	ld   a, b                                        ; $4371: $78
	sbc  a                                           ; $4372: $9f
	dec  c                                           ; $4373: $0d
	adc  c                                           ; $4374: $89
	ld   a, b                                        ; $4375: $78
	sbc  [hl]                                        ; $4376: $9e
	ld   e, b                                        ; $4377: $58
	sub  d                                           ; $4378: $92
	ld   h, a                                        ; $4379: $67
	adc  l                                           ; $437a: $8d
	sbc  a                                           ; $437b: $9f
	dec  c                                           ; $437c: $0d
	nop                                              ; $437d: $00
	ld   a, [bc]                                     ; $437e: $0a
	dec  c                                           ; $437f: $0d
	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	rrca                                             ; $4382: $0f
	nop                                              ; $4383: $00
	ld   bc, $1e09                                   ; $4384: $01 $09 $1e
	nop                                              ; $4387: $00
	rrca                                             ; $4388: $0f
	nop                                              ; $4389: $00
	ld   bc, $6701                                   ; $438a: $01 $01 $67
	adc  l                                           ; $438d: $8d
	adc  h                                           ; $438e: $8c
	ld   l, c                                        ; $438f: $69
	and  c                                           ; $4390: $a1
	rst  $38                                         ; $4391: $ff
	rst  $38                                         ; $4392: $ff
	dec  c                                           ; $4393: $0d
	inc  b                                           ; $4394: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4395: $cf
	inc  b                                           ; $4396: $04
	xor  d                                           ; $4397: $aa
	ld   a, l                                        ; $4398: $7d
	ld   l, a                                        ; $4399: $6f
	sub  l                                           ; $439a: $95
	ld   [hl], c                                     ; $439b: $71
	halt                                             ; $439c: $76
	rst  $38                                         ; $439d: $ff
	rst  $38                                         ; $439e: $ff
	dec  c                                           ; $439f: $0d
	nop                                              ; $43a0: $00
	ld   a, [bc]                                     ; $43a1: $0a
	inc  e                                           ; $43a2: $1c
	dec  b                                           ; $43a3: $05
	ld   [bc], a                                     ; $43a4: $02
	ld   [bc], a                                     ; $43a5: $02
	dec  e                                           ; $43a6: $1d
	ld   b, b                                        ; $43a7: $40
	dec  d                                           ; $43a8: $15
	inc  bc                                          ; $43a9: $03
	dec  d                                           ; $43aa: $15
	ld   bc, $2902                                   ; $43ab: $01 $02 $29
	nop                                              ; $43ae: $00
	ld   bc, $546b                                   ; $43af: $01 $6b $54
	ld   e, c                                        ; $43b2: $59
	rst  $38                                         ; $43b3: $ff
	rst  $38                                         ; $43b4: $ff
	dec  c                                           ; $43b5: $0d
	inc  bc                                          ; $43b6: $03
	jr   z, jr_06b_43bd                              ; $43b7: $28 $04

	ld   c, b                                        ; $43b9: $48
	sub  d                                           ; $43ba: $92
	ld   a, b                                        ; $43bb: $78
	db   $fc                                         ; $43bc: $fc

jr_06b_43bd:
	dec  c                                           ; $43bd: $0d
	adc  c                                           ; $43be: $89
	ld   a, b                                        ; $43bf: $78
	sbc  [hl]                                        ; $43c0: $9e
	ld   e, b                                        ; $43c1: $58
	sub  d                                           ; $43c2: $92
	ld   h, a                                        ; $43c3: $67
	adc  l                                           ; $43c4: $8d
	sbc  a                                           ; $43c5: $9f
	dec  c                                           ; $43c6: $0d
	nop                                              ; $43c7: $00
	ld   a, [bc]                                     ; $43c8: $0a
	dec  c                                           ; $43c9: $0d
	nop                                              ; $43ca: $00
	nop                                              ; $43cb: $00
	rrca                                             ; $43cc: $0f
	nop                                              ; $43cd: $00
	ld   bc, $1e09                                   ; $43ce: $01 $09 $1e
	nop                                              ; $43d1: $00
	inc  e                                           ; $43d2: $1c
	dec  b                                           ; $43d3: $05
	nop                                              ; $43d4: $00
	nop                                              ; $43d5: $00
	ld   bc, $9e50                                   ; $43d6: $01 $50 $9e
	ld   [hl], d                                     ; $43d9: $72
	ld   h, d                                        ; $43da: $62
	ld   d, h                                        ; $43db: $54
	ld   [bc], a                                     ; $43dc: $02
	jr   z, jr_06b_4431                              ; $43dd: $28 $52

	and  c                                           ; $43df: $a1
	sub  d                                           ; $43e0: $92
	ld   [hl], c                                     ; $43e1: $71
	ld   l, l                                        ; $43e2: $6d
	sub  a                                           ; $43e3: $97
	dec  c                                           ; $43e4: $0d
	inc  b                                           ; $43e5: $04
	sub  $05                                         ; $43e6: $d6 $05
	ld   de, $a169                                   ; $43e8: $11 $69 $a1
	ld   [hl], l                                     ; $43eb: $75
	xor  c                                           ; $43ec: $a9
	xor  c                                           ; $43ed: $a9
	ld   [hl], l                                     ; $43ee: $75
	sbc  a                                           ; $43ef: $9f
	dec  c                                           ; $43f0: $0d
	nop                                              ; $43f1: $00
	ld   a, [bc]                                     ; $43f2: $0a
	dec  e                                           ; $43f3: $1d
	ld   b, b                                        ; $43f4: $40
	dec  d                                           ; $43f5: $15
	inc  bc                                          ; $43f6: $03
	dec  d                                           ; $43f7: $15
	ld   bc, $2901                                   ; $43f8: $01 $01 $29
	nop                                              ; $43fb: $00
	ld   bc, $7889                                   ; $43fc: $01 $89 $78
	sbc  [hl]                                        ; $43ff: $9e
	ld   e, b                                        ; $4400: $58
	sub  d                                           ; $4401: $92
	ld   h, a                                        ; $4402: $67
	adc  l                                           ; $4403: $8d
	sbc  a                                           ; $4404: $9f
	dec  c                                           ; $4405: $0d
	nop                                              ; $4406: $00
	ld   a, [bc]                                     ; $4407: $0a
	dec  c                                           ; $4408: $0d
	nop                                              ; $4409: $00
	nop                                              ; $440a: $00
	rrca                                             ; $440b: $0f
	nop                                              ; $440c: $00
	ld   bc, $1e09                                   ; $440d: $01 $09 $1e
	nop                                              ; $4410: $00
	nop                                              ; $4411: $00
	inc  bc                                          ; $4412: $03
	ld   de, $b401                                   ; $4413: $11 $01 $b4
	dec  h                                           ; $4416: $25
	inc  b                                           ; $4417: $04
	add  b                                           ; $4418: $80
	rrca                                             ; $4419: $0f
	ld   bc, $20ff                                   ; $441a: $01 $ff $20
	inc  e                                           ; $441d: $1c
	nop                                              ; $441e: $00
	ld   c, $02                                      ; $441f: $0e $02
	rrca                                             ; $4421: $0f
	nop                                              ; $4422: $00
	ld   bc, $0102                                   ; $4423: $01 $02 $01
	rst  $38                                         ; $4426: $ff
	rst  $38                                         ; $4427: $ff
	and  c                                           ; $4428: $a1
	ld   sp, hl                                      ; $4429: $f9
	db   $10                                         ; $442a: $10
	sub  b                                           ; $442b: $90
	ld   d, h                                        ; $442c: $54
	ld   h, c                                        ; $442d: $61
	and  c                                           ; $442e: $a1
	ld   a, b                                        ; $442f: $78
	inc  bc                                          ; $4430: $03

jr_06b_4431:
	ld   l, a                                        ; $4431: $6f
	ld   [bc], a                                     ; $4432: $02
	xor  c                                           ; $4433: $a9
	ld   e, c                                        ; $4434: $59
	rst  $38                                         ; $4435: $ff
	dec  c                                           ; $4436: $0d
	inc  b                                           ; $4437: $04
	xor  d                                           ; $4438: $aa
	ld   [bc], a                                     ; $4439: $02
	sub  a                                           ; $443a: $97
	and  b                                           ; $443b: $a0
	ld   [hl], d                                     ; $443c: $72
	ld   e, a                                        ; $443d: $5f
	ld   [hl], h                                     ; $443e: $74
	sbc  [hl]                                        ; $443f: $9e
	inc  b                                           ; $4440: $04
	ld   b, d                                        ; $4441: $42
	sub  [hl]                                        ; $4442: $96
	ld   d, h                                        ; $4443: $54
	sbc  a                                           ; $4444: $9f
	dec  c                                           ; $4445: $0d
	nop                                              ; $4446: $00
	ld   a, [bc]                                     ; $4447: $0a
	inc  d                                           ; $4448: $14
	ld   b, $01                                      ; $4449: $06 $01
	rrca                                             ; $444b: $0f
	ld   bc, $0100                                   ; $444c: $01 $00 $01
	ld   [$6300], sp                                 ; $444f: $08 $00 $63
	and  c                                           ; $4452: $a1
	dec  c                                           ; $4453: $0d
	ld   d, d                                        ; $4454: $52
	sub  a                                           ; $4455: $97
	ld   [hl], c                                     ; $4456: $71
	ld   h, l                                        ; $4457: $65
	sub  c                                           ; $4458: $91
	ld   d, d                                        ; $4459: $52
	adc  h                                           ; $445a: $8c
	ld   h, a                                        ; $445b: $67
	ld   e, c                                        ; $445c: $59
	ld   sp, hl                                      ; $445d: $f9
	dec  c                                           ; $445e: $0d
	nop                                              ; $445f: $00
	ld   a, [bc]                                     ; $4460: $0a
	rrca                                             ; $4461: $0f
	nop                                              ; $4462: $00
	ld   bc, $7d01                                   ; $4463: $01 $01 $7d
	ld   d, d                                        ; $4466: $52
	sbc  [hl]                                        ; $4467: $9e
	ld   [hl], a                                     ; $4468: $77
	ld   d, h                                        ; $4469: $54
	ld   l, h                                        ; $446a: $6c
	sbc  a                                           ; $446b: $9f
	dec  c                                           ; $446c: $0d
	nop                                              ; $446d: $00
	ld   a, [bc]                                     ; $446e: $0a
	inc  d                                           ; $446f: $14
	ld   a, [bc]                                     ; $4470: $0a
	ld   bc, $011c                                   ; $4471: $01 $1c $01
	nop                                              ; $4474: $00
	nop                                              ; $4475: $00
	ld   bc, $ef04                                   ; $4476: $01 $04 $ef
	ld   e, b                                        ; $4479: $58
	ld   l, e                                        ; $447a: $6b
	ld   e, l                                        ; $447b: $5d
	ld   a, c                                        ; $447c: $79
	ld   h, a                                        ; $447d: $67
	adc  l                                           ; $447e: $8d
	adc  h                                           ; $447f: $8c
	ld   l, c                                        ; $4480: $69
	and  c                                           ; $4481: $a1
	sbc  a                                           ; $4482: $9f
	dec  c                                           ; $4483: $0d
	ld   [$6300], sp                                 ; $4484: $08 $00 $63
	and  c                                           ; $4487: $a1
	sbc  a                                           ; $4488: $9f
	dec  c                                           ; $4489: $0d
	nop                                              ; $448a: $00
	ld   a, [bc]                                     ; $448b: $0a
	ld   bc, $7c50                                   ; $448c: $01 $50 $7c
	rst  $38                                         ; $448f: $ff
	rst  $38                                         ; $4490: $ff
	inc  b                                           ; $4491: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4492: $cf
	inc  b                                           ; $4493: $04
	xor  d                                           ; $4494: $aa
	sbc  [hl]                                        ; $4495: $9e
	ld   d, b                                        ; $4496: $50
	ld   l, l                                        ; $4497: $6d
	ld   h, l                                        ; $4498: $65
	dec  c                                           ; $4499: $0d
	inc  b                                           ; $449a: $04
	adc  [hl]                                        ; $449b: $8e
	inc  b                                           ; $449c: $04
	inc  c                                           ; $449d: $0c
	inc  bc                                          ; $449e: $03
	ld   [de], a                                     ; $449f: $12
	ld   [bc], a                                     ; $44a0: $02
	ld   c, h                                        ; $44a1: $4c
	ld   a, h                                        ; $44a2: $7c
	ld   e, b                                        ; $44a3: $58
	inc  bc                                          ; $44a4: $03
	inc  de                                          ; $44a5: $13
	sbc  b                                           ; $44a6: $98
	ld   a, c                                        ; $44a7: $79
	ld   [bc], a                                     ; $44a8: $02
	ld   a, a                                        ; $44a9: $7f
	ld   e, l                                        ; $44aa: $5d
	and  c                                           ; $44ab: $a1
	dec  c                                           ; $44ac: $0d
	ld   [hl], l                                     ; $44ad: $75
	ld   h, a                                        ; $44ae: $67
	ld   e, a                                        ; $44af: $5f
	ld   [hl], a                                     ; $44b0: $77
	rst  $38                                         ; $44b1: $ff
	rst  $38                                         ; $44b2: $ff
	dec  c                                           ; $44b3: $0d
	nop                                              ; $44b4: $00
	ld   a, [bc]                                     ; $44b5: $0a
	ld   bc, $6590                                   ; $44b6: $01 $90 $65
	sbc  [hl]                                        ; $44b9: $9e
	sub  [hl]                                        ; $44ba: $96
	sbc  e                                           ; $44bb: $9b
	ld   h, l                                        ; $44bc: $65
	ld   e, a                                        ; $44bd: $5f
	sbc  d                                           ; $44be: $9a
	ld   a, [hl]                                     ; $44bf: $7e
	dec  c                                           ; $44c0: $0d
	ld   [$6300], sp                                 ; $44c1: $08 $00 $63
	and  c                                           ; $44c4: $a1
	sub  b                                           ; $44c5: $90
	dec  c                                           ; $44c6: $0d
	ld   d, d                                        ; $44c7: $52
	ld   [hl], c                                     ; $44c8: $71
	ld   h, l                                        ; $44c9: $65
	sub  l                                           ; $44ca: $95
	ld   a, c                                        ; $44cb: $79
	ld   [bc], a                                     ; $44cc: $02
	ld   a, a                                        ; $44cd: $7f
	ld   e, e                                        ; $44ce: $5b
	adc  h                                           ; $44cf: $8c
	ld   l, c                                        ; $44d0: $69
	and  c                                           ; $44d1: $a1
	ld   e, c                                        ; $44d2: $59
	ld   sp, hl                                      ; $44d3: $f9
	dec  c                                           ; $44d4: $0d
	nop                                              ; $44d5: $00
	ld   a, [bc]                                     ; $44d6: $0a
	add  hl, de                                      ; $44d7: $19
	dec  b                                           ; $44d8: $05
	ld   [bc], a                                     ; $44d9: $02
	ld   a, l                                        ; $44da: $7d
	ld   d, d                                        ; $44db: $52
	sbc  [hl]                                        ; $44dc: $9e
	sub  [hl]                                        ; $44dd: $96
	sbc  e                                           ; $44de: $9b
	ld   h, c                                        ; $44df: $61
	and  c                                           ; $44e0: $a1
	ld   [hl], l                                     ; $44e1: $75
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	inc  b                                           ; $44e4: $04
	di                                               ; $44e5: $f3
	ld   [bc], a                                     ; $44e6: $02
	jp   $505a                               ; $44e7: $c3 $5a $50


	sbc  c                                           ; $44ea: $99
	nop                                              ; $44eb: $00
	ld   bc, $e307                                   ; $44ec: $01 $07 $e3
	nop                                              ; $44ef: $00
	ld   [bc], a                                     ; $44f0: $02
	inc  bc                                          ; $44f1: $03
	ld   bc, $2000                                   ; $44f2: $01 $00 $20
	nop                                              ; $44f5: $00
	rlca                                             ; $44f6: $07
	ld   d, [hl]                                     ; $44f7: $56
	ld   bc, $0302                                   ; $44f8: $01 $02 $03
	ld   bc, $2001                                   ; $44fb: $01 $01 $20
	nop                                              ; $44fe: $00
	ld   b, $70                                      ; $44ff: $06 $70
	ld   bc, $000f                                   ; $4501: $01 $0f $00
	ld   bc, $7d01                                   ; $4504: $01 $01 $7d
	ld   d, d                                        ; $4507: $52
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $4508: $fa $10 $0d
	sub  [hl]                                        ; $450b: $96
	sbc  e                                           ; $450c: $9b
	ld   h, c                                        ; $450d: $61
	and  c                                           ; $450e: $a1
	ld   [hl], l                                     ; $450f: $75
	ld   a, [$0dfa]                                  ; $4510: $fa $fa $0d
	nop                                              ; $4513: $00
	ld   a, [bc]                                     ; $4514: $0a
	inc  e                                           ; $4515: $1c
	ld   bc, $0101                                   ; $4516: $01 $01 $01
	dec  e                                           ; $4519: $1d
	ld   b, b                                        ; $451a: $40
	ld   de, $1103                                   ; $451b: $11 $03 $11
	ld   bc, $2802                                   ; $451e: $01 $02 $28
	nop                                              ; $4521: $00
	ld   bc, $546b                                   ; $4522: $01 $6b $54
	ld   [hl], l                                     ; $4525: $75
	ld   h, a                                        ; $4526: $67
	ld   e, c                                        ; $4527: $59
	sbc  a                                           ; $4528: $9f
	dec  c                                           ; $4529: $0d
	ld   h, [hl]                                     ; $452a: $66
	sub  c                                           ; $452b: $91
	ld   d, b                                        ; $452c: $50
	sbc  [hl]                                        ; $452d: $9e
	inc  b                                           ; $452e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $452f: $cf
	inc  b                                           ; $4530: $04
	xor  d                                           ; $4531: $aa
	ld   a, h                                        ; $4532: $7c
	inc  bc                                          ; $4533: $03
	ld   d, $0d                                      ; $4534: $16 $0d
	ld   [de], a                                     ; $4536: $12
	ld   [bc], a                                     ; $4537: $02
	ld   e, h                                        ; $4538: $5c
	call c, $edfb                                    ; $4539: $dc $fb $ed
	ld   [hl], l                                     ; $453c: $75
	inc  b                                           ; $453d: $04
	rla                                              ; $453e: $17
	ld   [hl], c                                     ; $453f: $71
	ld   [hl], h                                     ; $4540: $74
	adc  h                                           ; $4541: $8c
	ld   h, a                                        ; $4542: $67
	sbc  a                                           ; $4543: $9f
	dec  c                                           ; $4544: $0d
	nop                                              ; $4545: $00
	ld   a, [bc]                                     ; $4546: $0a
	dec  b                                           ; $4547: $05
	add  b                                           ; $4548: $80
	db   $10                                         ; $4549: $10
	ld   bc, $0001                                   ; $454a: $01 $01 $00
	ld   bc, $616f                                   ; $454d: $01 $6f $61
	ld   e, l                                        ; $4550: $5d
	ld   h, l                                        ; $4551: $65
	ld   a, b                                        ; $4552: $78
	ld   d, d                                        ; $4553: $52
	ld   [hl], l                                     ; $4554: $75
	ld   e, l                                        ; $4555: $5d
	ld   l, [hl]                                     ; $4556: $6e
	ld   h, e                                        ; $4557: $63
	ld   d, d                                        ; $4558: $52
	ld   a, e                                        ; $4559: $7b
	sbc  a                                           ; $455a: $9f
	dec  c                                           ; $455b: $0d
	ld   [hl], l                                     ; $455c: $75
	ld   a, l                                        ; $455d: $7d
	sbc  [hl]                                        ; $455e: $9e
	ld   e, b                                        ; $455f: $58
	sub  d                                           ; $4560: $92
	ld   h, a                                        ; $4561: $67
	adc  l                                           ; $4562: $8d
	ld   a, b                                        ; $4563: $78
	ld   h, e                                        ; $4564: $63
	ld   d, d                                        ; $4565: $52
	sbc  a                                           ; $4566: $9f
	dec  c                                           ; $4567: $0d
	nop                                              ; $4568: $00
	ld   a, [bc]                                     ; $4569: $0a
	dec  c                                           ; $456a: $0d
	nop                                              ; $456b: $00
	nop                                              ; $456c: $00
	rrca                                             ; $456d: $0f
	nop                                              ; $456e: $00
	ld   bc, $1e09                                   ; $456f: $01 $09 $1e
	add  hl, hl                                      ; $4572: $29
	nop                                              ; $4573: $00
	nop                                              ; $4574: $00
	rrca                                             ; $4575: $0f
	nop                                              ; $4576: $00
	ld   bc, $6701                                   ; $4577: $01 $01 $67
	adc  l                                           ; $457a: $8d
	adc  h                                           ; $457b: $8c
	ld   l, c                                        ; $457c: $69
	and  c                                           ; $457d: $a1
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	dec  c                                           ; $4580: $0d
	inc  b                                           ; $4581: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4582: $cf
	inc  b                                           ; $4583: $04
	xor  d                                           ; $4584: $aa
	ld   a, l                                        ; $4585: $7d
	ld   l, a                                        ; $4586: $6f
	sub  l                                           ; $4587: $95
	ld   [hl], c                                     ; $4588: $71
	halt                                             ; $4589: $76
	rst  $38                                         ; $458a: $ff
	rst  $38                                         ; $458b: $ff
	dec  c                                           ; $458c: $0d
	nop                                              ; $458d: $00
	ld   a, [bc]                                     ; $458e: $0a
	inc  e                                           ; $458f: $1c
	ld   bc, $0404                                   ; $4590: $01 $04 $04
	ld   bc, $9e50                                   ; $4593: $01 $50 $9e
	inc  b                                           ; $4596: $04
	di                                               ; $4597: $f3
	ld   [bc], a                                     ; $4598: $02
	jp   $505a                               ; $4599: $c3 $5a $50


	sbc  c                                           ; $459c: $99
	and  c                                           ; $459d: $a1
	ld   [hl], l                                     ; $459e: $75
	ld   h, a                                        ; $459f: $67
	ld   a, e                                        ; $45a0: $7b
	sbc  a                                           ; $45a1: $9f
	dec  c                                           ; $45a2: $0d
	ld   l, [hl]                                     ; $45a3: $6e
	ld   [hl], c                                     ; $45a4: $71
	ld   l, l                                        ; $45a5: $6d
	sub  a                                           ; $45a6: $97
	ld   d, d                                        ; $45a7: $52
	ld   d, d                                        ; $45a8: $52
	ld   [hl], l                                     ; $45a9: $75
	ld   h, a                                        ; $45aa: $67
	sub  [hl]                                        ; $45ab: $96
	sbc  a                                           ; $45ac: $9f
	dec  c                                           ; $45ad: $0d
	ldh  [c], a                                      ; $45ae: $e2
	db   $ec                                         ; $45af: $ec
	ld   h, l                                        ; $45b0: $65
	ld   a, b                                        ; $45b1: $78
	ld   d, d                                        ; $45b2: $52
	ld   [hl], l                                     ; $45b3: $75
	ld   [bc], a                                     ; $45b4: $02
	inc  [hl]                                        ; $45b5: $34
	ld   h, e                                        ; $45b6: $63
	ld   d, d                                        ; $45b7: $52
	sbc  a                                           ; $45b8: $9f
	dec  c                                           ; $45b9: $0d
	nop                                              ; $45ba: $00
	ld   a, [bc]                                     ; $45bb: $0a
	inc  e                                           ; $45bc: $1c
	ld   bc, $0000                                   ; $45bd: $01 $00 $00
	ld   bc, $7d75                                   ; $45c0: $01 $75 $7d
	sbc  [hl]                                        ; $45c3: $9e
	ld   e, b                                        ; $45c4: $58
	sub  d                                           ; $45c5: $92
	ld   h, a                                        ; $45c6: $67
	adc  l                                           ; $45c7: $8d
	ld   a, b                                        ; $45c8: $78
	ld   h, e                                        ; $45c9: $63
	ld   d, d                                        ; $45ca: $52
	sbc  a                                           ; $45cb: $9f
	dec  c                                           ; $45cc: $0d
	nop                                              ; $45cd: $00
	ld   a, [bc]                                     ; $45ce: $0a
	dec  c                                           ; $45cf: $0d
	nop                                              ; $45d0: $00
	nop                                              ; $45d1: $00
	rrca                                             ; $45d2: $0f
	nop                                              ; $45d3: $00
	ld   bc, $1e09                                   ; $45d4: $01 $09 $1e
	add  hl, hl                                      ; $45d7: $29
	db $00, $00


if def(VWF)

PopulateCreditRankingsText::
	add  a                                           ; $73bf: $87
	ld   l, a                                        ; $73c0: $6f
	ld   h, $00                                      ; $73c1: $26 $00
	ld   bc, Data_11_7422                                  ; $73c3: $01 $22 $74
	add  hl, bc                                      ; $73c6: $09
	ld   a, [hl+]                                    ; $73c7: $2a
	ld   h, [hl]                                     ; $73c8: $66
	ld   l, a                                        ; $73c9: $6f
	ld   bc, Data_11_7422                                   ; $73ca: $01 $22 $74
	add  hl, bc                                      ; $73cd: $09
	call PopulateKanjiConvoStructForCurrTextBox                                       ; $73ce: $cd $27 $10

	xor  a
	ret


Data_11_7422:
	dw Data_11_7422entry00-Data_11_7422
	dw Data_11_7422entry01-Data_11_7422
	dw Data_11_7422entry02-Data_11_7422
	dw Data_11_7422entry03-Data_11_7422
	dw Data_11_7422entry04-Data_11_7422
	dw Data_11_7422entry05-Data_11_7422
	dw Data_11_7422entry06-Data_11_7422
	dw Data_11_7422entry07-Data_11_7422
	dw Data_11_7422entry08-Data_11_7422
	dw Data_11_7422entry09-Data_11_7422
	dw Data_11_7422entry0a-Data_11_7422
	dw Data_11_7422entry0b-Data_11_7422
	dw Data_11_7422entry0c-Data_11_7422
	dw Data_11_7422entry0d-Data_11_7422
	dw Data_11_7422entry0e-Data_11_7422
	dw Data_11_7422entry0f-Data_11_7422
	dw Data_11_7422entry10-Data_11_7422
	dw Data_11_7422entry11-Data_11_7422
	dw Data_11_7422entry12-Data_11_7422
	dw Data_11_7422entry13-Data_11_7422
	dw Data_11_7422entry14-Data_11_7422
	dw Data_11_7422entry15-Data_11_7422
	dw Data_11_7422entry16-Data_11_7422
	dw Data_11_7422entry17-Data_11_7422
	dw Data_11_7422entry18-Data_11_7422
	dw Data_11_7422entry19-Data_11_7422
	dw Data_11_7422entry1a-Data_11_7422
	dw Data_11_7422entry1b-Data_11_7422
	dw Data_11_7422entry1c-Data_11_7422
	dw Data_11_7422entry1d-Data_11_7422

Data_11_7422entry00::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $33, $43, $49, $01, $01, $4a, $39, $10, $36, $39, $39, $42, $10, $47, $39, $40, $39, $37, $48, $39, $38, $10, $35, $47, $10, $35, $10, $37, $35, $42, $38, $3d, $38, $35, $48, $39, $10, $3a, $43, $46, $10, $20, $40, $43, $4b, $39, $46, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $10, $37, $35, $44, $48, $35, $3d, $42, $fa, $00
Data_11_7422entry01::
	db $31, $39, $10, $35, $4b, $35, $3d, $48, $10, $48, $3c, $39, $10, $38, $35, $4d, $10, $4d, $43, $49, $10, $37, $35, $42, $10, $40, $39, $35, $38, $10, $35, $10, $3a, $35, $3d, $48, $3c, $3a, $49, $40, $10, $47, $45, $49, $35, $38, $fa, $00
Data_11_7422entry02::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $31, $3d, $48, $3c, $10, $4d, $43, $49, $46, $10, $47, $3f, $3d, $40, $40, $e1, $10, $3e, $43, $3d, $42, $3d, $42, $3b, $10, $48, $3c, $39, $10, $20, $40, $43, $4b, $39, $46, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $10, $3d, $47, $42, $01, $01, $48, $10, $35, $10, $3a, $35, $46, $01, $0a, $43, $3a, $3a, $10, $38, $46, $39, $35, $41, $fa, $00
Data_11_7422entry03::
	db $2d, $43, $41, $39, $10, $38, $35, $4d, $e1, $10, $4d, $43, $49, $10, $48, $43, $43, $10, $41, $35, $4d, $10, $36, $39, $10, $3a, $3d, $3b, $3c, $48, $3d, $42, $3b, $10, $48, $43, $10, $44, $46, $43, $48, $39, $37, $48, $10, $48, $3c, $39, $10, $37, $35, $44, $3d, $48, $35, $40, $fa, $00
Data_11_7422entry04::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $31, $3d, $48, $3c, $10, $4d, $43, $49, $46, $10, $4b, $3d, $40, $40, $44, $43, $4b, $39, $46, $e1, $10, $4d, $43, $49, $10, $37, $43, $49, $40, $38, $10, $36, $39, $37, $43, $41, $39, $10, $35, $10, $41, $39, $41, $36, $39, $46, $10, $43, $3a, $10, $48, $3c, $39, $10, $2d, $42, $43, $4b, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $fa, $00
Data_11_7422entry05::
	db $33, $43, $49, $01, $01, $40, $40, $10, $47, $39, $3d, $4e, $39, $10, $4a, $3d, $37, $48, $43, $46, $4d, $10, $3d, $42, $10, $39, $4a, $39, $42, $10, $48, $3c, $39, $10, $3c, $35, $46, $47, $3c, $39, $47, $48, $10, $43, $3a, $10, $37, $3d, $46, $37, $49, $41, $47, $48, $35, $42, $37, $39, $47, $fa, $00
Data_11_7422entry06::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $31, $3d, $48, $3c, $10, $4d, $43, $49, $46, $10, $3a, $43, $37, $49, $47, $10, $35, $42, $38, $10, $3e, $49, $38, $3b, $41, $39, $42, $48, $e1, $10, $4d, $43, $49, $01, $01, $46, $39, $10, $41, $43, $46, $39, $10, $48, $3c, $35, $42, $10, $45, $49, $35, $40, $3d, $3a, $3d, $39, $38, $10, $48, $43, $10, $3e, $43, $3d, $42, $10, $48, $3c, $39, $10, $31, $3d, $42, $38, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $fa, $00
Data_11_7422entry07::
	db $1f, $4a, $39, $46, $4d, $10, $43, $48, $3c, $39, $46, $10, $38, $3d, $4a, $3d, $47, $3d, $43, $42, $10, $37, $35, $42, $10, $39, $4c, $44, $39, $37, $48, $10, $43, $49, $48, $47, $48, $35, $42, $38, $3d, $42, $3b, $10, $47, $49, $44, $44, $43, $46, $48, $10, $4b, $3d, $48, $3c, $10, $4d, $43, $49, $10, $43, $42, $10, $48, $3c, $39, $10, $3e, $43, $36, $fa, $00
Data_11_7422entry08::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $31, $3d, $48, $3c, $10, $4d, $43, $49, $46, $10, $35, $37, $37, $49, $46, $35, $37, $4d, $e1, $10, $3e, $43, $3d, $42, $3d, $42, $3b, $10, $48, $3c, $39, $10, $27, $43, $43, $42, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $10, $3d, $47, $42, $01, $01, $48, $10, $35, $10, $3a, $35, $46, $01, $0a, $43, $3a, $3a, $10, $38, $46, $39, $35, $41, $fa, $00
Data_11_7422entry09::
	db $33, $43, $49, $01, $01, $40, $40, $10, $3c, $39, $40, $44, $10, $48, $49, $46, $42, $10, $48, $3c, $39, $10, $48, $3d, $38, $39, $47, $10, $43, $3a, $10, $36, $35, $48, $48, $40, $39, $10, $4b, $3d, $48, $3c, $10, $48, $3c, $39, $10, $3d, $42, $48, $39, $40, $10, $4d, $43, $49, $10, $3b, $35, $48, $3c, $39, $46, $fa, $00
Data_11_7422entry0a::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $31, $3d, $48, $3c, $10, $4d, $43, $49, $46, $10, $43, $49, $48, $47, $48, $35, $42, $38, $3d, $42, $3b, $10, $47, $44, $3d, $46, $3d, $48, $10, $44, $43, $4b, $39, $46, $e1, $10, $4d, $43, $49, $01, $01, $46, $39, $10, $35, $42, $10, $3d, $38, $39, $35, $40, $10, $37, $35, $42, $38, $3d, $38, $35, $48, $39, $10, $3a, $43, $46, $10, $48, $3c, $39, $10, $1e, $46, $39, $35, $41, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $fa, $00
Data_11_7422entry0b::
	db $1b, $47, $10, $35, $42, $10, $39, $40, $3d, $48, $39, $10, $47, $44, $3d, $46, $3d, $48, $10, $44, $43, $4b, $39, $46, $10, $4b, $3d, $39, $40, $38, $39, $46, $e1, $10, $48, $3c, $39, $10, $38, $35, $4d, $10, $41, $35, $4d, $10, $37, $43, $41, $39, $10, $4b, $3c, $39, $46, $39, $10, $4d, $43, $49, $10, $37, $35, $42, $10, $47, $49, $44, $44, $43, $46, $48, $10, $48, $3c, $39, $10, $20, $40, $43, $4b, $39, $46, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $fa, $00
Data_11_7422entry0c::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $31, $3d, $48, $3c, $10, $4d, $43, $49, $46, $10, $36, $46, $3d, $40, $40, $3d, $35, $42, $48, $10, $41, $3d, $42, $38, $e1, $10, $4d, $43, $49, $01, $01, $40, $40, $10, $41, $35, $3f, $39, $10, $35, $42, $10, $3d, $38, $39, $35, $40, $10, $47, $37, $3d, $39, $42, $48, $3d, $47, $48, $fa, $00
Data_11_7422entry0d::
	db $2e, $3c, $39, $10, $25, $43, $49, $36, $49, $10, $35, $42, $38, $10, $2d, $43, $35, $46, $3d, $42, $3b, $10, $31, $3c, $35, $40, $39, $10, $35, $46, $39, $10, $3d, $42, $10, $3b, $43, $43, $38, $10, $3c, $35, $42, $38, $47, $10, $4b, $3d, $48, $3c, $10, $4d, $43, $49, $10, $4b, $43, $46, $3f, $3d, $42, $3b, $10, $43, $42, $10, $48, $3c, $39, $41, $fa, $00
Data_11_7422entry0e::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $33, $43, $49, $46, $10, $3f, $3d, $42, $38, $42, $39, $47, $47, $10, $35, $42, $38, $10, $4b, $3d, $47, $38, $43, $41, $10, $41, $35, $3f, $39, $10, $4d, $43, $49, $10, $44, $39, $46, $3a, $39, $37, $48, $10, $3a, $43, $46, $10, $35, $37, $37, $43, $49, $42, $48, $3d, $42, $3b, $10, $4b, $43, $46, $3f, $fa, $00
Data_11_7422entry0f::
	db $31, $43, $46, $3f, $10, $3c, $35, $46, $38, $e1, $10, $35, $42, $38, $10, $47, $43, $41, $39, $38, $35, $4d, $10, $4d, $43, $49, $10, $37, $43, $49, $40, $38, $10, $3c, $39, $40, $44, $10, $3f, $39, $39, $44, $10, $48, $3c, $39, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $2e, $3c, $39, $35, $48, $39, $46, $10, $46, $49, $42, $42, $3d, $42, $3b, $fa, $00
Data_11_7422entry10::
	db $1d, $43, $42, $3b, $46, $35, $48, $49, $40, $35, $48, $3d, $43, $42, $47, $fa, $10, $33, $43, $49, $46, $10, $47, $43, $37, $3d, $35, $36, $40, $39, $10, $42, $35, $48, $49, $46, $39, $10, $41, $35, $3f, $39, $47, $10, $4d, $43, $49, $10, $35, $10, $44, $39, $46, $3a, $39, $37, $48, $10, $47, $35, $40, $39, $47, $10, $37, $40, $39, $46, $3f, $fa, $00
Data_11_7422entry11::
	db $2d, $39, $40, $40, $3d, $42, $3b, $10, $37, $49, $47, $48, $43, $41, $39, $46, $47, $10, $47, $41, $3d, $40, $39, $47, $10, $35, $42, $38, $10, $38, $46, $39, $35, $41, $47, $10, $3d, $47, $10, $4b, $3c, $35, $48, $10, $36, $39, $3d, $42, $3b, $10, $35, $10, $37, $40, $39, $46, $3f, $10, $35, $48, $10, $48, $3c, $39, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $2e, $3c, $39, $35, $48, $39, $46, $10, $3d, $47, $10, $35, $40, $40, $10, $35, $36, $43, $49, $48, $fa, $00
Data_11_7422entry12::
	db $33, $43, $49, $46, $10, $39, $4c, $37, $39, $40, $40, $39, $42, $48, $10, $35, $48, $48, $39, $42, $48, $3d, $4a, $39, $42, $39, $47, $47, $10, $41, $35, $3f, $39, $47, $10, $4d, $43, $49, $10, $48, $3c, $39, $10, $3d, $38, $39, $35, $40, $10, $49, $47, $3c, $39, $46, $fa, $00
Data_11_7422entry13::
	db $2e, $3c, $39, $10, $49, $47, $3c, $39, $46, $10, $3a, $43, $46, $41, $47, $10, $39, $4a, $39, $46, $4d, $43, $42, $39, $01, $01, $47, $10, $3a, $3d, $46, $47, $48, $10, $3d, $41, $44, $46, $39, $47, $47, $3d, $43, $42, $10, $43, $3a, $10, $48, $3c, $39, $10, $48, $3c, $39, $35, $48, $39, $46, $f2, $10, $33, $43, $49, $46, $10, $47, $41, $3d, $40, $39, $10, $3d, $47, $10, $48, $3c, $39, $10, $4a, $39, $46, $4d, $10, $3c, $39, $35, $46, $48, $10, $43, $3a, $10, $48, $3c, $39, $10, $23, $41, $44, $39, $46, $3d, $35, $40, $10, $2e, $3c, $39, $35, $48, $39, $46, $fa, $00
Data_11_7422entry14::
	db $1b, $10, $46, $43, $40, $39, $10, $41, $35, $38, $39, $10, $48, $43, $10, $47, $49, $44, $44, $43, $46, $48, $10, $48, $3c, $39, $10, $2e, $46, $43, $49, $44, $39, $01, $01, $47, $10, $47, $48, $35, $3b, $39, $10, $44, $46, $43, $38, $49, $37, $48, $3d, $43, $42, $47, $10, $3a, $46, $43, $41, $10, $48, $3c, $39, $10, $47, $3c, $35, $38, $43, $4b, $47, $f2, $00
Data_11_7422entry15::
	db $2a, $49, $48, $10, $4d, $43, $49, $46, $10, $35, $3b, $3d, $40, $3d, $48, $4d, $10, $48, $43, $10, $4b, $43, $46, $3f, $10, $35, $47, $10, $35, $10, $47, $48, $35, $3b, $39, $3c, $35, $42, $38, $fa, $00
Data_11_7422entry16::
	db $33, $43, $49, $10, $35, $46, $39, $10, $35, $10, $4b, $35, $46, $41, $10, $44, $46, $39, $47, $39, $42, $37, $39, $10, $3d, $42, $10, $48, $3c, $39, $10, $40, $3d, $4a, $39, $47, $10, $43, $3a, $10, $43, $48, $3c, $39, $46, $47, $e1, $10, $35, $42, $38, $10, $4b, $39, $40, $40, $01, $0a, $40, $3d, $3f, $39, $38, $10, $36, $4d, $10, $48, $3c, $39, $10, $20, $40, $43, $4b, $39, $46, $10, $1e, $3d, $4a, $3d, $47, $3d, $43, $42, $f2, $00
Data_11_7422entry17::
	db $33, $43, $49, $46, $10, $3d, $42, $4a, $3d, $48, $3d, $42, $3b, $10, $47, $41, $3d, $40, $39, $10, $3d, $47, $10, $35, $10, $36, $39, $35, $37, $43, $42, $10, $43, $3a, $10, $47, $49, $44, $44, $43, $46, $48, $10, $3a, $43, $46, $10, $48, $3c, $39, $10, $2e, $46, $43, $49, $44, $39, $f2, $00
Data_11_7422entry18::
	db $33, $43, $49, $10, $48, $49, $46, $42, $10, $35, $42, $10, $39, $41, $44, $48, $4d, $10, $47, $48, $35, $3b, $39, $10, $3d, $42, $48, $43, $10, $37, $43, $49, $42, $48, $40, $39, $47, $47, $10, $4b, $43, $46, $40, $38, $47, $f2, $00
Data_11_7422entry19::
	db $2e, $3c, $39, $10, $4b, $43, $46, $40, $38, $47, $10, $4d, $43, $49, $10, $37, $46, $39, $35, $48, $39, $10, $3c, $39, $40, $44, $10, $48, $3c, $39, $10, $2e, $46, $43, $49, $44, $39, $10, $47, $3c, $3d, $42, $39, $10, $39, $4a, $39, $42, $10, $36, $46, $3d, $3b, $3c, $48, $39, $46, $f2, $00
Data_11_7422entry1a::
	db $1b, $47, $10, $44, $39, $43, $44, $40, $39, $10, $38, $46, $43, $44, $10, $48, $3c, $3d, $42, $3b, $47, $10, $3d, $42, $10, $48, $3c, $39, $10, $3c, $49, $47, $48, $40, $39, $10, $35, $42, $38, $10, $36, $49, $47, $48, $40, $39, $10, $43, $3a, $10, $48, $3c, $39, $3d, $46, $10, $40, $3d, $4a, $39, $47, $e1, $10, $47, $3c, $43, $4b, $10, $47, $43, $41, $39, $10, $3f, $3d, $42, $38, $42, $39, $47, $47, $10, $36, $4d, $10, $37, $40, $39, $35, $42, $3d, $42, $3b, $10, $49, $44, $10, $35, $3a, $48, $39, $46, $10, $48, $3c, $39, $41, $f2, $00
Data_11_7422entry1b::
	db $33, $43, $49, $46, $10, $3c, $35, $46, $38, $10, $4b, $43, $46, $3f, $10, $4b, $3d, $40, $40, $10, $35, $40, $40, $10, $35, $38, $38, $10, $49, $44, $10, $35, $42, $38, $10, $36, $46, $3d, $42, $3b, $10, $47, $41, $3d, $40, $39, $47, $10, $48, $43, $10, $44, $39, $43, $44, $40, $39, $01, $01, $47, $10, $3a, $35, $37, $39, $47, $f2, $00
Data_11_7422entry1c::
	db $33, $43, $49, $46, $10, $46, $39, $47, $49, $40, $48, $47, $10, $35, $46, $39, $10, $40, $35, $37, $3f, $3d, $42, $3b, $f2, $f2, $f2, $10, $1c, $49, $48, $10, $43, $48, $3c, $39, $46, $10, $44, $35, $48, $3c, $47, $10, $4b, $3d, $40, $40, $10, $43, $44, $39, $42, $10, $3d, $42, $10, $4d, $43, $49, $46, $10, $40, $3d, $3a, $39, $fa, $00
Data_11_7422entry1d::
	db $25, $39, $39, $44, $10, $4b, $43, $46, $3f, $3d, $42, $3b, $10, $3c, $35, $46, $38, $e1, $10, $35, $42, $38, $10, $42, $39, $4a, $39, $46, $10, $3a, $43, $46, $3b, $39, $48, $10, $4d, $43, $49, $46, $10, $38, $39, $47, $3d, $46, $39, $10, $48, $43, $10, $44, $46, $43, $48, $39, $37, $48, $10, $48, $3c, $39, $10, $37, $3d, $48, $4d, $f2, $00


Gfx_SumireMiniGameHelpScreen::
	INCBIN "en_sumireMGHelpScreen.2bpp"
.end::


LoadGameOverSprites::
	ld   a, $01
	ld   [rVBK], a

	ld   bc, .end-.gfx
	ld   de, $d000
	ld   hl, .gfx
	call MemCopy

	ld   c, $81
	ld   de, $8000
	ld   a, $07
	ld   hl, $d000
	ld   b, $80
	call EnqueueHDMATransfer

	ld   c, $81
	ld   de, $8800
	ld   a, $07
	ld   hl, $d800
	ld   b, $80
	call EnqueueHDMATransfer

	xor  a
	ld   [rVBK], a
	ret
.gfx:
	INCBIN "en_gameOverSprites.2bpp"
.end:


_HackHook::
	ld   hl, $018c
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $0148
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $014c
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $0150
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $0154
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $0158
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $015c
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $01ac
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1
	ld   hl, $01b0
	ld   a, $ff
	M_FarCall SetOrUnsetFlag1

	ld   a, [wVisitedTitleScreen]
	ret


	; A - dict idx
AddDictWordToConvoStructForCurrTextBox::
; HL = pointer to entry
	ld   hl, .table
	ld   b, 0
	ld   c, a
	add  hl, bc
	add  hl, bc

; HL = pointer to text
	ld   a, [hl+]
	ld   h, [hl]
	ld   l, a

; Add letters to convo struct
:	ld   a, [hl+]
	and  a
	ret  z

	push hl
	call AddKanjiToConvoStructForCurrTextBox
	pop  hl
	jr   :-

.table:
	dw .item00
	dw .item01
	dw .item02
	dw .item03
	dw .item04
	dw .item05
	dw .item06
	dw .item07
	dw .item08
	dw .item09
	dw .item0a
	dw .item0b
	dw .item0c
	dw .item0d
	dw .item0e
	dw .item0f
	dw .item10
	dw .item11
	dw .item12
	dw .item13
	dw .item14
	dw .item15
	dw .item16
	dw .item17
	dw .item18
	dw .item19
	dw .item1a
	dw .item1b
	dw .item1c
	dw .item1d
	dw .item1e
	dw .item1f
	dw .item20
	dw .item21
	dw .item22
	dw .item23
	dw .item24
	dw .item25
	dw .item26
	dw .item27
	dw .item28
	dw .item29
	dw .item2a
	dw .item2b
	dw .item2c
	dw .item2d
	dw .item2e
	dw .item2f
	dw .item30
	dw .item31
	dw .item32
	dw .item33
	dw .item34
	dw .item35
	dw .item36
	dw .item37
	dw .item38
	dw .item39
	dw .item3a
	dw .item3b
	dw .item3c
	dw .item3d
	dw .item3e
	dw .item3f
	dw .item40
	dw .item41
	dw .item42
	dw .item43
	dw .item44
	dw .item45
	dw .item46
	dw .item47
	dw .item48
	dw .item49
	dw .item4a
	dw .item4b
	dw .item4c
	dw .item4d
	dw .item4e
	dw .item4f
	dw .item50
	dw .item51
	dw .item52
	dw .item53
	dw .item54
	dw .item55
	dw .item56
	dw .item57
	dw .item58
	dw .item59
	dw .item5a
	dw .item5b
	dw .item5c
	dw .item5d
	dw .item5e
	dw .item5f
	dw .item60
	dw .item61
	dw .item62
	dw .item63
	dw .item64
	dw .item65
	dw .item66
	dw .item67
	dw .item68
	dw .item69
	dw .item6a
	dw .item6b
	dw .item6c
	dw .item6d
	dw .item6e
	dw .item6f
	dw .item70
	dw .item71
	dw .item72
	dw .item73
	dw .item74
	dw .item75
	dw .item76
	dw .item77
	dw .item78
	dw .item79
	dw .item7a
	dw .item7b
	dw .item7c
	dw .item7d
	dw .item7e
	dw .item7f
	dw .item80
	dw .item81
	dw .item82
	dw .item83
	dw .item84
	dw .item85
	dw .item86
	dw .item87
	dw .item88
	dw .item89
	dw .item8a
	dw .item8b
	dw .item8c
	dw .item8d
	dw .item8e
	dw .item8f
	dw .item90
	dw .item91
	dw .item92
	dw .item93
	dw .item94
	dw .item95
	dw .item96
	dw .item97
	dw .item98
	dw .item99
	dw .item9a
	dw .item9b
	dw .item9c
	dw .item9d
	dw .item9e
	dw .item9f
	dw .itema0
	dw .itema1
	dw .itema2
	dw .itema3
	dw .itema4
	dw .itema5
	dw .itema6
	dw .itema7
	dw .itema8
	dw .itema9
	dw .itemaa
	dw .itemab
	dw .itemac
	dw .itemad
	dw .itemae
	dw .itemaf
	dw .itemb0
	dw .itemb1
	dw .itemb2
	dw .itemb3
	dw .itemb4
	dw .itemb5
	dw .itemb6
	dw .itemb7
	dw .itemb8
	dw .itemb9
	dw .itemba
	dw .itembb
	dw .itembc
	dw .itembd
	dw .itembe
	dw .itembf
	dw .itemc0
	dw .itemc1
	dw .itemc2
	dw .itemc3
	dw .itemc4
	dw .itemc5
	dw .itemc6
	dw .itemc7
	dw .itemc8
	dw .itemc9
	dw .itemca
	dw .itemcb
	dw .itemcc
	dw .itemcd
	dw .itemce
	dw .itemcf
	dw .itemd0
	dw .itemd1
	dw .itemd2
	dw .itemd3
	dw .itemd4
	dw .itemd5
	dw .itemd6
	dw .itemd7
	dw .itemd8
	dw .itemd9
	dw .itemda
	dw .itemdb
	dw .itemdc
	dw .itemdd
	dw .itemde
	dw .itemdf
	dw .iteme0
	dw .iteme1
	dw .iteme2
	dw .iteme3
	dw .iteme4
	dw .iteme5
	dw .iteme6
	dw .iteme7
	dw .iteme8
	dw .iteme9
	dw .itemea
	dw .itemeb
	dw .itemec
	dw .itemed
	dw .itemee
	dw .itemef
	dw .itemf0
	dw .itemf1
	dw .itemf2
	dw .itemf3
	dw .itemf4
	dw .itemf5
	dw .itemf6
	dw .itemf7
	dw .itemf8
	dw .itemf9
	dw .itemfa
	dw .itemfb
	dw .itemfc
	dw .itemfd
	dw .itemfe
	dw .itemff
.item00:
	db "You see...\nBlah blah blah...\nSo here we are.", 0
.item01:
	db "Hmm... Nails...\n... Props?\nThat", $01, $01, "s it!", 0
.item02:
	db "I like to take a midnight\nswim on occasion, and one\ntime, I forgot to bring a", 0
.item03:
	db "Sometimes when I get nice\nand buzzed, I just start\nsinging. Still, though,", 0
.item04:
	db "I get where you", $01, $01, "re coming\nfrom, Sakura, but you\nrealize doing that in the", 0
.item05:
	db "The answer is probably\nIris. She", $01, $01, "s likely floating\nthrough the air in her", 0
.item06:
	db "I figure because these\nmarkings only appear in\nthe training room and", 0
.item07:
	db "I believe the correct\nanswer is Kohran. It\nseems like she", $01, $01, "s been", 0
.item08:
	db "the", 0
.item09:
	db "Could", 0
.item0a:
	db "middle of the night\nbothers everyone, don", $01, $01, "t\nyou?", 0
.item0b:
	db "Maybe", 0
.item0c:
	db "conducting a large", $01, $0a, "scale\nexperiment lately.", 0
.item0d:
	db "Alright", 0
.item0e:
	db "something", 0
.item0f:
	db "mystery", 0
.item10:
	db "question", 0
.item11:
	db "blah", 0
.item12:
	db "night", 0
.item13:
	db "manager", 0
.item14:
	db "hammering", 0
.item15:
	db "Maria", 0
.item16:
	db "Sakura", 0
.item17:
	db "Kohran", 0
.item18:
	db "training", 0
.item19:
	db "that", 0
.item1a:
	db "hallway", 0
.item1b:
	db "you", 0
.item1c:
	db "middle", 0
.item1d:
	db "think", 0
.item1e:
	db "probably", 0
.item1f:
	db "someone", 0
.item20:
	db "singing", 0
.item21:
	db "sleep, sheets and all.", 0
.item22:
	db "here", 0
.item23:
	db "and", 0
.item24:
	db "Kanna", 0
.item25:
	db "thinking", 0
.item26:
	db "impressed", 0
.item27:
	db "right", 0
.item28:
	db "water", 0
.item29:
	db "next", 0
.item2a:
	db "Sumire", 0
.item2b:
	db "ridiculous", 0
.item2c:
	db "Understood", 0
.item2d:
	db "explosions", 0
.item2e:
	db "You", 0
.item2f:
	db "about", 0
.item30:
	db "could", 0
.item31:
	db "might", 0
.item32:
	db "Captain", 0
.item33:
	db "been", 0
.item34:
	db "find", 0
.item35:
	db "Iris", 0
.item36:
	db "answer", 0
.item37:
	db "towel", 0
.item38:
	db "Blah", 0
.item39:
	db "her", 0
.item3a:
	db "Someone", 0
.item3b:
	db "Singing", 0
.item3c:
	db "like", 0
.item3d:
	db "What", 0
.item3e:
	db "Nails", 0
.item3f:
	db "Props", 0
.item40:
	db "would", 0
.item41:
	db "lately", 0
.item42:
	db "Yoneda", 0
.item43:
	db "likely", 0
.item44:
	db "experiment", 0
.item45:
	db "near her room.", 0
.item46:
	db "know", 0
.item47:
	db "room", 0
.item48:
	db "doing", 0
.item49:
	db "drunk", 0
.item4a:
	db "Water", 0
.item4b:
	db "seriously", 0
.item4c:
	db "see", 0
.item4d:
	db "trying", 0
.item4e:
	db "brings", 0
.item4f:
	db "Please", 0
.item50:
	db "theater", 0
.item51:
	db "through", 0
.item52:
	db "suppose", 0
.item53:
	db "exactly", 0
.item54:
	db "getting", 0
.item55:
	db "this", 0
.item56:
	db "Okay", 0
.item57:
	db "time", 0
.item58:
	db "just", 0
.item59:
	db "pool", 0
.item5a:
	db "wrong", 0
.item5b:
	db "nails", 0
.item5c:
	db "everyone", 0
.item5d:
	db "Probably", 0
.item5e:
	db $01, $02, "eerie", $01, $02, "...?", 0
.item5f:
	db "performance", 0
.item60:
	db "Ohhhohohoho", 0
.item61:
	db "experiments", 0
.item62:
	db "overloading", 0
.item63:
	db "who", 0
.item64:
	db "with", 0
.item65:
	db "have", 0
.item66:
	db "were", 0
.item67:
	db "harder", 0
.item68:
	db "forgetting", 0
.item69:
	db "conducting", 0
.item6a:
	db "all", 0
.item6b:
	db "But", 0
.item6c:
	db "worry", 0
.item6d:
	db "Ogami", 0
.item6e:
	db "Sorry", 0
.item6f:
	db "sweat", 0
.item70:
	db "bring", 0
.item71:
	db "sleep", 0
.item72:
	db "morning", 0
.item73:
	db "already", 0
.item74:
	db "disturb", 0
.item75:
	db "because", 0
.item76:
	db "ballads", 0
.item77:
	db "are", 0
.item78:
	db "from", 0
.item79:
	db "mysteries", 0
.item7a:
	db "Sometimes", 0
.item7b:
	db "Apologies", 0
.item7c:
	db "screaming", 0
.item7d:
	db "The", 0
.item7e:
	db "not", 0
.item7f:
	db "she", 0
.item80:
	db "one", 0
.item81:
	db "your", 0
.item82:
	db "help", 0
.item83:
	db "then", 0
.item84:
	db "some", 0
.item85:
	db "onto", 0
.item86:
	db "much", 0
.item87:
	db "today", 0
.item88:
	db "sorry", 0
.item89:
	db "later", 0
.item8a:
	db "these", 0
.item8b:
	db "start", 0
.item8c:
	db "sound", 0
.item8d:
	db "hobby", 0
.item8e:
	db "being", 0
.item8f:
	db "Think", 0
.item90:
	db "others", 0
.item91:
	db "before", 0
.item92:
	db "repair", 0
.item93:
	db "during", 0
.item94:
	db "ghosts", 0
.item95:
	db "theory", 0
.item96:
	db "figure", 0
.item97:
	db "sheets", 0
.item98:
	db "voices", 0
.item99:
	db "swimming", 0
.item9a:
	db "anything", 0
.item9b:
	db "midnight", 0
.item9c:
	db "occasion", 0
.item9d:
	db "bringing", 0
.item9e:
	db "Swimming", 0
.item9f:
	db "markings", 0
.itema0:
	db "floating", 0
.itema1:
	db "get", 0
.itema2:
	db "but", 0
.itema3:
	db "Hmm", 0
.itema4:
	db "concentration", 0
.itema5:
	db "for", 0
.itema6:
	db "was", 0
.itema7:
	db "now", 0
.itema8:
	db "take", 0
.itema9:
	db "must", 0
.itemaa:
	db "when", 0
.itemab:
	db "alright", 0
.itemac:
	db "repairs", 0
.itemad:
	db "realize", 0
.itemae:
	db "bothers", 0
.itemaf:
	db "daytime", 0
.itemb0:
	db "revenge", 0
.itemb1:
	db "imagine", 0
.itemb2:
	db "serious", 0
.itemb3:
	db "minutes", 0
.itemb4:
	db "without", 0
.itemb5:
	db "smashed", 0
.itemb6:
	db "fusebox", 0
.itemb7:
	db "believe", 0
.itemb8:
	db "correct", 0
.itemb9:
	db "Wailing", 0
.itemba:
	db "frustrations", 0
.itembb:
	db "why", 0
.itembc:
	db "too", 0
.itembd:
	db "usual", 0
.itembe:
	db "halls", 0
.itembf:
	db "their", 0
.itemc0:
	db "after", 0
.itemc1:
	db "which", 0
.itemc2:
	db "floor", 0
.itemc3:
	db "walls", 0
.itemc4:
	db "eerie", 0
.itemc5:
	db "explanation", 0
.itemc6:
	db "foolishness", 0
.itemc7:
	db "unthinkable", 0
.itemc8:
	db "responsible", 0
.itemc9:
	db "daydreaming", 0
.itemca:
	db "electricity", 0
.itemcb:
	db "Good", 0
.itemcc:
	db "them", 0
.itemcd:
	db "away", 0
.itemce:
	db "prop", 0
.itemcf:
	db "That", 0
.itemd0:
	db "Wait", 0
.itemd1:
	db "fine", 0
.itemd2:
	db "swim", 0
.itemd3:
	db "case", 0
.itemd4:
	db "only", 0
.itemd5:
	db "Haha", 0
.itemd6:
	db "towel.", 0
.itemd7:
	db "voodoo", 0
.itemd8:
	db "coming", 0
.itemd9:
	db "little", 0
.itemda:
	db "absurd", 0
.itemdb:
	db "people", 0
.itemdc:
	db "nobody", 0
.itemdd:
	db "pardon", 0
.itemde:
	db "forgot", 0
.itemdf:
	db "forget", 0
.iteme0:
	db "Nobody", 0
.iteme1:
	db "sticky", 0
.iteme2:
	db "cracks", 0
.iteme3:
	db "appear", 0
.iteme4:
	db "caused", 0
.iteme5:
	db "things", 0
.iteme6:
	db "around", 0
.iteme7:
	db "clumsy", 0
.iteme8:
	db "buzzed", 0
.iteme9:
	db "though", 0
.itemea:
	db "dreams", 0
.itemeb:
	db "guitar", 0
.itemec:
	db "earned", 0
.itemed:
	db "Kayama", 0
.itemee:
	db "friend", 0
.itemef:
	db "paranormal", 0
.itemf0:
	db "distracted", 0
.itemf1:
	db "infidelity", 0
.itemf2:
	db "completely", 0
.itemf3:
	db "Enthusiast", 0
.itemf4:
	db "themselves", 0
.itemf5:
	db "everything", 0
.itemf6:
	db "understand", 0
.itemf7:
	db "apparently", 0
.itemf8:
	db "supposedly", 0
.itemf9:
	db "throughout", 0
.itemfa:
	db "nightmares", 0
.itemfb:
	db "And", 0
.itemfc:
	db "beautiful", 0
.itemfd:
	db "spreading", 0
.itemfe:
	db "occurring", 0
.itemff:
	db "perfectly", 0

endc
