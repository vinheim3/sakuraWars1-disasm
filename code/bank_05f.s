; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

	ld   l, a                                        ; $4000: $6f
	sub  c                                           ; $4001: $91
	and  c                                           ; $4002: $a1
	ld   e, d                                        ; $4003: $5a
	inc  bc                                          ; $4004: $03
	and  b                                           ; $4005: $a0
	ld   [hl], c                                     ; $4006: $71
	ld   [hl], h                                     ; $4007: $74
	ld   d, d                                        ; $4008: $52
	ld   [hl], c                                     ; $4009: $71
	ld   l, l                                        ; $400a: $6d
	sub  [hl]                                        ; $400b: $96
	sbc  a                                           ; $400c: $9f
	dec  c                                           ; $400d: $0d
	nop                                              ; $400e: $00
	ld   a, [bc]                                     ; $400f: $0a
	inc  e                                           ; $4010: $1c
	ld   b, $03                                      ; $4011: $06 $03
	inc  bc                                          ; $4013: $03
	ld   bc, $8503                                   ; $4014: $01 $03 $85
	inc  b                                           ; $4017: $04
	xor  e                                           ; $4018: $ab
	inc  bc                                          ; $4019: $03
	add  d                                           ; $401a: $82
	ld   e, d                                        ; $401b: $5a
	ld   a, [$0df9]                                  ; $401c: $fa $f9 $0d
	nop                                              ; $401f: $00
	ld   a, [bc]                                     ; $4020: $0a
	ld   b, $e6                                      ; $4021: $06 $e6
	ld   [$480e], sp                                 ; $4023: $08 $0e $48
	inc  e                                           ; $4026: $1c
	ld   b, $05                                      ; $4027: $06 $05
	dec  b                                           ; $4029: $05
	ld   bc, $7158                                   ; $402a: $01 $58 $71
	ld   e, c                                        ; $402d: $59
	ld   h, l                                        ; $402e: $65
	ld   d, d                                        ; $402f: $52
	ld   a, b                                        ; $4030: $78
	db   $fc                                         ; $4031: $fc
	sbc  a                                           ; $4032: $9f
	dec  c                                           ; $4033: $0d
	sub  b                                           ; $4034: $90
	ld   d, h                                        ; $4035: $54
	ld   [bc], a                                     ; $4036: $02
	jr   nz, jr_05f_403b                             ; $4037: $20 $02

	sub  e                                           ; $4039: $93
	inc  b                                           ; $403a: $04

jr_05f_403b:
	sub  l                                           ; $403b: $95
	ld   [bc], a                                     ; $403c: $02
	ld   hl, $04a0                                   ; $403d: $21 $a0 $04
	inc  d                                           ; $4040: $14
	ld   h, l                                        ; $4041: $65
	ld   [hl], h                                     ; $4042: $74
	adc  l                                           ; $4043: $8d
	sbc  c                                           ; $4044: $99
	ld   e, c                                        ; $4045: $59
	sbc  a                                           ; $4046: $9f
	dec  c                                           ; $4047: $0d
	nop                                              ; $4048: $00
	inc  e                                           ; $4049: $1c
	ld   b, $01                                      ; $404a: $06 $01
	ld   bc, $401d                                   ; $404c: $01 $1d $40
	ld   d, $03                                      ; $404f: $16 $03
	ld   d, $01                                      ; $4051: $16 $01
	ld   bc, $0028                                   ; $4053: $01 $28 $00
	ld   bc, $9850                                   ; $4056: $01 $50 $98
	ld   e, d                                        ; $4059: $5a
	halt                                             ; $405a: $76
	ld   d, h                                        ; $405b: $54
	ld   a, b                                        ; $405c: $78
	sbc  a                                           ; $405d: $9f
	ld   [$9f00], sp                                 ; $405e: $08 $00 $9f
	dec  c                                           ; $4061: $0d
	nop                                              ; $4062: $00
	ld   a, [bc]                                     ; $4063: $0a
	nop                                              ; $4064: $00
	rrca                                             ; $4065: $0f
	nop                                              ; $4066: $00
	ld   bc, $0401                                   ; $4067: $01 $01 $04
	rst  $10                                         ; $406a: $d7
	inc  b                                           ; $406b: $04
	ld   hl, $8503                                   ; $406c: $21 $03 $85
	inc  b                                           ; $406f: $04
	xor  e                                           ; $4070: $ab
	inc  bc                                          ; $4071: $03
	add  d                                           ; $4072: $82
	ld   a, h                                        ; $4073: $7c
	halt                                             ; $4074: $76
	ld   h, c                                        ; $4075: $61
	sbc  e                                           ; $4076: $9b
	ld   a, c                                        ; $4077: $79
	dec  c                                           ; $4078: $0d
	ld   [bc], a                                     ; $4079: $02
	ld   a, a                                        ; $407a: $7f
	ld   e, e                                        ; $407b: $5b
	adc  h                                           ; $407c: $8c
	ld   h, l                                        ; $407d: $65
	sub  l                                           ; $407e: $95
	ld   d, h                                        ; $407f: $54
	sbc  a                                           ; $4080: $9f
	dec  c                                           ; $4081: $0d
	nop                                              ; $4082: $00
	ld   a, [bc]                                     ; $4083: $0a
	dec  c                                           ; $4084: $0d
	nop                                              ; $4085: $00
	nop                                              ; $4086: $00
	rrca                                             ; $4087: $0f
	nop                                              ; $4088: $00
	ld   bc, $020c                                   ; $4089: $01 $0c $02
	ld   c, $0f                                      ; $408c: $0e $0f
	dec  c                                           ; $408e: $0d
	ld   a, [bc]                                     ; $408f: $0a
	dec  b                                           ; $4090: $05
	rrca                                             ; $4091: $0f
	ld   b, $00                                      ; $4092: $06 $00
	ld   bc, $7150                                   ; $4094: $01 $50 $71
	ld   l, l                                        ; $4097: $6d
	ld   a, [$500d]                                  ; $4098: $fa $0d $50
	ld   l, l                                        ; $409b: $6d
	ld   d, d                                        ; $409c: $52
	ld   a, h                                        ; $409d: $7c
	jp   z, $d7f5                                    ; $409e: $ca $f5 $d7

	db   $ec                                         ; $40a1: $ec
	ld   a, [$000d]                                  ; $40a2: $fa $0d $00
	ld   a, [bc]                                     ; $40a5: $0a
	inc  e                                           ; $40a6: $1c
	ld   a, [bc]                                     ; $40a7: $0a
	dec  b                                           ; $40a8: $05
	ld   a, [bc]                                     ; $40a9: $0a
	ld   bc, $f9a1                                   ; $40aa: $01 $a1 $f9
	db   $10                                         ; $40ad: $10
	ld   [hl], a                                     ; $40ae: $77
	ld   d, h                                        ; $40af: $54
	ld   h, l                                        ; $40b0: $65
	ld   l, l                                        ; $40b1: $6d
	sbc  [hl]                                        ; $40b2: $9e
	xor  h                                           ; $40b3: $ac
	push af                                          ; $40b4: $f5
	res  3, a                                        ; $40b5: $cb $9f
	dec  c                                           ; $40b7: $0d
	ld   e, b                                        ; $40b8: $58
	ld   e, b                                        ; $40b9: $58
	sbc  [hl]                                        ; $40ba: $9e
	ld   [$9000], sp                                 ; $40bb: $08 $00 $90
	ld   d, d                                        ; $40be: $52
	ld   [hl], c                                     ; $40bf: $71
	ld   h, l                                        ; $40c0: $65
	sub  l                                           ; $40c1: $95
	dec  c                                           ; $40c2: $0d
	ld   h, [hl]                                     ; $40c3: $66
	sub  c                                           ; $40c4: $91
	ld   a, e                                        ; $40c5: $7b
	ei                                               ; $40c6: $fb
	ld   e, c                                        ; $40c7: $59
	sbc  a                                           ; $40c8: $9f
	dec  c                                           ; $40c9: $0d
	nop                                              ; $40ca: $00
	ld   a, [bc]                                     ; $40cb: $0a
	inc  e                                           ; $40cc: $1c
	ld   b, $02                                      ; $40cd: $06 $02
	ld   [bc], a                                     ; $40cf: $02
	ld   bc, $8503                                   ; $40d0: $01 $03 $85
	inc  b                                           ; $40d3: $04
	xor  e                                           ; $40d4: $ab
	inc  bc                                          ; $40d5: $03
	add  d                                           ; $40d6: $82
	ld   a, [$6b0d]                                  ; $40d7: $fa $0d $6b
	sbc  d                                           ; $40da: $9a
	sbc  [hl]                                        ; $40db: $9e
	ld   d, b                                        ; $40dc: $50
	ld   l, l                                        ; $40dd: $6d
	ld   d, d                                        ; $40de: $52
	ld   a, h                                        ; $40df: $7c
	jp   z, $d7f5                                    ; $40e0: $ca $f5 $d7

	db   $ec                                         ; $40e3: $ec
	sbc  a                                           ; $40e4: $9f
	dec  c                                           ; $40e5: $0d
	nop                                              ; $40e6: $00
	ld   a, [bc]                                     ; $40e7: $0a
	inc  e                                           ; $40e8: $1c
	ld   a, [bc]                                     ; $40e9: $0a
	dec  b                                           ; $40ea: $05
	ld   a, [bc]                                     ; $40eb: $0a
	ld   bc, $ff50                                   ; $40ec: $01 $50 $ff
	rst  $38                                         ; $40ef: $ff
	sbc  [hl]                                        ; $40f0: $9e
	or   h                                           ; $40f1: $b4
	xor  $59                                         ; $40f2: $ee $59
	ld   sp, hl                                      ; $40f4: $f9
	dec  c                                           ; $40f5: $0d
	nop                                              ; $40f6: $00
	db   $10                                         ; $40f7: $10
	ld   b, [hl]                                     ; $40f8: $46
	nop                                              ; $40f9: $00
	ld   bc, $8c67                                   ; $40fa: $01 $67 $8c
	and  c                                           ; $40fd: $a1
	ld   h, a                                        ; $40fe: $67
	adc  h                                           ; $40ff: $8c
	and  c                                           ; $4100: $a1
	sbc  [hl]                                        ; $4101: $9e
	ld   [bc], a                                     ; $4102: $02
	ld   [hl+], a                                    ; $4103: $22
	sub  b                                           ; $4104: $90
	sbc  b                                           ; $4105: $98
	ld   a, h                                        ; $4106: $7c
	dec  c                                           ; $4107: $0d
	inc  bc                                          ; $4108: $03
	ld   e, c                                        ; $4109: $59
	and  b                                           ; $410a: $a0
	ld   [bc], a                                     ; $410b: $02
	rst  $38                                         ; $410c: $ff
	ld   e, a                                        ; $410d: $5f
	sbc  c                                           ; $410e: $99
	ld   a, h                                        ; $410f: $7c
	ld   a, c                                        ; $4110: $79
	rst  $38                                         ; $4111: $ff
	rst  $38                                         ; $4112: $ff
	dec  c                                           ; $4113: $0d
	nop                                              ; $4114: $00
	ld   a, [bc]                                     ; $4115: $0a
	inc  e                                           ; $4116: $1c
	ld   b, $02                                      ; $4117: $06 $02
	ld   [bc], a                                     ; $4119: $02
	ld   bc, $fb90                                   ; $411a: $01 $90 $fb
	ld   a, [$5910]                                  ; $411d: $fa $10 $59
	ld   d, [hl]                                     ; $4120: $56
	ld   h, l                                        ; $4121: $65
	ld   [hl], h                                     ; $4122: $74
	sub  b                                           ; $4123: $90
	sub  a                                           ; $4124: $97
	ld   d, h                                        ; $4125: $54
	ld   l, d                                        ; $4126: $6a
	sbc  a                                           ; $4127: $9f
	db   $10                                         ; $4128: $10
	dec  c                                           ; $4129: $0d
	ld   [bc], a                                     ; $412a: $02
	ld   [hl+], a                                    ; $412b: $22
	sub  b                                           ; $412c: $90
	sbc  b                                           ; $412d: $98
	ld   a, l                                        ; $412e: $7d
	rst  JumpTable                                         ; $412f: $df
	db   $ec                                         ; $4130: $ec
	and  e                                           ; $4131: $a3
	ld   a, c                                        ; $4132: $79
	dec  c                                           ; $4133: $0d
	inc  bc                                          ; $4134: $03
	ld   a, e                                        ; $4135: $7b
	dec  b                                           ; $4136: $05
	ld   de, $7c6d                                   ; $4137: $11 $6d $7c
	and  c                                           ; $413a: $a1
	ld   [hl], a                                     ; $413b: $77
	ld   e, l                                        ; $413c: $5d
	ld   e, c                                        ; $413d: $59
	sub  a                                           ; $413e: $97
	ld   h, e                                        ; $413f: $63
	sbc  a                                           ; $4140: $9f
	dec  c                                           ; $4141: $0d
	nop                                              ; $4142: $00
	ld   a, [bc]                                     ; $4143: $0a
	inc  e                                           ; $4144: $1c
	ld   b, $01                                      ; $4145: $06 $01
	ld   bc, $401d                                   ; $4147: $01 $1d $40
	ld   d, $03                                      ; $414a: $16 $03
	ld   d, $01                                      ; $414c: $16 $01
	inc  bc                                          ; $414e: $03
	jr   z, jr_05f_4151                              ; $414f: $28 $00

jr_05f_4151:
	ld   bc, $0008                                   ; $4151: $01 $08 $00
	sbc  a                                           ; $4154: $9f
	dec  c                                           ; $4155: $0d
	ld   d, d                                        ; $4156: $52
	ld   [hl], c                                     ; $4157: $71
	ld   h, l                                        ; $4158: $65
	sub  l                                           ; $4159: $95
	ld   a, c                                        ; $415a: $79
	inc  b                                           ; $415b: $04
	inc  d                                           ; $415c: $14
	ld   h, l                                        ; $415d: $65
	ld   [hl], h                                     ; $415e: $74
	ld   e, l                                        ; $415f: $5d
	sbc  d                                           ; $4160: $9a
	ld   [hl], h                                     ; $4161: $74
	dec  c                                           ; $4162: $0d
	ld   d, b                                        ; $4163: $50
	sbc  b                                           ; $4164: $98
	ld   e, d                                        ; $4165: $5a
	halt                                             ; $4166: $76
	ld   d, h                                        ; $4167: $54
	ld   a, b                                        ; $4168: $78
	sbc  a                                           ; $4169: $9f
	dec  c                                           ; $416a: $0d
	nop                                              ; $416b: $00
	ld   a, [bc]                                     ; $416c: $0a
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	rrca                                             ; $416f: $0f
	inc  bc                                          ; $4170: $03
	rlca                                             ; $4171: $07
	ld   d, $10                                      ; $4172: $16 $10
	ld   [bc], a                                     ; $4174: $02
	ld   bc, $ff50                                   ; $4175: $01 $50 $ff
	rst  $38                                         ; $4178: $ff
	ld   [$5d00], sp                                 ; $4179: $08 $00 $5d
	and  c                                           ; $417c: $a1
	rst  $38                                         ; $417d: $ff
	rst  $38                                         ; $417e: $ff
	dec  c                                           ; $417f: $0d
	nop                                              ; $4180: $00
	ld   a, [bc]                                     ; $4181: $0a
	rrca                                             ; $4182: $0f
	nop                                              ; $4183: $00
	ld   bc, $0401                                   ; $4184: $01 $01 $04
	ld   c, c                                        ; $4187: $49
	ld   h, l                                        ; $4188: $65
	ld   [hl], h                                     ; $4189: $74
	sbc  c                                           ; $418a: $99
	and  c                                           ; $418b: $a1
	ld   [hl], l                                     ; $418c: $75
	ld   h, a                                        ; $418d: $67
	ld   e, c                                        ; $418e: $59
	ld   sp, hl                                      ; $418f: $f9
	dec  c                                           ; $4190: $0d
	ld   l, e                                        ; $4191: $6b
	and  c                                           ; $4192: $a1
	ld   a, b                                        ; $4193: $78
	xor  h                                           ; $4194: $ac
	pop  af                                          ; $4195: $f1
	and  l                                           ; $4196: $a5
	and  l                                           ; $4197: $a5
	ld   [bc], a                                     ; $4198: $02
	ld   de, $4c03                                   ; $4199: $11 $03 $4c
	and  b                                           ; $419c: $a0
	dec  c                                           ; $419d: $0d
	inc  bc                                          ; $419e: $03
	ld   l, e                                        ; $419f: $6b
	ld   a, c                                        ; $41a0: $79
	ld   h, l                                        ; $41a1: $65
	ld   [hl], h                                     ; $41a2: $74
	rst  $38                                         ; $41a3: $ff
	rst  $38                                         ; $41a4: $ff
	dec  c                                           ; $41a5: $0d
	nop                                              ; $41a6: $00
	ld   a, [bc]                                     ; $41a7: $0a
	rrca                                             ; $41a8: $0f
	inc  bc                                          ; $41a9: $03
	ld   bc, $6f01                                   ; $41aa: $01 $01 $6f
	sub  l                                           ; $41ad: $95
	ld   [hl], c                                     ; $41ae: $71
	halt                                             ; $41af: $76
	rst  $38                                         ; $41b0: $ff
	rst  $38                                         ; $41b1: $ff
	dec  c                                           ; $41b2: $0d
	ld   e, c                                        ; $41b3: $59
	sbc  l                                           ; $41b4: $9d
	ld   d, d                                        ; $41b5: $52
	ld   e, c                                        ; $41b6: $59
	ld   [hl], c                                     ; $41b7: $71
	ld   l, l                                        ; $41b8: $6d
	ld   e, c                                        ; $41b9: $59
	sub  a                                           ; $41ba: $97
	rst  $38                                         ; $41bb: $ff
	rst  $38                                         ; $41bc: $ff
	dec  c                                           ; $41bd: $0d
	ld   [hl], d                                     ; $41be: $72
	ld   d, d                                        ; $41bf: $52
	rst  $38                                         ; $41c0: $ff
	rst  $38                                         ; $41c1: $ff
	dec  c                                           ; $41c2: $0d
	nop                                              ; $41c3: $00
	ld   a, [bc]                                     ; $41c4: $0a
	add  hl, de                                      ; $41c5: $19
	dec  b                                           ; $41c6: $05
	inc  bc                                          ; $41c7: $03
	inc  bc                                          ; $41c8: $03
	ld   l, h                                        ; $41c9: $6c
	inc  bc                                          ; $41ca: $03
	ld   l, [hl]                                     ; $41cb: $6e
	ld   h, l                                        ; $41cc: $65
	sub  e                                           ; $41cd: $93
	adc  l                                           ; $41ce: $8d
	ld   [hl], l                                     ; $41cf: $75
	ld   h, a                                        ; $41d0: $67
	ld   a, e                                        ; $41d1: $7b
	nop                                              ; $41d2: $00
	nop                                              ; $41d3: $00
	inc  b                                           ; $41d4: $04
	ld   c, l                                        ; $41d5: $4d
	ld   [bc], a                                     ; $41d6: $02
	ld   a, e                                        ; $41d7: $7b
	ld   d, d                                        ; $41d8: $52
	adc  h                                           ; $41d9: $8c
	ld   h, a                                        ; $41da: $67
	sub  [hl]                                        ; $41db: $96
	nop                                              ; $41dc: $00
	ld   bc, $6c03                                   ; $41dd: $01 $03 $6c
	ld   h, l                                        ; $41e0: $65
	inc  bc                                          ; $41e1: $03
	xor  a                                           ; $41e2: $af
	ld   h, e                                        ; $41e3: $63
	ld   d, d                                        ; $41e4: $52
	and  c                                           ; $41e5: $a1
	ld   h, [hl]                                     ; $41e6: $66
	sub  c                                           ; $41e7: $91
	ld   sp, hl                                      ; $41e8: $f9
	nop                                              ; $41e9: $00
	ld   [bc], a                                     ; $41ea: $02
	rlca                                             ; $41eb: $07
	cp   [hl]                                        ; $41ec: $be
	nop                                              ; $41ed: $00
	ld   [bc], a                                     ; $41ee: $02
	inc  bc                                          ; $41ef: $03
	ld   bc, $2000                                   ; $41f0: $01 $00 $20
	nop                                              ; $41f3: $00
	rlca                                             ; $41f4: $07
	ld   e, $01                                      ; $41f5: $1e $01
	ld   [bc], a                                     ; $41f7: $02
	inc  bc                                          ; $41f8: $03
	ld   bc, $2001                                   ; $41f9: $01 $01 $20
	nop                                              ; $41fc: $00
	rlca                                             ; $41fd: $07
	ld   l, h                                        ; $41fe: $6c
	ld   bc, $0302                                   ; $41ff: $01 $02 $03
	ld   bc, $2002                                   ; $4202: $01 $02 $20
	nop                                              ; $4205: $00
	ld   b, $9a                                      ; $4206: $06 $9a
	nop                                              ; $4208: $00
	ld   c, $2e                                      ; $4209: $0e $2e
	inc  e                                           ; $420b: $1c
	inc  bc                                          ; $420c: $03
	inc  b                                           ; $420d: $04
	inc  b                                           ; $420e: $04
	ld   bc, $9a6b                                   ; $420f: $01 $6b $9a
	sub  [hl]                                        ; $4212: $96
	sbc  b                                           ; $4213: $98
	sbc  [hl]                                        ; $4214: $9e
	ld   h, c                                        ; $4215: $61
	ld   a, h                                        ; $4216: $7c
	ld   h, c                                        ; $4217: $61
	halt                                             ; $4218: $76
	ld   a, l                                        ; $4219: $7d
	dec  c                                           ; $421a: $0d
	inc  bc                                          ; $421b: $03
	xor  c                                           ; $421c: $a9
	ld   a, c                                        ; $421d: $79
	sub  b                                           ; $421e: $90
	ld   [bc], a                                     ; $421f: $02
	sbc  l                                           ; $4220: $9d
	sbc  l                                           ; $4221: $9d
	ld   a, b                                        ; $4222: $78
	ld   d, d                                        ; $4223: $52
	ld   [hl], l                                     ; $4224: $75
	rst  $38                                         ; $4225: $ff
	rst  $38                                         ; $4226: $ff
	dec  c                                           ; $4227: $0d
	nop                                              ; $4228: $00
	ld   a, [bc]                                     ; $4229: $0a
	ld   b, $be                                      ; $422a: $06 $be
	ld   bc, $000f                                   ; $422c: $01 $0f $00
	ld   bc, $0301                                   ; $422f: $01 $01 $03
	ld   l, h                                        ; $4232: $6c
	inc  bc                                          ; $4233: $03
	ld   l, [hl]                                     ; $4234: $6e
	ld   h, l                                        ; $4235: $65
	sub  e                                           ; $4236: $93
	adc  l                                           ; $4237: $8d
	ld   [hl], l                                     ; $4238: $75
	ld   h, a                                        ; $4239: $67
	ld   a, e                                        ; $423a: $7b
	sbc  a                                           ; $423b: $9f
	dec  c                                           ; $423c: $0d
	nop                                              ; $423d: $00
	ld   a, [bc]                                     ; $423e: $0a
	rlca                                             ; $423f: $07
	db   $f4                                         ; $4240: $f4
	nop                                              ; $4241: $00
	inc  bc                                          ; $4242: $03
	inc  de                                          ; $4243: $13
	ld   bc, $22a0                                   ; $4244: $01 $a0 $22
	nop                                              ; $4247: $00
	ld   c, $2e                                      ; $4248: $0e $2e
	inc  e                                           ; $424a: $1c
	inc  bc                                          ; $424b: $03
	inc  b                                           ; $424c: $04
	inc  b                                           ; $424d: $04
	ld   bc, $9403                                   ; $424e: $01 $03 $94
	inc  b                                           ; $4251: $04
	sbc  [hl]                                        ; $4252: $9e
	ld   [hl], l                                     ; $4253: $75
	sub  b                                           ; $4254: $90
	ld   l, e                                        ; $4255: $6b
	ld   d, h                                        ; $4256: $54
	dec  b                                           ; $4257: $05
	pop  de                                          ; $4258: $d1
	ld   d, h                                        ; $4259: $54
	sbc  l                                           ; $425a: $9d
	rst  $38                                         ; $425b: $ff
	rst  $38                                         ; $425c: $ff
	dec  c                                           ; $425d: $0d
	nop                                              ; $425e: $00
	ld   a, [bc]                                     ; $425f: $0a
	ld   b, $9f                                      ; $4260: $06 $9f
	ld   bc, $2e0e                                   ; $4262: $01 $0e $2e
	inc  e                                           ; $4265: $1c
	inc  bc                                          ; $4266: $03
	ld   [bc], a                                     ; $4267: $02
	ld   [bc], a                                     ; $4268: $02
	dec  e                                           ; $4269: $1d
	ld   b, b                                        ; $426a: $40
	inc  de                                          ; $426b: $13
	inc  bc                                          ; $426c: $03
	inc  de                                          ; $426d: $13
	ld   bc, $2902                                   ; $426e: $01 $02 $29
	nop                                              ; $4271: $00
	ld   [de], a                                     ; $4272: $12
	nop                                              ; $4273: $00
	ld   bc, $0301                                   ; $4274: $01 $01 $03
	ld   b, $1c                                      ; $4277: $06 $1c
	inc  b                                           ; $4279: $04
	ccf                                              ; $427a: $3f
	ld   a, h                                        ; $427b: $7c
	ld   [hl], d                                     ; $427c: $72
	sub  b                                           ; $427d: $90
	sbc  b                                           ; $427e: $98
	ld   e, c                                        ; $427f: $59
	ld   h, l                                        ; $4280: $65
	sub  a                                           ; $4281: $97
	ld   sp, hl                                      ; $4282: $f9
	ld   bc, $0d04                                   ; $4283: $01 $04 $0d
	nop                                              ; $4286: $00
	ld   a, [bc]                                     ; $4287: $0a
	ld   [de], a                                     ; $4288: $12
	rst  $38                                         ; $4289: $ff
	ld   b, $9f                                      ; $428a: $06 $9f
	ld   bc, $000f                                   ; $428c: $01 $0f $00
	ld   bc, $0401                                   ; $428f: $01 $01 $04
	ld   c, l                                        ; $4292: $4d
	ld   [bc], a                                     ; $4293: $02
	ld   a, e                                        ; $4294: $7b
	ld   d, d                                        ; $4295: $52
	adc  h                                           ; $4296: $8c
	ld   h, a                                        ; $4297: $67
	sub  [hl]                                        ; $4298: $96
	sbc  a                                           ; $4299: $9f
	dec  c                                           ; $429a: $0d
	nop                                              ; $429b: $00
	ld   a, [bc]                                     ; $429c: $0a
	rlca                                             ; $429d: $07
	ld   d, [hl]                                     ; $429e: $56
	ld   bc, $1303                                   ; $429f: $01 $03 $13
	ld   bc, $22a0                                   ; $42a2: $01 $a0 $22
	nop                                              ; $42a5: $00
	ld   c, $2e                                      ; $42a6: $0e $2e
	inc  e                                           ; $42a8: $1c
	inc  bc                                          ; $42a9: $03
	ld   bc, $1d01                                   ; $42aa: $01 $01 $1d
	ld   b, b                                        ; $42ad: $40
	inc  de                                          ; $42ae: $13
	inc  bc                                          ; $42af: $03
	inc  de                                          ; $42b0: $13
	ld   bc, $2802                                   ; $42b1: $01 $02 $28
	nop                                              ; $42b4: $00
	ld   bc, $9e6b                                   ; $42b5: $01 $6b $9e
	ld   l, e                                        ; $42b8: $6b
	ld   d, h                                        ; $42b9: $54
	ld   e, c                                        ; $42ba: $59
	ld   h, l                                        ; $42bb: $65
	sub  a                                           ; $42bc: $97
	rst  $38                                         ; $42bd: $ff
	rst  $38                                         ; $42be: $ff
	dec  c                                           ; $42bf: $0d
	nop                                              ; $42c0: $00
	ld   a, [bc]                                     ; $42c1: $0a
	ld   b, $9f                                      ; $42c2: $06 $9f
	ld   bc, $2e0e                                   ; $42c4: $01 $0e $2e
	inc  e                                           ; $42c7: $1c
	inc  bc                                          ; $42c8: $03
	inc  b                                           ; $42c9: $04
	inc  b                                           ; $42ca: $04
	ld   bc, $6958                                   ; $42cb: $01 $58 $69
	ld   h, [hl]                                     ; $42ce: $66
	ld   a, l                                        ; $42cf: $7d
	ld   d, d                                        ; $42d0: $52
	ld   d, d                                        ; $42d1: $52
	sbc  l                                           ; $42d2: $9d
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	dec  c                                           ; $42d5: $0d
	nop                                              ; $42d6: $00
	ld   a, [bc]                                     ; $42d7: $0a
	ld   b, $9f                                      ; $42d8: $06 $9f
	ld   bc, $000f                                   ; $42da: $01 $0f $00
	ld   bc, $0301                                   ; $42dd: $01 $01 $03
	ld   l, h                                        ; $42e0: $6c
	ld   h, l                                        ; $42e1: $65
	inc  bc                                          ; $42e2: $03
	xor  a                                           ; $42e3: $af
	ld   h, e                                        ; $42e4: $63
	ld   d, d                                        ; $42e5: $52
	and  c                                           ; $42e6: $a1
	ld   h, [hl]                                     ; $42e7: $66
	sub  c                                           ; $42e8: $91
	rst  $38                                         ; $42e9: $ff
	rst  $38                                         ; $42ea: $ff
	ld   sp, hl                                      ; $42eb: $f9
	dec  c                                           ; $42ec: $0d
	nop                                              ; $42ed: $00
	ld   a, [bc]                                     ; $42ee: $0a
	ld   c, $2e                                      ; $42ef: $0e $2e
	inc  e                                           ; $42f1: $1c
	inc  bc                                          ; $42f2: $03
	ld   [bc], a                                     ; $42f3: $02
	ld   [bc], a                                     ; $42f4: $02
	dec  e                                           ; $42f5: $1d
	ld   b, b                                        ; $42f6: $40
	inc  de                                          ; $42f7: $13
	inc  bc                                          ; $42f8: $03
	inc  de                                          ; $42f9: $13
	ld   bc, $2902                                   ; $42fa: $01 $02 $29
	nop                                              ; $42fd: $00
	ld   bc, $5f96                                   ; $42fe: $01 $96 $5f
	ld   d, d                                        ; $4301: $52
	ld   a, b                                        ; $4302: $78
	ld   e, b                                        ; $4303: $58
	inc  bc                                          ; $4304: $03
	add  hl, de                                      ; $4305: $19
	dec  b                                           ; $4306: $05
	jr   nz, jr_05f_4377                             ; $4307: $20 $6e

	sbc  l                                           ; $4309: $9d
	sbc  a                                           ; $430a: $9f
	dec  c                                           ; $430b: $0d
	nop                                              ; $430c: $00
	ld   a, [bc]                                     ; $430d: $0a
	inc  e                                           ; $430e: $1c
	inc  bc                                          ; $430f: $03
	inc  b                                           ; $4310: $04
	inc  b                                           ; $4311: $04
	ld   bc, $9a6b                                   ; $4312: $01 $6b $9a
	sub  [hl]                                        ; $4315: $96
	sbc  b                                           ; $4316: $98
	sbc  [hl]                                        ; $4317: $9e
	ld   h, c                                        ; $4318: $61
	ld   a, h                                        ; $4319: $7c
	ld   h, c                                        ; $431a: $61
	halt                                             ; $431b: $76
	ld   a, l                                        ; $431c: $7d
	dec  c                                           ; $431d: $0d
	inc  bc                                          ; $431e: $03
	xor  c                                           ; $431f: $a9
	ld   a, c                                        ; $4320: $79
	sub  b                                           ; $4321: $90
	ld   [bc], a                                     ; $4322: $02
	sbc  l                                           ; $4323: $9d
	sbc  l                                           ; $4324: $9d
	ld   a, b                                        ; $4325: $78
	ld   d, d                                        ; $4326: $52
	ld   [hl], l                                     ; $4327: $75
	rst  $38                                         ; $4328: $ff
	rst  $38                                         ; $4329: $ff
	dec  c                                           ; $432a: $0d
	nop                                              ; $432b: $00
	ld   a, [bc]                                     ; $432c: $0a
	add  hl, de                                      ; $432d: $19
	dec  b                                           ; $432e: $05
	ld   [bc], a                                     ; $432f: $02
	sbc  l                                           ; $4330: $9d
	ld   e, c                                        ; $4331: $59
	sbc  b                                           ; $4332: $98
	adc  h                                           ; $4333: $8c
	ld   h, l                                        ; $4334: $65
	ld   l, l                                        ; $4335: $6d
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	ld   h, l                                        ; $4338: $65
	sub  c                                           ; $4339: $91
	add  a                                           ; $433a: $87
	sbc  b                                           ; $433b: $98
	adc  h                                           ; $433c: $8c
	ld   h, a                                        ; $433d: $67
	nop                                              ; $433e: $00
	ld   bc, $fd07                                   ; $433f: $01 $07 $fd
	ld   bc, $0302                                   ; $4342: $01 $02 $03
	ld   bc, $2000                                   ; $4345: $01 $00 $20
	nop                                              ; $4348: $00
	rlca                                             ; $4349: $07
	add  hl, sp                                      ; $434a: $39
	ld   [bc], a                                     ; $434b: $02
	ld   [bc], a                                     ; $434c: $02
	inc  bc                                          ; $434d: $03
	ld   bc, $2001                                   ; $434e: $01 $01 $20
	nop                                              ; $4351: $00
	ld   b, $e6                                      ; $4352: $06 $e6
	ld   bc, $031c                                   ; $4354: $01 $1c $03
	nop                                              ; $4357: $00
	nop                                              ; $4358: $00
	ld   bc, $5063                                   ; $4359: $01 $63 $50
	sbc  [hl]                                        ; $435c: $9e
	ld   [bc], a                                     ; $435d: $02
	sub  l                                           ; $435e: $95
	ld   [bc], a                                     ; $435f: $02
	sub  e                                           ; $4360: $93
	sbc  b                                           ; $4361: $98
	and  b                                           ; $4362: $a0
	ld   [bc], a                                     ; $4363: $02
	ei                                               ; $4364: $fb
	ld   e, a                                        ; $4365: $5f
	ld   [hl], h                                     ; $4366: $74
	sbc  a                                           ; $4367: $9f
	dec  c                                           ; $4368: $0d
	nop                                              ; $4369: $00
	ld   a, [bc]                                     ; $436a: $0a
	nop                                              ; $436b: $00
	rrca                                             ; $436c: $0f
	nop                                              ; $436d: $00
	ld   bc, $9d01                                   ; $436e: $01 $01 $9d
	ld   e, c                                        ; $4371: $59
	sbc  b                                           ; $4372: $98
	adc  h                                           ; $4373: $8c
	ld   h, l                                        ; $4374: $65
	ld   l, l                                        ; $4375: $6d
	sbc  a                                           ; $4376: $9f

jr_05f_4377:
	dec  c                                           ; $4377: $0d
	inc  bc                                          ; $4378: $03
	xor  c                                           ; $4379: $a9
	ld   a, c                                        ; $437a: $79
	sub  b                                           ; $437b: $90
	ld   [bc], a                                     ; $437c: $02
	sbc  l                                           ; $437d: $9d
	ld   d, d                                        ; $437e: $52
	adc  h                                           ; $437f: $8c
	ld   l, c                                        ; $4380: $69
	and  c                                           ; $4381: $a1
	rst  $38                                         ; $4382: $ff
	rst  $38                                         ; $4383: $ff
	dec  c                                           ; $4384: $0d
	nop                                              ; $4385: $00
	ld   a, [bc]                                     ; $4386: $0a
	inc  e                                           ; $4387: $1c
	inc  bc                                          ; $4388: $03
	inc  bc                                          ; $4389: $03
	inc  bc                                          ; $438a: $03
	dec  e                                           ; $438b: $1d
	ld   b, b                                        ; $438c: $40
	inc  de                                          ; $438d: $13
	inc  bc                                          ; $438e: $03
	inc  de                                          ; $438f: $13
	ld   bc, $2802                                   ; $4390: $01 $02 $28
	nop                                              ; $4393: $00
	ld   bc, $9850                                   ; $4394: $01 $50 $98
	ld   e, d                                        ; $4397: $5a
	halt                                             ; $4398: $76
	ld   d, h                                        ; $4399: $54
	rst  $38                                         ; $439a: $ff
	rst  $38                                         ; $439b: $ff
	inc  bc                                          ; $439c: $03
	ld   e, e                                        ; $439d: $5b
	ld   e, c                                        ; $439e: $59
	sbc  c                                           ; $439f: $99
	sbc  l                                           ; $43a0: $9d
	sbc  a                                           ; $43a1: $9f
	dec  c                                           ; $43a2: $0d
	nop                                              ; $43a3: $00
	ld   a, [bc]                                     ; $43a4: $0a
	ld   b, $b7                                      ; $43a5: $06 $b7
	ld   [bc], a                                     ; $43a7: $02
	rrca                                             ; $43a8: $0f
	nop                                              ; $43a9: $00
	ld   bc, $5201                                   ; $43aa: $01 $01 $52
	ld   d, [hl]                                     ; $43ad: $56
	sbc  [hl]                                        ; $43ae: $9e
	ld   h, l                                        ; $43af: $65
	sub  c                                           ; $43b0: $91
	add  a                                           ; $43b1: $87
	sbc  b                                           ; $43b2: $98
	adc  h                                           ; $43b3: $8c
	ld   h, a                                        ; $43b4: $67
	sbc  a                                           ; $43b5: $9f
	dec  c                                           ; $43b6: $0d
	ld   h, c                                        ; $43b7: $61
	and  c                                           ; $43b8: $a1
	ld   a, b                                        ; $43b9: $78
	inc  b                                           ; $43ba: $04
	ret  c                                           ; $43bb: $d8

	inc  b                                           ; $43bc: $04
	xor  h                                           ; $43bd: $ac
	ld   d, d                                        ; $43be: $52
	ld   h, c                                        ; $43bf: $61
	halt                                             ; $43c0: $76
	rst  $38                                         ; $43c1: $ff
	rst  $38                                         ; $43c2: $ff
	dec  c                                           ; $43c3: $0d
	nop                                              ; $43c4: $00
	ld   a, [bc]                                     ; $43c5: $0a
	inc  e                                           ; $43c6: $1c
	inc  bc                                          ; $43c7: $03
	ld   [bc], a                                     ; $43c8: $02
	ld   [bc], a                                     ; $43c9: $02
	dec  e                                           ; $43ca: $1d
	ld   b, b                                        ; $43cb: $40
	inc  de                                          ; $43cc: $13
	inc  bc                                          ; $43cd: $03
	inc  de                                          ; $43ce: $13
	ld   bc, $2902                                   ; $43cf: $01 $02 $29
	nop                                              ; $43d2: $00
	ld   bc, $d804                                   ; $43d3: $01 $04 $d8
	inc  b                                           ; $43d6: $04
	xor  h                                           ; $43d7: $ac
	ld   d, d                                        ; $43d8: $52
	ld   h, c                                        ; $43d9: $61
	halt                                             ; $43da: $76
	ld   sp, hl                                      ; $43db: $f9
	dec  c                                           ; $43dc: $0d
	ld   l, e                                        ; $43dd: $6b
	and  c                                           ; $43de: $a1
	ld   a, b                                        ; $43df: $78
	ld   a, c                                        ; $43e0: $79
	ld   e, b                                        ; $43e1: $58
	ld   e, c                                        ; $43e2: $59
	ld   h, l                                        ; $43e3: $65
	ld   e, c                                        ; $43e4: $59
	ld   [hl], c                                     ; $43e5: $71
	ld   l, l                                        ; $43e6: $6d
	ld   sp, hl                                      ; $43e7: $f9
	dec  c                                           ; $43e8: $0d
	nop                                              ; $43e9: $00
	ld   a, [bc]                                     ; $43ea: $0a
	rrca                                             ; $43eb: $0f
	nop                                              ; $43ec: $00
	ld   bc, $5201                                   ; $43ed: $01 $01 $52
	sbc  [hl]                                        ; $43f0: $9e
	ld   d, d                                        ; $43f1: $52
	ld   d, [hl]                                     ; $43f2: $56
	rst  $38                                         ; $43f3: $ff
	rst  $38                                         ; $43f4: $ff
	dec  c                                           ; $43f5: $0d
	sub  d                                           ; $43f6: $92
	ld   a, l                                        ; $43f7: $7d
	sbc  b                                           ; $43f8: $98
	inc  bc                                          ; $43f9: $03
	xor  c                                           ; $43fa: $a9
	ld   a, c                                        ; $43fb: $79
	sub  b                                           ; $43fc: $90
	ld   [bc], a                                     ; $43fd: $02
	sbc  l                                           ; $43fe: $9d
	ld   d, d                                        ; $43ff: $52
	adc  h                                           ; $4400: $8c
	ld   l, c                                        ; $4401: $69
	and  c                                           ; $4402: $a1
	sbc  a                                           ; $4403: $9f
	dec  c                                           ; $4404: $0d
	nop                                              ; $4405: $00
	ld   a, [bc]                                     ; $4406: $0a
	inc  e                                           ; $4407: $1c
	inc  bc                                          ; $4408: $03
	ld   [bc], a                                     ; $4409: $02
	ld   [bc], a                                     ; $440a: $02
	ld   bc, $546b                                   ; $440b: $01 $6b $54
	ld   [bc], a                                     ; $440e: $02
	add  b                                           ; $440f: $80
	ld   d, d                                        ; $4410: $52
	ld   l, l                                        ; $4411: $6d
	ld   d, d                                        ; $4412: $52
	sub  b                                           ; $4413: $90
	ld   a, h                                        ; $4414: $7c
	ld   a, e                                        ; $4415: $7b
	sbc  a                                           ; $4416: $9f
	dec  c                                           ; $4417: $0d
	nop                                              ; $4418: $00
	ld   a, [bc]                                     ; $4419: $0a
	dec  b                                           ; $441a: $05
	ld   b, b                                        ; $441b: $40
	ld   c, d                                        ; $441c: $4a
	ld   [bc], a                                     ; $441d: $02
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	dec  b                                           ; $4420: $05
	ld   b, b                                        ; $4421: $40
	ld   d, b                                        ; $4422: $50
	ld   bc, $0002                                   ; $4423: $01 $02 $00
	ld   bc, $5063                                   ; $4426: $01 $63 $50
	sbc  [hl]                                        ; $4429: $9e
	ld   [bc], a                                     ; $442a: $02
	sub  l                                           ; $442b: $95
	ld   [bc], a                                     ; $442c: $02
	sub  e                                           ; $442d: $93
	sbc  b                                           ; $442e: $98
	and  b                                           ; $442f: $a0
	ld   [bc], a                                     ; $4430: $02
	ei                                               ; $4431: $fb
	ld   e, a                                        ; $4432: $5f
	ld   [hl], h                                     ; $4433: $74
	sbc  a                                           ; $4434: $9f
	dec  c                                           ; $4435: $0d
	nop                                              ; $4436: $00
	ld   a, [bc]                                     ; $4437: $0a
	nop                                              ; $4438: $00
	nop                                              ; $4439: $00
	ld   c, $66                                      ; $443a: $0e $66
	rrca                                             ; $443c: $0f
	inc  b                                           ; $443d: $04
	jr   nc, @+$04                                   ; $443e: $30 $02

	ld   bc, $915b                                   ; $4440: $01 $5b $91
	ei                                               ; $4443: $fb
	ld   [hl], c                                     ; $4444: $71
	ld   a, [$000d]                                  ; $4445: $fa $0d $00
	ld   a, [bc]                                     ; $4448: $0a
	rrca                                             ; $4449: $0f
	nop                                              ; $444a: $00
	ld   bc, $0101                                   ; $444b: $01 $01 $01
	inc  bc                                          ; $444e: $03
	and  e                                           ; $444f: $a3
	and  l                                           ; $4450: $a5
	db   $ec                                         ; $4451: $ec
	cp   d                                           ; $4452: $ba
	ld   a, h                                        ; $4453: $7c
	inc  b                                           ; $4454: $04
	ld   l, h                                        ; $4455: $6c
	inc  b                                           ; $4456: $04
	db   $db                                         ; $4457: $db
	ld   l, [hl]                                     ; $4458: $6e
	ld   a, [$0401]                                  ; $4459: $fa $01 $04
	dec  c                                           ; $445c: $0d
	nop                                              ; $445d: $00
	ld   a, [bc]                                     ; $445e: $0a
	add  hl, de                                      ; $445f: $19
	dec  b                                           ; $4460: $05
	inc  bc                                          ; $4461: $03
	cp   b                                           ; $4462: $b8
	push hl                                          ; $4463: $e5
	pop  af                                          ; $4464: $f1
	ei                                               ; $4465: $fb
	inc  bc                                          ; $4466: $03
	ld   c, l                                        ; $4467: $4d
	add  [hl]                                        ; $4468: $86
	halt                                             ; $4469: $76
	add  c                                           ; $446a: $81
	ld   h, c                                        ; $446b: $61
	adc  [hl]                                        ; $446c: $8e
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00
	ld   l, e                                        ; $446f: $6b
	ld   [hl], c                                     ; $4470: $71
	halt                                             ; $4471: $76
	ld   a, h                                        ; $4472: $7c
	ld   l, h                                        ; $4473: $6c
	ld   d, d                                        ; $4474: $52
	ld   [hl], h                                     ; $4475: $74
	adc  l                                           ; $4476: $8d
	sbc  c                                           ; $4477: $99
	nop                                              ; $4478: $00
	ld   bc, $688c                                   ; $4479: $01 $8c $68
	inc  bc                                          ; $447c: $03
	and  l                                           ; $447d: $a5
	and  b                                           ; $447e: $a0
	ld   e, c                                        ; $447f: $59
	ld   e, a                                        ; $4480: $5f
	ld   [hl], h                                     ; $4481: $74
	adc  l                                           ; $4482: $8d
	sbc  c                                           ; $4483: $99
	nop                                              ; $4484: $00
	ld   [bc], a                                     ; $4485: $02
	rlca                                             ; $4486: $07
	adc  [hl]                                        ; $4487: $8e
	nop                                              ; $4488: $00
	ld   [bc], a                                     ; $4489: $02
	inc  bc                                          ; $448a: $03
	ld   bc, $2000                                   ; $448b: $01 $00 $20
	nop                                              ; $448e: $00
	rlca                                             ; $448f: $07
	jr   nz, jr_05f_4493                             ; $4490: $20 $01

	ld   [bc], a                                     ; $4492: $02

jr_05f_4493:
	inc  bc                                          ; $4493: $03
	ld   bc, $2001                                   ; $4494: $01 $01 $20
	nop                                              ; $4497: $00
	rlca                                             ; $4498: $07
	ld   l, c                                        ; $4499: $69
	ld   bc, $0302                                   ; $449a: $01 $02 $03
	ld   bc, $2002                                   ; $449d: $01 $02 $20
	nop                                              ; $44a0: $00
	ld   b, $6a                                      ; $44a1: $06 $6a
	nop                                              ; $44a3: $00
	rrca                                             ; $44a4: $0f
	nop                                              ; $44a5: $00
	ld   bc, $0101                                   ; $44a6: $01 $01 $01
	inc  bc                                          ; $44a9: $03
	inc  b                                           ; $44aa: $04
	ld   c, c                                        ; $44ab: $49
	sub  b                                           ; $44ac: $90
	inc  bc                                          ; $44ad: $03
	add  b                                           ; $44ae: $80
	dec  b                                           ; $44af: $05
	db   $10                                         ; $44b0: $10
	ld   a, b                                        ; $44b1: $78
	ld   d, d                                        ; $44b2: $52
	rst  $38                                         ; $44b3: $ff
	rst  $38                                         ; $44b4: $ff
	dec  c                                           ; $44b5: $0d
	db   $10                                         ; $44b6: $10
	inc  b                                           ; $44b7: $04
	sub  l                                           ; $44b8: $95
	ld   [bc], a                                     ; $44b9: $02
	ld   hl, $9079                                   ; $44ba: $21 $79 $90
	ld   [hl], a                                     ; $44bd: $77
	sbc  e                                           ; $44be: $9b
	ld   d, h                                        ; $44bf: $54
	rst  $38                                         ; $44c0: $ff
	rst  $38                                         ; $44c1: $ff
	ld   bc, $0d04                                   ; $44c2: $01 $04 $0d
	nop                                              ; $44c5: $00
	ld   a, [bc]                                     ; $44c6: $0a
	nop                                              ; $44c7: $00
	rrca                                             ; $44c8: $0f
	nop                                              ; $44c9: $00
	ld   bc, $650e                                   ; $44ca: $01 $0e $65
	ld   bc, $a5a3                                   ; $44cd: $01 $a3 $a5
	db   $ec                                         ; $44d0: $ec
	cp   d                                           ; $44d1: $ba
	ld   a, [$6e0d]                                  ; $44d2: $fa $0d $6e
	ld   d, d                                        ; $44d5: $52
	ld   h, [hl]                                     ; $44d6: $66
	sub  l                                           ; $44d7: $95
	ld   d, h                                        ; $44d8: $54
	add  h                                           ; $44d9: $84
	ld   e, c                                        ; $44da: $59
	ld   a, [$000d]                                  ; $44db: $fa $0d $00
	ld   a, [bc]                                     ; $44de: $0a
	rrca                                             ; $44df: $0f
	inc  b                                           ; $44e0: $04
	jr   nc, jr_05f_44e4                             ; $44e1: $30 $01

	ld   e, e                                        ; $44e3: $5b

jr_05f_44e4:
	sub  c                                           ; $44e4: $91
	ei                                               ; $44e5: $fb
	ld   [hl], c                                     ; $44e6: $71
	ld   a, [$000d]                                  ; $44e7: $fa $0d $00
	ld   a, [bc]                                     ; $44ea: $0a
	inc  c                                           ; $44eb: $0c
	ld   b, $0f                                      ; $44ec: $06 $0f
	nop                                              ; $44ee: $00
	ld   bc, $6501                                   ; $44ef: $01 $01 $65
	sbc  [hl]                                        ; $44f2: $9e
	ld   h, l                                        ; $44f3: $65
	add  c                                           ; $44f4: $81
	sbc  d                                           ; $44f5: $9a
	sbc  c                                           ; $44f6: $99
	db   $fc                                         ; $44f7: $fc
	ld   a, [$000d]                                  ; $44f8: $fa $0d $00
	ld   a, [bc]                                     ; $44fb: $0a
	ld   sp, $2040                                   ; $44fc: $31 $40 $20
	inc  bc                                          ; $44ff: $03
	jr   nz, jr_05f_4503                             ; $4500: $20 $01

	ld   [hl-], a                                    ; $4502: $32

jr_05f_4503:
	add  hl, hl                                      ; $4503: $29
	nop                                              ; $4504: $00
	ld   b, $ce                                      ; $4505: $06 $ce
	nop                                              ; $4507: $00
	inc  hl                                          ; $4508: $23
	ld   h, l                                        ; $4509: $65
	inc  e                                           ; $450a: $1c
	inc  b                                           ; $450b: $04
	inc  bc                                          ; $450c: $03
	inc  bc                                          ; $450d: $03
	dec  e                                           ; $450e: $1d
	ld   b, b                                        ; $450f: $40
	inc  d                                           ; $4510: $14
	inc  bc                                          ; $4511: $03
	inc  d                                           ; $4512: $14
	ld   bc, $2802                                   ; $4513: $01 $02 $28
	nop                                              ; $4516: $00
	ld   bc, $8f62                                   ; $4517: $01 $62 $8f
	and  c                                           ; $451a: $a1
	ld   a, e                                        ; $451b: $7b
	sbc  [hl]                                        ; $451c: $9e
	ld   l, a                                        ; $451d: $6f
	ld   d, d                                        ; $451e: $52
	ld   [bc], a                                     ; $451f: $02
	inc  de                                          ; $4520: $13
	ld   l, a                                        ; $4521: $6f
	sub  c                                           ; $4522: $91
	and  c                                           ; $4523: $a1
	rst  $38                                         ; $4524: $ff
	rst  $38                                         ; $4525: $ff
	dec  c                                           ; $4526: $0d
	and  e                                           ; $4527: $a3
	and  l                                           ; $4528: $a5
	db   $ec                                         ; $4529: $ec
	cp   d                                           ; $452a: $ba
	ld   a, h                                        ; $452b: $7c
	ld   h, c                                        ; $452c: $61
	halt                                             ; $452d: $76
	ld   h, l                                        ; $452e: $65
	and  c                                           ; $452f: $a1
	ld   a, a                                        ; $4530: $7f
	ld   d, d                                        ; $4531: $52
	ld   h, l                                        ; $4532: $65
	ld   [hl], h                                     ; $4533: $74
	dec  c                                           ; $4534: $0d
	halt                                             ; $4535: $76
	add  c                                           ; $4536: $81
	ld   h, c                                        ; $4537: $61
	and  c                                           ; $4538: $a1
	ld   [hl], l                                     ; $4539: $75
	ld   e, e                                        ; $453a: $5b
	ld   [hl], h                                     ; $453b: $74
	ld   e, l                                        ; $453c: $5d
	sbc  d                                           ; $453d: $9a
	ld   l, l                                        ; $453e: $6d
	ld   a, h                                        ; $453f: $7c
	ld   a, c                                        ; $4540: $79
	sbc  a                                           ; $4541: $9f
	dec  c                                           ; $4542: $0d
	nop                                              ; $4543: $00
	ld   a, [bc]                                     ; $4544: $0a
	ld   bc, $8658                                   ; $4545: $01 $58 $86
	sub  d                                           ; $4548: $92
	ld   [hl], l                                     ; $4549: $75
	sbc  [hl]                                        ; $454a: $9e
	sub  h                                           ; $454b: $94
	ld   [hl], c                                     ; $454c: $71
	ld   e, l                                        ; $454d: $5d
	sbc  b                                           ; $454e: $98
	dec  c                                           ; $454f: $0d
	sub  d                                           ; $4550: $92
	ld   h, a                                        ; $4551: $67
	and  c                                           ; $4552: $a1
	ld   [hl], l                                     ; $4553: $75
	ld   a, e                                        ; $4554: $7b
	sbc  a                                           ; $4555: $9f
	dec  c                                           ; $4556: $0d
	nop                                              ; $4557: $00
	ld   a, [bc]                                     ; $4558: $0a
	nop                                              ; $4559: $00
	ld   d, $07                                      ; $455a: $16 $07
	rrca                                             ; $455c: $0f
	nop                                              ; $455d: $00
	ld   bc, $0101                                   ; $455e: $01 $01 $01
	inc  bc                                          ; $4561: $03
	ld   l, c                                        ; $4562: $69
	ld   [hl], c                                     ; $4563: $71
	ld   e, c                                        ; $4564: $59
	ld   e, l                                        ; $4565: $5d
	ld   l, [hl]                                     ; $4566: $6e
	ld   e, c                                        ; $4567: $59
	sub  a                                           ; $4568: $97
	sbc  [hl]                                        ; $4569: $9e
	dec  c                                           ; $456a: $0d
	db   $10                                         ; $456b: $10
	ld   a, h                                        ; $456c: $7c
	ld   l, h                                        ; $456d: $6c
	ld   d, d                                        ; $456e: $52
	ld   [hl], h                                     ; $456f: $74
	ld   e, b                                        ; $4570: $58
	ld   h, c                                        ; $4571: $61
	ld   d, h                                        ; $4572: $54
	rst  $38                                         ; $4573: $ff
	rst  $38                                         ; $4574: $ff
	ld   bc, $0d04                                   ; $4575: $01 $04 $0d
	nop                                              ; $4578: $00
	ld   a, [bc]                                     ; $4579: $0a
	ld   bc, $0301                                   ; $457a: $01 $01 $03
	rst  $38                                         ; $457d: $ff
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	ld   bc, $0d04                                   ; $4581: $01 $04 $0d
	nop                                              ; $4584: $00
	ld   a, [bc]                                     ; $4585: $0a
	ld   bc, $0301                                   ; $4586: $01 $01 $03
	pop  de                                          ; $4589: $d1
	xor  $99                                         ; $458a: $ee $99
	inc  bc                                          ; $458c: $03
	ld   c, a                                        ; $458d: $4f
	ld   a, c                                        ; $458e: $79
	ld   [bc], a                                     ; $458f: $02
	inc  l                                           ; $4590: $2c
	ld   e, e                                        ; $4591: $5b
	inc  bc                                          ; $4592: $03
	ld   h, l                                        ; $4593: $65
	ld   h, b                                        ; $4594: $60
	sub  [hl]                                        ; $4595: $96
	ld   d, h                                        ; $4596: $54
	ld   bc, $0d04                                   ; $4597: $01 $04 $0d
	nop                                              ; $459a: $00
	ld   a, [bc]                                     ; $459b: $0a
	dec  b                                           ; $459c: $05
	add  b                                           ; $459d: $80
	ld   b, d                                        ; $459e: $42
	ld   bc, $0001                                   ; $459f: $01 $01 $00
	nop                                              ; $45a2: $00
	rrca                                             ; $45a3: $0f
	nop                                              ; $45a4: $00
	ld   bc, $5801                                   ; $45a5: $01 $01 $58
	ei                                               ; $45a8: $fb
	ld   d, d                                        ; $45a9: $52
	rst  $38                                         ; $45aa: $ff
	rst  $38                                         ; $45ab: $ff
	dec  c                                           ; $45ac: $0d
	ld   l, [hl]                                     ; $45ad: $6e
	ld   d, d                                        ; $45ae: $52
	ld   h, [hl]                                     ; $45af: $66
	sub  l                                           ; $45b0: $95
	ld   d, h                                        ; $45b1: $54
	add  h                                           ; $45b2: $84
	ld   e, c                                        ; $45b3: $59
	ei                                               ; $45b4: $fb
	ld   d, d                                        ; $45b5: $52
	ld   sp, hl                                      ; $45b6: $f9
	dec  c                                           ; $45b7: $0d
	nop                                              ; $45b8: $00
	ld   a, [bc]                                     ; $45b9: $0a
	rrca                                             ; $45ba: $0f
	inc  b                                           ; $45bb: $04
	ld   a, [hl+]                                    ; $45bc: $2a
	ld   bc, $a154                                   ; $45bd: $01 $54 $a1
	rst  $38                                         ; $45c0: $ff
	rst  $38                                         ; $45c1: $ff
	adc  h                                           ; $45c2: $8c
	ld   l, l                                        ; $45c3: $6d
	sbc  [hl]                                        ; $45c4: $9e
	dec  c                                           ; $45c5: $0d
	ld   e, b                                        ; $45c6: $58
	adc  l                                           ; $45c7: $8d
	ld   l, b                                        ; $45c8: $68
	halt                                             ; $45c9: $76
	sbc  [hl]                                        ; $45ca: $9e
	ld   e, b                                        ; $45cb: $58
	sub  h                                           ; $45cc: $94
	and  b                                           ; $45cd: $a0
	dec  c                                           ; $45ce: $0d
	adc  h                                           ; $45cf: $8c
	ld   l, a                                        ; $45d0: $6f
	ld   e, d                                        ; $45d1: $5a
	ld   [hl], c                                     ; $45d2: $71
	ld   l, a                                        ; $45d3: $6f
	sub  c                                           ; $45d4: $91
	ld   [hl], c                                     ; $45d5: $71
	ld   l, l                                        ; $45d6: $6d
	ld   a, h                                        ; $45d7: $7c
	rst  $38                                         ; $45d8: $ff
	rst  $38                                         ; $45d9: $ff
	dec  c                                           ; $45da: $0d
	nop                                              ; $45db: $00
	ld   a, [bc]                                     ; $45dc: $0a
	ld   bc, $5490                                   ; $45dd: $01 $90 $54
	ld   l, [hl]                                     ; $45e0: $6e
	ld   d, d                                        ; $45e1: $52
	ld   h, [hl]                                     ; $45e2: $66
	sub  l                                           ; $45e3: $95
	ld   d, h                                        ; $45e4: $54
	add  h                                           ; $45e5: $84
	ld   l, [hl]                                     ; $45e6: $6e
	ld   e, c                                        ; $45e7: $59
	sub  a                                           ; $45e8: $97
	sbc  [hl]                                        ; $45e9: $9e
	dec  c                                           ; $45ea: $0d
	ld   l, e                                        ; $45eb: $6b
	halt                                             ; $45ec: $76
	add  [hl]                                        ; $45ed: $86
	ld   [hl], l                                     ; $45ee: $75
	ld   [hl], h                                     ; $45ef: $74
	ld   [hl], h                                     ; $45f0: $74
	ld   a, e                                        ; $45f1: $7b
	sbc  [hl]                                        ; $45f2: $9e
	dec  c                                           ; $45f3: $0d
	ld   l, a                                        ; $45f4: $6f
	ld   d, d                                        ; $45f5: $52
	ld   [bc], a                                     ; $45f6: $02
	inc  de                                          ; $45f7: $13
	ld   l, a                                        ; $45f8: $6f
	sub  c                                           ; $45f9: $91
	and  c                                           ; $45fa: $a1
	sbc  a                                           ; $45fb: $9f
	dec  c                                           ; $45fc: $0d
	nop                                              ; $45fd: $00
	ld   a, [bc]                                     ; $45fe: $0a
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	rrca                                             ; $4601: $0f
	nop                                              ; $4602: $00
	ld   bc, $1a0e                                   ; $4603: $01 $0e $1a
	ld   [bc], a                                     ; $4606: $02
	ld   bc, $0301                                   ; $4607: $01 $01 $03
	and  c                                           ; $460a: $a1
	ld   sp, hl                                      ; $460b: $f9
	db   $10                                         ; $460c: $10
	inc  bc                                          ; $460d: $03
	xor  c                                           ; $460e: $a9
	ld   e, c                                        ; $460f: $59
	ld   d, d                                        ; $4610: $52
	sbc  c                                           ; $4611: $99
	rst  $38                                         ; $4612: $ff
	rst  $38                                         ; $4613: $ff
	ld   bc, $0d04                                   ; $4614: $01 $04 $0d
	nop                                              ; $4617: $00
	ld   a, [bc]                                     ; $4618: $0a
	ld   d, $39                                      ; $4619: $16 $39
	ld   bc, $0301                                   ; $461b: $01 $01 $03
	ld   [bc], a                                     ; $461e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $461f: $cf
	dec  b                                           ; $4620: $05
	ld   a, [de]                                     ; $4621: $1a
	ld   h, e                                        ; $4622: $63
	and  c                                           ; $4623: $a1
	ld   e, d                                        ; $4624: $5a
	sbc  [hl]                                        ; $4625: $9e
	add  b                                           ; $4626: $80
	halt                                             ; $4627: $76
	sbc  b                                           ; $4628: $98
	ld   [hl], l                                     ; $4629: $75
	dec  c                                           ; $462a: $0d
	db   $10                                         ; $462b: $10
	ld   e, a                                        ; $462c: $5f
	ld   d, d                                        ; $462d: $52
	ld   h, c                                        ; $462e: $61
	ld   h, l                                        ; $462f: $65
	ld   [hl], h                                     ; $4630: $74
	sbc  c                                           ; $4631: $99
	and  c                                           ; $4632: $a1
	ld   l, [hl]                                     ; $4633: $6e
	rst  $38                                         ; $4634: $ff
	rst  $38                                         ; $4635: $ff
	ld   bc, $0d04                                   ; $4636: $01 $04 $0d
	nop                                              ; $4639: $00
	ld   a, [bc]                                     ; $463a: $0a
	dec  c                                           ; $463b: $0d
	nop                                              ; $463c: $00
	nop                                              ; $463d: $00
	rrca                                             ; $463e: $0f
	nop                                              ; $463f: $00
	ld   bc, $020c                                   ; $4640: $01 $0c $02
	ld   c, $1a                                      ; $4643: $0e $1a
	inc  e                                           ; $4645: $1c
	dec  b                                           ; $4646: $05
	nop                                              ; $4647: $00
	nop                                              ; $4648: $00
	ld   bc, $9e50                                   ; $4649: $01 $50 $9e
	ld   [$7d00], sp                                 ; $464c: $08 $00 $7d
	and  c                                           ; $464f: $a1
	sbc  a                                           ; $4650: $9f
	dec  c                                           ; $4651: $0d
	nop                                              ; $4652: $00
	ld   a, [bc]                                     ; $4653: $0a
	ld   bc, wRandomNumStruct                                   ; $4654: $01 $a7 $c2
	sbc  [hl]                                        ; $4657: $9e
	inc  b                                           ; $4658: $04
	adc  [hl]                                        ; $4659: $8e
	inc  b                                           ; $465a: $04
	inc  c                                           ; $465b: $0c
	sbc  [hl]                                        ; $465c: $9e
	inc  bc                                          ; $465d: $03
	ld   h, l                                        ; $465e: $65
	inc  bc                                          ; $465f: $03
	ld   l, e                                        ; $4660: $6b
	ld   e, l                                        ; $4661: $5d
	ld   a, b                                        ; $4662: $78
	ld   d, d                                        ; $4663: $52
	ld   h, e                                        ; $4664: $63
	ld   e, c                                        ; $4665: $59
	ld   d, d                                        ; $4666: $52
	dec  c                                           ; $4667: $0d
	adc  l                                           ; $4668: $8d
	and  c                                           ; $4669: $a1
	ld   a, b                                        ; $466a: $78
	ld   a, h                                        ; $466b: $7c
	inc  bc                                          ; $466c: $03
	ld   a, l                                        ; $466d: $7d
	add  b                                           ; $466e: $80
	ld   [hl], c                                     ; $466f: $71
	ld   a, a                                        ; $4670: $7f
	sub  a                                           ; $4671: $97
	and  c                                           ; $4672: $a1
	sub  [hl]                                        ; $4673: $96
	ld   d, h                                        ; $4674: $54
	ld   a, c                                        ; $4675: $79
	dec  c                                           ; $4676: $0d
	dec  b                                           ; $4677: $05
	add  hl, de                                      ; $4678: $19
	inc  bc                                          ; $4679: $03
	and  h                                           ; $467a: $a4
	ld   l, c                                        ; $467b: $69
	and  c                                           ; $467c: $a1
	halt                                             ; $467d: $76
	ld   d, b                                        ; $467e: $50
	ld   e, c                                        ; $467f: $59
	and  c                                           ; $4680: $a1
	ld   a, e                                        ; $4681: $7b
	and  c                                           ; $4682: $a1
	sbc  a                                           ; $4683: $9f
	dec  c                                           ; $4684: $0d
	nop                                              ; $4685: $00
	ld   a, [bc]                                     ; $4686: $0a
	add  hl, de                                      ; $4687: $19
	dec  b                                           ; $4688: $05
	ld   [bc], a                                     ; $4689: $02
	ld   [bc], a                                     ; $468a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $468b: $cf
	dec  b                                           ; $468c: $05
	ld   a, [de]                                     ; $468d: $1a
	ld   h, e                                        ; $468e: $63
	and  c                                           ; $468f: $a1
	ld   a, b                                        ; $4690: $78
	sub  a                                           ; $4691: $97
	inc  b                                           ; $4692: $04
	ld   c, $03                                      ; $4693: $0e $03
	sbc  l                                           ; $4695: $9d
	inc  b                                           ; $4696: $04
	and  [hl]                                        ; $4697: $a6
	nop                                              ; $4698: $00
	nop                                              ; $4699: $00
	ld   l, e                                        ; $469a: $6b
	ld   d, h                                        ; $469b: $54
	ld   [hl], l                                     ; $469c: $75
	ld   h, a                                        ; $469d: $67
	sub  [hl]                                        ; $469e: $96
	ld   a, e                                        ; $469f: $7b
	nop                                              ; $46a0: $00
	ld   bc, $b607                                   ; $46a1: $01 $07 $b6
	nop                                              ; $46a4: $00
	ld   [bc], a                                     ; $46a5: $02
	inc  bc                                          ; $46a6: $03
	ld   bc, $2000                                   ; $46a7: $01 $00 $20
	nop                                              ; $46aa: $00
	rlca                                             ; $46ab: $07
	cpl                                              ; $46ac: $2f
	ld   bc, $0302                                   ; $46ad: $01 $02 $03
	ld   bc, $2001                                   ; $46b0: $01 $01 $20
	nop                                              ; $46b3: $00
	ld   b, $95                                      ; $46b4: $06 $95
	ld   bc, $000f                                   ; $46b6: $01 $0f $00
	ld   bc, $0201                                   ; $46b9: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46bc: $cf
	dec  b                                           ; $46bd: $05
	ld   a, [de]                                     ; $46be: $1a
	ld   h, e                                        ; $46bf: $63
	and  c                                           ; $46c0: $a1
	ld   a, b                                        ; $46c1: $78
	sub  a                                           ; $46c2: $97
	inc  b                                           ; $46c3: $04
	ld   c, $03                                      ; $46c4: $0e $03
	sbc  l                                           ; $46c6: $9d
	inc  b                                           ; $46c7: $04
	and  [hl]                                        ; $46c8: $a6
	ld   [hl], l                                     ; $46c9: $75
	ld   h, a                                        ; $46ca: $67
	sub  [hl]                                        ; $46cb: $96
	sbc  a                                           ; $46cc: $9f
	dec  c                                           ; $46cd: $0d
	ld   [bc], a                                     ; $46ce: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46cf: $cf
	dec  b                                           ; $46d0: $05
	ld   a, [de]                                     ; $46d1: $1a
	ld   h, e                                        ; $46d2: $63
	and  c                                           ; $46d3: $a1
	ld   a, h                                        ; $46d4: $7c
	inc  b                                           ; $46d5: $04
	adc  [hl]                                        ; $46d6: $8e
	inc  b                                           ; $46d7: $04
	inc  c                                           ; $46d8: $0c
	sbc  [hl]                                        ; $46d9: $9e
	dec  c                                           ; $46da: $0d
	inc  b                                           ; $46db: $04
	ld   l, l                                        ; $46dc: $6d
	sbc  [hl]                                        ; $46dd: $9e
	dec  b                                           ; $46de: $05
	inc  de                                          ; $46df: $13
	ld   h, l                                        ; $46e0: $65
	adc  l                                           ; $46e1: $8d
	ld   a, c                                        ; $46e2: $79
	ld   h, l                                        ; $46e3: $65
	ld   [hl], h                                     ; $46e4: $74
	ld   d, d                                        ; $46e5: $52
	adc  h                                           ; $46e6: $8c
	ld   h, a                                        ; $46e7: $67
	sbc  a                                           ; $46e8: $9f
	dec  c                                           ; $46e9: $0d
	nop                                              ; $46ea: $00
	ld   a, [bc]                                     ; $46eb: $0a
	inc  e                                           ; $46ec: $1c
	dec  b                                           ; $46ed: $05
	inc  b                                           ; $46ee: $04
	inc  b                                           ; $46ef: $04
	dec  e                                           ; $46f0: $1d
	ld   b, b                                        ; $46f1: $40
	dec  d                                           ; $46f2: $15
	inc  bc                                          ; $46f3: $03
	dec  d                                           ; $46f4: $15
	ld   bc, $2803                                   ; $46f5: $01 $03 $28
	nop                                              ; $46f8: $00
	ld   bc, $8686                                   ; $46f9: $01 $86 $86
	add  [hl]                                        ; $46fc: $86
	rst  $38                                         ; $46fd: $ff
	rst  $38                                         ; $46fe: $ff
	sbc  a                                           ; $46ff: $9f
	dec  c                                           ; $4700: $0d
	ld   e, b                                        ; $4701: $58
	ld   e, b                                        ; $4702: $58
	ld   e, e                                        ; $4703: $5b
	ld   a, c                                        ; $4704: $79
	sbc  a                                           ; $4705: $9f
	ld   [$7d00], sp                                 ; $4706: $08 $00 $7d
	and  c                                           ; $4709: $a1
	sbc  a                                           ; $470a: $9f
	dec  c                                           ; $470b: $0d
	and  a                                           ; $470c: $a7
	jp   nz, $a15a                                   ; $470d: $c2 $5a $a1

	ld   a, [hl]                                     ; $4710: $7e
	sbc  c                                           ; $4711: $99
	sbc  l                                           ; $4712: $9d
	sbc  a                                           ; $4713: $9f
	dec  c                                           ; $4714: $0d
	nop                                              ; $4715: $00
	ld   a, [bc]                                     ; $4716: $0a
	ld   bc, $7889                                   ; $4717: $01 $89 $78
	sbc  [hl]                                        ; $471a: $9e
	and  a                                           ; $471b: $a7
	jp   nz, Jump_05f_5490                           ; $471c: $c2 $90 $54

	inc  bc                                          ; $471f: $03
	ld   l, h                                        ; $4720: $6c
	ld   h, l                                        ; $4721: $65
	dec  b                                           ; $4722: $05
	add  hl, de                                      ; $4723: $19
	inc  bc                                          ; $4724: $03
	and  h                                           ; $4725: $a4
	dec  c                                           ; $4726: $0d
	ld   h, a                                        ; $4727: $67
	sbc  c                                           ; $4728: $99
	ld   e, c                                        ; $4729: $59
	sub  a                                           ; $472a: $97
	sbc  a                                           ; $472b: $9f
	dec  c                                           ; $472c: $0d
	nop                                              ; $472d: $00
	ld   a, [bc]                                     ; $472e: $0a
	nop                                              ; $472f: $00
	rrca                                             ; $4730: $0f
	nop                                              ; $4731: $00
	ld   bc, $6b01                                   ; $4732: $01 $01 $6b
	ld   d, h                                        ; $4735: $54
	ld   [hl], l                                     ; $4736: $75
	ld   h, a                                        ; $4737: $67
	sub  [hl]                                        ; $4738: $96
	ld   a, e                                        ; $4739: $7b
	rst  $38                                         ; $473a: $ff
	rst  $38                                         ; $473b: $ff
	sbc  a                                           ; $473c: $9f
	dec  c                                           ; $473d: $0d
	inc  b                                           ; $473e: $04
	adc  [hl]                                        ; $473f: $8e
	inc  b                                           ; $4740: $04
	inc  c                                           ; $4741: $0c
	ld   a, h                                        ; $4742: $7c
	inc  bc                                          ; $4743: $03
	ld   h, l                                        ; $4744: $65
	ld   a, h                                        ; $4745: $7c
	ld   [bc], a                                     ; $4746: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4747: $cf
	dec  b                                           ; $4748: $05
	ld   a, [de]                                     ; $4749: $1a
	ld   h, e                                        ; $474a: $63
	and  c                                           ; $474b: $a1
	ld   [hl], c                                     ; $474c: $71
	ld   [hl], h                                     ; $474d: $74
	dec  c                                           ; $474e: $0d
	ld   a, b                                        ; $474f: $78
	and  c                                           ; $4750: $a1
	ld   e, c                                        ; $4751: $59
	ld   l, l                                        ; $4752: $6d
	sub  [hl]                                        ; $4753: $96
	sbc  b                                           ; $4754: $98
	ld   a, b                                        ; $4755: $78
	ld   d, d                                        ; $4756: $52
	ld   [hl], l                                     ; $4757: $75
	ld   h, a                                        ; $4758: $67
	sub  [hl]                                        ; $4759: $96
	ld   a, e                                        ; $475a: $7b
	sbc  a                                           ; $475b: $9f
	dec  c                                           ; $475c: $0d
	nop                                              ; $475d: $00
	ld   a, [bc]                                     ; $475e: $0a
	inc  e                                           ; $475f: $1c
	dec  b                                           ; $4760: $05
	ld   b, $06                                      ; $4761: $06 $06
	dec  e                                           ; $4763: $1d
	ld   b, b                                        ; $4764: $40
	dec  d                                           ; $4765: $15
	inc  bc                                          ; $4766: $03
	dec  d                                           ; $4767: $15
	ld   bc, $2902                                   ; $4768: $01 $02 $29
	nop                                              ; $476b: $00
	ld   bc, $546b                                   ; $476c: $01 $6b $54
	ld   e, c                                        ; $476f: $59
	rst  $38                                         ; $4770: $ff
	rst  $38                                         ; $4771: $ff
	sbc  [hl]                                        ; $4772: $9e
	ld   [hl], l                                     ; $4773: $75
	sub  b                                           ; $4774: $90
	rst  $38                                         ; $4775: $ff
	rst  $38                                         ; $4776: $ff
	dec  c                                           ; $4777: $0d
	inc  bc                                          ; $4778: $03
	and  [hl]                                        ; $4779: $a6
	inc  bc                                          ; $477a: $03
	add  d                                           ; $477b: $82
	ld   a, h                                        ; $477c: $7c
	ld   [$7d00], sp                                 ; $477d: $08 $00 $7d
	and  c                                           ; $4780: $a1
	ld   a, c                                        ; $4781: $79
	dec  c                                           ; $4782: $0d
	ld   [bc], a                                     ; $4783: $02
	sbc  l                                           ; $4784: $9d
	sbc  l                                           ; $4785: $9d
	sbc  d                                           ; $4786: $9a
	sbc  c                                           ; $4787: $99
	halt                                             ; $4788: $76
	sbc  [hl]                                        ; $4789: $9e
	dec  b                                           ; $478a: $05
	ld   [de], a                                     ; $478b: $12
	ld   l, a                                        ; $478c: $6f
	ld   [bc], a                                     ; $478d: $02
	ld   b, b                                        ; $478e: $40
	adc  [hl]                                        ; $478f: $8e
	sbc  l                                           ; $4790: $9d
	rst  $38                                         ; $4791: $ff
	rst  $38                                         ; $4792: $ff
	dec  c                                           ; $4793: $0d
	nop                                              ; $4794: $00
	ld   a, [bc]                                     ; $4795: $0a
	inc  e                                           ; $4796: $1c
	dec  b                                           ; $4797: $05
	nop                                              ; $4798: $00
	nop                                              ; $4799: $00
	ld   bc, $7889                                   ; $479a: $01 $89 $78
	sbc  [hl]                                        ; $479d: $9e
	and  a                                           ; $479e: $a7
	jp   nz, Jump_05f_5490                           ; $479f: $c2 $90 $54

	inc  bc                                          ; $47a2: $03
	ld   l, h                                        ; $47a3: $6c
	ld   h, l                                        ; $47a4: $65
	dec  b                                           ; $47a5: $05
	add  hl, de                                      ; $47a6: $19
	inc  bc                                          ; $47a7: $03
	and  h                                           ; $47a8: $a4
	dec  c                                           ; $47a9: $0d
	ld   h, a                                        ; $47aa: $67
	sbc  c                                           ; $47ab: $99
	ld   e, c                                        ; $47ac: $59
	sub  a                                           ; $47ad: $97
	sbc  a                                           ; $47ae: $9f
	dec  c                                           ; $47af: $0d
	nop                                              ; $47b0: $00
	ld   a, [bc]                                     ; $47b1: $0a
	dec  c                                           ; $47b2: $0d
	nop                                              ; $47b3: $00
	nop                                              ; $47b4: $00
	rrca                                             ; $47b5: $0f
	nop                                              ; $47b6: $00
	ld   bc, $1e09                                   ; $47b7: $01 $09 $1e
	nop                                              ; $47ba: $00
	nop                                              ; $47bb: $00
	ld   c, $44                                      ; $47bc: $0e $44
	inc  e                                           ; $47be: $1c
	ld   [bc], a                                     ; $47bf: $02
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	ld   [bc], a                                     ; $47c2: $02
	ld   bc, $0008                                   ; $47c3: $01 $08 $00
	ld   h, e                                        ; $47c6: $63
	and  c                                           ; $47c7: $a1
	sbc  a                                           ; $47c8: $9f
	dec  c                                           ; $47c9: $0d
	ld   [bc], a                                     ; $47ca: $02
	sub  l                                           ; $47cb: $95
	ld   [bc], a                                     ; $47cc: $02
	sub  e                                           ; $47cd: $93
	sbc  b                                           ; $47ce: $98
	ld   h, d                                        ; $47cf: $62
	ld   [bc], a                                     ; $47d0: $02
	sub  h                                           ; $47d1: $94
	dec  b                                           ; $47d2: $05
	rrca                                             ; $47d3: $0f
	ld   h, e                                        ; $47d4: $63
	adc  h                                           ; $47d5: $8c
	sbc  a                                           ; $47d6: $9f
	dec  c                                           ; $47d7: $0d
	nop                                              ; $47d8: $00
	ld   a, [bc]                                     ; $47d9: $0a
	ld   bc, $956f                                   ; $47da: $01 $6f $95
	ld   [hl], c                                     ; $47dd: $71
	halt                                             ; $47de: $76
	sbc  l                                           ; $47df: $9d
	ld   l, l                                        ; $47e0: $6d
	ld   e, l                                        ; $47e1: $5d
	ld   h, l                                        ; $47e2: $65
	ld   a, h                                        ; $47e3: $7c
	inc  b                                           ; $47e4: $04
	sub  l                                           ; $47e5: $95
	ld   [bc], a                                     ; $47e6: $02
	ld   hl, $0d75                                   ; $47e7: $21 $75 $0d
	ld   e, b                                        ; $47ea: $58
	inc  bc                                          ; $47eb: $03
	jp   $9075                                       ; $47ec: $c3 $75 $90


	ld   [bc], a                                     ; $47ef: $02
	rlca                                             ; $47f0: $07
	and  c                                           ; $47f1: $a1
	ld   [hl], l                                     ; $47f2: $75
	ld   d, d                                        ; $47f3: $52
	ld   e, e                                        ; $47f4: $5b
	adc  h                                           ; $47f5: $8c
	ld   l, c                                        ; $47f6: $69
	and  c                                           ; $47f7: $a1
	ld   sp, hl                                      ; $47f8: $f9
	dec  c                                           ; $47f9: $0d
	nop                                              ; $47fa: $00
	ld   a, [bc]                                     ; $47fb: $0a
	add  hl, de                                      ; $47fc: $19
	dec  b                                           ; $47fd: $05
	ld   [bc], a                                     ; $47fe: $02
	ld   a, l                                        ; $47ff: $7d
	ld   d, d                                        ; $4800: $52
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	ld   d, d                                        ; $4803: $52
	ld   d, d                                        ; $4804: $52
	ld   d, [hl]                                     ; $4805: $56
	nop                                              ; $4806: $00
	ld   bc, $da07                                   ; $4807: $01 $07 $da
	nop                                              ; $480a: $00
	ld   [bc], a                                     ; $480b: $02
	inc  bc                                          ; $480c: $03
	ld   bc, $2000                                   ; $480d: $01 $00 $20
	nop                                              ; $4810: $00
	rlca                                             ; $4811: $07
	ld   h, c                                        ; $4812: $61
	nop                                              ; $4813: $00
	ld   [bc], a                                     ; $4814: $02
	inc  bc                                          ; $4815: $03
	ld   bc, $2001                                   ; $4816: $01 $01 $20
	nop                                              ; $4819: $00
	ld   b, $a2                                      ; $481a: $06 $a2
	nop                                              ; $481c: $00
	rrca                                             ; $481d: $0f
	nop                                              ; $481e: $00
	ld   bc, $6701                                   ; $481f: $01 $01 $67
	adc  l                                           ; $4822: $8d
	adc  h                                           ; $4823: $8c
	ld   l, c                                        ; $4824: $69
	and  c                                           ; $4825: $a1
	sbc  a                                           ; $4826: $9f
	dec  c                                           ; $4827: $0d
	ld   [bc], a                                     ; $4828: $02
	and  l                                           ; $4829: $a5
	ld   l, a                                        ; $482a: $6f
	sub  l                                           ; $482b: $95
	ld   [hl], c                                     ; $482c: $71
	halt                                             ; $482d: $76
	inc  bc                                          ; $482e: $03
	ld   l, a                                        ; $482f: $6f
	ld   [bc], a                                     ; $4830: $02
	xor  c                                           ; $4831: $a9
	ld   e, d                                        ; $4832: $5a
	ld   a, b                                        ; $4833: $78
	ld   e, l                                        ; $4834: $5d
	ld   [hl], h                                     ; $4835: $74
	rst  $38                                         ; $4836: $ff
	dec  c                                           ; $4837: $0d
	nop                                              ; $4838: $00
	ld   a, [bc]                                     ; $4839: $0a
	inc  e                                           ; $483a: $1c
	ld   [bc], a                                     ; $483b: $02
	dec  b                                           ; $483c: $05
	dec  b                                           ; $483d: $05
	dec  e                                           ; $483e: $1d
	ld   b, b                                        ; $483f: $40
	ld   [de], a                                     ; $4840: $12
	inc  bc                                          ; $4841: $03
	ld   [de], a                                     ; $4842: $12
	ld   bc, $2901                                   ; $4843: $01 $01 $29
	nop                                              ; $4846: $00
	ld   bc, $546b                                   ; $4847: $01 $6b $54
	rst  $38                                         ; $484a: $ff
	rst  $38                                         ; $484b: $ff
	dec  c                                           ; $484c: $0d
	ld   a, b                                        ; $484d: $78
	sub  a                                           ; $484e: $97
	ld   h, l                                        ; $484f: $65
	ld   e, c                                        ; $4850: $59
	ld   l, l                                        ; $4851: $6d
	ld   a, b                                        ; $4852: $78
	ld   d, d                                        ; $4853: $52
	ld   [hl], l                                     ; $4854: $75
	ld   h, a                                        ; $4855: $67
	sbc  l                                           ; $4856: $9d
	ld   a, e                                        ; $4857: $7b
	rst  $38                                         ; $4858: $ff
	rst  $38                                         ; $4859: $ff
	dec  c                                           ; $485a: $0d
	nop                                              ; $485b: $00
	ld   a, [bc]                                     ; $485c: $0a
	nop                                              ; $485d: $00
	inc  e                                           ; $485e: $1c
	ld   [bc], a                                     ; $485f: $02
	ld   [bc], a                                     ; $4860: $02
	ld   [bc], a                                     ; $4861: $02
	dec  e                                           ; $4862: $1d
	ld   b, b                                        ; $4863: $40
	ld   [de], a                                     ; $4864: $12
	inc  bc                                          ; $4865: $03
	ld   [de], a                                     ; $4866: $12
	ld   bc, $2903                                   ; $4867: $01 $03 $29
	nop                                              ; $486a: $00
	ld   bc, $9704                                   ; $486b: $01 $04 $97
	ld   [bc], a                                     ; $486e: $02
	jp   Jump_05f_505a                               ; $486f: $c3 $5a $50


	sbc  b                                           ; $4872: $98
	adc  h                                           ; $4873: $8c
	ld   l, c                                        ; $4874: $69
	and  c                                           ; $4875: $a1
	sbc  l                                           ; $4876: $9d
	ld   a, e                                        ; $4877: $7b
	sbc  a                                           ; $4878: $9f
	dec  c                                           ; $4879: $0d
	sub  b                                           ; $487a: $90
	ld   d, h                                        ; $487b: $54
	ld   e, a                                        ; $487c: $5f
	ld   [hl], c                                     ; $487d: $71
	ld   h, c                                        ; $487e: $61
	ld   d, h                                        ; $487f: $54
	ld   [hl], l                                     ; $4880: $75
	ld   h, a                                        ; $4881: $67
	sbc  l                                           ; $4882: $9d
	sbc  a                                           ; $4883: $9f
	dec  c                                           ; $4884: $0d
	ld   [bc], a                                     ; $4885: $02
	sub  l                                           ; $4886: $95
	ld   [bc], a                                     ; $4887: $02
	sub  e                                           ; $4888: $93
	sbc  b                                           ; $4889: $98
	and  b                                           ; $488a: $a0
	ld   [hl], d                                     ; $488b: $72
	ld   [hl], e                                     ; $488c: $73
	ld   e, a                                        ; $488d: $5f
	ld   a, b                                        ; $488e: $78
	ld   h, e                                        ; $488f: $63
	ld   d, d                                        ; $4890: $52
	sbc  a                                           ; $4891: $9f
	dec  c                                           ; $4892: $0d
	nop                                              ; $4893: $00
	ld   a, [bc]                                     ; $4894: $0a
	nop                                              ; $4895: $00
	rrca                                             ; $4896: $0f
	nop                                              ; $4897: $00
	ld   bc, $5123                                   ; $4898: $01 $23 $51
	inc  e                                           ; $489b: $1c
	ld   [bc], a                                     ; $489c: $02
	ld   bc, $0101                                   ; $489d: $01 $01 $01
	ld   a, l                                        ; $48a0: $7d
	ld   d, d                                        ; $48a1: $52
	sbc  [hl]                                        ; $48a2: $9e
	ld   [hl], a                                     ; $48a3: $77
	ld   d, h                                        ; $48a4: $54
	ld   l, h                                        ; $48a5: $6c
	sbc  a                                           ; $48a6: $9f
	dec  c                                           ; $48a7: $0d
	ld   h, [hl]                                     ; $48a8: $66
	sub  c                                           ; $48a9: $91
	ld   d, b                                        ; $48aa: $50
	sbc  [hl]                                        ; $48ab: $9e
	ld   [bc], a                                     ; $48ac: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ad: $cf
	inc  bc                                          ; $48ae: $03
	jp   $02a0                                       ; $48af: $c3 $a0 $02


	rlca                                             ; $48b2: $07
	adc  l                                           ; $48b3: $8d
	ld   a, b                                        ; $48b4: $78
	ld   e, d                                        ; $48b5: $5a
	sub  a                                           ; $48b6: $97
	dec  c                                           ; $48b7: $0d
	or   b                                           ; $48b8: $b0
	and  l                                           ; $48b9: $a5
	cp   e                                           ; $48ba: $bb
	ld   [hl], l                                     ; $48bb: $75
	sub  b                                           ; $48bc: $90
	ld   h, l                                        ; $48bd: $65
	adc  h                                           ; $48be: $8c
	ld   h, l                                        ; $48bf: $65
	sub  l                                           ; $48c0: $95
	ld   d, h                                        ; $48c1: $54
	ld   e, c                                        ; $48c2: $59
	ld   sp, hl                                      ; $48c3: $f9
	dec  c                                           ; $48c4: $0d
	nop                                              ; $48c5: $00
	ld   a, [bc]                                     ; $48c6: $0a
	inc  e                                           ; $48c7: $1c
	ld   [bc], a                                     ; $48c8: $02
	nop                                              ; $48c9: $00
	nop                                              ; $48ca: $00
	ld   bc, $7d75                                   ; $48cb: $01 $75 $7d
	sbc  [hl]                                        ; $48ce: $9e
	inc  bc                                          ; $48cf: $03
	pop  de                                          ; $48d0: $d1
	ld   [bc], a                                     ; $48d1: $02
	jr   nz, jr_05f_48d8                             ; $48d2: $20 $04

	cp   a                                           ; $48d4: $bf
	sbc  a                                           ; $48d5: $9f
	dec  c                                           ; $48d6: $0d
	ld   [bc], a                                     ; $48d7: $02

jr_05f_48d8:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48d8: $cf
	inc  bc                                          ; $48d9: $03
	jp   $047c                                       ; $48da: $c3 $7c $04


	xor  b                                           ; $48dd: $a8
	dec  b                                           ; $48de: $05
	ld   l, $04                                      ; $48df: $2e $04
	jr   nz, @-$70                                   ; $48e1: $20 $8e

	sub  a                                           ; $48e3: $97
	ld   h, l                                        ; $48e4: $65
	inc  bc                                          ; $48e5: $03
	ld   l, a                                        ; $48e6: $6f
	ld   [bc], a                                     ; $48e7: $02
	xor  c                                           ; $48e8: $a9
	ld   a, l                                        ; $48e9: $7d
	ld   sp, hl                                      ; $48ea: $f9
	dec  c                                           ; $48eb: $0d
	nop                                              ; $48ec: $00
	ld   a, [bc]                                     ; $48ed: $0a
	add  hl, de                                      ; $48ee: $19
	dec  b                                           ; $48ef: $05
	inc  bc                                          ; $48f0: $03
	inc  d                                           ; $48f1: $14
	inc  b                                           ; $48f2: $04
	sbc  [hl]                                        ; $48f3: $9e
	nop                                              ; $48f4: $00
	nop                                              ; $48f5: $00
	ld   d, $04                                      ; $48f6: $16 $04
	sbc  [hl]                                        ; $48f8: $9e
	nop                                              ; $48f9: $00
	ld   bc, $0413                                   ; $48fa: $01 $13 $04
	sbc  [hl]                                        ; $48fd: $9e
	nop                                              ; $48fe: $00
	ld   [bc], a                                     ; $48ff: $02
	rlca                                             ; $4900: $07
	ld   h, d                                        ; $4901: $62
	ld   bc, $0302                                   ; $4902: $01 $02 $03
	ld   bc, $2000                                   ; $4905: $01 $00 $20
	nop                                              ; $4908: $00
	rlca                                             ; $4909: $07
	sbc  e                                           ; $490a: $9b
	ld   bc, $0302                                   ; $490b: $01 $02 $03
	ld   bc, $2001                                   ; $490e: $01 $01 $20
	nop                                              ; $4911: $00
	rlca                                             ; $4912: $07
	call c, $0201                                    ; $4913: $dc $01 $02
	inc  bc                                          ; $4916: $03
	ld   bc, $2002                                   ; $4917: $01 $02 $20
	nop                                              ; $491a: $00
	ld   b, $1d                                      ; $491b: $06 $1d
	ld   [bc], a                                     ; $491d: $02
	rrca                                             ; $491e: $0f
	nop                                              ; $491f: $00
	ld   bc, $1401                                   ; $4920: $01 $01 $14
	inc  b                                           ; $4923: $04
	sbc  [hl]                                        ; $4924: $9e
	ld   [hl], l                                     ; $4925: $75
	ld   h, a                                        ; $4926: $67
	sbc  a                                           ; $4927: $9f
	dec  c                                           ; $4928: $0d
	nop                                              ; $4929: $00
	ld   a, [bc]                                     ; $492a: $0a
	inc  e                                           ; $492b: $1c
	ld   [bc], a                                     ; $492c: $02
	ld   bc, $1401                                   ; $492d: $01 $01 $14
	dec  de                                          ; $4930: $1b
	ld   bc, $0301                                   ; $4931: $01 $01 $03
	ld   c, d                                        ; $4934: $4a
	ld   [bc], a                                     ; $4935: $02
	or   h                                           ; $4936: $b4
	ld   [hl], l                                     ; $4937: $75
	ld   h, a                                        ; $4938: $67
	sbc  l                                           ; $4939: $9d
	sbc  a                                           ; $493a: $9f
	dec  c                                           ; $493b: $0d
	ld   [hl], l                                     ; $493c: $75
	ld   a, l                                        ; $493d: $7d
	sbc  [hl]                                        ; $493e: $9e
	inc  bc                                          ; $493f: $03
	ld   l, b                                        ; $4940: $68
	ld   d, d                                        ; $4941: $52
	ld   e, e                                        ; $4942: $5b
	adc  h                                           ; $4943: $8c
	ld   h, a                                        ; $4944: $67
	sbc  l                                           ; $4945: $9d
	sub  [hl]                                        ; $4946: $96
	sbc  a                                           ; $4947: $9f
	dec  c                                           ; $4948: $0d
	nop                                              ; $4949: $00
	ld   a, [bc]                                     ; $494a: $0a
	dec  b                                           ; $494b: $05
	ld   b, b                                        ; $494c: $40
	rst  $38                                         ; $494d: $ff
	inc  bc                                          ; $494e: $03
	rst  $38                                         ; $494f: $ff
	ld   bc, $2801                                   ; $4950: $01 $01 $28
	nop                                              ; $4953: $00
	ld   b, $45                                      ; $4954: $06 $45
	ld   [bc], a                                     ; $4956: $02
	rrca                                             ; $4957: $0f
	nop                                              ; $4958: $00
	ld   bc, $1601                                   ; $4959: $01 $01 $16
	inc  b                                           ; $495c: $04
	sbc  [hl]                                        ; $495d: $9e
	ld   l, [hl]                                     ; $495e: $6e
	ld   [hl], c                                     ; $495f: $71
	ld   l, l                                        ; $4960: $6d
	ld   e, c                                        ; $4961: $59
	ld   a, b                                        ; $4962: $78
	rst  $38                                         ; $4963: $ff
	rst  $38                                         ; $4964: $ff
	dec  c                                           ; $4965: $0d
	nop                                              ; $4966: $00
	ld   a, [bc]                                     ; $4967: $0a
	inc  e                                           ; $4968: $1c
	ld   [bc], a                                     ; $4969: $02
	rlca                                             ; $496a: $07
	rlca                                             ; $496b: $07
	inc  d                                           ; $496c: $14
	inc  e                                           ; $496d: $1c
	ld   bc, $6f01                                   ; $496e: $01 $01 $6f
	ld   e, d                                        ; $4971: $5a
	ld   d, d                                        ; $4972: $52
	adc  h                                           ; $4973: $8c
	ld   h, a                                        ; $4974: $67
	sbc  l                                           ; $4975: $9d
	sbc  a                                           ; $4976: $9f
	dec  c                                           ; $4977: $0d
	inc  bc                                          ; $4978: $03
	ld   c, d                                        ; $4979: $4a
	ld   [bc], a                                     ; $497a: $02
	or   h                                           ; $497b: $b4
	ld   a, l                                        ; $497c: $7d
	inc  d                                           ; $497d: $14
	inc  b                                           ; $497e: $04
	sbc  [hl]                                        ; $497f: $9e
	ld   [hl], l                                     ; $4980: $75
	ld   h, a                                        ; $4981: $67
	sbc  l                                           ; $4982: $9d
	sub  [hl]                                        ; $4983: $96
	sbc  a                                           ; $4984: $9f
	dec  c                                           ; $4985: $0d
	ld   [hl], l                                     ; $4986: $75
	ld   a, l                                        ; $4987: $7d
	sbc  [hl]                                        ; $4988: $9e
	inc  bc                                          ; $4989: $03
	ld   l, b                                        ; $498a: $68
	ld   d, d                                        ; $498b: $52
	ld   e, e                                        ; $498c: $5b
	adc  h                                           ; $498d: $8c
	ld   h, a                                        ; $498e: $67
	sbc  l                                           ; $498f: $9d
	sub  [hl]                                        ; $4990: $96
	sbc  a                                           ; $4991: $9f
	dec  c                                           ; $4992: $0d
	nop                                              ; $4993: $00
	ld   a, [bc]                                     ; $4994: $0a
	ld   b, $45                                      ; $4995: $06 $45
	ld   [bc], a                                     ; $4997: $02
	rrca                                             ; $4998: $0f
	nop                                              ; $4999: $00
	ld   bc, $1301                                   ; $499a: $01 $01 $13
	inc  b                                           ; $499d: $04
	sbc  [hl]                                        ; $499e: $9e
	ld   l, [hl]                                     ; $499f: $6e
	ld   [hl], c                                     ; $49a0: $71
	ld   l, l                                        ; $49a1: $6d
	ld   e, c                                        ; $49a2: $59
	ld   a, b                                        ; $49a3: $78
	rst  $38                                         ; $49a4: $ff
	rst  $38                                         ; $49a5: $ff
	dec  c                                           ; $49a6: $0d
	nop                                              ; $49a7: $00
	ld   a, [bc]                                     ; $49a8: $0a
	inc  e                                           ; $49a9: $1c
	ld   [bc], a                                     ; $49aa: $02
	rlca                                             ; $49ab: $07
	rlca                                             ; $49ac: $07
	inc  d                                           ; $49ad: $14
	inc  e                                           ; $49ae: $1c
	ld   bc, $6f01                                   ; $49af: $01 $01 $6f
	ld   e, d                                        ; $49b2: $5a
	ld   d, d                                        ; $49b3: $52
	adc  h                                           ; $49b4: $8c
	ld   h, a                                        ; $49b5: $67
	sbc  l                                           ; $49b6: $9d
	sbc  a                                           ; $49b7: $9f
	dec  c                                           ; $49b8: $0d
	inc  bc                                          ; $49b9: $03
	ld   c, d                                        ; $49ba: $4a
	ld   [bc], a                                     ; $49bb: $02
	or   h                                           ; $49bc: $b4
	ld   a, l                                        ; $49bd: $7d
	inc  d                                           ; $49be: $14
	inc  b                                           ; $49bf: $04
	sbc  [hl]                                        ; $49c0: $9e
	ld   [hl], l                                     ; $49c1: $75
	ld   h, a                                        ; $49c2: $67
	sbc  l                                           ; $49c3: $9d
	sub  [hl]                                        ; $49c4: $96
	sbc  a                                           ; $49c5: $9f
	dec  c                                           ; $49c6: $0d
	ld   [hl], l                                     ; $49c7: $75
	ld   a, l                                        ; $49c8: $7d
	sbc  [hl]                                        ; $49c9: $9e
	inc  bc                                          ; $49ca: $03
	ld   l, b                                        ; $49cb: $68
	ld   d, d                                        ; $49cc: $52
	ld   e, e                                        ; $49cd: $5b
	adc  h                                           ; $49ce: $8c
	ld   h, a                                        ; $49cf: $67
	sbc  l                                           ; $49d0: $9d
	sub  [hl]                                        ; $49d1: $96
	sbc  a                                           ; $49d2: $9f
	dec  c                                           ; $49d3: $0d
	nop                                              ; $49d4: $00
	ld   a, [bc]                                     ; $49d5: $0a
	ld   b, $45                                      ; $49d6: $06 $45
	ld   [bc], a                                     ; $49d8: $02
	inc  e                                           ; $49d9: $1c
	ld   [bc], a                                     ; $49da: $02
	rlca                                             ; $49db: $07
	rlca                                             ; $49dc: $07
	inc  d                                           ; $49dd: $14
	inc  e                                           ; $49de: $1c
	ld   bc, $0301                                   ; $49df: $01 $01 $03
	ld   c, d                                        ; $49e2: $4a
	ld   [bc], a                                     ; $49e3: $02
	or   h                                           ; $49e4: $b4
	ld   a, l                                        ; $49e5: $7d
	inc  d                                           ; $49e6: $14
	inc  b                                           ; $49e7: $04
	sbc  [hl]                                        ; $49e8: $9e
	ld   [hl], l                                     ; $49e9: $75
	ld   h, a                                        ; $49ea: $67
	sbc  l                                           ; $49eb: $9d
	sub  [hl]                                        ; $49ec: $96
	sbc  a                                           ; $49ed: $9f
	dec  c                                           ; $49ee: $0d
	ld   [hl], l                                     ; $49ef: $75
	ld   a, l                                        ; $49f0: $7d
	sbc  [hl]                                        ; $49f1: $9e
	inc  bc                                          ; $49f2: $03
	ld   l, b                                        ; $49f3: $68
	ld   d, d                                        ; $49f4: $52
	ld   e, e                                        ; $49f5: $5b
	adc  h                                           ; $49f6: $8c
	ld   h, a                                        ; $49f7: $67
	sbc  l                                           ; $49f8: $9d
	sub  [hl]                                        ; $49f9: $96
	sbc  a                                           ; $49fa: $9f
	dec  c                                           ; $49fb: $0d
	nop                                              ; $49fc: $00
	ld   a, [bc]                                     ; $49fd: $0a
	ld   b, $45                                      ; $49fe: $06 $45
	ld   [bc], a                                     ; $4a00: $02
	inc  e                                           ; $4a01: $1c
	ld   [bc], a                                     ; $4a02: $02
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	ld   bc, $d103                                   ; $4a05: $01 $03 $d1
	inc  de                                          ; $4a08: $13
	inc  b                                           ; $4a09: $04
	cp   a                                           ; $4a0a: $bf
	ld   [hl], l                                     ; $4a0b: $75
	ld   h, a                                        ; $4a0c: $67
	sbc  l                                           ; $4a0d: $9d
	sub  [hl]                                        ; $4a0e: $96
	sbc  a                                           ; $4a0f: $9f
	dec  c                                           ; $4a10: $0d
	inc  bc                                          ; $4a11: $03
	ld   l, b                                        ; $4a12: $68
	ld   a, h                                        ; $4a13: $7c
	inc  b                                           ; $4a14: $04
	dec  bc                                          ; $4a15: $0b
	ld   [hl], l                                     ; $4a16: $75
	ld   [bc], a                                     ; $4a17: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a18: $cf
	inc  bc                                          ; $4a19: $03
	jp   $8f7c                                       ; $4a1a: $c3 $7c $8f


	ld   d, d                                        ; $4a1d: $52
	ld   e, d                                        ; $4a1e: $5a
	sub  a                                           ; $4a1f: $97
	dec  c                                           ; $4a20: $0d
	ld   a, l                                        ; $4a21: $7d
	ld   [hl], a                                     ; $4a22: $77
	sbc  d                                           ; $4a23: $9a
	ld   [hl], l                                     ; $4a24: $75
	ld   h, l                                        ; $4a25: $65
	sub  l                                           ; $4a26: $95
	ld   d, h                                        ; $4a27: $54
	ld   e, c                                        ; $4a28: $59
	ld   sp, hl                                      ; $4a29: $f9
	dec  c                                           ; $4a2a: $0d
	nop                                              ; $4a2b: $00
	ld   a, [bc]                                     ; $4a2c: $0a
	add  hl, de                                      ; $4a2d: $19
	dec  b                                           ; $4a2e: $05
	inc  bc                                          ; $4a2f: $03
	pop  bc                                          ; $4a30: $c1
	ei                                               ; $4a31: $fb
	cp   c                                           ; $4a32: $b9
	db   $ec                                         ; $4a33: $ec
	push af                                          ; $4a34: $f5
	nop                                              ; $4a35: $00
	nop                                              ; $4a36: $00
	ld   e, h                                        ; $4a37: $5c
	sub  l                                           ; $4a38: $95
	ld   e, l                                        ; $4a39: $5d
	sbc  e                                           ; $4a3a: $9b
	nop                                              ; $4a3b: $00
	ld   bc, $ecae                                   ; $4a3c: $01 $ae $ec
	rst  JumpTable                                         ; $4a3f: $df
	push af                                          ; $4a40: $f5
	cp   c                                           ; $4a41: $b9
	push hl                                          ; $4a42: $e5
	rst  $28                                         ; $4a43: $ef
	nop                                              ; $4a44: $00
	ld   [bc], a                                     ; $4a45: $02
	rlca                                             ; $4a46: $07
	xor  b                                           ; $4a47: $a8
	ld   [bc], a                                     ; $4a48: $02
	ld   [bc], a                                     ; $4a49: $02
	inc  bc                                          ; $4a4a: $03
	ld   bc, $2000                                   ; $4a4b: $01 $00 $20
	nop                                              ; $4a4e: $00
	rlca                                             ; $4a4f: $07
	sub  $02                                         ; $4a50: $d6 $02
	ld   [bc], a                                     ; $4a52: $02
	inc  bc                                          ; $4a53: $03
	ld   bc, $2001                                   ; $4a54: $01 $01 $20
	nop                                              ; $4a57: $00
	rlca                                             ; $4a58: $07
	ld   c, $03                                      ; $4a59: $0e $03
	ld   [bc], a                                     ; $4a5b: $02
	inc  bc                                          ; $4a5c: $03
	ld   bc, $2002                                   ; $4a5d: $01 $02 $20
	nop                                              ; $4a60: $00
	ld   b, $4a                                      ; $4a61: $06 $4a
	inc  bc                                          ; $4a63: $03
	rrca                                             ; $4a64: $0f
	nop                                              ; $4a65: $00
	ld   bc, $c101                                   ; $4a66: $01 $01 $c1
	ei                                               ; $4a69: $fb
	cp   c                                           ; $4a6a: $b9
	db   $ec                                         ; $4a6b: $ec
	push af                                          ; $4a6c: $f5
	ld   [hl], l                                     ; $4a6d: $75
	ld   h, a                                        ; $4a6e: $67
	sbc  a                                           ; $4a6f: $9f
	dec  c                                           ; $4a70: $0d
	nop                                              ; $4a71: $00
	ld   a, [bc]                                     ; $4a72: $0a
	inc  e                                           ; $4a73: $1c
	ld   [bc], a                                     ; $4a74: $02
	ld   bc, $1401                                   ; $4a75: $01 $01 $14
	dec  de                                          ; $4a78: $1b
	ld   bc, $0301                                   ; $4a79: $01 $01 $03
	ld   c, d                                        ; $4a7c: $4a
	ld   [bc], a                                     ; $4a7d: $02
	or   h                                           ; $4a7e: $b4
	ld   [hl], l                                     ; $4a7f: $75
	ld   h, a                                        ; $4a80: $67
	sbc  l                                           ; $4a81: $9d
	sbc  a                                           ; $4a82: $9f
	dec  c                                           ; $4a83: $0d
	nop                                              ; $4a84: $00
	ld   a, [bc]                                     ; $4a85: $0a
	dec  b                                           ; $4a86: $05
	ld   b, b                                        ; $4a87: $40
	rst  $38                                         ; $4a88: $ff
	inc  bc                                          ; $4a89: $03
	rst  $38                                         ; $4a8a: $ff
	ld   bc, $2801                                   ; $4a8b: $01 $01 $28
	nop                                              ; $4a8e: $00
	ld   b, $66                                      ; $4a8f: $06 $66
	inc  bc                                          ; $4a91: $03
	rrca                                             ; $4a92: $0f
	nop                                              ; $4a93: $00
	ld   bc, $5c01                                   ; $4a94: $01 $01 $5c
	sub  l                                           ; $4a97: $95
	ld   e, l                                        ; $4a98: $5d
	sbc  e                                           ; $4a99: $9b
	rst  $38                                         ; $4a9a: $ff
	ld   l, [hl]                                     ; $4a9b: $6e
	ld   [hl], c                                     ; $4a9c: $71
	ld   l, l                                        ; $4a9d: $6d
	ld   e, c                                        ; $4a9e: $59
	ld   a, b                                        ; $4a9f: $78
	rst  $38                                         ; $4aa0: $ff
	rst  $38                                         ; $4aa1: $ff
	dec  c                                           ; $4aa2: $0d
	nop                                              ; $4aa3: $00
	ld   a, [bc]                                     ; $4aa4: $0a
	inc  e                                           ; $4aa5: $1c
	ld   [bc], a                                     ; $4aa6: $02
	rlca                                             ; $4aa7: $07
	rlca                                             ; $4aa8: $07
	inc  d                                           ; $4aa9: $14
	inc  e                                           ; $4aaa: $1c
	ld   bc, $6f01                                   ; $4aab: $01 $01 $6f
	ld   e, d                                        ; $4aae: $5a
	ld   d, d                                        ; $4aaf: $52
	adc  h                                           ; $4ab0: $8c
	ld   h, a                                        ; $4ab1: $67
	sbc  l                                           ; $4ab2: $9d
	sbc  a                                           ; $4ab3: $9f
	dec  c                                           ; $4ab4: $0d
	inc  bc                                          ; $4ab5: $03
	ld   c, d                                        ; $4ab6: $4a
	ld   [bc], a                                     ; $4ab7: $02
	or   h                                           ; $4ab8: $b4
	ld   a, l                                        ; $4ab9: $7d
	pop  bc                                          ; $4aba: $c1
	ei                                               ; $4abb: $fb
	cp   c                                           ; $4abc: $b9
	db   $ec                                         ; $4abd: $ec
	push af                                          ; $4abe: $f5
	ld   [hl], l                                     ; $4abf: $75
	ld   h, a                                        ; $4ac0: $67
	sbc  l                                           ; $4ac1: $9d
	sub  [hl]                                        ; $4ac2: $96
	sbc  a                                           ; $4ac3: $9f
	dec  c                                           ; $4ac4: $0d
	nop                                              ; $4ac5: $00
	ld   a, [bc]                                     ; $4ac6: $0a
	ld   b, $66                                      ; $4ac7: $06 $66
	inc  bc                                          ; $4ac9: $03
	rrca                                             ; $4aca: $0f
	nop                                              ; $4acb: $00
	ld   bc, $ae01                                   ; $4acc: $01 $01 $ae
	db   $ec                                         ; $4acf: $ec
	rst  JumpTable                                         ; $4ad0: $df
	push af                                          ; $4ad1: $f5
	cp   c                                           ; $4ad2: $b9
	push hl                                          ; $4ad3: $e5
	rst  $28                                         ; $4ad4: $ef
	rst  $38                                         ; $4ad5: $ff
	dec  c                                           ; $4ad6: $0d
	ld   l, [hl]                                     ; $4ad7: $6e
	ld   [hl], c                                     ; $4ad8: $71
	ld   l, l                                        ; $4ad9: $6d
	ld   e, c                                        ; $4ada: $59
	ld   a, b                                        ; $4adb: $78
	rst  $38                                         ; $4adc: $ff
	rst  $38                                         ; $4add: $ff
	dec  c                                           ; $4ade: $0d
	nop                                              ; $4adf: $00
	ld   a, [bc]                                     ; $4ae0: $0a
	inc  e                                           ; $4ae1: $1c
	ld   [bc], a                                     ; $4ae2: $02
	rlca                                             ; $4ae3: $07
	rlca                                             ; $4ae4: $07
	inc  d                                           ; $4ae5: $14
	inc  e                                           ; $4ae6: $1c
	ld   bc, $6f01                                   ; $4ae7: $01 $01 $6f
	ld   e, d                                        ; $4aea: $5a
	ld   d, d                                        ; $4aeb: $52
	adc  h                                           ; $4aec: $8c
	ld   h, a                                        ; $4aed: $67
	sbc  l                                           ; $4aee: $9d
	sbc  a                                           ; $4aef: $9f
	dec  c                                           ; $4af0: $0d
	inc  bc                                          ; $4af1: $03
	ld   c, d                                        ; $4af2: $4a
	ld   [bc], a                                     ; $4af3: $02
	or   h                                           ; $4af4: $b4
	ld   a, l                                        ; $4af5: $7d
	pop  bc                                          ; $4af6: $c1
	ei                                               ; $4af7: $fb
	cp   c                                           ; $4af8: $b9
	db   $ec                                         ; $4af9: $ec
	push af                                          ; $4afa: $f5
	ld   [hl], l                                     ; $4afb: $75
	ld   h, a                                        ; $4afc: $67
	sbc  l                                           ; $4afd: $9d
	sub  [hl]                                        ; $4afe: $96
	sbc  a                                           ; $4aff: $9f
	dec  c                                           ; $4b00: $0d
	nop                                              ; $4b01: $00
	ld   a, [bc]                                     ; $4b02: $0a
	ld   b, $66                                      ; $4b03: $06 $66
	inc  bc                                          ; $4b05: $03
	inc  e                                           ; $4b06: $1c
	ld   [bc], a                                     ; $4b07: $02
	rlca                                             ; $4b08: $07
	rlca                                             ; $4b09: $07
	inc  d                                           ; $4b0a: $14
	inc  e                                           ; $4b0b: $1c
	ld   bc, $0301                                   ; $4b0c: $01 $01 $03
	ld   c, d                                        ; $4b0f: $4a
	ld   [bc], a                                     ; $4b10: $02
	or   h                                           ; $4b11: $b4
	ld   a, l                                        ; $4b12: $7d
	pop  bc                                          ; $4b13: $c1
	ei                                               ; $4b14: $fb
	cp   c                                           ; $4b15: $b9
	db   $ec                                         ; $4b16: $ec
	push af                                          ; $4b17: $f5
	ld   [hl], l                                     ; $4b18: $75
	ld   h, a                                        ; $4b19: $67
	sbc  l                                           ; $4b1a: $9d
	sbc  a                                           ; $4b1b: $9f
	dec  c                                           ; $4b1c: $0d
	nop                                              ; $4b1d: $00
	ld   a, [bc]                                     ; $4b1e: $0a
	ld   b, $66                                      ; $4b1f: $06 $66
	inc  bc                                          ; $4b21: $03
	inc  e                                           ; $4b22: $1c
	ld   [bc], a                                     ; $4b23: $02
	nop                                              ; $4b24: $00
	nop                                              ; $4b25: $00
	ld   bc, $7d75                                   ; $4b26: $01 $75 $7d
	sbc  [hl]                                        ; $4b29: $9e
	inc  bc                                          ; $4b2a: $03
	ld   l, c                                        ; $4b2b: $69
	ld   [bc], a                                     ; $4b2c: $02
	xor  d                                           ; $4b2d: $aa
	ld   a, h                                        ; $4b2e: $7c
	inc  b                                           ; $4b2f: $04
	cp   a                                           ; $4b30: $bf
	inc  b                                           ; $4b31: $04
	dec  d                                           ; $4b32: $15
	ld   [hl], l                                     ; $4b33: $75
	ld   h, a                                        ; $4b34: $67
	sbc  l                                           ; $4b35: $9d
	sub  [hl]                                        ; $4b36: $96
	sbc  a                                           ; $4b37: $9f
	dec  c                                           ; $4b38: $0d
	ld   [bc], a                                     ; $4b39: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b3a: $cf
	inc  bc                                          ; $4b3b: $03
	jp   $047c                                       ; $4b3c: $c3 $7c $04


	jp   nc, $02a0                                   ; $4b3f: $d2 $a0 $02

	inc  l                                           ; $4b42: $2c
	ld   e, e                                        ; $4b43: $5b
	dec  b                                           ; $4b44: $05
	ld   d, $74                                      ; $4b45: $16 $74
	sbc  c                                           ; $4b47: $99
	inc  b                                           ; $4b48: $04
	sub  c                                           ; $4b49: $91
	ld   [hl], c                                     ; $4b4a: $71
	ld   a, a                                        ; $4b4b: $7f
	dec  c                                           ; $4b4c: $0d
	ld   a, l                                        ; $4b4d: $7d
	sbc  [hl]                                        ; $4b4e: $9e
	ld   a, b                                        ; $4b4f: $78
	and  c                                           ; $4b50: $a1
	ld   [hl], l                                     ; $4b51: $75
	ld   h, l                                        ; $4b52: $65
	sub  l                                           ; $4b53: $95
	ld   d, h                                        ; $4b54: $54
	ld   e, c                                        ; $4b55: $59
	ld   sp, hl                                      ; $4b56: $f9
	dec  c                                           ; $4b57: $0d
	nop                                              ; $4b58: $00
	ld   a, [bc]                                     ; $4b59: $0a
	add  hl, de                                      ; $4b5a: $19
	dec  b                                           ; $4b5b: $05
	inc  bc                                          ; $4b5c: $03
	ret  nc                                          ; $4b5d: $d0

	ei                                               ; $4b5e: $fb
	rst  $10                                         ; $4b5f: $d7
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	ret  nc                                          ; $4b62: $d0

	cp   d                                           ; $4b63: $ba
	ld   a, h                                        ; $4b64: $7c
	inc  b                                           ; $4b65: $04
	sub  c                                           ; $4b66: $91
	nop                                              ; $4b67: $00
	ld   bc, $6f58                                   ; $4b68: $01 $58 $6f
	inc  b                                           ; $4b6b: $04
	sub  c                                           ; $4b6c: $91
	nop                                              ; $4b6d: $00
	ld   [bc], a                                     ; $4b6e: $02
	rlca                                             ; $4b6f: $07
	pop  de                                          ; $4b70: $d1
	inc  bc                                          ; $4b71: $03
	ld   [bc], a                                     ; $4b72: $02
	inc  bc                                          ; $4b73: $03
	ld   bc, $2000                                   ; $4b74: $01 $00 $20
	nop                                              ; $4b77: $00
	rlca                                             ; $4b78: $07
	dec  b                                           ; $4b79: $05
	inc  b                                           ; $4b7a: $04
	ld   [bc], a                                     ; $4b7b: $02
	inc  bc                                          ; $4b7c: $03
	ld   bc, $2001                                   ; $4b7d: $01 $01 $20
	nop                                              ; $4b80: $00
	rlca                                             ; $4b81: $07
	ld   c, b                                        ; $4b82: $48
	inc  b                                           ; $4b83: $04
	ld   [bc], a                                     ; $4b84: $02
	inc  bc                                          ; $4b85: $03
	ld   bc, $2002                                   ; $4b86: $01 $02 $20
	nop                                              ; $4b89: $00
	ld   b, $8a                                      ; $4b8a: $06 $8a
	inc  b                                           ; $4b8c: $04
	rrca                                             ; $4b8d: $0f
	nop                                              ; $4b8e: $00
	ld   bc, $d001                                   ; $4b8f: $01 $01 $d0
	ei                                               ; $4b92: $fb
	rst  $10                                         ; $4b93: $d7
	ld   [hl], l                                     ; $4b94: $75
	ld   h, a                                        ; $4b95: $67
	sbc  a                                           ; $4b96: $9f
	dec  c                                           ; $4b97: $0d
	nop                                              ; $4b98: $00
	ld   a, [bc]                                     ; $4b99: $0a
	inc  e                                           ; $4b9a: $1c
	ld   [bc], a                                     ; $4b9b: $02
	ld   bc, $1401                                   ; $4b9c: $01 $01 $14
	dec  de                                          ; $4b9f: $1b
	ld   bc, $0301                                   ; $4ba0: $01 $01 $03
	ld   c, d                                        ; $4ba3: $4a
	ld   [bc], a                                     ; $4ba4: $02
	or   h                                           ; $4ba5: $b4
	ld   [hl], l                                     ; $4ba6: $75
	ld   h, a                                        ; $4ba7: $67
	sbc  l                                           ; $4ba8: $9d
	sbc  a                                           ; $4ba9: $9f
	dec  c                                           ; $4baa: $0d
	nop                                              ; $4bab: $00
	ld   a, [bc]                                     ; $4bac: $0a
	dec  b                                           ; $4bad: $05
	ld   b, b                                        ; $4bae: $40
	rst  $38                                         ; $4baf: $ff
	inc  bc                                          ; $4bb0: $03
	rst  $38                                         ; $4bb1: $ff
	ld   bc, $2801                                   ; $4bb2: $01 $01 $28
	nop                                              ; $4bb5: $00
	dec  c                                           ; $4bb6: $0d
	nop                                              ; $4bb7: $00
	nop                                              ; $4bb8: $00
	rrca                                             ; $4bb9: $0f
	nop                                              ; $4bba: $00
	ld   bc, $0b0c                                   ; $4bbb: $01 $0c $0b
	ld   b, $ac                                      ; $4bbe: $06 $ac
	inc  b                                           ; $4bc0: $04
	rrca                                             ; $4bc1: $0f
	nop                                              ; $4bc2: $00
	ld   bc, $0401                                   ; $4bc3: $01 $01 $04
	sub  c                                           ; $4bc6: $91
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	ld   sp, hl                                      ; $4bc9: $f9
	dec  c                                           ; $4bca: $0d
	rst  $38                                         ; $4bcb: $ff
	ret  nc                                          ; $4bcc: $d0

	cp   d                                           ; $4bcd: $ba
	ld   a, h                                        ; $4bce: $7c
	inc  b                                           ; $4bcf: $04
	sub  c                                           ; $4bd0: $91
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	ld   [hl], l                                     ; $4bd3: $75
	ld   h, a                                        ; $4bd4: $67
	ld   e, c                                        ; $4bd5: $59
	ld   sp, hl                                      ; $4bd6: $f9
	dec  c                                           ; $4bd7: $0d
	nop                                              ; $4bd8: $00
	ld   a, [bc]                                     ; $4bd9: $0a
	inc  e                                           ; $4bda: $1c
	ld   [bc], a                                     ; $4bdb: $02
	rlca                                             ; $4bdc: $07
	rlca                                             ; $4bdd: $07
	inc  d                                           ; $4bde: $14
	inc  e                                           ; $4bdf: $1c
	ld   bc, $6f01                                   ; $4be0: $01 $01 $6f
	ld   e, d                                        ; $4be3: $5a
	ld   d, d                                        ; $4be4: $52
	adc  h                                           ; $4be5: $8c
	ld   h, a                                        ; $4be6: $67
	sbc  l                                           ; $4be7: $9d
	sbc  a                                           ; $4be8: $9f
	dec  c                                           ; $4be9: $0d
	inc  bc                                          ; $4bea: $03
	ld   c, d                                        ; $4beb: $4a
	ld   [bc], a                                     ; $4bec: $02
	or   h                                           ; $4bed: $b4
	ld   a, l                                        ; $4bee: $7d
	ret  nc                                          ; $4bef: $d0

	ei                                               ; $4bf0: $fb
	rst  $10                                         ; $4bf1: $d7
	ld   [hl], l                                     ; $4bf2: $75
	ld   h, a                                        ; $4bf3: $67
	sbc  l                                           ; $4bf4: $9d
	sbc  a                                           ; $4bf5: $9f
	dec  c                                           ; $4bf6: $0d
	nop                                              ; $4bf7: $00
	ld   a, [bc]                                     ; $4bf8: $0a
	dec  c                                           ; $4bf9: $0d
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	rrca                                             ; $4bfc: $0f
	nop                                              ; $4bfd: $00
	ld   bc, $0b0c                                   ; $4bfe: $01 $0c $0b
	ld   b, $ac                                      ; $4c01: $06 $ac
	inc  b                                           ; $4c03: $04
	rrca                                             ; $4c04: $0f
	nop                                              ; $4c05: $00
	ld   bc, $0401                                   ; $4c06: $01 $01 $04
	sub  c                                           ; $4c09: $91
	rst  $38                                         ; $4c0a: $ff
	rst  $38                                         ; $4c0b: $ff
	ld   sp, hl                                      ; $4c0c: $f9
	dec  c                                           ; $4c0d: $0d
	rst  $38                                         ; $4c0e: $ff
	ld   e, b                                        ; $4c0f: $58
	ld   l, a                                        ; $4c10: $6f
	inc  b                                           ; $4c11: $04
	sub  c                                           ; $4c12: $91
	rst  $38                                         ; $4c13: $ff
	rst  $38                                         ; $4c14: $ff
	ld   [hl], l                                     ; $4c15: $75
	ld   h, a                                        ; $4c16: $67
	ld   e, c                                        ; $4c17: $59
	ld   sp, hl                                      ; $4c18: $f9
	dec  c                                           ; $4c19: $0d
	nop                                              ; $4c1a: $00
	ld   a, [bc]                                     ; $4c1b: $0a
	inc  e                                           ; $4c1c: $1c
	ld   [bc], a                                     ; $4c1d: $02
	rlca                                             ; $4c1e: $07
	rlca                                             ; $4c1f: $07
	inc  d                                           ; $4c20: $14
	inc  e                                           ; $4c21: $1c
	ld   bc, $6f01                                   ; $4c22: $01 $01 $6f
	ld   e, d                                        ; $4c25: $5a
	ld   d, d                                        ; $4c26: $52
	adc  h                                           ; $4c27: $8c
	ld   h, a                                        ; $4c28: $67
	sbc  l                                           ; $4c29: $9d
	sbc  a                                           ; $4c2a: $9f
	dec  c                                           ; $4c2b: $0d
	inc  bc                                          ; $4c2c: $03
	ld   c, d                                        ; $4c2d: $4a
	ld   [bc], a                                     ; $4c2e: $02
	or   h                                           ; $4c2f: $b4
	ld   a, l                                        ; $4c30: $7d
	ret  nc                                          ; $4c31: $d0

	ei                                               ; $4c32: $fb
	rst  $10                                         ; $4c33: $d7
	ld   [hl], l                                     ; $4c34: $75
	ld   h, a                                        ; $4c35: $67
	sbc  l                                           ; $4c36: $9d
	sbc  a                                           ; $4c37: $9f
	dec  c                                           ; $4c38: $0d
	nop                                              ; $4c39: $00
	ld   a, [bc]                                     ; $4c3a: $0a
	dec  c                                           ; $4c3b: $0d
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	rrca                                             ; $4c3e: $0f
	nop                                              ; $4c3f: $00
	ld   bc, $0b0c                                   ; $4c40: $01 $0c $0b
	ld   b, $ac                                      ; $4c43: $06 $ac
	inc  b                                           ; $4c45: $04
	inc  e                                           ; $4c46: $1c
	ld   [bc], a                                     ; $4c47: $02
	rlca                                             ; $4c48: $07
	rlca                                             ; $4c49: $07
	inc  d                                           ; $4c4a: $14
	inc  e                                           ; $4c4b: $1c
	ld   bc, $0301                                   ; $4c4c: $01 $01 $03
	ld   c, d                                        ; $4c4f: $4a
	ld   [bc], a                                     ; $4c50: $02
	or   h                                           ; $4c51: $b4
	ld   a, l                                        ; $4c52: $7d
	ret  nc                                          ; $4c53: $d0

	ei                                               ; $4c54: $fb
	rst  $10                                         ; $4c55: $d7
	ld   [hl], l                                     ; $4c56: $75
	ld   h, a                                        ; $4c57: $67
	sbc  l                                           ; $4c58: $9d
	sbc  a                                           ; $4c59: $9f
	dec  c                                           ; $4c5a: $0d
	nop                                              ; $4c5b: $00
	ld   a, [bc]                                     ; $4c5c: $0a
	dec  c                                           ; $4c5d: $0d
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	rrca                                             ; $4c60: $0f
	nop                                              ; $4c61: $00
	ld   bc, $0b0c                                   ; $4c62: $01 $0c $0b
	ld   b, $ac                                      ; $4c65: $06 $ac
	inc  b                                           ; $4c67: $04
	rlca                                             ; $4c68: $07
	rst  ToBoot                                         ; $4c69: $c7
	inc  b                                           ; $4c6a: $04
	inc  bc                                          ; $4c6b: $03
	rst  $38                                         ; $4c6c: $ff
	ld   bc, $2003                                   ; $4c6d: $01 $03 $20
	nop                                              ; $4c70: $00
	rlca                                             ; $4c71: $07
	ld   [$0304], a                                  ; $4c72: $ea $04 $03
	rst  $38                                         ; $4c75: $ff
	ld   bc, $2002                                   ; $4c76: $01 $02 $20
	nop                                              ; $4c79: $00
	rlca                                             ; $4c7a: $07
	rlca                                             ; $4c7b: $07
	dec  b                                           ; $4c7c: $05
	inc  bc                                          ; $4c7d: $03
	rst  $38                                         ; $4c7e: $ff
	ld   bc, $2301                                   ; $4c7f: $01 $01 $23
	nop                                              ; $4c82: $00
	inc  e                                           ; $4c83: $1c
	ld   [bc], a                                     ; $4c84: $02
	ld   bc, $1d01                                   ; $4c85: $01 $01 $1d
	ld   b, b                                        ; $4c88: $40
	ld   [de], a                                     ; $4c89: $12
	inc  bc                                          ; $4c8a: $03
	ld   [de], a                                     ; $4c8b: $12
	ld   bc, $2803                                   ; $4c8c: $01 $03 $28
	nop                                              ; $4c8f: $00
	ld   bc, $7e67                                   ; $4c90: $01 $67 $7e
	sub  a                                           ; $4c93: $97
	ld   h, l                                        ; $4c94: $65
	ld   d, d                                        ; $4c95: $52
	ld   [hl], l                                     ; $4c96: $75
	ld   h, a                                        ; $4c97: $67
	sbc  l                                           ; $4c98: $9d
	sbc  a                                           ; $4c99: $9f
	dec  c                                           ; $4c9a: $0d
	ld   [$6300], sp                                 ; $4c9b: $08 $00 $63
	and  c                                           ; $4c9e: $a1
	sbc  a                                           ; $4c9f: $9f
	dec  c                                           ; $4ca0: $0d
	nop                                              ; $4ca1: $00
	ld   a, [bc]                                     ; $4ca2: $0a
	ld   b, $2b                                      ; $4ca3: $06 $2b
	dec  b                                           ; $4ca5: $05
	inc  e                                           ; $4ca6: $1c
	ld   [bc], a                                     ; $4ca7: $02
	nop                                              ; $4ca8: $00
	nop                                              ; $4ca9: $00
	dec  e                                           ; $4caa: $1d
	ld   b, b                                        ; $4cab: $40
	ld   [de], a                                     ; $4cac: $12
	inc  bc                                          ; $4cad: $03
	ld   [de], a                                     ; $4cae: $12
	ld   bc, $2802                                   ; $4caf: $01 $02 $28
	nop                                              ; $4cb2: $00
	ld   bc, $508c                                   ; $4cb3: $01 $8c $50
	adc  h                                           ; $4cb6: $8c
	ld   d, b                                        ; $4cb7: $50
	ld   [hl], l                                     ; $4cb8: $75
	ld   h, a                                        ; $4cb9: $67
	sbc  l                                           ; $4cba: $9d
	ld   a, e                                        ; $4cbb: $7b
	sbc  a                                           ; $4cbc: $9f
	dec  c                                           ; $4cbd: $0d
	nop                                              ; $4cbe: $00
	ld   a, [bc]                                     ; $4cbf: $0a
	ld   b, $2b                                      ; $4cc0: $06 $2b
	dec  b                                           ; $4cc2: $05
	inc  e                                           ; $4cc3: $1c
	ld   [bc], a                                     ; $4cc4: $02
	rlca                                             ; $4cc5: $07
	rlca                                             ; $4cc6: $07
	dec  e                                           ; $4cc7: $1d
	ld   b, b                                        ; $4cc8: $40
	ld   [de], a                                     ; $4cc9: $12
	inc  bc                                          ; $4cca: $03
	ld   [de], a                                     ; $4ccb: $12
	ld   bc, $2902                                   ; $4ccc: $01 $02 $29
	nop                                              ; $4ccf: $00
	ld   bc, $0558                                   ; $4cd0: $01 $58 $05
	jr   nz, jr_05f_4d3a                             ; $4cd3: $20 $65

	ld   a, c                                        ; $4cd5: $79
	ld   a, b                                        ; $4cd6: $78
	sbc  b                                           ; $4cd7: $98
	adc  h                                           ; $4cd8: $8c
	ld   l, c                                        ; $4cd9: $69
	and  c                                           ; $4cda: $a1
	dec  c                                           ; $4cdb: $0d
	ld   [hl], l                                     ; $4cdc: $75
	ld   h, a                                        ; $4cdd: $67
	sbc  l                                           ; $4cde: $9d
	ld   a, e                                        ; $4cdf: $7b
	sbc  a                                           ; $4ce0: $9f
	dec  c                                           ; $4ce1: $0d
	nop                                              ; $4ce2: $00
	ld   a, [bc]                                     ; $4ce3: $0a
	ld   b, $2b                                      ; $4ce4: $06 $2b
	dec  b                                           ; $4ce6: $05
	inc  e                                           ; $4ce7: $1c
	ld   [bc], a                                     ; $4ce8: $02
	nop                                              ; $4ce9: $00
	nop                                              ; $4cea: $00
	ld   bc, $9750                                   ; $4ceb: $01 $50 $97
	sbc  [hl]                                        ; $4cee: $9e
	sub  b                                           ; $4cef: $90
	ld   d, h                                        ; $4cf0: $54
	ld   h, c                                        ; $4cf1: $61
	and  c                                           ; $4cf2: $a1
	ld   a, b                                        ; $4cf3: $78
	inc  bc                                          ; $4cf4: $03
	ld   l, a                                        ; $4cf5: $6f
	ld   [bc], a                                     ; $4cf6: $02
	xor  c                                           ; $4cf7: $a9
	sbc  a                                           ; $4cf8: $9f
	dec  c                                           ; $4cf9: $0d
	inc  bc                                          ; $4cfa: $03
	ld   [hl], b                                     ; $4cfb: $70
	ld   e, l                                        ; $4cfc: $5d
	inc  b                                           ; $4cfd: $04
	ld   b, d                                        ; $4cfe: $42
	ld   a, b                                        ; $4cff: $78
	ld   e, l                                        ; $4d00: $5d
	ld   [hl], h                                     ; $4d01: $74
	ld   a, l                                        ; $4d02: $7d
	ld   d, d                                        ; $4d03: $52
	ld   e, a                                        ; $4d04: $5f
	adc  h                                           ; $4d05: $8c
	ld   l, c                                        ; $4d06: $69
	and  c                                           ; $4d07: $a1
	sbc  l                                           ; $4d08: $9d
	sbc  a                                           ; $4d09: $9f
	dec  c                                           ; $4d0a: $0d
	nop                                              ; $4d0b: $00
	ld   a, [bc]                                     ; $4d0c: $0a
	rrca                                             ; $4d0d: $0f
	nop                                              ; $4d0e: $00
	ld   bc, $7701                                   ; $4d0f: $01 $01 $77
	ld   d, h                                        ; $4d12: $54
	sub  b                                           ; $4d13: $90
	ld   h, d                                        ; $4d14: $62
	ld   l, a                                        ; $4d15: $6f
	ld   l, e                                        ; $4d16: $6b
	ld   d, h                                        ; $4d17: $54
	ld   h, e                                        ; $4d18: $63
	adc  h                                           ; $4d19: $8c
	ld   [hl], l                                     ; $4d1a: $75
	ld   h, l                                        ; $4d1b: $65
	ld   l, l                                        ; $4d1c: $6d
	sbc  a                                           ; $4d1d: $9f
	dec  c                                           ; $4d1e: $0d
	ld   e, b                                        ; $4d1f: $58
	sub  d                                           ; $4d20: $92
	ld   h, a                                        ; $4d21: $67
	adc  l                                           ; $4d22: $8d
	ld   a, b                                        ; $4d23: $78
	ld   h, e                                        ; $4d24: $63
	ld   d, d                                        ; $4d25: $52
	sbc  [hl]                                        ; $4d26: $9e
	ld   h, a                                        ; $4d27: $67
	adc  l                                           ; $4d28: $8d
	sbc  d                                           ; $4d29: $9a
	ld   h, e                                        ; $4d2a: $63
	and  c                                           ; $4d2b: $a1
	sbc  a                                           ; $4d2c: $9f
	dec  c                                           ; $4d2d: $0d
	nop                                              ; $4d2e: $00
	ld   a, [bc]                                     ; $4d2f: $0a
	inc  e                                           ; $4d30: $1c
	ld   [bc], a                                     ; $4d31: $02
	nop                                              ; $4d32: $00
	nop                                              ; $4d33: $00
	ld   bc, $9258                                   ; $4d34: $01 $58 $92
	ld   h, a                                        ; $4d37: $67
	adc  l                                           ; $4d38: $8d
	sbc  a                                           ; $4d39: $9f

jr_05f_4d3a:
	dec  c                                           ; $4d3a: $0d
	ld   [$6300], sp                                 ; $4d3b: $08 $00 $63
	and  c                                           ; $4d3e: $a1
	sbc  a                                           ; $4d3f: $9f
	dec  c                                           ; $4d40: $0d
	nop                                              ; $4d41: $00
	ld   a, [bc]                                     ; $4d42: $0a
	nop                                              ; $4d43: $00
	nop                                              ; $4d44: $00
	inc  bc                                          ; $4d45: $03
	ld   c, [hl]                                     ; $4d46: $4e
	ld   [bc], a                                     ; $4d47: $02
	nop                                              ; $4d48: $00
	inc  bc                                          ; $4d49: $03
	ld   c, b                                        ; $4d4a: $48
	add  hl, hl                                      ; $4d4b: $29
	add  hl, hl                                      ; $4d4c: $29
	ld   bc, $2201                                   ; $4d4d: $01 $01 $22
	nop                                              ; $4d50: $00
	ld   c, $89                                      ; $4d51: $0e $89
	dec  de                                          ; $4d53: $1b
	dec  sp                                          ; $4d54: $3b
	rrca                                             ; $4d55: $0f
	nop                                              ; $4d56: $00
	ld   bc, $0102                                   ; $4d57: $01 $02 $01
	ld   bc, $5003                                   ; $4d5a: $01 $03 $50
	rst  $38                                         ; $4d5d: $ff
	rst  $38                                         ; $4d5e: $ff
	ld   h, e                                        ; $4d5f: $63
	ld   e, l                                        ; $4d60: $5d
	sub  a                                           ; $4d61: $97
	ld   h, e                                        ; $4d62: $63
	and  c                                           ; $4d63: $a1
	ld   e, d                                        ; $4d64: $5a
	dec  c                                           ; $4d65: $0d
	db   $10                                         ; $4d66: $10
	dec  b                                           ; $4d67: $05
	ld   [bc], a                                     ; $4d68: $02
	dec  b                                           ; $4d69: $05
	ld   de, $65a0                                   ; $4d6a: $11 $a0 $65
	ld   [hl], h                                     ; $4d6d: $74
	ld   d, d                                        ; $4d6e: $52
	sbc  c                                           ; $4d6f: $99
	rst  $38                                         ; $4d70: $ff
	rst  $38                                         ; $4d71: $ff
	ld   bc, $0d04                                   ; $4d72: $01 $04 $0d
	nop                                              ; $4d75: $00
	ld   a, [bc]                                     ; $4d76: $0a
	inc  e                                           ; $4d77: $1c
	ld   bc, $0030                                   ; $4d78: $01 $30 $00
	ld   bc, $9750                                   ; $4d7b: $01 $50 $97
	sbc  [hl]                                        ; $4d7e: $9e
	ld   [$6300], sp                                 ; $4d7f: $08 $00 $63
	and  c                                           ; $4d82: $a1
	sbc  a                                           ; $4d83: $9f
	dec  c                                           ; $4d84: $0d
	nop                                              ; $4d85: $00
	ld   a, [bc]                                     ; $4d86: $0a
	add  hl, bc                                      ; $4d87: $09
	ld   e, $1c                                      ; $4d88: $1e $1c
	ld   bc, $0000                                   ; $4d8a: $01 $00 $00
	rrca                                             ; $4d8d: $0f
	nop                                              ; $4d8e: $00
	ld   bc, $6301                                   ; $4d8f: $01 $01 $63
	ld   e, l                                        ; $4d92: $5d
	sub  a                                           ; $4d93: $97
	ld   h, e                                        ; $4d94: $63
	and  c                                           ; $4d95: $a1
	sbc  [hl]                                        ; $4d96: $9e
	ld   l, e                                        ; $4d97: $6b
	ld   a, h                                        ; $4d98: $7c
	dec  b                                           ; $4d99: $05
	ld   [bc], a                                     ; $4d9a: $02
	dec  b                                           ; $4d9b: $05
	ld   de, $ffff                                   ; $4d9c: $11 $ff $ff
	dec  c                                           ; $4d9f: $0d
	nop                                              ; $4da0: $00
	ld   a, [bc]                                     ; $4da1: $0a
	add  hl, de                                      ; $4da2: $19
	dec  b                                           ; $4da3: $05
	inc  bc                                          ; $4da4: $03
	ld   [bc], a                                     ; $4da5: $02
	ld   bc, $7d03                                   ; $4da6: $01 $03 $7d
	ld   e, c                                        ; $4da9: $59
	inc  b                                           ; $4daa: $04
	ld   c, c                                        ; $4dab: $49
	ld   e, c                                        ; $4dac: $59
	ld   d, b                                        ; $4dad: $50
	sbc  c                                           ; $4dae: $99
	and  c                                           ; $4daf: $a1
	ld   [hl], l                                     ; $4db0: $75
	ld   h, a                                        ; $4db1: $67
	ld   e, c                                        ; $4db2: $59
	ld   sp, hl                                      ; $4db3: $f9
	nop                                              ; $4db4: $00
	nop                                              ; $4db5: $00
	inc  bc                                          ; $4db6: $03
	ld   d, a                                        ; $4db7: $57
	inc  b                                           ; $4db8: $04
	sub  l                                           ; $4db9: $95
	ld   h, d                                        ; $4dba: $62
	inc  bc                                          ; $4dbb: $03
	sub  h                                           ; $4dbc: $94
	inc  b                                           ; $4dbd: $04
	sbc  [hl]                                        ; $4dbe: $9e
	ld   [hl], l                                     ; $4dbf: $75
	inc  bc                                          ; $4dc0: $03
	ld   l, d                                        ; $4dc1: $6a
	add  a                                           ; $4dc2: $87
	sbc  c                                           ; $4dc3: $99
	and  c                                           ; $4dc4: $a1
	ld   [hl], l                                     ; $4dc5: $75
	ld   h, a                                        ; $4dc6: $67
	ld   e, c                                        ; $4dc7: $59
	ld   sp, hl                                      ; $4dc8: $f9
	nop                                              ; $4dc9: $00
	ld   bc, $6267                                   ; $4dca: $01 $67 $62
	ld   e, l                                        ; $4dcd: $5d
	ld   e, b                                        ; $4dce: $58
	ld   d, d                                        ; $4dcf: $52
	ld   h, l                                        ; $4dd0: $65
	ld   l, e                                        ; $4dd1: $6b
	ld   d, h                                        ; $4dd2: $54
	ld   [hl], l                                     ; $4dd3: $75
	ld   h, a                                        ; $4dd4: $67
	ld   a, e                                        ; $4dd5: $7b
	nop                                              ; $4dd6: $00
	ld   [bc], a                                     ; $4dd7: $02
	rlca                                             ; $4dd8: $07
	cp   b                                           ; $4dd9: $b8
	nop                                              ; $4dda: $00
	ld   [bc], a                                     ; $4ddb: $02
	inc  bc                                          ; $4ddc: $03
	ld   bc, $2000                                   ; $4ddd: $01 $00 $20
	nop                                              ; $4de0: $00
	rlca                                             ; $4de1: $07
	inc  l                                           ; $4de2: $2c
	ld   [bc], a                                     ; $4de3: $02
	ld   [bc], a                                     ; $4de4: $02
	inc  bc                                          ; $4de5: $03
	ld   bc, $2001                                   ; $4de6: $01 $01 $20
	nop                                              ; $4de9: $00
	rlca                                             ; $4dea: $07
	or   l                                           ; $4deb: $b5
	ld   [bc], a                                     ; $4dec: $02
	ld   [bc], a                                     ; $4ded: $02
	inc  bc                                          ; $4dee: $03
	ld   bc, $2002                                   ; $4def: $01 $02 $20
	nop                                              ; $4df2: $00
	ld   b, $a5                                      ; $4df3: $06 $a5
	nop                                              ; $4df5: $00
	inc  e                                           ; $4df6: $1c
	ld   bc, $0000                                   ; $4df7: $01 $00 $00
	ld   bc, $9e50                                   ; $4dfa: $01 $50 $9e
	ld   h, c                                        ; $4dfd: $61
	sbc  d                                           ; $4dfe: $9a
	ld   [hl], l                                     ; $4dff: $75
	ld   h, a                                        ; $4e00: $67
	ld   e, c                                        ; $4e01: $59
	ld   sp, hl                                      ; $4e02: $f9
	dec  c                                           ; $4e03: $0d
	nop                                              ; $4e04: $00
	ld   a, [bc]                                     ; $4e05: $0a
	ld   b, $e1                                      ; $4e06: $06 $e1
	nop                                              ; $4e08: $00
	rrca                                             ; $4e09: $0f
	nop                                              ; $4e0a: $00
	ld   bc, $0201                                   ; $4e0b: $01 $01 $02
	ld   bc, $7d03                                   ; $4e0e: $01 $03 $7d
	ld   e, c                                        ; $4e11: $59
	inc  b                                           ; $4e12: $04
	ld   c, c                                        ; $4e13: $49
	ld   e, c                                        ; $4e14: $59
	ld   d, b                                        ; $4e15: $50
	sbc  c                                           ; $4e16: $99
	and  c                                           ; $4e17: $a1
	ld   [hl], l                                     ; $4e18: $75
	ld   h, a                                        ; $4e19: $67
	ld   e, c                                        ; $4e1a: $59
	ld   sp, hl                                      ; $4e1b: $f9
	dec  c                                           ; $4e1c: $0d
	nop                                              ; $4e1d: $00
	ld   a, [bc]                                     ; $4e1e: $0a
	inc  e                                           ; $4e1f: $1c
	ld   bc, $0101                                   ; $4e20: $01 $01 $01
	ld   bc, $d6d6                                   ; $4e23: $01 $d6 $d6
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	ld   l, a                                        ; $4e28: $6f
	ld   e, d                                        ; $4e29: $5a
	ld   d, d                                        ; $4e2a: $52
	adc  h                                           ; $4e2b: $8c
	ld   h, a                                        ; $4e2c: $67
	sub  [hl]                                        ; $4e2d: $96
	sbc  a                                           ; $4e2e: $9f
	dec  c                                           ; $4e2f: $0d
	nop                                              ; $4e30: $00
	ld   a, [bc]                                     ; $4e31: $0a
	ld   bc, $f5ac                                   ; $4e32: $01 $ac $f5
	bit  4, e                                        ; $4e35: $cb $63
	and  c                                           ; $4e37: $a1
	sbc  [hl]                                        ; $4e38: $9e
	ld   [bc], a                                     ; $4e39: $02
	and  l                                           ; $4e3a: $a5
	inc  b                                           ; $4e3b: $04
	xor  d                                           ; $4e3c: $aa
	ld   a, h                                        ; $4e3d: $7c
	inc  b                                           ; $4e3e: $04
	ldh  a, [$03]                                    ; $4e3f: $f0 $03
	ld   l, d                                        ; $4e41: $6a
	ld   a, h                                        ; $4e42: $7c
	inc  bc                                          ; $4e43: $03
	ld   l, a                                        ; $4e44: $6f
	dec  c                                           ; $4e45: $0d
	ld   [bc], a                                     ; $4e46: $02
	rlc  e                                           ; $4e47: $cb $03
	add  b                                           ; $4e49: $80
	ld   h, l                                        ; $4e4a: $65
	ld   l, a                                        ; $4e4b: $6f
	sub  c                                           ; $4e4c: $91
	ld   [hl], c                                     ; $4e4d: $71
	ld   l, l                                        ; $4e4e: $6d
	ld   e, c                                        ; $4e4f: $59
	sub  a                                           ; $4e50: $97
	sbc  [hl]                                        ; $4e51: $9e
	ld   h, d                                        ; $4e52: $62
	inc  b                                           ; $4e53: $04
	sbc  h                                           ; $4e54: $9c
	ld   e, d                                        ; $4e55: $5a
	dec  c                                           ; $4e56: $0d
	ld   d, d                                        ; $4e57: $52
	ld   [hl], c                                     ; $4e58: $71
	ld   a, a                                        ; $4e59: $7f
	ld   d, d                                        ; $4e5a: $52
	ld   d, b                                        ; $4e5b: $50
	adc  h                                           ; $4e5c: $8c
	ld   [hl], c                                     ; $4e5d: $71
	ld   l, a                                        ; $4e5e: $6f
	sub  c                                           ; $4e5f: $91
	ld   [hl], c                                     ; $4e60: $71
	ld   [hl], h                                     ; $4e61: $74
	rst  $38                                         ; $4e62: $ff
	rst  $38                                         ; $4e63: $ff
	dec  c                                           ; $4e64: $0d
	nop                                              ; $4e65: $00
	ld   a, [bc]                                     ; $4e66: $0a
	ld   bc, $9a6b                                   ; $4e67: $01 $6b $9a
	ld   a, c                                        ; $4e6a: $79
	sbc  [hl]                                        ; $4e6b: $9e
	ld   e, b                                        ; $4e6c: $58
	inc  b                                           ; $4e6d: $04
	adc  c                                           ; $4e6e: $89
	and  b                                           ; $4e6f: $a0
	ld   h, a                                        ; $4e70: $67
	ld   e, c                                        ; $4e71: $59
	ld   h, l                                        ; $4e72: $65
	ld   [hl], h                                     ; $4e73: $74
	dec  c                                           ; $4e74: $0d
	ld   [bc], a                                     ; $4e75: $02
	or   l                                           ; $4e76: $b5
	ld   [hl], c                                     ; $4e77: $71
	ld   [hl], h                                     ; $4e78: $74
	ld   e, l                                        ; $4e79: $5d
	sbc  c                                           ; $4e7a: $99
	ld   [hl], l                                     ; $4e7b: $75
	ld   h, l                                        ; $4e7c: $65
	sub  l                                           ; $4e7d: $95
	ld   d, h                                        ; $4e7e: $54
	ld   e, c                                        ; $4e7f: $59
	sub  a                                           ; $4e80: $97
	dec  c                                           ; $4e81: $0d
	ld   e, b                                        ; $4e82: $58
	inc  b                                           ; $4e83: $04
	rst  $28                                         ; $4e84: $ef
	inc  bc                                          ; $4e85: $03
	ld   l, d                                        ; $4e86: $6a
	inc  b                                           ; $4e87: $04
	di                                               ; $4e88: $f3
	ld   [bc], a                                     ; $4e89: $02
	ld   b, $65                                      ; $4e8a: $06 $65
	ld   [hl], h                                     ; $4e8c: $74
	sbc  c                                           ; $4e8d: $99
	and  c                                           ; $4e8e: $a1
	ld   [hl], l                                     ; $4e8f: $75
	ld   h, a                                        ; $4e90: $67
	sbc  a                                           ; $4e91: $9f
	dec  c                                           ; $4e92: $0d
	nop                                              ; $4e93: $00
	ld   a, [bc]                                     ; $4e94: $0a
	add  hl, de                                      ; $4e95: $19
	dec  b                                           ; $4e96: $05
	ld   [bc], a                                     ; $4e97: $02
	sub  d                                           ; $4e98: $92
	ld   h, e                                        ; $4e99: $63
	ld   h, l                                        ; $4e9a: $65
	ld   d, d                                        ; $4e9b: $52
	and  c                                           ; $4e9c: $a1
	ld   [hl], l                                     ; $4e9d: $75
	ld   h, a                                        ; $4e9e: $67
	ld   a, e                                        ; $4e9f: $7b
	nop                                              ; $4ea0: $00
	nop                                              ; $4ea1: $00
	ld   l, e                                        ; $4ea2: $6b
	ld   d, h                                        ; $4ea3: $54
	ld   l, [hl]                                     ; $4ea4: $6e
	ld   [hl], c                                     ; $4ea5: $71
	ld   l, l                                        ; $4ea6: $6d
	and  c                                           ; $4ea7: $a1
	ld   [hl], l                                     ; $4ea8: $75
	ld   h, a                                        ; $4ea9: $67
	ld   e, c                                        ; $4eaa: $59
	nop                                              ; $4eab: $00
	ld   bc, $7107                                   ; $4eac: $01 $07 $71
	ld   bc, $0302                                   ; $4eaf: $01 $02 $03
	ld   bc, $2000                                   ; $4eb2: $01 $00 $20
	nop                                              ; $4eb5: $00
	rlca                                             ; $4eb6: $07
	call nz, $0201                                   ; $4eb7: $c4 $01 $02
	inc  bc                                          ; $4eba: $03
	ld   bc, $2001                                   ; $4ebb: $01 $01 $20
	nop                                              ; $4ebe: $00
	ld   b, $13                                      ; $4ebf: $06 $13
	ld   [bc], a                                     ; $4ec1: $02
	rrca                                             ; $4ec2: $0f
	nop                                              ; $4ec3: $00
	ld   bc, $9201                                   ; $4ec4: $01 $01 $92
	ld   h, e                                        ; $4ec7: $63
	ld   h, l                                        ; $4ec8: $65
	ld   d, d                                        ; $4ec9: $52
	and  c                                           ; $4eca: $a1
	ld   [hl], l                                     ; $4ecb: $75
	ld   h, a                                        ; $4ecc: $67
	ld   a, e                                        ; $4ecd: $7b
	rst  $38                                         ; $4ece: $ff
	rst  $38                                         ; $4ecf: $ff
	dec  c                                           ; $4ed0: $0d
	nop                                              ; $4ed1: $00
	ld   a, [bc]                                     ; $4ed2: $0a
	inc  e                                           ; $4ed3: $1c
	ld   bc, $0505                                   ; $4ed4: $01 $05 $05
	dec  e                                           ; $4ed7: $1d
	ld   b, b                                        ; $4ed8: $40
	ld   de, $1103                                   ; $4ed9: $11 $03 $11
	ld   bc, $2802                                   ; $4edc: $01 $02 $28
	nop                                              ; $4edf: $00
	ld   bc, $9e6b                                   ; $4ee0: $01 $6b $9e
	ld   l, e                                        ; $4ee3: $6b
	and  c                                           ; $4ee4: $a1
	ld   a, b                                        ; $4ee5: $78
	ld   h, c                                        ; $4ee6: $61
	halt                                             ; $4ee7: $76
	dec  c                                           ; $4ee8: $0d
	ld   a, b                                        ; $4ee9: $78
	ld   d, d                                        ; $4eea: $52
	ld   [hl], l                                     ; $4eeb: $75
	ld   h, a                                        ; $4eec: $67
	ld   [hl], c                                     ; $4eed: $71
	ld   [hl], h                                     ; $4eee: $74
	ld   a, [hl]                                     ; $4eef: $7e
	rst  $38                                         ; $4ef0: $ff
	rst  $38                                         ; $4ef1: $ff
	dec  c                                           ; $4ef2: $0d
	nop                                              ; $4ef3: $00
	ld   a, [bc]                                     ; $4ef4: $0a
	inc  e                                           ; $4ef5: $1c
	ld   bc, $0101                                   ; $4ef6: $01 $01 $01
	ld   bc, $9e63                                   ; $4ef9: $01 $63 $9e
	ld   h, e                                        ; $4efc: $63
	ei                                               ; $4efd: $fb
	ld   [hl], h                                     ; $4efe: $74
	halt                                             ; $4eff: $76
	rst  $38                                         ; $4f00: $ff
	rst  $38                                         ; $4f01: $ff
	dec  c                                           ; $4f02: $0d
	ld   e, b                                        ; $4f03: $58
	dec  b                                           ; $4f04: $05
	ld   [bc], a                                     ; $4f05: $02
	dec  b                                           ; $4f06: $05
	ld   de, $7372                                   ; $4f07: $11 $72 $73
	ld   e, a                                        ; $4f0a: $5f
	ld   a, b                                        ; $4f0b: $78
	ld   e, l                                        ; $4f0c: $5d
	ld   [hl], c                                     ; $4f0d: $71
	ld   l, a                                        ; $4f0e: $6f
	sub  c                                           ; $4f0f: $91
	ld   a, [$000d]                                  ; $4f10: $fa $0d $00
	ld   a, [bc]                                     ; $4f13: $0a
	nop                                              ; $4f14: $00
	rrca                                             ; $4f15: $0f
	nop                                              ; $4f16: $00
	ld   bc, $6b01                                   ; $4f17: $01 $01 $6b
	ld   d, h                                        ; $4f1a: $54
	ld   l, [hl]                                     ; $4f1b: $6e
	ld   [hl], c                                     ; $4f1c: $71
	ld   l, l                                        ; $4f1d: $6d
	and  c                                           ; $4f1e: $a1
	ld   [hl], l                                     ; $4f1f: $75
	ld   h, a                                        ; $4f20: $67
	ld   e, c                                        ; $4f21: $59
	sbc  a                                           ; $4f22: $9f
	dec  c                                           ; $4f23: $0d
	xor  h                                           ; $4f24: $ac
	push af                                          ; $4f25: $f5
	bit  4, e                                        ; $4f26: $cb $63
	and  c                                           ; $4f28: $a1
	ld   e, d                                        ; $4f29: $5a
	inc  bc                                          ; $4f2a: $03
	ld   l, d                                        ; $4f2b: $6a
	add  a                                           ; $4f2c: $87
	sbc  c                                           ; $4f2d: $99
	ld   e, [hl]                                     ; $4f2e: $5e
	sub  a                                           ; $4f2f: $97
	ld   d, d                                        ; $4f30: $52
	ld   a, l                                        ; $4f31: $7d
	dec  c                                           ; $4f32: $0d
	ld   d, b                                        ; $4f33: $50
	sbc  b                                           ; $4f34: $98
	adc  h                                           ; $4f35: $8c
	ld   h, a                                        ; $4f36: $67
	sub  b                                           ; $4f37: $90
	and  c                                           ; $4f38: $a1
	ld   a, e                                        ; $4f39: $7b
	sbc  a                                           ; $4f3a: $9f
	dec  c                                           ; $4f3b: $0d
	nop                                              ; $4f3c: $00
	ld   a, [bc]                                     ; $4f3d: $0a
	inc  e                                           ; $4f3e: $1c
	ld   bc, $0101                                   ; $4f3f: $01 $01 $01
	ld   bc, $5656                                   ; $4f42: $01 $56 $56
	sbc  [hl]                                        ; $4f45: $9e
	xor  h                                           ; $4f46: $ac
	push af                                          ; $4f47: $f5
	bit  4, e                                        ; $4f48: $cb $63
	and  c                                           ; $4f4a: $a1
	ld   a, c                                        ; $4f4b: $79
	ld   a, l                                        ; $4f4c: $7d
	dec  c                                           ; $4f4d: $0d
	ld   h, l                                        ; $4f4e: $65
	ld   [hl], c                                     ; $4f4f: $71
	ld   e, c                                        ; $4f50: $59
	sbc  b                                           ; $4f51: $98
	inc  bc                                          ; $4f52: $03
	ld   l, d                                        ; $4f53: $6a
	add  a                                           ; $4f54: $87
	ld   [hl], h                                     ; $4f55: $74
	sub  b                                           ; $4f56: $90
	sub  a                                           ; $4f57: $97
	ld   d, d                                        ; $4f58: $52
	ld   l, l                                        ; $4f59: $6d
	ld   d, d                                        ; $4f5a: $52
	dec  c                                           ; $4f5b: $0d
	ld   [hl], l                                     ; $4f5c: $75
	ld   h, a                                        ; $4f5d: $67
	ld   e, c                                        ; $4f5e: $59
	sub  a                                           ; $4f5f: $97
	sbc  a                                           ; $4f60: $9f
	dec  c                                           ; $4f61: $0d
	nop                                              ; $4f62: $00
	ld   a, [bc]                                     ; $4f63: $0a
	inc  e                                           ; $4f64: $1c
	ld   bc, $0101                                   ; $4f65: $01 $01 $01
	ld   bc, $7463                                   ; $4f68: $01 $63 $74
	halt                                             ; $4f6b: $76
	sbc  [hl]                                        ; $4f6c: $9e
	ld   e, b                                        ; $4f6d: $58
	dec  b                                           ; $4f6e: $05
	ld   [bc], a                                     ; $4f6f: $02
	dec  b                                           ; $4f70: $05
	ld   de, $589e                                   ; $4f71: $11 $9e $58
	dec  b                                           ; $4f74: $05
	ld   [bc], a                                     ; $4f75: $02
	dec  b                                           ; $4f76: $05
	ld   de, $0d9f                                   ; $4f77: $11 $9f $0d
	nop                                              ; $4f7a: $00
	ld   a, [bc]                                     ; $4f7b: $0a
	nop                                              ; $4f7c: $00
	rrca                                             ; $4f7d: $0f
	nop                                              ; $4f7e: $00
	ld   bc, $0301                                   ; $4f7f: $01 $01 $03
	ld   d, a                                        ; $4f82: $57
	inc  b                                           ; $4f83: $04
	sub  l                                           ; $4f84: $95
	ld   h, d                                        ; $4f85: $62
	inc  bc                                          ; $4f86: $03
	sub  h                                           ; $4f87: $94
	inc  b                                           ; $4f88: $04
	sbc  [hl]                                        ; $4f89: $9e
	ld   [hl], l                                     ; $4f8a: $75
	inc  bc                                          ; $4f8b: $03
	ld   l, d                                        ; $4f8c: $6a
	add  a                                           ; $4f8d: $87
	sbc  c                                           ; $4f8e: $99
	and  c                                           ; $4f8f: $a1
	ld   [hl], l                                     ; $4f90: $75
	ld   h, a                                        ; $4f91: $67
	ld   e, c                                        ; $4f92: $59
	ld   sp, hl                                      ; $4f93: $f9
	dec  c                                           ; $4f94: $0d
	rst  $38                                         ; $4f95: $ff
	rst  $38                                         ; $4f96: $ff
	inc  b                                           ; $4f97: $04
	inc  hl                                          ; $4f98: $23
	sbc  b                                           ; $4f99: $98
	adc  h                                           ; $4f9a: $8c
	ld   h, a                                        ; $4f9b: $67
	sub  [hl]                                        ; $4f9c: $96
	sbc  a                                           ; $4f9d: $9f
	dec  c                                           ; $4f9e: $0d
	nop                                              ; $4f9f: $00
	ld   a, [bc]                                     ; $4fa0: $0a
	inc  e                                           ; $4fa1: $1c
	ld   bc, $0707                                   ; $4fa2: $01 $07 $07
	dec  e                                           ; $4fa5: $1d
	ld   b, b                                        ; $4fa6: $40
	ld   de, $1103                                   ; $4fa7: $11 $03 $11
	ld   bc, $2903                                   ; $4faa: $01 $03 $29
	nop                                              ; $4fad: $00
	ld   bc, $6d50                                   ; $4fae: $01 $50 $6d
	ld   h, l                                        ; $4fb1: $65
	sbc  [hl]                                        ; $4fb2: $9e
	ld   h, c                                        ; $4fb3: $61
	and  c                                           ; $4fb4: $a1
	ld   a, b                                        ; $4fb5: $78
	ld   a, c                                        ; $4fb6: $79
	inc  b                                           ; $4fb7: $04
	ld   c, $03                                      ; $4fb8: $0e $03
	ld   l, d                                        ; $4fba: $6a
	sub  a                                           ; $4fbb: $97
	ld   d, d                                        ; $4fbc: $52
	ld   h, [hl]                                     ; $4fbd: $66
	sub  c                                           ; $4fbe: $91
	dec  c                                           ; $4fbf: $0d
	ld   d, b                                        ; $4fc0: $50
	sbc  b                                           ; $4fc1: $98
	adc  h                                           ; $4fc2: $8c
	ld   l, c                                        ; $4fc3: $69
	and  c                                           ; $4fc4: $a1
	rst  $38                                         ; $4fc5: $ff
	rst  $38                                         ; $4fc6: $ff
	dec  c                                           ; $4fc7: $0d
	nop                                              ; $4fc8: $00
	ld   a, [bc]                                     ; $4fc9: $0a
	ld   bc, $9a61                                   ; $4fca: $01 $61 $9a
	ld   a, l                                        ; $4fcd: $7d
	xor  h                                           ; $4fce: $ac
	push af                                          ; $4fcf: $f5
	bit  4, e                                        ; $4fd0: $cb $63
	and  c                                           ; $4fd2: $a1
	ld   a, h                                        ; $4fd3: $7c
	dec  c                                           ; $4fd4: $0d
	ld   e, b                                        ; $4fd5: $58
	inc  b                                           ; $4fd6: $04
	rst  $28                                         ; $4fd7: $ef
	inc  bc                                          ; $4fd8: $03
	ld   l, d                                        ; $4fd9: $6a
	ld   [hl], l                                     ; $4fda: $75
	ld   h, a                                        ; $4fdb: $67
	ld   a, [$000d]                                  ; $4fdc: $fa $0d $00
	ld   a, [bc]                                     ; $4fdf: $0a
	inc  e                                           ; $4fe0: $1c
	ld   bc, $0202                                   ; $4fe1: $01 $02 $02
	ld   bc, $8d67                                   ; $4fe4: $01 $67 $8d
	adc  h                                           ; $4fe7: $8c
	ld   l, c                                        ; $4fe8: $69
	and  c                                           ; $4fe9: $a1
	ld   e, d                                        ; $4fea: $5a
	sbc  [hl]                                        ; $4feb: $9e
	ld   d, d                                        ; $4fec: $52
	ld   l, e                                        ; $4fed: $6b
	ld   e, d                                        ; $4fee: $5a
	ld   h, l                                        ; $4fef: $65
	ld   d, d                                        ; $4ff0: $52
	ld   a, h                                        ; $4ff1: $7c
	ld   [hl], l                                     ; $4ff2: $75
	dec  c                                           ; $4ff3: $0d
	adc  h                                           ; $4ff4: $8c
	ld   l, l                                        ; $4ff5: $6d
	inc  b                                           ; $4ff6: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff7: $cf
	inc  b                                           ; $4ff8: $04
	xor  d                                           ; $4ff9: $aa
	ld   a, c                                        ; $4ffa: $79
	ld   h, l                                        ; $4ffb: $65
	ld   [hl], h                                     ; $4ffc: $74
	ld   [bc], a                                     ; $4ffd: $02
	inc  [hl]                                        ; $4ffe: $34
	ld   h, e                                        ; $4fff: $63
	ld   d, d                                        ; $5000: $52
	sbc  a                                           ; $5001: $9f
	dec  c                                           ; $5002: $0d
	nop                                              ; $5003: $00
	ld   a, [bc]                                     ; $5004: $0a
	nop                                              ; $5005: $00
	rrca                                             ; $5006: $0f
	nop                                              ; $5007: $00
	ld   bc, $6701                                   ; $5008: $01 $01 $67
	ld   h, d                                        ; $500b: $62
	ld   e, l                                        ; $500c: $5d
	ld   e, b                                        ; $500d: $58
	ld   d, d                                        ; $500e: $52
	ld   h, l                                        ; $500f: $65
	ld   l, e                                        ; $5010: $6b
	ld   d, h                                        ; $5011: $54
	ld   [hl], l                                     ; $5012: $75
	ld   h, a                                        ; $5013: $67
	ld   a, e                                        ; $5014: $7b
	sbc  a                                           ; $5015: $9f
	dec  c                                           ; $5016: $0d
	nop                                              ; $5017: $00
	ld   a, [bc]                                     ; $5018: $0a
	inc  e                                           ; $5019: $1c
	ld   bc, $0101                                   ; $501a: $01 $01 $01
	dec  e                                           ; $501d: $1d
	ld   b, b                                        ; $501e: $40
	ld   de, $1103                                   ; $501f: $11 $03 $11
	ld   bc, $2803                                   ; $5022: $01 $03 $28
	nop                                              ; $5025: $00
	ld   bc, $546b                                   ; $5026: $01 $6b $54
	ld   [hl], l                                     ; $5029: $75
	ld   h, a                                        ; $502a: $67
	ld   e, c                                        ; $502b: $59
	ld   sp, hl                                      ; $502c: $f9
	dec  c                                           ; $502d: $0d
	ld   d, b                                        ; $502e: $50
	sbc  b                                           ; $502f: $98
	ld   e, d                                        ; $5030: $5a
	halt                                             ; $5031: $76
	ld   d, h                                        ; $5032: $54
	ld   h, d                                        ; $5033: $62
	ld   h, h                                        ; $5034: $64
	ld   d, d                                        ; $5035: $52
	adc  h                                           ; $5036: $8c
	ld   h, a                                        ; $5037: $67
	ld   a, [$000d]                                  ; $5038: $fa $0d $00
	ld   a, [bc]                                     ; $503b: $0a
	ld   bc, $9a61                                   ; $503c: $01 $61 $9a
	sbc  [hl]                                        ; $503f: $9e
	xor  h                                           ; $5040: $ac
	push af                                          ; $5041: $f5
	bit  4, e                                        ; $5042: $cb $63
	and  c                                           ; $5044: $a1
	ld   a, h                                        ; $5045: $7c
	dec  c                                           ; $5046: $0d
	ld   e, b                                        ; $5047: $58
	inc  b                                           ; $5048: $04
	rst  $28                                         ; $5049: $ef
	inc  bc                                          ; $504a: $03
	ld   l, d                                        ; $504b: $6a
	ld   a, b                                        ; $504c: $78
	and  c                                           ; $504d: $a1
	ld   [hl], l                                     ; $504e: $75
	ld   h, a                                        ; $504f: $67
	sub  [hl]                                        ; $5050: $96
	sbc  a                                           ; $5051: $9f
	dec  c                                           ; $5052: $0d
	nop                                              ; $5053: $00
	ld   a, [bc]                                     ; $5054: $0a
	ld   bc, $7463                                   ; $5055: $01 $63 $74
	halt                                             ; $5058: $76
	sbc  [hl]                                        ; $5059: $9e

Call_05f_505a:
Jump_05f_505a:
	ld   e, b                                        ; $505a: $58
	dec  b                                           ; $505b: $05
	ld   [bc], a                                     ; $505c: $02
	dec  b                                           ; $505d: $05
	ld   de, $589e                                   ; $505e: $11 $9e $58
	dec  b                                           ; $5061: $05
	ld   [bc], a                                     ; $5062: $02
	dec  b                                           ; $5063: $05
	ld   de, $0d9f                                   ; $5064: $11 $9f $0d
	nop                                              ; $5067: $00
	ld   a, [bc]                                     ; $5068: $0a
	nop                                              ; $5069: $00
	nop                                              ; $506a: $00
	rrca                                             ; $506b: $0f
	nop                                              ; $506c: $00
	ld   bc, $030d                                   ; $506d: $01 $0d $03
	nop                                              ; $5070: $00
	ld   [bc], a                                     ; $5071: $02
	ld   bc, $ecdf                                   ; $5072: $01 $df $ec
	and  e                                           ; $5075: $a3
	ld   h, e                                        ; $5076: $63
	and  c                                           ; $5077: $a1
	sbc  [hl]                                        ; $5078: $9e
	dec  c                                           ; $5079: $0d
	ld   l, a                                        ; $507a: $6f
	sub  l                                           ; $507b: $95
	ld   [hl], c                                     ; $507c: $71
	halt                                             ; $507d: $76
	ld   d, d                                        ; $507e: $52
	ld   d, d                                        ; $507f: $52
	ld   [hl], l                                     ; $5080: $75
	ld   h, a                                        ; $5081: $67
	ld   e, c                                        ; $5082: $59
	ld   sp, hl                                      ; $5083: $f9
	dec  c                                           ; $5084: $0d
	nop                                              ; $5085: $00
	ld   a, [bc]                                     ; $5086: $0a
	inc  e                                           ; $5087: $1c
	inc  bc                                          ; $5088: $03
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	ld   bc, $4904                                   ; $508b: $01 $04 $49
	ld   e, c                                        ; $508e: $59
	ld   h, l                                        ; $508f: $65
	sub  a                                           ; $5090: $97
	ld   sp, hl                                      ; $5091: $f9
	dec  c                                           ; $5092: $0d
	nop                                              ; $5093: $00
	ld   a, [bc]                                     ; $5094: $0a
	rrca                                             ; $5095: $0f
	nop                                              ; $5096: $00
	ld   bc, $0101                                   ; $5097: $01 $01 $01
	inc  bc                                          ; $509a: $03
	ld   a, b                                        ; $509b: $78
	ld   a, c                                        ; $509c: $79
	and  b                                           ; $509d: $a0
	ld   [bc], a                                     ; $509e: $02
	jp   nz, Jump_05f_5461                           ; $509f: $c2 $61 $54

	ld   e, c                                        ; $50a2: $59
	ld   a, b                                        ; $50a3: $78
	rst  $38                                         ; $50a4: $ff
	rst  $38                                         ; $50a5: $ff
	ld   bc, $0d04                                   ; $50a6: $01 $04 $0d
	nop                                              ; $50a9: $00
	ld   a, [bc]                                     ; $50aa: $0a
	add  hl, de                                      ; $50ab: $19
	dec  b                                           ; $50ac: $05
	inc  bc                                          ; $50ad: $03
	inc  bc                                          ; $50ae: $03
	sub  h                                           ; $50af: $94
	inc  b                                           ; $50b0: $04
	sbc  [hl]                                        ; $50b1: $9e
	ld   a, c                                        ; $50b2: $79
	ld   [hl], d                                     ; $50b3: $72
	ld   d, d                                        ; $50b4: $52
	ld   [hl], h                                     ; $50b5: $74
	ld   [bc], a                                     ; $50b6: $02
	jp   nz, $005d                                   ; $50b7: $c2 $5d $00

	nop                                              ; $50ba: $00
	inc  b                                           ; $50bb: $04
	ld   c, a                                        ; $50bc: $4f
	ld   [bc], a                                     ; $50bd: $02
	pop  bc                                          ; $50be: $c1
	ld   a, c                                        ; $50bf: $79
	ld   [hl], d                                     ; $50c0: $72
	ld   d, d                                        ; $50c1: $52
	ld   [hl], h                                     ; $50c2: $74
	ld   [bc], a                                     ; $50c3: $02
	jp   nz, $005d                                   ; $50c4: $c2 $5d $00

	ld   bc, $0a04                                   ; $50c7: $01 $04 $0a
	inc  bc                                          ; $50ca: $03
	jp   nc, Jump_05f_7279                           ; $50cb: $d2 $79 $72

	ld   d, d                                        ; $50ce: $52
	ld   [hl], h                                     ; $50cf: $74
	ld   [bc], a                                     ; $50d0: $02
	jp   nz, $005d                                   ; $50d1: $c2 $5d $00

	ld   [bc], a                                     ; $50d4: $02
	rlca                                             ; $50d5: $07
	or   c                                           ; $50d6: $b1
	nop                                              ; $50d7: $00
	ld   [bc], a                                     ; $50d8: $02
	inc  bc                                          ; $50d9: $03
	ld   bc, $2000                                   ; $50da: $01 $00 $20
	nop                                              ; $50dd: $00
	rlca                                             ; $50de: $07
	halt                                             ; $50df: $76
	ld   bc, $0302                                   ; $50e0: $01 $02 $03
	ld   bc, $2001                                   ; $50e3: $01 $01 $20
	nop                                              ; $50e6: $00
	rlca                                             ; $50e7: $07
	ld   e, h                                        ; $50e8: $5c
	ld   [bc], a                                     ; $50e9: $02
	ld   [bc], a                                     ; $50ea: $02
	inc  bc                                          ; $50eb: $03
	ld   bc, $2002                                   ; $50ec: $01 $02 $20
	nop                                              ; $50ef: $00
	ld   b, $88                                      ; $50f0: $06 $88
	nop                                              ; $50f2: $00
	inc  e                                           ; $50f3: $1c
	inc  bc                                          ; $50f4: $03
	nop                                              ; $50f5: $00
	nop                                              ; $50f6: $00
	ld   bc, $f304                                   ; $50f7: $01 $04 $f3
	ld   e, d                                        ; $50fa: $5a
	ld   a, b                                        ; $50fb: $78
	ld   d, d                                        ; $50fc: $52
	ld   a, h                                        ; $50fd: $7c
	ld   l, [hl]                                     ; $50fe: $6e
	ld   [hl], c                                     ; $50ff: $71
	ld   l, l                                        ; $5100: $6d
	sub  a                                           ; $5101: $97
	dec  c                                           ; $5102: $0d
	ld   [bc], a                                     ; $5103: $02
	sub  l                                           ; $5104: $95
	ld   [bc], a                                     ; $5105: $02
	sub  e                                           ; $5106: $93
	sbc  b                                           ; $5107: $98
	and  b                                           ; $5108: $a0
	ld   [bc], a                                     ; $5109: $02
	ei                                               ; $510a: $fb
	ld   e, a                                        ; $510b: $5f
	ld   a, b                                        ; $510c: $78
	ld   h, e                                        ; $510d: $63
	ld   d, d                                        ; $510e: $52
	sbc  a                                           ; $510f: $9f
	dec  c                                           ; $5110: $0d
	nop                                              ; $5111: $00
	ld   a, [bc]                                     ; $5112: $0a
	dec  c                                           ; $5113: $0d
	nop                                              ; $5114: $00
	nop                                              ; $5115: $00
	rrca                                             ; $5116: $0f
	nop                                              ; $5117: $00
	ld   bc, $1e09                                   ; $5118: $01 $09 $1e
	nop                                              ; $511b: $00
	rrca                                             ; $511c: $0f
	nop                                              ; $511d: $00
	ld   bc, $0401                                   ; $511e: $01 $01 $04
	ld   l, l                                        ; $5121: $6d
	ld   [hl], c                                     ; $5122: $71
	ld   [hl], h                                     ; $5123: $74
	rst  JumpTable                                         ; $5124: $df
	db   $ec                                         ; $5125: $ec
	and  e                                           ; $5126: $a3
	ld   h, e                                        ; $5127: $63
	and  c                                           ; $5128: $a1
	ld   e, c                                        ; $5129: $59
	sub  a                                           ; $512a: $97
	ld   [bc], a                                     ; $512b: $02
	sub  l                                           ; $512c: $95
	ld   [hl], h                                     ; $512d: $74
	dec  c                                           ; $512e: $0d
	ld   [hl], a                                     ; $512f: $77
	and  c                                           ; $5130: $a1
	ld   a, b                                        ; $5131: $78
	ld   e, c                                        ; $5132: $59
	and  c                                           ; $5133: $a1
	ld   h, [hl]                                     ; $5134: $66
	ld   [hl], l                                     ; $5135: $75
	ld   h, l                                        ; $5136: $65
	sub  l                                           ; $5137: $95
	ld   d, h                                        ; $5138: $54
	ld   e, c                                        ; $5139: $59
	ld   sp, hl                                      ; $513a: $f9
	dec  c                                           ; $513b: $0d
	nop                                              ; $513c: $00
	ld   a, [bc]                                     ; $513d: $0a
	inc  e                                           ; $513e: $1c
	inc  bc                                          ; $513f: $03
	inc  b                                           ; $5140: $04
	inc  b                                           ; $5141: $04
	ld   bc, $688e                                   ; $5142: $01 $8e $68
	ld   e, c                                        ; $5145: $59
	ld   h, l                                        ; $5146: $65
	ld   d, d                                        ; $5147: $52
	inc  bc                                          ; $5148: $03
	dec  d                                           ; $5149: $15
	inc  b                                           ; $514a: $04
	cp   a                                           ; $514b: $bf
	ld   a, e                                        ; $514c: $7b
	rst  $38                                         ; $514d: $ff
	rst  $38                                         ; $514e: $ff
	dec  c                                           ; $514f: $0d
	nop                                              ; $5150: $00
	ld   a, [bc]                                     ; $5151: $0a
	rlca                                             ; $5152: $07
	dec  h                                           ; $5153: $25
	ld   bc, $1303                                   ; $5154: $01 $03 $13
	ld   bc, $22b4                                   ; $5157: $01 $b4 $22
	nop                                              ; $515a: $00
	inc  e                                           ; $515b: $1c
	inc  bc                                          ; $515c: $03
	inc  bc                                          ; $515d: $03
	inc  bc                                          ; $515e: $03
	ld   bc, $3c02                                   ; $515f: $01 $02 $3c
	inc  bc                                          ; $5162: $03
	add  d                                           ; $5163: $82
	inc  b                                           ; $5164: $04
	jr   nz, @+$7a                                   ; $5165: $20 $78

	ld   [bc], a                                     ; $5167: $02
	scf                                              ; $5168: $37
	inc  bc                                          ; $5169: $03
	ld   a, [de]                                     ; $516a: $1a
	ld   l, [hl]                                     ; $516b: $6e
	ld   e, a                                        ; $516c: $5f
	ld   [hl], a                                     ; $516d: $77
	dec  c                                           ; $516e: $0d
	dec  b                                           ; $516f: $05
	ld   d, $04                                      ; $5170: $16 $04
	sbc  l                                           ; $5172: $9d
	ld   a, b                                        ; $5173: $78
	inc  b                                           ; $5174: $04
	ld   c, $03                                      ; $5175: $0e $03
	add  d                                           ; $5177: $82
	ld   a, c                                        ; $5178: $79
	ld   a, b                                        ; $5179: $78
	sbc  d                                           ; $517a: $9a
	sbc  c                                           ; $517b: $99
	inc  bc                                          ; $517c: $03
	and  [hl]                                        ; $517d: $a6
	inc  bc                                          ; $517e: $03
	dec  d                                           ; $517f: $15
	ld   a, l                                        ; $5180: $7d
	dec  c                                           ; $5181: $0d
	ld   d, b                                        ; $5182: $50
	sbc  c                                           ; $5183: $99
	halt                                             ; $5184: $76
	dec  b                                           ; $5185: $05
	pop  de                                          ; $5186: $d1
	ld   d, h                                        ; $5187: $54
	sbc  l                                           ; $5188: $9d
	sbc  a                                           ; $5189: $9f
	dec  c                                           ; $518a: $0d
	nop                                              ; $518b: $00
	ld   a, [bc]                                     ; $518c: $0a
	ld   b, $49                                      ; $518d: $06 $49
	ld   bc, $031c                                   ; $518f: $01 $1c $03
	inc  b                                           ; $5192: $04
	inc  b                                           ; $5193: $04
	ld   bc, $508c                                   ; $5194: $01 $8c $50
	sbc  [hl]                                        ; $5197: $9e
	sub  b                                           ; $5198: $90
	ld   d, h                                        ; $5199: $54
	inc  bc                                          ; $519a: $03
	ld   l, h                                        ; $519b: $6c
	ld   h, l                                        ; $519c: $65
	ld   e, d                                        ; $519d: $5a
	and  c                                           ; $519e: $a1
	ld   a, [hl]                                     ; $519f: $7e
	ld   [hl], c                                     ; $51a0: $71
	ld   l, l                                        ; $51a1: $6d
	inc  b                                           ; $51a2: $04
	ld   a, b                                        ; $51a3: $78
	ld   e, d                                        ; $51a4: $5a
	dec  c                                           ; $51a5: $0d
	ld   d, d                                        ; $51a6: $52
	ld   d, d                                        ; $51a7: $52
	and  c                                           ; $51a8: $a1
	ld   h, [hl]                                     ; $51a9: $66
	sub  c                                           ; $51aa: $91
	ld   a, b                                        ; $51ab: $78
	ld   d, d                                        ; $51ac: $52
	ld   e, c                                        ; $51ad: $59
	ld   h, l                                        ; $51ae: $65
	sub  a                                           ; $51af: $97
	sbc  a                                           ; $51b0: $9f
	dec  c                                           ; $51b1: $0d
	nop                                              ; $51b2: $00
	ld   a, [bc]                                     ; $51b3: $0a
	inc  e                                           ; $51b4: $1c
	inc  bc                                          ; $51b5: $03
	nop                                              ; $51b6: $00
	nop                                              ; $51b7: $00
	ld   bc, $9e63                                   ; $51b8: $01 $63 $9e
	ld   e, b                                        ; $51bb: $58
	ld   h, l                                        ; $51bc: $65
	sub  c                                           ; $51bd: $91
	add  a                                           ; $51be: $87
	sbc  b                                           ; $51bf: $98
	ld   a, l                                        ; $51c0: $7d
	inc  bc                                          ; $51c1: $03
	ld   a, [hl]                                     ; $51c2: $7e
	sbc  l                                           ; $51c3: $9d
	sbc  b                                           ; $51c4: $98
	sub  [hl]                                        ; $51c5: $96
	sbc  a                                           ; $51c6: $9f
	dec  c                                           ; $51c7: $0d
	ld   [bc], a                                     ; $51c8: $02
	sub  l                                           ; $51c9: $95
	ld   [bc], a                                     ; $51ca: $02
	sub  e                                           ; $51cb: $93
	sbc  b                                           ; $51cc: $98
	and  b                                           ; $51cd: $a0
	ld   [bc], a                                     ; $51ce: $02
	ei                                               ; $51cf: $fb
	ld   e, a                                        ; $51d0: $5f
	ld   a, b                                        ; $51d1: $78
	ld   h, e                                        ; $51d2: $63
	ld   d, d                                        ; $51d3: $52
	sbc  a                                           ; $51d4: $9f
	dec  c                                           ; $51d5: $0d
	nop                                              ; $51d6: $00
	ld   a, [bc]                                     ; $51d7: $0a
	dec  c                                           ; $51d8: $0d
	nop                                              ; $51d9: $00
	nop                                              ; $51da: $00
	rrca                                             ; $51db: $0f
	nop                                              ; $51dc: $00
	ld   bc, $1e09                                   ; $51dd: $01 $09 $1e
	nop                                              ; $51e0: $00
	rrca                                             ; $51e1: $0f
	nop                                              ; $51e2: $00
	ld   bc, $5001                                   ; $51e3: $01 $01 $50
	ld   a, h                                        ; $51e6: $7c
	rst  $38                                         ; $51e7: $ff
	rst  $38                                         ; $51e8: $ff
	sub  b                                           ; $51e9: $90
	ld   [hl], c                                     ; $51ea: $71
	halt                                             ; $51eb: $76
	inc  b                                           ; $51ec: $04
	ld   [$9202], sp                                 ; $51ed: $08 $02 $92
	ld   a, c                                        ; $51f0: $79
	dec  c                                           ; $51f1: $0d
	ld   d, d                                        ; $51f2: $52
	ld   l, l                                        ; $51f3: $6d
	ld   d, d                                        ; $51f4: $52
	and  c                                           ; $51f5: $a1
	ld   [hl], l                                     ; $51f6: $75
	ld   h, a                                        ; $51f7: $67
	ld   e, a                                        ; $51f8: $5f
	ld   [hl], a                                     ; $51f9: $77
	rst  $38                                         ; $51fa: $ff
	rst  $38                                         ; $51fb: $ff
	dec  c                                           ; $51fc: $0d
	nop                                              ; $51fd: $00
	ld   a, [bc]                                     ; $51fe: $0a
	inc  e                                           ; $51ff: $1c
	inc  bc                                          ; $5200: $03
	inc  b                                           ; $5201: $04
	inc  b                                           ; $5202: $04
	ld   bc, $9a6b                                   ; $5203: $01 $6b $9a
	ld   a, l                                        ; $5206: $7d
	inc  b                                           ; $5207: $04
	sub  $05                                         ; $5208: $d6 $05

jr_05f_520a:
	ld   de, $ff7b                                   ; $520a: $11 $7b $ff
	rst  $38                                         ; $520d: $ff
	dec  c                                           ; $520e: $0d
	ld   [bc], a                                     ; $520f: $02
	jr   nz, jr_05f_520a                             ; $5210: $20 $f8

	ld   [bc], a                                     ; $5212: $02
	sbc  e                                           ; $5213: $9b
	halt                                             ; $5214: $76
	ld   d, d                                        ; $5215: $52
	ld   d, h                                        ; $5216: $54
	ld   a, h                                        ; $5217: $7c
	ld   e, d                                        ; $5218: $5a
	inc  bc                                          ; $5219: $03
	ld   l, c                                        ; $521a: $69
	inc  bc                                          ; $521b: $03
	inc  c                                           ; $521c: $0c
	ld   e, c                                        ; $521d: $59
	sub  a                                           ; $521e: $97
	ld   a, h                                        ; $521f: $7c
	dec  c                                           ; $5220: $0d
	ld   [bc], a                                     ; $5221: $02
	add  e                                           ; $5222: $83
	adc  h                                           ; $5223: $8c
	sbc  b                                           ; $5224: $98
	ld   l, [hl]                                     ; $5225: $6e
	ld   e, c                                        ; $5226: $59
	sub  a                                           ; $5227: $97
	rst  $38                                         ; $5228: $ff
	rst  $38                                         ; $5229: $ff
	dec  c                                           ; $522a: $0d
	nop                                              ; $522b: $00
	ld   a, [bc]                                     ; $522c: $0a
	rlca                                             ; $522d: $07
	inc  b                                           ; $522e: $04
	ld   [bc], a                                     ; $522f: $02
	inc  bc                                          ; $5230: $03
	dec  h                                           ; $5231: $25
	ld   bc, $2478                                   ; $5232: $01 $78 $24
	nop                                              ; $5235: $00
	inc  e                                           ; $5236: $1c
	inc  bc                                          ; $5237: $03
	inc  bc                                          ; $5238: $03
	inc  bc                                          ; $5239: $03
	ld   bc, $6e6d                                   ; $523a: $01 $6d $6e
	sbc  [hl]                                        ; $523d: $9e
	ld   d, b                                        ; $523e: $50
	ld   a, b                                        ; $523f: $78
	ld   l, l                                        ; $5240: $6d
	ld   a, h                                        ; $5241: $7c
	inc  bc                                          ; $5242: $03
	ld   [de], a                                     ; $5243: $12
	inc  bc                                          ; $5244: $03
	dec  sp                                          ; $5245: $3b
	ld   a, b                                        ; $5246: $78
	sub  a                                           ; $5247: $97
	dec  c                                           ; $5248: $0d
	ld   d, d                                        ; $5249: $52
	ld   [hl], d                                     ; $524a: $72
	ld   e, c                                        ; $524b: $59
	inc  bc                                          ; $524c: $03
	ld   c, d                                        ; $524d: $4a
	ld   [bc], a                                     ; $524e: $02
	push af                                          ; $524f: $f5
	ld   a, b                                        ; $5250: $78
	inc  b                                           ; $5251: $04
	ld   a, [bc]                                     ; $5252: $0a
	ld   [bc], a                                     ; $5253: $02
	nop                                              ; $5254: $00
	halt                                             ; $5255: $76
	ld   h, l                                        ; $5256: $65
	ld   [hl], h                                     ; $5257: $74
	dec  c                                           ; $5258: $0d
	ld   h, c                                        ; $5259: $61
	ld   h, c                                        ; $525a: $61
	ld   a, c                                        ; $525b: $79
	inc  b                                           ; $525c: $04
	ld   b, l                                        ; $525d: $45
	sbc  d                                           ; $525e: $9a
	sbc  c                                           ; $525f: $99
	ld   e, c                                        ; $5260: $59
	sub  b                                           ; $5261: $90
	inc  b                                           ; $5262: $04
	dec  hl                                          ; $5263: $2b
	sbc  d                                           ; $5264: $9a
	ld   a, b                                        ; $5265: $78
	ld   d, d                                        ; $5266: $52
	sbc  l                                           ; $5267: $9d
	sbc  a                                           ; $5268: $9f
	dec  c                                           ; $5269: $0d
	nop                                              ; $526a: $00
	ld   a, [bc]                                     ; $526b: $0a
	ld   b, $2f                                      ; $526c: $06 $2f
	ld   [bc], a                                     ; $526e: $02
	ld   bc, $508c                                   ; $526f: $01 $8c $50
	sbc  [hl]                                        ; $5272: $9e
	ld   h, c                                        ; $5273: $61
	ld   h, c                                        ; $5274: $61
	ld   [hl], l                                     ; $5275: $75
	ld   a, h                                        ; $5276: $7c
	dec  b                                           ; $5277: $05
	or   c                                           ; $5278: $b1
	ld   [bc], a                                     ; $5279: $02
	sub  [hl]                                        ; $527a: $96
	and  b                                           ; $527b: $a0
	inc  bc                                          ; $527c: $03
	ld   d, d                                        ; $527d: $52
	ld   e, c                                        ; $527e: $59
	ld   h, l                                        ; $527f: $65
	ld   [hl], h                                     ; $5280: $74
	dec  c                                           ; $5281: $0d
	inc  bc                                          ; $5282: $03
	sub  h                                           ; $5283: $94
	inc  b                                           ; $5284: $04
	sbc  [hl]                                        ; $5285: $9e
	ld   a, h                                        ; $5286: $7c
	ld   h, a                                        ; $5287: $67
	ld   h, a                                        ; $5288: $67
	adc  [hl]                                        ; $5289: $8e
	add  a                                           ; $528a: $87
	ld   e, e                                        ; $528b: $5b
	inc  b                                           ; $528c: $04
	ld   d, $a0                                      ; $528d: $16 $a0
	dec  c                                           ; $528f: $0d
	inc  b                                           ; $5290: $04
	inc  d                                           ; $5291: $14
	ld   h, l                                        ; $5292: $65
	ld   a, b                                        ; $5293: $78
	ld   h, e                                        ; $5294: $63
	ld   d, d                                        ; $5295: $52
	sbc  a                                           ; $5296: $9f
	dec  c                                           ; $5297: $0d
	nop                                              ; $5298: $00
	ld   a, [bc]                                     ; $5299: $0a
	inc  e                                           ; $529a: $1c
	inc  bc                                          ; $529b: $03
	nop                                              ; $529c: $00
	nop                                              ; $529d: $00
	ld   bc, $9e63                                   ; $529e: $01 $63 $9e
	ld   e, b                                        ; $52a1: $58
	ld   h, l                                        ; $52a2: $65
	sub  c                                           ; $52a3: $91
	add  a                                           ; $52a4: $87
	sbc  b                                           ; $52a5: $98
	ld   a, l                                        ; $52a6: $7d
	inc  bc                                          ; $52a7: $03
	ld   a, [hl]                                     ; $52a8: $7e
	sbc  l                                           ; $52a9: $9d
	sbc  b                                           ; $52aa: $98
	sub  [hl]                                        ; $52ab: $96
	sbc  a                                           ; $52ac: $9f
	dec  c                                           ; $52ad: $0d
	ld   [bc], a                                     ; $52ae: $02
	sub  l                                           ; $52af: $95
	ld   [bc], a                                     ; $52b0: $02
	sub  e                                           ; $52b1: $93
	sbc  b                                           ; $52b2: $98
	and  b                                           ; $52b3: $a0
	ld   [bc], a                                     ; $52b4: $02
	ei                                               ; $52b5: $fb
	ld   e, a                                        ; $52b6: $5f
	ld   a, b                                        ; $52b7: $78
	ld   h, e                                        ; $52b8: $63
	ld   d, d                                        ; $52b9: $52
	sbc  a                                           ; $52ba: $9f
	dec  c                                           ; $52bb: $0d
	nop                                              ; $52bc: $00
	ld   a, [bc]                                     ; $52bd: $0a
	dec  c                                           ; $52be: $0d
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	rrca                                             ; $52c1: $0f
	nop                                              ; $52c2: $00
	ld   bc, $1e09                                   ; $52c3: $01 $09 $1e
	nop                                              ; $52c6: $00
	rrca                                             ; $52c7: $0f
	nop                                              ; $52c8: $00
	ld   bc, $0401                                   ; $52c9: $01 $01 $04
	ld   [$8f02], sp                                 ; $52cc: $08 $02 $8f
	ld   [bc], a                                     ; $52cf: $02
	sub  b                                           ; $52d0: $90
	ld   [bc], a                                     ; $52d1: $02
	sub  c                                           ; $52d2: $91
	inc  b                                           ; $52d3: $04
	add  hl, bc                                      ; $52d4: $09
	ld   a, h                                        ; $52d5: $7c
	inc  b                                           ; $52d6: $04
	ld   a, [bc]                                     ; $52d7: $0a
	inc  bc                                          ; $52d8: $03
	jp   nc, $7879                                   ; $52d9: $d2 $79 $78

	sbc  c                                           ; $52dc: $99
	ld   a, c                                        ; $52dd: $79
	ld   a, l                                        ; $52de: $7d
	dec  c                                           ; $52df: $0d
	inc  b                                           ; $52e0: $04
	ld   c, c                                        ; $52e1: $49
	ld   e, d                                        ; $52e2: $5a
	inc  b                                           ; $52e3: $04
	adc  d                                           ; $52e4: $8a
	inc  b                                           ; $52e5: $04
	rst  JumpTable                                         ; $52e6: $df
	ld   a, b                                        ; $52e7: $78
	ld   a, h                                        ; $52e8: $7c
	ld   [hl], l                                     ; $52e9: $75
	ld   h, l                                        ; $52ea: $65
	sub  l                                           ; $52eb: $95
	ld   d, h                                        ; $52ec: $54
	ld   e, c                                        ; $52ed: $59
	ld   sp, hl                                      ; $52ee: $f9
	dec  c                                           ; $52ef: $0d
	nop                                              ; $52f0: $00
	ld   a, [bc]                                     ; $52f1: $0a
	inc  e                                           ; $52f2: $1c
	inc  bc                                          ; $52f3: $03
	nop                                              ; $52f4: $00
	nop                                              ; $52f5: $00
	ld   bc, $546b                                   ; $52f6: $01 $6b $54
	ld   a, e                                        ; $52f9: $7b
	rst  $38                                         ; $52fa: $ff
	rst  $38                                         ; $52fb: $ff
	dec  c                                           ; $52fc: $0d
	ld   d, b                                        ; $52fd: $50
	ld   a, b                                        ; $52fe: $78
	ld   l, l                                        ; $52ff: $6d
	ld   a, l                                        ; $5300: $7d
	inc  b                                           ; $5301: $04
	ld   c, c                                        ; $5302: $49
	ld   l, [hl]                                     ; $5303: $6e
	halt                                             ; $5304: $76
	dec  b                                           ; $5305: $05
	pop  de                                          ; $5306: $d1
	ld   d, h                                        ; $5307: $54
	ld   sp, hl                                      ; $5308: $f9
	dec  c                                           ; $5309: $0d
	nop                                              ; $530a: $00
	ld   a, [bc]                                     ; $530b: $0a
	add  hl, de                                      ; $530c: $19
	dec  b                                           ; $530d: $05
	inc  bc                                          ; $530e: $03
	inc  b                                           ; $530f: $04
	adc  d                                           ; $5310: $8a
	inc  bc                                          ; $5311: $03
	ld   e, [hl]                                     ; $5312: $5e
	ld   [bc], a                                     ; $5313: $02
	adc  h                                           ; $5314: $8c
	nop                                              ; $5315: $00
	nop                                              ; $5316: $00
	ld   e, c                                        ; $5317: $59
	ld   [hl], c                                     ; $5318: $71
	ld   h, c                                        ; $5319: $61
	sub  [hl]                                        ; $531a: $96
	ld   h, e                                        ; $531b: $63
	nop                                              ; $531c: $00
	ld   bc, $d105                                   ; $531d: $01 $05 $d1
	ld   d, d                                        ; $5320: $52
	sub  d                                           ; $5321: $92
	sbc  b                                           ; $5322: $98
	nop                                              ; $5323: $00
	ld   [bc], a                                     ; $5324: $02
	rlca                                             ; $5325: $07
	ret  c                                           ; $5326: $d8

	ld   [bc], a                                     ; $5327: $02
	ld   [bc], a                                     ; $5328: $02
	inc  bc                                          ; $5329: $03
	ld   bc, $2000                                   ; $532a: $01 $00 $20
	nop                                              ; $532d: $00
	rlca                                             ; $532e: $07
	add  hl, de                                      ; $532f: $19
	inc  bc                                          ; $5330: $03
	ld   [bc], a                                     ; $5331: $02
	inc  bc                                          ; $5332: $03
	ld   bc, $2001                                   ; $5333: $01 $01 $20
	nop                                              ; $5336: $00
	rlca                                             ; $5337: $07
	ld   c, h                                        ; $5338: $4c
	inc  bc                                          ; $5339: $03
	ld   [bc], a                                     ; $533a: $02
	inc  bc                                          ; $533b: $03
	ld   bc, $2002                                   ; $533c: $01 $02 $20
	nop                                              ; $533f: $00
	ld   b, $99                                      ; $5340: $06 $99
	inc  bc                                          ; $5342: $03
	rrca                                             ; $5343: $0f
	nop                                              ; $5344: $00
	ld   bc, $0401                                   ; $5345: $01 $01 $04
	adc  d                                           ; $5348: $8a
	inc  bc                                          ; $5349: $03
	ld   e, [hl]                                     ; $534a: $5e
	ld   [bc], a                                     ; $534b: $02
	adc  h                                           ; $534c: $8c
	ld   [hl], l                                     ; $534d: $75
	ld   h, a                                        ; $534e: $67
	ld   e, c                                        ; $534f: $59
	ld   sp, hl                                      ; $5350: $f9
	dec  c                                           ; $5351: $0d
	nop                                              ; $5352: $00
	ld   a, [bc]                                     ; $5353: $0a
	inc  e                                           ; $5354: $1c
	inc  bc                                          ; $5355: $03
	inc  b                                           ; $5356: $04
	inc  b                                           ; $5357: $04
	ld   bc, $a803                                   ; $5358: $01 $03 $a8
	ld   d, d                                        ; $535b: $52
	ld   [hl], l                                     ; $535c: $75
	ld   a, h                                        ; $535d: $7c
	ld   [bc], a                                     ; $535e: $02
	call nc, Call_05f_7d63                           ; $535f: $d4 $63 $7d
	sbc  [hl]                                        ; $5362: $9e
	inc  b                                           ; $5363: $04
	ld   a, [bc]                                     ; $5364: $0a
	inc  bc                                          ; $5365: $03
	jp   nc, $6576                                   ; $5366: $d2 $76 $65

	ld   [hl], h                                     ; $5369: $74
	ld   a, h                                        ; $536a: $7c
	dec  c                                           ; $536b: $0d
	dec  b                                           ; $536c: $05
	jp   z, $1503                                    ; $536d: $ca $03 $15

	ld   a, c                                        ; $5370: $79
	ld   a, l                                        ; $5371: $7d
	ld   d, b                                        ; $5372: $50
	adc  h                                           ; $5373: $8c
	sbc  b                                           ; $5374: $98
	ld   [bc], a                                     ; $5375: $02
	ld   c, d                                        ; $5376: $4a
	ld   [bc], a                                     ; $5377: $02
	ld   c, e                                        ; $5378: $4b
	ld   a, b                                        ; $5379: $78
	ld   d, d                                        ; $537a: $52
	ld   a, h                                        ; $537b: $7c
	rst  $38                                         ; $537c: $ff
	rst  $38                                         ; $537d: $ff
	dec  c                                           ; $537e: $0d
	nop                                              ; $537f: $00
	ld   a, [bc]                                     ; $5380: $0a
	ld   b, $b4                                      ; $5381: $06 $b4
	inc  bc                                          ; $5383: $03
	rrca                                             ; $5384: $0f
	nop                                              ; $5385: $00
	ld   bc, $5901                                   ; $5386: $01 $01 $59
	ld   [hl], c                                     ; $5389: $71
	ld   h, c                                        ; $538a: $61
	sub  [hl]                                        ; $538b: $96
	ld   h, e                                        ; $538c: $63
	ld   [hl], l                                     ; $538d: $75
	ld   h, a                                        ; $538e: $67
	ld   e, c                                        ; $538f: $59
	ld   sp, hl                                      ; $5390: $f9
	dec  c                                           ; $5391: $0d
	nop                                              ; $5392: $00
	ld   a, [bc]                                     ; $5393: $0a
	inc  e                                           ; $5394: $1c
	inc  bc                                          ; $5395: $03
	ld   [bc], a                                     ; $5396: $02
	ld   [bc], a                                     ; $5397: $02
	dec  e                                           ; $5398: $1d
	ld   b, b                                        ; $5399: $40
	inc  de                                          ; $539a: $13
	inc  bc                                          ; $539b: $03
	inc  de                                          ; $539c: $13
	ld   bc, $2902                                   ; $539d: $01 $02 $29
	nop                                              ; $53a0: $00
	ld   bc, $a16b                                   ; $53a1: $01 $6b $a1
	ld   a, b                                        ; $53a4: $78
	sub  b                                           ; $53a5: $90
	ld   a, h                                        ; $53a6: $7c
	ld   a, l                                        ; $53a7: $7d
	inc  b                                           ; $53a8: $04
	adc  d                                           ; $53a9: $8a
	inc  b                                           ; $53aa: $04
	rst  JumpTable                                         ; $53ab: $df
	ld   a, b                                        ; $53ac: $78
	ld   d, d                                        ; $53ad: $52
	sbc  l                                           ; $53ae: $9d
	rst  $38                                         ; $53af: $ff
	rst  $38                                         ; $53b0: $ff
	dec  c                                           ; $53b1: $0d
	nop                                              ; $53b2: $00
	ld   a, [bc]                                     ; $53b3: $0a
	ld   b, $b4                                      ; $53b4: $06 $b4
	inc  bc                                          ; $53b6: $03
	rrca                                             ; $53b7: $0f
	nop                                              ; $53b8: $00
	ld   bc, $0501                                   ; $53b9: $01 $01 $05
	pop  de                                          ; $53bc: $d1
	ld   d, d                                        ; $53bd: $52
	sub  d                                           ; $53be: $92
	sbc  b                                           ; $53bf: $98
	ld   [hl], l                                     ; $53c0: $75
	ld   h, a                                        ; $53c1: $67
	ld   e, c                                        ; $53c2: $59
	ld   sp, hl                                      ; $53c3: $f9
	dec  c                                           ; $53c4: $0d
	nop                                              ; $53c5: $00
	ld   a, [bc]                                     ; $53c6: $0a
	inc  e                                           ; $53c7: $1c
	inc  bc                                          ; $53c8: $03
	inc  bc                                          ; $53c9: $03
	inc  bc                                          ; $53ca: $03
	dec  e                                           ; $53cb: $1d
	ld   b, b                                        ; $53cc: $40
	inc  de                                          ; $53cd: $13
	inc  bc                                          ; $53ce: $03
	inc  de                                          ; $53cf: $13
	ld   bc, $2803                                   ; $53d0: $01 $03 $28
	nop                                              ; $53d3: $00
	ld   bc, $5656                                   ; $53d4: $01 $56 $56
	sbc  [hl]                                        ; $53d7: $9e
	ld   l, e                                        ; $53d8: $6b
	ld   d, h                                        ; $53d9: $54
	sub  [hl]                                        ; $53da: $96
	sbc  a                                           ; $53db: $9f
	dec  c                                           ; $53dc: $0d
	inc  b                                           ; $53dd: $04
	sub  l                                           ; $53de: $95
	ld   [bc], a                                     ; $53df: $02
	inc  [hl]                                        ; $53e0: $34
	sub  d                                           ; $53e1: $92
	inc  bc                                          ; $53e2: $03
	add  d                                           ; $53e3: $82
	ld   bc, $a014                                   ; $53e4: $01 $14 $a0
	dec  b                                           ; $53e7: $05
	pop  de                                          ; $53e8: $d1
	ld   d, d                                        ; $53e9: $52
	sub  d                                           ; $53ea: $92
	sbc  c                                           ; $53eb: $99
	ld   [bc], a                                     ; $53ec: $02
	and  c                                           ; $53ed: $a1
	inc  bc                                          ; $53ee: $03
	and  b                                           ; $53ef: $a0
	ld   l, a                                        ; $53f0: $6f
	dec  c                                           ; $53f1: $0d
	rst  $38                                         ; $53f2: $ff
	rst  $38                                         ; $53f3: $ff
	ld   l, e                                        ; $53f4: $6b
	sbc  d                                           ; $53f5: $9a
	ld   e, d                                        ; $53f6: $5a
	inc  b                                           ; $53f7: $04
	ld   c, $03                                      ; $53f8: $0e $03
	dec  de                                          ; $53fa: $1b
	ld   a, b                                        ; $53fb: $78
	ld   a, h                                        ; $53fc: $7c
	sbc  a                                           ; $53fd: $9f
	dec  c                                           ; $53fe: $0d
	nop                                              ; $53ff: $00
	ld   a, [bc]                                     ; $5400: $0a
	ld   b, $e9                                      ; $5401: $06 $e9
	inc  bc                                          ; $5403: $03
	inc  e                                           ; $5404: $1c
	inc  bc                                          ; $5405: $03
	inc  b                                           ; $5406: $04
	inc  b                                           ; $5407: $04
	ld   bc, $6e8c                                   ; $5408: $01 $8c $6e
	ld   d, b                                        ; $540b: $50
	ld   a, b                                        ; $540c: $78
	ld   l, l                                        ; $540d: $6d
	ld   a, c                                        ; $540e: $79
	ld   a, l                                        ; $540f: $7d
	dec  c                                           ; $5410: $0d
	adc  [hl]                                        ; $5411: $8e
	ld   l, b                                        ; $5412: $68
	ld   e, c                                        ; $5413: $59
	ld   h, l                                        ; $5414: $65
	ld   h, a                                        ; $5415: $67
	ld   e, h                                        ; $5416: $5c
	ld   l, l                                        ; $5417: $6d
	sbc  l                                           ; $5418: $9d
	ld   a, e                                        ; $5419: $7b
	rst  $38                                         ; $541a: $ff
	rst  $38                                         ; $541b: $ff
	dec  c                                           ; $541c: $0d
	nop                                              ; $541d: $00
	ld   a, [bc]                                     ; $541e: $0a
	ld   bc, $0a04                                   ; $541f: $01 $04 $0a
	inc  bc                                          ; $5422: $03
	jp   nc, $0479                                   ; $5423: $d2 $79 $04

	adc  d                                           ; $5426: $8a
	inc  b                                           ; $5427: $04
	rst  JumpTable                                         ; $5428: $df
	ld   a, b                                        ; $5429: $78
	ld   a, h                                        ; $542a: $7c
	ld   a, l                                        ; $542b: $7d
	sbc  [hl]                                        ; $542c: $9e
	inc  b                                           ; $542d: $04
	sub  l                                           ; $542e: $95
	ld   [bc], a                                     ; $542f: $02
	inc  [hl]                                        ; $5430: $34
	sub  d                                           ; $5431: $92
	dec  c                                           ; $5432: $0d
	inc  bc                                          ; $5433: $03
	add  d                                           ; $5434: $82
	ld   bc, $a014                                   ; $5435: $01 $14 $a0
	dec  b                                           ; $5438: $05
	pop  de                                          ; $5439: $d1
	ld   d, d                                        ; $543a: $52
	sub  d                                           ; $543b: $92
	sbc  c                                           ; $543c: $99
	ld   [bc], a                                     ; $543d: $02
	and  c                                           ; $543e: $a1
	inc  bc                                          ; $543f: $03
	and  b                                           ; $5440: $a0
	ld   l, a                                        ; $5441: $6f
	sub  [hl]                                        ; $5442: $96
	sbc  a                                           ; $5443: $9f
	dec  c                                           ; $5444: $0d
	ld   l, e                                        ; $5445: $6b
	sbc  d                                           ; $5446: $9a
	ld   a, l                                        ; $5447: $7d
	ld   e, b                                        ; $5448: $58
	adc  d                                           ; $5449: $8a
	ld   d, [hl]                                     ; $544a: $56
	ld   [hl], h                                     ; $544b: $74
	ld   e, b                                        ; $544c: $58
	ld   d, d                                        ; $544d: $52
	ld   [hl], h                                     ; $544e: $74
	rst  $38                                         ; $544f: $ff
	rst  $38                                         ; $5450: $ff
	dec  c                                           ; $5451: $0d
	nop                                              ; $5452: $00
	ld   a, [bc]                                     ; $5453: $0a
	inc  e                                           ; $5454: $1c
	inc  bc                                          ; $5455: $03
	nop                                              ; $5456: $00
	nop                                              ; $5457: $00
	ld   bc, $9e63                                   ; $5458: $01 $63 $9e
	ld   e, b                                        ; $545b: $58
	ld   h, l                                        ; $545c: $65
	sub  c                                           ; $545d: $91
	add  a                                           ; $545e: $87
	sbc  b                                           ; $545f: $98
	ld   a, l                                        ; $5460: $7d

Jump_05f_5461:
	inc  bc                                          ; $5461: $03
	ld   a, [hl]                                     ; $5462: $7e
	sbc  l                                           ; $5463: $9d
	sbc  b                                           ; $5464: $98
	sub  [hl]                                        ; $5465: $96
	sbc  a                                           ; $5466: $9f
	dec  c                                           ; $5467: $0d
	ld   [bc], a                                     ; $5468: $02
	sub  l                                           ; $5469: $95
	ld   [bc], a                                     ; $546a: $02
	sub  e                                           ; $546b: $93
	sbc  b                                           ; $546c: $98
	and  b                                           ; $546d: $a0
	ld   [bc], a                                     ; $546e: $02
	ei                                               ; $546f: $fb
	ld   e, a                                        ; $5470: $5f
	ld   a, b                                        ; $5471: $78
	ld   h, e                                        ; $5472: $63
	ld   d, d                                        ; $5473: $52
	sbc  a                                           ; $5474: $9f
	dec  c                                           ; $5475: $0d
	nop                                              ; $5476: $00
	ld   a, [bc]                                     ; $5477: $0a
	dec  c                                           ; $5478: $0d
	nop                                              ; $5479: $00
	nop                                              ; $547a: $00
	rrca                                             ; $547b: $0f
	nop                                              ; $547c: $00
	ld   bc, $1e09                                   ; $547d: $01 $09 $1e
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	inc  e                                           ; $5482: $1c
	ld   b, $01                                      ; $5483: $06 $01
	ld   bc, $0102                                   ; $5485: $01 $02 $01
	sub  [hl]                                        ; $5488: $96
	sbc  [hl]                                        ; $5489: $9e
	ld   [$9f00], sp                                 ; $548a: $08 $00 $9f
	dec  c                                           ; $548d: $0d
	ld   [bc], a                                     ; $548e: $02
	sub  l                                           ; $548f: $95

Jump_05f_5490:
	ld   [bc], a                                     ; $5490: $02
	sub  e                                           ; $5491: $93
	sbc  b                                           ; $5492: $98
	ld   h, d                                        ; $5493: $62
	ld   [bc], a                                     ; $5494: $02
	sub  h                                           ; $5495: $94
	dec  b                                           ; $5496: $05
	rrca                                             ; $5497: $0f
	ld   h, e                                        ; $5498: $63
	and  c                                           ; $5499: $a1
	sbc  a                                           ; $549a: $9f
	dec  c                                           ; $549b: $0d
	nop                                              ; $549c: $00
	ld   a, [bc]                                     ; $549d: $0a
	rrca                                             ; $549e: $0f
	nop                                              ; $549f: $00
	ld   bc, $5001                                   ; $54a0: $01 $01 $50
	ld   a, h                                        ; $54a3: $7c
	rst  $38                                         ; $54a4: $ff
	rst  $38                                         ; $54a5: $ff
	inc  bc                                          ; $54a6: $03
	adc  e                                           ; $54a7: $8b
	ld   a, l                                        ; $54a8: $7d
	xor  h                                           ; $54a9: $ac
	push af                                          ; $54aa: $f5
	bit  4, e                                        ; $54ab: $cb $63
	and  c                                           ; $54ad: $a1
	ld   a, c                                        ; $54ae: $79
	dec  c                                           ; $54af: $0d
	ld   [bc], a                                     ; $54b0: $02
	jr   nz, jr_05f_5525                             ; $54b1: $20 $72

	inc  bc                                          ; $54b3: $03
	dec  d                                           ; $54b4: $15
	inc  b                                           ; $54b5: $04
	cp   a                                           ; $54b6: $bf
	ld   e, d                                        ; $54b7: $5a
	ld   d, b                                        ; $54b8: $50
	sbc  c                                           ; $54b9: $99
	ld   a, h                                        ; $54ba: $7c
	ld   [hl], l                                     ; $54bb: $75
	ld   h, a                                        ; $54bc: $67
	ld   e, d                                        ; $54bd: $5a
	rst  $38                                         ; $54be: $ff
	rst  $38                                         ; $54bf: $ff
	dec  c                                           ; $54c0: $0d
	nop                                              ; $54c1: $00
	ld   a, [bc]                                     ; $54c2: $0a
	inc  e                                           ; $54c3: $1c
	ld   b, $00                                      ; $54c4: $06 $00
	nop                                              ; $54c6: $00
	ld   bc, $a178                                   ; $54c7: $01 $78 $a1
	ld   l, [hl]                                     ; $54ca: $6e
	sbc  a                                           ; $54cb: $9f
	dec  c                                           ; $54cc: $0d
	nop                                              ; $54cd: $00
	ld   a, [bc]                                     ; $54ce: $0a
	rrca                                             ; $54cf: $0f
	nop                                              ; $54d0: $00
	ld   bc, $ac01                                   ; $54d1: $01 $01 $ac
	push af                                          ; $54d4: $f5
	bit  4, e                                        ; $54d5: $cb $63
	and  c                                           ; $54d7: $a1
	ld   a, c                                        ; $54d8: $79
	halt                                             ; $54d9: $76
	ld   [hl], c                                     ; $54da: $71
	ld   [hl], h                                     ; $54db: $74
	sbc  [hl]                                        ; $54dc: $9e
	dec  c                                           ; $54dd: $0d
	ld   [bc], a                                     ; $54de: $02
	call nc, Call_05f_785d                           ; $54df: $d4 $5d $78
	sbc  c                                           ; $54e2: $99
	ld   h, c                                        ; $54e3: $61
	halt                                             ; $54e4: $76
	ld   a, h                                        ; $54e5: $7c
	ld   [bc], a                                     ; $54e6: $02
	ld   b, $02                                      ; $54e7: $06 $02
	ld   a, c                                        ; $54e9: $79
	ld   [hl], c                                     ; $54ea: $71
	ld   [hl], h                                     ; $54eb: $74
	dec  c                                           ; $54ec: $0d
	ld   a, b                                        ; $54ed: $78
	and  c                                           ; $54ee: $a1
	ld   a, b                                        ; $54ef: $78
	ld   a, h                                        ; $54f0: $7c
	ld   [hl], l                                     ; $54f1: $75
	ld   h, a                                        ; $54f2: $67
	ld   e, c                                        ; $54f3: $59
	ld   sp, hl                                      ; $54f4: $f9
	dec  c                                           ; $54f5: $0d
	nop                                              ; $54f6: $00
	ld   a, [bc]                                     ; $54f7: $0a
	inc  e                                           ; $54f8: $1c
	ld   b, $00                                      ; $54f9: $06 $00
	nop                                              ; $54fb: $00
	ld   bc, $546b                                   ; $54fc: $01 $6b $54
	ld   l, [hl]                                     ; $54ff: $6e
	ld   a, b                                        ; $5500: $78
	rst  $38                                         ; $5501: $ff
	rst  $38                                         ; $5502: $ff
	ld   b, $09                                      ; $5503: $06 $09
	ld   [hl], d                                     ; $5505: $72
	ld   d, b                                        ; $5506: $50
	sbc  c                                           ; $5507: $99
	ld   e, c                                        ; $5508: $59
	ld   a, b                                        ; $5509: $78
	sbc  a                                           ; $550a: $9f
	dec  c                                           ; $550b: $0d
	ld   [bc], a                                     ; $550c: $02
	jr   nz, jr_05f_5581                             ; $550d: $20 $72

	ld   a, l                                        ; $550f: $7d
	sbc  [hl]                                        ; $5510: $9e
	inc  bc                                          ; $5511: $03
	sub  d                                           ; $5512: $92
	inc  b                                           ; $5513: $04
	ld   l, $a0                                      ; $5514: $2e $a0
	ld   h, c                                        ; $5516: $61
	ld   d, [hl]                                     ; $5517: $56
	sbc  c                                           ; $5518: $99
	dec  c                                           ; $5519: $0d
	ld   [bc], a                                     ; $551a: $02
	ld   [hl], l                                     ; $551b: $75
	dec  b                                           ; $551c: $05
	rst  $38                                         ; $551d: $ff
	ld   [bc], a                                     ; $551e: $02
	and  [hl]                                        ; $551f: $a6
	ld   a, c                                        ; $5520: $79
	ld   a, b                                        ; $5521: $78
	sbc  c                                           ; $5522: $99
	ld   h, c                                        ; $5523: $61
	halt                                             ; $5524: $76

jr_05f_5525:
	sbc  a                                           ; $5525: $9f
	dec  c                                           ; $5526: $0d
	nop                                              ; $5527: $00
	ld   a, [bc]                                     ; $5528: $0a
	ld   bc, $6d50                                   ; $5529: $01 $50 $6d
	ld   d, d                                        ; $552c: $52
	ld   a, c                                        ; $552d: $79
	halt                                             ; $552e: $76
	ld   [hl], c                                     ; $552f: $71
	ld   [hl], h                                     ; $5530: $74
	sbc  [hl]                                        ; $5531: $9e
	inc  bc                                          ; $5532: $03
	ld   e, a                                        ; $5533: $5f
	inc  b                                           ; $5534: $04
	dec  b                                           ; $5535: $05
	ld   a, c                                        ; $5536: $79
	dec  c                                           ; $5537: $0d
	inc  bc                                          ; $5538: $03
	ld   c, [hl]                                     ; $5539: $4e
	ld   [hl], d                                     ; $553a: $72
	ld   h, c                                        ; $553b: $61
	halt                                             ; $553c: $76
	ld   a, h                                        ; $553d: $7c
	ld   [hl], l                                     ; $553e: $75
	ld   e, e                                        ; $553f: $5b
	ld   a, b                                        ; $5540: $78
	ld   d, d                                        ; $5541: $52
	ld   [bc], a                                     ; $5542: $02
	ld   a, [de]                                     ; $5543: $1a
	inc  bc                                          ; $5544: $03
	ld   l, e                                        ; $5545: $6b
	ld   a, l                                        ; $5546: $7d
	dec  c                                           ; $5547: $0d
	inc  bc                                          ; $5548: $03
	sub  d                                           ; $5549: $92
	inc  b                                           ; $554a: $04
	ld   l, $6e                                      ; $554b: $2e $6e
	ld   e, a                                        ; $554d: $5f
	ld   l, [hl]                                     ; $554e: $6e
	ld   e, c                                        ; $554f: $59
	sub  a                                           ; $5550: $97
	ld   a, b                                        ; $5551: $78
	sbc  a                                           ; $5552: $9f
	dec  c                                           ; $5553: $0d
	nop                                              ; $5554: $00
	ld   a, [bc]                                     ; $5555: $0a
	inc  e                                           ; $5556: $1c
	ld   b, $01                                      ; $5557: $06 $01
	ld   bc, $ff01                                   ; $5559: $01 $01 $ff
	rst  $38                                         ; $555c: $ff
	ld   l, e                                        ; $555d: $6b
	sbc  d                                           ; $555e: $9a
	halt                                             ; $555f: $76
	sub  b                                           ; $5560: $90
	ld   d, h                                        ; $5561: $54
	ld   [bc], a                                     ; $5562: $02
	jr   nz, jr_05f_55d7                             ; $5563: $20 $72

	ld   a, l                                        ; $5565: $7d
	sbc  [hl]                                        ; $5566: $9e
	dec  c                                           ; $5567: $0d
	inc  bc                                          ; $5568: $03
	xor  c                                           ; $5569: $a9
	ld   e, c                                        ; $556a: $59
	and  b                                           ; $556b: $a0
	inc  bc                                          ; $556c: $03
	sub  e                                           ; $556d: $93
	sbc  c                                           ; $556e: $99
	ld   l, l                                        ; $556f: $6d
	adc  a                                           ; $5570: $8f
	ld   a, c                                        ; $5571: $79
	dec  c                                           ; $5572: $0d
	ld   [bc], a                                     ; $5573: $02
	call nc, Call_05f_785d                           ; $5574: $d4 $5d $78
	sbc  b                                           ; $5577: $98
	ld   l, l                                        ; $5578: $6d
	ld   d, d                                        ; $5579: $52
	ld   [hl], c                                     ; $557a: $71
	ld   [hl], h                                     ; $557b: $74
	ld   h, c                                        ; $557c: $61
	halt                                             ; $557d: $76
	ld   e, c                                        ; $557e: $59
	ld   a, b                                        ; $557f: $78
	rst  $38                                         ; $5580: $ff

jr_05f_5581:
	rst  $38                                         ; $5581: $ff
	dec  c                                           ; $5582: $0d
	nop                                              ; $5583: $00
	ld   a, [bc]                                     ; $5584: $0a
	ld   bc, $d402                                   ; $5585: $01 $02 $d4
	ld   e, l                                        ; $5588: $5d
	ld   a, b                                        ; $5589: $78
	sbc  c                                           ; $558a: $99
	ld   [hl], c                                     ; $558b: $71
	ld   [hl], h                                     ; $558c: $74
	ld   d, d                                        ; $558d: $52
	ld   d, h                                        ; $558e: $54
	ld   a, h                                        ; $558f: $7c
	ld   a, l                                        ; $5590: $7d
	sbc  [hl]                                        ; $5591: $9e
	dec  c                                           ; $5592: $0d
	dec  b                                           ; $5593: $05
	ld   a, [bc]                                     ; $5594: $0a
	ld   l, [hl]                                     ; $5595: $6e
	ld   e, a                                        ; $5596: $5f
	ld   [hl], l                                     ; $5597: $75
	ld   a, b                                        ; $5598: $78
	ld   e, l                                        ; $5599: $5d
	sbc  [hl]                                        ; $559a: $9e
	dec  c                                           ; $559b: $0d
	inc  bc                                          ; $559c: $03
	ld   [hl], l                                     ; $559d: $75
	sub  b                                           ; $559e: $90
	ld   [hl], c                                     ; $559f: $71
	ld   [hl], h                                     ; $55a0: $74
	ld   h, c                                        ; $55a1: $61
	halt                                             ; $55a2: $76
	ld   l, [hl]                                     ; $55a3: $6e
	ld   l, d                                        ; $55a4: $6a
	sbc  a                                           ; $55a5: $9f
	dec  c                                           ; $55a6: $0d
	nop                                              ; $55a7: $00
	ld   a, [bc]                                     ; $55a8: $0a
	add  hl, de                                      ; $55a9: $19
	dec  b                                           ; $55aa: $05
	inc  bc                                          ; $55ab: $03
	inc  b                                           ; $55ac: $04
	ld   l, l                                        ; $55ad: $6d
	and  b                                           ; $55ae: $a0
	inc  bc                                          ; $55af: $03
	sub  e                                           ; $55b0: $93
	ld   [hl], c                                     ; $55b1: $71
	ld   [hl], h                                     ; $55b2: $74
	ld   [bc], a                                     ; $55b3: $02
	inc  [hl]                                        ; $55b4: $34
	ld   h, e                                        ; $55b5: $63
	ld   d, d                                        ; $55b6: $52
	nop                                              ; $55b7: $00
	nop                                              ; $55b8: $00
	inc  bc                                          ; $55b9: $03
	sub  d                                           ; $55ba: $92
	inc  b                                           ; $55bb: $04
	ld   l, $79                                      ; $55bc: $2e $79
	ld   a, b                                        ; $55be: $78
	sbc  b                                           ; $55bf: $98
	ld   l, l                                        ; $55c0: $6d
	ld   d, d                                        ; $55c1: $52
	ld   a, h                                        ; $55c2: $7c
	ld   [hl], l                                     ; $55c3: $75
	ld   h, a                                        ; $55c4: $67
	ld   e, c                                        ; $55c5: $59
	ld   sp, hl                                      ; $55c6: $f9
	nop                                              ; $55c7: $00
	ld   bc, $f5ac                                   ; $55c8: $01 $ac $f5
	bit  4, e                                        ; $55cb: $cb $63
	and  c                                           ; $55cd: $a1
	ld   a, b                                        ; $55ce: $78
	sub  a                                           ; $55cf: $97
	ld   [hl], l                                     ; $55d0: $75
	ld   e, e                                        ; $55d1: $5b
	sbc  c                                           ; $55d2: $99
	nop                                              ; $55d3: $00
	ld   [bc], a                                     ; $55d4: $02
	rlca                                             ; $55d5: $07
	ld   [hl], c                                     ; $55d6: $71

jr_05f_55d7:
	ld   bc, $0302                                   ; $55d7: $01 $02 $03
	ld   bc, $2000                                   ; $55da: $01 $00 $20
	nop                                              ; $55dd: $00
	rlca                                             ; $55de: $07
	add  $01                                         ; $55df: $c6 $01
	ld   [bc], a                                     ; $55e1: $02
	inc  bc                                          ; $55e2: $03
	ld   bc, $2001                                   ; $55e3: $01 $01 $20
	nop                                              ; $55e6: $00
	rlca                                             ; $55e7: $07
	inc  bc                                          ; $55e8: $03
	ld   [bc], a                                     ; $55e9: $02
	ld   [bc], a                                     ; $55ea: $02
	inc  bc                                          ; $55eb: $03
	ld   bc, $2002                                   ; $55ec: $01 $02 $20
	nop                                              ; $55ef: $00
	ld   b, $40                                      ; $55f0: $06 $40
	ld   [bc], a                                     ; $55f2: $02
	rrca                                             ; $55f3: $0f
	nop                                              ; $55f4: $00
	ld   bc, $0401                                   ; $55f5: $01 $01 $04
	ld   l, l                                        ; $55f8: $6d
	sbc  [hl]                                        ; $55f9: $9e
	xor  h                                           ; $55fa: $ac
	push af                                          ; $55fb: $f5
	bit  4, e                                        ; $55fc: $cb $63
	and  c                                           ; $55fe: $a1
	ld   a, c                                        ; $55ff: $79
	inc  bc                                          ; $5600: $03
	sub  e                                           ; $5601: $93
	ld   [hl], c                                     ; $5602: $71
	ld   [hl], h                                     ; $5603: $74
	dec  c                                           ; $5604: $0d
	sub  b                                           ; $5605: $90
	sub  a                                           ; $5606: $97
	ld   [hl], c                                     ; $5607: $71
	ld   l, a                                        ; $5608: $6f
	sub  c                                           ; $5609: $91
	ld   e, b                                        ; $560a: $58
	ld   d, h                                        ; $560b: $54
	ld   e, c                                        ; $560c: $59
	ld   a, b                                        ; $560d: $78
	db   $fc                                         ; $560e: $fc
	sbc  a                                           ; $560f: $9f
	dec  c                                           ; $5610: $0d
	nop                                              ; $5611: $00
	ld   a, [bc]                                     ; $5612: $0a
	inc  e                                           ; $5613: $1c
	ld   b, $02                                      ; $5614: $06 $02
	ld   [bc], a                                     ; $5616: $02
	dec  e                                           ; $5617: $1d
	ld   b, b                                        ; $5618: $40
	ld   d, $03                                      ; $5619: $16 $03
	ld   d, $01                                      ; $561b: $16 $01
	inc  bc                                          ; $561d: $03
	add  hl, hl                                      ; $561e: $29
	nop                                              ; $561f: $00
	ld   bc, $acd1                                   ; $5620: $01 $d1 $ac
	ld   e, c                                        ; $5623: $59
	ld   a, [$5810]                                  ; $5624: $fa $10 $58
	inc  bc                                          ; $5627: $03
	ld   c, a                                        ; $5628: $4f
	ld   a, l                                        ; $5629: $7d
	sbc  a                                           ; $562a: $9f
	dec  c                                           ; $562b: $0d
	ld   l, c                                        ; $562c: $69
	adc  a                                           ; $562d: $8f
	ld   [hl], h                                     ; $562e: $74
	sbc  [hl]                                        ; $562f: $9e
	ld   d, b                                        ; $5630: $50
	ld   l, l                                        ; $5631: $6d
	ld   d, d                                        ; $5632: $52
	and  b                                           ; $5633: $a0
	inc  bc                                          ; $5634: $03
	sub  e                                           ; $5635: $93
	sbc  d                                           ; $5636: $9a
	sbc  c                                           ; $5637: $99
	ld   e, [hl]                                     ; $5638: $5e
	sub  a                                           ; $5639: $97
	ld   d, d                                        ; $563a: $52
	dec  c                                           ; $563b: $0d
	ld   a, c                                        ; $563c: $79
	ld   a, b                                        ; $563d: $78
	sbc  d                                           ; $563e: $9a
	sub  [hl]                                        ; $563f: $96
	ld   a, b                                        ; $5640: $78
	ld   a, [$000d]                                  ; $5641: $fa $0d $00
	ld   a, [bc]                                     ; $5644: $0a
	ld   b, $40                                      ; $5645: $06 $40
	ld   [bc], a                                     ; $5647: $02
	rrca                                             ; $5648: $0f
	nop                                              ; $5649: $00
	ld   bc, $0301                                   ; $564a: $01 $01 $03
	sub  d                                           ; $564d: $92
	inc  b                                           ; $564e: $04
	ld   l, $79                                      ; $564f: $2e $79
	ld   a, b                                        ; $5651: $78
	sbc  b                                           ; $5652: $98
	ld   l, l                                        ; $5653: $6d
	ld   d, d                                        ; $5654: $52
	and  c                                           ; $5655: $a1
	ld   [hl], l                                     ; $5656: $75
	ld   h, a                                        ; $5657: $67
	ld   e, c                                        ; $5658: $59
	ld   sp, hl                                      ; $5659: $f9
	dec  c                                           ; $565a: $0d
	nop                                              ; $565b: $00
	ld   a, [bc]                                     ; $565c: $0a
	inc  e                                           ; $565d: $1c
	ld   b, $03                                      ; $565e: $06 $03
	inc  bc                                          ; $5660: $03
	dec  e                                           ; $5661: $1d
	ld   b, b                                        ; $5662: $40
	ld   d, $03                                      ; $5663: $16 $03
	ld   d, $01                                      ; $5665: $16 $01
	ld   bc, $0029                                   ; $5667: $01 $29 $00
	ld   bc, $9e58                                   ; $566a: $01 $58 $9e
	ld   e, b                                        ; $566d: $58
	inc  bc                                          ; $566e: $03
	ld   c, a                                        ; $566f: $4f
	rst  $38                                         ; $5670: $ff
	rst  $38                                         ; $5671: $ff
	dec  c                                           ; $5672: $0d
	inc  b                                           ; $5673: $04
	ld   c, c                                        ; $5674: $49
	ld   [bc], a                                     ; $5675: $02
	jp   nz, Jump_05f_7452                           ; $5676: $c2 $52 $74

	ld   l, l                                        ; $5679: $6d
	and  c                                           ; $567a: $a1
	ld   l, [hl]                                     ; $567b: $6e
	sub  [hl]                                        ; $567c: $96
	rst  $38                                         ; $567d: $ff
	rst  $38                                         ; $567e: $ff
	dec  c                                           ; $567f: $0d
	nop                                              ; $5680: $00
	ld   a, [bc]                                     ; $5681: $0a
	ld   b, $40                                      ; $5682: $06 $40
	ld   [bc], a                                     ; $5684: $02
	rrca                                             ; $5685: $0f
	nop                                              ; $5686: $00
	ld   bc, $0401                                   ; $5687: $01 $01 $04
	ld   c, $03                                      ; $568a: $0e $03
	sbc  l                                           ; $568c: $9d
	inc  b                                           ; $568d: $04
	and  [hl]                                        ; $568e: $a6
	sbc  a                                           ; $568f: $9f
	dec  c                                           ; $5690: $0d
	xor  h                                           ; $5691: $ac
	push af                                          ; $5692: $f5
	bit  4, e                                        ; $5693: $cb $63
	and  c                                           ; $5695: $a1
	ld   a, b                                        ; $5696: $78
	sub  a                                           ; $5697: $97
	ld   [hl], l                                     ; $5698: $75
	ld   e, e                                        ; $5699: $5b
	adc  h                                           ; $569a: $8c
	ld   h, a                                        ; $569b: $67
	sub  [hl]                                        ; $569c: $96
	sbc  a                                           ; $569d: $9f
	dec  c                                           ; $569e: $0d
	nop                                              ; $569f: $00
	ld   a, [bc]                                     ; $56a0: $0a
	inc  e                                           ; $56a1: $1c
	ld   b, $01                                      ; $56a2: $06 $01
	ld   bc, $401d                                   ; $56a4: $01 $1d $40
	ld   d, $03                                      ; $56a7: $16 $03
	ld   d, $01                                      ; $56a9: $16 $01
	ld   [bc], a                                     ; $56ab: $02
	jr   z, jr_05f_56ae                              ; $56ac: $28 $00

jr_05f_56ae:
	ld   bc, $546b                                   ; $56ae: $01 $6b $54
	ld   e, c                                        ; $56b1: $59
	rst  $38                                         ; $56b2: $ff
	rst  $38                                         ; $56b3: $ff
	dec  c                                           ; $56b4: $0d
	ld   d, b                                        ; $56b5: $50
	sbc  b                                           ; $56b6: $98
	ld   e, d                                        ; $56b7: $5a
	halt                                             ; $56b8: $76
	sub  [hl]                                        ; $56b9: $96
	rst  $38                                         ; $56ba: $ff
	rst  $38                                         ; $56bb: $ff
	dec  c                                           ; $56bc: $0d
	nop                                              ; $56bd: $00
	ld   a, [bc]                                     ; $56be: $0a
	ld   b, $40                                      ; $56bf: $06 $40
	ld   [bc], a                                     ; $56c1: $02
	inc  e                                           ; $56c2: $1c
	ld   b, $00                                      ; $56c3: $06 $00
	nop                                              ; $56c5: $00
	ld   bc, $9166                                   ; $56c6: $01 $66 $91
	ld   d, b                                        ; $56c9: $50
	sbc  [hl]                                        ; $56ca: $9e
	sub  b                                           ; $56cb: $90
	ld   d, h                                        ; $56cc: $54
	ld   e, b                                        ; $56cd: $58
	ld   l, e                                        ; $56ce: $6b
	ld   d, d                                        ; $56cf: $52
	ld   h, l                                        ; $56d0: $65
	dec  c                                           ; $56d1: $0d
	inc  b                                           ; $56d2: $04
	ld   b, d                                        ; $56d3: $42
	sbc  c                                           ; $56d4: $99
	halt                                             ; $56d5: $76
	ld   h, a                                        ; $56d6: $67
	sbc  c                                           ; $56d7: $99
	ld   e, c                                        ; $56d8: $59
	sbc  a                                           ; $56d9: $9f
	dec  c                                           ; $56da: $0d
	ld   e, b                                        ; $56db: $58
	sub  d                                           ; $56dc: $92
	ld   h, a                                        ; $56dd: $67
	adc  l                                           ; $56de: $8d
	sbc  [hl]                                        ; $56df: $9e
	ld   [$9f00], sp                                 ; $56e0: $08 $00 $9f
	dec  c                                           ; $56e3: $0d
	nop                                              ; $56e4: $00
	ld   a, [bc]                                     ; $56e5: $0a
	dec  c                                           ; $56e6: $0d
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	rrca                                             ; $56e9: $0f
	nop                                              ; $56ea: $00
	ld   bc, $1e09                                   ; $56eb: $01 $09 $1e
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	inc  e                                           ; $56f0: $1c
	inc  bc                                          ; $56f1: $03
	nop                                              ; $56f2: $00
	nop                                              ; $56f3: $00
	ld   [bc], a                                     ; $56f4: $02
	ld   bc, $9750                                   ; $56f5: $01 $50 $97
	sbc  [hl]                                        ; $56f8: $9e
	ld   [$5d00], sp                                 ; $56f9: $08 $00 $5d
	and  c                                           ; $56fc: $a1
	sbc  a                                           ; $56fd: $9f
	dec  c                                           ; $56fe: $0d
	nop                                              ; $56ff: $00
	ld   a, [bc]                                     ; $5700: $0a
	ld   bc, $0d04                                   ; $5701: $01 $04 $0d
	ld   [bc], a                                     ; $5704: $02
	sub  [hl]                                        ; $5705: $96
	inc  b                                           ; $5706: $04
	ld   b, l                                        ; $5707: $45
	inc  b                                           ; $5708: $04
	ld   a, [bc]                                     ; $5709: $0a
	sub  b                                           ; $570a: $90
	inc  bc                                          ; $570b: $03
	jr   z, jr_05f_5775                              ; $570c: $28 $67

	halt                                             ; $570e: $76
	ld   h, c                                        ; $570f: $61
	sbc  e                                           ; $5710: $9b
	dec  c                                           ; $5711: $0d
	ld   d, b                                        ; $5712: $50
	halt                                             ; $5713: $76
	ld   [bc], a                                     ; $5714: $02
	jr   nz, jr_05f_571a                             ; $5715: $20 $03

	ld   a, c                                        ; $5717: $79
	ld   [bc], a                                     ; $5718: $02
	xor  c                                           ; $5719: $a9

jr_05f_571a:
	ld   a, e                                        ; $571a: $7b
	rst  $38                                         ; $571b: $ff
	rst  $38                                         ; $571c: $ff
	dec  c                                           ; $571d: $0d
	nop                                              ; $571e: $00
	ld   a, [bc]                                     ; $571f: $0a
	ld   bc, $0008                                   ; $5720: $01 $08 $00
	ld   e, l                                        ; $5723: $5d
	and  c                                           ; $5724: $a1
	inc  bc                                          ; $5725: $03
	sub  h                                           ; $5726: $94
	inc  b                                           ; $5727: $04
	pop  de                                          ; $5728: $d1
	sbc  [hl]                                        ; $5729: $9e
	dec  c                                           ; $572a: $0d
	inc  b                                           ; $572b: $04
	ld   [$8f02], sp                                 ; $572c: $08 $02 $8f
	ld   [bc], a                                     ; $572f: $02
	sub  b                                           ; $5730: $90
	ld   [bc], a                                     ; $5731: $02
	sub  c                                           ; $5732: $91
	inc  b                                           ; $5733: $04
	add  hl, bc                                      ; $5734: $09
	ld   [hl], l                                     ; $5735: $75
	inc  b                                           ; $5736: $04
	ld   c, c                                        ; $5737: $49
	and  b                                           ; $5738: $a0
	ld   [bc], a                                     ; $5739: $02
	and  d                                           ; $573a: $a2
	and  c                                           ; $573b: $a1
	ld   l, [hl]                                     ; $573c: $6e
	ld   a, h                                        ; $573d: $7c
	dec  c                                           ; $573e: $0d
	ld   e, c                                        ; $573f: $59
	ld   h, l                                        ; $5740: $65
	sub  a                                           ; $5741: $97
	ld   sp, hl                                      ; $5742: $f9
	dec  c                                           ; $5743: $0d
	nop                                              ; $5744: $00
	ld   a, [bc]                                     ; $5745: $0a
	add  hl, de                                      ; $5746: $19
	dec  b                                           ; $5747: $05
	inc  bc                                          ; $5748: $03
	adc  h                                           ; $5749: $8c
	ld   h, [hl]                                     ; $574a: $66
	adc  a                                           ; $574b: $8f
	ld   a, c                                        ; $574c: $79
	inc  bc                                          ; $574d: $03
	call c, $9956                                    ; $574e: $dc $56 $99
	nop                                              ; $5751: $00
	nop                                              ; $5752: $00
	ld   e, c                                        ; $5753: $59
	ld   [hl], c                                     ; $5754: $71
	ld   h, c                                        ; $5755: $61
	sub  [hl]                                        ; $5756: $96
	ld   e, l                                        ; $5757: $5d
	inc  bc                                          ; $5758: $03
	call c, $9956                                    ; $5759: $dc $56 $99
	nop                                              ; $575c: $00
	ld   bc, $3602                                   ; $575d: $01 $02 $36
	ld   bc, $6514                                   ; $5760: $01 $14 $65
	ld   e, l                                        ; $5763: $5d
	inc  bc                                          ; $5764: $03
	call c, $9956                                    ; $5765: $dc $56 $99
	nop                                              ; $5768: $00
	ld   [bc], a                                     ; $5769: $02
	rlca                                             ; $576a: $07
	sbc  b                                           ; $576b: $98
	nop                                              ; $576c: $00
	ld   [bc], a                                     ; $576d: $02
	inc  bc                                          ; $576e: $03
	ld   bc, $2000                                   ; $576f: $01 $00 $20
	nop                                              ; $5772: $00
	rlca                                             ; $5773: $07
	rst  $20                                         ; $5774: $e7

jr_05f_5775:
	nop                                              ; $5775: $00
	ld   [bc], a                                     ; $5776: $02
	inc  bc                                          ; $5777: $03
	ld   bc, $2001                                   ; $5778: $01 $01 $20
	nop                                              ; $577b: $00
	rlca                                             ; $577c: $07
	ld   d, d                                        ; $577d: $52
	ld   bc, $0302                                   ; $577e: $01 $02 $03
	ld   bc, $2002                                   ; $5781: $01 $02 $20
	nop                                              ; $5784: $00
	ld   b, $c4                                      ; $5785: $06 $c4
	ld   bc, $000f                                   ; $5787: $01 $0f $00
	ld   bc, $0301                                   ; $578a: $01 $01 $03
	dec  bc                                          ; $578d: $0b
	ld   bc, $7814                                   ; $578e: $01 $14 $78
	ld   h, c                                        ; $5791: $61
	halt                                             ; $5792: $76
	and  b                                           ; $5793: $a0
	rst  $38                                         ; $5794: $ff
	rst  $38                                         ; $5795: $ff
	dec  c                                           ; $5796: $0d
	ld   h, a                                        ; $5797: $67
	ld   h, d                                        ; $5798: $62
	ld   e, l                                        ; $5799: $5d
	inc  bc                                          ; $579a: $03
	sub  h                                           ; $579b: $94
	inc  b                                           ; $579c: $04
	sbc  [hl]                                        ; $579d: $9e
	ld   a, h                                        ; $579e: $7c
	ld   l, l                                        ; $579f: $6d
	adc  a                                           ; $57a0: $8f
	ld   a, c                                        ; $57a1: $79
	dec  c                                           ; $57a2: $0d
	ld   a, b                                        ; $57a3: $78
	sbc  b                                           ; $57a4: $98
	adc  h                                           ; $57a5: $8c
	ld   h, l                                        ; $57a6: $65
	ld   l, l                                        ; $57a7: $6d
	sbc  a                                           ; $57a8: $9f
	dec  c                                           ; $57a9: $0d
	nop                                              ; $57aa: $00
	ld   a, [bc]                                     ; $57ab: $0a
	inc  e                                           ; $57ac: $1c
	inc  bc                                          ; $57ad: $03
	inc  bc                                          ; $57ae: $03
	inc  bc                                          ; $57af: $03
	dec  e                                           ; $57b0: $1d
	ld   b, b                                        ; $57b1: $40
	inc  de                                          ; $57b2: $13
	inc  bc                                          ; $57b3: $03
	inc  de                                          ; $57b4: $13
	ld   bc, $2803                                   ; $57b5: $01 $03 $28
	nop                                              ; $57b8: $00
	ld   bc, $546b                                   ; $57b9: $01 $6b $54
	rst  $38                                         ; $57bc: $ff
	rst  $38                                         ; $57bd: $ff
	dec  c                                           ; $57be: $0d
	ld   l, e                                        ; $57bf: $6b
	ld   d, h                                        ; $57c0: $54
	ld   [bc], a                                     ; $57c1: $02
	sbc  l                                           ; $57c2: $9d
	ld   [hl], c                                     ; $57c3: $71
	ld   [hl], h                                     ; $57c4: $74
	sub  b                                           ; $57c5: $90
	sub  a                                           ; $57c6: $97
	ld   d, [hl]                                     ; $57c7: $56
	sbc  c                                           ; $57c8: $99
	halt                                             ; $57c9: $76
	dec  c                                           ; $57ca: $0d
	ld   d, h                                        ; $57cb: $54
	sbc  d                                           ; $57cc: $9a
	ld   h, l                                        ; $57cd: $65
	ld   d, d                                        ; $57ce: $52
	sbc  l                                           ; $57cf: $9d
	sbc  a                                           ; $57d0: $9f
	dec  c                                           ; $57d1: $0d
	nop                                              ; $57d2: $00
	ld   a, [bc]                                     ; $57d3: $0a
	ld   b, $26                                      ; $57d4: $06 $26
	ld   bc, $000f                                   ; $57d6: $01 $0f $00
	ld   bc, $0101                                   ; $57d9: $01 $01 $01
	rlca                                             ; $57dc: $07
	ld   [bc], a                                     ; $57dd: $02
	dec  hl                                          ; $57de: $2b
	ld   bc, $9208                                   ; $57df: $01 $08 $92
	ld   bc, $0607                                   ; $57e2: $01 $07 $06
	add  hl, hl                                      ; $57e5: $29
	ld   [bc], a                                     ; $57e6: $02
	and  c                                           ; $57e7: $a1
	ld   bc, $a008                                   ; $57e8: $01 $08 $a0
	dec  c                                           ; $57eb: $0d
	ld   [bc], a                                     ; $57ec: $02
	and  d                                           ; $57ed: $a2
	add  c                                           ; $57ee: $81
	adc  h                                           ; $57ef: $8c
	ld   h, l                                        ; $57f0: $65
	ld   l, l                                        ; $57f1: $6d
	sbc  a                                           ; $57f2: $9f
	dec  c                                           ; $57f3: $0d
	nop                                              ; $57f4: $00
	ld   a, [bc]                                     ; $57f5: $0a
	inc  e                                           ; $57f6: $1c
	inc  bc                                          ; $57f7: $03
	inc  bc                                          ; $57f8: $03
	inc  bc                                          ; $57f9: $03
	dec  e                                           ; $57fa: $1d
	ld   b, b                                        ; $57fb: $40
	inc  de                                          ; $57fc: $13
	inc  bc                                          ; $57fd: $03
	inc  de                                          ; $57fe: $13
	ld   bc, $2801                                   ; $57ff: $01 $01 $28
	nop                                              ; $5802: $00
	ld   bc, $546b                                   ; $5803: $01 $6b $54
	rst  $38                                         ; $5806: $ff
	rst  $38                                         ; $5807: $ff
	dec  b                                           ; $5808: $05
	dec  d                                           ; $5809: $15
	ld   e, c                                        ; $580a: $59
	ld   [hl], c                                     ; $580b: $71
	ld   l, l                                        ; $580c: $6d
	sbc  l                                           ; $580d: $9d
	ld   a, e                                        ; $580e: $7b
	sbc  a                                           ; $580f: $9f
	dec  c                                           ; $5810: $0d
	nop                                              ; $5811: $00
	ld   a, [bc]                                     ; $5812: $0a
	ld   b, $26                                      ; $5813: $06 $26
	ld   bc, $0201                                   ; $5815: $01 $01 $02
	sub  l                                           ; $5818: $95
	ld   [bc], a                                     ; $5819: $02
	sub  e                                           ; $581a: $93
	sbc  b                                           ; $581b: $98
	ld   a, h                                        ; $581c: $7c
	inc  b                                           ; $581d: $04
	ld   [hl-], a                                    ; $581e: $32
	inc  b                                           ; $581f: $04
	dec  bc                                          ; $5820: $0b
	ld   a, c                                        ; $5821: $79
	ld   [bc], a                                     ; $5822: $02
	jr   z, jr_05f_587e                              ; $5823: $28 $59

	ld   [hl], c                                     ; $5825: $71
	ld   l, l                                        ; $5826: $6d
	sbc  l                                           ; $5827: $9d
	ld   a, e                                        ; $5828: $7b
	sbc  a                                           ; $5829: $9f
	dec  c                                           ; $582a: $0d
	ld   h, [hl]                                     ; $582b: $66
	sub  c                                           ; $582c: $91
	sbc  [hl]                                        ; $582d: $9e
	ld   e, b                                        ; $582e: $58
	sub  d                                           ; $582f: $92
	ld   h, a                                        ; $5830: $67
	adc  l                                           ; $5831: $8d
	ld   a, b                                        ; $5832: $78
	ld   h, e                                        ; $5833: $63
	ld   d, d                                        ; $5834: $52
	sbc  a                                           ; $5835: $9f
	dec  c                                           ; $5836: $0d
	nop                                              ; $5837: $00
	ld   a, [bc]                                     ; $5838: $0a
	dec  c                                           ; $5839: $0d
	nop                                              ; $583a: $00
	nop                                              ; $583b: $00
	rrca                                             ; $583c: $0f
	nop                                              ; $583d: $00
	ld   bc, $1e09                                   ; $583e: $01 $09 $1e
	nop                                              ; $5841: $00
	rrca                                             ; $5842: $0f
	nop                                              ; $5843: $00
	ld   bc, $0301                                   ; $5844: $01 $01 $03
	ld   l, [hl]                                     ; $5847: $6e
	ld   a, h                                        ; $5848: $7c
	inc  bc                                          ; $5849: $03
	add  [hl]                                        ; $584a: $86
	ld   a, l                                        ; $584b: $7d
	adc  [hl]                                        ; $584c: $8e
	ld   l, b                                        ; $584d: $68
	ld   e, c                                        ; $584e: $59
	ld   h, l                                        ; $584f: $65
	ld   d, d                                        ; $5850: $52
	ld   [hl], c                                     ; $5851: $71
	ld   [hl], h                                     ; $5852: $74
	ld   h, c                                        ; $5853: $61
	halt                                             ; $5854: $76
	and  b                                           ; $5855: $a0
	dec  c                                           ; $5856: $0d
	ld   [bc], a                                     ; $5857: $02
	and  d                                           ; $5858: $a2
	add  c                                           ; $5859: $81
	adc  h                                           ; $585a: $8c
	ld   h, l                                        ; $585b: $65
	ld   l, l                                        ; $585c: $6d
	sbc  a                                           ; $585d: $9f
	dec  c                                           ; $585e: $0d
	nop                                              ; $585f: $00
	ld   a, [bc]                                     ; $5860: $0a
	inc  e                                           ; $5861: $1c
	inc  bc                                          ; $5862: $03
	ld   [bc], a                                     ; $5863: $02
	ld   [bc], a                                     ; $5864: $02
	dec  e                                           ; $5865: $1d
	ld   b, b                                        ; $5866: $40
	inc  de                                          ; $5867: $13
	inc  bc                                          ; $5868: $03
	inc  de                                          ; $5869: $13
	ld   bc, $2903                                   ; $586a: $01 $03 $29
	nop                                              ; $586d: $00
	ld   bc, $7152                                   ; $586e: $01 $52 $71
	ld   l, l                                        ; $5871: $6d
	ld   d, d                                        ; $5872: $52
	inc  b                                           ; $5873: $04
	ld   c, c                                        ; $5874: $49
	ld   h, l                                        ; $5875: $65
	ld   a, c                                        ; $5876: $79
	dec  b                                           ; $5877: $05
	db   $10                                         ; $5878: $10
	ld   l, l                                        ; $5879: $6d
	ld   a, h                                        ; $587a: $7c
	ld   sp, hl                                      ; $587b: $f9
	dec  c                                           ; $587c: $0d
	ld   d, b                                        ; $587d: $50

jr_05f_587e:
	ld   a, b                                        ; $587e: $78
	ld   l, l                                        ; $587f: $6d
	ld   a, l                                        ; $5880: $7d
	rst  $38                                         ; $5881: $ff
	rst  $38                                         ; $5882: $ff
	dec  c                                           ; $5883: $0d
	nop                                              ; $5884: $00
	ld   a, [bc]                                     ; $5885: $0a
	dec  b                                           ; $5886: $05
	ld   b, b                                        ; $5887: $40
	ld   c, d                                        ; $5888: $4a
	ld   [bc], a                                     ; $5889: $02
	nop                                              ; $588a: $00
	nop                                              ; $588b: $00
	ld   bc, $5490                                   ; $588c: $01 $90 $54
	sbc  [hl]                                        ; $588f: $9e
	ld   d, b                                        ; $5890: $50
	ld   e, e                                        ; $5891: $5b
	sbc  d                                           ; $5892: $9a
	ld   [hl], h                                     ; $5893: $74
	inc  b                                           ; $5894: $04
	ld   c, c                                        ; $5895: $49
	sub  b                                           ; $5896: $90
	dec  c                                           ; $5897: $0d
	nop                                              ; $5898: $00
	dec  b                                           ; $5899: $05
	ld   b, b                                        ; $589a: $40
	ld   d, b                                        ; $589b: $50
	ld   bc, $0002                                   ; $589c: $01 $02 $00
	ld   bc, $9d02                                   ; $589f: $01 $02 $9d
	ld   d, [hl]                                     ; $58a2: $56
	ld   a, b                                        ; $58a3: $78
	ld   d, d                                        ; $58a4: $52
	sbc  l                                           ; $58a5: $9d
	rst  $38                                         ; $58a6: $ff
	rst  $38                                         ; $58a7: $ff
	dec  c                                           ; $58a8: $0d
	nop                                              ; $58a9: $00
	ld   a, [bc]                                     ; $58aa: $0a
	dec  c                                           ; $58ab: $0d
	nop                                              ; $58ac: $00
	nop                                              ; $58ad: $00
	rrca                                             ; $58ae: $0f
	nop                                              ; $58af: $00
	ld   bc, $1e09                                   ; $58b0: $01 $09 $1e

jr_05f_58b3:
	nop                                              ; $58b3: $00
	inc  e                                           ; $58b4: $1c
	inc  bc                                          ; $58b5: $03
	ld   [bc], a                                     ; $58b6: $02
	ld   [bc], a                                     ; $58b7: $02
	dec  e                                           ; $58b8: $1d
	ld   b, b                                        ; $58b9: $40
	inc  de                                          ; $58ba: $13
	inc  bc                                          ; $58bb: $03
	inc  de                                          ; $58bc: $13
	ld   bc, $2902                                   ; $58bd: $01 $02 $29
	nop                                              ; $58c0: $00
	ld   bc, $4904                                   ; $58c1: $01 $04 $49
	sub  b                                           ; $58c4: $90
	or   h                                           ; $58c5: $b4
	db   $e3                                         ; $58c6: $e3
	push af                                          ; $58c7: $f5
	ret                                              ; $58c8: $c9


	ld   a, l                                        ; $58c9: $7d
	ld   a, b                                        ; $58ca: $78
	ld   d, d                                        ; $58cb: $52
	sub  [hl]                                        ; $58cc: $96
	ld   d, h                                        ; $58cd: $54
	ld   a, e                                        ; $58ce: $7b
	rst  $38                                         ; $58cf: $ff
	rst  $38                                         ; $58d0: $ff
	dec  c                                           ; $58d1: $0d
	ld   [bc], a                                     ; $58d2: $02
	ld   a, b                                        ; $58d3: $78
	add  c                                           ; $58d4: $81
	inc  bc                                          ; $58d5: $03
	ld   b, c                                        ; $58d6: $41
	adc  a                                           ; $58d7: $8f
	ld   [hl], h                                     ; $58d8: $74
	ld   [bc], a                                     ; $58d9: $02
	jr   z, jr_05f_5935                              ; $58da: $28 $59

	ld   [hl], c                                     ; $58dc: $71
	ld   l, l                                        ; $58dd: $6d
	sbc  l                                           ; $58de: $9d
	sbc  a                                           ; $58df: $9f
	dec  c                                           ; $58e0: $0d
	nop                                              ; $58e1: $00
	ld   a, [bc]                                     ; $58e2: $0a
	dec  c                                           ; $58e3: $0d
	nop                                              ; $58e4: $00
	nop                                              ; $58e5: $00
	rrca                                             ; $58e6: $0f
	nop                                              ; $58e7: $00
	ld   bc, $1e09                                   ; $58e8: $01 $09 $1e
	nop                                              ; $58eb: $00
	nop                                              ; $58ec: $00
	ld   d, $16                                      ; $58ed: $16 $16
	rrca                                             ; $58ef: $0f
	nop                                              ; $58f0: $00
	ld   bc, $0102                                   ; $58f1: $01 $02 $01
	ld   bc, $5003                                   ; $58f4: $01 $03 $50
	rst  $38                                         ; $58f7: $ff
	rst  $38                                         ; $58f8: $ff
	and  e                                           ; $58f9: $a3
	and  l                                           ; $58fa: $a5
	db   $ec                                         ; $58fb: $ec
	cp   d                                           ; $58fc: $ba
	ld   e, d                                        ; $58fd: $5a
	dec  c                                           ; $58fe: $0d
	db   $10                                         ; $58ff: $10
	and  a                                           ; $5900: $a7
	ret                                              ; $5901: $c9


	and  a                                           ; $5902: $a7
	ret                                              ; $5903: $c9


	ld   h, l                                        ; $5904: $65
	ld   [hl], h                                     ; $5905: $74
	sbc  c                                           ; $5906: $99
	rst  $38                                         ; $5907: $ff
	rst  $38                                         ; $5908: $ff
	ld   bc, $0d04                                   ; $5909: $01 $04 $0d
	nop                                              ; $590c: $00
	ld   a, [bc]                                     ; $590d: $0a
	rrca                                             ; $590e: $0f
	inc  b                                           ; $590f: $04
	ld   [hl-], a                                    ; $5910: $32
	ld   bc, $7983                                   ; $5911: $01 $83 $79
	sub  e                                           ; $5914: $93
	rst  $38                                         ; $5915: $ff
	rst  $38                                         ; $5916: $ff
	dec  c                                           ; $5917: $0d
	nop                                              ; $5918: $00
	ld   a, [bc]                                     ; $5919: $0a
	add  hl, de                                      ; $591a: $19
	dec  b                                           ; $591b: $05
	ld   [bc], a                                     ; $591c: $02
	ld   l, e                                        ; $591d: $6b
	ld   [hl], c                                     ; $591e: $71
	halt                                             ; $591f: $76
	ld   h, l                                        ; $5920: $65
	ld   [hl], h                                     ; $5921: $74
	ld   e, b                                        ; $5922: $58
	ld   e, l                                        ; $5923: $5d
	nop                                              ; $5924: $00
	nop                                              ; $5925: $00
	inc  b                                           ; $5926: $04
	sub  l                                           ; $5927: $95
	ld   [bc], a                                     ; $5928: $02
	ld   hl, $758c                                   ; $5929: $21 $8c $75
	ld   [bc], a                                     ; $592c: $02
	jr   nc, jr_05f_58b3                             ; $592d: $30 $84

	nop                                              ; $592f: $00
	ld   bc, $ac07                                   ; $5930: $01 $07 $ac
	nop                                              ; $5933: $00
	ld   [bc], a                                     ; $5934: $02

jr_05f_5935:
	inc  bc                                          ; $5935: $03
	ld   bc, $2000                                   ; $5936: $01 $00 $20
	nop                                              ; $5939: $00
	rlca                                             ; $593a: $07
	call z, $0200                                    ; $593b: $cc $00 $02
	inc  bc                                          ; $593e: $03
	ld   bc, $2001                                   ; $593f: $01 $01 $20
	nop                                              ; $5942: $00
	ld   b, $59                                      ; $5943: $06 $59
	nop                                              ; $5945: $00
	rrca                                             ; $5946: $0f
	nop                                              ; $5947: $00
	ld   bc, $0101                                   ; $5948: $01 $01 $01
	inc  bc                                          ; $594b: $03
	ld   [hl], a                                     ; $594c: $77
	ld   d, h                                        ; $594d: $54
	ld   h, l                                        ; $594e: $65
	sub  [hl]                                        ; $594f: $96
	ld   d, h                                        ; $5950: $54
	rst  $38                                         ; $5951: $ff
	rst  $38                                         ; $5952: $ff
	ld   bc, $0d04                                   ; $5953: $01 $04 $0d
	nop                                              ; $5956: $00
	ld   a, [bc]                                     ; $5957: $0a
	rrca                                             ; $5958: $0f
	inc  b                                           ; $5959: $04
	ld   [hl-], a                                    ; $595a: $32
	ld   bc, $9e54                                   ; $595b: $01 $54 $9e
	ld   d, h                                        ; $595e: $54
	ei                                               ; $595f: $fb
	and  c                                           ; $5960: $a1
	rst  $38                                         ; $5961: $ff
	rst  $38                                         ; $5962: $ff
	dec  c                                           ; $5963: $0d
	nop                                              ; $5964: $00
	ld   a, [bc]                                     ; $5965: $0a
	inc  c                                           ; $5966: $0c
	ld   b, $0f                                      ; $5967: $06 $0f

jr_05f_5969:
	nop                                              ; $5969: $00
	ld   bc, $6501                                   ; $596a: $01 $01 $65
	sbc  [hl]                                        ; $596d: $9e
	ld   h, l                                        ; $596e: $65
	add  c                                           ; $596f: $81
	sbc  d                                           ; $5970: $9a
	sbc  c                                           ; $5971: $99
	db   $fc                                         ; $5972: $fc
	ld   a, [$000d]                                  ; $5973: $fa $0d $00
	ld   a, [bc]                                     ; $5976: $0a
	ld   sp, $2040                                   ; $5977: $31 $40 $20
	inc  bc                                          ; $597a: $03
	jr   nz, jr_05f_597e                             ; $597b: $20 $01

	ld   [hl-], a                                    ; $597d: $32

jr_05f_597e:
	add  hl, hl                                      ; $597e: $29
	nop                                              ; $597f: $00
	ld   b, $96                                      ; $5980: $06 $96
	nop                                              ; $5982: $00
	ld   bc, $0301                                   ; $5983: $01 $01 $03
	add  [hl]                                        ; $5986: $86
	sbc  [hl]                                        ; $5987: $9e
	inc  b                                           ; $5988: $04
	sub  l                                           ; $5989: $95
	ld   [bc], a                                     ; $598a: $02
	ld   hl, $9079                                   ; $598b: $21 $79 $90
	ld   [hl], a                                     ; $598e: $77
	sbc  e                                           ; $598f: $9b
	ld   d, h                                        ; $5990: $54
	rst  $38                                         ; $5991: $ff
	rst  $38                                         ; $5992: $ff
	ld   bc, $0d04                                   ; $5993: $01 $04 $0d
	nop                                              ; $5996: $00
	ld   a, [bc]                                     ; $5997: $0a
	nop                                              ; $5998: $00
	rrca                                             ; $5999: $0f
	nop                                              ; $599a: $00
	ld   bc, $0101                                   ; $599b: $01 $01 $01
	inc  bc                                          ; $599e: $03
	sub  [hl]                                        ; $599f: $96
	ld   e, l                                        ; $59a0: $5d
	inc  b                                           ; $59a1: $04
	ld   b, d                                        ; $59a2: $42
	ld   [hl], h                                     ; $59a3: $74
	sbc  c                                           ; $59a4: $99
	ld   e, c                                        ; $59a5: $59
	sub  a                                           ; $59a6: $97
	dec  c                                           ; $59a7: $0d
	db   $10                                         ; $59a8: $10
	ld   l, e                                        ; $59a9: $6b
	ld   [hl], c                                     ; $59aa: $71
	halt                                             ; $59ab: $76
	ld   h, l                                        ; $59ac: $65
	ld   [hl], h                                     ; $59ad: $74
	ld   e, b                                        ; $59ae: $58
	ld   h, c                                        ; $59af: $61
	ld   d, h                                        ; $59b0: $54
	rst  $38                                         ; $59b1: $ff
	rst  $38                                         ; $59b2: $ff
	ld   bc, $0d04                                   ; $59b3: $01 $04 $0d
	nop                                              ; $59b6: $00
	ld   a, [bc]                                     ; $59b7: $0a
	nop                                              ; $59b8: $00
	rrca                                             ; $59b9: $0f
	nop                                              ; $59ba: $00
	ld   bc, $0101                                   ; $59bb: $01 $01 $01
	inc  bc                                          ; $59be: $03
	inc  b                                           ; $59bf: $04
	sub  l                                           ; $59c0: $95
	ld   [bc], a                                     ; $59c1: $02
	ld   hl, $758c                                   ; $59c2: $21 $8c $75
	ld   [bc], a                                     ; $59c5: $02
	jr   nc, jr_05f_5969                             ; $59c6: $30 $a1

	ld   [hl], l                                     ; $59c8: $75
	ld   d, b                                        ; $59c9: $50
	ld   h, b                                        ; $59ca: $60
	sub  [hl]                                        ; $59cb: $96
	ld   d, h                                        ; $59cc: $54
	ld   bc, $0d04                                   ; $59cd: $01 $04 $0d
	nop                                              ; $59d0: $00
	ld   a, [bc]                                     ; $59d1: $0a
	dec  c                                           ; $59d2: $0d
	nop                                              ; $59d3: $00
	nop                                              ; $59d4: $00
	inc  hl                                          ; $59d5: $23
	ld   d, a                                        ; $59d6: $57
	inc  e                                           ; $59d7: $1c
	inc  b                                           ; $59d8: $04
	inc  b                                           ; $59d9: $04
	inc  b                                           ; $59da: $04
	ld   bc, $5683                                   ; $59db: $01 $83 $56
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	ld   h, c                                        ; $59e0: $61
	ld   h, c                                        ; $59e1: $61
	and  e                                           ; $59e2: $a3
	and  l                                           ; $59e3: $a5
	db   $ec                                         ; $59e4: $ec
	cp   d                                           ; $59e5: $ba
	ld   a, h                                        ; $59e6: $7c
	dec  c                                           ; $59e7: $0d
	ld   e, b                                        ; $59e8: $58
	add  [hl]                                        ; $59e9: $86
	sub  d                                           ; $59ea: $92
	rst  $38                                         ; $59eb: $ff
	rst  $38                                         ; $59ec: $ff
	ld   sp, hl                                      ; $59ed: $f9
	dec  c                                           ; $59ee: $0d
	nop                                              ; $59ef: $00
	ld   a, [bc]                                     ; $59f0: $0a
	inc  e                                           ; $59f1: $1c
	inc  b                                           ; $59f2: $04
	dec  b                                           ; $59f3: $05
	dec  b                                           ; $59f4: $05
	dec  e                                           ; $59f5: $1d
	ld   b, b                                        ; $59f6: $40
	inc  d                                           ; $59f7: $14
	inc  bc                                          ; $59f8: $03
	inc  d                                           ; $59f9: $14
	ld   bc, $2803                                   ; $59fa: $01 $03 $28
	nop                                              ; $59fd: $00
	ld   bc, $526f                                   ; $59fe: $01 $6f $52
	ld   [bc], a                                     ; $5a01: $02
	inc  de                                          ; $5a02: $13
	ld   l, a                                        ; $5a03: $6f
	sub  c                                           ; $5a04: $91
	and  c                                           ; $5a05: $a1
	sbc  [hl]                                        ; $5a06: $9e
	ld   l, [hl]                                     ; $5a07: $6e
	ld   [hl], c                                     ; $5a08: $71
	ld   h, c                                        ; $5a09: $61
	ld   h, l                                        ; $5a0a: $65
	ld   [hl], h                                     ; $5a0b: $74
	dec  c                                           ; $5a0c: $0d
	ld   e, l                                        ; $5a0d: $5d
	sbc  d                                           ; $5a0e: $9a
	ld   l, l                                        ; $5a0f: $6d
	and  c                                           ; $5a10: $a1
	ld   l, [hl]                                     ; $5a11: $6e
	rst  $38                                         ; $5a12: $ff
	rst  $38                                         ; $5a13: $ff
	dec  c                                           ; $5a14: $0d
	ld   d, b                                        ; $5a15: $50
	sbc  b                                           ; $5a16: $98
	ld   e, d                                        ; $5a17: $5a
	halt                                             ; $5a18: $76
	ld   d, h                                        ; $5a19: $54
	sbc  a                                           ; $5a1a: $9f
	dec  c                                           ; $5a1b: $0d
	nop                                              ; $5a1c: $00
	ld   a, [bc]                                     ; $5a1d: $0a
	ld   de, $0100                                   ; $5a1e: $11 $00 $01
	ld   e, b                                        ; $5a21: $58
	sub  d                                           ; $5a22: $92
	ld   h, a                                        ; $5a23: $67
	adc  l                                           ; $5a24: $8d
	ld   a, b                                        ; $5a25: $78
	ld   h, e                                        ; $5a26: $63
	ld   d, d                                        ; $5a27: $52
	rst  $38                                         ; $5a28: $ff
	rst  $38                                         ; $5a29: $ff
	dec  c                                           ; $5a2a: $0d
	nop                                              ; $5a2b: $00
	ld   a, [bc]                                     ; $5a2c: $0a
	nop                                              ; $5a2d: $00
	nop                                              ; $5a2e: $00
	ld   c, $55                                      ; $5a2f: $0e $55
	inc  e                                           ; $5a31: $1c
	dec  b                                           ; $5a32: $05
	ld   bc, $0201                                   ; $5a33: $01 $01 $02
	ld   bc, $9e58                                   ; $5a36: $01 $58 $9e
	ld   [$7d00], sp                                 ; $5a39: $08 $00 $7d
	and  c                                           ; $5a3c: $a1
	sbc  a                                           ; $5a3d: $9f
	dec  c                                           ; $5a3e: $0d
	xor  c                                           ; $5a3f: $a9
	xor  c                                           ; $5a40: $a9
	halt                                             ; $5a41: $76
	ld   h, c                                        ; $5a42: $61
	ld   a, c                                        ; $5a43: $79
	ld   e, e                                        ; $5a44: $5b
	ld   l, l                                        ; $5a45: $6d
	sbc  a                                           ; $5a46: $9f
	dec  c                                           ; $5a47: $0d
	nop                                              ; $5a48: $00
	ld   a, [bc]                                     ; $5a49: $0a
	ld   bc, $956f                                   ; $5a4a: $01 $6f $95
	ld   [hl], c                                     ; $5a4d: $71
	halt                                             ; $5a4e: $76
	inc  bc                                          ; $5a4f: $03
	ld   l, e                                        ; $5a50: $6b
	inc  b                                           ; $5a51: $04
	ld   [de], a                                     ; $5a52: $12
	ld   [hl], c                                     ; $5a53: $71
	ld   [hl], h                                     ; $5a54: $74
	dec  c                                           ; $5a55: $0d
	inc  b                                           ; $5a56: $04
	db   $e3                                         ; $5a57: $e3
	ld   h, l                                        ; $5a58: $65
	ld   d, d                                        ; $5a59: $52
	ld   a, e                                        ; $5a5a: $7b
	and  c                                           ; $5a5b: $a1
	ld   e, a                                        ; $5a5c: $5f
	ld   [hl], a                                     ; $5a5d: $77
	rst  $38                                         ; $5a5e: $ff
	rst  $38                                         ; $5a5f: $ff
	dec  c                                           ; $5a60: $0d
	ld   [bc], a                                     ; $5a61: $02
	and  l                                           ; $5a62: $a5
	sbc  [hl]                                        ; $5a63: $9e
	db   $d3                                         ; $5a64: $d3
	rst  JumpTable                                         ; $5a65: $df
	ld   sp, hl                                      ; $5a66: $f9
	dec  c                                           ; $5a67: $0d
	nop                                              ; $5a68: $00
	ld   a, [bc]                                     ; $5a69: $0a
	add  hl, de                                      ; $5a6a: $19
	dec  b                                           ; $5a6b: $05
	ld   [bc], a                                     ; $5a6c: $02
	db   $d3                                         ; $5a6d: $d3
	rst  JumpTable                                         ; $5a6e: $df
	ld   [hl], l                                     ; $5a6f: $75
	ld   h, a                                        ; $5a70: $67
	nop                                              ; $5a71: $00
	nop                                              ; $5a72: $00
	ld   l, a                                        ; $5a73: $6f
	sub  l                                           ; $5a74: $95
	ld   [hl], c                                     ; $5a75: $71
	halt                                             ; $5a76: $76
	inc  b                                           ; $5a77: $04
	ld   [hl], l                                     ; $5a78: $75
	ld   h, l                                        ; $5a79: $65
	ld   d, d                                        ; $5a7a: $52
	nop                                              ; $5a7b: $00
	ld   bc, $6307                                   ; $5a7c: $01 $07 $63
	nop                                              ; $5a7f: $00
	ld   [bc], a                                     ; $5a80: $02
	inc  bc                                          ; $5a81: $03
	ld   bc, $2000                                   ; $5a82: $01 $00 $20
	nop                                              ; $5a85: $00
	rlca                                             ; $5a86: $07
	sbc  l                                           ; $5a87: $9d
	nop                                              ; $5a88: $00
	ld   [bc], a                                     ; $5a89: $02
	inc  bc                                          ; $5a8a: $03
	ld   bc, $2001                                   ; $5a8b: $01 $01 $20
	nop                                              ; $5a8e: $00
	ld   b, $e1                                      ; $5a8f: $06 $e1
	nop                                              ; $5a91: $00
	rrca                                             ; $5a92: $0f
	nop                                              ; $5a93: $00
	ld   bc, $5601                                   ; $5a94: $01 $01 $56
	ld   d, [hl]                                     ; $5a97: $56
	sbc  [hl]                                        ; $5a98: $9e
	ld   d, d                                        ; $5a99: $52
	ld   d, d                                        ; $5a9a: $52
	ld   [hl], l                                     ; $5a9b: $75
	ld   h, a                                        ; $5a9c: $67
	sub  [hl]                                        ; $5a9d: $96
	sbc  a                                           ; $5a9e: $9f
	dec  c                                           ; $5a9f: $0d
	inc  b                                           ; $5aa0: $04
	ld   l, l                                        ; $5aa1: $6d
	ld   [hl], l                                     ; $5aa2: $75
	ld   e, b                                        ; $5aa3: $58
	inc  b                                           ; $5aa4: $04
	db   $ec                                         ; $5aa5: $ec
	ld   a, c                                        ; $5aa6: $79
	dec  b                                           ; $5aa7: $05
	ld   d, $74                                      ; $5aa8: $16 $74
	sbc  c                                           ; $5aaa: $99
	ld   a, b                                        ; $5aab: $78
	sub  a                                           ; $5aac: $97
	sbc  a                                           ; $5aad: $9f
	dec  c                                           ; $5aae: $0d
	nop                                              ; $5aaf: $00
	ld   a, [bc]                                     ; $5ab0: $0a
	rrca                                             ; $5ab1: $0f
	dec  b                                           ; $5ab2: $05
	ld   bc, $8901                                   ; $5ab3: $01 $01 $89
	ld   a, b                                        ; $5ab6: $78
	sbc  [hl]                                        ; $5ab7: $9e
	ld   a, l                                        ; $5ab8: $7d
	ld   h, [hl]                                     ; $5ab9: $66
	adc  a                                           ; $5aba: $8f
	sub  [hl]                                        ; $5abb: $96
	ld   e, c                                        ; $5abc: $59
	sbc  a                                           ; $5abd: $9f
	dec  c                                           ; $5abe: $0d
	nop                                              ; $5abf: $00
	ld   a, [bc]                                     ; $5ac0: $0a
	dec  c                                           ; $5ac1: $0d
	nop                                              ; $5ac2: $00
	nop                                              ; $5ac3: $00
	rrca                                             ; $5ac4: $0f
	nop                                              ; $5ac5: $00
	ld   bc, $020c                                   ; $5ac6: $01 $0c $02
	ld   b, $00                                      ; $5ac9: $06 $00
	ld   bc, $000f                                   ; $5acb: $01 $0f $00
	ld   bc, $6701                                   ; $5ace: $01 $01 $67
	adc  l                                           ; $5ad1: $8d
	adc  h                                           ; $5ad2: $8c
	ld   l, c                                        ; $5ad3: $69
	and  c                                           ; $5ad4: $a1
	sbc  a                                           ; $5ad5: $9f
	dec  c                                           ; $5ad6: $0d
	ld   l, a                                        ; $5ad7: $6f
	sub  l                                           ; $5ad8: $95
	ld   [hl], c                                     ; $5ad9: $71
	halt                                             ; $5ada: $76
	ld   h, c                                        ; $5adb: $61
	ld   a, h                                        ; $5adc: $7c
	ld   [bc], a                                     ; $5add: $02
	xor  d                                           ; $5ade: $aa
	dec  c                                           ; $5adf: $0d
	dec  b                                           ; $5ae0: $05
	ld   e, a                                        ; $5ae1: $5f
	inc  bc                                          ; $5ae2: $03
	call nc, Call_05f_505a                           ; $5ae3: $d4 $5a $50
	sbc  b                                           ; $5ae6: $98
	adc  h                                           ; $5ae7: $8c
	ld   h, l                                        ; $5ae8: $65
	ld   [hl], h                                     ; $5ae9: $74
	rst  $38                                         ; $5aea: $ff
	rst  $38                                         ; $5aeb: $ff
	sbc  a                                           ; $5aec: $9f
	dec  c                                           ; $5aed: $0d
	nop                                              ; $5aee: $00
	ld   a, [bc]                                     ; $5aef: $0a
	inc  e                                           ; $5af0: $1c
	dec  b                                           ; $5af1: $05
	ld   [bc], a                                     ; $5af2: $02
	ld   [bc], a                                     ; $5af3: $02
	ld   bc, $546b                                   ; $5af4: $01 $6b $54
	ld   e, c                                        ; $5af7: $59
	sbc  [hl]                                        ; $5af8: $9e
	ld   h, l                                        ; $5af9: $65
	sub  c                                           ; $5afa: $91
	ei                                               ; $5afb: $fb
	ld   a, b                                        ; $5afc: $78
	ld   d, d                                        ; $5afd: $52
	ld   a, b                                        ; $5afe: $78
	ei                                               ; $5aff: $fb
	sbc  a                                           ; $5b00: $9f
	dec  c                                           ; $5b01: $0d
	adc  c                                           ; $5b02: $89
	ld   a, b                                        ; $5b03: $78
	sbc  [hl]                                        ; $5b04: $9e
	adc  h                                           ; $5b05: $8c
	ld   l, l                                        ; $5b06: $6d
	inc  b                                           ; $5b07: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b08: $cf
	inc  b                                           ; $5b09: $04
	xor  d                                           ; $5b0a: $aa
	sbc  a                                           ; $5b0b: $9f
	dec  c                                           ; $5b0c: $0d
	nop                                              ; $5b0d: $00
	ld   a, [bc]                                     ; $5b0e: $0a
	nop                                              ; $5b0f: $00
	rrca                                             ; $5b10: $0f
	dec  b                                           ; $5b11: $05
	ld   bc, $9601                                   ; $5b12: $01 $01 $96
	ld   h, l                                        ; $5b15: $65
	sbc  [hl]                                        ; $5b16: $9e
	adc  c                                           ; $5b17: $89
	ld   a, b                                        ; $5b18: $78
	inc  bc                                          ; $5b19: $03
	ld   l, e                                        ; $5b1a: $6b
	inc  b                                           ; $5b1b: $04
	ld   [de], a                                     ; $5b1c: $12
	ld   [hl], c                                     ; $5b1d: $71
	ld   [hl], h                                     ; $5b1e: $74
	sub  b                                           ; $5b1f: $90
	sub  a                                           ; $5b20: $97
	ld   e, b                                        ; $5b21: $58
	ld   e, c                                        ; $5b22: $59
	sbc  a                                           ; $5b23: $9f
	dec  c                                           ; $5b24: $0d
	nop                                              ; $5b25: $00
	ld   a, [bc]                                     ; $5b26: $0a
	dec  c                                           ; $5b27: $0d
	nop                                              ; $5b28: $00
	nop                                              ; $5b29: $00
	rrca                                             ; $5b2a: $0f
	nop                                              ; $5b2b: $00
	ld   bc, $020c                                   ; $5b2c: $01 $0c $02
	ld   a, [de]                                     ; $5b2f: $1a
	dec  b                                           ; $5b30: $05
	rlca                                             ; $5b31: $07
	rla                                              ; $5b32: $17
	ld   bc, $0402                                   ; $5b33: $01 $02 $04
	ld   bc, $2002                                   ; $5b36: $01 $02 $20
	nop                                              ; $5b39: $00
	rlca                                             ; $5b3a: $07
	ld   b, b                                        ; $5b3b: $40
	ld   bc, $0402                                   ; $5b3c: $01 $02 $04
	ld   bc, $2001                                   ; $5b3f: $01 $01 $20
	nop                                              ; $5b42: $00
	ld   b, $68                                      ; $5b43: $06 $68
	ld   bc, $550e                                   ; $5b45: $01 $0e $55
	inc  e                                           ; $5b48: $1c
	dec  b                                           ; $5b49: $05
	ld   bc, $1d01                                   ; $5b4a: $01 $01 $1d
	ld   b, b                                        ; $5b4d: $40
	dec  d                                           ; $5b4e: $15
	inc  bc                                          ; $5b4f: $03
	dec  d                                           ; $5b50: $15
	ld   bc, $2803                                   ; $5b51: $01 $03 $28
	nop                                              ; $5b54: $00
	ld   bc, $b5ba                                   ; $5b55: $01 $ba $b5
	and  l                                           ; $5b58: $a5
	sub  d                                           ; $5b59: $92
	and  c                                           ; $5b5a: $a1
	ld   a, [$080d]                                  ; $5b5b: $fa $0d $08
	nop                                              ; $5b5e: $00
	ld   a, l                                        ; $5b5f: $7d
	and  c                                           ; $5b60: $a1
	sbc  a                                           ; $5b61: $9f
	dec  c                                           ; $5b62: $0d
	ld   h, e                                        ; $5b63: $63
	ld   h, a                                        ; $5b64: $67
	ld   e, d                                        ; $5b65: $5a
	sub  d                                           ; $5b66: $92
	sbc  l                                           ; $5b67: $9d
	sbc  a                                           ; $5b68: $9f
	dec  c                                           ; $5b69: $0d
	nop                                              ; $5b6a: $00
	ld   a, [bc]                                     ; $5b6b: $0a
	ld   b, $98                                      ; $5b6c: $06 $98
	ld   bc, $550e                                   ; $5b6e: $01 $0e $55
	inc  e                                           ; $5b71: $1c
	dec  b                                           ; $5b72: $05
	nop                                              ; $5b73: $00
	nop                                              ; $5b74: $00
	dec  e                                           ; $5b75: $1d
	ld   b, b                                        ; $5b76: $40
	dec  d                                           ; $5b77: $15
	inc  bc                                          ; $5b78: $03
	dec  d                                           ; $5b79: $15
	ld   bc, $2801                                   ; $5b7a: $01 $01 $28
	nop                                              ; $5b7d: $00
	ld   bc, $a154                                   ; $5b7e: $01 $54 $a1
	sbc  a                                           ; $5b81: $9f
	ld   a, b                                        ; $5b82: $78
	ld   e, c                                        ; $5b83: $59
	ld   a, b                                        ; $5b84: $78
	ld   e, c                                        ; $5b85: $59
	sub  d                                           ; $5b86: $92
	sbc  c                                           ; $5b87: $99
	sub  d                                           ; $5b88: $92
	and  c                                           ; $5b89: $a1
	sbc  a                                           ; $5b8a: $9f
	dec  c                                           ; $5b8b: $0d
	ld   [$7d00], sp                                 ; $5b8c: $08 $00 $7d
	and  c                                           ; $5b8f: $a1
	sbc  a                                           ; $5b90: $9f
	dec  c                                           ; $5b91: $0d
	nop                                              ; $5b92: $00
	ld   a, [bc]                                     ; $5b93: $0a
	ld   b, $98                                      ; $5b94: $06 $98
	ld   bc, $550e                                   ; $5b96: $01 $0e $55
	inc  e                                           ; $5b99: $1c
	dec  b                                           ; $5b9a: $05
	ld   [bc], a                                     ; $5b9b: $02
	ld   [bc], a                                     ; $5b9c: $02
	dec  e                                           ; $5b9d: $1d
	ld   b, b                                        ; $5b9e: $40
	dec  d                                           ; $5b9f: $15
	inc  bc                                          ; $5ba0: $03
	dec  d                                           ; $5ba1: $15
	ld   bc, $2902                                   ; $5ba2: $01 $02 $29
	nop                                              ; $5ba5: $00
	ld   bc, $fc56                                   ; $5ba6: $01 $56 $fc
	sbc  [hl]                                        ; $5ba9: $9e
	ld   a, b                                        ; $5baa: $78
	and  c                                           ; $5bab: $a1
	sub  d                                           ; $5bac: $92
	ld   a, h                                        ; $5bad: $7c
	ld   h, c                                        ; $5bae: $61
	sbc  d                                           ; $5baf: $9a
	ld   a, l                                        ; $5bb0: $7d
	sbc  a                                           ; $5bb1: $9f
	dec  c                                           ; $5bb2: $0d
	sub  b                                           ; $5bb3: $90
	ld   [hl], c                                     ; $5bb4: $71
	halt                                             ; $5bb5: $76
	ld   e, d                                        ; $5bb6: $5a
	and  c                                           ; $5bb7: $a1
	ld   a, [hl]                                     ; $5bb8: $7e
	sub  a                                           ; $5bb9: $97
	ld   a, b                                        ; $5bba: $78
	and  e                                           ; $5bbb: $a3
	xor  h                                           ; $5bbc: $ac
	push af                                          ; $5bbd: $f5
	sub  d                                           ; $5bbe: $92
	and  c                                           ; $5bbf: $a1
	sbc  a                                           ; $5bc0: $9f
	dec  c                                           ; $5bc1: $0d
	nop                                              ; $5bc2: $00
	ld   a, [bc]                                     ; $5bc3: $0a
	ld   b, $98                                      ; $5bc4: $06 $98
	ld   bc, $051c                                   ; $5bc6: $01 $1c $05
	nop                                              ; $5bc9: $00
	nop                                              ; $5bca: $00
	ld   bc, $7150                                   ; $5bcb: $01 $50 $71
	sbc  [hl]                                        ; $5bce: $9e
	sub  b                                           ; $5bcf: $90
	ld   d, h                                        ; $5bd0: $54
	ld   h, c                                        ; $5bd1: $61
	and  c                                           ; $5bd2: $a1
	ld   a, b                                        ; $5bd3: $78
	inc  bc                                          ; $5bd4: $03
	ld   l, a                                        ; $5bd5: $6f
	ld   [bc], a                                     ; $5bd6: $02
	xor  c                                           ; $5bd7: $a9
	sub  d                                           ; $5bd8: $92
	sbc  a                                           ; $5bd9: $9f
	dec  c                                           ; $5bda: $0d
	ld   e, b                                        ; $5bdb: $58
	ld   e, b                                        ; $5bdc: $58
	ld   e, e                                        ; $5bdd: $5b
	ld   a, c                                        ; $5bde: $79
	ld   a, b                                        ; $5bdf: $78
	sbc  [hl]                                        ; $5be0: $9e
	ld   [$7d00], sp                                 ; $5be1: $08 $00 $7d
	and  c                                           ; $5be4: $a1
	sbc  a                                           ; $5be5: $9f
	dec  c                                           ; $5be6: $0d
	ld   e, b                                        ; $5be7: $58
	sub  d                                           ; $5be8: $92
	ld   h, a                                        ; $5be9: $67
	adc  l                                           ; $5bea: $8d
	sbc  a                                           ; $5beb: $9f
	dec  c                                           ; $5bec: $0d
	nop                                              ; $5bed: $00
	ld   a, [bc]                                     ; $5bee: $0a
	nop                                              ; $5bef: $00
	nop                                              ; $5bf0: $00
	ld   d, $36                                      ; $5bf1: $16 $36
	rrca                                             ; $5bf3: $0f
	nop                                              ; $5bf4: $00
	ld   bc, $0102                                   ; $5bf5: $01 $02 $01
	ld   bc, $5003                                   ; $5bf8: $01 $03 $50
	sbc  [hl]                                        ; $5bfb: $9e
	ld   h, a                                        ; $5bfc: $67
	adc  l                                           ; $5bfd: $8d
	sbc  d                                           ; $5bfe: $9a
	ld   h, e                                        ; $5bff: $63
	and  c                                           ; $5c00: $a1
	ld   e, d                                        ; $5c01: $5a
	dec  c                                           ; $5c02: $0d
	db   $10                                         ; $5c03: $10
	ld   [bc], a                                     ; $5c04: $02
	jr   nz, jr_05f_5c0a                             ; $5c05: $20 $03

	add  d                                           ; $5c07: $82
	ld   [hl], l                                     ; $5c08: $75
	ld   e, a                                        ; $5c09: $5f

jr_05f_5c0a:
	ld   d, d                                        ; $5c0a: $52
	ld   h, c                                        ; $5c0b: $61
	ld   h, l                                        ; $5c0c: $65
	ld   [hl], h                                     ; $5c0d: $74
	ld   d, d                                        ; $5c0e: $52
	sbc  c                                           ; $5c0f: $99
	rst  $38                                         ; $5c10: $ff
	ld   bc, $0d04                                   ; $5c11: $01 $04 $0d
	nop                                              ; $5c14: $00
	ld   a, [bc]                                     ; $5c15: $0a
	add  hl, de                                      ; $5c16: $19
	dec  b                                           ; $5c17: $05
	inc  bc                                          ; $5c18: $03
	ld   h, a                                        ; $5c19: $67
	adc  l                                           ; $5c1a: $8d
	sbc  d                                           ; $5c1b: $9a
	ld   h, e                                        ; $5c1c: $63
	and  c                                           ; $5c1d: $a1
	ld   [hl], h                                     ; $5c1e: $74
	inc  bc                                          ; $5c1f: $03
	db   $d3                                         ; $5c20: $d3
	dec  b                                           ; $5c21: $05
	ld   a, [bc]                                     ; $5c22: $0a
	ld   a, h                                        ; $5c23: $7c
	inc  bc                                          ; $5c24: $03
	add  d                                           ; $5c25: $82
	ld   a, b                                        ; $5c26: $78
	and  c                                           ; $5c27: $a1
	ld   l, [hl]                                     ; $5c28: $6e
	nop                                              ; $5c29: $00
	nop                                              ; $5c2a: $00
	ld   h, a                                        ; $5c2b: $67
	adc  l                                           ; $5c2c: $8d
	sbc  d                                           ; $5c2d: $9a
	ld   h, e                                        ; $5c2e: $63
	and  c                                           ; $5c2f: $a1
	ld   [hl], l                                     ; $5c30: $75
	sub  b                                           ; $5c31: $90
	dec  b                                           ; $5c32: $05
	add  hl, de                                      ; $5c33: $19
	inc  bc                                          ; $5c34: $03
	and  h                                           ; $5c35: $a4
	ld   h, a                                        ; $5c36: $67
	sbc  c                                           ; $5c37: $99
	and  c                                           ; $5c38: $a1
	ld   l, [hl]                                     ; $5c39: $6e
	nop                                              ; $5c3a: $00
	ld   bc, $f804                                   ; $5c3b: $01 $04 $f8
	ld   [bc], a                                     ; $5c3e: $02
	add  a                                           ; $5c3f: $87
	inc  b                                           ; $5c40: $04
	or   a                                           ; $5c41: $b7
	inc  bc                                          ; $5c42: $03
	add  d                                           ; $5c43: $82
	dec  b                                           ; $5c44: $05
	inc  de                                          ; $5c45: $13
	ld   h, l                                        ; $5c46: $65
	adc  l                                           ; $5c47: $8d
	ld   a, c                                        ; $5c48: $79
	ld   h, l                                        ; $5c49: $65
	ld   [hl], h                                     ; $5c4a: $74
	ld   d, d                                        ; $5c4b: $52
	adc  h                                           ; $5c4c: $8c
	ld   h, a                                        ; $5c4d: $67
	nop                                              ; $5c4e: $00
	ld   [bc], a                                     ; $5c4f: $02
	rlca                                             ; $5c50: $07
	ld   a, l                                        ; $5c51: $7d
	nop                                              ; $5c52: $00
	ld   [bc], a                                     ; $5c53: $02
	inc  bc                                          ; $5c54: $03
	ld   bc, $2000                                   ; $5c55: $01 $00 $20
	nop                                              ; $5c58: $00
	rlca                                             ; $5c59: $07
	ld   de, $0201                                   ; $5c5a: $11 $01 $02
	inc  bc                                          ; $5c5d: $03
	ld   bc, $2001                                   ; $5c5e: $01 $01 $20
	nop                                              ; $5c61: $00
	rlca                                             ; $5c62: $07
	and  e                                           ; $5c63: $a3
	ld   bc, $0302                                   ; $5c64: $01 $02 $03
	ld   bc, $2002                                   ; $5c67: $01 $02 $20
	nop                                              ; $5c6a: $00
	ld   b, $39                                      ; $5c6b: $06 $39
	ld   [bc], a                                     ; $5c6d: $02
	rrca                                             ; $5c6e: $0f
	nop                                              ; $5c6f: $00
	ld   bc, $6701                                   ; $5c70: $01 $01 $67
	adc  l                                           ; $5c73: $8d
	sbc  d                                           ; $5c74: $9a
	ld   h, e                                        ; $5c75: $63
	and  c                                           ; $5c76: $a1
	ld   a, [$000d]                                  ; $5c77: $fa $0d $00
	ld   a, [bc]                                     ; $5c7a: $0a
	dec  c                                           ; $5c7b: $0d
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	inc  c                                           ; $5c7e: $0c
	ld   [bc], a                                     ; $5c7f: $02
	ld   c, $1a                                      ; $5c80: $0e $1a
	inc  e                                           ; $5c82: $1c
	ld   [bc], a                                     ; $5c83: $02
	inc  bc                                          ; $5c84: $03
	inc  bc                                          ; $5c85: $03
	ld   bc, $7156                                   ; $5c86: $01 $56 $71
	ld   a, [$0df9]                                  ; $5c89: $fa $f9 $0d
	ld   d, b                                        ; $5c8c: $50
	sbc  [hl]                                        ; $5c8d: $9e
	ld   [$6300], sp                                 ; $5c8e: $08 $00 $63
	and  c                                           ; $5c91: $a1
	rst  $38                                         ; $5c92: $ff
	rst  $38                                         ; $5c93: $ff
	dec  c                                           ; $5c94: $0d
	nop                                              ; $5c95: $00
	ld   a, [bc]                                     ; $5c96: $0a
	rrca                                             ; $5c97: $0f
	nop                                              ; $5c98: $00
	ld   bc, $6701                                   ; $5c99: $01 $01 $67
	adc  l                                           ; $5c9c: $8d
	sbc  d                                           ; $5c9d: $9a
	ld   h, e                                        ; $5c9e: $63
	and  c                                           ; $5c9f: $a1
	ld   [hl], h                                     ; $5ca0: $74
	sbc  [hl]                                        ; $5ca1: $9e
	inc  bc                                          ; $5ca2: $03
	db   $d3                                         ; $5ca3: $d3
	dec  b                                           ; $5ca4: $05
	ld   a, [bc]                                     ; $5ca5: $0a
	ld   a, h                                        ; $5ca6: $7c
	inc  bc                                          ; $5ca7: $03
	add  d                                           ; $5ca8: $82
	dec  c                                           ; $5ca9: $0d
	ld   l, [hl]                                     ; $5caa: $6e
	ld   [hl], c                                     ; $5cab: $71
	ld   l, l                                        ; $5cac: $6d
	and  c                                           ; $5cad: $a1
	ld   [hl], l                                     ; $5cae: $75
	ld   h, a                                        ; $5caf: $67
	ld   a, e                                        ; $5cb0: $7b
	sbc  a                                           ; $5cb1: $9f
	dec  c                                           ; $5cb2: $0d
	nop                                              ; $5cb3: $00
	ld   a, [bc]                                     ; $5cb4: $0a
	inc  e                                           ; $5cb5: $1c
	ld   [bc], a                                     ; $5cb6: $02
	inc  b                                           ; $5cb7: $04
	inc  b                                           ; $5cb8: $04
	dec  e                                           ; $5cb9: $1d
	ld   b, b                                        ; $5cba: $40
	ld   [de], a                                     ; $5cbb: $12
	inc  bc                                          ; $5cbc: $03
	ld   [de], a                                     ; $5cbd: $12
	ld   bc, $2801                                   ; $5cbe: $01 $01 $28
	nop                                              ; $5cc1: $00
	ld   bc, $ff56                                   ; $5cc2: $01 $56 $ff
	rst  $38                                         ; $5cc5: $ff
	dec  c                                           ; $5cc6: $0d
	ld   l, a                                        ; $5cc7: $6f
	sub  l                                           ; $5cc8: $95
	sbc  [hl]                                        ; $5cc9: $9e
	ld   l, a                                        ; $5cca: $6f
	sub  l                                           ; $5ccb: $95
	ld   [hl], c                                     ; $5ccc: $71
	halt                                             ; $5ccd: $76
	ld   [bc], a                                     ; $5cce: $02
	jr   nc, jr_05f_5cd5                             ; $5ccf: $30 $04

	dec  de                                          ; $5cd1: $1b
	ld   h, l                                        ; $5cd2: $65
	ld   [hl], h                                     ; $5cd3: $74
	ld   l, l                                        ; $5cd4: $6d

jr_05f_5cd5:
	dec  c                                           ; $5cd5: $0d
	ld   l, [hl]                                     ; $5cd6: $6e
	ld   e, a                                        ; $5cd7: $5f
	ld   [hl], l                                     ; $5cd8: $75
	ld   h, a                                        ; $5cd9: $67
	sbc  l                                           ; $5cda: $9d
	sbc  a                                           ; $5cdb: $9f
	adc  c                                           ; $5cdc: $89
	adc  c                                           ; $5cdd: $89
	adc  c                                           ; $5cde: $89
	rst  $38                                         ; $5cdf: $ff
	rst  $38                                         ; $5ce0: $ff
	dec  c                                           ; $5ce1: $0d
	nop                                              ; $5ce2: $00
	ld   a, [bc]                                     ; $5ce3: $0a
	ld   bc, $9166                                   ; $5ce4: $01 $66 $91
	sbc  [hl]                                        ; $5ce7: $9e
	ld   e, b                                        ; $5ce8: $58
	sub  d                                           ; $5ce9: $92
	ld   h, a                                        ; $5cea: $67
	adc  l                                           ; $5ceb: $8d
	ld   a, b                                        ; $5cec: $78
	ld   h, e                                        ; $5ced: $63
	ld   d, d                                        ; $5cee: $52
	sbc  a                                           ; $5cef: $9f
	dec  c                                           ; $5cf0: $0d
	ld   [$6300], sp                                 ; $5cf1: $08 $00 $63
	and  c                                           ; $5cf4: $a1
	sbc  a                                           ; $5cf5: $9f
	dec  c                                           ; $5cf6: $0d
	nop                                              ; $5cf7: $00
	ld   a, [bc]                                     ; $5cf8: $0a
	dec  c                                           ; $5cf9: $0d
	nop                                              ; $5cfa: $00
	nop                                              ; $5cfb: $00
	rrca                                             ; $5cfc: $0f
	nop                                              ; $5cfd: $00
	ld   bc, $1e09                                   ; $5cfe: $01 $09 $1e
	nop                                              ; $5d01: $00
	rrca                                             ; $5d02: $0f
	nop                                              ; $5d03: $00
	ld   bc, $6701                                   ; $5d04: $01 $01 $67
	adc  l                                           ; $5d07: $8d
	sbc  d                                           ; $5d08: $9a
	ld   h, e                                        ; $5d09: $63
	and  c                                           ; $5d0a: $a1
	ld   a, [$000d]                                  ; $5d0b: $fa $0d $00
	ld   a, [bc]                                     ; $5d0e: $0a
	dec  c                                           ; $5d0f: $0d
	nop                                              ; $5d10: $00
	nop                                              ; $5d11: $00
	inc  c                                           ; $5d12: $0c
	ld   [bc], a                                     ; $5d13: $02
	ld   c, $1a                                      ; $5d14: $0e $1a
	inc  e                                           ; $5d16: $1c
	ld   [bc], a                                     ; $5d17: $02
	inc  bc                                          ; $5d18: $03
	inc  bc                                          ; $5d19: $03
	ld   bc, $7156                                   ; $5d1a: $01 $56 $71
	ld   a, [$0df9]                                  ; $5d1d: $fa $f9 $0d
	ld   d, b                                        ; $5d20: $50
	sbc  [hl]                                        ; $5d21: $9e
	ld   [$6300], sp                                 ; $5d22: $08 $00 $63
	and  c                                           ; $5d25: $a1
	rst  $38                                         ; $5d26: $ff
	rst  $38                                         ; $5d27: $ff
	dec  c                                           ; $5d28: $0d
	nop                                              ; $5d29: $00
	ld   a, [bc]                                     ; $5d2a: $0a
	rrca                                             ; $5d2b: $0f
	nop                                              ; $5d2c: $00
	ld   bc, $020d                                   ; $5d2d: $01 $0d $02
	nop                                              ; $5d30: $00
	ld   bc, $aa04                                   ; $5d31: $01 $04 $aa
	ld   [bc], a                                     ; $5d34: $02
	ld   e, a                                        ; $5d35: $5f
	inc  b                                           ; $5d36: $04
	ld   c, $02                                      ; $5d37: $0e $02
	xor  [hl]                                        ; $5d39: $ae
	ld   l, l                                        ; $5d3a: $6d
	ld   l, l                                        ; $5d3b: $6d
	ld   d, d                                        ; $5d3c: $52
	ld   [hl], h                                     ; $5d3d: $74
	ld   d, d                                        ; $5d3e: $52
	sbc  c                                           ; $5d3f: $99
	dec  c                                           ; $5d40: $0d
	ld   h, a                                        ; $5d41: $67
	adc  l                                           ; $5d42: $8d
	sbc  d                                           ; $5d43: $9a
	ld   h, e                                        ; $5d44: $63
	and  c                                           ; $5d45: $a1
	ld   [hl], l                                     ; $5d46: $75
	sub  b                                           ; $5d47: $90
	sbc  [hl]                                        ; $5d48: $9e
	dec  b                                           ; $5d49: $05
	add  hl, de                                      ; $5d4a: $19
	inc  bc                                          ; $5d4b: $03
	and  h                                           ; $5d4c: $a4
	ld   h, a                                        ; $5d4d: $67
	sbc  c                                           ; $5d4e: $99
	dec  c                                           ; $5d4f: $0d
	and  c                                           ; $5d50: $a1
	ld   [hl], l                                     ; $5d51: $75
	ld   h, a                                        ; $5d52: $67
	ld   a, e                                        ; $5d53: $7b
	sbc  a                                           ; $5d54: $9f
	dec  c                                           ; $5d55: $0d
	nop                                              ; $5d56: $00
	ld   a, [bc]                                     ; $5d57: $0a
	inc  e                                           ; $5d58: $1c
	ld   [bc], a                                     ; $5d59: $02
	ld   [bc], a                                     ; $5d5a: $02
	ld   [bc], a                                     ; $5d5b: $02
	dec  e                                           ; $5d5c: $1d
	ld   b, b                                        ; $5d5d: $40
	ld   [de], a                                     ; $5d5e: $12
	inc  bc                                          ; $5d5f: $03
	ld   [de], a                                     ; $5d60: $12
	ld   bc, $2903                                   ; $5d61: $01 $03 $29
	nop                                              ; $5d64: $00
	ld   bc, $0e04                                   ; $5d65: $01 $04 $0e
	ld   [bc], a                                     ; $5d68: $02
	xor  [hl]                                        ; $5d69: $ae
	ld   a, [$0df9]                                  ; $5d6a: $fa $f9 $0d
	ld   a, b                                        ; $5d6d: $78
	and  c                                           ; $5d6e: $a1
	ld   [hl], h                                     ; $5d6f: $74
	ld   h, c                                        ; $5d70: $61
	halt                                             ; $5d71: $76
	and  b                                           ; $5d72: $a0
	rst  $38                                         ; $5d73: $ff
	rst  $38                                         ; $5d74: $ff
	dec  c                                           ; $5d75: $0d
	nop                                              ; $5d76: $00
	ld   a, [bc]                                     ; $5d77: $0a
	ld   bc, $1905                                   ; $5d78: $01 $05 $19
	inc  bc                                          ; $5d7b: $03
	and  h                                           ; $5d7c: $a4
	ld   a, h                                        ; $5d7d: $7c
	ld   h, [hl]                                     ; $5d7e: $66
	sub  c                                           ; $5d7f: $91
	adc  h                                           ; $5d80: $8c
	ld   [hl], l                                     ; $5d81: $75
	ld   h, a                                        ; $5d82: $67
	sbc  l                                           ; $5d83: $9d
	sbc  a                                           ; $5d84: $9f
	dec  c                                           ; $5d85: $0d
	inc  bc                                          ; $5d86: $03
	add  b                                           ; $5d87: $80
	ld   [hl], h                                     ; $5d88: $74
	ld   [bc], a                                     ; $5d89: $02
	ld   a, a                                        ; $5d8a: $7f
	ld   e, e                                        ; $5d8b: $5b
	ld   a, b                                        ; $5d8c: $78
	ld   h, e                                        ; $5d8d: $63
	ld   d, d                                        ; $5d8e: $52
	ld   a, [$000d]                                  ; $5d8f: $fa $0d $00
	ld   a, [bc]                                     ; $5d92: $0a
	nop                                              ; $5d93: $00
	rrca                                             ; $5d94: $0f
	nop                                              ; $5d95: $00
	ld   bc, $6701                                   ; $5d96: $01 $01 $67
	adc  l                                           ; $5d99: $8d
	sbc  d                                           ; $5d9a: $9a
	ld   h, e                                        ; $5d9b: $63
	and  c                                           ; $5d9c: $a1
	ld   a, [$000d]                                  ; $5d9d: $fa $0d $00
	ld   a, [bc]                                     ; $5da0: $0a
	dec  c                                           ; $5da1: $0d
	nop                                              ; $5da2: $00
	nop                                              ; $5da3: $00
	inc  c                                           ; $5da4: $0c
	ld   [bc], a                                     ; $5da5: $02
	ld   c, $1a                                      ; $5da6: $0e $1a
	inc  e                                           ; $5da8: $1c
	ld   [bc], a                                     ; $5da9: $02
	inc  bc                                          ; $5daa: $03
	inc  bc                                          ; $5dab: $03
	ld   bc, $7156                                   ; $5dac: $01 $56 $71
	ld   a, [$0df9]                                  ; $5daf: $fa $f9 $0d
	ld   d, b                                        ; $5db2: $50
	sbc  [hl]                                        ; $5db3: $9e
	ld   [$6300], sp                                 ; $5db4: $08 $00 $63
	and  c                                           ; $5db7: $a1
	rst  $38                                         ; $5db8: $ff
	rst  $38                                         ; $5db9: $ff
	dec  c                                           ; $5dba: $0d
	nop                                              ; $5dbb: $00
	ld   a, [bc]                                     ; $5dbc: $0a
	rrca                                             ; $5dbd: $0f
	nop                                              ; $5dbe: $00
	ld   bc, $020d                                   ; $5dbf: $01 $0d $02
	nop                                              ; $5dc2: $00
	ld   bc, $f804                                   ; $5dc3: $01 $04 $f8
	ld   [bc], a                                     ; $5dc6: $02
	add  a                                           ; $5dc7: $87
	inc  b                                           ; $5dc8: $04
	or   a                                           ; $5dc9: $b7
	inc  bc                                          ; $5dca: $03
	add  d                                           ; $5dcb: $82
	dec  b                                           ; $5dcc: $05
	inc  de                                          ; $5dcd: $13
	ld   h, l                                        ; $5dce: $65
	adc  l                                           ; $5dcf: $8d
	ld   a, c                                        ; $5dd0: $79
	ld   h, l                                        ; $5dd1: $65
	ld   [hl], h                                     ; $5dd2: $74
	adc  h                                           ; $5dd3: $8c
	ld   h, a                                        ; $5dd4: $67
	sbc  a                                           ; $5dd5: $9f
	dec  c                                           ; $5dd6: $0d
	nop                                              ; $5dd7: $00
	ld   a, [bc]                                     ; $5dd8: $0a
	inc  e                                           ; $5dd9: $1c
	ld   [bc], a                                     ; $5dda: $02
	ld   bc, $1d01                                   ; $5ddb: $01 $01 $1d
	ld   b, b                                        ; $5dde: $40
	ld   [de], a                                     ; $5ddf: $12
	inc  bc                                          ; $5de0: $03
	ld   [de], a                                     ; $5de1: $12
	ld   bc, $2802                                   ; $5de2: $01 $02 $28
	nop                                              ; $5de5: $00
	ld   bc, $6d9d                                   ; $5de6: $01 $9d $6d
	ld   e, l                                        ; $5de9: $5d
	ld   h, l                                        ; $5dea: $65
	ld   e, d                                        ; $5deb: $5a
	ld   [bc], a                                     ; $5dec: $02
	rra                                              ; $5ded: $1f
	ld   h, [hl]                                     ; $5dee: $66
	sbc  c                                           ; $5def: $99
	ld   a, h                                        ; $5df0: $7c
	ld   [hl], l                                     ; $5df1: $75
	ld   h, a                                        ; $5df2: $67
	ld   e, c                                        ; $5df3: $59
	sub  a                                           ; $5df4: $97
	dec  c                                           ; $5df5: $0d
	xor  h                                           ; $5df6: $ac
	push af                                          ; $5df7: $f5
	db   $db                                         ; $5df8: $db
	xor  [hl]                                        ; $5df9: $ae
	ld   a, c                                        ; $5dfa: $79
	ld   [bc], a                                     ; $5dfb: $02
	add  e                                           ; $5dfc: $83
	adc  h                                           ; $5dfd: $8c
	ld   [hl], c                                     ; $5dfe: $71
	ld   [hl], h                                     ; $5dff: $74
	adc  h                                           ; $5e00: $8c
	ld   h, a                                        ; $5e01: $67
	sbc  l                                           ; $5e02: $9d
	sbc  a                                           ; $5e03: $9f
	dec  c                                           ; $5e04: $0d
	dec  b                                           ; $5e05: $05
	inc  de                                          ; $5e06: $13
	ld   h, l                                        ; $5e07: $65
	adc  l                                           ; $5e08: $8d
	ld   a, c                                        ; $5e09: $79
	ld   a, b                                        ; $5e0a: $78
	ld   h, e                                        ; $5e0b: $63
	ld   [hl], c                                     ; $5e0c: $71
	ld   [hl], h                                     ; $5e0d: $74
	ld   a, e                                        ; $5e0e: $7b
	sbc  a                                           ; $5e0f: $9f
	dec  c                                           ; $5e10: $0d
	nop                                              ; $5e11: $00
	ld   a, [bc]                                     ; $5e12: $0a
	rrca                                             ; $5e13: $0f
	nop                                              ; $5e14: $00
	ld   bc, $7d01                                   ; $5e15: $01 $01 $7d
	ld   d, d                                        ; $5e18: $52
	sbc  a                                           ; $5e19: $9f
	dec  c                                           ; $5e1a: $0d
	ld   [hl], l                                     ; $5e1b: $75
	ld   a, l                                        ; $5e1c: $7d
	sbc  [hl]                                        ; $5e1d: $9e
	inc  bc                                          ; $5e1e: $03
	add  e                                           ; $5e1f: $83
	dec  b                                           ; $5e20: $05
	dec  c                                           ; $5e21: $0d
	ld   h, l                                        ; $5e22: $65
	adc  h                                           ; $5e23: $8c
	ld   h, a                                        ; $5e24: $67
	sbc  a                                           ; $5e25: $9f
	dec  c                                           ; $5e26: $0d
	nop                                              ; $5e27: $00
	ld   a, [bc]                                     ; $5e28: $0a
	nop                                              ; $5e29: $00
	rrca                                             ; $5e2a: $0f
	nop                                              ; $5e2b: $00
	ld   bc, $0101                                   ; $5e2c: $01 $01 $01
	inc  bc                                          ; $5e2f: $03
	rst  $38                                         ; $5e30: $ff
	rst  $38                                         ; $5e31: $ff
	ld   l, e                                        ; $5e32: $6b
	ld   [hl], c                                     ; $5e33: $71
	halt                                             ; $5e34: $76
	ld   h, l                                        ; $5e35: $65
	ld   [hl], h                                     ; $5e36: $74
	ld   e, b                                        ; $5e37: $58
	ld   h, c                                        ; $5e38: $61
	ld   d, h                                        ; $5e39: $54
	ld   bc, $0d04                                   ; $5e3a: $01 $04 $0d
	nop                                              ; $5e3d: $00
	ld   a, [bc]                                     ; $5e3e: $0a
	dec  c                                           ; $5e3f: $0d
	nop                                              ; $5e40: $00
	nop                                              ; $5e41: $00
	inc  c                                           ; $5e42: $0c
	ld   [bc], a                                     ; $5e43: $02
	ld   c, $1a                                      ; $5e44: $0e $1a
	inc  e                                           ; $5e46: $1c
	ld   [bc], a                                     ; $5e47: $02
	nop                                              ; $5e48: $00
	nop                                              ; $5e49: $00
	ld   bc, $9e50                                   ; $5e4a: $01 $50 $9e
	ld   [$6300], sp                                 ; $5e4d: $08 $00 $63
	and  c                                           ; $5e50: $a1
	sbc  a                                           ; $5e51: $9f
	dec  c                                           ; $5e52: $0d
	nop                                              ; $5e53: $00
	ld   a, [bc]                                     ; $5e54: $0a
	rrca                                             ; $5e55: $0f
	nop                                              ; $5e56: $00
	ld   bc, $7801                                   ; $5e57: $01 $01 $78
	and  c                                           ; $5e5a: $a1
	ld   [hl], l                                     ; $5e5b: $75
	ld   h, l                                        ; $5e5c: $65
	sub  l                                           ; $5e5d: $95
	ld   d, h                                        ; $5e5e: $54
	ld   e, c                                        ; $5e5f: $59
	ld   sp, hl                                      ; $5e60: $f9
	dec  c                                           ; $5e61: $0d
	nop                                              ; $5e62: $00
	ld   a, [bc]                                     ; $5e63: $0a
	inc  e                                           ; $5e64: $1c
	ld   [bc], a                                     ; $5e65: $02
	ld   bc, $1d01                                   ; $5e66: $01 $01 $1d
	ld   b, b                                        ; $5e69: $40
	ld   [de], a                                     ; $5e6a: $12
	inc  bc                                          ; $5e6b: $03
	ld   [de], a                                     ; $5e6c: $12
	ld   bc, $2803                                   ; $5e6d: $01 $03 $28
	nop                                              ; $5e70: $00
	ld   bc, $5652                                   ; $5e71: $01 $52 $56
	rst  $38                                         ; $5e74: $ff
	rst  $38                                         ; $5e75: $ff
	dec  c                                           ; $5e76: $0d
	ld   a, b                                        ; $5e77: $78
	and  c                                           ; $5e78: $a1
	ld   [hl], l                                     ; $5e79: $75
	sub  b                                           ; $5e7a: $90
	ld   d, b                                        ; $5e7b: $50
	sbc  b                                           ; $5e7c: $98
	adc  h                                           ; $5e7d: $8c
	ld   l, c                                        ; $5e7e: $69
	and  c                                           ; $5e7f: $a1
	sbc  l                                           ; $5e80: $9d
	sbc  a                                           ; $5e81: $9f
	dec  c                                           ; $5e82: $0d
	nop                                              ; $5e83: $00
	ld   a, [bc]                                     ; $5e84: $0a
	ld   [de], a                                     ; $5e85: $12
	nop                                              ; $5e86: $00
	ld   bc, $0301                                   ; $5e87: $01 $01 $03
	dec  b                                           ; $5e8a: $05
	add  hl, de                                      ; $5e8b: $19
	inc  bc                                          ; $5e8c: $03
	and  h                                           ; $5e8d: $a4
	ld   h, l                                        ; $5e8e: $65
	ld   [hl], h                                     ; $5e8f: $74
	ld   d, d                                        ; $5e90: $52
	sbc  c                                           ; $5e91: $99
	sbc  l                                           ; $5e92: $9d
	ld   l, l                                        ; $5e93: $6d
	ld   e, l                                        ; $5e94: $5d
	ld   h, l                                        ; $5e95: $65
	ld   a, h                                        ; $5e96: $7c
	dec  c                                           ; $5e97: $0d
	db   $10                                         ; $5e98: $10
	ld   h, [hl]                                     ; $5e99: $66
	sub  c                                           ; $5e9a: $91
	adc  h                                           ; $5e9b: $8c
	and  b                                           ; $5e9c: $a0
	ld   h, l                                        ; $5e9d: $65
	ld   a, b                                        ; $5e9e: $78
	ld   d, d                                        ; $5e9f: $52
	sub  [hl]                                        ; $5ea0: $96
	ld   d, h                                        ; $5ea1: $54
	ld   a, c                                        ; $5ea2: $79
	dec  c                                           ; $5ea3: $0d
	db   $10                                         ; $5ea4: $10
	dec  b                                           ; $5ea5: $05
	jr   nz, jr_05f_5f0d                             ; $5ea6: $20 $65

	ld   e, c                                        ; $5ea8: $59
	ld   e, a                                        ; $5ea9: $5f
	ld   a, b                                        ; $5eaa: $78
	ld   d, d                                        ; $5eab: $52
	ld   l, [hl]                                     ; $5eac: $6e
	ld   a, b                                        ; $5ead: $78
	and  c                                           ; $5eae: $a1
	ld   [hl], h                                     ; $5eaf: $74
	rst  $38                                         ; $5eb0: $ff
	rst  $38                                         ; $5eb1: $ff
	dec  c                                           ; $5eb2: $0d
	nop                                              ; $5eb3: $00
	ld   a, [bc]                                     ; $5eb4: $0a
	ld   bc, $0210                                   ; $5eb5: $01 $10 $02
	and  c                                           ; $5eb8: $a1
	inc  b                                           ; $5eb9: $04
	xor  e                                           ; $5eba: $ab
	sbc  b                                           ; $5ebb: $98
	ld   e, d                                        ; $5ebc: $5a
	ld   [hl], l                                     ; $5ebd: $75
	ld   e, e                                        ; $5ebe: $5b
	sbc  c                                           ; $5ebf: $99
	sub  [hl]                                        ; $5ec0: $96
	ld   d, h                                        ; $5ec1: $54
	ld   a, c                                        ; $5ec2: $79
	dec  c                                           ; $5ec3: $0d
	db   $10                                         ; $5ec4: $10
	ld   a, b                                        ; $5ec5: $78
	ld   [hl], c                                     ; $5ec6: $71
	ld   l, l                                        ; $5ec7: $6d
	and  c                                           ; $5ec8: $a1
	ld   [hl], l                                     ; $5ec9: $75
	ld   h, a                                        ; $5eca: $67
	ld   a, h                                        ; $5ecb: $7c
	ld   a, e                                        ; $5ecc: $7b
	sbc  a                                           ; $5ecd: $9f
	dec  c                                           ; $5ece: $0d
	db   $10                                         ; $5ecf: $10
	ld   [$6300], sp                                 ; $5ed0: $08 $00 $63
	and  c                                           ; $5ed3: $a1
	ld   a, l                                        ; $5ed4: $7d
	rst  $38                                         ; $5ed5: $ff
	rst  $38                                         ; $5ed6: $ff
	ld   bc, $0d04                                   ; $5ed7: $01 $04 $0d
	nop                                              ; $5eda: $00
	ld   a, [bc]                                     ; $5edb: $0a
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	ld   d, $02                                      ; $5ede: $16 $02
	rrca                                             ; $5ee0: $0f
	ld   bc, $021a                                   ; $5ee1: $01 $1a $02
	rlca                                             ; $5ee4: $07
	ld   c, a                                        ; $5ee5: $4f
	inc  b                                           ; $5ee6: $04
	inc  b                                           ; $5ee7: $04
	add  b                                           ; $5ee8: $80
	dec  b                                           ; $5ee9: $05
	ld   bc, $20ff                                   ; $5eea: $01 $ff $20
	nop                                              ; $5eed: $00
	ld   bc, $f5d6                                   ; $5eee: $01 $d6 $f5
	db   $fc                                         ; $5ef1: $fc
	sub  $fc                                         ; $5ef2: $d6 $fc
	sub  $d6                                         ; $5ef4: $d6 $d6
	push af                                          ; $5ef6: $f5
	dec  c                                           ; $5ef7: $0d
	nop                                              ; $5ef8: $00
	ld   a, [bc]                                     ; $5ef9: $0a
	rrca                                             ; $5efa: $0f
	nop                                              ; $5efb: $00
	ld   bc, $0101                                   ; $5efc: $01 $01 $01
	inc  bc                                          ; $5eff: $03
	rst  $38                                         ; $5f00: $ff
	rst  $38                                         ; $5f01: $ff
	ld   a, [$100d]                                  ; $5f02: $fa $0d $10
	ld   h, e                                        ; $5f05: $63
	ld   e, l                                        ; $5f06: $5d
	sub  a                                           ; $5f07: $97
	ld   h, e                                        ; $5f08: $63
	and  c                                           ; $5f09: $a1
	ld   e, d                                        ; $5f0a: $5a
	ld   d, d                                        ; $5f0b: $52
	sbc  c                                           ; $5f0c: $99

jr_05f_5f0d:
	ld   a, [$0401]                                  ; $5f0d: $fa $01 $04
	dec  c                                           ; $5f10: $0d
	nop                                              ; $5f11: $00
	ld   a, [bc]                                     ; $5f12: $0a
	add  hl, de                                      ; $5f13: $19
	dec  b                                           ; $5f14: $05
	ld   [bc], a                                     ; $5f15: $02
	ld   [bc], a                                     ; $5f16: $02
	and  b                                           ; $5f17: $a0
	ld   [hl], e                                     ; $5f18: $73
	ld   e, l                                        ; $5f19: $5d
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	dec  b                                           ; $5f1c: $05
	ld   d, $6f                                      ; $5f1d: $16 $6f
	ld   [bc], a                                     ; $5f1f: $02
	ld   d, e                                        ; $5f20: $53
	sbc  c                                           ; $5f21: $99
	nop                                              ; $5f22: $00
	ld   bc, $ad07                                   ; $5f23: $01 $07 $ad
	nop                                              ; $5f26: $00
	ld   [bc], a                                     ; $5f27: $02
	inc  bc                                          ; $5f28: $03
	ld   bc, $2000                                   ; $5f29: $01 $00 $20
	nop                                              ; $5f2c: $00
	rlca                                             ; $5f2d: $07
	ld   e, e                                        ; $5f2e: $5b
	nop                                              ; $5f2f: $00
	ld   [bc], a                                     ; $5f30: $02
	inc  bc                                          ; $5f31: $03
	ld   bc, $2001                                   ; $5f32: $01 $01 $20
	nop                                              ; $5f35: $00
	ld   b, $82                                      ; $5f36: $06 $82
	nop                                              ; $5f38: $00
	rrca                                             ; $5f39: $0f
	nop                                              ; $5f3a: $00
	ld   bc, $0101                                   ; $5f3b: $01 $01 $01
	inc  bc                                          ; $5f3e: $03
	sub  d                                           ; $5f3f: $92
	ld   [hl], c                                     ; $5f40: $71
	ld   a, a                                        ; $5f41: $7f
	sbc  b                                           ; $5f42: $98
	sbc  [hl]                                        ; $5f43: $9e
	ld   a, h                                        ; $5f44: $7c
	ld   l, h                                        ; $5f45: $6c
	ld   e, e                                        ; $5f46: $5b
	ld   a, l                                        ; $5f47: $7d
	pop  bc                                          ; $5f48: $c1
	db   $e3                                         ; $5f49: $e3
	ld   l, [hl]                                     ; $5f4a: $6e
	sub  [hl]                                        ; $5f4b: $96
	dec  c                                           ; $5f4c: $0d
	db   $10                                         ; $5f4d: $10
	ld   h, c                                        ; $5f4e: $61
	ld   h, c                                        ; $5f4f: $61
	ld   a, l                                        ; $5f50: $7d
	ld   d, d                                        ; $5f51: $52
	ld   h, e                                        ; $5f52: $63
	ld   e, h                                        ; $5f53: $5c
	sub  [hl]                                        ; $5f54: $96
	ld   e, l                                        ; $5f55: $5d
	ld   [bc], a                                     ; $5f56: $02
	ld   d, e                                        ; $5f57: $53
	sbc  e                                           ; $5f58: $9b
	ld   d, h                                        ; $5f59: $54
	ld   bc, $0d04                                   ; $5f5a: $01 $04 $0d
	nop                                              ; $5f5d: $00
	ld   a, [bc]                                     ; $5f5e: $0a
	nop                                              ; $5f5f: $00
	rrca                                             ; $5f60: $0f
	ld   bc, $011c                                   ; $5f61: $01 $1c $01
	inc  bc                                          ; $5f64: $03
	xor  c                                           ; $5f65: $a9
	ld   e, c                                        ; $5f66: $59
	ld   l, e                                        ; $5f67: $6b
	ld   h, c                                        ; $5f68: $61
	ld   a, c                                        ; $5f69: $79
	ld   d, d                                        ; $5f6a: $52
	sbc  c                                           ; $5f6b: $99
	and  c                                           ; $5f6c: $a1
	ld   [hl], l                                     ; $5f6d: $75
	ld   h, a                                        ; $5f6e: $67
	ld   e, c                                        ; $5f6f: $59
	ld   sp, hl                                      ; $5f70: $f9
	dec  c                                           ; $5f71: $0d
	nop                                              ; $5f72: $00
	ld   a, [bc]                                     ; $5f73: $0a
	rrca                                             ; $5f74: $0f
	nop                                              ; $5f75: $00
	ld   bc, $0101                                   ; $5f76: $01 $01 $01
	inc  bc                                          ; $5f79: $03
	adc  h                                           ; $5f7a: $8c
	ld   l, b                                        ; $5f7b: $68
	ld   d, d                                        ; $5f7c: $52
	rst  $38                                         ; $5f7d: $ff
	rst  $38                                         ; $5f7e: $ff
	inc  bc                                          ; $5f7f: $03
	push de                                          ; $5f80: $d5
	ld   h, b                                        ; $5f81: $60
	sub  [hl]                                        ; $5f82: $96
	ld   d, h                                        ; $5f83: $54
	ld   a, [$0401]                                  ; $5f84: $fa $01 $04
	dec  c                                           ; $5f87: $0d
	nop                                              ; $5f88: $00
	ld   a, [bc]                                     ; $5f89: $0a
	nop                                              ; $5f8a: $00
	rrca                                             ; $5f8b: $0f
	nop                                              ; $5f8c: $00
	ld   bc, $0101                                   ; $5f8d: $01 $01 $01
	inc  bc                                          ; $5f90: $03
	sub  b                                           ; $5f91: $90
	ld   d, h                                        ; $5f92: $54
	inc  bc                                          ; $5f93: $03
	ld   l, h                                        ; $5f94: $6c
	ld   h, l                                        ; $5f95: $65
	ld   [bc], a                                     ; $5f96: $02
	and  b                                           ; $5f97: $a0
	ld   [hl], e                                     ; $5f98: $73
	ld   d, d                                        ; $5f99: $52
	ld   [hl], h                                     ; $5f9a: $74
	adc  l                                           ; $5f9b: $8d
	sub  [hl]                                        ; $5f9c: $96
	ld   d, h                                        ; $5f9d: $54
	ld   bc, $0d04                                   ; $5f9e: $01 $04 $0d
	nop                                              ; $5fa1: $00
	ld   a, [bc]                                     ; $5fa2: $0a
	rlca                                             ; $5fa3: $07
	rst  $10                                         ; $5fa4: $d7
	nop                                              ; $5fa5: $00
	inc  bc                                          ; $5fa6: $03
	ld   de, $2801                                   ; $5fa7: $11 $01 $28
	dec  h                                           ; $5faa: $25
	nop                                              ; $5fab: $00
	rlca                                             ; $5fac: $07
	rra                                              ; $5fad: $1f
	ld   bc, $1103                                   ; $5fae: $01 $03 $11
	ld   bc, $2228                                   ; $5fb1: $01 $28 $22
	nop                                              ; $5fb4: $00
	rrca                                             ; $5fb5: $0f
	ld   bc, $011d                                   ; $5fb6: $01 $1d $01
	ld   l, a                                        ; $5fb9: $6f
	sub  l                                           ; $5fba: $95
	ld   [hl], c                                     ; $5fbb: $71
	halt                                             ; $5fbc: $76
	inc  b                                           ; $5fbd: $04
	inc  hl                                          ; $5fbe: $23
	ld   [hl], c                                     ; $5fbf: $71
	ld   l, l                                        ; $5fc0: $6d
	ld   e, c                                        ; $5fc1: $59
	ld   a, b                                        ; $5fc2: $78
	ld   c, a                                        ; $5fc3: $4f
	rst  $38                                         ; $5fc4: $ff
	rst  $38                                         ; $5fc5: $ff
	ld   sp, hl                                      ; $5fc6: $f9
	dec  c                                           ; $5fc7: $0d
	nop                                              ; $5fc8: $00
	ld   a, [bc]                                     ; $5fc9: $0a
	add  hl, de                                      ; $5fca: $19
	dec  b                                           ; $5fcb: $05
	ld   bc, $c004                                   ; $5fcc: $01 $04 $c0
	inc  bc                                          ; $5fcf: $03
	ld   a, l                                        ; $5fd0: $7d
	ld   h, l                                        ; $5fd1: $65
	ld   l, l                                        ; $5fd2: $6d
	nop                                              ; $5fd3: $00
	nop                                              ; $5fd4: $00
	rlca                                             ; $5fd5: $07
	inc  bc                                          ; $5fd6: $03
	ld   bc, $0302                                   ; $5fd7: $01 $02 $03
	ld   bc, $2000                                   ; $5fda: $01 $00 $20
	nop                                              ; $5fdd: $00
	ld   b, $1f                                      ; $5fde: $06 $1f
	ld   bc, $000f                                   ; $5fe0: $01 $0f $00
	ld   bc, $0101                                   ; $5fe3: $01 $01 $01
	inc  bc                                          ; $5fe6: $03
	ld   l, e                                        ; $5fe7: $6b
	sbc  e                                           ; $5fe8: $9b
	ld   l, e                                        ; $5fe9: $6b
	sbc  e                                           ; $5fea: $9b
	ld   [bc], a                                     ; $5feb: $02
	inc  l                                           ; $5fec: $2c
	ld   e, e                                        ; $5fed: $5b
	inc  bc                                          ; $5fee: $03
	ld   h, l                                        ; $5fef: $65
	ld   h, b                                        ; $5ff0: $60
	sub  [hl]                                        ; $5ff1: $96
	ld   d, h                                        ; $5ff2: $54
	rst  $38                                         ; $5ff3: $ff
	rst  $38                                         ; $5ff4: $ff
	ld   bc, $0d04                                   ; $5ff5: $01 $04 $0d
	db   $10                                         ; $5ff8: $10
	dec  c                                           ; $5ff9: $0d
	nop                                              ; $5ffa: $00
	ld   a, [bc]                                     ; $5ffb: $0a
	nop                                              ; $5ffc: $00
	rrca                                             ; $5ffd: $0f
	ld   bc, $011c                                   ; $5ffe: $01 $1c $01
	rst  $38                                         ; $6001: $ff
	rst  $38                                         ; $6002: $ff
	ld   a, [$6b0d]                                  ; $6003: $fa $0d $6b
	ld   h, c                                        ; $6006: $61
	ld   a, c                                        ; $6007: $79
	inc  bc                                          ; $6008: $03
	xor  c                                           ; $6009: $a9
	ld   e, c                                        ; $600a: $59
	ld   d, d                                        ; $600b: $52
	sbc  c                                           ; $600c: $99
	and  c                                           ; $600d: $a1
	ld   [hl], l                                     ; $600e: $75
	ld   h, a                                        ; $600f: $67
	ld   e, c                                        ; $6010: $59
	ld   sp, hl                                      ; $6011: $f9
	dec  c                                           ; $6012: $0d
	nop                                              ; $6013: $00
	ld   a, [bc]                                     ; $6014: $0a
	rrca                                             ; $6015: $0f
	nop                                              ; $6016: $00
	ld   bc, $0101                                   ; $6017: $01 $01 $01
	inc  bc                                          ; $601a: $03
	ld   [bc], a                                     ; $601b: $02
	and  c                                           ; $601c: $a1
	ld   [hl], e                                     ; $601d: $73
	ld   e, c                                        ; $601e: $59
	sbc  d                                           ; $601f: $9a
	ld   l, l                                        ; $6020: $6d
	ld   a, [$0401]                                  ; $6021: $fa $01 $04
	dec  c                                           ; $6024: $0d
	nop                                              ; $6025: $00
	ld   a, [bc]                                     ; $6026: $0a
	add  hl, de                                      ; $6027: $19
	dec  b                                           ; $6028: $05
	inc  bc                                          ; $6029: $03
	inc  bc                                          ; $602a: $03
	db   $db                                         ; $602b: $db
	ld   bc, $7614                                   ; $602c: $01 $14 $76
	ld   h, a                                        ; $602f: $67
	sbc  c                                           ; $6030: $99
	nop                                              ; $6031: $00
	nop                                              ; $6032: $00
	sub  b                                           ; $6033: $90
	ld   a, h                                        ; $6034: $7c
	adc  h                                           ; $6035: $8c
	ld   a, e                                        ; $6036: $7b
	and  b                                           ; $6037: $a0
	ld   h, a                                        ; $6038: $67
	sbc  c                                           ; $6039: $99
	nop                                              ; $603a: $00
	ld   bc, $d503                                   ; $603b: $01 $03 $d5
	ld   h, b                                        ; $603e: $60
	inc  bc                                          ; $603f: $03
	add  b                                           ; $6040: $80
	ld   h, a                                        ; $6041: $67
	nop                                              ; $6042: $00
	ld   [bc], a                                     ; $6043: $02
	rlca                                             ; $6044: $07
	add  h                                           ; $6045: $84
	ld   bc, $0302                                   ; $6046: $01 $02 $03
	ld   bc, $2000                                   ; $6049: $01 $00 $20
	nop                                              ; $604c: $00
	rlca                                             ; $604d: $07
	db   $10                                         ; $604e: $10
	ld   [bc], a                                     ; $604f: $02
	ld   [bc], a                                     ; $6050: $02
	inc  bc                                          ; $6051: $03
	ld   bc, $2001                                   ; $6052: $01 $01 $20
	nop                                              ; $6055: $00
	rlca                                             ; $6056: $07
	add  a                                           ; $6057: $87
	ld   [bc], a                                     ; $6058: $02
	ld   [bc], a                                     ; $6059: $02
	inc  bc                                          ; $605a: $03
	ld   bc, $2002                                   ; $605b: $01 $02 $20
	nop                                              ; $605e: $00
	ld   b, $d8                                      ; $605f: $06 $d8
	ld   [bc], a                                     ; $6061: $02
	rrca                                             ; $6062: $0f
	nop                                              ; $6063: $00
	ld   bc, $0101                                   ; $6064: $01 $01 $01
	inc  bc                                          ; $6067: $03
	ld   h, c                                        ; $6068: $61
	ld   h, c                                        ; $6069: $61
	ld   a, l                                        ; $606a: $7d
	inc  bc                                          ; $606b: $03
	db   $db                                         ; $606c: $db
	ld   bc, $7614                                   ; $606d: $01 $14 $76
	rst  $38                                         ; $6070: $ff
	rst  $38                                         ; $6071: $ff
	ld   bc, $0d04                                   ; $6072: $01 $04 $0d
	nop                                              ; $6075: $00
	ld   a, [bc]                                     ; $6076: $0a
	ld   bc, $9e50                                   ; $6077: $01 $50 $9e
	ld   h, a                                        ; $607a: $67
	adc  l                                           ; $607b: $8d
	adc  h                                           ; $607c: $8c
	ld   l, c                                        ; $607d: $69
	and  c                                           ; $607e: $a1
	rst  $38                                         ; $607f: $ff
	rst  $38                                         ; $6080: $ff
	dec  c                                           ; $6081: $0d
	ld   [hl], a                                     ; $6082: $77
	ld   a, b                                        ; $6083: $78
	ld   l, l                                        ; $6084: $6d
	ld   e, c                                        ; $6085: $59
	inc  b                                           ; $6086: $04
	ld   b, l                                        ; $6087: $45
	ld   [hl], c                                     ; $6088: $71
	ld   [hl], h                                     ; $6089: $74
	sub  a                                           ; $608a: $97
	ld   [hl], c                                     ; $608b: $71
	ld   h, l                                        ; $608c: $65
	sub  c                                           ; $608d: $91
	sbc  c                                           ; $608e: $99
	and  c                                           ; $608f: $a1
	dec  c                                           ; $6090: $0d
	ld   [hl], l                                     ; $6091: $75
	ld   h, a                                        ; $6092: $67
	ld   a, e                                        ; $6093: $7b
	ld   sp, hl                                      ; $6094: $f9
	dec  c                                           ; $6095: $0d
	nop                                              ; $6096: $00
	ld   a, [bc]                                     ; $6097: $0a
	rrca                                             ; $6098: $0f
	ld   bc, $011c                                   ; $6099: $01 $1c $01
	ld   d, b                                        ; $609c: $50
	sbc  [hl]                                        ; $609d: $9e
	ld   [$6300], sp                                 ; $609e: $08 $00 $63
	and  c                                           ; $60a1: $a1
	ld   [hl], l                                     ; $60a2: $75
	ld   h, a                                        ; $60a3: $67
	ld   e, c                                        ; $60a4: $59
	ld   sp, hl                                      ; $60a5: $f9
	dec  c                                           ; $60a6: $0d
	ld   h, e                                        ; $60a7: $63
	ld   e, l                                        ; $60a8: $5d
	sub  a                                           ; $60a9: $97
	ld   [hl], l                                     ; $60aa: $75
	ld   h, a                                        ; $60ab: $67
	rst  $38                                         ; $60ac: $ff
	rst  $38                                         ; $60ad: $ff
	dec  c                                           ; $60ae: $0d
	nop                                              ; $60af: $00
	ld   a, [bc]                                     ; $60b0: $0a
	rrca                                             ; $60b1: $0f
	nop                                              ; $60b2: $00
	ld   bc, $6301                                   ; $60b3: $01 $01 $63
	ld   e, l                                        ; $60b6: $5d
	sub  a                                           ; $60b7: $97
	ld   h, e                                        ; $60b8: $63
	and  c                                           ; $60b9: $a1
	ld   [hl], l                                     ; $60ba: $75
	ld   h, l                                        ; $60bb: $65
	ld   l, l                                        ; $60bc: $6d
	ld   e, c                                        ; $60bd: $59
	rst  $38                                         ; $60be: $ff
	rst  $38                                         ; $60bf: $ff
	dec  c                                           ; $60c0: $0d
	ld   h, c                                        ; $60c1: $61
	sbc  d                                           ; $60c2: $9a
	ld   a, l                                        ; $60c3: $7d
	inc  bc                                          ; $60c4: $03
	add  e                                           ; $60c5: $83
	dec  b                                           ; $60c6: $05
	dec  c                                           ; $60c7: $0d
	ld   h, l                                        ; $60c8: $65
	adc  h                                           ; $60c9: $8c
	ld   h, l                                        ; $60ca: $65
	ld   l, l                                        ; $60cb: $6d
	sbc  a                                           ; $60cc: $9f
	dec  c                                           ; $60cd: $0d
	nop                                              ; $60ce: $00
	ld   a, [bc]                                     ; $60cf: $0a
	rrca                                             ; $60d0: $0f
	ld   bc, $0119                                   ; $60d1: $01 $19 $01
	ld   d, d                                        ; $60d4: $52
	ld   d, d                                        ; $60d5: $52
	ld   d, [hl]                                     ; $60d6: $56
	sbc  a                                           ; $60d7: $9f
	dec  c                                           ; $60d8: $0d
	nop                                              ; $60d9: $00
	ld   a, [bc]                                     ; $60da: $0a
	rrca                                             ; $60db: $0f
	nop                                              ; $60dc: $00
	ld   bc, $0101                                   ; $60dd: $01 $01 $01
	inc  bc                                          ; $60e0: $03
	inc  bc                                          ; $60e1: $03
	ld   e, e                                        ; $60e2: $5b
	ld   e, c                                        ; $60e3: $59
	ld   [hl], c                                     ; $60e4: $71
	ld   l, l                                        ; $60e5: $6d
	rst  $38                                         ; $60e6: $ff
	rst  $38                                         ; $60e7: $ff
	ld   bc, $0d04                                   ; $60e8: $01 $04 $0d
	nop                                              ; $60eb: $00
	ld   a, [bc]                                     ; $60ec: $0a
	nop                                              ; $60ed: $00
	rrca                                             ; $60ee: $0f
	nop                                              ; $60ef: $00
	ld   bc, $0101                                   ; $60f0: $01 $01 $01
	inc  bc                                          ; $60f3: $03
	ld   h, c                                        ; $60f4: $61
	ld   d, h                                        ; $60f5: $54
	ld   a, b                                        ; $60f6: $78
	ld   [hl], c                                     ; $60f7: $71
	ld   l, l                                        ; $60f8: $6d
	sub  a                                           ; $60f9: $97
	rst  $38                                         ; $60fa: $ff
	rst  $38                                         ; $60fb: $ff
	ld   bc, $0d04                                   ; $60fc: $01 $04 $0d
	nop                                              ; $60ff: $00
	ld   a, [bc]                                     ; $6100: $0a
	ld   bc, $9ea3                                   ; $6101: $01 $a3 $9e
	and  e                                           ; $6104: $a3
	and  l                                           ; $6105: $a5
	db   $ec                                         ; $6106: $ec
	cp   d                                           ; $6107: $ba
	ld   [hl], l                                     ; $6108: $75
	db   $fc                                         ; $6109: $fc
	ld   h, a                                        ; $610a: $67
	ld   a, [$000d]                                  ; $610b: $fa $0d $00
	ld   a, [bc]                                     ; $610e: $0a
	rrca                                             ; $610f: $0f
	ld   bc, $011a                                   ; $6110: $01 $1a $01
	ld   a, b                                        ; $6113: $78
	and  c                                           ; $6114: $a1
	ld   l, [hl]                                     ; $6115: $6e
	sbc  [hl]                                        ; $6116: $9e
	and  e                                           ; $6117: $a3
	and  l                                           ; $6118: $a5
	db   $ec                                         ; $6119: $ec
	cp   d                                           ; $611a: $ba
	ld   l, [hl]                                     ; $611b: $6e
	ld   [hl], c                                     ; $611c: $71
	ld   l, l                                        ; $611d: $6d
	ld   a, h                                        ; $611e: $7c
	rst  $38                                         ; $611f: $ff
	rst  $38                                         ; $6120: $ff
	dec  c                                           ; $6121: $0d
	nop                                              ; $6122: $00
	ld   a, [bc]                                     ; $6123: $0a
	rrca                                             ; $6124: $0f
	nop                                              ; $6125: $00
	ld   bc, $0101                                   ; $6126: $01 $01 $01
	inc  bc                                          ; $6129: $03
	inc  bc                                          ; $612a: $03
	ld   e, e                                        ; $612b: $5b
	ld   e, c                                        ; $612c: $59
	ld   [hl], c                                     ; $612d: $71
	ld   l, l                                        ; $612e: $6d
	rst  $38                                         ; $612f: $ff
	rst  $38                                         ; $6130: $ff
	ld   bc, $0d04                                   ; $6131: $01 $04 $0d
	nop                                              ; $6134: $00
	ld   a, [bc]                                     ; $6135: $0a
	rrca                                             ; $6136: $0f
	ld   bc, $011b                                   ; $6137: $01 $1b $01
	rst  $38                                         ; $613a: $ff
	rst  $38                                         ; $613b: $ff
	ld   a, b                                        ; $613c: $78
	and  c                                           ; $613d: $a1
	ld   [hl], h                                     ; $613e: $74
	sbc  [hl]                                        ; $613f: $9e
	ld   l, e                                        ; $6140: $6b
	and  c                                           ; $6141: $a1
	ld   a, b                                        ; $6142: $78
	inc  bc                                          ; $6143: $03
	and  l                                           ; $6144: $a5
	ld   a, h                                        ; $6145: $7c
	dec  c                                           ; $6146: $0d
	and  e                                           ; $6147: $a3
	and  l                                           ; $6148: $a5
	db   $ec                                         ; $6149: $ec
	cp   d                                           ; $614a: $ba
	ld   e, d                                        ; $614b: $5a
	ld   d, d                                        ; $614c: $52
	sbc  c                                           ; $614d: $99
	sbc  l                                           ; $614e: $9d
	ld   e, a                                        ; $614f: $5f
	dec  c                                           ; $6150: $0d
	ld   a, b                                        ; $6151: $78
	ld   d, d                                        ; $6152: $52
	ld   [hl], l                                     ; $6153: $75
	ld   h, l                                        ; $6154: $65
	sub  l                                           ; $6155: $95
	ld   a, [$000d]                                  ; $6156: $fa $0d $00
	ld   a, [bc]                                     ; $6159: $0a
	dec  c                                           ; $615a: $0d
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	rrca                                             ; $615d: $0f
	nop                                              ; $615e: $00
	ld   bc, $020c                                   ; $615f: $01 $0c $02
	ld   b, $e0                                      ; $6162: $06 $e0
	ld   [bc], a                                     ; $6164: $02
	rrca                                             ; $6165: $0f
	nop                                              ; $6166: $00
	ld   bc, $0101                                   ; $6167: $01 $01 $01
	inc  bc                                          ; $616a: $03
	ld   h, c                                        ; $616b: $61
	ld   h, c                                        ; $616c: $61
	ld   a, l                                        ; $616d: $7d
	inc  bc                                          ; $616e: $03
	push de                                          ; $616f: $d5
	ld   h, b                                        ; $6170: $60
	sub  [hl]                                        ; $6171: $96
	ld   d, h                                        ; $6172: $54
	rst  $38                                         ; $6173: $ff
	rst  $38                                         ; $6174: $ff
	ld   bc, $0d04                                   ; $6175: $01 $04 $0d
	nop                                              ; $6178: $00
	ld   a, [bc]                                     ; $6179: $0a
	ld   bc, $fa50                                   ; $617a: $01 $50 $fa
	dec  c                                           ; $617d: $0d
	ld   a, b                                        ; $617e: $78
	ld   l, d                                        ; $617f: $6a
	ld   h, c                                        ; $6180: $61
	and  c                                           ; $6181: $a1
	ld   a, b                                        ; $6182: $78
	inc  bc                                          ; $6183: $03
	ld   c, e                                        ; $6184: $4b
	ld   a, c                                        ; $6185: $79
	pop  de                                          ; $6186: $d1
	set  1, e                                        ; $6187: $cb $cb
	ld   a, h                                        ; $6189: $7c
	ld   b, $1c                                      ; $618a: $06 $1c
	ld   e, d                                        ; $618c: $5a
	ld   sp, hl                                      ; $618d: $f9
	dec  c                                           ; $618e: $0d
	nop                                              ; $618f: $00
	ld   a, [bc]                                     ; $6190: $0a
	ld   bc, $9d54                                   ; $6191: $01 $54 $9d
	ld   [hl], c                                     ; $6194: $71
	ld   a, [$000d]                                  ; $6195: $fa $0d $00
	ld   a, [bc]                                     ; $6198: $0a
	inc  c                                           ; $6199: $0c
	rlca                                             ; $619a: $07
	inc  d                                           ; $619b: $14
	ld   [$0101], sp                                 ; $619c: $08 $01 $01
	ld   d, b                                        ; $619f: $50
	ld   l, l                                        ; $61a0: $6d
	ld   l, l                                        ; $61a1: $6d
	ld   l, l                                        ; $61a2: $6d
	ld   l, l                                        ; $61a3: $6d
	ld   l, l                                        ; $61a4: $6d
	ld   l, l                                        ; $61a5: $6d
	rst  $38                                         ; $61a6: $ff
	rst  $38                                         ; $61a7: $ff
	dec  c                                           ; $61a8: $0d
	nop                                              ; $61a9: $00
	ld   a, [bc]                                     ; $61aa: $0a
	inc  c                                           ; $61ab: $0c
	ld   [bc], a                                     ; $61ac: $02
	dec  c                                           ; $61ad: $0d
	nop                                              ; $61ae: $00
	nop                                              ; $61af: $00
	rrca                                             ; $61b0: $0f
	nop                                              ; $61b1: $00
	ld   bc, $e006                                   ; $61b2: $01 $06 $e0
	ld   [bc], a                                     ; $61b5: $02
	dec  c                                           ; $61b6: $0d
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	rrca                                             ; $61b9: $0f
	nop                                              ; $61ba: $00
	ld   bc, $020c                                   ; $61bb: $01 $0c $02
	ld   c, $6c                                      ; $61be: $0e $6c
	inc  e                                           ; $61c0: $1c
	ld   bc, $0202                                   ; $61c1: $01 $02 $02
	dec  e                                           ; $61c4: $1d
	ld   b, b                                        ; $61c5: $40
	ld   de, $1103                                   ; $61c6: $11 $03 $11
	ld   bc, $2903                                   ; $61c9: $01 $03 $29
	nop                                              ; $61cc: $00
	ld   bc, $0008                                   ; $61cd: $01 $08 $00
	ld   h, e                                        ; $61d0: $63
	and  c                                           ; $61d1: $a1
	ld   a, [$7c0d]                                  ; $61d2: $fa $0d $7c
	ld   l, h                                        ; $61d5: $6c
	ld   e, e                                        ; $61d6: $5b
	ld   l, [hl]                                     ; $61d7: $6e
	ld   a, b                                        ; $61d8: $78
	and  c                                           ; $61d9: $a1
	ld   [hl], h                                     ; $61da: $74
	sbc  [hl]                                        ; $61db: $9e
	ld   d, b                                        ; $61dc: $50
	ld   l, l                                        ; $61dd: $6d
	ld   h, l                                        ; $61de: $65
	dec  c                                           ; $61df: $0d
	ld   [bc], a                                     ; $61e0: $02
	sub  l                                           ; $61e1: $95
	ld   l, e                                        ; $61e2: $6b
	ld   h, c                                        ; $61e3: $61
	ld   a, b                                        ; $61e4: $78
	ld   d, d                                        ; $61e5: $52
	adc  h                                           ; $61e6: $8c
	ld   h, l                                        ; $61e7: $65
	ld   l, l                                        ; $61e8: $6d
	ld   a, [$000d]                                  ; $61e9: $fa $0d $00
	ld   a, [bc]                                     ; $61ec: $0a
	dec  b                                           ; $61ed: $05
	ld   b, b                                        ; $61ee: $40
	ld   c, b                                        ; $61ef: $48
	ld   [bc], a                                     ; $61f0: $02
	nop                                              ; $61f1: $00
	nop                                              ; $61f2: $00
	ld   bc, $f5d6                                   ; $61f3: $01 $d6 $f5
	ld   a, [$000d]                                  ; $61f6: $fa $0d $00
	ld   a, [bc]                                     ; $61f9: $0a
	dec  b                                           ; $61fa: $05
	ld   b, b                                        ; $61fb: $40
	ld   c, [hl]                                     ; $61fc: $4e
	ld   bc, $0002                                   ; $61fd: $01 $02 $00
	dec  c                                           ; $6200: $0d
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	rrca                                             ; $6203: $0f
	nop                                              ; $6204: $00
	ld   bc, $1e09                                   ; $6205: $01 $09 $1e
	rlca                                             ; $6208: $07
	dec  sp                                          ; $6209: $3b
	inc  bc                                          ; $620a: $03
	inc  b                                           ; $620b: $04
	add  b                                           ; $620c: $80
	ld   b, $01                                      ; $620d: $06 $01
	rst  $38                                         ; $620f: $ff
	jr   nz, jr_05f_6212                             ; $6210: $20 $00

jr_05f_6212:
	dec  b                                           ; $6212: $05
	add  b                                           ; $6213: $80
	ld   b, $01                                      ; $6214: $06 $01
	ld   bc, $0000                                   ; $6216: $01 $00 $00
	inc  c                                           ; $6219: $0c
	ld   [bc], a                                     ; $621a: $02
	ld   c, $02                                      ; $621b: $0e $02
	rrca                                             ; $621d: $0f
	nop                                              ; $621e: $00
	ld   bc, $5001                                   ; $621f: $01 $01 $50
	rst  $38                                         ; $6222: $ff
	rst  $38                                         ; $6223: $ff
	sbc  [hl]                                        ; $6224: $9e
	sub  d                                           ; $6225: $92
	ld   a, [hl]                                     ; $6226: $7e
	ld   d, d                                        ; $6227: $52
	sub  [hl]                                        ; $6228: $96
	ld   a, b                                        ; $6229: $78
	db   $fc                                         ; $622a: $fc
	rst  $38                                         ; $622b: $ff
	rst  $38                                         ; $622c: $ff
	dec  c                                           ; $622d: $0d
	inc  bc                                          ; $622e: $03
	add  b                                           ; $622f: $80
	dec  b                                           ; $6230: $05
	db   $10                                         ; $6231: $10
	inc  bc                                          ; $6232: $03
	ld   [hl], l                                     ; $6233: $75
	halt                                             ; $6234: $76
	ld   a, l                                        ; $6235: $7d
	ld   d, d                                        ; $6236: $52
	ld   d, [hl]                                     ; $6237: $56
	rst  $38                                         ; $6238: $ff
	rst  $38                                         ; $6239: $ff
	rst  $38                                         ; $623a: $ff
	rst  $38                                         ; $623b: $ff
	dec  c                                           ; $623c: $0d
	rst  $38                                         ; $623d: $ff
	rst  $38                                         ; $623e: $ff
	rst  $38                                         ; $623f: $ff
	rst  $38                                         ; $6240: $ff
	rst  $38                                         ; $6241: $ff
	rst  $38                                         ; $6242: $ff
	rst  $38                                         ; $6243: $ff
	rst  $38                                         ; $6244: $ff
	rst  $38                                         ; $6245: $ff
	rst  $38                                         ; $6246: $ff
	dec  c                                           ; $6247: $0d
	nop                                              ; $6248: $00
	ld   a, [bc]                                     ; $6249: $0a
	inc  d                                           ; $624a: $14
	ld   b, $01                                      ; $624b: $06 $01
	rrca                                             ; $624d: $0f
	dec  bc                                          ; $624e: $0b
	ld   [bc], a                                     ; $624f: $02
	ld   bc, $0008                                   ; $6250: $01 $08 $00
	ld   e, l                                        ; $6253: $5d
	and  c                                           ; $6254: $a1
	sbc  a                                           ; $6255: $9f
	dec  c                                           ; $6256: $0d
	ld   [bc], a                                     ; $6257: $02
	and  l                                           ; $6258: $a5
	ld   h, a                                        ; $6259: $67
	ld   e, [hl]                                     ; $625a: $5e
	sbc  [hl]                                        ; $625b: $9e
	inc  bc                                          ; $625c: $03
	add  l                                           ; $625d: $85
	inc  b                                           ; $625e: $04
	xor  e                                           ; $625f: $ab
	inc  bc                                          ; $6260: $03
	add  d                                           ; $6261: $82
	inc  bc                                          ; $6262: $03
	ld   c, l                                        ; $6263: $4d
	ld   a, c                                        ; $6264: $79
	dec  b                                           ; $6265: $05
	db   $10                                         ; $6266: $10
	ld   a, b                                        ; $6267: $78
	ld   h, e                                        ; $6268: $63
	ld   d, d                                        ; $6269: $52
	sbc  a                                           ; $626a: $9f
	dec  c                                           ; $626b: $0d
	nop                                              ; $626c: $00
	ld   a, [bc]                                     ; $626d: $0a
	rrca                                             ; $626e: $0f
	nop                                              ; $626f: $00
	ld   bc, $020c                                   ; $6270: $01 $0c $02
	add  hl, bc                                      ; $6273: $09
	ld   e, $01                                      ; $6274: $1e $01
	adc  h                                           ; $6276: $8c
	sbc  [hl]                                        ; $6277: $9e
	adc  h                                           ; $6278: $8c
	ld   h, e                                        ; $6279: $63
	ld   e, c                                        ; $627a: $59
	rst  $38                                         ; $627b: $ff
	rst  $38                                         ; $627c: $ff
	dec  c                                           ; $627d: $0d
	nop                                              ; $627e: $00
	ld   a, [bc]                                     ; $627f: $0a
	ld   c, $0e                                      ; $6280: $0e $0e
	inc  e                                           ; $6282: $1c
	ld   a, [bc]                                     ; $6283: $0a
	inc  b                                           ; $6284: $04
	inc  b                                           ; $6285: $04
	ld   bc, $5258                                   ; $6286: $01 $58 $52
	sbc  [hl]                                        ; $6289: $9e
	ld   [$9f00], sp                                 ; $628a: $08 $00 $9f
	dec  c                                           ; $628d: $0d
	ld   e, b                                        ; $628e: $58
	adc  a                                           ; $628f: $8f
	ei                                               ; $6290: $fb
	cp   b                                           ; $6291: $b8
	push hl                                          ; $6292: $e5
	pop  af                                          ; $6293: $f1
	ei                                               ; $6294: $fb
	ld   a, h                                        ; $6295: $7c
	ld   l, h                                        ; $6296: $6c
	ld   d, d                                        ; $6297: $52
	ld   [hl], h                                     ; $6298: $74
	ld   l, l                                        ; $6299: $6d
	and  c                                           ; $629a: $a1
	dec  c                                           ; $629b: $0d
	ld   l, [hl]                                     ; $629c: $6e
	ld   [hl], c                                     ; $629d: $71
	ld   [hl], h                                     ; $629e: $74
	ld   a, b                                        ; $629f: $78
	sbc  a                                           ; $62a0: $9f
	dec  c                                           ; $62a1: $0d
	nop                                              ; $62a2: $00
	ld   a, [bc]                                     ; $62a3: $0a
	ld   bc, $a102                                   ; $62a4: $01 $02 $a1
	inc  bc                                          ; $62a7: $03
	and  b                                           ; $62a8: $a0
	ld   l, a                                        ; $62a9: $6f
	ld   a, l                                        ; $62aa: $7d
	sbc  [hl]                                        ; $62ab: $9e
	sbc  l                                           ; $62ac: $9d
	ld   e, c                                        ; $62ad: $59
	sub  a                                           ; $62ae: $97
	and  c                                           ; $62af: $a1
	ld   [hl], l                                     ; $62b0: $75
	sub  b                                           ; $62b1: $90
	ld   a, b                                        ; $62b2: $78
	ld   d, d                                        ; $62b3: $52
	dec  c                                           ; $62b4: $0d
	ld   e, d                                        ; $62b5: $5a
	sbc  [hl]                                        ; $62b6: $9e
	inc  de                                          ; $62b7: $13
	ld   [bc], a                                     ; $62b8: $02
	sub  e                                           ; $62b9: $93
	sub  b                                           ; $62ba: $90
	sub  d                                           ; $62bb: $92
	ld   [hl], c                                     ; $62bc: $71
	ld   l, a                                        ; $62bd: $6f
	sub  c                                           ; $62be: $91
	ei                                               ; $62bf: $fb
	dec  c                                           ; $62c0: $0d
	adc  h                                           ; $62c1: $8c
	ld   l, b                                        ; $62c2: $68
	ld   d, d                                        ; $62c3: $52
	ld   l, [hl]                                     ; $62c4: $6e
	sbc  e                                           ; $62c5: $9b
	sbc  a                                           ; $62c6: $9f
	dec  c                                           ; $62c7: $0d
	nop                                              ; $62c8: $00
	ld   a, [bc]                                     ; $62c9: $0a
	ld   bc, $7e59                                   ; $62ca: $01 $59 $7e
	ld   [hl], c                                     ; $62cd: $71
	ld   [hl], h                                     ; $62ce: $74
	sub  d                                           ; $62cf: $92
	sbc  b                                           ; $62d0: $98
	ld   l, l                                        ; $62d1: $6d
	ld   d, d                                        ; $62d2: $52
	ld   e, d                                        ; $62d3: $5a
	dec  c                                           ; $62d4: $0d
	ld   [bc], a                                     ; $62d5: $02
	sbc  b                                           ; $62d6: $98
	inc  bc                                          ; $62d7: $03
	nop                                              ; $62d8: $00
	ld   a, h                                        ; $62d9: $7c
	inc  bc                                          ; $62da: $03
	ld   l, e                                        ; $62db: $6b
	inc  bc                                          ; $62dc: $03
	ld   c, a                                        ; $62dd: $4f
	sbc  [hl]                                        ; $62de: $9e
	ld   l, a                                        ; $62df: $6f
	sub  l                                           ; $62e0: $95
	ld   [hl], c                                     ; $62e1: $71
	halt                                             ; $62e2: $76
	ldh  [c], a                                      ; $62e3: $e2
	db   $ec                                         ; $62e4: $ec
	dec  c                                           ; $62e5: $0d
	ld   a, b                                        ; $62e6: $78
	and  c                                           ; $62e7: $a1
	ld   [hl], l                                     ; $62e8: $75
	ld   a, b                                        ; $62e9: $78
	sbc  a                                           ; $62ea: $9f
	dec  c                                           ; $62eb: $0d
	nop                                              ; $62ec: $00
	ld   a, [bc]                                     ; $62ed: $0a
	inc  e                                           ; $62ee: $1c
	ld   a, [bc]                                     ; $62ef: $0a
	ld   [bc], a                                     ; $62f0: $02
	ld   [bc], a                                     ; $62f1: $02
	ld   bc, $9d59                                   ; $62f2: $01 $59 $9d
	ld   d, d                                        ; $62f5: $52
	ld   l, e                                        ; $62f6: $6b
	ld   d, h                                        ; $62f7: $54
	ld   l, [hl]                                     ; $62f8: $6e
	ld   e, d                                        ; $62f9: $5a
	sbc  [hl]                                        ; $62fa: $9e
	dec  c                                           ; $62fb: $0d
	inc  b                                           ; $62fc: $04
	dec  c                                           ; $62fd: $0d
	ld   [bc], a                                     ; $62fe: $02
	sub  [hl]                                        ; $62ff: $96
	inc  b                                           ; $6300: $04
	ld   b, l                                        ; $6301: $45
	inc  b                                           ; $6302: $04
	ld   a, [bc]                                     ; $6303: $0a
	ld   a, l                                        ; $6304: $7d
	ld   h, c                                        ; $6305: $61
	ld   h, c                                        ; $6306: $61
	ld   [hl], l                                     ; $6307: $75
	inc  bc                                          ; $6308: $03
	ld   a, [hl]                                     ; $6309: $7e
	dec  b                                           ; $630a: $05
	nop                                              ; $630b: $00
	ld   l, [hl]                                     ; $630c: $6e
	ld   a, [$000d]                                  ; $630d: $fa $0d $00
	ld   a, [bc]                                     ; $6310: $0a
	ld   bc, $a102                                   ; $6311: $01 $02 $a1
	inc  bc                                          ; $6314: $03
	and  b                                           ; $6315: $a0
	ld   l, a                                        ; $6316: $6f
	and  b                                           ; $6317: $a0
	inc  b                                           ; $6318: $04
	ld   b, l                                        ; $6319: $45
	sbc  d                                           ; $631a: $9a
	dec  b                                           ; $631b: $05
	scf                                              ; $631c: $37
	ld   d, [hl]                                     ; $631d: $56
	ld   [hl], h                                     ; $631e: $74
	dec  c                                           ; $631f: $0d
	inc  bc                                          ; $6320: $03
	add  b                                           ; $6321: $80
	inc  bc                                          ; $6322: $03
	jp   c, Jump_05f_7465                            ; $6323: $da $65 $74

	ld   e, e                                        ; $6326: $5b
	ld   a, b                                        ; $6327: $78
	ld   a, [$000d]                                  ; $6328: $fa $0d $00
	ld   a, [bc]                                     ; $632b: $0a
	ld   h, $01                                      ; $632c: $26 $01
	sub  $f5                                         ; $632e: $d6 $f5
	db   $fc                                         ; $6330: $fc
	sub  $fc                                         ; $6331: $d6 $fc
	sub  $d6                                         ; $6333: $d6 $d6
	push af                                          ; $6335: $f5
	dec  c                                           ; $6336: $0d
	nop                                              ; $6337: $00
	ld   a, [bc]                                     ; $6338: $0a
	rrca                                             ; $6339: $0f
	nop                                              ; $633a: $00
	ld   bc, $0101                                   ; $633b: $01 $01 $01
	inc  bc                                          ; $633e: $03
	rst  $38                                         ; $633f: $ff
	rst  $38                                         ; $6340: $ff
	ld   a, [$100d]                                  ; $6341: $fa $0d $10
	ld   h, e                                        ; $6344: $63
	ld   e, l                                        ; $6345: $5d
	sub  a                                           ; $6346: $97
	ld   h, e                                        ; $6347: $63
	and  c                                           ; $6348: $a1
	ld   e, d                                        ; $6349: $5a
	ld   d, d                                        ; $634a: $52
	sbc  c                                           ; $634b: $99
	ld   a, [$0401]                                  ; $634c: $fa $01 $04
	dec  c                                           ; $634f: $0d
	nop                                              ; $6350: $00
	ld   a, [bc]                                     ; $6351: $0a
	add  hl, de                                      ; $6352: $19
	dec  b                                           ; $6353: $05
	ld   [bc], a                                     ; $6354: $02
	ld   [bc], a                                     ; $6355: $02
	and  b                                           ; $6356: $a0
	ld   [hl], e                                     ; $6357: $73
	ld   e, l                                        ; $6358: $5d
	nop                                              ; $6359: $00
	nop                                              ; $635a: $00
	dec  b                                           ; $635b: $05
	ld   d, $6f                                      ; $635c: $16 $6f
	ld   [bc], a                                     ; $635e: $02
	ld   d, e                                        ; $635f: $53
	sbc  c                                           ; $6360: $99
	nop                                              ; $6361: $00
	ld   bc, $ec07                                   ; $6362: $01 $07 $ec
	inc  b                                           ; $6365: $04
	ld   [bc], a                                     ; $6366: $02
	inc  bc                                          ; $6367: $03
	ld   bc, $2000                                   ; $6368: $01 $00 $20
	nop                                              ; $636b: $00
	rlca                                             ; $636c: $07
	sbc  d                                           ; $636d: $9a
	inc  b                                           ; $636e: $04
	ld   [bc], a                                     ; $636f: $02
	inc  bc                                          ; $6370: $03
	ld   bc, $2001                                   ; $6371: $01 $01 $20
	nop                                              ; $6374: $00
	ld   b, $c1                                      ; $6375: $06 $c1
	inc  b                                           ; $6377: $04
	rrca                                             ; $6378: $0f
	nop                                              ; $6379: $00
	ld   bc, $0101                                   ; $637a: $01 $01 $01
	inc  bc                                          ; $637d: $03
	sub  d                                           ; $637e: $92
	ld   [hl], c                                     ; $637f: $71
	ld   a, a                                        ; $6380: $7f
	sbc  b                                           ; $6381: $98
	sbc  [hl]                                        ; $6382: $9e
	ld   a, h                                        ; $6383: $7c
	ld   l, h                                        ; $6384: $6c
	ld   e, e                                        ; $6385: $5b
	ld   a, l                                        ; $6386: $7d
	pop  bc                                          ; $6387: $c1
	db   $e3                                         ; $6388: $e3
	ld   l, [hl]                                     ; $6389: $6e
	sub  [hl]                                        ; $638a: $96
	dec  c                                           ; $638b: $0d
	db   $10                                         ; $638c: $10
	ld   h, c                                        ; $638d: $61
	ld   h, c                                        ; $638e: $61
	ld   a, l                                        ; $638f: $7d
	ld   d, d                                        ; $6390: $52
	ld   h, e                                        ; $6391: $63
	ld   e, h                                        ; $6392: $5c
	sub  [hl]                                        ; $6393: $96
	ld   e, l                                        ; $6394: $5d
	ld   [bc], a                                     ; $6395: $02
	ld   d, e                                        ; $6396: $53
	sbc  e                                           ; $6397: $9b
	ld   d, h                                        ; $6398: $54
	ld   bc, $0d04                                   ; $6399: $01 $04 $0d
	nop                                              ; $639c: $00
	ld   a, [bc]                                     ; $639d: $0a
	nop                                              ; $639e: $00
	rrca                                             ; $639f: $0f
	ld   bc, $011c                                   ; $63a0: $01 $1c $01
	inc  bc                                          ; $63a3: $03
	xor  c                                           ; $63a4: $a9
	ld   e, c                                        ; $63a5: $59
	ld   l, e                                        ; $63a6: $6b
	ld   h, c                                        ; $63a7: $61
	ld   a, c                                        ; $63a8: $79
	ld   d, d                                        ; $63a9: $52
	sbc  c                                           ; $63aa: $99
	and  c                                           ; $63ab: $a1
	ld   [hl], l                                     ; $63ac: $75
	ld   h, a                                        ; $63ad: $67
	ld   e, c                                        ; $63ae: $59
	ld   sp, hl                                      ; $63af: $f9
	dec  c                                           ; $63b0: $0d
	nop                                              ; $63b1: $00
	ld   a, [bc]                                     ; $63b2: $0a
	rrca                                             ; $63b3: $0f
	nop                                              ; $63b4: $00
	ld   bc, $0101                                   ; $63b5: $01 $01 $01
	inc  bc                                          ; $63b8: $03
	adc  h                                           ; $63b9: $8c
	ld   l, b                                        ; $63ba: $68
	ld   d, d                                        ; $63bb: $52
	rst  $38                                         ; $63bc: $ff
	rst  $38                                         ; $63bd: $ff
	inc  bc                                          ; $63be: $03
	push de                                          ; $63bf: $d5
	ld   h, b                                        ; $63c0: $60
	sub  [hl]                                        ; $63c1: $96
	ld   d, h                                        ; $63c2: $54
	ld   a, [$0401]                                  ; $63c3: $fa $01 $04
	dec  c                                           ; $63c6: $0d
	nop                                              ; $63c7: $00
	ld   a, [bc]                                     ; $63c8: $0a
	nop                                              ; $63c9: $00
	rrca                                             ; $63ca: $0f
	nop                                              ; $63cb: $00
	ld   bc, $0101                                   ; $63cc: $01 $01 $01
	inc  bc                                          ; $63cf: $03
	sub  b                                           ; $63d0: $90
	ld   d, h                                        ; $63d1: $54
	inc  bc                                          ; $63d2: $03
	ld   l, h                                        ; $63d3: $6c
	ld   h, l                                        ; $63d4: $65
	ld   [bc], a                                     ; $63d5: $02
	and  b                                           ; $63d6: $a0
	ld   [hl], e                                     ; $63d7: $73
	ld   d, d                                        ; $63d8: $52
	ld   [hl], h                                     ; $63d9: $74
	adc  l                                           ; $63da: $8d
	sub  [hl]                                        ; $63db: $96
	ld   d, h                                        ; $63dc: $54
	ld   bc, $0d04                                   ; $63dd: $01 $04 $0d
	nop                                              ; $63e0: $00
	ld   a, [bc]                                     ; $63e1: $0a
	rlca                                             ; $63e2: $07
	ld   h, b                                        ; $63e3: $60
	dec  b                                           ; $63e4: $05
	inc  bc                                          ; $63e5: $03
	ld   de, $a001                                   ; $63e6: $11 $01 $a0
	ld   [hl+], a                                    ; $63e9: $22
	nop                                              ; $63ea: $00
	rrca                                             ; $63eb: $0f
	ld   bc, $011a                                   ; $63ec: $01 $1a $01
	ld   d, b                                        ; $63ef: $50
	db   $fc                                         ; $63f0: $fc
	ld   [bc], a                                     ; $63f1: $02
	and  c                                           ; $63f2: $a1
	inc  bc                                          ; $63f3: $03
	and  b                                           ; $63f4: $a0
	ld   l, a                                        ; $63f5: $6f
	ld   d, d                                        ; $63f6: $52
	ld   d, d                                        ; $63f7: $52
	rst  $38                                         ; $63f8: $ff
	rst  $38                                         ; $63f9: $ff
	dec  c                                           ; $63fa: $0d
	cp   b                                           ; $63fb: $b8
	push hl                                          ; $63fc: $e5
	pop  af                                          ; $63fd: $f1
	ei                                               ; $63fe: $fb
	ld   [hl], c                                     ; $63ff: $71
	ld   [hl], h                                     ; $6400: $74
	inc  b                                           ; $6401: $04
	ld   c, $02                                      ; $6402: $0e $02
	sbc  d                                           ; $6404: $9a
	ld   e, e                                        ; $6405: $5b
	rst  $38                                         ; $6406: $ff
	rst  $38                                         ; $6407: $ff
	dec  c                                           ; $6408: $0d
	nop                                              ; $6409: $00
	ld   a, [bc]                                     ; $640a: $0a
	add  hl, de                                      ; $640b: $19
	dec  b                                           ; $640c: $05
	ld   bc, $c004                                   ; $640d: $01 $04 $c0
	inc  bc                                          ; $6410: $03
	ld   a, l                                        ; $6411: $7d
	ld   h, l                                        ; $6412: $65
	ld   l, l                                        ; $6413: $6d
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	rlca                                             ; $6416: $07
	ld   b, h                                        ; $6417: $44
	dec  b                                           ; $6418: $05
	ld   [bc], a                                     ; $6419: $02
	inc  bc                                          ; $641a: $03
	ld   bc, $2000                                   ; $641b: $01 $00 $20
	nop                                              ; $641e: $00
	ld   b, $60                                      ; $641f: $06 $60
	dec  b                                           ; $6421: $05
	rrca                                             ; $6422: $0f
	nop                                              ; $6423: $00
	ld   bc, $0101                                   ; $6424: $01 $01 $01
	inc  bc                                          ; $6427: $03
	ld   l, e                                        ; $6428: $6b
	sbc  e                                           ; $6429: $9b
	ld   l, e                                        ; $642a: $6b
	sbc  e                                           ; $642b: $9b
	ld   [bc], a                                     ; $642c: $02
	inc  l                                           ; $642d: $2c
	ld   e, e                                        ; $642e: $5b
	inc  bc                                          ; $642f: $03
	ld   h, l                                        ; $6430: $65
	ld   h, b                                        ; $6431: $60
	sub  [hl]                                        ; $6432: $96
	ld   d, h                                        ; $6433: $54
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	ld   bc, $0d04                                   ; $6436: $01 $04 $0d
	db   $10                                         ; $6439: $10
	dec  c                                           ; $643a: $0d
	nop                                              ; $643b: $00
	ld   a, [bc]                                     ; $643c: $0a
	nop                                              ; $643d: $00
	rrca                                             ; $643e: $0f
	ld   bc, $011c                                   ; $643f: $01 $1c $01
	rst  $38                                         ; $6442: $ff
	rst  $38                                         ; $6443: $ff
	ld   a, [$6b0d]                                  ; $6444: $fa $0d $6b
	ld   h, c                                        ; $6447: $61
	ld   a, c                                        ; $6448: $79
	inc  bc                                          ; $6449: $03
	xor  c                                           ; $644a: $a9
	ld   e, c                                        ; $644b: $59
	ld   d, d                                        ; $644c: $52
	sbc  c                                           ; $644d: $99
	and  c                                           ; $644e: $a1
	ld   [hl], l                                     ; $644f: $75
	ld   h, a                                        ; $6450: $67
	ld   e, c                                        ; $6451: $59
	ld   sp, hl                                      ; $6452: $f9
	dec  c                                           ; $6453: $0d
	nop                                              ; $6454: $00
	ld   a, [bc]                                     ; $6455: $0a
	rrca                                             ; $6456: $0f
	nop                                              ; $6457: $00
	ld   bc, $0101                                   ; $6458: $01 $01 $01
	inc  bc                                          ; $645b: $03
	ld   [bc], a                                     ; $645c: $02
	and  c                                           ; $645d: $a1
	ld   [hl], e                                     ; $645e: $73
	ld   e, c                                        ; $645f: $59
	sbc  d                                           ; $6460: $9a
	ld   l, l                                        ; $6461: $6d
	ld   a, [$0401]                                  ; $6462: $fa $01 $04
	dec  c                                           ; $6465: $0d
	nop                                              ; $6466: $00
	ld   a, [bc]                                     ; $6467: $0a
	add  hl, de                                      ; $6468: $19
	dec  b                                           ; $6469: $05
	inc  bc                                          ; $646a: $03
	inc  bc                                          ; $646b: $03
	db   $db                                         ; $646c: $db
	ld   bc, $7614                                   ; $646d: $01 $14 $76
	ld   h, a                                        ; $6470: $67
	sbc  c                                           ; $6471: $99
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	sub  b                                           ; $6474: $90
	ld   a, h                                        ; $6475: $7c
	adc  h                                           ; $6476: $8c
	ld   a, e                                        ; $6477: $7b
	and  b                                           ; $6478: $a0
	ld   h, a                                        ; $6479: $67
	sbc  c                                           ; $647a: $99
	nop                                              ; $647b: $00
	ld   bc, $d503                                   ; $647c: $01 $03 $d5
	ld   h, b                                        ; $647f: $60
	inc  bc                                          ; $6480: $03
	add  b                                           ; $6481: $80
	ld   h, a                                        ; $6482: $67
	nop                                              ; $6483: $00
	ld   [bc], a                                     ; $6484: $02
	rlca                                             ; $6485: $07
	push bc                                          ; $6486: $c5
	dec  b                                           ; $6487: $05
	ld   [bc], a                                     ; $6488: $02
	inc  bc                                          ; $6489: $03
	ld   bc, $2000                                   ; $648a: $01 $00 $20
	nop                                              ; $648d: $00
	rlca                                             ; $648e: $07
	halt                                             ; $648f: $76
	ld   b, $02                                      ; $6490: $06 $02
	inc  bc                                          ; $6492: $03
	ld   bc, $2001                                   ; $6493: $01 $01 $20
	nop                                              ; $6496: $00
	rlca                                             ; $6497: $07
	ldh  [c], a                                      ; $6498: $e2
	ld   b, $02                                      ; $6499: $06 $02
	inc  bc                                          ; $649b: $03
	ld   bc, $2002                                   ; $649c: $01 $02 $20
	nop                                              ; $649f: $00
	ld   b, $2f                                      ; $64a0: $06 $2f
	rlca                                             ; $64a2: $07
	rrca                                             ; $64a3: $0f
	nop                                              ; $64a4: $00
	ld   bc, $0101                                   ; $64a5: $01 $01 $01
	inc  bc                                          ; $64a8: $03
	ld   h, c                                        ; $64a9: $61
	ld   h, c                                        ; $64aa: $61
	ld   a, l                                        ; $64ab: $7d
	inc  bc                                          ; $64ac: $03
	db   $db                                         ; $64ad: $db
	ld   bc, $7614                                   ; $64ae: $01 $14 $76
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	ld   bc, $0d04                                   ; $64b3: $01 $04 $0d
	nop                                              ; $64b6: $00
	ld   a, [bc]                                     ; $64b7: $0a
	ld   bc, $9e50                                   ; $64b8: $01 $50 $9e
	ld   h, a                                        ; $64bb: $67
	adc  l                                           ; $64bc: $8d
	adc  h                                           ; $64bd: $8c
	ld   l, c                                        ; $64be: $69
	and  c                                           ; $64bf: $a1
	rst  $38                                         ; $64c0: $ff
	rst  $38                                         ; $64c1: $ff
	dec  c                                           ; $64c2: $0d
	ld   [hl], a                                     ; $64c3: $77
	ld   a, b                                        ; $64c4: $78
	ld   l, l                                        ; $64c5: $6d
	ld   e, c                                        ; $64c6: $59
	inc  b                                           ; $64c7: $04
	ld   b, l                                        ; $64c8: $45
	ld   [hl], c                                     ; $64c9: $71
	ld   [hl], h                                     ; $64ca: $74
	sub  a                                           ; $64cb: $97
	ld   [hl], c                                     ; $64cc: $71
	ld   h, l                                        ; $64cd: $65
	sub  c                                           ; $64ce: $91
	sbc  c                                           ; $64cf: $99
	and  c                                           ; $64d0: $a1
	dec  c                                           ; $64d1: $0d
	ld   [hl], l                                     ; $64d2: $75
	ld   h, a                                        ; $64d3: $67
	ld   a, e                                        ; $64d4: $7b
	ld   sp, hl                                      ; $64d5: $f9
	dec  c                                           ; $64d6: $0d
	nop                                              ; $64d7: $00
	ld   a, [bc]                                     ; $64d8: $0a
	rrca                                             ; $64d9: $0f
	ld   bc, $011c                                   ; $64da: $01 $1c $01
	ld   d, b                                        ; $64dd: $50
	sbc  [hl]                                        ; $64de: $9e
	ld   [$6300], sp                                 ; $64df: $08 $00 $63
	and  c                                           ; $64e2: $a1
	ld   [hl], l                                     ; $64e3: $75
	ld   h, a                                        ; $64e4: $67
	ld   e, c                                        ; $64e5: $59
	ld   sp, hl                                      ; $64e6: $f9
	dec  c                                           ; $64e7: $0d
	ld   h, e                                        ; $64e8: $63
	ld   e, l                                        ; $64e9: $5d
	sub  a                                           ; $64ea: $97
	ld   [hl], l                                     ; $64eb: $75
	ld   h, a                                        ; $64ec: $67
	rst  $38                                         ; $64ed: $ff
	rst  $38                                         ; $64ee: $ff
	dec  c                                           ; $64ef: $0d
	nop                                              ; $64f0: $00
	ld   a, [bc]                                     ; $64f1: $0a
	rrca                                             ; $64f2: $0f
	nop                                              ; $64f3: $00
	ld   bc, $6301                                   ; $64f4: $01 $01 $63
	ld   e, l                                        ; $64f7: $5d
	sub  a                                           ; $64f8: $97
	ld   h, e                                        ; $64f9: $63
	and  c                                           ; $64fa: $a1
	ld   [hl], l                                     ; $64fb: $75
	ld   h, l                                        ; $64fc: $65
	ld   l, l                                        ; $64fd: $6d
	ld   e, c                                        ; $64fe: $59
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	dec  c                                           ; $6501: $0d
	ld   h, c                                        ; $6502: $61
	sbc  d                                           ; $6503: $9a
	ld   a, l                                        ; $6504: $7d
	inc  bc                                          ; $6505: $03
	add  e                                           ; $6506: $83
	dec  b                                           ; $6507: $05
	dec  c                                           ; $6508: $0d
	ld   h, l                                        ; $6509: $65
	adc  h                                           ; $650a: $8c
	ld   h, l                                        ; $650b: $65
	ld   l, l                                        ; $650c: $6d
	sbc  a                                           ; $650d: $9f
	dec  c                                           ; $650e: $0d
	nop                                              ; $650f: $00
	ld   a, [bc]                                     ; $6510: $0a
	rrca                                             ; $6511: $0f
	ld   bc, $0120                                   ; $6512: $01 $20 $01
	ld   d, b                                        ; $6515: $50
	sbc  [hl]                                        ; $6516: $9e
	ld   [$6300], sp                                 ; $6517: $08 $00 $63
	and  c                                           ; $651a: $a1
	sbc  a                                           ; $651b: $9f
	dec  c                                           ; $651c: $0d
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	sub  b                                           ; $6521: $90
	ld   h, l                                        ; $6522: $65
	ld   e, c                                        ; $6523: $59
	ld   h, l                                        ; $6524: $65
	ld   [hl], h                                     ; $6525: $74
	sbc  [hl]                                        ; $6526: $9e
	dec  c                                           ; $6527: $0d
	inc  bc                                          ; $6528: $03
	ld   l, c                                        ; $6529: $69
	ld   [bc], a                                     ; $652a: $02
	and  b                                           ; $652b: $a0
	and  a                                           ; $652c: $a7
	pop  af                                          ; $652d: $f1
	or   [hl]                                        ; $652e: $b6
	ld   a, h                                        ; $652f: $7c

jr_05f_6530:
	ld   a, h                                        ; $6530: $7c
	ld   l, h                                        ; $6531: $6c
	ld   e, e                                        ; $6532: $5b
	ld   [hl], c                                     ; $6533: $71
	ld   [hl], h                                     ; $6534: $74
	rst  $38                                         ; $6535: $ff
	rst  $38                                         ; $6536: $ff
	dec  c                                           ; $6537: $0d
	nop                                              ; $6538: $00
	ld   a, [bc]                                     ; $6539: $0a
	rrca                                             ; $653a: $0f
	nop                                              ; $653b: $00
	ld   bc, $0101                                   ; $653c: $01 $01 $01
	inc  bc                                          ; $653f: $03
	ld   d, b                                        ; $6540: $50
	ld   l, a                                        ; $6541: $6f
	sub  c                                           ; $6542: $91
	db   $fc                                         ; $6543: $fc
	ld   bc, $0d04                                   ; $6544: $01 $04 $0d
	nop                                              ; $6547: $00
	ld   a, [bc]                                     ; $6548: $0a
	dec  c                                           ; $6549: $0d
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	rrca                                             ; $654c: $0f
	nop                                              ; $654d: $00
	ld   bc, $020c                                   ; $654e: $01 $0c $02
	ld   b, $37                                      ; $6551: $06 $37
	rlca                                             ; $6553: $07
	rrca                                             ; $6554: $0f
	nop                                              ; $6555: $00
	ld   bc, $0101                                   ; $6556: $01 $01 $01
	inc  bc                                          ; $6559: $03
	ld   h, c                                        ; $655a: $61
	ld   d, h                                        ; $655b: $54
	ld   a, b                                        ; $655c: $78
	ld   [hl], c                                     ; $655d: $71
	ld   l, l                                        ; $655e: $6d
	sub  a                                           ; $655f: $97
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	ld   bc, $0d04                                   ; $6562: $01 $04 $0d
	nop                                              ; $6565: $00
	ld   a, [bc]                                     ; $6566: $0a
	ld   bc, $9e61                                   ; $6567: $01 $61 $9e
	ld   [bc], a                                     ; $656a: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $656b: $cf
	dec  b                                           ; $656c: $05
	ld   a, [de]                                     ; $656d: $1a
	sub  d                                           ; $656e: $92
	ld   a, e                                        ; $656f: $7b
	and  c                                           ; $6570: $a1
	ld   [hl], l                                     ; $6571: $75
	ld   e, b                                        ; $6572: $58
	adc  h                                           ; $6573: $8c
	ld   h, a                                        ; $6574: $67
	ld   a, [$000d]                                  ; $6575: $fa $0d $00
	ld   a, [bc]                                     ; $6578: $0a
	rrca                                             ; $6579: $0f
	ld   bc, $011a                                   ; $657a: $01 $1a $01
	ld   d, [hl]                                     ; $657d: $56
	ld   [hl], c                                     ; $657e: $71
	ld   a, [$0410]                                  ; $657f: $fa $10 $04
	ld   c, c                                        ; $6582: $49
	ld   sp, hl                                      ; $6583: $f9
	dec  c                                           ; $6584: $0d
	cp   b                                           ; $6585: $b8
	push hl                                          ; $6586: $e5
	pop  af                                          ; $6587: $f1
	ei                                               ; $6588: $fb
	ld   a, h                                        ; $6589: $7c
	ld   [bc], a                                     ; $658a: $02
	inc  bc                                          ; $658b: $03
	ld   [hl], l                                     ; $658c: $75
	sub  [hl]                                        ; $658d: $96
	ld   e, l                                        ; $658e: $5d
	ld   [bc], a                                     ; $658f: $02
	jp   nz, $0d5b                                   ; $6590: $c2 $5b $0d

	inc  bc                                          ; $6593: $03
	jr   jr_05f_6530                                 ; $6594: $18 $9a

	ld   a, b                                        ; $6596: $78
	ld   e, c                                        ; $6597: $59
	ld   [hl], c                                     ; $6598: $71
	ld   l, l                                        ; $6599: $6d
	ld   e, a                                        ; $659a: $5f
	ld   [hl], a                                     ; $659b: $77
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	ld   [bc], a                                     ; $659e: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $659f: $cf

Jump_05f_65a0:
	dec  b                                           ; $65a0: $05
	ld   a, [de]                                     ; $65a1: $1a
	ld   sp, hl                                      ; $65a2: $f9
	dec  c                                           ; $65a3: $0d
	nop                                              ; $65a4: $00
	ld   a, [bc]                                     ; $65a5: $0a
	rrca                                             ; $65a6: $0f
	nop                                              ; $65a7: $00
	ld   bc, $0101                                   ; $65a8: $01 $01 $01
	inc  bc                                          ; $65ab: $03
	inc  bc                                          ; $65ac: $03
	ld   e, e                                        ; $65ad: $5b
	ld   e, c                                        ; $65ae: $59
	ld   [hl], c                                     ; $65af: $71
	ld   l, l                                        ; $65b0: $6d
	sbc  a                                           ; $65b1: $9f
	dec  c                                           ; $65b2: $0d
	db   $10                                         ; $65b3: $10
	inc  bc                                          ; $65b4: $03
	push de                                          ; $65b5: $d5
	ld   h, b                                        ; $65b6: $60
	sub  [hl]                                        ; $65b7: $96
	ld   d, h                                        ; $65b8: $54
	ld   a, [$0401]                                  ; $65b9: $fa $01 $04
	dec  c                                           ; $65bc: $0d
	nop                                              ; $65bd: $00
	ld   a, [bc]                                     ; $65be: $0a
	nop                                              ; $65bf: $00
	rrca                                             ; $65c0: $0f
	nop                                              ; $65c1: $00
	ld   bc, $0101                                   ; $65c2: $01 $01 $01
	inc  bc                                          ; $65c5: $03
	ld   h, c                                        ; $65c6: $61
	ld   h, c                                        ; $65c7: $61
	ld   a, l                                        ; $65c8: $7d
	inc  bc                                          ; $65c9: $03
	push de                                          ; $65ca: $d5
	ld   h, b                                        ; $65cb: $60
	sub  [hl]                                        ; $65cc: $96
	ld   d, h                                        ; $65cd: $54
	rst  $38                                         ; $65ce: $ff
	rst  $38                                         ; $65cf: $ff
	ld   bc, $0d04                                   ; $65d0: $01 $04 $0d
	nop                                              ; $65d3: $00
	ld   a, [bc]                                     ; $65d4: $0a
	ld   bc, $fa50                                   ; $65d5: $01 $50 $fa
	dec  c                                           ; $65d8: $0d
	pop  af                                          ; $65d9: $f1
	call nz, $bab0                                   ; $65da: $c4 $b0 $ba
	ld   e, d                                        ; $65dd: $5a
	ld   h, c                                        ; $65de: $61
	adc  d                                           ; $65df: $8a
	sbc  d                                           ; $65e0: $9a
	ld   [hl], h                                     ; $65e1: $74
	sbc  c                                           ; $65e2: $99
	ld   a, [$0df9]                                  ; $65e3: $fa $f9 $0d
	nop                                              ; $65e6: $00
	ld   a, [bc]                                     ; $65e7: $0a
	ld   bc, $9d54                                   ; $65e8: $01 $54 $9d
	ld   [hl], c                                     ; $65eb: $71
	ld   a, [$000d]                                  ; $65ec: $fa $0d $00
	ld   a, [bc]                                     ; $65ef: $0a
	inc  c                                           ; $65f0: $0c
	rlca                                             ; $65f1: $07
	inc  d                                           ; $65f2: $14
	ld   [$0101], sp                                 ; $65f3: $08 $01 $01
	ld   d, b                                        ; $65f6: $50
	ld   l, l                                        ; $65f7: $6d
	ld   l, l                                        ; $65f8: $6d
	ld   l, l                                        ; $65f9: $6d
	ld   l, l                                        ; $65fa: $6d
	ld   l, l                                        ; $65fb: $6d
	ld   l, l                                        ; $65fc: $6d
	rst  $38                                         ; $65fd: $ff
	rst  $38                                         ; $65fe: $ff
	dec  c                                           ; $65ff: $0d
	nop                                              ; $6600: $00
	ld   a, [bc]                                     ; $6601: $0a
	inc  c                                           ; $6602: $0c
	ld   [bc], a                                     ; $6603: $02
	dec  c                                           ; $6604: $0d
	nop                                              ; $6605: $00
	nop                                              ; $6606: $00
	rrca                                             ; $6607: $0f
	nop                                              ; $6608: $00
	ld   bc, $3706                                   ; $6609: $01 $06 $37
	rlca                                             ; $660c: $07
	dec  c                                           ; $660d: $0d
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	rrca                                             ; $6610: $0f
	nop                                              ; $6611: $00
	ld   bc, $020c                                   ; $6612: $01 $0c $02
	ld   c, $6c                                      ; $6615: $0e $6c
	inc  e                                           ; $6617: $1c
	ld   bc, $0202                                   ; $6618: $01 $02 $02
	dec  e                                           ; $661b: $1d
	ld   b, b                                        ; $661c: $40
	ld   de, $1103                                   ; $661d: $11 $03 $11
	ld   bc, $2903                                   ; $6620: $01 $03 $29
	nop                                              ; $6623: $00
	ld   bc, $0008                                   ; $6624: $01 $08 $00
	ld   h, e                                        ; $6627: $63
	and  c                                           ; $6628: $a1
	ld   a, [$7c0d]                                  ; $6629: $fa $0d $7c
	ld   l, h                                        ; $662c: $6c
	ld   e, e                                        ; $662d: $5b
	ld   l, [hl]                                     ; $662e: $6e
	ld   a, b                                        ; $662f: $78
	and  c                                           ; $6630: $a1
	ld   [hl], h                                     ; $6631: $74
	sbc  [hl]                                        ; $6632: $9e
	ld   d, b                                        ; $6633: $50
	ld   l, l                                        ; $6634: $6d
	ld   h, l                                        ; $6635: $65
	dec  c                                           ; $6636: $0d
	ld   [bc], a                                     ; $6637: $02
	sub  l                                           ; $6638: $95
	ld   l, e                                        ; $6639: $6b
	ld   h, c                                        ; $663a: $61
	ld   a, b                                        ; $663b: $78
	ld   d, d                                        ; $663c: $52
	adc  h                                           ; $663d: $8c
	ld   h, l                                        ; $663e: $65
	ld   l, l                                        ; $663f: $6d
	ld   a, [$000d]                                  ; $6640: $fa $0d $00
	ld   a, [bc]                                     ; $6643: $0a
	dec  b                                           ; $6644: $05
	ld   b, b                                        ; $6645: $40
	ld   c, b                                        ; $6646: $48
	ld   [bc], a                                     ; $6647: $02
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	ld   bc, $f5d6                                   ; $664a: $01 $d6 $f5
	ld   a, [$000d]                                  ; $664d: $fa $0d $00
	ld   a, [bc]                                     ; $6650: $0a
	dec  b                                           ; $6651: $05
	ld   b, b                                        ; $6652: $40
	ld   c, [hl]                                     ; $6653: $4e
	ld   bc, $0002                                   ; $6654: $01 $02 $00
	dec  c                                           ; $6657: $0d
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	rrca                                             ; $665a: $0f
	nop                                              ; $665b: $00
	ld   bc, $1e09                                   ; $665c: $01 $09 $1e
	rlca                                             ; $665f: $07
	sub  d                                           ; $6660: $92
	rlca                                             ; $6661: $07
	inc  b                                           ; $6662: $04
	add  b                                           ; $6663: $80
	ld   b, $01                                      ; $6664: $06 $01
	rst  $38                                         ; $6666: $ff
	jr   nz, jr_05f_6669                             ; $6667: $20 $00

jr_05f_6669:
	dec  b                                           ; $6669: $05
	add  b                                           ; $666a: $80
	ld   b, $01                                      ; $666b: $06 $01
	ld   bc, $0000                                   ; $666d: $01 $00 $00
	inc  c                                           ; $6670: $0c
	ld   [bc], a                                     ; $6671: $02
	ld   c, $02                                      ; $6672: $0e $02
	rrca                                             ; $6674: $0f
	nop                                              ; $6675: $00
	ld   bc, $5001                                   ; $6676: $01 $01 $50
	rst  $38                                         ; $6679: $ff
	rst  $38                                         ; $667a: $ff
	sbc  [hl]                                        ; $667b: $9e
	sub  d                                           ; $667c: $92
	ld   a, [hl]                                     ; $667d: $7e
	ld   d, d                                        ; $667e: $52
	sub  [hl]                                        ; $667f: $96
	ld   a, b                                        ; $6680: $78
	db   $fc                                         ; $6681: $fc
	rst  $38                                         ; $6682: $ff
	rst  $38                                         ; $6683: $ff
	dec  c                                           ; $6684: $0d
	inc  bc                                          ; $6685: $03
	add  b                                           ; $6686: $80
	dec  b                                           ; $6687: $05
	db   $10                                         ; $6688: $10
	inc  bc                                          ; $6689: $03
	ld   [hl], l                                     ; $668a: $75
	halt                                             ; $668b: $76
	ld   a, l                                        ; $668c: $7d
	ld   d, d                                        ; $668d: $52
	ld   d, [hl]                                     ; $668e: $56
	rst  $38                                         ; $668f: $ff
	rst  $38                                         ; $6690: $ff
	rst  $38                                         ; $6691: $ff
	rst  $38                                         ; $6692: $ff
	dec  c                                           ; $6693: $0d
	rst  $38                                         ; $6694: $ff
	rst  $38                                         ; $6695: $ff
	rst  $38                                         ; $6696: $ff
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	rst  $38                                         ; $669b: $ff
	rst  $38                                         ; $669c: $ff
	rst  $38                                         ; $669d: $ff
	dec  c                                           ; $669e: $0d
	nop                                              ; $669f: $00
	ld   a, [bc]                                     ; $66a0: $0a
	inc  d                                           ; $66a1: $14
	ld   b, $01                                      ; $66a2: $06 $01
	rrca                                             ; $66a4: $0f
	dec  bc                                          ; $66a5: $0b
	ld   [bc], a                                     ; $66a6: $02
	ld   bc, $0008                                   ; $66a7: $01 $08 $00
	ld   e, l                                        ; $66aa: $5d
	and  c                                           ; $66ab: $a1
	sbc  a                                           ; $66ac: $9f
	dec  c                                           ; $66ad: $0d
	ld   [bc], a                                     ; $66ae: $02
	and  l                                           ; $66af: $a5
	ld   h, a                                        ; $66b0: $67
	ld   e, [hl]                                     ; $66b1: $5e
	sbc  [hl]                                        ; $66b2: $9e
	inc  bc                                          ; $66b3: $03
	add  l                                           ; $66b4: $85
	inc  b                                           ; $66b5: $04
	xor  e                                           ; $66b6: $ab
	inc  bc                                          ; $66b7: $03
	add  d                                           ; $66b8: $82
	inc  bc                                          ; $66b9: $03
	ld   c, l                                        ; $66ba: $4d
	ld   a, c                                        ; $66bb: $79
	dec  b                                           ; $66bc: $05
	db   $10                                         ; $66bd: $10
	ld   a, b                                        ; $66be: $78
	ld   h, e                                        ; $66bf: $63
	ld   d, d                                        ; $66c0: $52
	sbc  a                                           ; $66c1: $9f
	dec  c                                           ; $66c2: $0d
	nop                                              ; $66c3: $00
	ld   a, [bc]                                     ; $66c4: $0a
	rrca                                             ; $66c5: $0f
	nop                                              ; $66c6: $00
	ld   bc, $020c                                   ; $66c7: $01 $0c $02
	add  hl, bc                                      ; $66ca: $09
	ld   e, $01                                      ; $66cb: $1e $01
	adc  h                                           ; $66cd: $8c
	sbc  [hl]                                        ; $66ce: $9e
	adc  h                                           ; $66cf: $8c
	ld   h, e                                        ; $66d0: $63
	ld   e, c                                        ; $66d1: $59
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	dec  c                                           ; $66d4: $0d
	nop                                              ; $66d5: $00
	ld   a, [bc]                                     ; $66d6: $0a
	ld   c, $0e                                      ; $66d7: $0e $0e
	inc  e                                           ; $66d9: $1c
	ld   a, [bc]                                     ; $66da: $0a
	inc  b                                           ; $66db: $04
	inc  b                                           ; $66dc: $04
	ld   bc, $5258                                   ; $66dd: $01 $58 $52
	sbc  [hl]                                        ; $66e0: $9e
	ld   [$9f00], sp                                 ; $66e1: $08 $00 $9f
	dec  c                                           ; $66e4: $0d
	ld   e, b                                        ; $66e5: $58
	adc  a                                           ; $66e6: $8f
	ei                                               ; $66e7: $fb
	cp   b                                           ; $66e8: $b8
	push hl                                          ; $66e9: $e5
	pop  af                                          ; $66ea: $f1
	ei                                               ; $66eb: $fb
	ld   a, h                                        ; $66ec: $7c
	ld   l, h                                        ; $66ed: $6c
	ld   d, d                                        ; $66ee: $52
	ld   [hl], h                                     ; $66ef: $74
	ld   l, l                                        ; $66f0: $6d
	and  c                                           ; $66f1: $a1
	dec  c                                           ; $66f2: $0d
	ld   l, [hl]                                     ; $66f3: $6e
	ld   [hl], c                                     ; $66f4: $71
	ld   [hl], h                                     ; $66f5: $74
	ld   a, b                                        ; $66f6: $78
	sbc  a                                           ; $66f7: $9f
	dec  c                                           ; $66f8: $0d
	nop                                              ; $66f9: $00
	ld   a, [bc]                                     ; $66fa: $0a
	ld   bc, $a102                                   ; $66fb: $01 $02 $a1
	inc  bc                                          ; $66fe: $03
	and  b                                           ; $66ff: $a0
	ld   l, a                                        ; $6700: $6f
	ld   a, l                                        ; $6701: $7d
	sbc  [hl]                                        ; $6702: $9e
	sbc  l                                           ; $6703: $9d
	ld   e, c                                        ; $6704: $59
	sub  a                                           ; $6705: $97
	and  c                                           ; $6706: $a1
	ld   [hl], l                                     ; $6707: $75
	sub  b                                           ; $6708: $90
	ld   a, b                                        ; $6709: $78
	ld   d, d                                        ; $670a: $52
	dec  c                                           ; $670b: $0d
	ld   e, d                                        ; $670c: $5a
	sbc  [hl]                                        ; $670d: $9e
	inc  de                                          ; $670e: $13
	ld   [bc], a                                     ; $670f: $02
	sub  e                                           ; $6710: $93
	sub  b                                           ; $6711: $90
	sub  d                                           ; $6712: $92
	ld   [hl], c                                     ; $6713: $71
	ld   l, a                                        ; $6714: $6f
	sub  c                                           ; $6715: $91
	ei                                               ; $6716: $fb
	dec  c                                           ; $6717: $0d
	adc  h                                           ; $6718: $8c
	ld   l, b                                        ; $6719: $68
	ld   d, d                                        ; $671a: $52
	ld   l, [hl]                                     ; $671b: $6e
	sbc  e                                           ; $671c: $9b
	sbc  a                                           ; $671d: $9f
	dec  c                                           ; $671e: $0d
	nop                                              ; $671f: $00
	ld   a, [bc]                                     ; $6720: $0a
	ld   bc, $7e59                                   ; $6721: $01 $59 $7e
	ld   [hl], c                                     ; $6724: $71
	ld   [hl], h                                     ; $6725: $74
	sub  d                                           ; $6726: $92
	sbc  b                                           ; $6727: $98
	ld   l, l                                        ; $6728: $6d
	ld   d, d                                        ; $6729: $52
	ld   e, d                                        ; $672a: $5a
	dec  c                                           ; $672b: $0d
	ld   [bc], a                                     ; $672c: $02
	sbc  b                                           ; $672d: $98
	inc  bc                                          ; $672e: $03
	nop                                              ; $672f: $00
	ld   a, h                                        ; $6730: $7c
	inc  bc                                          ; $6731: $03
	ld   l, e                                        ; $6732: $6b
	inc  bc                                          ; $6733: $03
	ld   c, a                                        ; $6734: $4f
	sbc  [hl]                                        ; $6735: $9e
	ld   l, a                                        ; $6736: $6f
	sub  l                                           ; $6737: $95
	ld   [hl], c                                     ; $6738: $71
	halt                                             ; $6739: $76
	ldh  [c], a                                      ; $673a: $e2
	db   $ec                                         ; $673b: $ec
	dec  c                                           ; $673c: $0d
	ld   a, b                                        ; $673d: $78
	and  c                                           ; $673e: $a1
	ld   [hl], l                                     ; $673f: $75
	ld   a, b                                        ; $6740: $78
	sbc  a                                           ; $6741: $9f
	dec  c                                           ; $6742: $0d
	nop                                              ; $6743: $00
	ld   a, [bc]                                     ; $6744: $0a
	inc  e                                           ; $6745: $1c
	ld   a, [bc]                                     ; $6746: $0a
	ld   [bc], a                                     ; $6747: $02
	ld   [bc], a                                     ; $6748: $02
	ld   bc, $9d59                                   ; $6749: $01 $59 $9d
	ld   d, d                                        ; $674c: $52
	ld   l, e                                        ; $674d: $6b
	ld   d, h                                        ; $674e: $54
	ld   l, [hl]                                     ; $674f: $6e
	ld   e, d                                        ; $6750: $5a
	sbc  [hl]                                        ; $6751: $9e
	dec  c                                           ; $6752: $0d
	inc  b                                           ; $6753: $04
	dec  c                                           ; $6754: $0d
	ld   [bc], a                                     ; $6755: $02
	sub  [hl]                                        ; $6756: $96
	inc  b                                           ; $6757: $04
	ld   b, l                                        ; $6758: $45
	inc  b                                           ; $6759: $04
	ld   a, [bc]                                     ; $675a: $0a
	ld   a, l                                        ; $675b: $7d
	ld   h, c                                        ; $675c: $61
	ld   h, c                                        ; $675d: $61
	ld   [hl], l                                     ; $675e: $75
	inc  bc                                          ; $675f: $03
	ld   a, [hl]                                     ; $6760: $7e
	dec  b                                           ; $6761: $05
	nop                                              ; $6762: $00
	ld   l, [hl]                                     ; $6763: $6e
	ld   a, [$000d]                                  ; $6764: $fa $0d $00
	ld   a, [bc]                                     ; $6767: $0a
	ld   bc, $a102                                   ; $6768: $01 $02 $a1
	inc  bc                                          ; $676b: $03
	and  b                                           ; $676c: $a0
	ld   l, a                                        ; $676d: $6f
	and  b                                           ; $676e: $a0
	inc  b                                           ; $676f: $04
	ld   b, l                                        ; $6770: $45
	sbc  d                                           ; $6771: $9a
	dec  b                                           ; $6772: $05
	scf                                              ; $6773: $37
	ld   d, [hl]                                     ; $6774: $56
	ld   [hl], h                                     ; $6775: $74
	dec  c                                           ; $6776: $0d
	inc  bc                                          ; $6777: $03
	add  b                                           ; $6778: $80
	inc  bc                                          ; $6779: $03
	jp   c, Jump_05f_7465                            ; $677a: $da $65 $74

	ld   e, e                                        ; $677d: $5b
	ld   a, b                                        ; $677e: $78
	ld   a, [$000d]                                  ; $677f: $fa $0d $00
	ld   a, [bc]                                     ; $6782: $0a
	ld   h, $00                                      ; $6783: $26 $00
	ld   [bc], a                                     ; $6785: $02
	rlca                                             ; $6786: $07
	ld   [hl+], a                                    ; $6787: $22
	nop                                              ; $6788: $00
	inc  bc                                          ; $6789: $03
	dec  d                                           ; $678a: $15
	ld   bc, $2265                                   ; $678b: $01 $65 $22
	nop                                              ; $678e: $00
	rlca                                             ; $678f: $07
	ld   e, d                                        ; $6790: $5a
	nop                                              ; $6791: $00
	inc  bc                                          ; $6792: $03
	dec  d                                           ; $6793: $15
	ld   bc, $2566                                   ; $6794: $01 $66 $25
	inc  bc                                          ; $6797: $03
	dec  d                                           ; $6798: $15
	ld   bc, $229b                                   ; $6799: $01 $9b $22
	inc  e                                           ; $679c: $1c
	nop                                              ; $679d: $00
	rlca                                             ; $679e: $07
	and  c                                           ; $679f: $a1
	nop                                              ; $67a0: $00
	inc  bc                                          ; $67a1: $03
	dec  d                                           ; $67a2: $15
	ld   bc, $259b                                   ; $67a3: $01 $9b $25
	nop                                              ; $67a6: $00
	rrca                                             ; $67a7: $0f
	nop                                              ; $67a8: $00
	ld   bc, $0201                                   ; $67a9: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67ac: $cf
	dec  b                                           ; $67ad: $05
	ld   a, [de]                                     ; $67ae: $1a
	ld   h, e                                        ; $67af: $63
	and  c                                           ; $67b0: $a1
	sbc  a                                           ; $67b1: $9f
	dec  c                                           ; $67b2: $0d
	nop                                              ; $67b3: $00
	ld   a, [bc]                                     ; $67b4: $0a
	inc  e                                           ; $67b5: $1c
	dec  b                                           ; $67b6: $05
	nop                                              ; $67b7: $00
	nop                                              ; $67b8: $00
	ld   bc, $a502                                   ; $67b9: $01 $02 $a5
	ld   l, a                                        ; $67bc: $6f
	sub  l                                           ; $67bd: $95
	ld   [hl], c                                     ; $67be: $71
	halt                                             ; $67bf: $76
	sbc  [hl]                                        ; $67c0: $9e
	inc  b                                           ; $67c1: $04
	ld   c, $04                                      ; $67c2: $0e $04
	adc  h                                           ; $67c4: $8c
	ld   a, b                                        ; $67c5: $78
	and  c                                           ; $67c6: $a1
	sub  d                                           ; $67c7: $92
	sbc  a                                           ; $67c8: $9f
	dec  c                                           ; $67c9: $0d
	ld   h, a                                        ; $67ca: $67
	adc  h                                           ; $67cb: $8c
	and  c                                           ; $67cc: $a1
	ld   a, b                                        ; $67cd: $78
	db   $fc                                         ; $67ce: $fc
	sbc  a                                           ; $67cf: $9f
	adc  c                                           ; $67d0: $89
	ld   a, b                                        ; $67d1: $78
	sbc  a                                           ; $67d2: $9f
	dec  c                                           ; $67d3: $0d
	nop                                              ; $67d4: $00
	ld   a, [bc]                                     ; $67d5: $0a
	dec  c                                           ; $67d6: $0d
	nop                                              ; $67d7: $00
	nop                                              ; $67d8: $00
	rrca                                             ; $67d9: $0f
	nop                                              ; $67da: $00
	ld   bc, $1e09                                   ; $67db: $01 $09 $1e
	nop                                              ; $67de: $00
	inc  e                                           ; $67df: $1c
	dec  b                                           ; $67e0: $05
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	ld   bc, $7196                                   ; $67e3: $01 $96 $71
	sbc  [hl]                                        ; $67e6: $9e
	ld   [$7d00], sp                                 ; $67e7: $08 $00 $7d
	and  c                                           ; $67ea: $a1
	sbc  a                                           ; $67eb: $9f
	dec  c                                           ; $67ec: $0d
	nop                                              ; $67ed: $00
	ld   a, [bc]                                     ; $67ee: $0a
	rrca                                             ; $67ef: $0f
	nop                                              ; $67f0: $00
	ld   bc, $0201                                   ; $67f1: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67f4: $cf
	dec  b                                           ; $67f5: $05
	ld   a, [de]                                     ; $67f6: $1a
	ld   h, e                                        ; $67f7: $63
	and  c                                           ; $67f8: $a1
	sbc  a                                           ; $67f9: $9f
	dec  c                                           ; $67fa: $0d
	ld   e, b                                        ; $67fb: $58
	inc  b                                           ; $67fc: $04
	ld   a, e                                        ; $67fd: $7b
	sbc  d                                           ; $67fe: $9a
	ld   h, e                                        ; $67ff: $63
	adc  h                                           ; $6800: $8c
	ld   [hl], l                                     ; $6801: $75
	ld   h, a                                        ; $6802: $67
	sbc  a                                           ; $6803: $9f
	dec  c                                           ; $6804: $0d
	nop                                              ; $6805: $00
	ld   a, [bc]                                     ; $6806: $0a
	rrca                                             ; $6807: $0f
	dec  b                                           ; $6808: $05
	nop                                              ; $6809: $00
	ld   bc, $9502                                   ; $680a: $01 $02 $95
	ld   [bc], a                                     ; $680d: $02
	sub  e                                           ; $680e: $93
	sbc  b                                           ; $680f: $98
	ld   e, d                                        ; $6810: $5a
	and  c                                           ; $6811: $a1
	ld   a, [hl]                                     ; $6812: $7e
	sbc  b                                           ; $6813: $98
	sub  d                                           ; $6814: $92
	sbc  a                                           ; $6815: $9f
	dec  c                                           ; $6816: $0d
	adc  c                                           ; $6817: $89
	ld   a, b                                        ; $6818: $78
	sbc  a                                           ; $6819: $9f
	dec  c                                           ; $681a: $0d
	nop                                              ; $681b: $00
	ld   a, [bc]                                     ; $681c: $0a
	dec  c                                           ; $681d: $0d
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	rrca                                             ; $6820: $0f
	nop                                              ; $6821: $00
	ld   bc, $1e09                                   ; $6822: $01 $09 $1e
	nop                                              ; $6825: $00
	inc  e                                           ; $6826: $1c
	dec  b                                           ; $6827: $05
	nop                                              ; $6828: $00
	nop                                              ; $6829: $00
	ld   bc, $7196                                   ; $682a: $01 $96 $71
	sbc  [hl]                                        ; $682d: $9e
	ld   [$7d00], sp                                 ; $682e: $08 $00 $7d
	and  c                                           ; $6831: $a1
	sbc  a                                           ; $6832: $9f
	dec  c                                           ; $6833: $0d
	ld   [bc], a                                     ; $6834: $02
	sub  l                                           ; $6835: $95
	ld   [bc], a                                     ; $6836: $02
	sub  e                                           ; $6837: $93
	sbc  b                                           ; $6838: $98
	ld   h, d                                        ; $6839: $62
	ld   e, l                                        ; $683a: $5d
	sbc  e                                           ; $683b: $9b
	ld   d, h                                        ; $683c: $54
	ld   h, e                                        ; $683d: $63
	and  c                                           ; $683e: $a1
	sbc  a                                           ; $683f: $9f
	dec  c                                           ; $6840: $0d
	nop                                              ; $6841: $00
	ld   a, [bc]                                     ; $6842: $0a
	rrca                                             ; $6843: $0f
	nop                                              ; $6844: $00
	ld   bc, $0201                                   ; $6845: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6848: $cf
	dec  b                                           ; $6849: $05
	ld   a, [de]                                     ; $684a: $1a
	ld   h, e                                        ; $684b: $63
	and  c                                           ; $684c: $a1
	sbc  a                                           ; $684d: $9f
	dec  c                                           ; $684e: $0d
	ld   h, c                                        ; $684f: $61
	and  c                                           ; $6850: $a1
	ld   a, b                                        ; $6851: $78
	sbc  [hl]                                        ; $6852: $9e
	inc  b                                           ; $6853: $04
	rst  $28                                         ; $6854: $ef
	ld   e, b                                        ; $6855: $58
	ld   l, e                                        ; $6856: $6b
	ld   e, l                                        ; $6857: $5d
	ld   a, c                                        ; $6858: $79
	dec  c                                           ; $6859: $0d
	ld   [hl], a                                     ; $685a: $77
	ld   d, h                                        ; $685b: $54
	ld   h, l                                        ; $685c: $65
	ld   l, l                                        ; $685d: $6d
	and  c                                           ; $685e: $a1
	ld   [hl], l                                     ; $685f: $75
	ld   h, a                                        ; $6860: $67
	ld   e, c                                        ; $6861: $59
	ld   sp, hl                                      ; $6862: $f9
	dec  c                                           ; $6863: $0d
	nop                                              ; $6864: $00
	ld   a, [bc]                                     ; $6865: $0a
	inc  e                                           ; $6866: $1c
	dec  b                                           ; $6867: $05
	inc  b                                           ; $6868: $04
	inc  b                                           ; $6869: $04
	ld   bc, $ce04                                   ; $686a: $01 $04 $ce
	sub  a                                           ; $686d: $97
	sbc  d                                           ; $686e: $9a
	add  [hl]                                        ; $686f: $86
	and  c                                           ; $6870: $a1
	ld   e, c                                        ; $6871: $59
	ld   [hl], c                                     ; $6872: $71
	ld   [hl], h                                     ; $6873: $74
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	dec  c                                           ; $6876: $0d
	xor  h                                           ; $6877: $ac
	push af                                          ; $6878: $f5
	bit  7, l                                        ; $6879: $cb $7d
	and  c                                           ; $687b: $a1
	halt                                             ; $687c: $76
	ld   [bc], a                                     ; $687d: $02
	sbc  b                                           ; $687e: $98
	ld   [bc], a                                     ; $687f: $02
	ld   sp, hl                                      ; $6880: $f9
	ld   h, l                                        ; $6881: $65
	ld   [hl], h                                     ; $6882: $74
	ld   l, l                                        ; $6883: $6d
	and  c                                           ; $6884: $a1
	sub  d                                           ; $6885: $92
	sbc  a                                           ; $6886: $9f
	dec  c                                           ; $6887: $0d
	nop                                              ; $6888: $00
	inc  e                                           ; $6889: $1c
	dec  b                                           ; $688a: $05
	ld   bc, $0101                                   ; $688b: $01 $01 $01
	adc  c                                           ; $688e: $89
	ld   a, b                                        ; $688f: $78
	sbc  [hl]                                        ; $6890: $9e
	ld   e, b                                        ; $6891: $58
	sub  d                                           ; $6892: $92
	ld   h, a                                        ; $6893: $67
	adc  l                                           ; $6894: $8d
	sbc  a                                           ; $6895: $9f
	dec  c                                           ; $6896: $0d
	nop                                              ; $6897: $00
	ld   a, [bc]                                     ; $6898: $0a
	dec  c                                           ; $6899: $0d
	nop                                              ; $689a: $00
	nop                                              ; $689b: $00
	rrca                                             ; $689c: $0f
	nop                                              ; $689d: $00
	ld   bc, $1e09                                   ; $689e: $01 $09 $1e
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	ld   [bc], a                                     ; $68a3: $02
	rlca                                             ; $68a4: $07
	ld   [hl+], a                                    ; $68a5: $22
	nop                                              ; $68a6: $00
	inc  bc                                          ; $68a7: $03
	ld   [de], a                                     ; $68a8: $12
	ld   bc, $2265                                   ; $68a9: $01 $65 $22
	nop                                              ; $68ac: $00
	rlca                                             ; $68ad: $07
	ld   e, h                                        ; $68ae: $5c
	nop                                              ; $68af: $00
	inc  bc                                          ; $68b0: $03
	ld   [de], a                                     ; $68b1: $12
	ld   bc, $2565                                   ; $68b2: $01 $65 $25
	inc  bc                                          ; $68b5: $03
	ld   [de], a                                     ; $68b6: $12
	ld   bc, $229b                                   ; $68b7: $01 $9b $22
	inc  e                                           ; $68ba: $1c
	nop                                              ; $68bb: $00
	rlca                                             ; $68bc: $07
	xor  b                                           ; $68bd: $a8
	nop                                              ; $68be: $00
	inc  bc                                          ; $68bf: $03
	ld   [de], a                                     ; $68c0: $12
	ld   bc, $259b                                   ; $68c1: $01 $9b $25
	nop                                              ; $68c4: $00
	rrca                                             ; $68c5: $0f
	nop                                              ; $68c6: $00
	ld   bc, $6701                                   ; $68c7: $01 $01 $67
	adc  l                                           ; $68ca: $8d
	sbc  d                                           ; $68cb: $9a
	ld   h, e                                        ; $68cc: $63
	and  c                                           ; $68cd: $a1
	sbc  a                                           ; $68ce: $9f
	dec  c                                           ; $68cf: $0d
	nop                                              ; $68d0: $00
	ld   a, [bc]                                     ; $68d1: $0a
	inc  e                                           ; $68d2: $1c
	ld   [bc], a                                     ; $68d3: $02
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	ld   bc, $8c52                                   ; $68d6: $01 $52 $8c
	sbc  [hl]                                        ; $68d9: $9e
	inc  bc                                          ; $68da: $03
	ld   l, e                                        ; $68db: $6b
	ld   e, d                                        ; $68dc: $5a
	inc  b                                           ; $68dd: $04
	sbc  c                                           ; $68de: $99
	ld   l, c                                        ; $68df: $69
	adc  h                                           ; $68e0: $8c
	ld   l, c                                        ; $68e1: $69
	and  c                                           ; $68e2: $a1
	ld   a, h                                        ; $68e3: $7c
	sbc  a                                           ; $68e4: $9f
	dec  c                                           ; $68e5: $0d
	inc  b                                           ; $68e6: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68e7: $cf
	inc  b                                           ; $68e8: $04
	xor  d                                           ; $68e9: $aa
	ld   a, c                                        ; $68ea: $79
	ld   h, l                                        ; $68eb: $65
	ld   [hl], h                                     ; $68ec: $74
	ld   e, l                                        ; $68ed: $5d
	ld   l, [hl]                                     ; $68ee: $6e
	ld   h, e                                        ; $68ef: $63
	ld   d, d                                        ; $68f0: $52
	ld   a, b                                        ; $68f1: $78
	sbc  a                                           ; $68f2: $9f
	dec  c                                           ; $68f3: $0d
	nop                                              ; $68f4: $00
	ld   a, [bc]                                     ; $68f5: $0a
	dec  c                                           ; $68f6: $0d
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	rrca                                             ; $68f9: $0f
	nop                                              ; $68fa: $00
	ld   bc, $1e09                                   ; $68fb: $01 $09 $1e
	nop                                              ; $68fe: $00
	inc  e                                           ; $68ff: $1c
	ld   [bc], a                                     ; $6900: $02
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	ld   bc, $9750                                   ; $6903: $01 $50 $97
	sbc  [hl]                                        ; $6906: $9e
	ld   [$6300], sp                                 ; $6907: $08 $00 $63
	and  c                                           ; $690a: $a1
	dec  c                                           ; $690b: $0d
	nop                                              ; $690c: $00
	ld   a, [bc]                                     ; $690d: $0a
	rrca                                             ; $690e: $0f
	nop                                              ; $690f: $00
	ld   bc, $6701                                   ; $6910: $01 $01 $67
	adc  l                                           ; $6913: $8d
	sbc  d                                           ; $6914: $9a
	ld   h, e                                        ; $6915: $63
	and  c                                           ; $6916: $a1
	sbc  a                                           ; $6917: $9f
	dec  c                                           ; $6918: $0d
	ld   e, b                                        ; $6919: $58
	inc  b                                           ; $691a: $04
	ld   a, e                                        ; $691b: $7b
	sbc  d                                           ; $691c: $9a
	ld   h, e                                        ; $691d: $63
	adc  h                                           ; $691e: $8c
	ld   [hl], l                                     ; $691f: $75
	ld   h, a                                        ; $6920: $67
	sbc  a                                           ; $6921: $9f
	dec  c                                           ; $6922: $0d
	nop                                              ; $6923: $00
	ld   a, [bc]                                     ; $6924: $0a
	rrca                                             ; $6925: $0f
	ld   [bc], a                                     ; $6926: $02
	nop                                              ; $6927: $00
	ld   bc, $9502                                   ; $6928: $01 $02 $95
	ld   [bc], a                                     ; $692b: $02
	sub  e                                           ; $692c: $93
	sbc  b                                           ; $692d: $98
	ld   e, d                                        ; $692e: $5a
	and  c                                           ; $692f: $a1
	ld   a, [hl]                                     ; $6930: $7e
	sbc  b                                           ; $6931: $98
	ld   a, b                                        ; $6932: $78
	ld   h, e                                        ; $6933: $63
	ld   d, d                                        ; $6934: $52
	sbc  a                                           ; $6935: $9f
	dec  c                                           ; $6936: $0d
	ld   [hl], l                                     ; $6937: $75
	ld   a, l                                        ; $6938: $7d
	inc  bc                                          ; $6939: $03
	add  e                                           ; $693a: $83
	dec  b                                           ; $693b: $05
	dec  c                                           ; $693c: $0d
	rst  $38                                         ; $693d: $ff
	rst  $38                                         ; $693e: $ff
	dec  c                                           ; $693f: $0d
	nop                                              ; $6940: $00
	ld   a, [bc]                                     ; $6941: $0a
	dec  c                                           ; $6942: $0d
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	rrca                                             ; $6945: $0f
	nop                                              ; $6946: $00
	ld   bc, $1e09                                   ; $6947: $01 $09 $1e
	nop                                              ; $694a: $00
	inc  e                                           ; $694b: $1c
	ld   [bc], a                                     ; $694c: $02
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	ld   bc, $9750                                   ; $694f: $01 $50 $97
	sbc  [hl]                                        ; $6952: $9e
	ld   [$6300], sp                                 ; $6953: $08 $00 $63
	and  c                                           ; $6956: $a1
	sbc  a                                           ; $6957: $9f
	dec  c                                           ; $6958: $0d
	ld   [bc], a                                     ; $6959: $02
	sub  l                                           ; $695a: $95
	ld   [bc], a                                     ; $695b: $02
	sub  e                                           ; $695c: $93
	sbc  b                                           ; $695d: $98
	ld   h, d                                        ; $695e: $62
	ld   e, l                                        ; $695f: $5d
	sbc  e                                           ; $6960: $9b
	ld   d, h                                        ; $6961: $54
	ld   h, e                                        ; $6962: $63
	adc  h                                           ; $6963: $8c
	sbc  a                                           ; $6964: $9f
	dec  c                                           ; $6965: $0d
	nop                                              ; $6966: $00
	ld   a, [bc]                                     ; $6967: $0a
	rrca                                             ; $6968: $0f
	nop                                              ; $6969: $00
	ld   bc, $6701                                   ; $696a: $01 $01 $67
	adc  l                                           ; $696d: $8d
	sbc  d                                           ; $696e: $9a
	ld   h, e                                        ; $696f: $63
	and  c                                           ; $6970: $a1
	sbc  a                                           ; $6971: $9f
	dec  c                                           ; $6972: $0d
	ld   h, c                                        ; $6973: $61
	and  c                                           ; $6974: $a1
	ld   a, b                                        ; $6975: $78
	sbc  [hl]                                        ; $6976: $9e
	inc  b                                           ; $6977: $04
	rst  $28                                         ; $6978: $ef
	ld   e, b                                        ; $6979: $58
	ld   l, e                                        ; $697a: $6b
	ld   e, l                                        ; $697b: $5d
	ld   a, c                                        ; $697c: $79
	dec  c                                           ; $697d: $0d
	ld   [hl], a                                     ; $697e: $77
	ld   d, h                                        ; $697f: $54
	ld   h, l                                        ; $6980: $65
	ld   l, l                                        ; $6981: $6d
	and  c                                           ; $6982: $a1
	ld   [hl], l                                     ; $6983: $75
	ld   h, a                                        ; $6984: $67
	ld   e, c                                        ; $6985: $59
	ld   sp, hl                                      ; $6986: $f9
	dec  c                                           ; $6987: $0d
	nop                                              ; $6988: $00
	ld   a, [bc]                                     ; $6989: $0a
	inc  e                                           ; $698a: $1c
	ld   [bc], a                                     ; $698b: $02
	inc  b                                           ; $698c: $04
	inc  b                                           ; $698d: $04
	ld   bc, $ce04                                   ; $698e: $01 $04 $ce
	sbc  d                                           ; $6991: $9a
	ld   a, b                                        ; $6992: $78
	ld   e, l                                        ; $6993: $5d
	ld   [hl], h                                     ; $6994: $74
	rst  $38                                         ; $6995: $ff
	rst  $38                                         ; $6996: $ff
	dec  c                                           ; $6997: $0d
	inc  bc                                          ; $6998: $03
	ld   d, e                                        ; $6999: $53
	and  b                                           ; $699a: $a0
	ld   [bc], a                                     ; $699b: $02
	sub  l                                           ; $699c: $95
	ld   [hl], h                                     ; $699d: $74
	ld   d, d                                        ; $699e: $52
	ld   l, l                                        ; $699f: $6d
	and  c                                           ; $69a0: $a1
	ld   [hl], l                                     ; $69a1: $75
	ld   h, a                                        ; $69a2: $67
	ld   a, h                                        ; $69a3: $7c
	sbc  a                                           ; $69a4: $9f
	dec  c                                           ; $69a5: $0d
	nop                                              ; $69a6: $00
	inc  e                                           ; $69a7: $1c
	ld   [bc], a                                     ; $69a8: $02
	ld   bc, $0101                                   ; $69a9: $01 $01 $01
	ld   l, e                                        ; $69ac: $6b
	sbc  d                                           ; $69ad: $9a
	ld   h, [hl]                                     ; $69ae: $66
	sub  c                                           ; $69af: $91
	sbc  [hl]                                        ; $69b0: $9e
	ld   e, b                                        ; $69b1: $58
	sub  d                                           ; $69b2: $92
	ld   h, a                                        ; $69b3: $67
	adc  l                                           ; $69b4: $8d
	ld   a, b                                        ; $69b5: $78
	ld   h, e                                        ; $69b6: $63
	ld   d, d                                        ; $69b7: $52
	sbc  a                                           ; $69b8: $9f
	dec  c                                           ; $69b9: $0d
	nop                                              ; $69ba: $00
	ld   a, [bc]                                     ; $69bb: $0a
	dec  c                                           ; $69bc: $0d
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	rrca                                             ; $69bf: $0f
	nop                                              ; $69c0: $00
	ld   bc, $1e09                                   ; $69c1: $01 $09 $1e
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	ld   [bc], a                                     ; $69c6: $02
	rlca                                             ; $69c7: $07
	ld   [hl+], a                                    ; $69c8: $22
	nop                                              ; $69c9: $00
	inc  bc                                          ; $69ca: $03
	ld   de, $6501                                   ; $69cb: $11 $01 $65
	ld   [hl+], a                                    ; $69ce: $22
	nop                                              ; $69cf: $00
	rlca                                             ; $69d0: $07
	ld   d, e                                        ; $69d1: $53
	nop                                              ; $69d2: $00
	inc  bc                                          ; $69d3: $03
	ld   de, $6501                                   ; $69d4: $11 $01 $65
	dec  h                                           ; $69d7: $25
	inc  bc                                          ; $69d8: $03
	ld   de, $9b01                                   ; $69d9: $11 $01 $9b
	ld   [hl+], a                                    ; $69dc: $22
	inc  e                                           ; $69dd: $1c
	nop                                              ; $69de: $00
	rlca                                             ; $69df: $07
	sbc  l                                           ; $69e0: $9d
	nop                                              ; $69e1: $00
	inc  bc                                          ; $69e2: $03
	ld   de, $9b01                                   ; $69e3: $11 $01 $9b
	dec  h                                           ; $69e6: $25
	nop                                              ; $69e7: $00
	rrca                                             ; $69e8: $0f
	nop                                              ; $69e9: $00
	ld   bc, $6301                                   ; $69ea: $01 $01 $63
	ld   e, l                                        ; $69ed: $5d
	sub  a                                           ; $69ee: $97
	ld   h, e                                        ; $69ef: $63
	and  c                                           ; $69f0: $a1
	sbc  a                                           ; $69f1: $9f
	dec  c                                           ; $69f2: $0d
	nop                                              ; $69f3: $00
	ld   a, [bc]                                     ; $69f4: $0a
	inc  e                                           ; $69f5: $1c
	ld   bc, $0000                                   ; $69f6: $01 $00 $00
	ld   bc, $8f62                                   ; $69f9: $01 $62 $8f
	and  c                                           ; $69fc: $a1
	ld   a, b                                        ; $69fd: $78
	ld   h, e                                        ; $69fe: $63
	ld   d, d                                        ; $69ff: $52
	sbc  a                                           ; $6a00: $9f
	dec  c                                           ; $6a01: $0d
	ld   d, d                                        ; $6a02: $52
	adc  h                                           ; $6a03: $8c
	dec  b                                           ; $6a04: $05
	jr   z, jr_05f_6a59                              ; $6a05: $28 $52

	ld   [hl], l                                     ; $6a07: $75
	sbc  c                                           ; $6a08: $99
	and  c                                           ; $6a09: $a1
	ld   [hl], l                                     ; $6a0a: $75
	ld   h, a                                        ; $6a0b: $67
	sbc  a                                           ; $6a0c: $9f
	dec  c                                           ; $6a0d: $0d
	nop                                              ; $6a0e: $00
	ld   a, [bc]                                     ; $6a0f: $0a
	dec  c                                           ; $6a10: $0d
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	rrca                                             ; $6a13: $0f
	nop                                              ; $6a14: $00
	ld   bc, $1e09                                   ; $6a15: $01 $09 $1e
	nop                                              ; $6a18: $00
	inc  e                                           ; $6a19: $1c
	ld   bc, $0000                                   ; $6a1a: $01 $00 $00
	ld   bc, $9750                                   ; $6a1d: $01 $50 $97
	sbc  [hl]                                        ; $6a20: $9e
	ld   [$6300], sp                                 ; $6a21: $08 $00 $63
	and  c                                           ; $6a24: $a1
	dec  c                                           ; $6a25: $0d
	nop                                              ; $6a26: $00
	ld   a, [bc]                                     ; $6a27: $0a
	rrca                                             ; $6a28: $0f
	nop                                              ; $6a29: $00
	ld   bc, $6301                                   ; $6a2a: $01 $01 $63
	ld   e, l                                        ; $6a2d: $5d
	sub  a                                           ; $6a2e: $97
	ld   h, e                                        ; $6a2f: $63
	and  c                                           ; $6a30: $a1
	sbc  a                                           ; $6a31: $9f
	dec  c                                           ; $6a32: $0d
	ld   e, b                                        ; $6a33: $58
	inc  b                                           ; $6a34: $04
	ld   a, e                                        ; $6a35: $7b
	sbc  d                                           ; $6a36: $9a
	ld   h, e                                        ; $6a37: $63
	adc  h                                           ; $6a38: $8c
	ld   [hl], l                                     ; $6a39: $75
	ld   h, a                                        ; $6a3a: $67
	sbc  a                                           ; $6a3b: $9f
	dec  c                                           ; $6a3c: $0d
	nop                                              ; $6a3d: $00
	ld   a, [bc]                                     ; $6a3e: $0a
	rrca                                             ; $6a3f: $0f
	ld   bc, $0100                                   ; $6a40: $01 $00 $01
	ld   [bc], a                                     ; $6a43: $02
	sub  l                                           ; $6a44: $95
	ld   [bc], a                                     ; $6a45: $02
	sub  e                                           ; $6a46: $93
	sbc  b                                           ; $6a47: $98
	ld   h, d                                        ; $6a48: $62
	ld   e, l                                        ; $6a49: $5d
	sbc  e                                           ; $6a4a: $9b
	ld   d, h                                        ; $6a4b: $54
	ld   h, e                                        ; $6a4c: $63
	adc  h                                           ; $6a4d: $8c
	ld   [hl], l                                     ; $6a4e: $75
	ld   h, a                                        ; $6a4f: $67
	sbc  a                                           ; $6a50: $9f
	dec  c                                           ; $6a51: $0d
	ld   l, e                                        ; $6a52: $6b
	sbc  d                                           ; $6a53: $9a
	ld   [hl], l                                     ; $6a54: $75
	ld   a, l                                        ; $6a55: $7d
	sbc  a                                           ; $6a56: $9f
	dec  c                                           ; $6a57: $0d
	nop                                              ; $6a58: $00

jr_05f_6a59:
	ld   a, [bc]                                     ; $6a59: $0a
	dec  c                                           ; $6a5a: $0d
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	rrca                                             ; $6a5d: $0f
	nop                                              ; $6a5e: $00
	ld   bc, $1e09                                   ; $6a5f: $01 $09 $1e
	nop                                              ; $6a62: $00
	inc  e                                           ; $6a63: $1c
	ld   bc, $0000                                   ; $6a64: $01 $00 $00
	ld   bc, $9750                                   ; $6a67: $01 $50 $97
	sbc  [hl]                                        ; $6a6a: $9e
	ld   [$6300], sp                                 ; $6a6b: $08 $00 $63
	and  c                                           ; $6a6e: $a1
	sbc  a                                           ; $6a6f: $9f
	dec  c                                           ; $6a70: $0d
	ld   [bc], a                                     ; $6a71: $02
	sub  l                                           ; $6a72: $95
	ld   [bc], a                                     ; $6a73: $02
	sub  e                                           ; $6a74: $93
	sbc  b                                           ; $6a75: $98
	ld   h, d                                        ; $6a76: $62
	ld   e, l                                        ; $6a77: $5d
	sbc  e                                           ; $6a78: $9b
	ld   d, h                                        ; $6a79: $54
	ld   h, e                                        ; $6a7a: $63
	adc  h                                           ; $6a7b: $8c
	ld   [hl], l                                     ; $6a7c: $75
	ld   h, a                                        ; $6a7d: $67
	sbc  a                                           ; $6a7e: $9f
	dec  c                                           ; $6a7f: $0d
	nop                                              ; $6a80: $00
	ld   a, [bc]                                     ; $6a81: $0a
	rrca                                             ; $6a82: $0f
	nop                                              ; $6a83: $00
	ld   bc, $6301                                   ; $6a84: $01 $01 $63
	ld   e, l                                        ; $6a87: $5d
	sub  a                                           ; $6a88: $97
	ld   h, e                                        ; $6a89: $63
	and  c                                           ; $6a8a: $a1
	sbc  a                                           ; $6a8b: $9f
	dec  c                                           ; $6a8c: $0d
	ld   h, c                                        ; $6a8d: $61
	and  c                                           ; $6a8e: $a1
	ld   a, b                                        ; $6a8f: $78
	sbc  [hl]                                        ; $6a90: $9e
	inc  b                                           ; $6a91: $04
	rst  $28                                         ; $6a92: $ef
	ld   e, b                                        ; $6a93: $58
	ld   l, e                                        ; $6a94: $6b
	ld   e, l                                        ; $6a95: $5d
	ld   a, c                                        ; $6a96: $79
	dec  c                                           ; $6a97: $0d
	ld   [hl], a                                     ; $6a98: $77
	ld   d, h                                        ; $6a99: $54
	ld   h, l                                        ; $6a9a: $65
	ld   l, l                                        ; $6a9b: $6d
	and  c                                           ; $6a9c: $a1
	ld   [hl], l                                     ; $6a9d: $75
	ld   h, a                                        ; $6a9e: $67
	ld   e, c                                        ; $6a9f: $59
	ld   sp, hl                                      ; $6aa0: $f9
	dec  c                                           ; $6aa1: $0d
	nop                                              ; $6aa2: $00
	ld   a, [bc]                                     ; $6aa3: $0a
	inc  e                                           ; $6aa4: $1c
	ld   bc, $0101                                   ; $6aa5: $01 $01 $01
	ld   bc, $6b58                                   ; $6aa8: $01 $58 $6b
	ld   d, h                                        ; $6aab: $54
	ld   h, [hl]                                     ; $6aac: $66
	ld   h, l                                        ; $6aad: $65
	ld   [hl], h                                     ; $6aae: $74
	ld   l, l                                        ; $6aaf: $6d
	and  c                                           ; $6ab0: $a1
	ld   [hl], l                                     ; $6ab1: $75
	ld   h, a                                        ; $6ab2: $67
	sub  [hl]                                        ; $6ab3: $96
	sbc  a                                           ; $6ab4: $9f
	dec  c                                           ; $6ab5: $0d
	ld   l, e                                        ; $6ab6: $6b
	sbc  d                                           ; $6ab7: $9a
	ld   h, [hl]                                     ; $6ab8: $66
	sub  c                                           ; $6ab9: $91
	sbc  [hl]                                        ; $6aba: $9e
	ld   e, b                                        ; $6abb: $58
	sub  d                                           ; $6abc: $92
	ld   h, a                                        ; $6abd: $67
	adc  l                                           ; $6abe: $8d
	ld   a, b                                        ; $6abf: $78
	ld   h, e                                        ; $6ac0: $63
	ld   d, d                                        ; $6ac1: $52
	sbc  a                                           ; $6ac2: $9f
	dec  c                                           ; $6ac3: $0d
	nop                                              ; $6ac4: $00
	ld   a, [bc]                                     ; $6ac5: $0a
	dec  c                                           ; $6ac6: $0d
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	rrca                                             ; $6ac9: $0f
	nop                                              ; $6aca: $00
	ld   bc, $1e09                                   ; $6acb: $01 $09 $1e
	nop                                              ; $6ace: $00
	nop                                              ; $6acf: $00
	ld   [bc], a                                     ; $6ad0: $02
	rlca                                             ; $6ad1: $07
	ld   [hl+], a                                    ; $6ad2: $22
	nop                                              ; $6ad3: $00
	inc  bc                                          ; $6ad4: $03
	inc  de                                          ; $6ad5: $13
	ld   bc, $2265                                   ; $6ad6: $01 $65 $22
	nop                                              ; $6ad9: $00
	rlca                                             ; $6ada: $07
	ld   d, d                                        ; $6adb: $52
	nop                                              ; $6adc: $00
	inc  bc                                          ; $6add: $03
	inc  de                                          ; $6ade: $13
	ld   bc, $2566                                   ; $6adf: $01 $66 $25
	inc  bc                                          ; $6ae2: $03
	inc  de                                          ; $6ae3: $13
	ld   bc, $229b                                   ; $6ae4: $01 $9b $22
	inc  e                                           ; $6ae7: $1c
	nop                                              ; $6ae8: $00
	rlca                                             ; $6ae9: $07
	sbc  b                                           ; $6aea: $98
	nop                                              ; $6aeb: $00
	inc  bc                                          ; $6aec: $03
	inc  de                                          ; $6aed: $13
	ld   bc, $259b                                   ; $6aee: $01 $9b $25
	nop                                              ; $6af1: $00
	rrca                                             ; $6af2: $0f
	nop                                              ; $6af3: $00
	ld   bc, $df01                                   ; $6af4: $01 $01 $df
	db   $ec                                         ; $6af7: $ec
	and  e                                           ; $6af8: $a3
	ld   h, e                                        ; $6af9: $63
	and  c                                           ; $6afa: $a1
	sbc  a                                           ; $6afb: $9f
	dec  c                                           ; $6afc: $0d
	nop                                              ; $6afd: $00
	ld   a, [bc]                                     ; $6afe: $0a
	inc  e                                           ; $6aff: $1c
	inc  bc                                          ; $6b00: $03
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	ld   bc, $8c52                                   ; $6b03: $01 $52 $8c
	dec  b                                           ; $6b06: $05
	jr   z, jr_05f_6b5b                              ; $6b07: $28 $52

	ld   [hl], l                                     ; $6b09: $75
	sbc  c                                           ; $6b0a: $99
	ld   a, h                                        ; $6b0b: $7c
	sbc  a                                           ; $6b0c: $9f
	dec  c                                           ; $6b0d: $0d
	adc  h                                           ; $6b0e: $8c
	ld   l, l                                        ; $6b0f: $6d
	sbc  [hl]                                        ; $6b10: $9e
	ld   [bc], a                                     ; $6b11: $02
	xor  d                                           ; $6b12: $aa
	ld   [hl], l                                     ; $6b13: $75
	ld   a, e                                        ; $6b14: $7b
	sbc  a                                           ; $6b15: $9f
	dec  c                                           ; $6b16: $0d
	nop                                              ; $6b17: $00
	ld   a, [bc]                                     ; $6b18: $0a
	dec  c                                           ; $6b19: $0d
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	rrca                                             ; $6b1c: $0f
	nop                                              ; $6b1d: $00
	ld   bc, $1e09                                   ; $6b1e: $01 $09 $1e
	nop                                              ; $6b21: $00
	inc  e                                           ; $6b22: $1c
	inc  bc                                          ; $6b23: $03
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	ld   bc, $0008                                   ; $6b26: $01 $08 $00
	ld   e, l                                        ; $6b29: $5d
	and  c                                           ; $6b2a: $a1
	sbc  a                                           ; $6b2b: $9f
	dec  c                                           ; $6b2c: $0d
	nop                                              ; $6b2d: $00
	ld   a, [bc]                                     ; $6b2e: $0a
	rrca                                             ; $6b2f: $0f
	nop                                              ; $6b30: $00
	ld   bc, $df01                                   ; $6b31: $01 $01 $df
	db   $ec                                         ; $6b34: $ec
	and  e                                           ; $6b35: $a3
	ld   h, e                                        ; $6b36: $63
	and  c                                           ; $6b37: $a1
	sbc  a                                           ; $6b38: $9f
	dec  c                                           ; $6b39: $0d
	ld   e, b                                        ; $6b3a: $58
	inc  b                                           ; $6b3b: $04
	ld   a, e                                        ; $6b3c: $7b
	sbc  d                                           ; $6b3d: $9a
	ld   h, e                                        ; $6b3e: $63
	adc  h                                           ; $6b3f: $8c
	ld   [hl], l                                     ; $6b40: $75
	ld   h, a                                        ; $6b41: $67
	sbc  a                                           ; $6b42: $9f
	dec  c                                           ; $6b43: $0d
	nop                                              ; $6b44: $00
	ld   a, [bc]                                     ; $6b45: $0a
	rrca                                             ; $6b46: $0f
	inc  bc                                          ; $6b47: $03
	nop                                              ; $6b48: $00
	ld   bc, $9502                                   ; $6b49: $01 $02 $95
	ld   [bc], a                                     ; $6b4c: $02
	sub  e                                           ; $6b4d: $93
	sbc  b                                           ; $6b4e: $98
	ld   e, d                                        ; $6b4f: $5a
	and  c                                           ; $6b50: $a1
	ld   a, [hl]                                     ; $6b51: $7e
	sbc  c                                           ; $6b52: $99
	ld   a, h                                        ; $6b53: $7c
	sub  [hl]                                        ; $6b54: $96
	sbc  a                                           ; $6b55: $9f
	dec  c                                           ; $6b56: $0d
	ld   h, [hl]                                     ; $6b57: $66
	sub  c                                           ; $6b58: $91
	ld   d, b                                        ; $6b59: $50
	ld   a, e                                        ; $6b5a: $7b

jr_05f_6b5b:
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
	inc  e                                           ; $6b68: $1c
	inc  bc                                          ; $6b69: $03
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	ld   bc, $9750                                   ; $6b6c: $01 $50 $97
	sbc  [hl]                                        ; $6b6f: $9e
	ld   [$5d00], sp                                 ; $6b70: $08 $00 $5d
	and  c                                           ; $6b73: $a1
	sbc  a                                           ; $6b74: $9f
	dec  c                                           ; $6b75: $0d
	ld   [bc], a                                     ; $6b76: $02
	sub  l                                           ; $6b77: $95
	ld   [bc], a                                     ; $6b78: $02
	sub  e                                           ; $6b79: $93
	sbc  b                                           ; $6b7a: $98
	ld   h, d                                        ; $6b7b: $62
	ld   e, l                                        ; $6b7c: $5d
	sbc  e                                           ; $6b7d: $9b
	ld   d, h                                        ; $6b7e: $54
	ld   h, e                                        ; $6b7f: $63
	adc  h                                           ; $6b80: $8c
	sbc  a                                           ; $6b81: $9f
	dec  c                                           ; $6b82: $0d
	nop                                              ; $6b83: $00
	ld   a, [bc]                                     ; $6b84: $0a
	rrca                                             ; $6b85: $0f
	nop                                              ; $6b86: $00
	ld   bc, $df01                                   ; $6b87: $01 $01 $df
	db   $ec                                         ; $6b8a: $ec
	and  e                                           ; $6b8b: $a3
	ld   h, e                                        ; $6b8c: $63
	and  c                                           ; $6b8d: $a1
	sbc  a                                           ; $6b8e: $9f
	dec  c                                           ; $6b8f: $0d
	ld   h, c                                        ; $6b90: $61
	and  c                                           ; $6b91: $a1
	ld   a, b                                        ; $6b92: $78
	sbc  [hl]                                        ; $6b93: $9e
	inc  b                                           ; $6b94: $04
	rst  $28                                         ; $6b95: $ef
	ld   e, b                                        ; $6b96: $58
	ld   l, e                                        ; $6b97: $6b
	ld   e, l                                        ; $6b98: $5d
	ld   a, c                                        ; $6b99: $79
	dec  c                                           ; $6b9a: $0d
	ld   [hl], a                                     ; $6b9b: $77
	ld   d, h                                        ; $6b9c: $54
	ld   h, l                                        ; $6b9d: $65
	ld   l, l                                        ; $6b9e: $6d
	and  c                                           ; $6b9f: $a1
	ld   [hl], l                                     ; $6ba0: $75
	ld   h, a                                        ; $6ba1: $67
	ld   e, c                                        ; $6ba2: $59
	ld   sp, hl                                      ; $6ba3: $f9
	dec  c                                           ; $6ba4: $0d
	nop                                              ; $6ba5: $00
	ld   a, [bc]                                     ; $6ba6: $0a
	inc  e                                           ; $6ba7: $1c
	inc  bc                                          ; $6ba8: $03
	ld   bc, $0101                                   ; $6ba9: $01 $01 $01
	inc  b                                           ; $6bac: $04
	adc  $9a                                         ; $6bad: $ce $9a
	ld   a, b                                        ; $6baf: $78
	ld   e, l                                        ; $6bb0: $5d
	ld   [hl], h                                     ; $6bb1: $74
	rst  $38                                         ; $6bb2: $ff
	rst  $38                                         ; $6bb3: $ff
	ld   l, a                                        ; $6bb4: $6f
	sub  l                                           ; $6bb5: $95
	ld   [hl], c                                     ; $6bb6: $71
	halt                                             ; $6bb7: $76
	dec  c                                           ; $6bb8: $0d
	ld   [bc], a                                     ; $6bb9: $02
	ld   h, l                                        ; $6bba: $65
	ld   d, [hl]                                     ; $6bbb: $56
	ld   [bc], a                                     ; $6bbc: $02
	jp   Jump_05f_65a0                               ; $6bbd: $c3 $a0 $65


	ld   [hl], h                                     ; $6bc0: $74
	ld   d, d                                        ; $6bc1: $52
	ld   l, l                                        ; $6bc2: $6d
	ld   a, h                                        ; $6bc3: $7c
	rst  $38                                         ; $6bc4: $ff
	rst  $38                                         ; $6bc5: $ff
	dec  c                                           ; $6bc6: $0d
	ld   l, e                                        ; $6bc7: $6b
	sbc  d                                           ; $6bc8: $9a
	ld   h, [hl]                                     ; $6bc9: $66
	sub  c                                           ; $6bca: $91
	sbc  a                                           ; $6bcb: $9f
	dec  c                                           ; $6bcc: $0d
	nop                                              ; $6bcd: $00
	ld   a, [bc]                                     ; $6bce: $0a
	dec  c                                           ; $6bcf: $0d
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	rrca                                             ; $6bd2: $0f
	nop                                              ; $6bd3: $00
	ld   bc, $1e09                                   ; $6bd4: $01 $09 $1e
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	ld   [bc], a                                     ; $6bd9: $02
	rlca                                             ; $6bda: $07
	ld   [hl+], a                                    ; $6bdb: $22
	nop                                              ; $6bdc: $00
	inc  bc                                          ; $6bdd: $03
	inc  d                                           ; $6bde: $14
	ld   bc, $2265                                   ; $6bdf: $01 $65 $22
	nop                                              ; $6be2: $00
	rlca                                             ; $6be3: $07
	ld   d, [hl]                                     ; $6be4: $56
	nop                                              ; $6be5: $00
	inc  bc                                          ; $6be6: $03
	inc  d                                           ; $6be7: $14
	ld   bc, $2566                                   ; $6be8: $01 $66 $25
	inc  bc                                          ; $6beb: $03
	inc  d                                           ; $6bec: $14
	ld   bc, $229b                                   ; $6bed: $01 $9b $22
	inc  e                                           ; $6bf0: $1c
	nop                                              ; $6bf1: $00
	rlca                                             ; $6bf2: $07
	sbc  e                                           ; $6bf3: $9b
	nop                                              ; $6bf4: $00
	inc  bc                                          ; $6bf5: $03
	inc  d                                           ; $6bf6: $14
	ld   bc, $259b                                   ; $6bf7: $01 $9b $25
	nop                                              ; $6bfa: $00
	rrca                                             ; $6bfb: $0f
	nop                                              ; $6bfc: $00
	ld   bc, $9201                                   ; $6bfd: $01 $01 $92
	ld   d, b                                        ; $6c00: $50
	sbc  [hl]                                        ; $6c01: $9e
	and  e                                           ; $6c02: $a3
	and  l                                           ; $6c03: $a5
	db   $ec                                         ; $6c04: $ec
	cp   d                                           ; $6c05: $ba
	sbc  a                                           ; $6c06: $9f
	dec  c                                           ; $6c07: $0d
	nop                                              ; $6c08: $00
	ld   a, [bc]                                     ; $6c09: $0a
	inc  e                                           ; $6c0a: $1c
	inc  b                                           ; $6c0b: $04
	nop                                              ; $6c0c: $00
	nop                                              ; $6c0d: $00
	ld   bc, $a5a3                                   ; $6c0e: $01 $a3 $a5
	db   $ec                                         ; $6c11: $ec
	cp   d                                           ; $6c12: $ba
	sbc  [hl]                                        ; $6c13: $9e
	ld   d, d                                        ; $6c14: $52
	ld   l, e                                        ; $6c15: $6b
	ld   e, d                                        ; $6c16: $5a
	ld   h, l                                        ; $6c17: $65
	ld   d, d                                        ; $6c18: $52
	ld   a, h                                        ; $6c19: $7c
	sbc  a                                           ; $6c1a: $9f
	dec  c                                           ; $6c1b: $0d
	adc  h                                           ; $6c1c: $8c
	ld   l, l                                        ; $6c1d: $6d
	ld   d, b                                        ; $6c1e: $50
	ld   h, l                                        ; $6c1f: $65
	ld   l, l                                        ; $6c20: $6d
	ld   a, e                                        ; $6c21: $7b
	sbc  a                                           ; $6c22: $9f
	dec  c                                           ; $6c23: $0d
	nop                                              ; $6c24: $00
	ld   a, [bc]                                     ; $6c25: $0a
	dec  c                                           ; $6c26: $0d
	nop                                              ; $6c27: $00
	nop                                              ; $6c28: $00
	rrca                                             ; $6c29: $0f
	nop                                              ; $6c2a: $00
	ld   bc, $1e09                                   ; $6c2b: $01 $09 $1e
	nop                                              ; $6c2e: $00
	inc  e                                           ; $6c2f: $1c
	inc  b                                           ; $6c30: $04
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	ld   bc, $9e50                                   ; $6c33: $01 $50 $9e
	ld   l, a                                        ; $6c36: $6f
	ld   d, d                                        ; $6c37: $52
	ld   [bc], a                                     ; $6c38: $02
	inc  de                                          ; $6c39: $13
	ld   l, a                                        ; $6c3a: $6f
	sub  c                                           ; $6c3b: $91
	and  c                                           ; $6c3c: $a1
	sbc  a                                           ; $6c3d: $9f
	dec  c                                           ; $6c3e: $0d
	nop                                              ; $6c3f: $00
	ld   a, [bc]                                     ; $6c40: $0a
	rrca                                             ; $6c41: $0f
	nop                                              ; $6c42: $00
	ld   bc, $9201                                   ; $6c43: $01 $01 $92
	ld   d, b                                        ; $6c46: $50
	sbc  [hl]                                        ; $6c47: $9e
	and  e                                           ; $6c48: $a3
	and  l                                           ; $6c49: $a5
	db   $ec                                         ; $6c4a: $ec
	cp   d                                           ; $6c4b: $ba
	sbc  a                                           ; $6c4c: $9f
	dec  c                                           ; $6c4d: $0d
	nop                                              ; $6c4e: $00
	ld   a, [bc]                                     ; $6c4f: $0a
	rrca                                             ; $6c50: $0f
	inc  b                                           ; $6c51: $04
	nop                                              ; $6c52: $00
	ld   bc, $8c8d                                   ; $6c53: $01 $8d $8c
	sbc  l                                           ; $6c56: $9d
	sbc  b                                           ; $6c57: $98
	sbc  [hl]                                        ; $6c58: $9e
	ld   e, d                                        ; $6c59: $5a
	and  c                                           ; $6c5a: $a1
	ld   a, [hl]                                     ; $6c5b: $7e
	ld   [hl], c                                     ; $6c5c: $71
	ld   [hl], h                                     ; $6c5d: $74
	ld   a, e                                        ; $6c5e: $7b
	sbc  a                                           ; $6c5f: $9f
	dec  c                                           ; $6c60: $0d
	adc  h                                           ; $6c61: $8c
	ld   l, l                                        ; $6c62: $6d
	ld   d, b                                        ; $6c63: $50
	ld   h, l                                        ; $6c64: $65
	ld   l, l                                        ; $6c65: $6d
	ld   a, e                                        ; $6c66: $7b
	sbc  a                                           ; $6c67: $9f
	dec  c                                           ; $6c68: $0d
	nop                                              ; $6c69: $00
	ld   a, [bc]                                     ; $6c6a: $0a
	dec  c                                           ; $6c6b: $0d
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	rrca                                             ; $6c6e: $0f
	nop                                              ; $6c6f: $00
	ld   bc, $1e09                                   ; $6c70: $01 $09 $1e
	nop                                              ; $6c73: $00
	inc  e                                           ; $6c74: $1c
	inc  b                                           ; $6c75: $04
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	ld   bc, $9e50                                   ; $6c78: $01 $50 $9e
	ld   l, a                                        ; $6c7b: $6f
	ld   d, d                                        ; $6c7c: $52
	ld   [bc], a                                     ; $6c7d: $02
	inc  de                                          ; $6c7e: $13
	ld   l, a                                        ; $6c7f: $6f
	sub  c                                           ; $6c80: $91
	and  c                                           ; $6c81: $a1
	sbc  a                                           ; $6c82: $9f
	dec  c                                           ; $6c83: $0d
	adc  l                                           ; $6c84: $8d
	adc  h                                           ; $6c85: $8c
	sbc  l                                           ; $6c86: $9d
	sbc  b                                           ; $6c87: $98
	ld   h, d                                        ; $6c88: $62
	ld   e, l                                        ; $6c89: $5d
	sbc  e                                           ; $6c8a: $9b
	ld   d, h                                        ; $6c8b: $54
	ld   h, e                                        ; $6c8c: $63
	adc  h                                           ; $6c8d: $8c
	sbc  a                                           ; $6c8e: $9f
	dec  c                                           ; $6c8f: $0d
	nop                                              ; $6c90: $00
	ld   a, [bc]                                     ; $6c91: $0a
	rrca                                             ; $6c92: $0f
	nop                                              ; $6c93: $00
	ld   bc, $9201                                   ; $6c94: $01 $01 $92
	ld   d, b                                        ; $6c97: $50
	sbc  [hl]                                        ; $6c98: $9e
	and  e                                           ; $6c99: $a3
	and  l                                           ; $6c9a: $a5
	db   $ec                                         ; $6c9b: $ec
	cp   d                                           ; $6c9c: $ba
	sbc  a                                           ; $6c9d: $9f
	dec  c                                           ; $6c9e: $0d
	ld   [hl], a                                     ; $6c9f: $77
	ld   d, h                                        ; $6ca0: $54
	ld   h, l                                        ; $6ca1: $65
	ld   l, l                                        ; $6ca2: $6d
	ld   a, h                                        ; $6ca3: $7c
	ld   sp, hl                                      ; $6ca4: $f9
	db   $10                                         ; $6ca5: $10
	ld   h, c                                        ; $6ca6: $61
	and  c                                           ; $6ca7: $a1
	ld   a, b                                        ; $6ca8: $78
	inc  bc                                          ; $6ca9: $03
	ld   l, a                                        ; $6caa: $6f
	ld   [bc], a                                     ; $6cab: $02
	xor  c                                           ; $6cac: $a9
	ld   a, c                                        ; $6cad: $79
	sbc  a                                           ; $6cae: $9f
	dec  c                                           ; $6caf: $0d
	nop                                              ; $6cb0: $00
	ld   a, [bc]                                     ; $6cb1: $0a
	inc  e                                           ; $6cb2: $1c
	inc  b                                           ; $6cb3: $04
	dec  b                                           ; $6cb4: $05
	dec  b                                           ; $6cb5: $05
	ld   bc, $8e7b                                   ; $6cb6: $01 $7b $8e
	sbc  d                                           ; $6cb9: $9a
	ld   a, b                                        ; $6cba: $78
	ld   e, l                                        ; $6cbb: $5d
	ld   [hl], h                                     ; $6cbc: $74
	rst  $38                                         ; $6cbd: $ff
	rst  $38                                         ; $6cbe: $ff
	dec  c                                           ; $6cbf: $0d
	ld   e, b                                        ; $6cc0: $58
	adc  c                                           ; $6cc1: $89
	ld   h, l                                        ; $6cc2: $65
	ld   h, e                                        ; $6cc3: $63
	adc  h                                           ; $6cc4: $8c
	and  b                                           ; $6cc5: $a0
	adc  l                                           ; $6cc6: $8d
	ld   [hl], h                                     ; $6cc7: $74
	ld   d, d                                        ; $6cc8: $52
	ld   l, l                                        ; $6cc9: $6d
	ld   a, h                                        ; $6cca: $7c
	sbc  a                                           ; $6ccb: $9f
	dec  c                                           ; $6ccc: $0d
	nop                                              ; $6ccd: $00
	inc  e                                           ; $6cce: $1c
	inc  b                                           ; $6ccf: $04
	ld   bc, $0101                                   ; $6cd0: $01 $01 $01
	ld   l, e                                        ; $6cd3: $6b
	sbc  d                                           ; $6cd4: $9a
	ld   h, [hl]                                     ; $6cd5: $66
	sub  c                                           ; $6cd6: $91
	sbc  [hl]                                        ; $6cd7: $9e
	ld   e, b                                        ; $6cd8: $58
	sub  d                                           ; $6cd9: $92
	ld   h, a                                        ; $6cda: $67
	adc  l                                           ; $6cdb: $8d
	ld   a, b                                        ; $6cdc: $78
	ld   h, e                                        ; $6cdd: $63
	ld   d, d                                        ; $6cde: $52
	sbc  a                                           ; $6cdf: $9f
	dec  c                                           ; $6ce0: $0d
	nop                                              ; $6ce1: $00
	ld   a, [bc]                                     ; $6ce2: $0a
	dec  c                                           ; $6ce3: $0d
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	rrca                                             ; $6ce6: $0f
	nop                                              ; $6ce7: $00
	ld   bc, $1e09                                   ; $6ce8: $01 $09 $1e
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	ld   [bc], a                                     ; $6ced: $02
	rlca                                             ; $6cee: $07
	ld   [hl+], a                                    ; $6cef: $22
	nop                                              ; $6cf0: $00
	inc  bc                                          ; $6cf1: $03
	ld   d, $01                                      ; $6cf2: $16 $01
	ld   h, l                                        ; $6cf4: $65
	ld   [hl+], a                                    ; $6cf5: $22
	nop                                              ; $6cf6: $00
	rlca                                             ; $6cf7: $07
	ld   e, [hl]                                     ; $6cf8: $5e
	nop                                              ; $6cf9: $00
	inc  bc                                          ; $6cfa: $03
	ld   d, $01                                      ; $6cfb: $16 $01
	ld   h, [hl]                                     ; $6cfd: $66
	dec  h                                           ; $6cfe: $25
	inc  bc                                          ; $6cff: $03
	ld   d, $01                                      ; $6d00: $16 $01
	sbc  e                                           ; $6d02: $9b
	ld   [hl+], a                                    ; $6d03: $22
	inc  e                                           ; $6d04: $1c
	nop                                              ; $6d05: $00
	rlca                                             ; $6d06: $07
	and  l                                           ; $6d07: $a5
	nop                                              ; $6d08: $00
	inc  bc                                          ; $6d09: $03
	ld   d, $01                                      ; $6d0a: $16 $01
	sbc  e                                           ; $6d0c: $9b
	dec  h                                           ; $6d0d: $25
	nop                                              ; $6d0e: $00
	rrca                                             ; $6d0f: $0f
	nop                                              ; $6d10: $00
	ld   bc, $ac01                                   ; $6d11: $01 $01 $ac
	push af                                          ; $6d14: $f5
	bit  4, e                                        ; $6d15: $cb $63
	and  c                                           ; $6d17: $a1
	sbc  a                                           ; $6d18: $9f
	dec  c                                           ; $6d19: $0d
	nop                                              ; $6d1a: $00
	ld   a, [bc]                                     ; $6d1b: $0a
	inc  e                                           ; $6d1c: $1c
	ld   b, $00                                      ; $6d1d: $06 $00
	nop                                              ; $6d1f: $00
	ld   bc, $999d                                   ; $6d20: $01 $9d $99
	ld   d, d                                        ; $6d23: $52
	sbc  a                                           ; $6d24: $9f
	ld   l, a                                        ; $6d25: $6f
	sub  l                                           ; $6d26: $95
	ld   d, d                                        ; $6d27: $52
	halt                                             ; $6d28: $76
	dec  b                                           ; $6d29: $05
	jr   z, jr_05f_6d88                              ; $6d2a: $28 $5c

	ld   a, h                                        ; $6d2c: $7c
	dec  c                                           ; $6d2d: $0d
	inc  b                                           ; $6d2e: $04
	di                                               ; $6d2f: $f3
	ld   e, d                                        ; $6d30: $5a
	ld   d, b                                        ; $6d31: $50
	sbc  c                                           ; $6d32: $99
	and  c                                           ; $6d33: $a1
	ld   l, [hl]                                     ; $6d34: $6e
	sbc  a                                           ; $6d35: $9f
	dec  c                                           ; $6d36: $0d
	adc  h                                           ; $6d37: $8c
	ld   l, l                                        ; $6d38: $6d
	inc  b                                           ; $6d39: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d3a: $cf
	inc  b                                           ; $6d3b: $04
	xor  d                                           ; $6d3c: $aa
	ld   a, b                                        ; $6d3d: $78
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
	inc  e                                           ; $6d4b: $1c
	ld   b, $00                                      ; $6d4c: $06 $00
	nop                                              ; $6d4e: $00
	ld   bc, $5496                                   ; $6d4f: $01 $96 $54
	sbc  [hl]                                        ; $6d52: $9e
	ld   [$9f00], sp                                 ; $6d53: $08 $00 $9f
	dec  c                                           ; $6d56: $0d
	nop                                              ; $6d57: $00
	ld   a, [bc]                                     ; $6d58: $0a
	rrca                                             ; $6d59: $0f
	nop                                              ; $6d5a: $00
	ld   bc, $ac01                                   ; $6d5b: $01 $01 $ac
	push af                                          ; $6d5e: $f5
	bit  4, e                                        ; $6d5f: $cb $63
	and  c                                           ; $6d61: $a1
	sbc  a                                           ; $6d62: $9f
	dec  c                                           ; $6d63: $0d
	ld   e, b                                        ; $6d64: $58
	inc  b                                           ; $6d65: $04
	ld   a, e                                        ; $6d66: $7b
	sbc  d                                           ; $6d67: $9a
	ld   h, e                                        ; $6d68: $63
	adc  h                                           ; $6d69: $8c
	ld   [hl], l                                     ; $6d6a: $75
	ld   h, a                                        ; $6d6b: $67
	sbc  a                                           ; $6d6c: $9f
	dec  c                                           ; $6d6d: $0d
	nop                                              ; $6d6e: $00
	ld   a, [bc]                                     ; $6d6f: $0a
	rrca                                             ; $6d70: $0f
	ld   b, $00                                      ; $6d71: $06 $00
	ld   bc, $9502                                   ; $6d73: $01 $02 $95
	ld   [bc], a                                     ; $6d76: $02
	sub  e                                           ; $6d77: $93
	sbc  b                                           ; $6d78: $98
	sbc  [hl]                                        ; $6d79: $9e
	ld   e, d                                        ; $6d7a: $5a
	and  c                                           ; $6d7b: $a1
	ld   a, [hl]                                     ; $6d7c: $7e
	sbc  d                                           ; $6d7d: $9a
	sub  [hl]                                        ; $6d7e: $96
	sbc  a                                           ; $6d7f: $9f
	dec  c                                           ; $6d80: $0d
	ld   h, [hl]                                     ; $6d81: $66
	sub  c                                           ; $6d82: $91
	ld   d, b                                        ; $6d83: $50
	ld   a, b                                        ; $6d84: $78
	sbc  a                                           ; $6d85: $9f
	dec  c                                           ; $6d86: $0d
	nop                                              ; $6d87: $00

jr_05f_6d88:
	ld   a, [bc]                                     ; $6d88: $0a
	dec  c                                           ; $6d89: $0d
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	rrca                                             ; $6d8c: $0f
	nop                                              ; $6d8d: $00
	ld   bc, $1e09                                   ; $6d8e: $01 $09 $1e
	nop                                              ; $6d91: $00
	inc  e                                           ; $6d92: $1c
	ld   b, $00                                      ; $6d93: $06 $00
	nop                                              ; $6d95: $00
	ld   bc, $5896                                   ; $6d96: $01 $96 $58
	sbc  [hl]                                        ; $6d99: $9e
	ld   [$9f00], sp                                 ; $6d9a: $08 $00 $9f
	dec  c                                           ; $6d9d: $0d
	ld   [bc], a                                     ; $6d9e: $02
	sub  l                                           ; $6d9f: $95
	ld   [bc], a                                     ; $6da0: $02
	sub  e                                           ; $6da1: $93
	sbc  b                                           ; $6da2: $98
	ld   h, d                                        ; $6da3: $62
	ld   e, l                                        ; $6da4: $5d
	sbc  e                                           ; $6da5: $9b
	ld   d, h                                        ; $6da6: $54
	ld   h, e                                        ; $6da7: $63
	and  c                                           ; $6da8: $a1
	sbc  a                                           ; $6da9: $9f
	dec  c                                           ; $6daa: $0d
	nop                                              ; $6dab: $00
	ld   a, [bc]                                     ; $6dac: $0a
	rrca                                             ; $6dad: $0f
	nop                                              ; $6dae: $00
	ld   bc, $ac01                                   ; $6daf: $01 $01 $ac
	push af                                          ; $6db2: $f5
	bit  4, e                                        ; $6db3: $cb $63
	and  c                                           ; $6db5: $a1
	sbc  a                                           ; $6db6: $9f
	dec  c                                           ; $6db7: $0d
	ld   h, c                                        ; $6db8: $61
	and  c                                           ; $6db9: $a1
	ld   a, b                                        ; $6dba: $78
	sbc  [hl]                                        ; $6dbb: $9e
	inc  b                                           ; $6dbc: $04
	rst  $28                                         ; $6dbd: $ef
	ld   e, b                                        ; $6dbe: $58
	ld   l, e                                        ; $6dbf: $6b
	ld   e, l                                        ; $6dc0: $5d
	ld   a, c                                        ; $6dc1: $79
	dec  c                                           ; $6dc2: $0d
	ld   [hl], a                                     ; $6dc3: $77
	ld   d, h                                        ; $6dc4: $54
	ld   h, l                                        ; $6dc5: $65
	ld   l, l                                        ; $6dc6: $6d
	and  c                                           ; $6dc7: $a1
	ld   [hl], l                                     ; $6dc8: $75
	ld   h, a                                        ; $6dc9: $67
	ld   e, c                                        ; $6dca: $59
	ld   sp, hl                                      ; $6dcb: $f9
	dec  c                                           ; $6dcc: $0d
	nop                                              ; $6dcd: $00
	ld   a, [bc]                                     ; $6dce: $0a
	inc  e                                           ; $6dcf: $1c
	ld   b, $04                                      ; $6dd0: $06 $04
	inc  b                                           ; $6dd2: $04
	ld   bc, $ce04                                   ; $6dd3: $01 $04 $ce
	sbc  d                                           ; $6dd6: $9a
	ld   a, b                                        ; $6dd7: $78
	ld   e, l                                        ; $6dd8: $5d
	ld   [hl], h                                     ; $6dd9: $74
	ld   h, e                                        ; $6dda: $63
	rst  $38                                         ; $6ddb: $ff
	rst  $38                                         ; $6ddc: $ff
	dec  c                                           ; $6ddd: $0d
	ret                                              ; $6dde: $c9


	xor  $fb                                         ; $6ddf: $ee $fb
	call z, $b1f5                                    ; $6de1: $cc $f5 $b1
	ld   h, l                                        ; $6de4: $65
	ld   [hl], h                                     ; $6de5: $74
	ld   l, l                                        ; $6de6: $6d
	and  c                                           ; $6de7: $a1
	ld   l, [hl]                                     ; $6de8: $6e
	sbc  a                                           ; $6de9: $9f
	dec  c                                           ; $6dea: $0d
	nop                                              ; $6deb: $00
	inc  e                                           ; $6dec: $1c
	ld   b, $01                                      ; $6ded: $06 $01
	ld   bc, $6b01                                   ; $6def: $01 $01 $6b
	sbc  d                                           ; $6df2: $9a
	ld   h, [hl]                                     ; $6df3: $66
	sub  c                                           ; $6df4: $91
	sbc  [hl]                                        ; $6df5: $9e
	ld   e, b                                        ; $6df6: $58
	sub  d                                           ; $6df7: $92
	ld   h, a                                        ; $6df8: $67
	adc  l                                           ; $6df9: $8d
	sbc  a                                           ; $6dfa: $9f
	dec  c                                           ; $6dfb: $0d
	nop                                              ; $6dfc: $00
	ld   a, [bc]                                     ; $6dfd: $0a
	dec  c                                           ; $6dfe: $0d
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	rrca                                             ; $6e01: $0f
	nop                                              ; $6e02: $00
	ld   bc, $1e09                                   ; $6e03: $01 $09 $1e
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	ld   [bc], a                                     ; $6e08: $02
	rlca                                             ; $6e09: $07
	ld   l, $00                                      ; $6e0a: $2e $00
	inc  bc                                          ; $6e0c: $03
	ld   [de], a                                     ; $6e0d: $12
	ld   bc, $2265                                   ; $6e0e: $01 $65 $22
	nop                                              ; $6e11: $00
	rlca                                             ; $6e12: $07
	ld   l, b                                        ; $6e13: $68
	nop                                              ; $6e14: $00
	inc  bc                                          ; $6e15: $03
	ld   [de], a                                     ; $6e16: $12
	ld   bc, $2565                                   ; $6e17: $01 $65 $25
	inc  bc                                          ; $6e1a: $03
	ld   [de], a                                     ; $6e1b: $12
	ld   bc, $229b                                   ; $6e1c: $01 $9b $22
	inc  e                                           ; $6e1f: $1c
	nop                                              ; $6e20: $00
	rlca                                             ; $6e21: $07
	or   h                                           ; $6e22: $b4
	nop                                              ; $6e23: $00
	inc  bc                                          ; $6e24: $03
	ld   [de], a                                     ; $6e25: $12
	ld   bc, $259b                                   ; $6e26: $01 $9b $25
	ld   [bc], a                                     ; $6e29: $02
	nop                                              ; $6e2a: $00
	ld   bc, $2c02                                   ; $6e2b: $01 $02 $2c
	ld   bc, $2001                                   ; $6e2e: $01 $01 $20
	inc  e                                           ; $6e31: $1c
	nop                                              ; $6e32: $00
	ld   b, $0a                                      ; $6e33: $06 $0a
	ld   bc, $000f                                   ; $6e35: $01 $0f $00
	ld   bc, $6701                                   ; $6e38: $01 $01 $67
	adc  l                                           ; $6e3b: $8d
	sbc  d                                           ; $6e3c: $9a
	ld   h, e                                        ; $6e3d: $63
	and  c                                           ; $6e3e: $a1
	sbc  a                                           ; $6e3f: $9f
	dec  c                                           ; $6e40: $0d
	nop                                              ; $6e41: $00
	ld   a, [bc]                                     ; $6e42: $0a
	inc  e                                           ; $6e43: $1c
	ld   [bc], a                                     ; $6e44: $02
	nop                                              ; $6e45: $00
	nop                                              ; $6e46: $00
	ld   bc, $8c52                                   ; $6e47: $01 $52 $8c
	sbc  [hl]                                        ; $6e4a: $9e
	inc  bc                                          ; $6e4b: $03
	ld   l, e                                        ; $6e4c: $6b
	ld   e, d                                        ; $6e4d: $5a
	inc  b                                           ; $6e4e: $04
	sbc  c                                           ; $6e4f: $99
	ld   l, c                                        ; $6e50: $69
	adc  h                                           ; $6e51: $8c
	ld   l, c                                        ; $6e52: $69
	and  c                                           ; $6e53: $a1
	ld   a, h                                        ; $6e54: $7c
	sbc  a                                           ; $6e55: $9f
	dec  c                                           ; $6e56: $0d
	inc  b                                           ; $6e57: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e58: $cf
	inc  b                                           ; $6e59: $04
	xor  d                                           ; $6e5a: $aa
	ld   a, c                                        ; $6e5b: $79
	ld   h, l                                        ; $6e5c: $65
	ld   [hl], h                                     ; $6e5d: $74
	ld   e, l                                        ; $6e5e: $5d
	ld   l, [hl]                                     ; $6e5f: $6e
	ld   h, e                                        ; $6e60: $63
	ld   d, d                                        ; $6e61: $52
	ld   a, b                                        ; $6e62: $78
	sbc  a                                           ; $6e63: $9f
	dec  c                                           ; $6e64: $0d
	nop                                              ; $6e65: $00
	ld   a, [bc]                                     ; $6e66: $0a
	dec  c                                           ; $6e67: $0d
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00
	rrca                                             ; $6e6a: $0f
	nop                                              ; $6e6b: $00
	ld   bc, $1e09                                   ; $6e6c: $01 $09 $1e
	nop                                              ; $6e6f: $00
	inc  e                                           ; $6e70: $1c
	ld   [bc], a                                     ; $6e71: $02
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	ld   bc, $9750                                   ; $6e74: $01 $50 $97
	sbc  [hl]                                        ; $6e77: $9e
	ld   [$6300], sp                                 ; $6e78: $08 $00 $63
	and  c                                           ; $6e7b: $a1
	dec  c                                           ; $6e7c: $0d
	nop                                              ; $6e7d: $00
	ld   a, [bc]                                     ; $6e7e: $0a
	rrca                                             ; $6e7f: $0f
	nop                                              ; $6e80: $00
	ld   bc, $6701                                   ; $6e81: $01 $01 $67
	adc  l                                           ; $6e84: $8d
	sbc  d                                           ; $6e85: $9a
	ld   h, e                                        ; $6e86: $63
	and  c                                           ; $6e87: $a1
	sbc  a                                           ; $6e88: $9f
	dec  c                                           ; $6e89: $0d
	ld   e, b                                        ; $6e8a: $58
	inc  b                                           ; $6e8b: $04
	ld   a, e                                        ; $6e8c: $7b
	sbc  d                                           ; $6e8d: $9a
	ld   h, e                                        ; $6e8e: $63
	adc  h                                           ; $6e8f: $8c
	ld   [hl], l                                     ; $6e90: $75
	ld   h, a                                        ; $6e91: $67
	sbc  a                                           ; $6e92: $9f
	dec  c                                           ; $6e93: $0d
	nop                                              ; $6e94: $00
	ld   a, [bc]                                     ; $6e95: $0a
	rrca                                             ; $6e96: $0f
	ld   [bc], a                                     ; $6e97: $02
	nop                                              ; $6e98: $00
	ld   bc, $9502                                   ; $6e99: $01 $02 $95
	ld   [bc], a                                     ; $6e9c: $02
	sub  e                                           ; $6e9d: $93
	sbc  b                                           ; $6e9e: $98
	ld   e, d                                        ; $6e9f: $5a
	and  c                                           ; $6ea0: $a1
	ld   a, [hl]                                     ; $6ea1: $7e
	sbc  b                                           ; $6ea2: $98
	ld   a, b                                        ; $6ea3: $78
	ld   h, e                                        ; $6ea4: $63
	ld   d, d                                        ; $6ea5: $52
	sbc  a                                           ; $6ea6: $9f
	dec  c                                           ; $6ea7: $0d
	ld   [hl], l                                     ; $6ea8: $75
	ld   a, l                                        ; $6ea9: $7d
	inc  bc                                          ; $6eaa: $03
	add  e                                           ; $6eab: $83
	dec  b                                           ; $6eac: $05
	dec  c                                           ; $6ead: $0d
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	dec  c                                           ; $6eb0: $0d
	nop                                              ; $6eb1: $00
	ld   a, [bc]                                     ; $6eb2: $0a
	dec  c                                           ; $6eb3: $0d
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	rrca                                             ; $6eb6: $0f
	nop                                              ; $6eb7: $00
	ld   bc, $1e09                                   ; $6eb8: $01 $09 $1e
	nop                                              ; $6ebb: $00
	inc  e                                           ; $6ebc: $1c
	ld   [bc], a                                     ; $6ebd: $02
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	ld   bc, $9502                                   ; $6ec0: $01 $02 $95
	ld   [bc], a                                     ; $6ec3: $02
	sub  e                                           ; $6ec4: $93
	sbc  b                                           ; $6ec5: $98
	ld   h, d                                        ; $6ec6: $62
	ld   e, l                                        ; $6ec7: $5d
	sbc  e                                           ; $6ec8: $9b
	ld   d, h                                        ; $6ec9: $54
	ld   h, e                                        ; $6eca: $63
	adc  h                                           ; $6ecb: $8c
	sbc  a                                           ; $6ecc: $9f
	dec  c                                           ; $6ecd: $0d
	nop                                              ; $6ece: $00
	ld   a, [bc]                                     ; $6ecf: $0a
	rrca                                             ; $6ed0: $0f
	nop                                              ; $6ed1: $00
	ld   bc, $5801                                   ; $6ed2: $01 $01 $58
	inc  b                                           ; $6ed5: $04
	ld   a, e                                        ; $6ed6: $7b
	sbc  d                                           ; $6ed7: $9a
	ld   h, e                                        ; $6ed8: $63
	adc  h                                           ; $6ed9: $8c
	ld   [hl], l                                     ; $6eda: $75
	ld   h, a                                        ; $6edb: $67
	sbc  a                                           ; $6edc: $9f
	ld   h, a                                        ; $6edd: $67
	adc  l                                           ; $6ede: $8d
	sbc  d                                           ; $6edf: $9a
	ld   h, e                                        ; $6ee0: $63
	and  c                                           ; $6ee1: $a1
	sbc  a                                           ; $6ee2: $9f
	dec  c                                           ; $6ee3: $0d
	nop                                              ; $6ee4: $00
	ld   a, [bc]                                     ; $6ee5: $0a
	inc  e                                           ; $6ee6: $1c
	ld   [bc], a                                     ; $6ee7: $02
	ld   bc, $0101                                   ; $6ee8: $01 $01 $01
	inc  b                                           ; $6eeb: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eec: $cf
	inc  b                                           ; $6eed: $04
	xor  d                                           ; $6eee: $aa
	sub  b                                           ; $6eef: $90
	ld   e, d                                        ; $6ef0: $5a
	and  c                                           ; $6ef1: $a1
	ld   a, [hl]                                     ; $6ef2: $7e
	sbc  b                                           ; $6ef3: $98
	ld   a, b                                        ; $6ef4: $78
	ld   h, e                                        ; $6ef5: $63
	ld   d, d                                        ; $6ef6: $52
	sbc  a                                           ; $6ef7: $9f
	dec  c                                           ; $6ef8: $0d
	ld   [$6300], sp                                 ; $6ef9: $08 $00 $63
	and  c                                           ; $6efc: $a1
	sbc  a                                           ; $6efd: $9f
	dec  c                                           ; $6efe: $0d
	ld   [hl], l                                     ; $6eff: $75
	ld   a, l                                        ; $6f00: $7d
	inc  bc                                          ; $6f01: $03
	add  e                                           ; $6f02: $83
	dec  b                                           ; $6f03: $05
	dec  c                                           ; $6f04: $0d
	sbc  a                                           ; $6f05: $9f
	dec  c                                           ; $6f06: $0d
	nop                                              ; $6f07: $00
	ld   a, [bc]                                     ; $6f08: $0a
	dec  c                                           ; $6f09: $0d
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	rrca                                             ; $6f0c: $0f
	nop                                              ; $6f0d: $00
	ld   bc, $1e09                                   ; $6f0e: $01 $09 $1e
	nop                                              ; $6f11: $00
	inc  e                                           ; $6f12: $1c
	ld   [bc], a                                     ; $6f13: $02
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	ld   bc, $9750                                   ; $6f16: $01 $50 $97
	sbc  [hl]                                        ; $6f19: $9e
	ld   [$6300], sp                                 ; $6f1a: $08 $00 $63
	and  c                                           ; $6f1d: $a1
	sbc  a                                           ; $6f1e: $9f
	dec  c                                           ; $6f1f: $0d
	ld   e, b                                        ; $6f20: $58
	sub  d                                           ; $6f21: $92
	ld   h, a                                        ; $6f22: $67
	adc  l                                           ; $6f23: $8d
	ld   a, b                                        ; $6f24: $78
	ld   h, e                                        ; $6f25: $63
	ld   d, d                                        ; $6f26: $52
	sbc  a                                           ; $6f27: $9f
	dec  c                                           ; $6f28: $0d
	nop                                              ; $6f29: $00
	ld   a, [bc]                                     ; $6f2a: $0a
	rrca                                             ; $6f2b: $0f
	nop                                              ; $6f2c: $00
	ld   bc, $5601                                   ; $6f2d: $01 $01 $56
	ld   [hl], c                                     ; $6f30: $71
	sbc  [hl]                                        ; $6f31: $9e
	ld   [bc], a                                     ; $6f32: $02
	and  l                                           ; $6f33: $a5
	inc  b                                           ; $6f34: $04
	xor  d                                           ; $6f35: $aa
	ld   a, l                                        ; $6f36: $7d
	sub  b                                           ; $6f37: $90
	ld   d, h                                        ; $6f38: $54
	sbc  [hl]                                        ; $6f39: $9e
	dec  c                                           ; $6f3a: $0d
	ld   e, b                                        ; $6f3b: $58
	inc  bc                                          ; $6f3c: $03
	and  a                                           ; $6f3d: $a7
	adc  l                                           ; $6f3e: $8d
	ld   [hl], l                                     ; $6f3f: $75
	ld   h, a                                        ; $6f40: $67
	ld   e, c                                        ; $6f41: $59
	ld   sp, hl                                      ; $6f42: $f9
	dec  c                                           ; $6f43: $0d
	nop                                              ; $6f44: $00
	ld   a, [bc]                                     ; $6f45: $0a
	rrca                                             ; $6f46: $0f
	ld   [bc], a                                     ; $6f47: $02
	nop                                              ; $6f48: $00
	ld   bc, $cf04                                   ; $6f49: $01 $04 $cf
	inc  b                                           ; $6f4c: $04
	xor  d                                           ; $6f4d: $aa
	ld   a, l                                        ; $6f4e: $7d
	inc  bc                                          ; $6f4f: $03
	ld   d, $5f                                      ; $6f50: $16 $5f
	ld   d, d                                        ; $6f52: $52
	ld   h, c                                        ; $6f53: $61
	ld   a, b                                        ; $6f54: $78
	and  c                                           ; $6f55: $a1
	ld   [hl], l                                     ; $6f56: $75
	ld   h, a                                        ; $6f57: $67
	ld   a, h                                        ; $6f58: $7c
	sub  [hl]                                        ; $6f59: $96
	sbc  a                                           ; $6f5a: $9f
	dec  c                                           ; $6f5b: $0d
	ld   l, e                                        ; $6f5c: $6b
	sbc  d                                           ; $6f5d: $9a
	ld   [hl], l                                     ; $6f5e: $75
	ld   a, l                                        ; $6f5f: $7d
	sbc  [hl]                                        ; $6f60: $9e
	ld   [bc], a                                     ; $6f61: $02
	sub  l                                           ; $6f62: $95
	ld   [bc], a                                     ; $6f63: $02
	sub  e                                           ; $6f64: $93
	sbc  b                                           ; $6f65: $98
	dec  c                                           ; $6f66: $0d
	ld   e, d                                        ; $6f67: $5a
	and  c                                           ; $6f68: $a1
	ld   a, [hl]                                     ; $6f69: $7e
	sbc  b                                           ; $6f6a: $98
	ld   a, b                                        ; $6f6b: $78
	ld   h, e                                        ; $6f6c: $63
	ld   d, d                                        ; $6f6d: $52
	ld   a, b                                        ; $6f6e: $78
	sbc  a                                           ; $6f6f: $9f
	dec  c                                           ; $6f70: $0d
	nop                                              ; $6f71: $00
	ld   a, [bc]                                     ; $6f72: $0a
	dec  c                                           ; $6f73: $0d
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	rrca                                             ; $6f76: $0f
	nop                                              ; $6f77: $00
	ld   bc, $1e09                                   ; $6f78: $01 $09 $1e
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	ld   [bc], a                                     ; $6f7d: $02
	rlca                                             ; $6f7e: $07
	ld   l, $00                                      ; $6f7f: $2e $00
	inc  bc                                          ; $6f81: $03
	ld   de, $6501                                   ; $6f82: $11 $01 $65
	ld   [hl+], a                                    ; $6f85: $22
	nop                                              ; $6f86: $00
	rlca                                             ; $6f87: $07
	ld   e, a                                        ; $6f88: $5f
	nop                                              ; $6f89: $00
	inc  bc                                          ; $6f8a: $03
	ld   de, $6501                                   ; $6f8b: $11 $01 $65
	dec  h                                           ; $6f8e: $25
	inc  bc                                          ; $6f8f: $03
	ld   de, $9b01                                   ; $6f90: $11 $01 $9b
	ld   [hl+], a                                    ; $6f93: $22
	inc  e                                           ; $6f94: $1c
	nop                                              ; $6f95: $00
	rlca                                             ; $6f96: $07
	xor  c                                           ; $6f97: $a9
	nop                                              ; $6f98: $00
	inc  bc                                          ; $6f99: $03
	ld   de, $9b01                                   ; $6f9a: $11 $01 $9b
	dec  h                                           ; $6f9d: $25
	ld   [bc], a                                     ; $6f9e: $02
	nop                                              ; $6f9f: $00
	ld   bc, $2c02                                   ; $6fa0: $01 $02 $2c
	ld   bc, $2001                                   ; $6fa3: $01 $01 $20
	inc  e                                           ; $6fa6: $1c
	nop                                              ; $6fa7: $00
	ld   b, $0d                                      ; $6fa8: $06 $0d
	ld   bc, $000f                                   ; $6faa: $01 $0f $00
	ld   bc, $6301                                   ; $6fad: $01 $01 $63
	ld   e, l                                        ; $6fb0: $5d
	sub  a                                           ; $6fb1: $97
	ld   h, e                                        ; $6fb2: $63
	and  c                                           ; $6fb3: $a1
	sbc  a                                           ; $6fb4: $9f
	dec  c                                           ; $6fb5: $0d
	nop                                              ; $6fb6: $00
	ld   a, [bc]                                     ; $6fb7: $0a
	inc  e                                           ; $6fb8: $1c
	ld   bc, $0000                                   ; $6fb9: $01 $00 $00
	ld   bc, $8f62                                   ; $6fbc: $01 $62 $8f
	and  c                                           ; $6fbf: $a1
	ld   a, b                                        ; $6fc0: $78
	ld   h, e                                        ; $6fc1: $63
	ld   d, d                                        ; $6fc2: $52
	sbc  a                                           ; $6fc3: $9f
	dec  c                                           ; $6fc4: $0d
	ld   d, d                                        ; $6fc5: $52
	adc  h                                           ; $6fc6: $8c
	dec  b                                           ; $6fc7: $05
	jr   z, jr_05f_701c                              ; $6fc8: $28 $52

	ld   [hl], l                                     ; $6fca: $75
	sbc  c                                           ; $6fcb: $99
	and  c                                           ; $6fcc: $a1
	ld   [hl], l                                     ; $6fcd: $75
	ld   h, a                                        ; $6fce: $67
	sbc  a                                           ; $6fcf: $9f
	dec  c                                           ; $6fd0: $0d
	nop                                              ; $6fd1: $00
	ld   a, [bc]                                     ; $6fd2: $0a
	dec  c                                           ; $6fd3: $0d
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	rrca                                             ; $6fd6: $0f
	nop                                              ; $6fd7: $00
	ld   bc, $1e09                                   ; $6fd8: $01 $09 $1e
	nop                                              ; $6fdb: $00
	inc  e                                           ; $6fdc: $1c
	ld   bc, $0000                                   ; $6fdd: $01 $00 $00
	ld   bc, $9750                                   ; $6fe0: $01 $50 $97
	sbc  [hl]                                        ; $6fe3: $9e
	ld   [$6300], sp                                 ; $6fe4: $08 $00 $63
	and  c                                           ; $6fe7: $a1
	dec  c                                           ; $6fe8: $0d
	nop                                              ; $6fe9: $00
	ld   a, [bc]                                     ; $6fea: $0a
	rrca                                             ; $6feb: $0f
	nop                                              ; $6fec: $00
	ld   bc, $6301                                   ; $6fed: $01 $01 $63
	ld   e, l                                        ; $6ff0: $5d
	sub  a                                           ; $6ff1: $97
	ld   h, e                                        ; $6ff2: $63
	and  c                                           ; $6ff3: $a1
	sbc  a                                           ; $6ff4: $9f
	dec  c                                           ; $6ff5: $0d
	ld   e, b                                        ; $6ff6: $58
	inc  b                                           ; $6ff7: $04
	ld   a, e                                        ; $6ff8: $7b
	sbc  d                                           ; $6ff9: $9a
	ld   h, e                                        ; $6ffa: $63
	adc  h                                           ; $6ffb: $8c
	ld   [hl], l                                     ; $6ffc: $75
	ld   h, a                                        ; $6ffd: $67
	sbc  a                                           ; $6ffe: $9f
	dec  c                                           ; $6fff: $0d
	nop                                              ; $7000: $00
	ld   a, [bc]                                     ; $7001: $0a
	rrca                                             ; $7002: $0f
	ld   bc, $0100                                   ; $7003: $01 $00 $01
	ld   [bc], a                                     ; $7006: $02
	sub  l                                           ; $7007: $95
	ld   [bc], a                                     ; $7008: $02
	sub  e                                           ; $7009: $93
	sbc  b                                           ; $700a: $98
	ld   h, d                                        ; $700b: $62
	ld   e, l                                        ; $700c: $5d
	sbc  e                                           ; $700d: $9b
	ld   d, h                                        ; $700e: $54
	ld   h, e                                        ; $700f: $63
	adc  h                                           ; $7010: $8c
	ld   [hl], l                                     ; $7011: $75
	ld   h, a                                        ; $7012: $67
	sbc  a                                           ; $7013: $9f
	dec  c                                           ; $7014: $0d
	ld   l, e                                        ; $7015: $6b
	sbc  d                                           ; $7016: $9a
	ld   [hl], l                                     ; $7017: $75
	ld   a, l                                        ; $7018: $7d
	sbc  a                                           ; $7019: $9f
	dec  c                                           ; $701a: $0d
	nop                                              ; $701b: $00

jr_05f_701c:
	ld   a, [bc]                                     ; $701c: $0a
	dec  c                                           ; $701d: $0d
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	rrca                                             ; $7020: $0f
	nop                                              ; $7021: $00
	ld   bc, $1e09                                   ; $7022: $01 $09 $1e
	nop                                              ; $7025: $00
	inc  e                                           ; $7026: $1c
	ld   bc, $0000                                   ; $7027: $01 $00 $00
	ld   bc, $9750                                   ; $702a: $01 $50 $97
	sbc  [hl]                                        ; $702d: $9e
	ld   [$6300], sp                                 ; $702e: $08 $00 $63
	and  c                                           ; $7031: $a1
	sbc  a                                           ; $7032: $9f
	dec  c                                           ; $7033: $0d
	ld   [bc], a                                     ; $7034: $02
	sub  l                                           ; $7035: $95
	ld   [bc], a                                     ; $7036: $02
	sub  e                                           ; $7037: $93
	sbc  b                                           ; $7038: $98
	ld   h, d                                        ; $7039: $62
	ld   e, l                                        ; $703a: $5d
	sbc  e                                           ; $703b: $9b
	ld   d, h                                        ; $703c: $54
	ld   h, e                                        ; $703d: $63
	adc  h                                           ; $703e: $8c
	ld   [hl], l                                     ; $703f: $75
	ld   h, a                                        ; $7040: $67
	sbc  a                                           ; $7041: $9f
	dec  c                                           ; $7042: $0d
	nop                                              ; $7043: $00
	ld   a, [bc]                                     ; $7044: $0a
	rrca                                             ; $7045: $0f
	nop                                              ; $7046: $00
	ld   bc, $5801                                   ; $7047: $01 $01 $58
	inc  b                                           ; $704a: $04
	ld   a, e                                        ; $704b: $7b
	sbc  d                                           ; $704c: $9a
	ld   h, e                                        ; $704d: $63
	adc  h                                           ; $704e: $8c
	ld   [hl], l                                     ; $704f: $75
	ld   h, a                                        ; $7050: $67
	sbc  a                                           ; $7051: $9f
	ld   h, e                                        ; $7052: $63
	ld   e, l                                        ; $7053: $5d
	sub  a                                           ; $7054: $97
	ld   h, e                                        ; $7055: $63
	and  c                                           ; $7056: $a1
	sbc  a                                           ; $7057: $9f
	dec  c                                           ; $7058: $0d
	nop                                              ; $7059: $00
	ld   a, [bc]                                     ; $705a: $0a
	inc  e                                           ; $705b: $1c
	ld   bc, $0101                                   ; $705c: $01 $01 $01
	ld   bc, $cf04                                   ; $705f: $01 $04 $cf
	inc  b                                           ; $7062: $04
	xor  d                                           ; $7063: $aa
	sub  b                                           ; $7064: $90
	ld   e, d                                        ; $7065: $5a
	and  c                                           ; $7066: $a1
	ld   a, [hl]                                     ; $7067: $7e
	ld   [hl], c                                     ; $7068: $71
	ld   [hl], h                                     ; $7069: $74
	dec  c                                           ; $706a: $0d
	ld   d, d                                        ; $706b: $52
	ld   e, e                                        ; $706c: $5b
	adc  h                                           ; $706d: $8c
	ld   h, l                                        ; $706e: $65
	sub  l                                           ; $706f: $95
	ld   d, h                                        ; $7070: $54
	ld   a, e                                        ; $7071: $7b
	sbc  a                                           ; $7072: $9f
	dec  c                                           ; $7073: $0d
	ld   [$6300], sp                                 ; $7074: $08 $00 $63
	and  c                                           ; $7077: $a1
	sbc  a                                           ; $7078: $9f
	ld   l, e                                        ; $7079: $6b
	sbc  d                                           ; $707a: $9a
	ld   [hl], l                                     ; $707b: $75
	ld   a, l                                        ; $707c: $7d
	sbc  a                                           ; $707d: $9f
	dec  c                                           ; $707e: $0d
	nop                                              ; $707f: $00
	ld   a, [bc]                                     ; $7080: $0a
	dec  c                                           ; $7081: $0d
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	rrca                                             ; $7084: $0f
	nop                                              ; $7085: $00
	ld   bc, $1e09                                   ; $7086: $01 $09 $1e
	nop                                              ; $7089: $00
	inc  e                                           ; $708a: $1c
	ld   bc, $0101                                   ; $708b: $01 $01 $01
	ld   bc, $9750                                   ; $708e: $01 $50 $97
	sbc  [hl]                                        ; $7091: $9e
	ld   [$6300], sp                                 ; $7092: $08 $00 $63
	and  c                                           ; $7095: $a1
	sbc  a                                           ; $7096: $9f
	dec  c                                           ; $7097: $0d
	ld   e, b                                        ; $7098: $58
	sub  d                                           ; $7099: $92
	ld   h, a                                        ; $709a: $67
	adc  l                                           ; $709b: $8d
	ld   a, b                                        ; $709c: $78
	ld   h, e                                        ; $709d: $63
	ld   d, d                                        ; $709e: $52
	sbc  a                                           ; $709f: $9f
	dec  c                                           ; $70a0: $0d
	nop                                              ; $70a1: $00
	ld   a, [bc]                                     ; $70a2: $0a
	rrca                                             ; $70a3: $0f
	nop                                              ; $70a4: $00
	ld   bc, $5601                                   ; $70a5: $01 $01 $56
	ld   [hl], c                                     ; $70a8: $71
	sbc  [hl]                                        ; $70a9: $9e
	ld   [bc], a                                     ; $70aa: $02
	and  l                                           ; $70ab: $a5
	inc  b                                           ; $70ac: $04
	xor  d                                           ; $70ad: $aa
	ld   a, l                                        ; $70ae: $7d
	sub  b                                           ; $70af: $90
	ld   d, h                                        ; $70b0: $54
	sbc  [hl]                                        ; $70b1: $9e
	dec  c                                           ; $70b2: $0d
	ld   e, b                                        ; $70b3: $58
	inc  bc                                          ; $70b4: $03
	and  a                                           ; $70b5: $a7
	adc  l                                           ; $70b6: $8d
	ld   [hl], l                                     ; $70b7: $75
	ld   h, a                                        ; $70b8: $67
	ld   e, c                                        ; $70b9: $59
	ld   sp, hl                                      ; $70ba: $f9
	dec  c                                           ; $70bb: $0d
	nop                                              ; $70bc: $00
	ld   a, [bc]                                     ; $70bd: $0a
	rrca                                             ; $70be: $0f
	ld   bc, $0101                                   ; $70bf: $01 $01 $01
	ld   d, [hl]                                     ; $70c2: $56
	ld   d, [hl]                                     ; $70c3: $56
	sbc  [hl]                                        ; $70c4: $9e
	inc  b                                           ; $70c5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70c6: $cf
	inc  b                                           ; $70c7: $04
	xor  d                                           ; $70c8: $aa
	inc  bc                                          ; $70c9: $03
	ld   d, $5f                                      ; $70ca: $16 $5f
	ld   d, d                                        ; $70cc: $52
	ld   h, c                                        ; $70cd: $61
	ld   a, b                                        ; $70ce: $78
	and  c                                           ; $70cf: $a1
	ld   [hl], l                                     ; $70d0: $75
	ld   h, a                                        ; $70d1: $67
	sbc  a                                           ; $70d2: $9f
	dec  c                                           ; $70d3: $0d
	ld   h, [hl]                                     ; $70d4: $66
	sub  c                                           ; $70d5: $91
	sbc  [hl]                                        ; $70d6: $9e
	ld   [bc], a                                     ; $70d7: $02
	sub  l                                           ; $70d8: $95
	ld   [bc], a                                     ; $70d9: $02
	sub  e                                           ; $70da: $93
	sbc  b                                           ; $70db: $98
	sbc  [hl]                                        ; $70dc: $9e
	ld   h, l                                        ; $70dd: $65
	ld   [hl], c                                     ; $70de: $71
	ld   e, c                                        ; $70df: $59
	sbc  b                                           ; $70e0: $98
	halt                                             ; $70e1: $76
	dec  c                                           ; $70e2: $0d
	ld   e, b                                        ; $70e3: $58
	ld   [bc], a                                     ; $70e4: $02
	add  b                                           ; $70e5: $80
	ld   d, d                                        ; $70e6: $52
	ld   h, l                                        ; $70e7: $65
	adc  h                                           ; $70e8: $8c
	ld   h, a                                        ; $70e9: $67
	ld   a, e                                        ; $70ea: $7b
	sbc  a                                           ; $70eb: $9f
	ld   [hl], l                                     ; $70ec: $75
	ld   a, l                                        ; $70ed: $7d
	sbc  a                                           ; $70ee: $9f
	dec  c                                           ; $70ef: $0d
	nop                                              ; $70f0: $00
	ld   a, [bc]                                     ; $70f1: $0a
	dec  c                                           ; $70f2: $0d
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	rrca                                             ; $70f5: $0f
	nop                                              ; $70f6: $00
	ld   bc, $1e09                                   ; $70f7: $01 $09 $1e
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	ld   [bc], a                                     ; $70fc: $02
	rlca                                             ; $70fd: $07
	ld   l, $00                                      ; $70fe: $2e $00
	inc  bc                                          ; $7100: $03
	inc  de                                          ; $7101: $13
	ld   bc, $2265                                   ; $7102: $01 $65 $22
	nop                                              ; $7105: $00
	rlca                                             ; $7106: $07
	ld   e, a                                        ; $7107: $5f
	nop                                              ; $7108: $00
	inc  bc                                          ; $7109: $03
	inc  de                                          ; $710a: $13
	ld   bc, $2566                                   ; $710b: $01 $66 $25
	inc  bc                                          ; $710e: $03
	inc  de                                          ; $710f: $13
	ld   bc, $229b                                   ; $7110: $01 $9b $22
	inc  e                                           ; $7113: $1c
	nop                                              ; $7114: $00
	rlca                                             ; $7115: $07
	and  l                                           ; $7116: $a5
	nop                                              ; $7117: $00
	inc  bc                                          ; $7118: $03
	inc  de                                          ; $7119: $13
	ld   bc, $259b                                   ; $711a: $01 $9b $25
	ld   [bc], a                                     ; $711d: $02
	nop                                              ; $711e: $00
	ld   bc, $2c02                                   ; $711f: $01 $02 $2c
	ld   bc, $2001                                   ; $7122: $01 $01 $20
	inc  e                                           ; $7125: $1c
	nop                                              ; $7126: $00
	ld   b, $01                                      ; $7127: $06 $01
	ld   bc, $000f                                   ; $7129: $01 $0f $00
	ld   bc, $df01                                   ; $712c: $01 $01 $df
	db   $ec                                         ; $712f: $ec
	and  e                                           ; $7130: $a3
	ld   h, e                                        ; $7131: $63
	and  c                                           ; $7132: $a1
	sbc  a                                           ; $7133: $9f
	dec  c                                           ; $7134: $0d
	nop                                              ; $7135: $00
	ld   a, [bc]                                     ; $7136: $0a
	inc  e                                           ; $7137: $1c
	inc  bc                                          ; $7138: $03
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	ld   bc, $8c52                                   ; $713b: $01 $52 $8c
	dec  b                                           ; $713e: $05
	jr   z, jr_05f_7193                              ; $713f: $28 $52

	ld   [hl], l                                     ; $7141: $75
	sbc  c                                           ; $7142: $99
	ld   a, h                                        ; $7143: $7c
	sbc  a                                           ; $7144: $9f
	dec  c                                           ; $7145: $0d
	adc  h                                           ; $7146: $8c
	ld   l, l                                        ; $7147: $6d
	sbc  [hl]                                        ; $7148: $9e
	inc  b                                           ; $7149: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $714a: $cf
	inc  b                                           ; $714b: $04
	xor  d                                           ; $714c: $aa
	ld   a, e                                        ; $714d: $7b
	sbc  a                                           ; $714e: $9f
	dec  c                                           ; $714f: $0d
	nop                                              ; $7150: $00
	ld   a, [bc]                                     ; $7151: $0a
	dec  c                                           ; $7152: $0d
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	rrca                                             ; $7155: $0f
	nop                                              ; $7156: $00
	ld   bc, $1e09                                   ; $7157: $01 $09 $1e
	nop                                              ; $715a: $00
	inc  e                                           ; $715b: $1c
	inc  bc                                          ; $715c: $03
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	ld   bc, $0008                                   ; $715f: $01 $08 $00
	ld   e, l                                        ; $7162: $5d
	and  c                                           ; $7163: $a1
	sbc  a                                           ; $7164: $9f
	dec  c                                           ; $7165: $0d
	nop                                              ; $7166: $00
	ld   a, [bc]                                     ; $7167: $0a
	rrca                                             ; $7168: $0f
	nop                                              ; $7169: $00
	ld   bc, $df01                                   ; $716a: $01 $01 $df
	db   $ec                                         ; $716d: $ec
	and  e                                           ; $716e: $a3
	ld   h, e                                        ; $716f: $63
	and  c                                           ; $7170: $a1
	sbc  a                                           ; $7171: $9f
	dec  c                                           ; $7172: $0d
	ld   e, b                                        ; $7173: $58
	inc  b                                           ; $7174: $04
	ld   a, e                                        ; $7175: $7b
	sbc  d                                           ; $7176: $9a
	ld   h, e                                        ; $7177: $63
	adc  h                                           ; $7178: $8c
	ld   [hl], l                                     ; $7179: $75
	ld   h, a                                        ; $717a: $67
	sbc  a                                           ; $717b: $9f
	dec  c                                           ; $717c: $0d
	nop                                              ; $717d: $00
	ld   a, [bc]                                     ; $717e: $0a
	rrca                                             ; $717f: $0f
	inc  bc                                          ; $7180: $03
	nop                                              ; $7181: $00
	ld   bc, $9502                                   ; $7182: $01 $02 $95
	ld   [bc], a                                     ; $7185: $02
	sub  e                                           ; $7186: $93
	sbc  b                                           ; $7187: $98
	ld   e, d                                        ; $7188: $5a
	and  c                                           ; $7189: $a1
	ld   a, [hl]                                     ; $718a: $7e
	sbc  c                                           ; $718b: $99
	ld   a, h                                        ; $718c: $7c
	sub  [hl]                                        ; $718d: $96
	sbc  a                                           ; $718e: $9f
	dec  c                                           ; $718f: $0d
	ld   h, [hl]                                     ; $7190: $66
	sub  c                                           ; $7191: $91
	ld   d, b                                        ; $7192: $50

jr_05f_7193:
	ld   a, e                                        ; $7193: $7b
	sbc  a                                           ; $7194: $9f
	dec  c                                           ; $7195: $0d
	nop                                              ; $7196: $00
	ld   a, [bc]                                     ; $7197: $0a
	dec  c                                           ; $7198: $0d
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	rrca                                             ; $719b: $0f
	nop                                              ; $719c: $00
	ld   bc, $1e09                                   ; $719d: $01 $09 $1e
	nop                                              ; $71a0: $00
	inc  e                                           ; $71a1: $1c
	inc  bc                                          ; $71a2: $03
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	ld   bc, $9750                                   ; $71a5: $01 $50 $97
	sbc  [hl]                                        ; $71a8: $9e
	ld   [$5d00], sp                                 ; $71a9: $08 $00 $5d
	and  c                                           ; $71ac: $a1
	sbc  a                                           ; $71ad: $9f
	dec  c                                           ; $71ae: $0d
	ld   [bc], a                                     ; $71af: $02
	sub  l                                           ; $71b0: $95
	ld   [bc], a                                     ; $71b1: $02
	sub  e                                           ; $71b2: $93
	sbc  b                                           ; $71b3: $98
	ld   h, d                                        ; $71b4: $62
	ld   e, l                                        ; $71b5: $5d
	sbc  e                                           ; $71b6: $9b
	ld   d, h                                        ; $71b7: $54
	ld   h, e                                        ; $71b8: $63
	adc  h                                           ; $71b9: $8c
	sbc  a                                           ; $71ba: $9f
	dec  c                                           ; $71bb: $0d
	nop                                              ; $71bc: $00
	ld   a, [bc]                                     ; $71bd: $0a
	rrca                                             ; $71be: $0f
	nop                                              ; $71bf: $00
	ld   bc, $5801                                   ; $71c0: $01 $01 $58
	inc  b                                           ; $71c3: $04
	ld   a, e                                        ; $71c4: $7b
	sbc  d                                           ; $71c5: $9a
	ld   h, e                                        ; $71c6: $63
	adc  h                                           ; $71c7: $8c
	ld   [hl], l                                     ; $71c8: $75
	ld   h, a                                        ; $71c9: $67
	sbc  a                                           ; $71ca: $9f
	rst  JumpTable                                         ; $71cb: $df
	db   $ec                                         ; $71cc: $ec
	and  e                                           ; $71cd: $a3
	ld   h, e                                        ; $71ce: $63
	and  c                                           ; $71cf: $a1
	sbc  a                                           ; $71d0: $9f
	dec  c                                           ; $71d1: $0d
	nop                                              ; $71d2: $00
	ld   a, [bc]                                     ; $71d3: $0a
	inc  e                                           ; $71d4: $1c
	inc  bc                                          ; $71d5: $03
	inc  bc                                          ; $71d6: $03
	inc  bc                                          ; $71d7: $03
	ld   bc, $cf04                                   ; $71d8: $01 $04 $cf
	inc  b                                           ; $71db: $04
	xor  d                                           ; $71dc: $aa
	sub  b                                           ; $71dd: $90
	ld   e, d                                        ; $71de: $5a
	and  c                                           ; $71df: $a1
	ld   a, [hl]                                     ; $71e0: $7e
	sbc  c                                           ; $71e1: $99
	ld   a, h                                        ; $71e2: $7c
	sub  [hl]                                        ; $71e3: $96
	sbc  a                                           ; $71e4: $9f
	dec  c                                           ; $71e5: $0d
	ld   [$5d00], sp                                 ; $71e6: $08 $00 $5d
	and  c                                           ; $71e9: $a1
	sbc  a                                           ; $71ea: $9f
	dec  c                                           ; $71eb: $0d
	ld   h, [hl]                                     ; $71ec: $66
	sub  c                                           ; $71ed: $91
	ld   d, b                                        ; $71ee: $50
	ld   a, e                                        ; $71ef: $7b
	sbc  a                                           ; $71f0: $9f
	dec  c                                           ; $71f1: $0d
	nop                                              ; $71f2: $00
	ld   a, [bc]                                     ; $71f3: $0a
	dec  c                                           ; $71f4: $0d
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	rrca                                             ; $71f7: $0f
	nop                                              ; $71f8: $00
	ld   bc, $1e09                                   ; $71f9: $01 $09 $1e
	nop                                              ; $71fc: $00
	inc  e                                           ; $71fd: $1c
	inc  bc                                          ; $71fe: $03
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	ld   bc, $9258                                   ; $7201: $01 $58 $92
	ld   h, a                                        ; $7204: $67
	adc  l                                           ; $7205: $8d
	ld   a, b                                        ; $7206: $78
	ld   h, e                                        ; $7207: $63
	ld   d, d                                        ; $7208: $52
	sbc  a                                           ; $7209: $9f
	dec  c                                           ; $720a: $0d
	ld   [$5d00], sp                                 ; $720b: $08 $00 $5d
	and  c                                           ; $720e: $a1
	sbc  a                                           ; $720f: $9f
	dec  c                                           ; $7210: $0d
	nop                                              ; $7211: $00
	ld   a, [bc]                                     ; $7212: $0a
	rrca                                             ; $7213: $0f
	nop                                              ; $7214: $00
	ld   bc, $5601                                   ; $7215: $01 $01 $56
	ld   [hl], c                                     ; $7218: $71
	sbc  [hl]                                        ; $7219: $9e
	ld   [bc], a                                     ; $721a: $02
	and  l                                           ; $721b: $a5
	inc  b                                           ; $721c: $04
	xor  d                                           ; $721d: $aa
	ld   a, l                                        ; $721e: $7d
	sub  b                                           ; $721f: $90
	ld   d, h                                        ; $7220: $54
	sbc  [hl]                                        ; $7221: $9e
	dec  c                                           ; $7222: $0d
	ld   e, b                                        ; $7223: $58
	inc  bc                                          ; $7224: $03
	and  a                                           ; $7225: $a7
	adc  l                                           ; $7226: $8d
	ld   [hl], l                                     ; $7227: $75
	ld   h, a                                        ; $7228: $67
	ld   e, c                                        ; $7229: $59
	ld   sp, hl                                      ; $722a: $f9
	dec  c                                           ; $722b: $0d
	nop                                              ; $722c: $00
	ld   a, [bc]                                     ; $722d: $0a
	rrca                                             ; $722e: $0f
	inc  bc                                          ; $722f: $03
	nop                                              ; $7230: $00
	ld   bc, $5656                                   ; $7231: $01 $56 $56
	sbc  [hl]                                        ; $7234: $9e
	inc  b                                           ; $7235: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7236: $cf
	inc  b                                           ; $7237: $04
	xor  d                                           ; $7238: $aa
	sbc  [hl]                                        ; $7239: $9e
	inc  bc                                          ; $723a: $03
	ld   d, $5f                                      ; $723b: $16 $5f
	ld   d, d                                        ; $723d: $52
	ld   h, c                                        ; $723e: $61
	ld   a, b                                        ; $723f: $78
	ld   a, h                                        ; $7240: $7c
	sub  [hl]                                        ; $7241: $96
	sbc  a                                           ; $7242: $9f
	dec  c                                           ; $7243: $0d
	ld   h, [hl]                                     ; $7244: $66
	sub  c                                           ; $7245: $91
	sbc  [hl]                                        ; $7246: $9e
	ld   [bc], a                                     ; $7247: $02
	sub  l                                           ; $7248: $95
	ld   [bc], a                                     ; $7249: $02
	sub  e                                           ; $724a: $93
	sbc  b                                           ; $724b: $98
	ld   e, d                                        ; $724c: $5a
	and  c                                           ; $724d: $a1
	ld   a, [hl]                                     ; $724e: $7e
	ld   [hl], c                                     ; $724f: $71
	ld   [hl], h                                     ; $7250: $74
	ld   a, e                                        ; $7251: $7b
	sbc  a                                           ; $7252: $9f
	dec  c                                           ; $7253: $0d
	nop                                              ; $7254: $00
	ld   a, [bc]                                     ; $7255: $0a
	dec  c                                           ; $7256: $0d
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	rrca                                             ; $7259: $0f
	nop                                              ; $725a: $00
	ld   bc, $1e09                                   ; $725b: $01 $09 $1e
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	ld   [bc], a                                     ; $7260: $02
	rlca                                             ; $7261: $07
	ld   l, $00                                      ; $7262: $2e $00
	inc  bc                                          ; $7264: $03
	inc  d                                           ; $7265: $14
	ld   bc, $2265                                   ; $7266: $01 $65 $22
	nop                                              ; $7269: $00
	rlca                                             ; $726a: $07
	ld   h, d                                        ; $726b: $62
	nop                                              ; $726c: $00
	inc  bc                                          ; $726d: $03
	inc  d                                           ; $726e: $14
	ld   bc, $2566                                   ; $726f: $01 $66 $25
	inc  bc                                          ; $7272: $03
	inc  d                                           ; $7273: $14
	ld   bc, $229b                                   ; $7274: $01 $9b $22
	inc  e                                           ; $7277: $1c
	nop                                              ; $7278: $00

Jump_05f_7279:
	rlca                                             ; $7279: $07
	and  l                                           ; $727a: $a5
	nop                                              ; $727b: $00
	inc  bc                                          ; $727c: $03
	inc  d                                           ; $727d: $14
	ld   bc, $259b                                   ; $727e: $01 $9b $25
	ld   [bc], a                                     ; $7281: $02
	nop                                              ; $7282: $00
	ld   bc, $2c02                                   ; $7283: $01 $02 $2c
	ld   bc, $2001                                   ; $7286: $01 $01 $20
	inc  e                                           ; $7289: $1c
	nop                                              ; $728a: $00
	ld   b, $fb                                      ; $728b: $06 $fb
	nop                                              ; $728d: $00
	rrca                                             ; $728e: $0f
	nop                                              ; $728f: $00
	ld   bc, $9201                                   ; $7290: $01 $01 $92
	ld   d, b                                        ; $7293: $50
	sbc  [hl]                                        ; $7294: $9e
	and  e                                           ; $7295: $a3
	and  l                                           ; $7296: $a5
	db   $ec                                         ; $7297: $ec
	cp   d                                           ; $7298: $ba
	sbc  a                                           ; $7299: $9f
	dec  c                                           ; $729a: $0d
	nop                                              ; $729b: $00
	ld   a, [bc]                                     ; $729c: $0a
	inc  e                                           ; $729d: $1c
	inc  b                                           ; $729e: $04
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	ld   bc, $a5a3                                   ; $72a1: $01 $a3 $a5
	db   $ec                                         ; $72a4: $ec
	cp   d                                           ; $72a5: $ba
	sbc  [hl]                                        ; $72a6: $9e
	ld   d, d                                        ; $72a7: $52
	ld   l, e                                        ; $72a8: $6b
	ld   e, d                                        ; $72a9: $5a
	ld   h, l                                        ; $72aa: $65
	ld   d, d                                        ; $72ab: $52
	ld   a, h                                        ; $72ac: $7c
	sbc  a                                           ; $72ad: $9f
	dec  c                                           ; $72ae: $0d
	adc  h                                           ; $72af: $8c
	ld   l, l                                        ; $72b0: $6d
	ld   d, b                                        ; $72b1: $50
	ld   h, l                                        ; $72b2: $65
	ld   l, l                                        ; $72b3: $6d
	ld   a, e                                        ; $72b4: $7b
	sbc  a                                           ; $72b5: $9f
	dec  c                                           ; $72b6: $0d
	nop                                              ; $72b7: $00
	ld   a, [bc]                                     ; $72b8: $0a
	dec  c                                           ; $72b9: $0d
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	rrca                                             ; $72bc: $0f
	nop                                              ; $72bd: $00
	ld   bc, $1e09                                   ; $72be: $01 $09 $1e
	nop                                              ; $72c1: $00
	inc  e                                           ; $72c2: $1c
	inc  b                                           ; $72c3: $04
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	ld   bc, $9e50                                   ; $72c6: $01 $50 $9e
	ld   l, a                                        ; $72c9: $6f
	ld   d, d                                        ; $72ca: $52
	ld   [bc], a                                     ; $72cb: $02
	inc  de                                          ; $72cc: $13
	ld   l, a                                        ; $72cd: $6f
	sub  c                                           ; $72ce: $91
	and  c                                           ; $72cf: $a1
	sbc  a                                           ; $72d0: $9f
	dec  c                                           ; $72d1: $0d
	nop                                              ; $72d2: $00
	ld   a, [bc]                                     ; $72d3: $0a
	rrca                                             ; $72d4: $0f
	nop                                              ; $72d5: $00
	ld   bc, $9201                                   ; $72d6: $01 $01 $92
	ld   d, b                                        ; $72d9: $50
	sbc  [hl]                                        ; $72da: $9e
	and  e                                           ; $72db: $a3
	and  l                                           ; $72dc: $a5
	db   $ec                                         ; $72dd: $ec
	cp   d                                           ; $72de: $ba
	sbc  a                                           ; $72df: $9f
	dec  c                                           ; $72e0: $0d
	nop                                              ; $72e1: $00
	ld   a, [bc]                                     ; $72e2: $0a
	rrca                                             ; $72e3: $0f
	inc  b                                           ; $72e4: $04
	nop                                              ; $72e5: $00
	ld   bc, $8c8d                                   ; $72e6: $01 $8d $8c
	sbc  l                                           ; $72e9: $9d
	sbc  b                                           ; $72ea: $98
	sbc  [hl]                                        ; $72eb: $9e
	ld   e, d                                        ; $72ec: $5a
	and  c                                           ; $72ed: $a1
	ld   a, [hl]                                     ; $72ee: $7e
	ld   [hl], c                                     ; $72ef: $71
	ld   [hl], h                                     ; $72f0: $74
	ld   a, e                                        ; $72f1: $7b
	sbc  a                                           ; $72f2: $9f
	dec  c                                           ; $72f3: $0d
	ld   h, [hl]                                     ; $72f4: $66
	sub  c                                           ; $72f5: $91
	ld   d, b                                        ; $72f6: $50
	ld   a, e                                        ; $72f7: $7b
	sbc  a                                           ; $72f8: $9f
	dec  c                                           ; $72f9: $0d
	nop                                              ; $72fa: $00
	ld   a, [bc]                                     ; $72fb: $0a
	dec  c                                           ; $72fc: $0d
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	rrca                                             ; $72ff: $0f
	nop                                              ; $7300: $00
	ld   bc, $1e09                                   ; $7301: $01 $09 $1e
	nop                                              ; $7304: $00
	inc  e                                           ; $7305: $1c
	inc  b                                           ; $7306: $04
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	ld   bc, $526f                                   ; $7309: $01 $6f $52
	ld   [bc], a                                     ; $730c: $02
	inc  de                                          ; $730d: $13
	ld   l, a                                        ; $730e: $6f
	sub  c                                           ; $730f: $91
	and  c                                           ; $7310: $a1
	sbc  a                                           ; $7311: $9f
	dec  c                                           ; $7312: $0d
	adc  l                                           ; $7313: $8d
	adc  h                                           ; $7314: $8c
	sbc  l                                           ; $7315: $9d
	sbc  b                                           ; $7316: $98
	ld   h, d                                        ; $7317: $62
	ld   e, l                                        ; $7318: $5d
	sbc  e                                           ; $7319: $9b
	ld   d, h                                        ; $731a: $54
	ld   h, e                                        ; $731b: $63
	adc  h                                           ; $731c: $8c
	sbc  a                                           ; $731d: $9f
	dec  c                                           ; $731e: $0d
	nop                                              ; $731f: $00
	ld   a, [bc]                                     ; $7320: $0a
	rrca                                             ; $7321: $0f
	nop                                              ; $7322: $00
	ld   bc, $9201                                   ; $7323: $01 $01 $92
	ld   d, b                                        ; $7326: $50
	sbc  [hl]                                        ; $7327: $9e
	and  e                                           ; $7328: $a3
	and  l                                           ; $7329: $a5
	db   $ec                                         ; $732a: $ec
	cp   d                                           ; $732b: $ba
	sbc  a                                           ; $732c: $9f
	dec  c                                           ; $732d: $0d
	nop                                              ; $732e: $00
	ld   a, [bc]                                     ; $732f: $0a
	inc  e                                           ; $7330: $1c
	inc  b                                           ; $7331: $04
	ld   bc, $0101                                   ; $7332: $01 $01 $01
	ld   d, b                                        ; $7335: $50
	ld   h, l                                        ; $7336: $65
	ld   l, l                                        ; $7337: $6d
	sub  b                                           ; $7338: $90
	ld   e, d                                        ; $7339: $5a
	and  c                                           ; $733a: $a1
	ld   a, [hl]                                     ; $733b: $7e
	sbc  e                                           ; $733c: $9b
	ld   d, h                                        ; $733d: $54
	ld   a, e                                        ; $733e: $7b
	sbc  a                                           ; $733f: $9f
	dec  c                                           ; $7340: $0d
	ld   l, a                                        ; $7341: $6f
	ld   d, d                                        ; $7342: $52
	ld   [bc], a                                     ; $7343: $02
	inc  de                                          ; $7344: $13
	ld   l, a                                        ; $7345: $6f
	sub  c                                           ; $7346: $91
	and  c                                           ; $7347: $a1
	sbc  a                                           ; $7348: $9f
	dec  c                                           ; $7349: $0d
	ld   h, [hl]                                     ; $734a: $66
	sub  c                                           ; $734b: $91
	ld   d, b                                        ; $734c: $50
	ld   a, e                                        ; $734d: $7b
	sbc  a                                           ; $734e: $9f
	dec  c                                           ; $734f: $0d
	nop                                              ; $7350: $00
	ld   a, [bc]                                     ; $7351: $0a
	dec  c                                           ; $7352: $0d
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	rrca                                             ; $7355: $0f
	nop                                              ; $7356: $00
	ld   bc, $1e09                                   ; $7357: $01 $09 $1e
	nop                                              ; $735a: $00
	inc  e                                           ; $735b: $1c
	inc  b                                           ; $735c: $04
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	ld   bc, $9e50                                   ; $735f: $01 $50 $9e
	ld   l, a                                        ; $7362: $6f
	ld   d, d                                        ; $7363: $52
	ld   [bc], a                                     ; $7364: $02
	inc  de                                          ; $7365: $13
	ld   l, a                                        ; $7366: $6f
	sub  c                                           ; $7367: $91
	and  c                                           ; $7368: $a1
	sbc  a                                           ; $7369: $9f
	dec  c                                           ; $736a: $0d
	ld   e, b                                        ; $736b: $58
	sub  d                                           ; $736c: $92
	ld   h, a                                        ; $736d: $67
	adc  l                                           ; $736e: $8d
	ld   a, b                                        ; $736f: $78
	ld   h, e                                        ; $7370: $63
	ld   d, d                                        ; $7371: $52
	sbc  a                                           ; $7372: $9f
	dec  c                                           ; $7373: $0d
	nop                                              ; $7374: $00
	ld   a, [bc]                                     ; $7375: $0a
	rrca                                             ; $7376: $0f
	nop                                              ; $7377: $00
	ld   bc, $a301                                   ; $7378: $01 $01 $a3
	and  l                                           ; $737b: $a5
	db   $ec                                         ; $737c: $ec
	cp   d                                           ; $737d: $ba
	sbc  [hl]                                        ; $737e: $9e
	dec  c                                           ; $737f: $0d
	ld   [bc], a                                     ; $7380: $02
	and  l                                           ; $7381: $a5
	inc  b                                           ; $7382: $04
	xor  d                                           ; $7383: $aa
	ld   a, l                                        ; $7384: $7d
	sbc  [hl]                                        ; $7385: $9e
	sub  b                                           ; $7386: $90
	ld   d, h                                        ; $7387: $54
	inc  b                                           ; $7388: $04
	ld   b, d                                        ; $7389: $42
	ld   l, a                                        ; $738a: $6f
	sub  c                                           ; $738b: $91
	ld   d, h                                        ; $738c: $54
	ld   a, h                                        ; $738d: $7c
	ld   sp, hl                                      ; $738e: $f9
	dec  c                                           ; $738f: $0d
	nop                                              ; $7390: $00
	ld   a, [bc]                                     ; $7391: $0a
	inc  e                                           ; $7392: $1c
	inc  b                                           ; $7393: $04
	inc  bc                                          ; $7394: $03
	inc  bc                                          ; $7395: $03
	ld   bc, $a154                                   ; $7396: $01 $54 $a1
	sbc  [hl]                                        ; $7399: $9e
	ld   d, b                                        ; $739a: $50
	ld   h, l                                        ; $739b: $65
	ld   l, l                                        ; $739c: $6d
	ld   a, l                                        ; $739d: $7d
	dec  c                                           ; $739e: $0d
	ld   d, b                                        ; $739f: $50
	ld   h, e                                        ; $73a0: $63
	ld   e, a                                        ; $73a1: $5f
	ld   d, d                                        ; $73a2: $52
	ld   h, c                                        ; $73a3: $61
	ld   a, b                                        ; $73a4: $78
	ld   a, h                                        ; $73a5: $7c
	sbc  a                                           ; $73a6: $9f
	dec  c                                           ; $73a7: $0d
	nop                                              ; $73a8: $00
	inc  e                                           ; $73a9: $1c
	inc  b                                           ; $73aa: $04
	ld   bc, $0101                                   ; $73ab: $01 $01 $01
	ld   h, [hl]                                     ; $73ae: $66
	sub  c                                           ; $73af: $91
	ld   d, b                                        ; $73b0: $50
	ld   a, e                                        ; $73b1: $7b
	sbc  a                                           ; $73b2: $9f
	dec  c                                           ; $73b3: $0d
	nop                                              ; $73b4: $00
	ld   a, [bc]                                     ; $73b5: $0a
	dec  c                                           ; $73b6: $0d
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	rrca                                             ; $73b9: $0f
	nop                                              ; $73ba: $00
	ld   bc, $1e09                                   ; $73bb: $01 $09 $1e
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	ld   [bc], a                                     ; $73c0: $02
	rlca                                             ; $73c1: $07
	dec  hl                                          ; $73c2: $2b
	nop                                              ; $73c3: $00
	inc  bc                                          ; $73c4: $03
	ld   d, $01                                      ; $73c5: $16 $01
	ld   h, l                                        ; $73c7: $65
	ld   [hl+], a                                    ; $73c8: $22
	nop                                              ; $73c9: $00
	rlca                                             ; $73ca: $07
	ld   h, a                                        ; $73cb: $67
	nop                                              ; $73cc: $00
	inc  bc                                          ; $73cd: $03
	ld   d, $01                                      ; $73ce: $16 $01
	ld   h, [hl]                                     ; $73d0: $66
	dec  h                                           ; $73d1: $25
	inc  bc                                          ; $73d2: $03
	ld   d, $01                                      ; $73d3: $16 $01
	sbc  e                                           ; $73d5: $9b
	ld   [hl+], a                                    ; $73d6: $22
	inc  e                                           ; $73d7: $1c
	nop                                              ; $73d8: $00
	rlca                                             ; $73d9: $07
	xor  [hl]                                        ; $73da: $ae
	nop                                              ; $73db: $00
	inc  bc                                          ; $73dc: $03
	ld   d, $01                                      ; $73dd: $16 $01
	sbc  e                                           ; $73df: $9b
	dec  h                                           ; $73e0: $25
	ld   [bc], a                                     ; $73e1: $02
	nop                                              ; $73e2: $00
	ld   bc, $2c02                                   ; $73e3: $01 $02 $2c
	ld   bc, $2001                                   ; $73e6: $01 $01 $20
	inc  e                                           ; $73e9: $1c
	nop                                              ; $73ea: $00
	rrca                                             ; $73eb: $0f
	nop                                              ; $73ec: $00
	ld   bc, $ac01                                   ; $73ed: $01 $01 $ac
	push af                                          ; $73f0: $f5
	bit  4, e                                        ; $73f1: $cb $63
	and  c                                           ; $73f3: $a1
	sbc  a                                           ; $73f4: $9f
	dec  c                                           ; $73f5: $0d
	nop                                              ; $73f6: $00
	ld   a, [bc]                                     ; $73f7: $0a
	inc  e                                           ; $73f8: $1c
	ld   b, $00                                      ; $73f9: $06 $00
	nop                                              ; $73fb: $00
	ld   bc, $999d                                   ; $73fc: $01 $9d $99
	ld   d, d                                        ; $73ff: $52
	sbc  a                                           ; $7400: $9f
	ld   l, a                                        ; $7401: $6f
	sub  l                                           ; $7402: $95
	ld   d, d                                        ; $7403: $52
	halt                                             ; $7404: $76
	dec  b                                           ; $7405: $05
	jr   z, jr_05f_7464                              ; $7406: $28 $5c

	ld   a, h                                        ; $7408: $7c
	dec  c                                           ; $7409: $0d
	inc  b                                           ; $740a: $04
	di                                               ; $740b: $f3
	ld   e, d                                        ; $740c: $5a
	ld   d, b                                        ; $740d: $50
	sbc  c                                           ; $740e: $99
	and  c                                           ; $740f: $a1
	ld   l, [hl]                                     ; $7410: $6e
	sbc  a                                           ; $7411: $9f
	dec  c                                           ; $7412: $0d
	adc  h                                           ; $7413: $8c
	ld   l, l                                        ; $7414: $6d
	inc  b                                           ; $7415: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7416: $cf
	inc  b                                           ; $7417: $04
	xor  d                                           ; $7418: $aa
	ld   a, b                                        ; $7419: $78
	sbc  a                                           ; $741a: $9f
	dec  c                                           ; $741b: $0d
	nop                                              ; $741c: $00
	ld   a, [bc]                                     ; $741d: $0a
	dec  c                                           ; $741e: $0d
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	rrca                                             ; $7421: $0f
	nop                                              ; $7422: $00
	ld   bc, $1e09                                   ; $7423: $01 $09 $1e
	nop                                              ; $7426: $00
	inc  e                                           ; $7427: $1c
	ld   b, $00                                      ; $7428: $06 $00
	nop                                              ; $742a: $00
	ld   bc, $5496                                   ; $742b: $01 $96 $54
	sbc  [hl]                                        ; $742e: $9e
	ld   [$9f00], sp                                 ; $742f: $08 $00 $9f
	dec  c                                           ; $7432: $0d
	nop                                              ; $7433: $00
	ld   a, [bc]                                     ; $7434: $0a
	rrca                                             ; $7435: $0f
	nop                                              ; $7436: $00
	ld   bc, $ac01                                   ; $7437: $01 $01 $ac
	push af                                          ; $743a: $f5
	bit  4, e                                        ; $743b: $cb $63
	and  c                                           ; $743d: $a1
	sbc  a                                           ; $743e: $9f
	dec  c                                           ; $743f: $0d
	ld   e, b                                        ; $7440: $58
	inc  b                                           ; $7441: $04
	ld   a, e                                        ; $7442: $7b
	sbc  d                                           ; $7443: $9a
	ld   h, e                                        ; $7444: $63
	adc  h                                           ; $7445: $8c
	ld   [hl], l                                     ; $7446: $75
	ld   h, a                                        ; $7447: $67
	sbc  a                                           ; $7448: $9f
	dec  c                                           ; $7449: $0d
	nop                                              ; $744a: $00
	ld   a, [bc]                                     ; $744b: $0a
	rrca                                             ; $744c: $0f
	ld   b, $00                                      ; $744d: $06 $00
	ld   bc, $9502                                   ; $744f: $01 $02 $95

Jump_05f_7452:
	ld   [bc], a                                     ; $7452: $02
	sub  e                                           ; $7453: $93
	sbc  b                                           ; $7454: $98
	sbc  [hl]                                        ; $7455: $9e
	ld   e, d                                        ; $7456: $5a
	and  c                                           ; $7457: $a1
	ld   a, [hl]                                     ; $7458: $7e
	sbc  d                                           ; $7459: $9a
	sub  [hl]                                        ; $745a: $96
	sbc  a                                           ; $745b: $9f
	dec  c                                           ; $745c: $0d
	ld   h, [hl]                                     ; $745d: $66
	sub  c                                           ; $745e: $91
	ld   d, b                                        ; $745f: $50
	ld   a, b                                        ; $7460: $78
	sbc  a                                           ; $7461: $9f
	dec  c                                           ; $7462: $0d
	nop                                              ; $7463: $00

jr_05f_7464:
	ld   a, [bc]                                     ; $7464: $0a

Jump_05f_7465:
	dec  c                                           ; $7465: $0d
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	rrca                                             ; $7468: $0f
	nop                                              ; $7469: $00
	ld   bc, $1e09                                   ; $746a: $01 $09 $1e
	nop                                              ; $746d: $00
	inc  e                                           ; $746e: $1c
	ld   b, $00                                      ; $746f: $06 $00
	nop                                              ; $7471: $00
	ld   bc, $5496                                   ; $7472: $01 $96 $54
	sbc  a                                           ; $7475: $9f
	dec  c                                           ; $7476: $0d
	ld   [bc], a                                     ; $7477: $02
	sub  l                                           ; $7478: $95
	ld   [bc], a                                     ; $7479: $02
	sub  e                                           ; $747a: $93
	sbc  b                                           ; $747b: $98
	ld   h, d                                        ; $747c: $62
	ld   e, l                                        ; $747d: $5d
	sbc  e                                           ; $747e: $9b
	ld   d, h                                        ; $747f: $54
	ld   h, e                                        ; $7480: $63
	and  c                                           ; $7481: $a1
	sbc  a                                           ; $7482: $9f
	dec  c                                           ; $7483: $0d
	nop                                              ; $7484: $00
	ld   a, [bc]                                     ; $7485: $0a
	rrca                                             ; $7486: $0f
	nop                                              ; $7487: $00
	ld   bc, $5801                                   ; $7488: $01 $01 $58
	inc  b                                           ; $748b: $04
	ld   a, e                                        ; $748c: $7b
	sbc  d                                           ; $748d: $9a
	ld   h, e                                        ; $748e: $63
	adc  h                                           ; $748f: $8c
	ld   [hl], l                                     ; $7490: $75
	ld   h, a                                        ; $7491: $67
	sbc  a                                           ; $7492: $9f
	xor  h                                           ; $7493: $ac
	push af                                          ; $7494: $f5
	bit  4, e                                        ; $7495: $cb $63
	and  c                                           ; $7497: $a1
	sbc  a                                           ; $7498: $9f
	dec  c                                           ; $7499: $0d
	nop                                              ; $749a: $00
	ld   a, [bc]                                     ; $749b: $0a
	inc  e                                           ; $749c: $1c
	ld   b, $01                                      ; $749d: $06 $01
	ld   bc, $0401                                   ; $749f: $01 $01 $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74a2: $cf
	inc  b                                           ; $74a3: $04
	xor  d                                           ; $74a4: $aa
	sub  b                                           ; $74a5: $90
	ld   e, d                                        ; $74a6: $5a
	and  c                                           ; $74a7: $a1
	ld   a, [hl]                                     ; $74a8: $7e
	sbc  e                                           ; $74a9: $9b
	ld   d, h                                        ; $74aa: $54
	ld   l, d                                        ; $74ab: $6a
	sbc  a                                           ; $74ac: $9f
	dec  c                                           ; $74ad: $0d
	ld   [$fa00], sp                                 ; $74ae: $08 $00 $fa
	dec  c                                           ; $74b1: $0d
	ld   h, [hl]                                     ; $74b2: $66
	sub  c                                           ; $74b3: $91
	ld   d, b                                        ; $74b4: $50
	ld   a, b                                        ; $74b5: $78
	sbc  a                                           ; $74b6: $9f
	dec  c                                           ; $74b7: $0d
	nop                                              ; $74b8: $00
	ld   a, [bc]                                     ; $74b9: $0a
	dec  c                                           ; $74ba: $0d
	nop                                              ; $74bb: $00
	nop                                              ; $74bc: $00
	rrca                                             ; $74bd: $0f
	nop                                              ; $74be: $00
	ld   bc, $1e09                                   ; $74bf: $01 $09 $1e
	nop                                              ; $74c2: $00
	inc  e                                           ; $74c3: $1c
	ld   b, $00                                      ; $74c4: $06 $00
	nop                                              ; $74c6: $00
	ld   bc, $9258                                   ; $74c7: $01 $58 $92
	ld   h, a                                        ; $74ca: $67
	adc  l                                           ; $74cb: $8d
	sbc  [hl]                                        ; $74cc: $9e
	ld   [$9f00], sp                                 ; $74cd: $08 $00 $9f
	dec  c                                           ; $74d0: $0d
	nop                                              ; $74d1: $00
	ld   a, [bc]                                     ; $74d2: $0a
	rrca                                             ; $74d3: $0f
	nop                                              ; $74d4: $00
	ld   bc, $5601                                   ; $74d5: $01 $01 $56
	ld   [hl], c                                     ; $74d8: $71
	sbc  [hl]                                        ; $74d9: $9e
	ld   [bc], a                                     ; $74da: $02
	and  l                                           ; $74db: $a5
	inc  b                                           ; $74dc: $04
	xor  d                                           ; $74dd: $aa
	ld   a, l                                        ; $74de: $7d
	sub  b                                           ; $74df: $90
	ld   d, h                                        ; $74e0: $54
	sbc  [hl]                                        ; $74e1: $9e
	dec  c                                           ; $74e2: $0d
	ld   e, b                                        ; $74e3: $58
	inc  bc                                          ; $74e4: $03
	and  a                                           ; $74e5: $a7
	adc  l                                           ; $74e6: $8d
	ld   [hl], l                                     ; $74e7: $75
	ld   h, a                                        ; $74e8: $67
	ld   e, c                                        ; $74e9: $59
	ld   sp, hl                                      ; $74ea: $f9
	dec  c                                           ; $74eb: $0d
	nop                                              ; $74ec: $00
	ld   a, [bc]                                     ; $74ed: $0a
	rrca                                             ; $74ee: $0f
	ld   b, $00                                      ; $74ef: $06 $00
	ld   bc, $5050                                   ; $74f1: $01 $50 $50
	sbc  [hl]                                        ; $74f4: $9e
	inc  b                                           ; $74f5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74f6: $cf
	inc  b                                           ; $74f7: $04
	xor  d                                           ; $74f8: $aa
	sbc  [hl]                                        ; $74f9: $9e
	inc  bc                                          ; $74fa: $03
	ld   d, $5f                                      ; $74fb: $16 $5f
	ld   d, d                                        ; $74fd: $52
	ld   h, c                                        ; $74fe: $61
	ld   a, b                                        ; $74ff: $78
	and  c                                           ; $7500: $a1
	ld   l, [hl]                                     ; $7501: $6e
	sbc  a                                           ; $7502: $9f
	dec  c                                           ; $7503: $0d
	ld   h, [hl]                                     ; $7504: $66
	sub  c                                           ; $7505: $91
	sbc  [hl]                                        ; $7506: $9e
	ld   [bc], a                                     ; $7507: $02
	sub  l                                           ; $7508: $95
	ld   [bc], a                                     ; $7509: $02
	sub  e                                           ; $750a: $93
	sbc  b                                           ; $750b: $98
	sbc  [hl]                                        ; $750c: $9e
	ld   e, d                                        ; $750d: $5a
	and  c                                           ; $750e: $a1
	ld   a, [hl]                                     ; $750f: $7e
	sbc  d                                           ; $7510: $9a
	sub  [hl]                                        ; $7511: $96
	ld   a, b                                        ; $7512: $78
	sbc  a                                           ; $7513: $9f
	dec  c                                           ; $7514: $0d
	nop                                              ; $7515: $00
	ld   a, [bc]                                     ; $7516: $0a
	dec  c                                           ; $7517: $0d
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	rrca                                             ; $751a: $0f
	nop                                              ; $751b: $00
	ld   bc, $1e09                                   ; $751c: $01 $09 $1e
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	ld   [bc], a                                     ; $7521: $02
	rlca                                             ; $7522: $07
	ld   l, $00                                      ; $7523: $2e $00
	inc  bc                                          ; $7525: $03
	dec  d                                           ; $7526: $15
	ld   bc, $2265                                   ; $7527: $01 $65 $22
	nop                                              ; $752a: $00
	rlca                                             ; $752b: $07
	ld   h, [hl]                                     ; $752c: $66
	nop                                              ; $752d: $00
	inc  bc                                          ; $752e: $03
	dec  d                                           ; $752f: $15
	ld   bc, $2566                                   ; $7530: $01 $66 $25
	inc  bc                                          ; $7533: $03
	dec  d                                           ; $7534: $15
	ld   bc, $229b                                   ; $7535: $01 $9b $22
	inc  e                                           ; $7538: $1c
	nop                                              ; $7539: $00
	rlca                                             ; $753a: $07
	xor  l                                           ; $753b: $ad
	nop                                              ; $753c: $00
	inc  bc                                          ; $753d: $03
	dec  d                                           ; $753e: $15
	ld   bc, $259b                                   ; $753f: $01 $9b $25
	ld   [bc], a                                     ; $7542: $02
	nop                                              ; $7543: $00
	ld   bc, $2c02                                   ; $7544: $01 $02 $2c
	ld   bc, $2001                                   ; $7547: $01 $01 $20
	inc  e                                           ; $754a: $1c
	nop                                              ; $754b: $00
	ld   b, $03                                      ; $754c: $06 $03
	ld   bc, $000f                                   ; $754e: $01 $0f $00
	ld   bc, $0201                                   ; $7551: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7554: $cf
	dec  b                                           ; $7555: $05
	ld   a, [de]                                     ; $7556: $1a
	ld   h, e                                        ; $7557: $63
	and  c                                           ; $7558: $a1
	sbc  a                                           ; $7559: $9f
	dec  c                                           ; $755a: $0d
	nop                                              ; $755b: $00
	ld   a, [bc]                                     ; $755c: $0a
	inc  e                                           ; $755d: $1c
	dec  b                                           ; $755e: $05
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	ld   bc, $a502                                   ; $7561: $01 $02 $a5
	ld   l, a                                        ; $7564: $6f
	sub  l                                           ; $7565: $95
	ld   [hl], c                                     ; $7566: $71
	halt                                             ; $7567: $76
	sbc  [hl]                                        ; $7568: $9e
	inc  b                                           ; $7569: $04
	ld   c, $04                                      ; $756a: $0e $04
	adc  h                                           ; $756c: $8c
	ld   a, b                                        ; $756d: $78
	and  c                                           ; $756e: $a1
	sub  d                                           ; $756f: $92
	sbc  a                                           ; $7570: $9f
	dec  c                                           ; $7571: $0d
	ld   h, a                                        ; $7572: $67
	adc  h                                           ; $7573: $8c
	and  c                                           ; $7574: $a1
	ld   a, b                                        ; $7575: $78
	db   $fc                                         ; $7576: $fc
	sbc  a                                           ; $7577: $9f
	adc  c                                           ; $7578: $89
	ld   a, b                                        ; $7579: $78
	sbc  a                                           ; $757a: $9f
	dec  c                                           ; $757b: $0d
	nop                                              ; $757c: $00
	ld   a, [bc]                                     ; $757d: $0a
	dec  c                                           ; $757e: $0d
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	rrca                                             ; $7581: $0f
	nop                                              ; $7582: $00
	ld   bc, $1e09                                   ; $7583: $01 $09 $1e
	nop                                              ; $7586: $00
	inc  e                                           ; $7587: $1c
	dec  b                                           ; $7588: $05
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	ld   bc, $7196                                   ; $758b: $01 $96 $71
	sbc  [hl]                                        ; $758e: $9e
	ld   [$7d00], sp                                 ; $758f: $08 $00 $7d
	and  c                                           ; $7592: $a1
	sbc  a                                           ; $7593: $9f
	dec  c                                           ; $7594: $0d
	nop                                              ; $7595: $00
	ld   a, [bc]                                     ; $7596: $0a
	rrca                                             ; $7597: $0f
	nop                                              ; $7598: $00
	ld   bc, $0201                                   ; $7599: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $759c: $cf
	dec  b                                           ; $759d: $05
	ld   a, [de]                                     ; $759e: $1a
	ld   h, e                                        ; $759f: $63
	and  c                                           ; $75a0: $a1
	sbc  a                                           ; $75a1: $9f
	dec  c                                           ; $75a2: $0d
	ld   e, b                                        ; $75a3: $58
	inc  b                                           ; $75a4: $04
	ld   a, e                                        ; $75a5: $7b
	sbc  d                                           ; $75a6: $9a
	ld   h, e                                        ; $75a7: $63
	adc  h                                           ; $75a8: $8c
	ld   [hl], l                                     ; $75a9: $75
	ld   h, a                                        ; $75aa: $67
	sbc  a                                           ; $75ab: $9f
	dec  c                                           ; $75ac: $0d
	nop                                              ; $75ad: $00
	ld   a, [bc]                                     ; $75ae: $0a
	rrca                                             ; $75af: $0f
	dec  b                                           ; $75b0: $05
	nop                                              ; $75b1: $00
	ld   bc, $9502                                   ; $75b2: $01 $02 $95
	ld   [bc], a                                     ; $75b5: $02
	sub  e                                           ; $75b6: $93
	sbc  b                                           ; $75b7: $98
	ld   e, d                                        ; $75b8: $5a
	and  c                                           ; $75b9: $a1
	ld   a, [hl]                                     ; $75ba: $7e
	sbc  b                                           ; $75bb: $98
	sub  d                                           ; $75bc: $92
	sbc  a                                           ; $75bd: $9f
	dec  c                                           ; $75be: $0d
	adc  c                                           ; $75bf: $89
	ld   a, b                                        ; $75c0: $78
	sbc  a                                           ; $75c1: $9f
	dec  c                                           ; $75c2: $0d
	nop                                              ; $75c3: $00
	ld   a, [bc]                                     ; $75c4: $0a
	dec  c                                           ; $75c5: $0d
	nop                                              ; $75c6: $00
	nop                                              ; $75c7: $00
	rrca                                             ; $75c8: $0f
	nop                                              ; $75c9: $00
	ld   bc, $1e09                                   ; $75ca: $01 $09 $1e
	nop                                              ; $75cd: $00
	inc  e                                           ; $75ce: $1c
	dec  b                                           ; $75cf: $05
	nop                                              ; $75d0: $00
	nop                                              ; $75d1: $00
	ld   bc, $7196                                   ; $75d2: $01 $96 $71
	sbc  [hl]                                        ; $75d5: $9e
	ld   [bc], a                                     ; $75d6: $02
	sub  l                                           ; $75d7: $95
	ld   [bc], a                                     ; $75d8: $02
	sub  e                                           ; $75d9: $93
	sbc  b                                           ; $75da: $98
	ld   h, d                                        ; $75db: $62
	ld   e, l                                        ; $75dc: $5d
	sbc  e                                           ; $75dd: $9b
	ld   d, h                                        ; $75de: $54
	ld   h, e                                        ; $75df: $63
	and  c                                           ; $75e0: $a1
	sbc  a                                           ; $75e1: $9f
	dec  c                                           ; $75e2: $0d
	nop                                              ; $75e3: $00
	ld   a, [bc]                                     ; $75e4: $0a
	rrca                                             ; $75e5: $0f
	nop                                              ; $75e6: $00
	ld   bc, $5801                                   ; $75e7: $01 $01 $58
	inc  b                                           ; $75ea: $04
	ld   a, e                                        ; $75eb: $7b
	sbc  d                                           ; $75ec: $9a
	ld   h, e                                        ; $75ed: $63
	adc  h                                           ; $75ee: $8c
	ld   [hl], l                                     ; $75ef: $75
	ld   h, a                                        ; $75f0: $67
	sbc  a                                           ; $75f1: $9f
	ld   [bc], a                                     ; $75f2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75f3: $cf
	dec  b                                           ; $75f4: $05
	ld   a, [de]                                     ; $75f5: $1a
	ld   h, e                                        ; $75f6: $63
	and  c                                           ; $75f7: $a1
	sbc  a                                           ; $75f8: $9f
	dec  c                                           ; $75f9: $0d
	nop                                              ; $75fa: $00
	ld   a, [bc]                                     ; $75fb: $0a
	inc  e                                           ; $75fc: $1c
	dec  b                                           ; $75fd: $05
	ld   bc, $0101                                   ; $75fe: $01 $01 $01
	inc  b                                           ; $7601: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7602: $cf
	inc  b                                           ; $7603: $04
	xor  d                                           ; $7604: $aa
	sub  b                                           ; $7605: $90
	ld   e, d                                        ; $7606: $5a
	and  c                                           ; $7607: $a1
	ld   a, [hl]                                     ; $7608: $7e
	ld   [hl], c                                     ; $7609: $71
	ld   [hl], h                                     ; $760a: $74
	ld   d, d                                        ; $760b: $52
	ld   h, c                                        ; $760c: $61
	ld   a, b                                        ; $760d: $78
	sbc  a                                           ; $760e: $9f
	dec  c                                           ; $760f: $0d
	ld   [$7d00], sp                                 ; $7610: $08 $00 $7d
	and  c                                           ; $7613: $a1
	sbc  a                                           ; $7614: $9f
	adc  c                                           ; $7615: $89
	ld   a, b                                        ; $7616: $78
	sbc  a                                           ; $7617: $9f
	dec  c                                           ; $7618: $0d
	nop                                              ; $7619: $00
	ld   a, [bc]                                     ; $761a: $0a
	dec  c                                           ; $761b: $0d
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	rrca                                             ; $761e: $0f
	nop                                              ; $761f: $00
	ld   bc, $1e09                                   ; $7620: $01 $09 $1e
	nop                                              ; $7623: $00
	inc  e                                           ; $7624: $1c
	dec  b                                           ; $7625: $05
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	ld   bc, $0008                                   ; $7628: $01 $08 $00
	ld   a, l                                        ; $762b: $7d
	and  c                                           ; $762c: $a1
	sbc  a                                           ; $762d: $9f
	ld   e, b                                        ; $762e: $58
	sub  d                                           ; $762f: $92
	ld   h, a                                        ; $7630: $67
	adc  l                                           ; $7631: $8d
	sbc  a                                           ; $7632: $9f
	dec  c                                           ; $7633: $0d
	nop                                              ; $7634: $00
	ld   a, [bc]                                     ; $7635: $0a
	rrca                                             ; $7636: $0f
	nop                                              ; $7637: $00
	ld   bc, $5601                                   ; $7638: $01 $01 $56
	ld   [hl], c                                     ; $763b: $71
	sbc  [hl]                                        ; $763c: $9e
	ld   [bc], a                                     ; $763d: $02
	and  l                                           ; $763e: $a5
	inc  b                                           ; $763f: $04
	xor  d                                           ; $7640: $aa
	ld   a, l                                        ; $7641: $7d
	sub  b                                           ; $7642: $90
	ld   d, h                                        ; $7643: $54
	sbc  [hl]                                        ; $7644: $9e
	dec  c                                           ; $7645: $0d
	ld   e, b                                        ; $7646: $58
	inc  bc                                          ; $7647: $03
	and  a                                           ; $7648: $a7
	adc  l                                           ; $7649: $8d
	ld   [hl], l                                     ; $764a: $75
	ld   h, a                                        ; $764b: $67
	ld   e, c                                        ; $764c: $59
	ld   sp, hl                                      ; $764d: $f9
	dec  c                                           ; $764e: $0d
	nop                                              ; $764f: $00
	ld   a, [bc]                                     ; $7650: $0a
	rrca                                             ; $7651: $0f
	dec  b                                           ; $7652: $05
	nop                                              ; $7653: $00
	ld   bc, $cf04                                   ; $7654: $01 $04 $cf
	inc  b                                           ; $7657: $04
	xor  d                                           ; $7658: $aa
	sbc  [hl]                                        ; $7659: $9e
	inc  bc                                          ; $765a: $03
	ld   d, $5f                                      ; $765b: $16 $5f
	ld   d, d                                        ; $765d: $52
	ld   h, c                                        ; $765e: $61
	ld   a, b                                        ; $765f: $78
	and  c                                           ; $7660: $a1
	sub  d                                           ; $7661: $92
	sbc  a                                           ; $7662: $9f
	dec  c                                           ; $7663: $0d
	ld   h, [hl]                                     ; $7664: $66
	sub  c                                           ; $7665: $91
	sbc  [hl]                                        ; $7666: $9e
	ld   [bc], a                                     ; $7667: $02
	sub  l                                           ; $7668: $95
	ld   [bc], a                                     ; $7669: $02
	sub  e                                           ; $766a: $93
	sbc  b                                           ; $766b: $98
	ld   e, d                                        ; $766c: $5a
	and  c                                           ; $766d: $a1
	ld   a, [hl]                                     ; $766e: $7e
	ld   [hl], c                                     ; $766f: $71
	ld   [hl], h                                     ; $7670: $74
	sub  d                                           ; $7671: $92
	sbc  a                                           ; $7672: $9f
	dec  c                                           ; $7673: $0d
	adc  c                                           ; $7674: $89
	ld   a, b                                        ; $7675: $78
	sbc  a                                           ; $7676: $9f
	dec  c                                           ; $7677: $0d
	nop                                              ; $7678: $00
	ld   a, [bc]                                     ; $7679: $0a
	dec  c                                           ; $767a: $0d
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	rrca                                             ; $767d: $0f
	nop                                              ; $767e: $00
	ld   bc, $1e09                                   ; $767f: $01 $09 $1e
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	ld   [bc], a                                     ; $7684: $02
	rlca                                             ; $7685: $07
	ld   l, $00                                      ; $7686: $2e $00
	inc  bc                                          ; $7688: $03
	ld   [de], a                                     ; $7689: $12
	ld   bc, $2265                                   ; $768a: $01 $65 $22
	nop                                              ; $768d: $00
	rlca                                             ; $768e: $07
	ld   l, b                                        ; $768f: $68
	nop                                              ; $7690: $00
	inc  bc                                          ; $7691: $03
	ld   [de], a                                     ; $7692: $12
	ld   bc, $2565                                   ; $7693: $01 $65 $25
	inc  bc                                          ; $7696: $03
	ld   [de], a                                     ; $7697: $12
	ld   bc, $22af                                   ; $7698: $01 $af $22
	inc  e                                           ; $769b: $1c
	nop                                              ; $769c: $00
	rlca                                             ; $769d: $07
	or   h                                           ; $769e: $b4
	nop                                              ; $769f: $00
	inc  bc                                          ; $76a0: $03
	ld   [de], a                                     ; $76a1: $12
	ld   bc, $25af                                   ; $76a2: $01 $af $25
	ld   [bc], a                                     ; $76a5: $02
	nop                                              ; $76a6: $00
	ld   bc, $2c02                                   ; $76a7: $01 $02 $2c
	ld   bc, $2001                                   ; $76aa: $01 $01 $20
	inc  e                                           ; $76ad: $1c
	nop                                              ; $76ae: $00
	ld   b, $26                                      ; $76af: $06 $26
	ld   bc, $000f                                   ; $76b1: $01 $0f $00
	ld   bc, $6701                                   ; $76b4: $01 $01 $67
	adc  l                                           ; $76b7: $8d
	sbc  d                                           ; $76b8: $9a
	ld   h, e                                        ; $76b9: $63
	and  c                                           ; $76ba: $a1
	sbc  a                                           ; $76bb: $9f
	dec  c                                           ; $76bc: $0d
	nop                                              ; $76bd: $00
	ld   a, [bc]                                     ; $76be: $0a
	inc  e                                           ; $76bf: $1c
	ld   [bc], a                                     ; $76c0: $02
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	ld   bc, $8c52                                   ; $76c3: $01 $52 $8c
	sbc  [hl]                                        ; $76c6: $9e
	inc  bc                                          ; $76c7: $03
	ld   l, e                                        ; $76c8: $6b
	ld   e, d                                        ; $76c9: $5a
	inc  b                                           ; $76ca: $04
	sbc  c                                           ; $76cb: $99
	ld   l, c                                        ; $76cc: $69
	adc  h                                           ; $76cd: $8c
	ld   l, c                                        ; $76ce: $69
	and  c                                           ; $76cf: $a1
	ld   a, h                                        ; $76d0: $7c
	sbc  a                                           ; $76d1: $9f
	dec  c                                           ; $76d2: $0d
	inc  b                                           ; $76d3: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76d4: $cf
	inc  b                                           ; $76d5: $04
	xor  d                                           ; $76d6: $aa
	ld   a, c                                        ; $76d7: $79
	ld   h, l                                        ; $76d8: $65
	ld   [hl], h                                     ; $76d9: $74
	ld   e, l                                        ; $76da: $5d
	ld   l, [hl]                                     ; $76db: $6e
	ld   h, e                                        ; $76dc: $63
	ld   d, d                                        ; $76dd: $52
	ld   a, b                                        ; $76de: $78
	sbc  a                                           ; $76df: $9f
	dec  c                                           ; $76e0: $0d
	nop                                              ; $76e1: $00
	ld   a, [bc]                                     ; $76e2: $0a
	dec  c                                           ; $76e3: $0d
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	rrca                                             ; $76e6: $0f
	nop                                              ; $76e7: $00
	ld   bc, $1e09                                   ; $76e8: $01 $09 $1e
	nop                                              ; $76eb: $00
	inc  e                                           ; $76ec: $1c
	ld   [bc], a                                     ; $76ed: $02
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	ld   bc, $9750                                   ; $76f0: $01 $50 $97
	sbc  [hl]                                        ; $76f3: $9e
	ld   [$6300], sp                                 ; $76f4: $08 $00 $63
	and  c                                           ; $76f7: $a1
	dec  c                                           ; $76f8: $0d
	nop                                              ; $76f9: $00
	ld   a, [bc]                                     ; $76fa: $0a
	rrca                                             ; $76fb: $0f
	nop                                              ; $76fc: $00
	ld   bc, $6701                                   ; $76fd: $01 $01 $67
	adc  l                                           ; $7700: $8d
	sbc  d                                           ; $7701: $9a
	ld   h, e                                        ; $7702: $63
	and  c                                           ; $7703: $a1
	sbc  a                                           ; $7704: $9f
	dec  c                                           ; $7705: $0d
	ld   e, b                                        ; $7706: $58
	inc  b                                           ; $7707: $04
	ld   a, e                                        ; $7708: $7b
	sbc  d                                           ; $7709: $9a
	ld   h, e                                        ; $770a: $63
	adc  h                                           ; $770b: $8c
	ld   [hl], l                                     ; $770c: $75
	ld   h, a                                        ; $770d: $67
	sbc  a                                           ; $770e: $9f
	dec  c                                           ; $770f: $0d
	nop                                              ; $7710: $00
	ld   a, [bc]                                     ; $7711: $0a
	rrca                                             ; $7712: $0f
	ld   [bc], a                                     ; $7713: $02
	nop                                              ; $7714: $00
	ld   bc, $9502                                   ; $7715: $01 $02 $95
	ld   [bc], a                                     ; $7718: $02
	sub  e                                           ; $7719: $93
	sbc  b                                           ; $771a: $98
	ld   e, d                                        ; $771b: $5a
	and  c                                           ; $771c: $a1
	ld   a, [hl]                                     ; $771d: $7e
	sbc  b                                           ; $771e: $98
	ld   a, b                                        ; $771f: $78
	ld   h, e                                        ; $7720: $63
	ld   d, d                                        ; $7721: $52
	sbc  a                                           ; $7722: $9f
	dec  c                                           ; $7723: $0d
	ld   [hl], l                                     ; $7724: $75
	ld   a, l                                        ; $7725: $7d
	inc  bc                                          ; $7726: $03
	add  e                                           ; $7727: $83
	dec  b                                           ; $7728: $05
	dec  c                                           ; $7729: $0d
	rst  $38                                         ; $772a: $ff
	rst  $38                                         ; $772b: $ff
	dec  c                                           ; $772c: $0d
	nop                                              ; $772d: $00
	ld   a, [bc]                                     ; $772e: $0a
	dec  c                                           ; $772f: $0d
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	rrca                                             ; $7732: $0f
	nop                                              ; $7733: $00
	ld   bc, $1e09                                   ; $7734: $01 $09 $1e
	nop                                              ; $7737: $00
	inc  e                                           ; $7738: $1c
	ld   [bc], a                                     ; $7739: $02
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	ld   bc, $9750                                   ; $773c: $01 $50 $97
	sbc  [hl]                                        ; $773f: $9e
	ld   [$6300], sp                                 ; $7740: $08 $00 $63
	and  c                                           ; $7743: $a1
	sbc  a                                           ; $7744: $9f
	dec  c                                           ; $7745: $0d
	ld   [bc], a                                     ; $7746: $02
	sub  l                                           ; $7747: $95
	ld   [bc], a                                     ; $7748: $02
	sub  e                                           ; $7749: $93
	sbc  b                                           ; $774a: $98
	ld   h, d                                        ; $774b: $62
	ld   e, l                                        ; $774c: $5d
	sbc  e                                           ; $774d: $9b
	ld   d, h                                        ; $774e: $54
	ld   h, e                                        ; $774f: $63
	adc  h                                           ; $7750: $8c
	sbc  a                                           ; $7751: $9f
	dec  c                                           ; $7752: $0d
	nop                                              ; $7753: $00
	ld   a, [bc]                                     ; $7754: $0a
	rrca                                             ; $7755: $0f
	nop                                              ; $7756: $00
	ld   bc, $5801                                   ; $7757: $01 $01 $58
	inc  b                                           ; $775a: $04
	ld   a, e                                        ; $775b: $7b
	sbc  d                                           ; $775c: $9a
	ld   h, e                                        ; $775d: $63
	adc  h                                           ; $775e: $8c
	ld   [hl], l                                     ; $775f: $75
	ld   h, a                                        ; $7760: $67
	sbc  a                                           ; $7761: $9f
	ld   h, a                                        ; $7762: $67
	adc  l                                           ; $7763: $8d
	sbc  d                                           ; $7764: $9a
	ld   h, e                                        ; $7765: $63
	and  c                                           ; $7766: $a1
	sbc  a                                           ; $7767: $9f
	dec  c                                           ; $7768: $0d
	nop                                              ; $7769: $00
	ld   a, [bc]                                     ; $776a: $0a
	inc  e                                           ; $776b: $1c
	ld   [bc], a                                     ; $776c: $02
	ld   bc, $0101                                   ; $776d: $01 $01 $01
	inc  b                                           ; $7770: $04
	dec  c                                           ; $7771: $0d
	ld   [bc], a                                     ; $7772: $02
	sub  [hl]                                        ; $7773: $96
	inc  b                                           ; $7774: $04
	ld   b, l                                        ; $7775: $45
	inc  b                                           ; $7776: $04
	ld   a, [bc]                                     ; $7777: $0a
	ld   h, e                                        ; $7778: $63
	ld   d, d                                        ; $7779: $52
	ld   h, d                                        ; $777a: $62
	ld   a, h                                        ; $777b: $7c
	inc  bc                                          ; $777c: $03
	ld   a, c                                        ; $777d: $79
	ld   [hl], l                                     ; $777e: $75
	ld   h, a                                        ; $777f: $67
	sbc  l                                           ; $7780: $9d
	ld   a, e                                        ; $7781: $7b
	sbc  a                                           ; $7782: $9f
	dec  c                                           ; $7783: $0d
	ld   [bc], a                                     ; $7784: $02
	and  c                                           ; $7785: $a1
	and  b                                           ; $7786: $a0
	ld   [bc], a                                     ; $7787: $02
	inc  l                                           ; $7788: $2c
	ld   e, e                                        ; $7789: $5b
	ld   h, l                                        ; $778a: $65
	adc  a                                           ; $778b: $8f
	ld   [hl], h                                     ; $778c: $74
	sbc  [hl]                                        ; $778d: $9e
	ld   e, d                                        ; $778e: $5a
	and  c                                           ; $778f: $a1
	ld   a, [hl]                                     ; $7790: $7e
	sbc  b                                           ; $7791: $98
	dec  c                                           ; $7792: $0d
	ld   a, b                                        ; $7793: $78
	ld   h, e                                        ; $7794: $63
	ld   d, d                                        ; $7795: $52
	sbc  a                                           ; $7796: $9f
	ld   [hl], l                                     ; $7797: $75
	ld   a, l                                        ; $7798: $7d
	inc  bc                                          ; $7799: $03
	add  e                                           ; $779a: $83
	dec  b                                           ; $779b: $05
	dec  c                                           ; $779c: $0d
	sbc  a                                           ; $779d: $9f
	dec  c                                           ; $779e: $0d
	nop                                              ; $779f: $00
	ld   a, [bc]                                     ; $77a0: $0a
	dec  c                                           ; $77a1: $0d
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	rrca                                             ; $77a4: $0f
	nop                                              ; $77a5: $00
	ld   bc, $1e09                                   ; $77a6: $01 $09 $1e
	nop                                              ; $77a9: $00
	inc  e                                           ; $77aa: $1c
	ld   [bc], a                                     ; $77ab: $02
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	ld   bc, $9750                                   ; $77ae: $01 $50 $97
	sbc  [hl]                                        ; $77b1: $9e
	ld   [$6300], sp                                 ; $77b2: $08 $00 $63
	and  c                                           ; $77b5: $a1
	sbc  a                                           ; $77b6: $9f
	dec  c                                           ; $77b7: $0d
	ld   e, b                                        ; $77b8: $58
	sub  d                                           ; $77b9: $92
	ld   h, a                                        ; $77ba: $67
	adc  l                                           ; $77bb: $8d
	ld   a, b                                        ; $77bc: $78
	ld   h, e                                        ; $77bd: $63
	ld   d, d                                        ; $77be: $52
	sbc  a                                           ; $77bf: $9f
	dec  c                                           ; $77c0: $0d
	nop                                              ; $77c1: $00
	ld   a, [bc]                                     ; $77c2: $0a
	rrca                                             ; $77c3: $0f
	nop                                              ; $77c4: $00
	ld   bc, $5601                                   ; $77c5: $01 $01 $56
	ld   [hl], c                                     ; $77c8: $71
	sbc  [hl]                                        ; $77c9: $9e
	ld   [bc], a                                     ; $77ca: $02
	and  l                                           ; $77cb: $a5
	inc  b                                           ; $77cc: $04
	xor  d                                           ; $77cd: $aa
	ld   a, l                                        ; $77ce: $7d
	sub  b                                           ; $77cf: $90
	ld   d, h                                        ; $77d0: $54
	sbc  [hl]                                        ; $77d1: $9e
	dec  c                                           ; $77d2: $0d
	ld   e, b                                        ; $77d3: $58
	inc  bc                                          ; $77d4: $03
	and  a                                           ; $77d5: $a7
	adc  l                                           ; $77d6: $8d
	ld   [hl], l                                     ; $77d7: $75
	ld   h, a                                        ; $77d8: $67
	ld   e, c                                        ; $77d9: $59
	ld   sp, hl                                      ; $77da: $f9
	dec  c                                           ; $77db: $0d
	nop                                              ; $77dc: $00
	ld   a, [bc]                                     ; $77dd: $0a
	rrca                                             ; $77de: $0f
	ld   [bc], a                                     ; $77df: $02
	nop                                              ; $77e0: $00
	ld   bc, $cf04                                   ; $77e1: $01 $04 $cf
	inc  b                                           ; $77e4: $04
	xor  d                                           ; $77e5: $aa
	ld   a, l                                        ; $77e6: $7d
	inc  bc                                          ; $77e7: $03
	ld   d, $5f                                      ; $77e8: $16 $5f
	ld   d, d                                        ; $77ea: $52
	ld   h, c                                        ; $77eb: $61
	ld   a, b                                        ; $77ec: $78
	and  c                                           ; $77ed: $a1
	ld   [hl], l                                     ; $77ee: $75
	ld   h, a                                        ; $77ef: $67
	ld   a, h                                        ; $77f0: $7c
	sub  [hl]                                        ; $77f1: $96
	sbc  a                                           ; $77f2: $9f
	dec  c                                           ; $77f3: $0d
	ld   l, e                                        ; $77f4: $6b
	sbc  d                                           ; $77f5: $9a
	ld   [hl], l                                     ; $77f6: $75
	ld   a, l                                        ; $77f7: $7d
	sbc  [hl]                                        ; $77f8: $9e
	ld   [bc], a                                     ; $77f9: $02
	sub  l                                           ; $77fa: $95
	ld   [bc], a                                     ; $77fb: $02
	sub  e                                           ; $77fc: $93
	sbc  b                                           ; $77fd: $98
	dec  c                                           ; $77fe: $0d
	ld   e, d                                        ; $77ff: $5a
	and  c                                           ; $7800: $a1
	ld   a, [hl]                                     ; $7801: $7e
	sbc  b                                           ; $7802: $98
	ld   a, b                                        ; $7803: $78
	ld   h, e                                        ; $7804: $63
	ld   d, d                                        ; $7805: $52
	ld   a, b                                        ; $7806: $78
	sbc  a                                           ; $7807: $9f
	dec  c                                           ; $7808: $0d
	nop                                              ; $7809: $00
	ld   a, [bc]                                     ; $780a: $0a
	dec  c                                           ; $780b: $0d
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	rrca                                             ; $780e: $0f
	nop                                              ; $780f: $00
	ld   bc, $1e09                                   ; $7810: $01 $09 $1e
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	ld   [bc], a                                     ; $7815: $02
	rlca                                             ; $7816: $07
	ld   l, $00                                      ; $7817: $2e $00
	inc  bc                                          ; $7819: $03
	ld   de, $6501                                   ; $781a: $11 $01 $65
	ld   [hl+], a                                    ; $781d: $22
	nop                                              ; $781e: $00
	rlca                                             ; $781f: $07
	ld   e, a                                        ; $7820: $5f
	nop                                              ; $7821: $00
	inc  bc                                          ; $7822: $03
	ld   de, $6501                                   ; $7823: $11 $01 $65
	dec  h                                           ; $7826: $25
	inc  bc                                          ; $7827: $03
	ld   de, $af01                                   ; $7828: $11 $01 $af
	ld   [hl+], a                                    ; $782b: $22
	inc  e                                           ; $782c: $1c
	nop                                              ; $782d: $00
	rlca                                             ; $782e: $07
	xor  c                                           ; $782f: $a9
	nop                                              ; $7830: $00
	inc  bc                                          ; $7831: $03
	ld   de, $af01                                   ; $7832: $11 $01 $af
	dec  h                                           ; $7835: $25
	ld   [bc], a                                     ; $7836: $02
	nop                                              ; $7837: $00
	ld   bc, $2c02                                   ; $7838: $01 $02 $2c
	ld   bc, $2001                                   ; $783b: $01 $01 $20
	inc  e                                           ; $783e: $1c
	nop                                              ; $783f: $00
	ld   b, $1c                                      ; $7840: $06 $1c
	ld   bc, $000f                                   ; $7842: $01 $0f $00
	ld   bc, $6301                                   ; $7845: $01 $01 $63
	ld   e, l                                        ; $7848: $5d
	sub  a                                           ; $7849: $97
	ld   h, e                                        ; $784a: $63
	and  c                                           ; $784b: $a1
	sbc  a                                           ; $784c: $9f
	dec  c                                           ; $784d: $0d
	nop                                              ; $784e: $00
	ld   a, [bc]                                     ; $784f: $0a
	inc  e                                           ; $7850: $1c
	ld   bc, $0000                                   ; $7851: $01 $00 $00
	ld   bc, $8f62                                   ; $7854: $01 $62 $8f
	and  c                                           ; $7857: $a1
	ld   a, b                                        ; $7858: $78
	ld   h, e                                        ; $7859: $63
	ld   d, d                                        ; $785a: $52
	sbc  a                                           ; $785b: $9f
	dec  c                                           ; $785c: $0d

Call_05f_785d:
	ld   d, d                                        ; $785d: $52
	adc  h                                           ; $785e: $8c
	dec  b                                           ; $785f: $05
	jr   z, jr_05f_78b4                              ; $7860: $28 $52

	ld   [hl], l                                     ; $7862: $75
	sbc  c                                           ; $7863: $99
	and  c                                           ; $7864: $a1
	ld   [hl], l                                     ; $7865: $75
	ld   h, a                                        ; $7866: $67
	sbc  a                                           ; $7867: $9f
	dec  c                                           ; $7868: $0d
	nop                                              ; $7869: $00
	ld   a, [bc]                                     ; $786a: $0a
	dec  c                                           ; $786b: $0d
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	rrca                                             ; $786e: $0f
	nop                                              ; $786f: $00
	ld   bc, $1e09                                   ; $7870: $01 $09 $1e
	nop                                              ; $7873: $00
	inc  e                                           ; $7874: $1c
	ld   bc, $0000                                   ; $7875: $01 $00 $00
	ld   bc, $9750                                   ; $7878: $01 $50 $97
	sbc  [hl]                                        ; $787b: $9e
	ld   [$6300], sp                                 ; $787c: $08 $00 $63
	and  c                                           ; $787f: $a1
	dec  c                                           ; $7880: $0d
	nop                                              ; $7881: $00
	ld   a, [bc]                                     ; $7882: $0a
	rrca                                             ; $7883: $0f
	nop                                              ; $7884: $00
	ld   bc, $6301                                   ; $7885: $01 $01 $63
	ld   e, l                                        ; $7888: $5d
	sub  a                                           ; $7889: $97
	ld   h, e                                        ; $788a: $63
	and  c                                           ; $788b: $a1
	sbc  a                                           ; $788c: $9f
	dec  c                                           ; $788d: $0d
	ld   e, b                                        ; $788e: $58
	inc  b                                           ; $788f: $04
	ld   a, e                                        ; $7890: $7b
	sbc  d                                           ; $7891: $9a
	ld   h, e                                        ; $7892: $63
	adc  h                                           ; $7893: $8c
	ld   [hl], l                                     ; $7894: $75
	ld   h, a                                        ; $7895: $67
	sbc  a                                           ; $7896: $9f
	dec  c                                           ; $7897: $0d
	nop                                              ; $7898: $00
	ld   a, [bc]                                     ; $7899: $0a
	rrca                                             ; $789a: $0f
	ld   bc, $0100                                   ; $789b: $01 $00 $01
	ld   [bc], a                                     ; $789e: $02
	sub  l                                           ; $789f: $95
	ld   [bc], a                                     ; $78a0: $02
	sub  e                                           ; $78a1: $93
	sbc  b                                           ; $78a2: $98
	ld   h, d                                        ; $78a3: $62
	ld   e, l                                        ; $78a4: $5d
	sbc  e                                           ; $78a5: $9b
	ld   d, h                                        ; $78a6: $54
	ld   h, e                                        ; $78a7: $63
	adc  h                                           ; $78a8: $8c
	ld   [hl], l                                     ; $78a9: $75
	ld   h, a                                        ; $78aa: $67
	sbc  a                                           ; $78ab: $9f
	dec  c                                           ; $78ac: $0d
	ld   l, e                                        ; $78ad: $6b
	sbc  d                                           ; $78ae: $9a
	ld   [hl], l                                     ; $78af: $75
	ld   a, l                                        ; $78b0: $7d
	sbc  a                                           ; $78b1: $9f
	dec  c                                           ; $78b2: $0d
	nop                                              ; $78b3: $00

jr_05f_78b4:
	ld   a, [bc]                                     ; $78b4: $0a
	dec  c                                           ; $78b5: $0d
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	rrca                                             ; $78b8: $0f
	nop                                              ; $78b9: $00
	ld   bc, $1e09                                   ; $78ba: $01 $09 $1e
	nop                                              ; $78bd: $00
	inc  e                                           ; $78be: $1c
	ld   bc, $0000                                   ; $78bf: $01 $00 $00
	ld   bc, $9750                                   ; $78c2: $01 $50 $97
	sbc  [hl]                                        ; $78c5: $9e
	ld   [$6300], sp                                 ; $78c6: $08 $00 $63
	and  c                                           ; $78c9: $a1
	sbc  a                                           ; $78ca: $9f
	dec  c                                           ; $78cb: $0d
	ld   [bc], a                                     ; $78cc: $02
	sub  l                                           ; $78cd: $95
	ld   [bc], a                                     ; $78ce: $02
	sub  e                                           ; $78cf: $93
	sbc  b                                           ; $78d0: $98
	ld   h, d                                        ; $78d1: $62
	ld   e, l                                        ; $78d2: $5d
	sbc  e                                           ; $78d3: $9b
	ld   d, h                                        ; $78d4: $54
	ld   h, e                                        ; $78d5: $63
	adc  h                                           ; $78d6: $8c
	ld   [hl], l                                     ; $78d7: $75
	ld   h, a                                        ; $78d8: $67
	sbc  a                                           ; $78d9: $9f
	dec  c                                           ; $78da: $0d
	nop                                              ; $78db: $00
	ld   a, [bc]                                     ; $78dc: $0a
	rrca                                             ; $78dd: $0f
	nop                                              ; $78de: $00
	ld   bc, $5801                                   ; $78df: $01 $01 $58
	inc  b                                           ; $78e2: $04
	ld   a, e                                        ; $78e3: $7b
	sbc  d                                           ; $78e4: $9a
	ld   h, e                                        ; $78e5: $63
	adc  h                                           ; $78e6: $8c
	ld   [hl], l                                     ; $78e7: $75
	ld   h, a                                        ; $78e8: $67
	sbc  a                                           ; $78e9: $9f
	ld   h, e                                        ; $78ea: $63
	ld   e, l                                        ; $78eb: $5d
	sub  a                                           ; $78ec: $97
	ld   h, e                                        ; $78ed: $63
	and  c                                           ; $78ee: $a1
	sbc  a                                           ; $78ef: $9f
	dec  c                                           ; $78f0: $0d
	nop                                              ; $78f1: $00
	ld   a, [bc]                                     ; $78f2: $0a
	inc  e                                           ; $78f3: $1c
	ld   bc, $0101                                   ; $78f4: $01 $01 $01
	ld   bc, $0d04                                   ; $78f7: $01 $04 $0d
	ld   [bc], a                                     ; $78fa: $02
	sub  [hl]                                        ; $78fb: $96
	inc  b                                           ; $78fc: $04
	ld   b, l                                        ; $78fd: $45
	inc  b                                           ; $78fe: $04
	ld   a, [bc]                                     ; $78ff: $0a
	ld   h, e                                        ; $7900: $63
	ld   d, d                                        ; $7901: $52
	ld   h, d                                        ; $7902: $62
	ld   a, h                                        ; $7903: $7c
	inc  bc                                          ; $7904: $03
	ld   a, c                                        ; $7905: $79
	ld   [hl], l                                     ; $7906: $75
	ld   h, a                                        ; $7907: $67
	ld   a, e                                        ; $7908: $7b
	sbc  a                                           ; $7909: $9f
	dec  c                                           ; $790a: $0d
	ld   [bc], a                                     ; $790b: $02
	and  c                                           ; $790c: $a1
	and  b                                           ; $790d: $a0
	ld   [bc], a                                     ; $790e: $02
	inc  l                                           ; $790f: $2c
	ld   e, e                                        ; $7910: $5b
	ld   h, l                                        ; $7911: $65
	adc  a                                           ; $7912: $8f
	ld   [hl], h                                     ; $7913: $74
	sbc  [hl]                                        ; $7914: $9e
	ld   e, d                                        ; $7915: $5a
	and  c                                           ; $7916: $a1
	ld   a, [hl]                                     ; $7917: $7e
	ld   [hl], c                                     ; $7918: $71
	ld   [hl], h                                     ; $7919: $74
	dec  c                                           ; $791a: $0d
	ld   e, l                                        ; $791b: $5d
	ld   l, [hl]                                     ; $791c: $6e
	ld   h, e                                        ; $791d: $63
	ld   d, d                                        ; $791e: $52
	sbc  a                                           ; $791f: $9f
	ld   l, e                                        ; $7920: $6b
	sbc  d                                           ; $7921: $9a
	ld   [hl], l                                     ; $7922: $75
	ld   a, l                                        ; $7923: $7d
	sbc  a                                           ; $7924: $9f
	dec  c                                           ; $7925: $0d
	nop                                              ; $7926: $00
	ld   a, [bc]                                     ; $7927: $0a
	dec  c                                           ; $7928: $0d
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	rrca                                             ; $792b: $0f
	nop                                              ; $792c: $00
	ld   bc, $1e09                                   ; $792d: $01 $09 $1e
	nop                                              ; $7930: $00
	inc  e                                           ; $7931: $1c
	ld   bc, $0101                                   ; $7932: $01 $01 $01
	ld   bc, $9750                                   ; $7935: $01 $50 $97
	sbc  [hl]                                        ; $7938: $9e
	ld   [$6300], sp                                 ; $7939: $08 $00 $63
	and  c                                           ; $793c: $a1
	sbc  a                                           ; $793d: $9f
	dec  c                                           ; $793e: $0d
	ld   e, b                                        ; $793f: $58
	sub  d                                           ; $7940: $92
	ld   h, a                                        ; $7941: $67
	adc  l                                           ; $7942: $8d
	ld   a, b                                        ; $7943: $78
	ld   h, e                                        ; $7944: $63
	ld   d, d                                        ; $7945: $52
	sbc  a                                           ; $7946: $9f
	dec  c                                           ; $7947: $0d
	nop                                              ; $7948: $00
	ld   a, [bc]                                     ; $7949: $0a
	rrca                                             ; $794a: $0f
	nop                                              ; $794b: $00
	ld   bc, $5601                                   ; $794c: $01 $01 $56
	ld   [hl], c                                     ; $794f: $71
	sbc  [hl]                                        ; $7950: $9e
	ld   [bc], a                                     ; $7951: $02
	and  l                                           ; $7952: $a5
	inc  b                                           ; $7953: $04
	xor  d                                           ; $7954: $aa
	ld   a, l                                        ; $7955: $7d
	sub  b                                           ; $7956: $90
	ld   d, h                                        ; $7957: $54
	sbc  [hl]                                        ; $7958: $9e
	dec  c                                           ; $7959: $0d
	ld   e, b                                        ; $795a: $58
	inc  bc                                          ; $795b: $03
	and  a                                           ; $795c: $a7
	adc  l                                           ; $795d: $8d
	ld   [hl], l                                     ; $795e: $75
	ld   h, a                                        ; $795f: $67
	ld   e, c                                        ; $7960: $59
	ld   sp, hl                                      ; $7961: $f9
	dec  c                                           ; $7962: $0d
	nop                                              ; $7963: $00
	ld   a, [bc]                                     ; $7964: $0a
	rrca                                             ; $7965: $0f
	ld   bc, $0101                                   ; $7966: $01 $01 $01
	ld   d, [hl]                                     ; $7969: $56
	ld   d, [hl]                                     ; $796a: $56
	sbc  [hl]                                        ; $796b: $9e
	inc  b                                           ; $796c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $796d: $cf
	inc  b                                           ; $796e: $04
	xor  d                                           ; $796f: $aa
	inc  bc                                          ; $7970: $03
	ld   d, $5f                                      ; $7971: $16 $5f
	ld   d, d                                        ; $7973: $52
	ld   h, c                                        ; $7974: $61
	ld   a, b                                        ; $7975: $78
	and  c                                           ; $7976: $a1
	ld   [hl], l                                     ; $7977: $75
	ld   h, a                                        ; $7978: $67
	sbc  a                                           ; $7979: $9f
	dec  c                                           ; $797a: $0d
	ld   h, [hl]                                     ; $797b: $66
	sub  c                                           ; $797c: $91
	sbc  [hl]                                        ; $797d: $9e
	ld   [bc], a                                     ; $797e: $02
	sub  l                                           ; $797f: $95
	ld   [bc], a                                     ; $7980: $02
	sub  e                                           ; $7981: $93
	sbc  b                                           ; $7982: $98
	sbc  [hl]                                        ; $7983: $9e
	ld   h, l                                        ; $7984: $65
	ld   [hl], c                                     ; $7985: $71
	ld   e, c                                        ; $7986: $59
	sbc  b                                           ; $7987: $98
	halt                                             ; $7988: $76
	dec  c                                           ; $7989: $0d
	ld   e, b                                        ; $798a: $58
	ld   [bc], a                                     ; $798b: $02
	add  b                                           ; $798c: $80
	ld   d, d                                        ; $798d: $52
	ld   h, l                                        ; $798e: $65
	adc  h                                           ; $798f: $8c
	ld   h, a                                        ; $7990: $67
	ld   a, e                                        ; $7991: $7b
	sbc  a                                           ; $7992: $9f
	ld   [hl], l                                     ; $7993: $75
	ld   a, l                                        ; $7994: $7d
	sbc  a                                           ; $7995: $9f
	dec  c                                           ; $7996: $0d
	nop                                              ; $7997: $00
	ld   a, [bc]                                     ; $7998: $0a
	dec  c                                           ; $7999: $0d
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	rrca                                             ; $799c: $0f
	nop                                              ; $799d: $00
	ld   bc, $1e09                                   ; $799e: $01 $09 $1e
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	ld   [bc], a                                     ; $79a3: $02
	rlca                                             ; $79a4: $07
	ld   l, $00                                      ; $79a5: $2e $00
	inc  bc                                          ; $79a7: $03
	inc  de                                          ; $79a8: $13
	ld   bc, $2265                                   ; $79a9: $01 $65 $22
	nop                                              ; $79ac: $00
	rlca                                             ; $79ad: $07
	ld   e, a                                        ; $79ae: $5f
	nop                                              ; $79af: $00
	inc  bc                                          ; $79b0: $03
	inc  de                                          ; $79b1: $13
	ld   bc, $2566                                   ; $79b2: $01 $66 $25
	inc  bc                                          ; $79b5: $03
	inc  de                                          ; $79b6: $13
	ld   bc, $22af                                   ; $79b7: $01 $af $22
	inc  e                                           ; $79ba: $1c
	nop                                              ; $79bb: $00
	rlca                                             ; $79bc: $07
	and  l                                           ; $79bd: $a5
	nop                                              ; $79be: $00
	inc  bc                                          ; $79bf: $03
	inc  de                                          ; $79c0: $13
	ld   bc, $25af                                   ; $79c1: $01 $af $25
	ld   [bc], a                                     ; $79c4: $02
	nop                                              ; $79c5: $00
	ld   bc, $2c02                                   ; $79c6: $01 $02 $2c
	ld   bc, $2001                                   ; $79c9: $01 $01 $20
	inc  e                                           ; $79cc: $1c
	nop                                              ; $79cd: $00
	ld   b, $11                                      ; $79ce: $06 $11
	ld   bc, $000f                                   ; $79d0: $01 $0f $00
	ld   bc, $df01                                   ; $79d3: $01 $01 $df
	db   $ec                                         ; $79d6: $ec
	and  e                                           ; $79d7: $a3
	ld   h, e                                        ; $79d8: $63
	and  c                                           ; $79d9: $a1
	sbc  a                                           ; $79da: $9f
	dec  c                                           ; $79db: $0d
	nop                                              ; $79dc: $00
	ld   a, [bc]                                     ; $79dd: $0a
	inc  e                                           ; $79de: $1c
	inc  bc                                          ; $79df: $03
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	ld   bc, $8c52                                   ; $79e2: $01 $52 $8c
	dec  b                                           ; $79e5: $05
	jr   z, jr_05f_7a3a                              ; $79e6: $28 $52

	ld   [hl], l                                     ; $79e8: $75
	sbc  c                                           ; $79e9: $99
	ld   a, h                                        ; $79ea: $7c
	sbc  a                                           ; $79eb: $9f
	dec  c                                           ; $79ec: $0d
	adc  h                                           ; $79ed: $8c
	ld   l, l                                        ; $79ee: $6d
	sbc  [hl]                                        ; $79ef: $9e
	inc  b                                           ; $79f0: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f1: $cf
	inc  b                                           ; $79f2: $04
	xor  d                                           ; $79f3: $aa
	ld   a, e                                        ; $79f4: $7b
	sbc  a                                           ; $79f5: $9f
	dec  c                                           ; $79f6: $0d
	nop                                              ; $79f7: $00
	ld   a, [bc]                                     ; $79f8: $0a
	dec  c                                           ; $79f9: $0d
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	rrca                                             ; $79fc: $0f
	nop                                              ; $79fd: $00
	ld   bc, $1e09                                   ; $79fe: $01 $09 $1e
	nop                                              ; $7a01: $00
	inc  e                                           ; $7a02: $1c
	inc  bc                                          ; $7a03: $03
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	ld   bc, $0008                                   ; $7a06: $01 $08 $00
	ld   e, l                                        ; $7a09: $5d
	and  c                                           ; $7a0a: $a1
	sbc  a                                           ; $7a0b: $9f
	dec  c                                           ; $7a0c: $0d
	nop                                              ; $7a0d: $00
	ld   a, [bc]                                     ; $7a0e: $0a
	rrca                                             ; $7a0f: $0f
	nop                                              ; $7a10: $00
	ld   bc, $df01                                   ; $7a11: $01 $01 $df
	db   $ec                                         ; $7a14: $ec
	and  e                                           ; $7a15: $a3
	ld   h, e                                        ; $7a16: $63
	and  c                                           ; $7a17: $a1
	sbc  a                                           ; $7a18: $9f
	dec  c                                           ; $7a19: $0d
	ld   e, b                                        ; $7a1a: $58
	inc  b                                           ; $7a1b: $04
	ld   a, e                                        ; $7a1c: $7b
	sbc  d                                           ; $7a1d: $9a
	ld   h, e                                        ; $7a1e: $63
	adc  h                                           ; $7a1f: $8c
	ld   [hl], l                                     ; $7a20: $75
	ld   h, a                                        ; $7a21: $67
	sbc  a                                           ; $7a22: $9f
	dec  c                                           ; $7a23: $0d
	nop                                              ; $7a24: $00
	ld   a, [bc]                                     ; $7a25: $0a
	rrca                                             ; $7a26: $0f
	inc  bc                                          ; $7a27: $03
	nop                                              ; $7a28: $00
	ld   bc, $9502                                   ; $7a29: $01 $02 $95
	ld   [bc], a                                     ; $7a2c: $02
	sub  e                                           ; $7a2d: $93
	sbc  b                                           ; $7a2e: $98
	ld   e, d                                        ; $7a2f: $5a
	and  c                                           ; $7a30: $a1
	ld   a, [hl]                                     ; $7a31: $7e
	sbc  c                                           ; $7a32: $99
	ld   a, h                                        ; $7a33: $7c
	sub  [hl]                                        ; $7a34: $96
	sbc  a                                           ; $7a35: $9f
	dec  c                                           ; $7a36: $0d
	ld   h, [hl]                                     ; $7a37: $66
	sub  c                                           ; $7a38: $91
	ld   d, b                                        ; $7a39: $50

jr_05f_7a3a:
	ld   a, e                                        ; $7a3a: $7b
	sbc  a                                           ; $7a3b: $9f
	dec  c                                           ; $7a3c: $0d
	nop                                              ; $7a3d: $00
	ld   a, [bc]                                     ; $7a3e: $0a
	dec  c                                           ; $7a3f: $0d
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	rrca                                             ; $7a42: $0f
	nop                                              ; $7a43: $00
	ld   bc, $1e09                                   ; $7a44: $01 $09 $1e
	nop                                              ; $7a47: $00
	inc  e                                           ; $7a48: $1c
	inc  bc                                          ; $7a49: $03
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	ld   bc, $9750                                   ; $7a4c: $01 $50 $97
	sbc  [hl]                                        ; $7a4f: $9e
	ld   [$5d00], sp                                 ; $7a50: $08 $00 $5d
	and  c                                           ; $7a53: $a1
	sbc  a                                           ; $7a54: $9f
	dec  c                                           ; $7a55: $0d
	ld   [bc], a                                     ; $7a56: $02
	sub  l                                           ; $7a57: $95
	ld   [bc], a                                     ; $7a58: $02
	sub  e                                           ; $7a59: $93
	sbc  b                                           ; $7a5a: $98
	ld   h, d                                        ; $7a5b: $62
	ld   e, l                                        ; $7a5c: $5d
	sbc  e                                           ; $7a5d: $9b
	ld   d, h                                        ; $7a5e: $54
	ld   h, e                                        ; $7a5f: $63
	adc  h                                           ; $7a60: $8c
	sbc  a                                           ; $7a61: $9f
	dec  c                                           ; $7a62: $0d
	nop                                              ; $7a63: $00
	ld   a, [bc]                                     ; $7a64: $0a
	rrca                                             ; $7a65: $0f
	nop                                              ; $7a66: $00
	ld   bc, $5801                                   ; $7a67: $01 $01 $58
	inc  b                                           ; $7a6a: $04
	ld   a, e                                        ; $7a6b: $7b
	sbc  d                                           ; $7a6c: $9a
	ld   h, e                                        ; $7a6d: $63
	adc  h                                           ; $7a6e: $8c
	ld   [hl], l                                     ; $7a6f: $75
	ld   h, a                                        ; $7a70: $67
	sbc  a                                           ; $7a71: $9f
	rst  JumpTable                                         ; $7a72: $df
	db   $ec                                         ; $7a73: $ec
	and  e                                           ; $7a74: $a3
	ld   h, e                                        ; $7a75: $63
	and  c                                           ; $7a76: $a1
	sbc  a                                           ; $7a77: $9f
	dec  c                                           ; $7a78: $0d
	nop                                              ; $7a79: $00
	ld   a, [bc]                                     ; $7a7a: $0a
	inc  e                                           ; $7a7b: $1c
	inc  bc                                          ; $7a7c: $03
	inc  bc                                          ; $7a7d: $03
	inc  bc                                          ; $7a7e: $03
	ld   bc, $0d04                                   ; $7a7f: $01 $04 $0d
	ld   [bc], a                                     ; $7a82: $02
	sub  [hl]                                        ; $7a83: $96
	inc  b                                           ; $7a84: $04
	ld   b, l                                        ; $7a85: $45
	inc  b                                           ; $7a86: $04
	ld   a, [bc]                                     ; $7a87: $0a
	ld   h, e                                        ; $7a88: $63
	ld   d, d                                        ; $7a89: $52
	ld   h, d                                        ; $7a8a: $62
	ld   a, h                                        ; $7a8b: $7c
	inc  bc                                          ; $7a8c: $03
	ld   a, c                                        ; $7a8d: $79
	ld   a, e                                        ; $7a8e: $7b
	sbc  a                                           ; $7a8f: $9f
	dec  c                                           ; $7a90: $0d
	ld   [bc], a                                     ; $7a91: $02
	and  c                                           ; $7a92: $a1
	and  b                                           ; $7a93: $a0
	ld   [bc], a                                     ; $7a94: $02
	inc  l                                           ; $7a95: $2c
	ld   e, e                                        ; $7a96: $5b
	ld   h, l                                        ; $7a97: $65
	adc  a                                           ; $7a98: $8f
	ld   [hl], h                                     ; $7a99: $74
	sbc  [hl]                                        ; $7a9a: $9e
	dec  c                                           ; $7a9b: $0d
	ld   e, d                                        ; $7a9c: $5a
	and  c                                           ; $7a9d: $a1
	ld   a, [hl]                                     ; $7a9e: $7e
	ld   [hl], c                                     ; $7a9f: $71
	ld   [hl], h                                     ; $7aa0: $74
	ld   a, e                                        ; $7aa1: $7b
	sbc  a                                           ; $7aa2: $9f
	ld   l, e                                        ; $7aa3: $6b
	sbc  d                                           ; $7aa4: $9a
	ld   h, [hl]                                     ; $7aa5: $66
	sub  c                                           ; $7aa6: $91
	sbc  a                                           ; $7aa7: $9f
	dec  c                                           ; $7aa8: $0d
	nop                                              ; $7aa9: $00
	ld   a, [bc]                                     ; $7aaa: $0a
	dec  c                                           ; $7aab: $0d
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	rrca                                             ; $7aae: $0f
	nop                                              ; $7aaf: $00
	ld   bc, $1e09                                   ; $7ab0: $01 $09 $1e
	nop                                              ; $7ab3: $00
	inc  e                                           ; $7ab4: $1c
	inc  bc                                          ; $7ab5: $03
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	ld   bc, $9258                                   ; $7ab8: $01 $58 $92
	ld   h, a                                        ; $7abb: $67
	adc  l                                           ; $7abc: $8d
	ld   a, b                                        ; $7abd: $78
	ld   h, e                                        ; $7abe: $63
	ld   d, d                                        ; $7abf: $52
	sbc  a                                           ; $7ac0: $9f
	dec  c                                           ; $7ac1: $0d
	ld   [$5d00], sp                                 ; $7ac2: $08 $00 $5d
	and  c                                           ; $7ac5: $a1
	sbc  a                                           ; $7ac6: $9f
	dec  c                                           ; $7ac7: $0d
	nop                                              ; $7ac8: $00
	ld   a, [bc]                                     ; $7ac9: $0a
	rrca                                             ; $7aca: $0f
	nop                                              ; $7acb: $00
	ld   bc, $5601                                   ; $7acc: $01 $01 $56
	ld   [hl], c                                     ; $7acf: $71
	sbc  [hl]                                        ; $7ad0: $9e
	ld   [bc], a                                     ; $7ad1: $02
	and  l                                           ; $7ad2: $a5
	inc  b                                           ; $7ad3: $04
	xor  d                                           ; $7ad4: $aa
	ld   a, l                                        ; $7ad5: $7d
	sub  b                                           ; $7ad6: $90
	ld   d, h                                        ; $7ad7: $54
	sbc  [hl]                                        ; $7ad8: $9e
	dec  c                                           ; $7ad9: $0d
	ld   e, b                                        ; $7ada: $58
	inc  bc                                          ; $7adb: $03
	and  a                                           ; $7adc: $a7
	adc  l                                           ; $7add: $8d
	ld   [hl], l                                     ; $7ade: $75
	ld   h, a                                        ; $7adf: $67
	ld   e, c                                        ; $7ae0: $59
	ld   sp, hl                                      ; $7ae1: $f9
	dec  c                                           ; $7ae2: $0d
	nop                                              ; $7ae3: $00
	ld   a, [bc]                                     ; $7ae4: $0a
	rrca                                             ; $7ae5: $0f
	inc  bc                                          ; $7ae6: $03
	nop                                              ; $7ae7: $00
	ld   bc, $5656                                   ; $7ae8: $01 $56 $56
	sbc  [hl]                                        ; $7aeb: $9e
	inc  b                                           ; $7aec: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7aed: $cf
	inc  b                                           ; $7aee: $04
	xor  d                                           ; $7aef: $aa
	sbc  [hl]                                        ; $7af0: $9e
	inc  bc                                          ; $7af1: $03
	ld   d, $5f                                      ; $7af2: $16 $5f
	ld   d, d                                        ; $7af4: $52
	ld   h, c                                        ; $7af5: $61
	ld   a, b                                        ; $7af6: $78
	ld   a, h                                        ; $7af7: $7c
	sub  [hl]                                        ; $7af8: $96
	sbc  a                                           ; $7af9: $9f
	dec  c                                           ; $7afa: $0d
	ld   h, [hl]                                     ; $7afb: $66
	sub  c                                           ; $7afc: $91
	sbc  [hl]                                        ; $7afd: $9e
	ld   [bc], a                                     ; $7afe: $02
	sub  l                                           ; $7aff: $95
	ld   [bc], a                                     ; $7b00: $02
	sub  e                                           ; $7b01: $93
	sbc  b                                           ; $7b02: $98
	ld   e, d                                        ; $7b03: $5a
	and  c                                           ; $7b04: $a1
	ld   a, [hl]                                     ; $7b05: $7e
	ld   [hl], c                                     ; $7b06: $71
	ld   [hl], h                                     ; $7b07: $74
	ld   a, e                                        ; $7b08: $7b
	sbc  a                                           ; $7b09: $9f
	dec  c                                           ; $7b0a: $0d
	nop                                              ; $7b0b: $00
	ld   a, [bc]                                     ; $7b0c: $0a
	dec  c                                           ; $7b0d: $0d
	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	rrca                                             ; $7b10: $0f
	nop                                              ; $7b11: $00
	ld   bc, $1e09                                   ; $7b12: $01 $09 $1e
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	ld   [bc], a                                     ; $7b17: $02
	rlca                                             ; $7b18: $07
	ld   l, $00                                      ; $7b19: $2e $00
	inc  bc                                          ; $7b1b: $03
	inc  d                                           ; $7b1c: $14
	ld   bc, $2265                                   ; $7b1d: $01 $65 $22
	nop                                              ; $7b20: $00
	rlca                                             ; $7b21: $07
	ld   h, d                                        ; $7b22: $62
	nop                                              ; $7b23: $00
	inc  bc                                          ; $7b24: $03
	inc  d                                           ; $7b25: $14
	ld   bc, $2566                                   ; $7b26: $01 $66 $25
	inc  bc                                          ; $7b29: $03
	inc  d                                           ; $7b2a: $14
	ld   bc, $22af                                   ; $7b2b: $01 $af $22
	inc  e                                           ; $7b2e: $1c
	nop                                              ; $7b2f: $00
	rlca                                             ; $7b30: $07
	and  l                                           ; $7b31: $a5
	nop                                              ; $7b32: $00
	inc  bc                                          ; $7b33: $03
	inc  d                                           ; $7b34: $14
	ld   bc, $25af                                   ; $7b35: $01 $af $25
	ld   [bc], a                                     ; $7b38: $02
	nop                                              ; $7b39: $00
	ld   bc, $2c02                                   ; $7b3a: $01 $02 $2c
	ld   bc, $2001                                   ; $7b3d: $01 $01 $20
	inc  e                                           ; $7b40: $1c
	nop                                              ; $7b41: $00
	ld   b, $fb                                      ; $7b42: $06 $fb
	nop                                              ; $7b44: $00
	rrca                                             ; $7b45: $0f
	nop                                              ; $7b46: $00
	ld   bc, $9201                                   ; $7b47: $01 $01 $92
	ld   d, b                                        ; $7b4a: $50
	sbc  [hl]                                        ; $7b4b: $9e
	and  e                                           ; $7b4c: $a3
	and  l                                           ; $7b4d: $a5
	db   $ec                                         ; $7b4e: $ec
	cp   d                                           ; $7b4f: $ba
	sbc  a                                           ; $7b50: $9f
	dec  c                                           ; $7b51: $0d
	nop                                              ; $7b52: $00
	ld   a, [bc]                                     ; $7b53: $0a
	inc  e                                           ; $7b54: $1c
	inc  b                                           ; $7b55: $04
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	ld   bc, $a5a3                                   ; $7b58: $01 $a3 $a5
	db   $ec                                         ; $7b5b: $ec
	cp   d                                           ; $7b5c: $ba
	sbc  [hl]                                        ; $7b5d: $9e
	ld   d, d                                        ; $7b5e: $52
	ld   l, e                                        ; $7b5f: $6b
	ld   e, d                                        ; $7b60: $5a
	ld   h, l                                        ; $7b61: $65
	ld   d, d                                        ; $7b62: $52
	ld   a, h                                        ; $7b63: $7c
	sbc  a                                           ; $7b64: $9f
	dec  c                                           ; $7b65: $0d
	adc  h                                           ; $7b66: $8c
	ld   l, l                                        ; $7b67: $6d
	ld   d, b                                        ; $7b68: $50
	ld   h, l                                        ; $7b69: $65
	ld   l, l                                        ; $7b6a: $6d
	ld   a, e                                        ; $7b6b: $7b
	sbc  a                                           ; $7b6c: $9f
	dec  c                                           ; $7b6d: $0d
	nop                                              ; $7b6e: $00
	ld   a, [bc]                                     ; $7b6f: $0a
	dec  c                                           ; $7b70: $0d
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	rrca                                             ; $7b73: $0f
	nop                                              ; $7b74: $00
	ld   bc, $1e09                                   ; $7b75: $01 $09 $1e
	nop                                              ; $7b78: $00
	inc  e                                           ; $7b79: $1c
	inc  b                                           ; $7b7a: $04
	nop                                              ; $7b7b: $00
	nop                                              ; $7b7c: $00
	ld   bc, $9e50                                   ; $7b7d: $01 $50 $9e
	ld   l, a                                        ; $7b80: $6f
	ld   d, d                                        ; $7b81: $52
	ld   [bc], a                                     ; $7b82: $02
	inc  de                                          ; $7b83: $13
	ld   l, a                                        ; $7b84: $6f
	sub  c                                           ; $7b85: $91
	and  c                                           ; $7b86: $a1
	sbc  a                                           ; $7b87: $9f
	dec  c                                           ; $7b88: $0d
	nop                                              ; $7b89: $00
	ld   a, [bc]                                     ; $7b8a: $0a
	rrca                                             ; $7b8b: $0f
	nop                                              ; $7b8c: $00
	ld   bc, $9201                                   ; $7b8d: $01 $01 $92
	ld   d, b                                        ; $7b90: $50
	sbc  [hl]                                        ; $7b91: $9e
	and  e                                           ; $7b92: $a3
	and  l                                           ; $7b93: $a5
	db   $ec                                         ; $7b94: $ec
	cp   d                                           ; $7b95: $ba
	sbc  a                                           ; $7b96: $9f
	dec  c                                           ; $7b97: $0d
	nop                                              ; $7b98: $00
	ld   a, [bc]                                     ; $7b99: $0a
	rrca                                             ; $7b9a: $0f
	inc  b                                           ; $7b9b: $04
	nop                                              ; $7b9c: $00
	ld   bc, $8c8d                                   ; $7b9d: $01 $8d $8c
	sbc  l                                           ; $7ba0: $9d
	sbc  b                                           ; $7ba1: $98
	sbc  [hl]                                        ; $7ba2: $9e
	ld   e, d                                        ; $7ba3: $5a
	and  c                                           ; $7ba4: $a1
	ld   a, [hl]                                     ; $7ba5: $7e
	ld   [hl], c                                     ; $7ba6: $71
	ld   [hl], h                                     ; $7ba7: $74
	ld   a, e                                        ; $7ba8: $7b
	sbc  a                                           ; $7ba9: $9f
	dec  c                                           ; $7baa: $0d
	ld   h, [hl]                                     ; $7bab: $66
	sub  c                                           ; $7bac: $91
	ld   d, b                                        ; $7bad: $50
	ld   a, e                                        ; $7bae: $7b
	sbc  a                                           ; $7baf: $9f
	dec  c                                           ; $7bb0: $0d
	nop                                              ; $7bb1: $00
	ld   a, [bc]                                     ; $7bb2: $0a
	dec  c                                           ; $7bb3: $0d
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	rrca                                             ; $7bb6: $0f
	nop                                              ; $7bb7: $00
	ld   bc, $1e09                                   ; $7bb8: $01 $09 $1e
	nop                                              ; $7bbb: $00
	inc  e                                           ; $7bbc: $1c
	inc  b                                           ; $7bbd: $04
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	ld   bc, $526f                                   ; $7bc0: $01 $6f $52
	ld   [bc], a                                     ; $7bc3: $02
	inc  de                                          ; $7bc4: $13
	ld   l, a                                        ; $7bc5: $6f
	sub  c                                           ; $7bc6: $91
	and  c                                           ; $7bc7: $a1
	sbc  a                                           ; $7bc8: $9f
	dec  c                                           ; $7bc9: $0d
	adc  l                                           ; $7bca: $8d
	adc  h                                           ; $7bcb: $8c
	sbc  l                                           ; $7bcc: $9d
	sbc  b                                           ; $7bcd: $98
	ld   h, d                                        ; $7bce: $62
	ld   e, l                                        ; $7bcf: $5d
	sbc  e                                           ; $7bd0: $9b
	ld   d, h                                        ; $7bd1: $54
	ld   h, e                                        ; $7bd2: $63
	adc  h                                           ; $7bd3: $8c
	sbc  a                                           ; $7bd4: $9f
	dec  c                                           ; $7bd5: $0d
	nop                                              ; $7bd6: $00
	ld   a, [bc]                                     ; $7bd7: $0a
	rrca                                             ; $7bd8: $0f
	nop                                              ; $7bd9: $00
	ld   bc, $9201                                   ; $7bda: $01 $01 $92
	ld   d, b                                        ; $7bdd: $50
	sbc  [hl]                                        ; $7bde: $9e
	and  e                                           ; $7bdf: $a3
	and  l                                           ; $7be0: $a5
	db   $ec                                         ; $7be1: $ec
	cp   d                                           ; $7be2: $ba
	sbc  a                                           ; $7be3: $9f
	dec  c                                           ; $7be4: $0d
	nop                                              ; $7be5: $00
	ld   a, [bc]                                     ; $7be6: $0a
	inc  e                                           ; $7be7: $1c
	inc  b                                           ; $7be8: $04
	ld   bc, $0101                                   ; $7be9: $01 $01 $01
	ld   d, b                                        ; $7bec: $50
	ld   h, l                                        ; $7bed: $65
	ld   l, l                                        ; $7bee: $6d
	sub  b                                           ; $7bef: $90
	ld   e, d                                        ; $7bf0: $5a
	and  c                                           ; $7bf1: $a1
	ld   a, [hl]                                     ; $7bf2: $7e
	sbc  e                                           ; $7bf3: $9b
	ld   d, h                                        ; $7bf4: $54
	ld   a, e                                        ; $7bf5: $7b
	sbc  a                                           ; $7bf6: $9f
	dec  c                                           ; $7bf7: $0d
	ld   l, a                                        ; $7bf8: $6f
	ld   d, d                                        ; $7bf9: $52
	ld   [bc], a                                     ; $7bfa: $02
	inc  de                                          ; $7bfb: $13
	ld   l, a                                        ; $7bfc: $6f
	sub  c                                           ; $7bfd: $91
	and  c                                           ; $7bfe: $a1
	sbc  a                                           ; $7bff: $9f
	dec  c                                           ; $7c00: $0d
	ld   h, [hl]                                     ; $7c01: $66
	sub  c                                           ; $7c02: $91
	ld   d, b                                        ; $7c03: $50
	ld   a, e                                        ; $7c04: $7b
	sbc  a                                           ; $7c05: $9f
	dec  c                                           ; $7c06: $0d
	nop                                              ; $7c07: $00
	ld   a, [bc]                                     ; $7c08: $0a
	dec  c                                           ; $7c09: $0d
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	rrca                                             ; $7c0c: $0f
	nop                                              ; $7c0d: $00
	ld   bc, $1e09                                   ; $7c0e: $01 $09 $1e
	nop                                              ; $7c11: $00
	inc  e                                           ; $7c12: $1c
	inc  b                                           ; $7c13: $04
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	ld   bc, $9e50                                   ; $7c16: $01 $50 $9e
	ld   l, a                                        ; $7c19: $6f
	ld   d, d                                        ; $7c1a: $52
	ld   [bc], a                                     ; $7c1b: $02
	inc  de                                          ; $7c1c: $13
	ld   l, a                                        ; $7c1d: $6f
	sub  c                                           ; $7c1e: $91
	and  c                                           ; $7c1f: $a1
	sbc  a                                           ; $7c20: $9f
	dec  c                                           ; $7c21: $0d
	ld   e, b                                        ; $7c22: $58
	sub  d                                           ; $7c23: $92
	ld   h, a                                        ; $7c24: $67
	adc  l                                           ; $7c25: $8d
	ld   a, b                                        ; $7c26: $78
	ld   h, e                                        ; $7c27: $63
	ld   d, d                                        ; $7c28: $52
	sbc  a                                           ; $7c29: $9f
	dec  c                                           ; $7c2a: $0d
	nop                                              ; $7c2b: $00
	ld   a, [bc]                                     ; $7c2c: $0a
	rrca                                             ; $7c2d: $0f
	nop                                              ; $7c2e: $00
	ld   bc, $a301                                   ; $7c2f: $01 $01 $a3
	and  l                                           ; $7c32: $a5
	db   $ec                                         ; $7c33: $ec
	cp   d                                           ; $7c34: $ba
	sbc  [hl]                                        ; $7c35: $9e
	dec  c                                           ; $7c36: $0d
	ld   [bc], a                                     ; $7c37: $02
	and  l                                           ; $7c38: $a5
	inc  b                                           ; $7c39: $04
	xor  d                                           ; $7c3a: $aa
	ld   a, l                                        ; $7c3b: $7d
	sbc  [hl]                                        ; $7c3c: $9e
	sub  b                                           ; $7c3d: $90
	ld   d, h                                        ; $7c3e: $54
	inc  b                                           ; $7c3f: $04
	ld   b, d                                        ; $7c40: $42
	ld   l, a                                        ; $7c41: $6f
	sub  c                                           ; $7c42: $91
	ld   d, h                                        ; $7c43: $54
	ld   a, h                                        ; $7c44: $7c
	ld   sp, hl                                      ; $7c45: $f9
	dec  c                                           ; $7c46: $0d
	nop                                              ; $7c47: $00
	ld   a, [bc]                                     ; $7c48: $0a
	inc  e                                           ; $7c49: $1c
	inc  b                                           ; $7c4a: $04
	inc  bc                                          ; $7c4b: $03
	inc  bc                                          ; $7c4c: $03
	ld   bc, $a154                                   ; $7c4d: $01 $54 $a1
	sbc  [hl]                                        ; $7c50: $9e
	ld   d, b                                        ; $7c51: $50
	ld   h, l                                        ; $7c52: $65
	ld   l, l                                        ; $7c53: $6d
	ld   a, l                                        ; $7c54: $7d
	dec  c                                           ; $7c55: $0d
	ld   d, b                                        ; $7c56: $50
	ld   h, e                                        ; $7c57: $63
	ld   e, a                                        ; $7c58: $5f
	ld   d, d                                        ; $7c59: $52
	ld   h, c                                        ; $7c5a: $61
	ld   a, b                                        ; $7c5b: $78
	ld   a, h                                        ; $7c5c: $7c
	sbc  a                                           ; $7c5d: $9f
	dec  c                                           ; $7c5e: $0d
	nop                                              ; $7c5f: $00
	inc  e                                           ; $7c60: $1c
	inc  b                                           ; $7c61: $04
	ld   bc, $0101                                   ; $7c62: $01 $01 $01
	ld   h, [hl]                                     ; $7c65: $66
	sub  c                                           ; $7c66: $91
	ld   d, b                                        ; $7c67: $50
	ld   a, e                                        ; $7c68: $7b
	sbc  a                                           ; $7c69: $9f
	dec  c                                           ; $7c6a: $0d
	nop                                              ; $7c6b: $00
	ld   a, [bc]                                     ; $7c6c: $0a
	dec  c                                           ; $7c6d: $0d
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	rrca                                             ; $7c70: $0f
	nop                                              ; $7c71: $00
	ld   bc, $1e09                                   ; $7c72: $01 $09 $1e
	nop                                              ; $7c75: $00
	nop                                              ; $7c76: $00
	ld   [bc], a                                     ; $7c77: $02
	rlca                                             ; $7c78: $07
	ld   l, $00                                      ; $7c79: $2e $00
	inc  bc                                          ; $7c7b: $03
	ld   d, $01                                      ; $7c7c: $16 $01
	ld   h, l                                        ; $7c7e: $65
	inc  hl                                          ; $7c7f: $23
	nop                                              ; $7c80: $00
	rlca                                             ; $7c81: $07
	ld   l, d                                        ; $7c82: $6a
	nop                                              ; $7c83: $00
	inc  bc                                          ; $7c84: $03
	ld   d, $01                                      ; $7c85: $16 $01
	ld   h, [hl]                                     ; $7c87: $66
	dec  h                                           ; $7c88: $25
	inc  bc                                          ; $7c89: $03
	ld   d, $01                                      ; $7c8a: $16 $01
	xor  a                                           ; $7c8c: $af
	ld   [hl+], a                                    ; $7c8d: $22
	inc  e                                           ; $7c8e: $1c
	nop                                              ; $7c8f: $00
	rlca                                             ; $7c90: $07
	or   c                                           ; $7c91: $b1
	nop                                              ; $7c92: $00
	inc  bc                                          ; $7c93: $03
	ld   d, $01                                      ; $7c94: $16 $01
	xor  a                                           ; $7c96: $af
	dec  h                                           ; $7c97: $25
	ld   [bc], a                                     ; $7c98: $02
	nop                                              ; $7c99: $00
	ld   bc, $2c02                                   ; $7c9a: $01 $02 $2c
	ld   bc, $2001                                   ; $7c9d: $01 $01 $20
	inc  e                                           ; $7ca0: $1c
	nop                                              ; $7ca1: $00
	ld   b, $1b                                      ; $7ca2: $06 $1b
	ld   bc, $000f                                   ; $7ca4: $01 $0f $00
	ld   bc, $ac01                                   ; $7ca7: $01 $01 $ac
	push af                                          ; $7caa: $f5
	bit  4, e                                        ; $7cab: $cb $63
	and  c                                           ; $7cad: $a1
	sbc  a                                           ; $7cae: $9f
	dec  c                                           ; $7caf: $0d
	nop                                              ; $7cb0: $00
	ld   a, [bc]                                     ; $7cb1: $0a
	inc  e                                           ; $7cb2: $1c
	ld   b, $00                                      ; $7cb3: $06 $00
	nop                                              ; $7cb5: $00
	ld   bc, $999d                                   ; $7cb6: $01 $9d $99
	ld   d, d                                        ; $7cb9: $52
	sbc  a                                           ; $7cba: $9f
	ld   l, a                                        ; $7cbb: $6f
	sub  l                                           ; $7cbc: $95
	ld   d, d                                        ; $7cbd: $52
	halt                                             ; $7cbe: $76
	dec  b                                           ; $7cbf: $05
	jr   z, jr_05f_7d1e                              ; $7cc0: $28 $5c

	ld   a, h                                        ; $7cc2: $7c
	dec  c                                           ; $7cc3: $0d
	inc  b                                           ; $7cc4: $04
	di                                               ; $7cc5: $f3
	ld   e, d                                        ; $7cc6: $5a
	ld   d, b                                        ; $7cc7: $50
	sbc  c                                           ; $7cc8: $99
	and  c                                           ; $7cc9: $a1
	ld   l, [hl]                                     ; $7cca: $6e
	sbc  a                                           ; $7ccb: $9f
	dec  c                                           ; $7ccc: $0d
	adc  h                                           ; $7ccd: $8c
	ld   l, l                                        ; $7cce: $6d
	inc  b                                           ; $7ccf: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cd0: $cf
	inc  b                                           ; $7cd1: $04
	xor  d                                           ; $7cd2: $aa
	ld   a, b                                        ; $7cd3: $78
	sbc  a                                           ; $7cd4: $9f
	dec  c                                           ; $7cd5: $0d
	nop                                              ; $7cd6: $00
	ld   a, [bc]                                     ; $7cd7: $0a
	dec  c                                           ; $7cd8: $0d
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	rrca                                             ; $7cdb: $0f
	nop                                              ; $7cdc: $00
	ld   bc, $1e09                                   ; $7cdd: $01 $09 $1e
	nop                                              ; $7ce0: $00
	inc  e                                           ; $7ce1: $1c
	ld   b, $00                                      ; $7ce2: $06 $00
	nop                                              ; $7ce4: $00
	ld   bc, $5496                                   ; $7ce5: $01 $96 $54
	sbc  [hl]                                        ; $7ce8: $9e
	ld   [$9f00], sp                                 ; $7ce9: $08 $00 $9f
	dec  c                                           ; $7cec: $0d
	nop                                              ; $7ced: $00
	ld   a, [bc]                                     ; $7cee: $0a
	rrca                                             ; $7cef: $0f
	nop                                              ; $7cf0: $00
	ld   bc, $ac01                                   ; $7cf1: $01 $01 $ac
	push af                                          ; $7cf4: $f5
	bit  4, e                                        ; $7cf5: $cb $63
	and  c                                           ; $7cf7: $a1
	sbc  a                                           ; $7cf8: $9f
	dec  c                                           ; $7cf9: $0d
	ld   e, b                                        ; $7cfa: $58
	inc  b                                           ; $7cfb: $04
	ld   a, e                                        ; $7cfc: $7b
	sbc  d                                           ; $7cfd: $9a
	ld   h, e                                        ; $7cfe: $63
	adc  h                                           ; $7cff: $8c
	ld   [hl], l                                     ; $7d00: $75
	ld   h, a                                        ; $7d01: $67
	sbc  a                                           ; $7d02: $9f
	dec  c                                           ; $7d03: $0d
	nop                                              ; $7d04: $00
	ld   a, [bc]                                     ; $7d05: $0a
	rrca                                             ; $7d06: $0f
	ld   b, $00                                      ; $7d07: $06 $00
	ld   bc, $9502                                   ; $7d09: $01 $02 $95
	ld   [bc], a                                     ; $7d0c: $02
	sub  e                                           ; $7d0d: $93
	sbc  b                                           ; $7d0e: $98
	sbc  [hl]                                        ; $7d0f: $9e
	ld   e, d                                        ; $7d10: $5a
	and  c                                           ; $7d11: $a1
	ld   a, [hl]                                     ; $7d12: $7e
	sbc  d                                           ; $7d13: $9a
	sub  [hl]                                        ; $7d14: $96
	sbc  a                                           ; $7d15: $9f
	dec  c                                           ; $7d16: $0d
	ld   h, [hl]                                     ; $7d17: $66
	sub  c                                           ; $7d18: $91
	ld   d, b                                        ; $7d19: $50
	ld   a, b                                        ; $7d1a: $78
	sbc  a                                           ; $7d1b: $9f
	dec  c                                           ; $7d1c: $0d
	nop                                              ; $7d1d: $00

jr_05f_7d1e:
	ld   a, [bc]                                     ; $7d1e: $0a
	dec  c                                           ; $7d1f: $0d
	nop                                              ; $7d20: $00
	nop                                              ; $7d21: $00
	rrca                                             ; $7d22: $0f
	nop                                              ; $7d23: $00
	ld   bc, $1e09                                   ; $7d24: $01 $09 $1e
	nop                                              ; $7d27: $00
	inc  e                                           ; $7d28: $1c
	ld   b, $00                                      ; $7d29: $06 $00
	nop                                              ; $7d2b: $00
	ld   bc, $5496                                   ; $7d2c: $01 $96 $54
	sbc  a                                           ; $7d2f: $9f
	dec  c                                           ; $7d30: $0d
	ld   [bc], a                                     ; $7d31: $02
	sub  l                                           ; $7d32: $95
	ld   [bc], a                                     ; $7d33: $02
	sub  e                                           ; $7d34: $93
	sbc  b                                           ; $7d35: $98
	ld   h, d                                        ; $7d36: $62
	ld   e, l                                        ; $7d37: $5d
	sbc  e                                           ; $7d38: $9b
	ld   d, h                                        ; $7d39: $54
	ld   h, e                                        ; $7d3a: $63
	and  c                                           ; $7d3b: $a1
	sbc  a                                           ; $7d3c: $9f
	dec  c                                           ; $7d3d: $0d
	nop                                              ; $7d3e: $00
	ld   a, [bc]                                     ; $7d3f: $0a
	rrca                                             ; $7d40: $0f
	nop                                              ; $7d41: $00
	ld   bc, $5801                                   ; $7d42: $01 $01 $58
	inc  b                                           ; $7d45: $04
	ld   a, e                                        ; $7d46: $7b
	sbc  d                                           ; $7d47: $9a
	ld   h, e                                        ; $7d48: $63
	adc  h                                           ; $7d49: $8c
	ld   [hl], l                                     ; $7d4a: $75
	ld   h, a                                        ; $7d4b: $67
	sbc  a                                           ; $7d4c: $9f
	xor  h                                           ; $7d4d: $ac
	push af                                          ; $7d4e: $f5
	bit  4, e                                        ; $7d4f: $cb $63
	and  c                                           ; $7d51: $a1
	sbc  a                                           ; $7d52: $9f
	dec  c                                           ; $7d53: $0d
	nop                                              ; $7d54: $00
	ld   a, [bc]                                     ; $7d55: $0a
	inc  e                                           ; $7d56: $1c
	ld   b, $01                                      ; $7d57: $06 $01
	ld   bc, $0401                                   ; $7d59: $01 $01 $04
	dec  c                                           ; $7d5c: $0d
	ld   [bc], a                                     ; $7d5d: $02
	sub  [hl]                                        ; $7d5e: $96
	inc  b                                           ; $7d5f: $04
	ld   b, l                                        ; $7d60: $45
	inc  b                                           ; $7d61: $04
	ld   a, [bc]                                     ; $7d62: $0a

Call_05f_7d63:
	ld   h, e                                        ; $7d63: $63
	ld   d, d                                        ; $7d64: $52
	ld   h, d                                        ; $7d65: $62
	ld   a, h                                        ; $7d66: $7c
	inc  bc                                          ; $7d67: $03
	ld   a, c                                        ; $7d68: $79
	ld   l, [hl]                                     ; $7d69: $6e
	sbc  a                                           ; $7d6a: $9f
	dec  c                                           ; $7d6b: $0d
	ld   [bc], a                                     ; $7d6c: $02
	and  c                                           ; $7d6d: $a1
	and  b                                           ; $7d6e: $a0
	ld   [bc], a                                     ; $7d6f: $02
	inc  l                                           ; $7d70: $2c
	ld   e, e                                        ; $7d71: $5b
	ld   h, l                                        ; $7d72: $65
	adc  a                                           ; $7d73: $8f
	ld   [hl], h                                     ; $7d74: $74
	sbc  [hl]                                        ; $7d75: $9e
	ld   e, d                                        ; $7d76: $5a
	and  c                                           ; $7d77: $a1
	ld   a, [hl]                                     ; $7d78: $7e
	ld   [hl], c                                     ; $7d79: $71
	ld   [hl], h                                     ; $7d7a: $74
	dec  c                                           ; $7d7b: $0d
	ld   d, d                                        ; $7d7c: $52
	ld   h, c                                        ; $7d7d: $61
	ld   d, h                                        ; $7d7e: $54
	ld   l, d                                        ; $7d7f: $6a
	sbc  a                                           ; $7d80: $9f
	ld   h, [hl]                                     ; $7d81: $66
	sub  c                                           ; $7d82: $91
	ld   d, b                                        ; $7d83: $50
	ld   a, b                                        ; $7d84: $78
	sbc  a                                           ; $7d85: $9f
	dec  c                                           ; $7d86: $0d
	nop                                              ; $7d87: $00
	ld   a, [bc]                                     ; $7d88: $0a
	dec  c                                           ; $7d89: $0d
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	rrca                                             ; $7d8c: $0f
	nop                                              ; $7d8d: $00
	ld   bc, $1e09                                   ; $7d8e: $01 $09 $1e
	nop                                              ; $7d91: $00
	inc  e                                           ; $7d92: $1c
	ld   b, $00                                      ; $7d93: $06 $00
	nop                                              ; $7d95: $00
	ld   bc, $9258                                   ; $7d96: $01 $58 $92
	ld   h, a                                        ; $7d99: $67
	adc  l                                           ; $7d9a: $8d
	sbc  [hl]                                        ; $7d9b: $9e
	ld   [$9f00], sp                                 ; $7d9c: $08 $00 $9f
	dec  c                                           ; $7d9f: $0d
	nop                                              ; $7da0: $00
	ld   a, [bc]                                     ; $7da1: $0a
	rrca                                             ; $7da2: $0f
	nop                                              ; $7da3: $00
	ld   bc, $5601                                   ; $7da4: $01 $01 $56
	ld   [hl], c                                     ; $7da7: $71
	sbc  [hl]                                        ; $7da8: $9e
	ld   [bc], a                                     ; $7da9: $02
	and  l                                           ; $7daa: $a5
	inc  b                                           ; $7dab: $04
	xor  d                                           ; $7dac: $aa
	ld   a, l                                        ; $7dad: $7d
	sub  b                                           ; $7dae: $90
	ld   d, h                                        ; $7daf: $54
	sbc  [hl]                                        ; $7db0: $9e
	dec  c                                           ; $7db1: $0d
	ld   e, b                                        ; $7db2: $58
	inc  bc                                          ; $7db3: $03
	and  a                                           ; $7db4: $a7
	adc  l                                           ; $7db5: $8d
	ld   [hl], l                                     ; $7db6: $75
	ld   h, a                                        ; $7db7: $67
	ld   e, c                                        ; $7db8: $59
	ld   sp, hl                                      ; $7db9: $f9
	dec  c                                           ; $7dba: $0d
	nop                                              ; $7dbb: $00
	ld   a, [bc]                                     ; $7dbc: $0a
	rrca                                             ; $7dbd: $0f
	ld   b, $00                                      ; $7dbe: $06 $00
	ld   bc, $5050                                   ; $7dc0: $01 $50 $50
	sbc  [hl]                                        ; $7dc3: $9e
	inc  b                                           ; $7dc4: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dc5: $cf
	inc  b                                           ; $7dc6: $04
	xor  d                                           ; $7dc7: $aa
	sbc  [hl]                                        ; $7dc8: $9e
	inc  bc                                          ; $7dc9: $03
	ld   d, $5f                                      ; $7dca: $16 $5f
	ld   d, d                                        ; $7dcc: $52
	ld   h, c                                        ; $7dcd: $61
	ld   a, b                                        ; $7dce: $78
	and  c                                           ; $7dcf: $a1
	ld   l, [hl]                                     ; $7dd0: $6e
	sbc  a                                           ; $7dd1: $9f
	dec  c                                           ; $7dd2: $0d
	ld   h, [hl]                                     ; $7dd3: $66
	sub  c                                           ; $7dd4: $91
	sbc  [hl]                                        ; $7dd5: $9e
	ld   [bc], a                                     ; $7dd6: $02
	sub  l                                           ; $7dd7: $95
	ld   [bc], a                                     ; $7dd8: $02
	sub  e                                           ; $7dd9: $93
	sbc  b                                           ; $7dda: $98
	sbc  [hl]                                        ; $7ddb: $9e
	ld   e, d                                        ; $7ddc: $5a
	and  c                                           ; $7ddd: $a1
	ld   a, [hl]                                     ; $7dde: $7e
	sbc  d                                           ; $7ddf: $9a
	sub  [hl]                                        ; $7de0: $96
	ld   a, b                                        ; $7de1: $78
	sbc  a                                           ; $7de2: $9f
	dec  c                                           ; $7de3: $0d
	nop                                              ; $7de4: $00
	ld   a, [bc]                                     ; $7de5: $0a
	dec  c                                           ; $7de6: $0d
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	rrca                                             ; $7de9: $0f
	nop                                              ; $7dea: $00
	ld   bc, $1e09                                   ; $7deb: $01 $09 $1e
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	ld   [bc], a                                     ; $7df0: $02
	rlca                                             ; $7df1: $07
	ld   l, $00                                      ; $7df2: $2e $00
	inc  bc                                          ; $7df4: $03
	dec  d                                           ; $7df5: $15
	ld   bc, $2265                                   ; $7df6: $01 $65 $22
	nop                                              ; $7df9: $00
	rlca                                             ; $7dfa: $07
	ld   h, [hl]                                     ; $7dfb: $66
	nop                                              ; $7dfc: $00
	inc  bc                                          ; $7dfd: $03
	dec  d                                           ; $7dfe: $15
	ld   bc, $2566                                   ; $7dff: $01 $66 $25
	inc  bc                                          ; $7e02: $03
	dec  d                                           ; $7e03: $15
	ld   bc, $22af                                   ; $7e04: $01 $af $22
	inc  e                                           ; $7e07: $1c
	nop                                              ; $7e08: $00
	rlca                                             ; $7e09: $07
	xor  l                                           ; $7e0a: $ad
	nop                                              ; $7e0b: $00
	inc  bc                                          ; $7e0c: $03
	dec  d                                           ; $7e0d: $15
	ld   bc, $25af                                   ; $7e0e: $01 $af $25
	ld   [bc], a                                     ; $7e11: $02
	nop                                              ; $7e12: $00
	ld   bc, $2c02                                   ; $7e13: $01 $02 $2c
	ld   bc, $2001                                   ; $7e16: $01 $01 $20
	inc  e                                           ; $7e19: $1c
	nop                                              ; $7e1a: $00
	ld   b, $03                                      ; $7e1b: $06 $03
	ld   bc, $000f                                   ; $7e1d: $01 $0f $00
	ld   bc, $0201                                   ; $7e20: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e23: $cf
	dec  b                                           ; $7e24: $05
	ld   a, [de]                                     ; $7e25: $1a
	ld   h, e                                        ; $7e26: $63
	and  c                                           ; $7e27: $a1
	sbc  a                                           ; $7e28: $9f
	dec  c                                           ; $7e29: $0d
	nop                                              ; $7e2a: $00
	ld   a, [bc]                                     ; $7e2b: $0a
	inc  e                                           ; $7e2c: $1c
	dec  b                                           ; $7e2d: $05
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	ld   bc, $a502                                   ; $7e30: $01 $02 $a5
	ld   l, a                                        ; $7e33: $6f
	sub  l                                           ; $7e34: $95
	ld   [hl], c                                     ; $7e35: $71
	halt                                             ; $7e36: $76
	sbc  [hl]                                        ; $7e37: $9e
	inc  b                                           ; $7e38: $04
	ld   c, $04                                      ; $7e39: $0e $04
	adc  h                                           ; $7e3b: $8c
	ld   a, b                                        ; $7e3c: $78
	and  c                                           ; $7e3d: $a1
	sub  d                                           ; $7e3e: $92
	sbc  a                                           ; $7e3f: $9f
	dec  c                                           ; $7e40: $0d
	ld   h, a                                        ; $7e41: $67
	adc  h                                           ; $7e42: $8c
	and  c                                           ; $7e43: $a1
	ld   a, b                                        ; $7e44: $78
	db   $fc                                         ; $7e45: $fc
	sbc  a                                           ; $7e46: $9f
	adc  c                                           ; $7e47: $89
	ld   a, b                                        ; $7e48: $78
	sbc  a                                           ; $7e49: $9f
	dec  c                                           ; $7e4a: $0d
	nop                                              ; $7e4b: $00
	ld   a, [bc]                                     ; $7e4c: $0a
	dec  c                                           ; $7e4d: $0d
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	rrca                                             ; $7e50: $0f
	nop                                              ; $7e51: $00
	ld   bc, $1e09                                   ; $7e52: $01 $09 $1e
	nop                                              ; $7e55: $00
	inc  e                                           ; $7e56: $1c
	dec  b                                           ; $7e57: $05
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	ld   bc, $7196                                   ; $7e5a: $01 $96 $71
	sbc  [hl]                                        ; $7e5d: $9e
	ld   [$7d00], sp                                 ; $7e5e: $08 $00 $7d
	and  c                                           ; $7e61: $a1
	sbc  a                                           ; $7e62: $9f
	dec  c                                           ; $7e63: $0d
	nop                                              ; $7e64: $00
	ld   a, [bc]                                     ; $7e65: $0a
	rrca                                             ; $7e66: $0f
	nop                                              ; $7e67: $00
	ld   bc, $0201                                   ; $7e68: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e6b: $cf
	dec  b                                           ; $7e6c: $05
	ld   a, [de]                                     ; $7e6d: $1a
	ld   h, e                                        ; $7e6e: $63
	and  c                                           ; $7e6f: $a1
	sbc  a                                           ; $7e70: $9f
	dec  c                                           ; $7e71: $0d
	ld   e, b                                        ; $7e72: $58
	inc  b                                           ; $7e73: $04
	ld   a, e                                        ; $7e74: $7b
	sbc  d                                           ; $7e75: $9a
	ld   h, e                                        ; $7e76: $63
	adc  h                                           ; $7e77: $8c
	ld   [hl], l                                     ; $7e78: $75
	ld   h, a                                        ; $7e79: $67
	sbc  a                                           ; $7e7a: $9f
	dec  c                                           ; $7e7b: $0d
	nop                                              ; $7e7c: $00
	ld   a, [bc]                                     ; $7e7d: $0a
	rrca                                             ; $7e7e: $0f
	dec  b                                           ; $7e7f: $05
	nop                                              ; $7e80: $00
	ld   bc, $9502                                   ; $7e81: $01 $02 $95
	ld   [bc], a                                     ; $7e84: $02
	sub  e                                           ; $7e85: $93
	sbc  b                                           ; $7e86: $98
	ld   e, d                                        ; $7e87: $5a
	and  c                                           ; $7e88: $a1
	ld   a, [hl]                                     ; $7e89: $7e
	sbc  b                                           ; $7e8a: $98
	sub  d                                           ; $7e8b: $92
	sbc  a                                           ; $7e8c: $9f
	dec  c                                           ; $7e8d: $0d
	adc  c                                           ; $7e8e: $89
	ld   a, b                                        ; $7e8f: $78
	sbc  a                                           ; $7e90: $9f
	dec  c                                           ; $7e91: $0d
	nop                                              ; $7e92: $00
	ld   a, [bc]                                     ; $7e93: $0a
	dec  c                                           ; $7e94: $0d
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	rrca                                             ; $7e97: $0f
	nop                                              ; $7e98: $00
	ld   bc, $1e09                                   ; $7e99: $01 $09 $1e
	nop                                              ; $7e9c: $00
	inc  e                                           ; $7e9d: $1c
	dec  b                                           ; $7e9e: $05
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	ld   bc, $7196                                   ; $7ea1: $01 $96 $71
	sbc  [hl]                                        ; $7ea4: $9e
	ld   [bc], a                                     ; $7ea5: $02
	sub  l                                           ; $7ea6: $95
	ld   [bc], a                                     ; $7ea7: $02
	sub  e                                           ; $7ea8: $93
	sbc  b                                           ; $7ea9: $98
	ld   h, d                                        ; $7eaa: $62
	ld   e, l                                        ; $7eab: $5d
	sbc  e                                           ; $7eac: $9b
	ld   d, h                                        ; $7ead: $54
	ld   h, e                                        ; $7eae: $63
	and  c                                           ; $7eaf: $a1
	sbc  a                                           ; $7eb0: $9f
	dec  c                                           ; $7eb1: $0d
	nop                                              ; $7eb2: $00
	ld   a, [bc]                                     ; $7eb3: $0a
	rrca                                             ; $7eb4: $0f
	nop                                              ; $7eb5: $00
	ld   bc, $5801                                   ; $7eb6: $01 $01 $58
	inc  b                                           ; $7eb9: $04
	ld   a, e                                        ; $7eba: $7b
	sbc  d                                           ; $7ebb: $9a
	ld   h, e                                        ; $7ebc: $63
	adc  h                                           ; $7ebd: $8c
	ld   [hl], l                                     ; $7ebe: $75
	ld   h, a                                        ; $7ebf: $67
	sbc  a                                           ; $7ec0: $9f
	ld   [bc], a                                     ; $7ec1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ec2: $cf
	dec  b                                           ; $7ec3: $05
	ld   a, [de]                                     ; $7ec4: $1a
	ld   h, e                                        ; $7ec5: $63
	and  c                                           ; $7ec6: $a1
	sbc  a                                           ; $7ec7: $9f
	dec  c                                           ; $7ec8: $0d
	nop                                              ; $7ec9: $00
	ld   a, [bc]                                     ; $7eca: $0a
	inc  e                                           ; $7ecb: $1c
	dec  b                                           ; $7ecc: $05
	ld   bc, $0101                                   ; $7ecd: $01 $01 $01
	inc  b                                           ; $7ed0: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ed1: $cf
	inc  b                                           ; $7ed2: $04
	xor  d                                           ; $7ed3: $aa
	sub  b                                           ; $7ed4: $90
	ld   e, d                                        ; $7ed5: $5a
	and  c                                           ; $7ed6: $a1
	ld   a, [hl]                                     ; $7ed7: $7e
	ld   [hl], c                                     ; $7ed8: $71
	ld   [hl], h                                     ; $7ed9: $74
	ld   d, d                                        ; $7eda: $52
	ld   h, c                                        ; $7edb: $61
	ld   a, b                                        ; $7edc: $78
	sbc  a                                           ; $7edd: $9f
	dec  c                                           ; $7ede: $0d
	ld   [$7d00], sp                                 ; $7edf: $08 $00 $7d
	and  c                                           ; $7ee2: $a1
	sbc  a                                           ; $7ee3: $9f
	adc  c                                           ; $7ee4: $89
	ld   a, b                                        ; $7ee5: $78
	sbc  a                                           ; $7ee6: $9f
	dec  c                                           ; $7ee7: $0d
	nop                                              ; $7ee8: $00
	ld   a, [bc]                                     ; $7ee9: $0a
	dec  c                                           ; $7eea: $0d
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	rrca                                             ; $7eed: $0f
	nop                                              ; $7eee: $00
	ld   bc, $1e09                                   ; $7eef: $01 $09 $1e
	nop                                              ; $7ef2: $00
	inc  e                                           ; $7ef3: $1c
	dec  b                                           ; $7ef4: $05
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	ld   bc, $0008                                   ; $7ef7: $01 $08 $00
	ld   a, l                                        ; $7efa: $7d
	and  c                                           ; $7efb: $a1
	sbc  a                                           ; $7efc: $9f
	ld   e, b                                        ; $7efd: $58
	sub  d                                           ; $7efe: $92
	ld   h, a                                        ; $7eff: $67
	adc  l                                           ; $7f00: $8d
	sbc  a                                           ; $7f01: $9f
	dec  c                                           ; $7f02: $0d
	nop                                              ; $7f03: $00
	ld   a, [bc]                                     ; $7f04: $0a
	rrca                                             ; $7f05: $0f
	nop                                              ; $7f06: $00
	ld   bc, $5601                                   ; $7f07: $01 $01 $56
	ld   [hl], c                                     ; $7f0a: $71
	sbc  [hl]                                        ; $7f0b: $9e
	ld   [bc], a                                     ; $7f0c: $02
	and  l                                           ; $7f0d: $a5
	inc  b                                           ; $7f0e: $04
	xor  d                                           ; $7f0f: $aa
	ld   a, l                                        ; $7f10: $7d
	sub  b                                           ; $7f11: $90
	ld   d, h                                        ; $7f12: $54
	sbc  [hl]                                        ; $7f13: $9e
	dec  c                                           ; $7f14: $0d
	ld   e, b                                        ; $7f15: $58
	inc  bc                                          ; $7f16: $03
	and  a                                           ; $7f17: $a7
	adc  l                                           ; $7f18: $8d
	ld   [hl], l                                     ; $7f19: $75
	ld   h, a                                        ; $7f1a: $67
	ld   e, c                                        ; $7f1b: $59
	ld   sp, hl                                      ; $7f1c: $f9
	dec  c                                           ; $7f1d: $0d
	nop                                              ; $7f1e: $00
	ld   a, [bc]                                     ; $7f1f: $0a
	rrca                                             ; $7f20: $0f
	dec  b                                           ; $7f21: $05
	nop                                              ; $7f22: $00
	ld   bc, $cf04                                   ; $7f23: $01 $04 $cf
	inc  b                                           ; $7f26: $04
	xor  d                                           ; $7f27: $aa
	sbc  [hl]                                        ; $7f28: $9e
	inc  bc                                          ; $7f29: $03
	ld   d, $5f                                      ; $7f2a: $16 $5f
	ld   d, d                                        ; $7f2c: $52
	ld   h, c                                        ; $7f2d: $61
	ld   a, b                                        ; $7f2e: $78
	and  c                                           ; $7f2f: $a1
	sub  d                                           ; $7f30: $92
	sbc  a                                           ; $7f31: $9f
	dec  c                                           ; $7f32: $0d
	ld   h, [hl]                                     ; $7f33: $66
	sub  c                                           ; $7f34: $91
	sbc  [hl]                                        ; $7f35: $9e
	ld   [bc], a                                     ; $7f36: $02
	sub  l                                           ; $7f37: $95
	ld   [bc], a                                     ; $7f38: $02
	sub  e                                           ; $7f39: $93
	sbc  b                                           ; $7f3a: $98
	ld   e, d                                        ; $7f3b: $5a
	and  c                                           ; $7f3c: $a1
	ld   a, [hl]                                     ; $7f3d: $7e
	ld   [hl], c                                     ; $7f3e: $71
	ld   [hl], h                                     ; $7f3f: $74
	sub  d                                           ; $7f40: $92
	sbc  a                                           ; $7f41: $9f
	dec  c                                           ; $7f42: $0d
	adc  c                                           ; $7f43: $89
	ld   a, b                                        ; $7f44: $78
	sbc  a                                           ; $7f45: $9f
	dec  c                                           ; $7f46: $0d
	nop                                              ; $7f47: $00
	ld   a, [bc]                                     ; $7f48: $0a
	dec  c                                           ; $7f49: $0d
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	rrca                                             ; $7f4c: $0f
	nop                                              ; $7f4d: $00
	ld   bc, $1e09                                   ; $7f4e: $01 $09 $1e
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	inc  b                                           ; $7f53: $04
	add  b                                           ; $7f54: $80
	ld   b, d                                        ; $7f55: $42
	ld   bc, $20ff                                   ; $7f56: $01 $ff $20
	nop                                              ; $7f59: $00
	ld   c, $02                                      ; $7f5a: $0e $02
	rrca                                             ; $7f5c: $0f
	nop                                              ; $7f5d: $00
	ld   bc, $1402                                   ; $7f5e: $01 $02 $14
	ld   b, $01                                      ; $7f61: $06 $01
	rrca                                             ; $7f63: $0f
	inc  b                                           ; $7f64: $04
	rlca                                             ; $7f65: $07
	ld   bc, $526f                                   ; $7f66: $01 $6f $52
	ld   [bc], a                                     ; $7f69: $02
	inc  de                                          ; $7f6a: $13
	ld   l, a                                        ; $7f6b: $6f
	sub  c                                           ; $7f6c: $91
	and  c                                           ; $7f6d: $a1
	rst  $38                                         ; $7f6e: $ff
	rst  $38                                         ; $7f6f: $ff
	dec  c                                           ; $7f70: $0d
	ld   d, d                                        ; $7f71: $52
	sbc  c                                           ; $7f72: $99
	ld   sp, hl                                      ; $7f73: $f9
	dec  c                                           ; $7f74: $0d
	nop                                              ; $7f75: $00
	ld   a, [bc]                                     ; $7f76: $0a
	rrca                                             ; $7f77: $0f
	nop                                              ; $7f78: $00
	ld   bc, $a101                                   ; $7f79: $01 $01 $a1
	ld   sp, hl                                      ; $7f7c: $f9
	db   $10                                         ; $7f7d: $10
	and  e                                           ; $7f7e: $a3
	and  l                                           ; $7f7f: $a5
	db   $ec                                         ; $7f80: $ec
	cp   d                                           ; $7f81: $ba
	sbc  a                                           ; $7f82: $9f
	dec  c                                           ; $7f83: $0d
	ld   d, d                                        ; $7f84: $52
	sbc  c                                           ; $7f85: $99
	sub  [hl]                                        ; $7f86: $96
	sbc  a                                           ; $7f87: $9f
	dec  c                                           ; $7f88: $0d
	nop                                              ; $7f89: $00
	ld   a, [bc]                                     ; $7f8a: $0a
	inc  d                                           ; $7f8b: $14
	ld   a, [bc]                                     ; $7f8c: $0a
	ld   bc, $041c                                   ; $7f8d: $01 $1c $04
	rlca                                             ; $7f90: $07
	rlca                                             ; $7f91: $07
	ld   bc, $526f                                   ; $7f92: $01 $6f $52
	ld   [bc], a                                     ; $7f95: $02
	inc  de                                          ; $7f96: $13
	ld   l, a                                        ; $7f97: $6f
	sub  c                                           ; $7f98: $91
	and  c                                           ; $7f99: $a1
	rst  $38                                         ; $7f9a: $ff
	rst  $38                                         ; $7f9b: $ff
	dec  c                                           ; $7f9c: $0d
	ld   h, e                                        ; $7f9d: $63
	ld   [hl], c                                     ; $7f9e: $71
	ld   e, e                                        ; $7f9f: $5b
	and  e                                           ; $7fa0: $a3
	and  l                                           ; $7fa1: $a5
	db   $ec                                         ; $7fa2: $ec
	cp   d                                           ; $7fa3: $ba
	ld   a, h                                        ; $7fa4: $7c
	cp   b                                           ; $7fa5: $b8
	push hl                                          ; $7fa6: $e5
	pop  af                                          ; $7fa7: $f1
	ei                                               ; $7fa8: $fb
	dec  c                                           ; $7fa9: $0d
	ld   a, h                                        ; $7faa: $7c
	ld   l, h                                        ; $7fab: $6c
	ld   d, d                                        ; $7fac: $52
	ld   l, l                                        ; $7fad: $6d
	ld   [hl], l                                     ; $7fae: $75
	ld   h, l                                        ; $7faf: $65
	sub  l                                           ; $7fb0: $95
	ld   d, h                                        ; $7fb1: $54
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	ld   sp, hl                                      ; $7fb4: $f9
	dec  c                                           ; $7fb5: $0d
	nop                                              ; $7fb6: $00
	ld   a, [bc]                                     ; $7fb7: $0a
	add  hl, de                                      ; $7fb8: $19
	dec  b                                           ; $7fb9: $05
	ld   [bc], a                                     ; $7fba: $02
	ld   l, e                                        ; $7fbb: $6b
	and  c                                           ; $7fbc: $a1
	ld   a, b                                        ; $7fbd: $78
	ld   h, c                                        ; $7fbe: $61
	halt                                             ; $7fbf: $76
	ld   a, b                                        ; $7fc0: $78
	ld   d, d                                        ; $7fc1: $52
	sub  [hl]                                        ; $7fc2: $96
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	ld   h, d                                        ; $7fc5: $62
	adc  a                                           ; $7fc6: $8f
	and  c                                           ; $7fc7: $a1
	sbc  [hl]                                        ; $7fc8: $9e
	ld   [hl], d                                     ; $7fc9: $72
	ld   d, d                                        ; $7fca: $52
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	nop                                              ; $7fcd: $00
	ld   bc, $8a07                                   ; $7fce: $01 $07 $8a
	nop                                              ; $7fd1: $00
	ld   [bc], a                                     ; $7fd2: $02
	inc  bc                                          ; $7fd3: $03
	ld   bc, $2000                                   ; $7fd4: $01 $00 $20
	nop                                              ; $7fd7: $00
	rlca                                             ; $7fd8: $07
	dec  bc                                          ; $7fd9: $0b
	ld   bc, $0302                                   ; $7fda: $01 $02 $03
	ld   bc, $2001                                   ; $7fdd: $01 $01 $20
	nop                                              ; $7fe0: $00
	ld   b, $5f                                      ; $7fe1: $06 $5f
	ld   bc, $000f                                   ; $7fe3: $01 $0f $00
	ld   bc, $6b01                                   ; $7fe6: $01 $01 $6b
	and  c                                           ; $7fe9: $a1
	ld   a, b                                        ; $7fea: $78
	ld   h, c                                        ; $7feb: $61
	halt                                             ; $7fec: $76
	ld   a, b                                        ; $7fed: $78
	ld   d, d                                        ; $7fee: $52
	sub  [hl]                                        ; $7fef: $96
	sbc  a                                           ; $7ff0: $9f
	dec  c                                           ; $7ff1: $0d
	nop                                              ; $7ff2: $00
	ld   a, [bc]                                     ; $7ff3: $0a
	rrca                                             ; $7ff4: $0f
	inc  b                                           ; $7ff5: $04
	rlca                                             ; $7ff6: $07
	ld   bc, $bea7                                   ; $7ff7: $01 $a7 $be
	ld   a, [$a30d]                                  ; $7ffa: $fa $0d $a3
	and  l                                           ; $7ffd: $a5
	db   $ec                                         ; $7ffe: $ec
	cp   d                                           ; $7fff: $ba
