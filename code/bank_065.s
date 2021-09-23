; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $065", ROMX[$4000], BANK[$65]

	dec  c                                           ; $4000: $0d
	nop                                              ; $4001: $00
	ld   a, [bc]                                     ; $4002: $0a
	dec  b                                           ; $4003: $05
	ld   b, b                                        ; $4004: $40
	rst  $38                                         ; $4005: $ff
	inc  bc                                          ; $4006: $03
	rst  $38                                         ; $4007: $ff
	ld   bc, $2801                                   ; $4008: $01 $01 $28
	nop                                              ; $400b: $00
	ld   b, $33                                      ; $400c: $06 $33
	inc  bc                                          ; $400e: $03
	add  hl, de                                      ; $400f: $19
	inc  b                                           ; $4010: $04
	inc  bc                                          ; $4011: $03
	ld   h, l                                        ; $4012: $65
	and  c                                           ; $4013: $a1
	ld   h, c                                        ; $4014: $61
	ld   e, e                                        ; $4015: $5b
	sub  e                                           ; $4016: $93
	ld   d, h                                        ; $4017: $54
	ld   h, a                                        ; $4018: $67
	sbc  c                                           ; $4019: $99
	nop                                              ; $401a: $00
	nop                                              ; $401b: $00
	ld   h, [hl]                                     ; $401c: $66
	and  c                                           ; $401d: $a1
	ld   h, c                                        ; $401e: $61
	ld   d, h                                        ; $401f: $54
	ld   h, c                                        ; $4020: $61
	ld   e, e                                        ; $4021: $5b
	sub  e                                           ; $4022: $93
	ld   d, h                                        ; $4023: $54
	and  b                                           ; $4024: $a0
	ld   h, a                                        ; $4025: $67
	sbc  c                                           ; $4026: $99
	nop                                              ; $4027: $00
	ld   bc, $9756                                   ; $4028: $01 $56 $97
	ld   h, c                                        ; $402b: $61
	ld   e, e                                        ; $402c: $5b
	sub  e                                           ; $402d: $93
	ld   d, h                                        ; $402e: $54
	and  b                                           ; $402f: $a0
	ld   h, a                                        ; $4030: $67
	sbc  c                                           ; $4031: $99
	nop                                              ; $4032: $00
	ld   [bc], a                                     ; $4033: $02
	rlca                                             ; $4034: $07
	adc  e                                           ; $4035: $8b
	inc  b                                           ; $4036: $04
	ld   [bc], a                                     ; $4037: $02
	inc  bc                                          ; $4038: $03
	ld   bc, $2000                                   ; $4039: $01 $00 $20
	nop                                              ; $403c: $00
	rlca                                             ; $403d: $07
	cp   c                                           ; $403e: $b9
	inc  b                                           ; $403f: $04
	ld   [bc], a                                     ; $4040: $02
	inc  bc                                          ; $4041: $03
	ld   bc, $2001                                   ; $4042: $01 $01 $20
	nop                                              ; $4045: $00
	rlca                                             ; $4046: $07
	ld   sp, hl                                      ; $4047: $f9
	inc  b                                           ; $4048: $04
	ld   [bc], a                                     ; $4049: $02
	inc  bc                                          ; $404a: $03
	ld   bc, $2002                                   ; $404b: $01 $02 $20
	nop                                              ; $404e: $00
	ld   b, $58                                      ; $404f: $06 $58
	dec  b                                           ; $4051: $05
	rrca                                             ; $4052: $0f
	nop                                              ; $4053: $00
	ld   bc, $0301                                   ; $4054: $01 $01 $03
	ld   l, c                                        ; $4057: $69
	ld   [bc], a                                     ; $4058: $02
	xor  d                                           ; $4059: $aa
	ld   a, c                                        ; $405a: $79
	ld   h, l                                        ; $405b: $65
	and  c                                           ; $405c: $a1
	ld   h, c                                        ; $405d: $61
	ld   e, e                                        ; $405e: $5b
	sub  e                                           ; $405f: $93
	ld   d, h                                        ; $4060: $54
	and  b                                           ; $4061: $a0
	ld   h, l                                        ; $4062: $65
	ld   [hl], h                                     ; $4063: $74
	rst  $38                                         ; $4064: $ff
	rst  $38                                         ; $4065: $ff
	dec  c                                           ; $4066: $0d
	sub  [hl]                                        ; $4067: $96
	ld   h, l                                        ; $4068: $65
	ld   a, [$ab10]                                  ; $4069: $fa $10 $ab
	call nz, $fbb2                                   ; $406c: $c4 $b2 $fb
	ld   l, [hl]                                     ; $406f: $6e
	ld   a, [$000d]                                  ; $4070: $fa $0d $00
	ld   a, [bc]                                     ; $4073: $0a
	dec  b                                           ; $4074: $05
	ld   b, b                                        ; $4075: $40
	rst  $38                                         ; $4076: $ff
	inc  bc                                          ; $4077: $03
	rst  $38                                         ; $4078: $ff
	ld   bc, $2801                                   ; $4079: $01 $01 $28
	nop                                              ; $407c: $00
	ld   b, $80                                      ; $407d: $06 $80
	dec  b                                           ; $407f: $05
	rrca                                             ; $4080: $0f
	nop                                              ; $4081: $00
	ld   bc, $0301                                   ; $4082: $01 $01 $03
	ld   l, c                                        ; $4085: $69
	ld   [bc], a                                     ; $4086: $02
	xor  d                                           ; $4087: $aa
	ld   a, c                                        ; $4088: $79
	sbc  [hl]                                        ; $4089: $9e
	ld   h, [hl]                                     ; $408a: $66
	and  c                                           ; $408b: $a1
	ld   h, c                                        ; $408c: $61
	ld   d, h                                        ; $408d: $54
	ld   h, c                                        ; $408e: $61
	ld   e, e                                        ; $408f: $5b
	sub  e                                           ; $4090: $93
	ld   d, h                                        ; $4091: $54
	and  b                                           ; $4092: $a0
	dec  c                                           ; $4093: $0d
	ld   h, l                                        ; $4094: $65
	ld   [hl], h                                     ; $4095: $74
	rst  $38                                         ; $4096: $ff
	rst  $38                                         ; $4097: $ff
	and  c                                           ; $4098: $a1
	ld   sp, hl                                      ; $4099: $f9
	db   $10                                         ; $409a: $10
	ld   a, b                                        ; $409b: $78
	and  c                                           ; $409c: $a1
	ld   [hl], l                                     ; $409d: $75
	ld   l, e                                        ; $409e: $6b
	and  c                                           ; $409f: $a1
	ld   a, b                                        ; $40a0: $78
	ld   [bc], a                                     ; $40a1: $02
	jp   $000d                                       ; $40a2: $c3 $0d $00


	dec  b                                           ; $40a5: $05
	ld   b, b                                        ; $40a6: $40
	rst  $38                                         ; $40a7: $ff
	inc  bc                                          ; $40a8: $03
	rst  $38                                         ; $40a9: $ff
	ld   bc, $2801                                   ; $40aa: $01 $01 $28
	nop                                              ; $40ad: $00
	ld   bc, $7865                                   ; $40ae: $01 $65 $78
	ld   e, e                                        ; $40b1: $5b
	sub  c                                           ; $40b2: $91
	ld   a, b                                        ; $40b3: $78
	sub  a                                           ; $40b4: $97
	ld   a, b                                        ; $40b5: $78
	ld   d, d                                        ; $40b6: $52
	and  c                                           ; $40b7: $a1
	ld   l, [hl]                                     ; $40b8: $6e
	ld   sp, hl                                      ; $40b9: $f9
	dec  c                                           ; $40ba: $0d
	nop                                              ; $40bb: $00
	ld   a, [bc]                                     ; $40bc: $0a
	ld   b, $48                                      ; $40bd: $06 $48
	inc  b                                           ; $40bf: $04
	rrca                                             ; $40c0: $0f
	nop                                              ; $40c1: $00
	ld   bc, $9601                                   ; $40c2: $01 $01 $96
	ld   h, l                                        ; $40c5: $65
	sbc  [hl]                                        ; $40c6: $9e
	inc  bc                                          ; $40c7: $03
	ld   l, c                                        ; $40c8: $69
	ld   [bc], a                                     ; $40c9: $02
	xor  d                                           ; $40ca: $aa
	ld   a, c                                        ; $40cb: $79
	ld   d, [hl]                                     ; $40cc: $56
	sub  a                                           ; $40cd: $97
	ld   h, c                                        ; $40ce: $61
	ld   e, e                                        ; $40cf: $5b
	sub  e                                           ; $40d0: $93
	ld   d, h                                        ; $40d1: $54
	and  b                                           ; $40d2: $a0
	dec  c                                           ; $40d3: $0d
	ld   h, l                                        ; $40d4: $65
	ld   [hl], h                                     ; $40d5: $74
	rst  $38                                         ; $40d6: $ff
	rst  $38                                         ; $40d7: $ff
	and  c                                           ; $40d8: $a1
	ld   sp, hl                                      ; $40d9: $f9
	db   $10                                         ; $40da: $10
	inc  b                                           ; $40db: $04
	ld   l, l                                        ; $40dc: $6d
	ld   a, c                                        ; $40dd: $79
	ld   d, [hl]                                     ; $40de: $56
	sub  a                                           ; $40df: $97
	ld   a, b                                        ; $40e0: $78
	and  c                                           ; $40e1: $a1
	ld   [hl], h                                     ; $40e2: $74
	dec  c                                           ; $40e3: $0d
	ld   a, b                                        ; $40e4: $78
	ld   d, d                                        ; $40e5: $52
	sub  [hl]                                        ; $40e6: $96
	ld   a, b                                        ; $40e7: $78
	rst  $38                                         ; $40e8: $ff
	rst  $38                                         ; $40e9: $ff
	dec  c                                           ; $40ea: $0d
	nop                                              ; $40eb: $00
	ld   a, [bc]                                     ; $40ec: $0a
	ld   bc, $fc78                                   ; $40ed: $01 $78 $fc
	and  c                                           ; $40f0: $a1
	ld   [hl], h                                     ; $40f1: $74
	ld   [bc], a                                     ; $40f2: $02
	sbc  l                                           ; $40f3: $9d
	ld   [hl], c                                     ; $40f4: $71
	ld   [hl], h                                     ; $40f5: $74
	sbc  c                                           ; $40f6: $99
	inc  b                                           ; $40f7: $04
	ld   a, d                                        ; $40f8: $7a
	ld   [bc], a                                     ; $40f9: $02
	ld   a, e                                        ; $40fa: $7b
	ld   h, [hl]                                     ; $40fb: $66
	sub  c                                           ; $40fc: $91
	dec  c                                           ; $40fd: $0d
	ld   a, b                                        ; $40fe: $78
	ld   d, d                                        ; $40ff: $52
	ld   l, h                                        ; $4100: $6c
	sbc  a                                           ; $4101: $9f
	dec  c                                           ; $4102: $0d
	nop                                              ; $4103: $00
	dec  b                                           ; $4104: $05
	ld   b, b                                        ; $4105: $40
	rst  $38                                         ; $4106: $ff
	inc  bc                                          ; $4107: $03
	rst  $38                                         ; $4108: $ff
	ld   bc, $2801                                   ; $4109: $01 $01 $28
	nop                                              ; $410c: $00
	ld   bc, $2805                                   ; $410d: $01 $05 $28
	ld   e, d                                        ; $4110: $5a
	ld   a, b                                        ; $4111: $78
	ld   e, e                                        ; $4112: $5b
	sub  c                                           ; $4113: $91
	ld   e, b                                        ; $4114: $58
	ld   e, l                                        ; $4115: $5d
	sbc  d                                           ; $4116: $9a
	sbc  c                                           ; $4117: $99
	ld   a, [$000d]                                  ; $4118: $fa $0d $00
	ld   a, [bc]                                     ; $411b: $0a
	ld   b, $48                                      ; $411c: $06 $48
	inc  b                                           ; $411e: $04
	rrca                                             ; $411f: $0f
	nop                                              ; $4120: $00
	ld   bc, $0301                                   ; $4121: $01 $01 $03
	dec  c                                           ; $4124: $0d
	inc  bc                                          ; $4125: $03
	ld   h, l                                        ; $4126: $65
	ld   h, b                                        ; $4127: $60
	ld   a, c                                        ; $4128: $79
	rst  $38                                         ; $4129: $ff
	rst  $38                                         ; $412a: $ff
	dec  c                                           ; $412b: $0d
	rst  $38                                         ; $412c: $ff
	rst  $38                                         ; $412d: $ff
	rst  $38                                         ; $412e: $ff
	rst  $38                                         ; $412f: $ff
	ld   [hl], a                                     ; $4130: $77
	ld   d, h                                        ; $4131: $54
	ld   h, l                                        ; $4132: $65
	sub  [hl]                                        ; $4133: $96
	ld   d, h                                        ; $4134: $54
	ld   e, c                                        ; $4135: $59
	rst  $38                                         ; $4136: $ff
	rst  $38                                         ; $4137: $ff
	dec  c                                           ; $4138: $0d
	nop                                              ; $4139: $00
	ld   a, [bc]                                     ; $413a: $0a
	dec  b                                           ; $413b: $05
	ld   b, b                                        ; $413c: $40
	rst  $38                                         ; $413d: $ff
	inc  bc                                          ; $413e: $03
	rst  $38                                         ; $413f: $ff
	ld   bc, $2801                                   ; $4140: $01 $01 $28
	nop                                              ; $4143: $00
	ld   b, $48                                      ; $4144: $06 $48
	inc  b                                           ; $4146: $04
	rlca                                             ; $4147: $07
	sbc  e                                           ; $4148: $9b
	dec  b                                           ; $4149: $05
	inc  bc                                          ; $414a: $03
	rst  $38                                         ; $414b: $ff
	ld   bc, $2005                                   ; $414c: $01 $05 $20
	nop                                              ; $414f: $00
	rlca                                             ; $4150: $07
	db   $eb                                         ; $4151: $eb
	dec  b                                           ; $4152: $05
	inc  bc                                          ; $4153: $03
	rst  $38                                         ; $4154: $ff
	ld   bc, $2006                                   ; $4155: $01 $06 $20
	nop                                              ; $4158: $00
	rlca                                             ; $4159: $07
	ld   b, e                                        ; $415a: $43
	ld   b, $03                                      ; $415b: $06 $03
	rst  $38                                         ; $415d: $ff
	ld   bc, $2507                                   ; $415e: $01 $07 $25
	nop                                              ; $4161: $00
	inc  hl                                          ; $4162: $23
	inc  b                                           ; $4163: $04
	rrca                                             ; $4164: $0f
	nop                                              ; $4165: $00
	ld   bc, $df01                                   ; $4166: $01 $01 $df
	db   $ec                                         ; $4169: $ec
	and  e                                           ; $416a: $a3
	ld   h, e                                        ; $416b: $63
	and  c                                           ; $416c: $a1
	sbc  a                                           ; $416d: $9f
	dec  c                                           ; $416e: $0d
	ld   e, b                                        ; $416f: $58
	ld   a, l                                        ; $4170: $7d
	sub  [hl]                                        ; $4171: $96
	ld   d, h                                        ; $4172: $54
	ld   h, d                                        ; $4173: $62
	ld   h, h                                        ; $4174: $64
	ld   d, d                                        ; $4175: $52
	adc  h                                           ; $4176: $8c
	ld   h, a                                        ; $4177: $67
	sbc  a                                           ; $4178: $9f
	dec  c                                           ; $4179: $0d
	nop                                              ; $417a: $00
	ld   a, [bc]                                     ; $417b: $0a
	inc  e                                           ; $417c: $1c
	inc  bc                                          ; $417d: $03
	inc  bc                                          ; $417e: $03
	inc  bc                                          ; $417f: $03
	dec  e                                           ; $4180: $1d
	ld   b, b                                        ; $4181: $40
	inc  de                                          ; $4182: $13
	inc  bc                                          ; $4183: $03
	inc  de                                          ; $4184: $13
	ld   bc, $2802                                   ; $4185: $01 $02 $28
	nop                                              ; $4188: $00
	ld   bc, $7d58                                   ; $4189: $01 $58 $7d
	sub  [hl]                                        ; $418c: $96
	ld   d, h                                        ; $418d: $54
	sbc  a                                           ; $418e: $9f
	ld   [$5d00], sp                                 ; $418f: $08 $00 $5d
	and  c                                           ; $4192: $a1
	sbc  a                                           ; $4193: $9f
	dec  c                                           ; $4194: $0d
	ld   h, [hl]                                     ; $4195: $66
	sub  c                                           ; $4196: $91
	ld   d, b                                        ; $4197: $50
	sbc  [hl]                                        ; $4198: $9e
	ld   [bc], a                                     ; $4199: $02
	and  l                                           ; $419a: $a5
	inc  b                                           ; $419b: $04
	xor  d                                           ; $419c: $aa
	ld   [bc], a                                     ; $419d: $02
	jr   nz, jr_065_41a4                             ; $419e: $20 $04

	xor  d                                           ; $41a0: $aa
	dec  c                                           ; $41a1: $0d
	ld   [hl], d                                     ; $41a2: $72
	ld   e, e                                        ; $41a3: $5b

jr_065_41a4:
	ld   d, b                                        ; $41a4: $50
	ld   [hl], c                                     ; $41a5: $71
	ld   [hl], h                                     ; $41a6: $74
	sub  b                                           ; $41a7: $90
	sub  a                                           ; $41a8: $97
	ld   d, h                                        ; $41a9: $54
	sbc  l                                           ; $41aa: $9d
	sbc  a                                           ; $41ab: $9f
	dec  c                                           ; $41ac: $0d
	nop                                              ; $41ad: $00
	ld   a, [bc]                                     ; $41ae: $0a
	ld   b, $ab                                      ; $41af: $06 $ab
	ld   b, $23                                      ; $41b1: $06 $23
	inc  b                                           ; $41b3: $04
	rrca                                             ; $41b4: $0f
	nop                                              ; $41b5: $00
	ld   bc, $030d                                   ; $41b6: $01 $0d $03
	nop                                              ; $41b9: $00
	ld   bc, $7d58                                   ; $41ba: $01 $58 $7d
	sub  [hl]                                        ; $41bd: $96
	ld   d, h                                        ; $41be: $54
	ld   h, d                                        ; $41bf: $62
	ld   h, h                                        ; $41c0: $64
	ld   d, d                                        ; $41c1: $52
	adc  h                                           ; $41c2: $8c
	ld   h, a                                        ; $41c3: $67
	sbc  a                                           ; $41c4: $9f
	dec  c                                           ; $41c5: $0d
	rst  JumpTable                                         ; $41c6: $df
	db   $ec                                         ; $41c7: $ec
	and  e                                           ; $41c8: $a3
	ld   h, e                                        ; $41c9: $63
	and  c                                           ; $41ca: $a1
	sbc  a                                           ; $41cb: $9f
	dec  c                                           ; $41cc: $0d
	ld   e, b                                        ; $41cd: $58
	inc  b                                           ; $41ce: $04
	rla                                              ; $41cf: $17
	ld   l, l                                        ; $41d0: $6d
	ld   l, c                                        ; $41d1: $69
	ld   h, l                                        ; $41d2: $65
	ld   [hl], h                                     ; $41d3: $74
	ld   h, a                                        ; $41d4: $67
	adc  l                                           ; $41d5: $8d
	adc  h                                           ; $41d6: $8c
	ld   l, c                                        ; $41d7: $69
	and  c                                           ; $41d8: $a1
	sbc  a                                           ; $41d9: $9f
	dec  c                                           ; $41da: $0d
	nop                                              ; $41db: $00
	ld   a, [bc]                                     ; $41dc: $0a
	inc  e                                           ; $41dd: $1c
	inc  bc                                          ; $41de: $03
	inc  bc                                          ; $41df: $03
	inc  bc                                          ; $41e0: $03
	ld   bc, $7d58                                   ; $41e1: $01 $58 $7d
	sub  [hl]                                        ; $41e4: $96
	ld   d, h                                        ; $41e5: $54
	sbc  a                                           ; $41e6: $9f
	ld   [$5d00], sp                                 ; $41e7: $08 $00 $5d
	and  c                                           ; $41ea: $a1
	sbc  a                                           ; $41eb: $9f
	dec  c                                           ; $41ec: $0d
	ld   h, [hl]                                     ; $41ed: $66
	sub  c                                           ; $41ee: $91
	ld   d, b                                        ; $41ef: $50
	sbc  [hl]                                        ; $41f0: $9e
	ld   [bc], a                                     ; $41f1: $02
	and  l                                           ; $41f2: $a5
	inc  b                                           ; $41f3: $04
	xor  d                                           ; $41f4: $aa
	ld   [bc], a                                     ; $41f5: $02
	jr   nz, jr_065_41fc                             ; $41f6: $20 $04

	xor  d                                           ; $41f8: $aa
	dec  c                                           ; $41f9: $0d
	ld   [hl], d                                     ; $41fa: $72
	ld   e, e                                        ; $41fb: $5b

jr_065_41fc:
	ld   d, b                                        ; $41fc: $50
	ld   [hl], c                                     ; $41fd: $71
	ld   [hl], h                                     ; $41fe: $74
	sub  b                                           ; $41ff: $90
	sub  a                                           ; $4200: $97
	ld   d, h                                        ; $4201: $54
	sbc  l                                           ; $4202: $9d
	sbc  a                                           ; $4203: $9f
	dec  c                                           ; $4204: $0d
	nop                                              ; $4205: $00
	ld   a, [bc]                                     ; $4206: $0a
	ld   b, $ab                                      ; $4207: $06 $ab
	ld   b, $23                                      ; $4209: $06 $23
	inc  b                                           ; $420b: $04
	inc  e                                           ; $420c: $1c
	inc  bc                                          ; $420d: $03
	ld   [bc], a                                     ; $420e: $02
	ld   [bc], a                                     ; $420f: $02
	dec  e                                           ; $4210: $1d
	ld   b, b                                        ; $4211: $40
	inc  de                                          ; $4212: $13
	inc  bc                                          ; $4213: $03
	inc  de                                          ; $4214: $13
	ld   bc, $2903                                   ; $4215: $01 $03 $29
	nop                                              ; $4218: $00
	ld   bc, $0008                                   ; $4219: $01 $08 $00
	ld   e, l                                        ; $421c: $5d
	and  c                                           ; $421d: $a1
	sbc  [hl]                                        ; $421e: $9e
	ld   e, b                                        ; $421f: $58
	ld   l, e                                        ; $4220: $6b
	ld   d, d                                        ; $4221: $52
	sbc  l                                           ; $4222: $9d
	sub  [hl]                                        ; $4223: $96
	sbc  a                                           ; $4224: $9f
	dec  c                                           ; $4225: $0d
	inc  b                                           ; $4226: $04
	rla                                              ; $4227: $17
	ld   l, a                                        ; $4228: $6f
	ld   [bc], a                                     ; $4229: $02
	ld   a, e                                        ; $422a: $7b
	sbc  l                                           ; $422b: $9d
	ld   l, c                                        ; $422c: $69
	ld   a, h                                        ; $422d: $7c
	inc  bc                                          ; $422e: $03
	ld   l, a                                        ; $422f: $6f
	ld   a, l                                        ; $4230: $7d
	sbc  [hl]                                        ; $4231: $9e
	inc  bc                                          ; $4232: $03
	ld   hl, $0d79                                   ; $4233: $21 $79 $0d
	ld   d, $04                                      ; $4236: $16 $04
	sbc  [hl]                                        ; $4238: $9e
	inc  bc                                          ; $4239: $03
	ld   c, a                                        ; $423a: $4f
	ld   a, c                                        ; $423b: $79
	sbc  [hl]                                        ; $423c: $9e
	ld   e, d                                        ; $423d: $5a
	inc  bc                                          ; $423e: $03
	ld   hl, $3503                                   ; $423f: $21 $03 $35
	sub  [hl]                                        ; $4242: $96
	sbc  a                                           ; $4243: $9f
	dec  c                                           ; $4244: $0d
	nop                                              ; $4245: $00
	ld   a, [bc]                                     ; $4246: $0a
	inc  e                                           ; $4247: $1c
	inc  bc                                          ; $4248: $03
	nop                                              ; $4249: $00
	nop                                              ; $424a: $00
	ld   bc, $599d                                   ; $424b: $01 $9d $59
	sbc  b                                           ; $424e: $98
	adc  h                                           ; $424f: $8c
	ld   h, l                                        ; $4250: $65
	ld   l, l                                        ; $4251: $6d
	ld   e, c                                        ; $4252: $59
	ld   sp, hl                                      ; $4253: $f9
	dec  c                                           ; $4254: $0d
	ld   h, [hl]                                     ; $4255: $66
	sub  c                                           ; $4256: $91
	ld   d, b                                        ; $4257: $50
	sbc  [hl]                                        ; $4258: $9e
	ld   [bc], a                                     ; $4259: $02
	and  l                                           ; $425a: $a5
	inc  b                                           ; $425b: $04
	xor  d                                           ; $425c: $aa
	ld   [bc], a                                     ; $425d: $02
	jr   nz, jr_065_4264                             ; $425e: $20 $04

	xor  d                                           ; $4260: $aa
	dec  c                                           ; $4261: $0d
	ld   [hl], d                                     ; $4262: $72
	ld   e, e                                        ; $4263: $5b

jr_065_4264:
	ld   d, b                                        ; $4264: $50
	ld   [hl], c                                     ; $4265: $71
	ld   [hl], h                                     ; $4266: $74
	sub  b                                           ; $4267: $90
	sub  a                                           ; $4268: $97
	ld   d, h                                        ; $4269: $54
	sbc  l                                           ; $426a: $9d
	sbc  a                                           ; $426b: $9f
	dec  c                                           ; $426c: $0d
	nop                                              ; $426d: $00
	ld   a, [bc]                                     ; $426e: $0a
	ld   b, $ab                                      ; $426f: $06 $ab
	ld   b, $05                                      ; $4271: $06 $05
	ld   b, b                                        ; $4273: $40
	rst  $38                                         ; $4274: $ff
	ld   bc, $0000                                   ; $4275: $01 $00 $00
	ld   bc, $9a6b                                   ; $4278: $01 $6b $9a
	ld   h, [hl]                                     ; $427b: $66
	sub  c                                           ; $427c: $91
	sbc  [hl]                                        ; $427d: $9e
	inc  b                                           ; $427e: $04
	dec  bc                                          ; $427f: $0b
	inc  b                                           ; $4280: $04
	rra                                              ; $4281: $1f
	and  b                                           ; $4282: $a0
	ld   l, e                                        ; $4283: $6b
	ld   d, h                                        ; $4284: $54
	ld   h, [hl]                                     ; $4285: $66
	ld   h, l                                        ; $4286: $65
	ld   a, c                                        ; $4287: $79
	dec  c                                           ; $4288: $0d
	ld   [bc], a                                     ; $4289: $02
	ld   a, a                                        ; $428a: $7f
	ld   e, l                                        ; $428b: $5d
	sbc  l                                           ; $428c: $9d
	sub  [hl]                                        ; $428d: $96
	sbc  a                                           ; $428e: $9f
	dec  c                                           ; $428f: $0d
	nop                                              ; $4290: $00
	ld   a, [bc]                                     ; $4291: $0a
	dec  c                                           ; $4292: $0d
	nop                                              ; $4293: $00
	nop                                              ; $4294: $00
	rrca                                             ; $4295: $0f
	nop                                              ; $4296: $00
	ld   bc, $9d23                                   ; $4297: $01 $23 $9d
	inc  e                                           ; $429a: $1c
	inc  bc                                          ; $429b: $03
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	ld   bc, $9166                                   ; $429e: $01 $66 $91
	ld   d, b                                        ; $42a1: $50
	dec  b                                           ; $42a2: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42a3: $cf
	adc  a                                           ; $42a4: $8f
	sbc  c                                           ; $42a5: $99
	sbc  l                                           ; $42a6: $9d
	sub  [hl]                                        ; $42a7: $96
	sbc  a                                           ; $42a8: $9f
	dec  c                                           ; $42a9: $0d
	inc  bc                                          ; $42aa: $03
	ld   l, e                                        ; $42ab: $6b
	ld   [bc], a                                     ; $42ac: $02
	ld   a, [$02a0]                                  ; $42ad: $fa $a0 $02
	sbc  l                                           ; $42b0: $9d
	ld   d, h                                        ; $42b1: $54
	ld   e, c                                        ; $42b2: $59
	sub  a                                           ; $42b3: $97
	ld   e, b                                        ; $42b4: $58
	adc  d                                           ; $42b5: $8a
	ld   d, [hl]                                     ; $42b6: $56
	ld   [hl], h                                     ; $42b7: $74
	dec  c                                           ; $42b8: $0d
	ld   l, a                                        ; $42b9: $6f
	sub  l                                           ; $42ba: $95
	ld   d, h                                        ; $42bb: $54
	ld   l, [hl]                                     ; $42bc: $6e
	ld   d, d                                        ; $42bd: $52
	sbc  a                                           ; $42be: $9f
	dec  c                                           ; $42bf: $0d
	nop                                              ; $42c0: $00
	ld   a, [bc]                                     ; $42c1: $0a
	ld   bc, $688c                                   ; $42c2: $01 $8c $68
	and  l                                           ; $42c5: $a5
	cp   d                                           ; $42c6: $ba
	and  b                                           ; $42c7: $a0
	ld   a, [bc]                                     ; $42c8: $0a
	ld   [bc], a                                     ; $42c9: $02
	ld   d, $72                                      ; $42ca: $16 $72
	dec  b                                           ; $42cc: $05
	ld   l, d                                        ; $42cd: $6a
	inc  b                                           ; $42ce: $04
	dec  de                                          ; $42cf: $1b
	ld   a, [bc]                                     ; $42d0: $0a
	inc  bc                                          ; $42d1: $03
	ld   h, l                                        ; $42d2: $65
	ld   [hl], h                                     ; $42d3: $74
	sbc  [hl]                                        ; $42d4: $9e
	dec  c                                           ; $42d5: $0d
	inc  bc                                          ; $42d6: $03
	ld   l, b                                        ; $42d7: $68
	ld   a, c                                        ; $42d8: $79
	rst  ToBoot                                         ; $42d9: $c7
	ei                                               ; $42da: $fb
	rst  $10                                         ; $42db: $d7
	db   $ed                                         ; $42dc: $ed
	and  b                                           ; $42dd: $a0
	ld   a, [bc]                                     ; $42de: $0a
	ld   [bc], a                                     ; $42df: $02
	ld   [bc], a                                     ; $42e0: $02
	inc  e                                           ; $42e1: $1c
	or   [hl]                                        ; $42e2: $b6
	and  l                                           ; $42e3: $a5
	jp   z, WaitUntilBCVBlankIntsHandledIfLCDOn                                    ; $42e4: $ca $79 $0a

	inc  bc                                          ; $42e7: $03
	dec  c                                           ; $42e8: $0d
	inc  b                                           ; $42e9: $04
	dec  de                                          ; $42ea: $1b
	ld   e, c                                        ; $42eb: $59
	ld   h, l                                        ; $42ec: $65
	ld   [hl], h                                     ; $42ed: $74
	rst  $38                                         ; $42ee: $ff
	rst  $38                                         ; $42ef: $ff
	dec  c                                           ; $42f0: $0d
	nop                                              ; $42f1: $00
	ld   a, [bc]                                     ; $42f2: $0a
	ld   bc, $6903                                   ; $42f3: $01 $03 $69
	ld   [bc], a                                     ; $42f6: $02
	xor  d                                           ; $42f7: $aa
	ld   a, c                                        ; $42f8: $79
	adc  c                                           ; $42f9: $89
	ld   d, h                                        ; $42fa: $54
	ld   e, e                                        ; $42fb: $5b
	ld   [hl], l                                     ; $42fc: $75
	dec  c                                           ; $42fd: $0d
	ld   a, [bc]                                     ; $42fe: $0a
	ld   [bc], a                                     ; $42ff: $02
	dec  b                                           ; $4300: $05
	ld   [de], a                                     ; $4301: $12
	ld   l, a                                        ; $4302: $6f
	inc  b                                           ; $4303: $04
	sub  c                                           ; $4304: $91
	and  b                                           ; $4305: $a0
	ld   d, b                                        ; $4306: $50
	ld   [hl], d                                     ; $4307: $72
	adc  a                                           ; $4308: $8f
	sbc  c                                           ; $4309: $99
	ld   a, [bc]                                     ; $430a: $0a
	inc  bc                                          ; $430b: $03
	ld   a, h                                        ; $430c: $7c
	sub  [hl]                                        ; $430d: $96
	sbc  a                                           ; $430e: $9f
	dec  c                                           ; $430f: $0d
	nop                                              ; $4310: $00
	ld   a, [bc]                                     ; $4311: $0a
	ld   bc, $9e04                                   ; $4312: $01 $04 $9e
	ld   e, c                                        ; $4315: $59
	ld   [hl], c                                     ; $4316: $71
	ld   l, l                                        ; $4317: $6d
	sbc  l                                           ; $4318: $9d
	ld   a, e                                        ; $4319: $7b
	ld   sp, hl                                      ; $431a: $f9
	dec  c                                           ; $431b: $0d
	ld   h, [hl]                                     ; $431c: $66
	sub  c                                           ; $431d: $91
	sbc  [hl]                                        ; $431e: $9e
	dec  b                                           ; $431f: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4320: $cf
	adc  a                                           ; $4321: $8f
	ld   [hl], h                                     ; $4322: $74
	ld   l, a                                        ; $4323: $6f
	sub  l                                           ; $4324: $95
	ld   d, h                                        ; $4325: $54
	ld   l, [hl]                                     ; $4326: $6e
	ld   d, d                                        ; $4327: $52
	sbc  a                                           ; $4328: $9f
	dec  c                                           ; $4329: $0d
	nop                                              ; $432a: $00
	ld   a, [bc]                                     ; $432b: $0a
	dec  c                                           ; $432c: $0d
	nop                                              ; $432d: $00
	nop                                              ; $432e: $00
	rrca                                             ; $432f: $0f
	nop                                              ; $4330: $00
	ld   bc, $8c01                                   ; $4331: $01 $01 $8c
	ld   l, b                                        ; $4334: $68
	ld   a, l                                        ; $4335: $7d
	and  l                                           ; $4336: $a5
	cp   d                                           ; $4337: $ba
	and  b                                           ; $4338: $a0
	rst  $38                                         ; $4339: $ff
	rst  $38                                         ; $433a: $ff
	dec  c                                           ; $433b: $0d
	nop                                              ; $433c: $00
	ld   a, [bc]                                     ; $433d: $0a
	add  hl, de                                      ; $433e: $19
	dec  b                                           ; $433f: $05
	inc  bc                                          ; $4340: $03
	inc  d                                           ; $4341: $14
	ld   [hl], d                                     ; $4342: $72
	inc  bc                                          ; $4343: $03
	ccf                                              ; $4344: $3f
	ld   a, e                                        ; $4345: $7b
	sbc  c                                           ; $4346: $99
	nop                                              ; $4347: $00
	nop                                              ; $4348: $00
	ld   d, $72                                      ; $4349: $16 $72
	inc  bc                                          ; $434b: $03
	ld   a, [hl-]                                    ; $434c: $3a
	ld   [hl], h                                     ; $434d: $74
	sbc  c                                           ; $434e: $99
	nop                                              ; $434f: $00
	ld   bc, $7216                                   ; $4350: $01 $16 $72
	dec  b                                           ; $4353: $05
	ld   l, d                                        ; $4354: $6a
	inc  b                                           ; $4355: $04
	dec  de                                          ; $4356: $1b
	ld   h, a                                        ; $4357: $67
	sbc  c                                           ; $4358: $99
	nop                                              ; $4359: $00
	ld   [bc], a                                     ; $435a: $02
	rlca                                             ; $435b: $07
	or   d                                           ; $435c: $b2
	rlca                                             ; $435d: $07
	ld   [bc], a                                     ; $435e: $02
	inc  bc                                          ; $435f: $03
	ld   bc, $2000                                   ; $4360: $01 $00 $20
	nop                                              ; $4363: $00
	rlca                                             ; $4364: $07
	rst  $28                                         ; $4365: $ef
	rlca                                             ; $4366: $07
	ld   [bc], a                                     ; $4367: $02
	inc  bc                                          ; $4368: $03
	ld   bc, $2001                                   ; $4369: $01 $01 $20
	nop                                              ; $436c: $00
	rlca                                             ; $436d: $07
	ld   d, [hl]                                     ; $436e: $56
	ld   [$0302], sp                                 ; $436f: $08 $02 $03
	ld   bc, $2002                                   ; $4372: $01 $02 $20
	nop                                              ; $4375: $00
	ld   b, $31                                      ; $4376: $06 $31
	ld   [$000f], sp                                 ; $4378: $08 $0f $00
	ld   bc, $a501                                   ; $437b: $01 $01 $a5
	cp   d                                           ; $437e: $ba
	and  b                                           ; $437f: $a0
	inc  d                                           ; $4380: $14
	ld   [hl], d                                     ; $4381: $72
	inc  bc                                          ; $4382: $03
	ccf                                              ; $4383: $3f
	ld   a, e                                        ; $4384: $7b
	sbc  c                                           ; $4385: $99
	rst  $38                                         ; $4386: $ff
	rst  $38                                         ; $4387: $ff
	dec  c                                           ; $4388: $0d
	ld   l, [hl]                                     ; $4389: $6e
	ld   [hl], c                                     ; $438a: $71
	ld   l, l                                        ; $438b: $6d
	ld   e, c                                        ; $438c: $59
	ld   a, b                                        ; $438d: $78
	ld   sp, hl                                      ; $438e: $f9
	dec  c                                           ; $438f: $0d
	nop                                              ; $4390: $00
	ld   a, [bc]                                     ; $4391: $0a
	ld   c, $9e                                      ; $4392: $0e $9e
	rrca                                             ; $4394: $0f
	inc  bc                                          ; $4395: $03
	nop                                              ; $4396: $00
	ld   bc, $5a6f                                   ; $4397: $01 $6f $5a
	ld   d, h                                        ; $439a: $54
	sbc  l                                           ; $439b: $9d
	sub  [hl]                                        ; $439c: $96
	sbc  a                                           ; $439d: $9f
	dec  c                                           ; $439e: $0d
	and  l                                           ; $439f: $a5
	cp   d                                           ; $43a0: $ba
	and  b                                           ; $43a1: $a0
	ld   d, $72                                      ; $43a2: $16 $72
	dec  b                                           ; $43a4: $05
	ld   l, d                                        ; $43a5: $6a
	inc  b                                           ; $43a6: $04
	dec  de                                          ; $43a7: $1b
	ld   h, e                                        ; $43a8: $63
	ld   l, c                                        ; $43a9: $69
	sbc  c                                           ; $43aa: $99
	ld   a, h                                        ; $43ab: $7c
	sub  [hl]                                        ; $43ac: $96
	sbc  a                                           ; $43ad: $9f
	dec  c                                           ; $43ae: $0d
	nop                                              ; $43af: $00
	ld   a, [bc]                                     ; $43b0: $0a
	ld   c, $a0                                      ; $43b1: $0e $a0
	ld   b, $a8                                      ; $43b3: $06 $a8
	ld   [$000f], sp                                 ; $43b5: $08 $0f $00
	ld   bc, $a501                                   ; $43b8: $01 $01 $a5
	cp   d                                           ; $43bb: $ba
	and  b                                           ; $43bc: $a0
	ld   d, $72                                      ; $43bd: $16 $72
	inc  bc                                          ; $43bf: $03
	ld   a, [hl-]                                    ; $43c0: $3a
	ld   [hl], h                                     ; $43c1: $74
	sbc  c                                           ; $43c2: $99
	rst  $38                                         ; $43c3: $ff
	rst  $38                                         ; $43c4: $ff
	dec  c                                           ; $43c5: $0d
	ld   l, [hl]                                     ; $43c6: $6e
	ld   [hl], c                                     ; $43c7: $71
	ld   l, l                                        ; $43c8: $6d
	ld   e, c                                        ; $43c9: $59
	ld   a, b                                        ; $43ca: $78
	ld   sp, hl                                      ; $43cb: $f9
	dec  c                                           ; $43cc: $0d
	nop                                              ; $43cd: $00
	ld   a, [bc]                                     ; $43ce: $0a
	ld   c, $9f                                      ; $43cf: $0e $9f
	rrca                                             ; $43d1: $0f
	inc  bc                                          ; $43d2: $03
	ld   [bc], a                                     ; $43d3: $02
	ld   bc, $3a03                                   ; $43d4: $01 $03 $3a
	ld   [hl], h                                     ; $43d7: $74
	ld   [hl], h                                     ; $43d8: $74
	ld   [hl], a                                     ; $43d9: $77
	ld   d, h                                        ; $43da: $54
	ld   h, a                                        ; $43db: $67
	sbc  c                                           ; $43dc: $99
	ld   a, h                                        ; $43dd: $7c
	sub  [hl]                                        ; $43de: $96
	ld   a, [$a50d]                                  ; $43df: $fa $0d $a5
	cp   d                                           ; $43e2: $ba
	and  b                                           ; $43e3: $a0
	ld   d, $72                                      ; $43e4: $16 $72
	dec  b                                           ; $43e6: $05
	ld   l, d                                        ; $43e7: $6a
	inc  b                                           ; $43e8: $04
	dec  de                                          ; $43e9: $1b
	ld   h, e                                        ; $43ea: $63
	ld   l, c                                        ; $43eb: $69
	sbc  c                                           ; $43ec: $99
	ld   a, h                                        ; $43ed: $7c
	sub  [hl]                                        ; $43ee: $96
	sbc  a                                           ; $43ef: $9f
	dec  c                                           ; $43f0: $0d
	nop                                              ; $43f1: $00
	ld   a, [bc]                                     ; $43f2: $0a
	ld   c, $a0                                      ; $43f3: $0e $a0
	ld   b, $a8                                      ; $43f5: $06 $a8
	ld   [$030f], sp                                 ; $43f7: $08 $0f $03
	ld   [bc], a                                     ; $43fa: $02
	ld   bc, $7978                                   ; $43fb: $01 $78 $79
	sub  d                                           ; $43fe: $92
	ld   [hl], c                                     ; $43ff: $71
	ld   [hl], h                                     ; $4400: $74
	sbc  c                                           ; $4401: $99
	ld   a, h                                        ; $4402: $7c
	rst  $38                                         ; $4403: $ff
	rst  $38                                         ; $4404: $ff
	dec  c                                           ; $4405: $0d
	and  l                                           ; $4406: $a5
	cp   d                                           ; $4407: $ba
	and  b                                           ; $4408: $a0
	ld   d, $72                                      ; $4409: $16 $72
	dec  b                                           ; $440b: $05
	ld   l, d                                        ; $440c: $6a
	inc  b                                           ; $440d: $04
	dec  de                                          ; $440e: $1b
	ld   h, e                                        ; $440f: $63
	ld   l, c                                        ; $4410: $69
	sbc  c                                           ; $4411: $99
	ld   a, h                                        ; $4412: $7c
	sub  [hl]                                        ; $4413: $96
	sbc  a                                           ; $4414: $9f
	dec  c                                           ; $4415: $0d
	nop                                              ; $4416: $00
	ld   a, [bc]                                     ; $4417: $0a
	ld   c, $a0                                      ; $4418: $0e $a0
	ld   b, $a8                                      ; $441a: $06 $a8
	ld   [$000f], sp                                 ; $441c: $08 $0f $00
	ld   bc, $a00e                                   ; $441f: $01 $0e $a0
	ld   bc, $baa5                                   ; $4422: $01 $a5 $ba
	and  b                                           ; $4425: $a0
	ld   d, $72                                      ; $4426: $16 $72
	dec  b                                           ; $4428: $05
	ld   l, d                                        ; $4429: $6a
	inc  b                                           ; $442a: $04
	dec  de                                          ; $442b: $1b
	ld   h, a                                        ; $442c: $67
	sbc  c                                           ; $442d: $99
	sbc  a                                           ; $442e: $9f
	dec  c                                           ; $442f: $0d
	sub  [hl]                                        ; $4430: $96
	ld   h, l                                        ; $4431: $65
	sbc  [hl]                                        ; $4432: $9e
	xor  e                                           ; $4433: $ab
	call nz, $fbb2                                   ; $4434: $c4 $b2 $fb
	ld   l, [hl]                                     ; $4437: $6e
	ld   a, b                                        ; $4438: $78
	sbc  a                                           ; $4439: $9f
	dec  c                                           ; $443a: $0d
	nop                                              ; $443b: $00
	ld   a, [bc]                                     ; $443c: $0a
	rrca                                             ; $443d: $0f
	inc  bc                                          ; $443e: $03
	inc  bc                                          ; $443f: $03
	ld   bc, $546b                                   ; $4440: $01 $6b $54
	ld   l, e                                        ; $4443: $6b
	ld   d, h                                        ; $4444: $54
	sbc  a                                           ; $4445: $9f
	dec  c                                           ; $4446: $0d
	dec  b                                           ; $4447: $05
	ld   l, d                                        ; $4448: $6a
	inc  b                                           ; $4449: $04
	dec  de                                          ; $444a: $1b
	ld   h, e                                        ; $444b: $63
	ld   l, c                                        ; $444c: $69
	ld   l, l                                        ; $444d: $6d
	and  l                                           ; $444e: $a5
	cp   d                                           ; $444f: $ba
	ld   a, l                                        ; $4450: $7d
	dec  c                                           ; $4451: $0d
	nop                                              ; $4452: $00
	dec  b                                           ; $4453: $05
	ld   b, b                                        ; $4454: $40
	rst  $38                                         ; $4455: $ff
	inc  bc                                          ; $4456: $03
	rst  $38                                         ; $4457: $ff
	ld   bc, $2801                                   ; $4458: $01 $01 $28
	nop                                              ; $445b: $00
	ld   bc, $3f03                                   ; $445c: $01 $03 $3f
	ld   a, e                                        ; $445f: $7b
	ld   [hl], h                                     ; $4460: $74
	ld   e, b                                        ; $4461: $58
	ld   d, d                                        ; $4462: $52
	ld   [hl], h                                     ; $4463: $74
	ld   l, a                                        ; $4464: $6f
	sub  l                                           ; $4465: $95
	ld   d, h                                        ; $4466: $54
	ld   l, [hl]                                     ; $4467: $6e
	ld   d, d                                        ; $4468: $52
	sbc  a                                           ; $4469: $9f
	dec  c                                           ; $446a: $0d
	nop                                              ; $446b: $00
	ld   a, [bc]                                     ; $446c: $0a
	ld   c, $a1                                      ; $446d: $0e $a1
	rrca                                             ; $446f: $0f
	inc  bc                                          ; $4470: $03
	nop                                              ; $4471: $00
	ld   bc, $9166                                   ; $4472: $01 $66 $91
	sbc  [hl]                                        ; $4475: $9e
	inc  bc                                          ; $4476: $03
	ld   l, b                                        ; $4477: $68
	ld   a, l                                        ; $4478: $7d
	rst  ToBoot                                         ; $4479: $c7
	ei                                               ; $447a: $fb
	rst  $10                                         ; $447b: $d7
	db   $ed                                         ; $447c: $ed
	and  b                                           ; $447d: $a0
	rst  $38                                         ; $447e: $ff
	rst  $38                                         ; $447f: $ff
	dec  c                                           ; $4480: $0d
	nop                                              ; $4481: $00
	ld   a, [bc]                                     ; $4482: $0a
	add  hl, de                                      ; $4483: $19
	dec  b                                           ; $4484: $05
	inc  bc                                          ; $4485: $03
	inc  bc                                          ; $4486: $03
	ld   h, b                                        ; $4487: $60
	or   [hl]                                        ; $4488: $b6
	and  l                                           ; $4489: $a5
	jp   z, $0579                                    ; $448a: $ca $79 $05

	ld   l, d                                        ; $448d: $6a
	inc  b                                           ; $448e: $04
	dec  de                                          ; $448f: $1b
	nop                                              ; $4490: $00
	nop                                              ; $4491: $00
	ld   [bc], a                                     ; $4492: $02
	inc  e                                           ; $4493: $1c
	or   [hl]                                        ; $4494: $b6
	and  l                                           ; $4495: $a5
	jp   z, $0379                                    ; $4496: $ca $79 $03

	sub  $60                                         ; $4499: $d6 $60
	sbc  c                                           ; $449b: $99
	nop                                              ; $449c: $00
	ld   bc, $1c02                                   ; $449d: $01 $02 $1c
	or   [hl]                                        ; $44a0: $b6
	and  l                                           ; $44a1: $a5
	jp   z, $0579                                    ; $44a2: $ca $79 $05

	ld   l, d                                        ; $44a5: $6a
	inc  b                                           ; $44a6: $04
	dec  de                                          ; $44a7: $1b
	nop                                              ; $44a8: $00
	ld   [bc], a                                     ; $44a9: $02
	rlca                                             ; $44aa: $07
	ld   bc, $0209                                   ; $44ab: $01 $09 $02
	inc  bc                                          ; $44ae: $03
	ld   bc, $2000                                   ; $44af: $01 $00 $20
	nop                                              ; $44b2: $00
	rlca                                             ; $44b3: $07
	dec  a                                           ; $44b4: $3d
	add  hl, bc                                      ; $44b5: $09
	ld   [bc], a                                     ; $44b6: $02
	inc  bc                                          ; $44b7: $03
	ld   bc, $2001                                   ; $44b8: $01 $01 $20
	nop                                              ; $44bb: $00
	rlca                                             ; $44bc: $07
	and  [hl]                                        ; $44bd: $a6
	add  hl, bc                                      ; $44be: $09
	ld   [bc], a                                     ; $44bf: $02
	inc  bc                                          ; $44c0: $03
	ld   bc, $2002                                   ; $44c1: $01 $02 $20
	nop                                              ; $44c4: $00
	ld   b, $81                                      ; $44c5: $06 $81
	add  hl, bc                                      ; $44c7: $09
	rrca                                             ; $44c8: $0f
	nop                                              ; $44c9: $00
	ld   bc, $0301                                   ; $44ca: $01 $01 $03
	ld   h, b                                        ; $44cd: $60
	ld   a, c                                        ; $44ce: $79
	dec  b                                           ; $44cf: $05
	ld   l, d                                        ; $44d0: $6a
	inc  b                                           ; $44d1: $04
	dec  de                                          ; $44d2: $1b
	rst  $38                                         ; $44d3: $ff
	rst  $38                                         ; $44d4: $ff
	ld   l, [hl]                                     ; $44d5: $6e
	ld   [hl], c                                     ; $44d6: $71
	ld   l, l                                        ; $44d7: $6d
	ld   e, c                                        ; $44d8: $59
	ld   a, b                                        ; $44d9: $78
	ld   sp, hl                                      ; $44da: $f9
	dec  c                                           ; $44db: $0d
	nop                                              ; $44dc: $00
	ld   a, [bc]                                     ; $44dd: $0a
	ld   c, $a2                                      ; $44de: $0e $a2
	rrca                                             ; $44e0: $0f
	inc  bc                                          ; $44e1: $03
	nop                                              ; $44e2: $00
	ld   bc, $546b                                   ; $44e3: $01 $6b $54
	ld   h, [hl]                                     ; $44e6: $66
	sub  c                                           ; $44e7: $91
	ld   a, b                                        ; $44e8: $78
	ld   d, d                                        ; $44e9: $52
	sbc  l                                           ; $44ea: $9d
	sbc  a                                           ; $44eb: $9f
	dec  c                                           ; $44ec: $0d
	ld   [bc], a                                     ; $44ed: $02
	inc  e                                           ; $44ee: $1c
	or   [hl]                                        ; $44ef: $b6
	and  l                                           ; $44f0: $a5
	jp   z, $0579                                    ; $44f1: $ca $79 $05

	ld   l, d                                        ; $44f4: $6a
	inc  b                                           ; $44f5: $04
	dec  de                                          ; $44f6: $1b
	ld   h, a                                        ; $44f7: $67
	sbc  c                                           ; $44f8: $99
	ld   a, h                                        ; $44f9: $7c
	sub  [hl]                                        ; $44fa: $96
	sbc  a                                           ; $44fb: $9f
	dec  c                                           ; $44fc: $0d
	nop                                              ; $44fd: $00
	ld   a, [bc]                                     ; $44fe: $0a
	ld   c, $a4                                      ; $44ff: $0e $a4
	ld   b, $f3                                      ; $4501: $06 $f3
	add  hl, bc                                      ; $4503: $09
	rrca                                             ; $4504: $0f
	nop                                              ; $4505: $00
	ld   bc, $0201                                   ; $4506: $01 $01 $02
	inc  e                                           ; $4509: $1c
	ld   a, c                                        ; $450a: $79
	inc  b                                           ; $450b: $04
	sbc  c                                           ; $450c: $99
	sbc  b                                           ; $450d: $98
	inc  bc                                          ; $450e: $03
	sub  $60                                         ; $450f: $d6 $60
	ld   [hl], h                                     ; $4511: $74
	halt                                             ; $4512: $76
	rst  $38                                         ; $4513: $ff
	rst  $38                                         ; $4514: $ff
	dec  c                                           ; $4515: $0d
	nop                                              ; $4516: $00
	ld   c, $a3                                      ; $4517: $0e $a3
	ld   bc, $f9a1                                   ; $4519: $01 $a1 $f9
	ld   sp, hl                                      ; $451c: $f9
	ld   sp, hl                                      ; $451d: $f9
	dec  c                                           ; $451e: $0d
	nop                                              ; $451f: $00
	ld   a, [bc]                                     ; $4520: $0a
	rrca                                             ; $4521: $0f
	inc  bc                                          ; $4522: $03
	ld   [bc], a                                     ; $4523: $02
	ld   bc, $d603                                   ; $4524: $01 $03 $d6
	ld   h, b                                        ; $4527: $60
	ld   [hl], h                                     ; $4528: $74
	ld   [hl], a                                     ; $4529: $77
	ld   d, h                                        ; $452a: $54
	ld   h, a                                        ; $452b: $67
	sbc  c                                           ; $452c: $99
	ld   a, h                                        ; $452d: $7c
	sub  [hl]                                        ; $452e: $96
	ld   a, [$020d]                                  ; $452f: $fa $0d $02
	inc  e                                           ; $4532: $1c
	or   [hl]                                        ; $4533: $b6
	and  l                                           ; $4534: $a5
	jp   z, $0579                                    ; $4535: $ca $79 $05

	ld   l, d                                        ; $4538: $6a
	inc  b                                           ; $4539: $04
	dec  de                                          ; $453a: $1b
	ld   h, a                                        ; $453b: $67
	sbc  c                                           ; $453c: $99
	ld   a, h                                        ; $453d: $7c
	sub  [hl]                                        ; $453e: $96
	sbc  a                                           ; $453f: $9f
	dec  c                                           ; $4540: $0d
	nop                                              ; $4541: $00
	ld   a, [bc]                                     ; $4542: $0a
	ld   c, $a4                                      ; $4543: $0e $a4
	ld   b, $f3                                      ; $4545: $06 $f3
	add  hl, bc                                      ; $4547: $09
	rrca                                             ; $4548: $0f
	inc  bc                                          ; $4549: $03
	ld   [bc], a                                     ; $454a: $02
	ld   bc, $7978                                   ; $454b: $01 $78 $79
	sub  d                                           ; $454e: $92
	ld   [hl], c                                     ; $454f: $71
	ld   [hl], h                                     ; $4550: $74
	sbc  c                                           ; $4551: $99
	ld   a, h                                        ; $4552: $7c
	rst  $38                                         ; $4553: $ff
	rst  $38                                         ; $4554: $ff
	dec  c                                           ; $4555: $0d
	ld   [bc], a                                     ; $4556: $02
	inc  e                                           ; $4557: $1c
	or   [hl]                                        ; $4558: $b6
	and  l                                           ; $4559: $a5
	jp   z, $0579                                    ; $455a: $ca $79 $05

	ld   l, d                                        ; $455d: $6a
	inc  b                                           ; $455e: $04
	dec  de                                          ; $455f: $1b
	ld   h, a                                        ; $4560: $67
	sbc  c                                           ; $4561: $99
	ld   a, h                                        ; $4562: $7c
	sub  [hl]                                        ; $4563: $96
	sbc  a                                           ; $4564: $9f
	dec  c                                           ; $4565: $0d
	nop                                              ; $4566: $00
	ld   a, [bc]                                     ; $4567: $0a
	ld   c, $a4                                      ; $4568: $0e $a4
	ld   b, $f3                                      ; $456a: $06 $f3
	add  hl, bc                                      ; $456c: $09
	rrca                                             ; $456d: $0f
	nop                                              ; $456e: $00
	ld   bc, $a40e                                   ; $456f: $01 $0e $a4
	ld   bc, $fbc7                                   ; $4572: $01 $c7 $fb
	rst  $10                                         ; $4575: $d7
	db   $ed                                         ; $4576: $ed
	and  b                                           ; $4577: $a0
	ld   [bc], a                                     ; $4578: $02
	inc  e                                           ; $4579: $1c
	or   [hl]                                        ; $457a: $b6
	and  l                                           ; $457b: $a5
	jp   z, $0579                                    ; $457c: $ca $79 $05

	ld   l, d                                        ; $457f: $6a
	inc  b                                           ; $4580: $04
	dec  de                                          ; $4581: $1b
	rst  $38                                         ; $4582: $ff
	dec  c                                           ; $4583: $0d
	sub  [hl]                                        ; $4584: $96
	ld   h, l                                        ; $4585: $65
	sbc  [hl]                                        ; $4586: $9e
	xor  e                                           ; $4587: $ab
	call nz, $fbb2                                   ; $4588: $c4 $b2 $fb
	ld   l, [hl]                                     ; $458b: $6e
	ld   a, b                                        ; $458c: $78
	sbc  a                                           ; $458d: $9f
	dec  c                                           ; $458e: $0d
	nop                                              ; $458f: $00
	ld   a, [bc]                                     ; $4590: $0a
	rrca                                             ; $4591: $0f
	inc  bc                                          ; $4592: $03
	inc  bc                                          ; $4593: $03
	ld   bc, $6a05                                   ; $4594: $01 $05 $6a
	inc  b                                           ; $4597: $04
	dec  de                                          ; $4598: $1b
	ld   h, e                                        ; $4599: $63
	ld   l, c                                        ; $459a: $69
	ld   l, l                                        ; $459b: $6d
	rst  ToBoot                                         ; $459c: $c7
	ei                                               ; $459d: $fb
	rst  $10                                         ; $459e: $d7
	db   $ed                                         ; $459f: $ed
	ld   a, l                                        ; $45a0: $7d
	dec  c                                           ; $45a1: $0d
	inc  bc                                          ; $45a2: $03
	ld   e, c                                        ; $45a3: $59
	add  h                                           ; $45a4: $84
	ld   e, e                                        ; $45a5: $5b
	and  b                                           ; $45a6: $a0
	ld   h, l                                        ; $45a7: $65
	ld   [hl], h                                     ; $45a8: $74
	ld   e, b                                        ; $45a9: $58
	ld   d, d                                        ; $45aa: $52
	ld   [hl], h                                     ; $45ab: $74
	ld   a, e                                        ; $45ac: $7b
	sbc  a                                           ; $45ad: $9f
	dec  c                                           ; $45ae: $0d
	nop                                              ; $45af: $00
	ld   a, [bc]                                     ; $45b0: $0a
	dec  b                                           ; $45b1: $05
	ld   b, b                                        ; $45b2: $40
	rst  $38                                         ; $45b3: $ff
	inc  bc                                          ; $45b4: $03
	rst  $38                                         ; $45b5: $ff
	ld   bc, $2801                                   ; $45b6: $01 $01 $28
	nop                                              ; $45b9: $00
	rrca                                             ; $45ba: $0f
	inc  bc                                          ; $45bb: $03
	nop                                              ; $45bc: $00
	ld   bc, $6903                                   ; $45bd: $01 $03 $69
	ld   [bc], a                                     ; $45c0: $02
	xor  d                                           ; $45c1: $aa
	ld   a, l                                        ; $45c2: $7d
	sbc  [hl]                                        ; $45c3: $9e
	adc  c                                           ; $45c4: $89
	ld   d, h                                        ; $45c5: $54
	ld   e, e                                        ; $45c6: $5b
	ld   [hl], l                                     ; $45c7: $75
	dec  b                                           ; $45c8: $05
	ld   [de], a                                     ; $45c9: $12
	ld   l, a                                        ; $45ca: $6f
	inc  b                                           ; $45cb: $04
	sub  c                                           ; $45cc: $91
	and  b                                           ; $45cd: $a0
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	dec  c                                           ; $45d0: $0d
	nop                                              ; $45d1: $00
	ld   a, [bc]                                     ; $45d2: $0a
	add  hl, de                                      ; $45d3: $19
	dec  b                                           ; $45d4: $05
	inc  bc                                          ; $45d5: $03
	adc  c                                           ; $45d6: $89
	ld   d, h                                        ; $45d7: $54
	ld   e, e                                        ; $45d8: $5b
	ld   [hl], l                                     ; $45d9: $75
	dec  b                                           ; $45da: $05
	ld   [de], a                                     ; $45db: $12
	ld   l, a                                        ; $45dc: $6f
	inc  b                                           ; $45dd: $04
	sub  c                                           ; $45de: $91
	and  b                                           ; $45df: $a0
	ld   l, a                                        ; $45e0: $6f
	sub  a                                           ; $45e1: $97
	ld   h, a                                        ; $45e2: $67
	nop                                              ; $45e3: $00
	nop                                              ; $45e4: $00
	adc  c                                           ; $45e5: $89
	ld   d, h                                        ; $45e6: $54
	ld   e, e                                        ; $45e7: $5b
	ld   [hl], l                                     ; $45e8: $75
	dec  b                                           ; $45e9: $05
	ld   [de], a                                     ; $45ea: $12
	ld   l, a                                        ; $45eb: $6f
	inc  b                                           ; $45ec: $04
	sub  c                                           ; $45ed: $91
	and  b                                           ; $45ee: $a0
	sub  b                                           ; $45ef: $90
	sub  d                                           ; $45f0: $92
	ld   h, a                                        ; $45f1: $67
	nop                                              ; $45f2: $00
	ld   bc, $5489                                   ; $45f3: $01 $89 $54
	ld   e, e                                        ; $45f6: $5b
	ld   [hl], l                                     ; $45f7: $75
	dec  b                                           ; $45f8: $05
	ld   [de], a                                     ; $45f9: $12
	ld   l, a                                        ; $45fa: $6f
	inc  b                                           ; $45fb: $04
	sub  c                                           ; $45fc: $91
	and  b                                           ; $45fd: $a0
	ld   d, b                                        ; $45fe: $50
	ld   [hl], d                                     ; $45ff: $72
	adc  a                                           ; $4600: $8f
	sbc  c                                           ; $4601: $99
	nop                                              ; $4602: $00
	ld   [bc], a                                     ; $4603: $02
	rlca                                             ; $4604: $07
	ld   e, e                                        ; $4605: $5b
	ld   a, [bc]                                     ; $4606: $0a
	ld   [bc], a                                     ; $4607: $02
	inc  bc                                          ; $4608: $03
	ld   bc, $2000                                   ; $4609: $01 $00 $20
	nop                                              ; $460c: $00
	rlca                                             ; $460d: $07
	sbc  h                                           ; $460e: $9c
	ld   a, [bc]                                     ; $460f: $0a
	ld   [bc], a                                     ; $4610: $02
	inc  bc                                          ; $4611: $03
	ld   bc, $2001                                   ; $4612: $01 $01 $20
	nop                                              ; $4615: $00
	rlca                                             ; $4616: $07
	db   $10                                         ; $4617: $10
	dec  bc                                          ; $4618: $0b
	ld   [bc], a                                     ; $4619: $02
	inc  bc                                          ; $461a: $03
	ld   bc, $2002                                   ; $461b: $01 $02 $20
	nop                                              ; $461e: $00
	ld   b, $ec                                      ; $461f: $06 $ec
	ld   a, [bc]                                     ; $4621: $0a
	rrca                                             ; $4622: $0f
	nop                                              ; $4623: $00
	ld   bc, $0501                                   ; $4624: $01 $01 $05
	ld   [de], a                                     ; $4627: $12
	ld   l, a                                        ; $4628: $6f
	inc  b                                           ; $4629: $04
	sub  c                                           ; $462a: $91
	and  b                                           ; $462b: $a0
	ld   l, a                                        ; $462c: $6f
	sub  a                                           ; $462d: $97
	ld   h, a                                        ; $462e: $67
	rst  $38                                         ; $462f: $ff
	rst  $38                                         ; $4630: $ff
	dec  c                                           ; $4631: $0d
	nop                                              ; $4632: $00
	ld   c, $a5                                      ; $4633: $0e $a5
	ld   bc, $f9a1                                   ; $4635: $01 $a1 $f9
	ld   sp, hl                                      ; $4638: $f9
	ld   sp, hl                                      ; $4639: $f9
	dec  c                                           ; $463a: $0d
	nop                                              ; $463b: $00
	ld   a, [bc]                                     ; $463c: $0a
	rrca                                             ; $463d: $0f
	inc  bc                                          ; $463e: $03
	ld   [bc], a                                     ; $463f: $02
	ld   bc, $976f                                   ; $4640: $01 $6f $97
	ld   h, l                                        ; $4643: $65
	ld   [hl], h                                     ; $4644: $74
	ld   [hl], a                                     ; $4645: $77
	ld   d, h                                        ; $4646: $54
	ld   h, a                                        ; $4647: $67
	sbc  c                                           ; $4648: $99
	ld   a, h                                        ; $4649: $7c
	sub  [hl]                                        ; $464a: $96
	ld   a, [$890d]                                  ; $464b: $fa $0d $89
	ld   d, h                                        ; $464e: $54
	ld   e, e                                        ; $464f: $5b
	ld   [hl], l                                     ; $4650: $75
	ld   d, b                                        ; $4651: $50
	ld   [hl], d                                     ; $4652: $72
	adc  a                                           ; $4653: $8f
	sbc  c                                           ; $4654: $99
	ld   a, h                                        ; $4655: $7c
	sub  [hl]                                        ; $4656: $96
	sbc  a                                           ; $4657: $9f
	dec  c                                           ; $4658: $0d
	nop                                              ; $4659: $00
	ld   a, [bc]                                     ; $465a: $0a
	ld   c, $a7                                      ; $465b: $0e $a7
	rrca                                             ; $465d: $0f
	inc  bc                                          ; $465e: $03
	nop                                              ; $465f: $00
	ld   b, $36                                      ; $4660: $06 $36
	dec  bc                                          ; $4662: $0b
	rrca                                             ; $4663: $0f
	nop                                              ; $4664: $00
	ld   bc, $0501                                   ; $4665: $01 $01 $05
	ld   [de], a                                     ; $4668: $12
	ld   l, a                                        ; $4669: $6f
	inc  b                                           ; $466a: $04
	sub  c                                           ; $466b: $91
	and  b                                           ; $466c: $a0
	sub  b                                           ; $466d: $90
	sub  d                                           ; $466e: $92
	ld   h, a                                        ; $466f: $67
	sbc  [hl]                                        ; $4670: $9e
	halt                                             ; $4671: $76
	rst  $38                                         ; $4672: $ff
	rst  $38                                         ; $4673: $ff
	dec  c                                           ; $4674: $0d
	nop                                              ; $4675: $00
	ld   d, $3a                                      ; $4676: $16 $3a
	ld   bc, $f9a1                                   ; $4678: $01 $a1 $f9
	ld   sp, hl                                      ; $467b: $f9
	ld   sp, hl                                      ; $467c: $f9
	dec  c                                           ; $467d: $0d
	nop                                              ; $467e: $00
	ld   a, [bc]                                     ; $467f: $0a
	rrca                                             ; $4680: $0f
	inc  bc                                          ; $4681: $03
	ld   [bc], a                                     ; $4682: $02
	ld   bc, $e3c1                                   ; $4683: $01 $c1 $e3
	sub  [hl]                                        ; $4686: $96
	ld   a, [$5810]                                  ; $4687: $fa $10 $58
	inc  bc                                          ; $468a: $03
	ld   e, c                                        ; $468b: $59
	sub  b                                           ; $468c: $90
	inc  b                                           ; $468d: $04
	di                                               ; $468e: $f3
	ld   [bc], a                                     ; $468f: $02
	ld   b, $65                                      ; $4690: $06 $65
	ld   a, b                                        ; $4692: $78
	ld   d, d                                        ; $4693: $52
	ld   [hl], l                                     ; $4694: $75
	dec  c                                           ; $4695: $0d
	sub  b                                           ; $4696: $90
	sub  d                                           ; $4697: $92
	ld   h, l                                        ; $4698: $65
	ld   l, a                                        ; $4699: $6f
	sub  c                                           ; $469a: $91
	ld   a, [$890d]                                  ; $469b: $fa $0d $89
	ld   d, h                                        ; $469e: $54
	ld   e, e                                        ; $469f: $5b
	ld   [hl], l                                     ; $46a0: $75
	ld   d, b                                        ; $46a1: $50
	ld   [hl], d                                     ; $46a2: $72
	adc  a                                           ; $46a3: $8f
	sbc  c                                           ; $46a4: $99
	ld   a, h                                        ; $46a5: $7c
	sub  [hl]                                        ; $46a6: $96
	sbc  a                                           ; $46a7: $9f
	dec  c                                           ; $46a8: $0d
	nop                                              ; $46a9: $00
	ld   a, [bc]                                     ; $46aa: $0a
	ld   c, $a7                                      ; $46ab: $0e $a7
	rrca                                             ; $46ad: $0f
	inc  bc                                          ; $46ae: $03
	nop                                              ; $46af: $00
	ld   b, $36                                      ; $46b0: $06 $36
	dec  bc                                          ; $46b2: $0b
	rrca                                             ; $46b3: $0f
	inc  bc                                          ; $46b4: $03
	ld   [bc], a                                     ; $46b5: $02
	ld   bc, $7978                                   ; $46b6: $01 $78 $79
	sub  d                                           ; $46b9: $92
	ld   [hl], c                                     ; $46ba: $71
	ld   [hl], h                                     ; $46bb: $74
	sbc  c                                           ; $46bc: $99
	ld   a, h                                        ; $46bd: $7c
	rst  $38                                         ; $46be: $ff
	rst  $38                                         ; $46bf: $ff
	dec  c                                           ; $46c0: $0d
	adc  c                                           ; $46c1: $89
	ld   d, h                                        ; $46c2: $54
	ld   e, e                                        ; $46c3: $5b
	ld   [hl], l                                     ; $46c4: $75
	ld   d, b                                        ; $46c5: $50
	ld   [hl], d                                     ; $46c6: $72
	adc  a                                           ; $46c7: $8f
	sbc  c                                           ; $46c8: $99
	ld   a, h                                        ; $46c9: $7c
	sub  [hl]                                        ; $46ca: $96
	sbc  a                                           ; $46cb: $9f
	dec  c                                           ; $46cc: $0d
	nop                                              ; $46cd: $00
	ld   a, [bc]                                     ; $46ce: $0a
	ld   c, $a7                                      ; $46cf: $0e $a7
	rrca                                             ; $46d1: $0f
	inc  bc                                          ; $46d2: $03
	nop                                              ; $46d3: $00
	ld   b, $36                                      ; $46d4: $06 $36
	dec  bc                                          ; $46d6: $0b
	rrca                                             ; $46d7: $0f
	nop                                              ; $46d8: $00
	ld   bc, $0501                                   ; $46d9: $01 $01 $05
	ld   [de], a                                     ; $46dc: $12
	ld   l, a                                        ; $46dd: $6f
	inc  b                                           ; $46de: $04
	sub  c                                           ; $46df: $91
	and  b                                           ; $46e0: $a0
	ld   d, b                                        ; $46e1: $50
	ld   [hl], d                                     ; $46e2: $72
	adc  a                                           ; $46e3: $8f
	sbc  c                                           ; $46e4: $99
	sbc  a                                           ; $46e5: $9f
	dec  c                                           ; $46e6: $0d
	nop                                              ; $46e7: $00
	ld   c, $a7                                      ; $46e8: $0e $a7
	ld   bc, $6596                                   ; $46ea: $01 $96 $65
	sbc  a                                           ; $46ed: $9f
	dec  c                                           ; $46ee: $0d
	nop                                              ; $46ef: $00
	ld   a, [bc]                                     ; $46f0: $0a
	rrca                                             ; $46f1: $0f
	inc  bc                                          ; $46f2: $03
	inc  bc                                          ; $46f3: $03
	dec  b                                           ; $46f4: $05
	ld   b, b                                        ; $46f5: $40
	rst  $38                                         ; $46f6: $ff
	inc  bc                                          ; $46f7: $03
	rst  $38                                         ; $46f8: $ff
	ld   bc, $2801                                   ; $46f9: $01 $01 $28
	nop                                              ; $46fc: $00
	ld   bc, $7250                                   ; $46fd: $01 $50 $72
	adc  a                                           ; $4700: $8f
	ld   l, l                                        ; $4701: $6d
	dec  b                                           ; $4702: $05
	ld   [de], a                                     ; $4703: $12
	ld   l, a                                        ; $4704: $6f
	inc  b                                           ; $4705: $04
	sub  c                                           ; $4706: $91
	ld   a, l                                        ; $4707: $7d
	dec  c                                           ; $4708: $0d
	add  e                                           ; $4709: $83
	ld   e, l                                        ; $470a: $5d
	sbc  e                                           ; $470b: $9b
	ld   a, c                                        ; $470c: $79
	inc  b                                           ; $470d: $04
	ld   b, l                                        ; $470e: $45
	sbc  d                                           ; $470f: $9a
	ld   [hl], h                                     ; $4710: $74
	ld   h, a                                        ; $4711: $67
	ld   [hl], h                                     ; $4712: $74
	ld   [hl], h                                     ; $4713: $74
	ld   e, b                                        ; $4714: $58
	ld   d, d                                        ; $4715: $52
	ld   [hl], h                                     ; $4716: $74
	sbc  a                                           ; $4717: $9f
	dec  c                                           ; $4718: $0d
	nop                                              ; $4719: $00
	ld   a, [bc]                                     ; $471a: $0a
	ld   c, $a8                                      ; $471b: $0e $a8
	rrca                                             ; $471d: $0f
	nop                                              ; $471e: $00
	ld   bc, $5009                                   ; $471f: $01 $09 $50
	inc  c                                           ; $4722: $0c
	ld   [bc], a                                     ; $4723: $02
	rlca                                             ; $4724: $07
	sbc  d                                           ; $4725: $9a
	dec  bc                                          ; $4726: $0b
	inc  bc                                          ; $4727: $03
	rst  $38                                         ; $4728: $ff
	ld   bc, $2002                                   ; $4729: $01 $02 $20
	nop                                              ; $472c: $00
	rlca                                             ; $472d: $07
	or   [hl]                                        ; $472e: $b6
	dec  bc                                          ; $472f: $0b
	inc  bc                                          ; $4730: $03
	rst  $38                                         ; $4731: $ff
	ld   bc, $2301                                   ; $4732: $01 $01 $23
	nop                                              ; $4735: $00
	ld   c, $9d                                      ; $4736: $0e $9d
	inc  e                                           ; $4738: $1c
	inc  bc                                          ; $4739: $03
	inc  bc                                          ; $473a: $03
	inc  bc                                          ; $473b: $03
	ld   bc, $0458                                   ; $473c: $01 $58 $04
	ld   a, e                                        ; $473f: $7b
	sbc  d                                           ; $4740: $9a
	ld   h, e                                        ; $4741: $63
	adc  h                                           ; $4742: $8c
	sbc  a                                           ; $4743: $9f
	dec  c                                           ; $4744: $0d
	ld   d, b                                        ; $4745: $50
	ld   a, b                                        ; $4746: $78
	ld   l, l                                        ; $4747: $6d
	ld   a, h                                        ; $4748: $7c
	ld   e, b                                        ; $4749: $58
	ld   e, c                                        ; $474a: $59
	ld   h, b                                        ; $474b: $60
	ld   [hl], l                                     ; $474c: $75
	inc  bc                                          ; $474d: $03
	ld   e, e                                        ; $474e: $5b
	ld   e, c                                        ; $474f: $59
	ld   [hl], c                                     ; $4750: $71
	ld   l, l                                        ; $4751: $6d
	sbc  l                                           ; $4752: $9d
	sbc  a                                           ; $4753: $9f
	dec  c                                           ; $4754: $0d
	ld   d, b                                        ; $4755: $50
	sbc  b                                           ; $4756: $98
	ld   e, d                                        ; $4757: $5a
	halt                                             ; $4758: $76
	ld   d, h                                        ; $4759: $54
	sbc  a                                           ; $475a: $9f
	dec  c                                           ; $475b: $0d
	nop                                              ; $475c: $00
	ld   a, [bc]                                     ; $475d: $0a
	ld   b, $ea                                      ; $475e: $06 $ea
	dec  bc                                          ; $4760: $0b
	ld   c, $9d                                      ; $4761: $0e $9d
	inc  e                                           ; $4763: $1c
	inc  bc                                          ; $4764: $03
	inc  bc                                          ; $4765: $03
	inc  bc                                          ; $4766: $03
	ld   bc, $0458                                   ; $4767: $01 $58 $04
	ld   a, e                                        ; $476a: $7b
	sbc  d                                           ; $476b: $9a
	ld   h, e                                        ; $476c: $63
	adc  h                                           ; $476d: $8c
	sbc  a                                           ; $476e: $9f
	dec  c                                           ; $476f: $0d
	inc  bc                                          ; $4770: $03
	ld   e, e                                        ; $4771: $5b
	ld   e, c                                        ; $4772: $59
	ld   [hl], c                                     ; $4773: $71
	ld   l, l                                        ; $4774: $6d
	sbc  l                                           ; $4775: $9d
	sbc  a                                           ; $4776: $9f
	dec  c                                           ; $4777: $0d
	nop                                              ; $4778: $00
	ld   a, [bc]                                     ; $4779: $0a
	ld   b, $ea                                      ; $477a: $06 $ea
	dec  bc                                          ; $477c: $0b
	ld   c, $9d                                      ; $477d: $0e $9d
	inc  e                                           ; $477f: $1c
	inc  bc                                          ; $4780: $03
	inc  b                                           ; $4781: $04
	inc  b                                           ; $4782: $04
	ld   bc, $715f                                   ; $4783: $01 $5f $71
	ld   h, c                                        ; $4786: $61
	ld   d, h                                        ; $4787: $54
	inc  bc                                          ; $4788: $03
	ld   l, e                                        ; $4789: $6b
	ld   [bc], a                                     ; $478a: $02
	xor  c                                           ; $478b: $a9
	ld   [hl], a                                     ; $478c: $77
	ld   [hl], c                                     ; $478d: $71
	ld   l, l                                        ; $478e: $6d
	sbc  l                                           ; $478f: $9d
	ld   a, e                                        ; $4790: $7b
	rst  $38                                         ; $4791: $ff
	rst  $38                                         ; $4792: $ff
	dec  c                                           ; $4793: $0d
	adc  h                                           ; $4794: $8c
	ld   d, b                                        ; $4795: $50
	sbc  [hl]                                        ; $4796: $9e
	halt                                             ; $4797: $76
	sbc  b                                           ; $4798: $98
	ld   d, b                                        ; $4799: $50
	ld   d, [hl]                                     ; $479a: $56
	ld   l, b                                        ; $479b: $68
	inc  bc                                          ; $479c: $03
	ld   a, [hl]                                     ; $479d: $7e
	sbc  l                                           ; $479e: $9d
	ld   [hl], c                                     ; $479f: $71
	ld   l, l                                        ; $47a0: $6d
	ld   h, l                                        ; $47a1: $65
	rst  $38                                         ; $47a2: $ff
	dec  c                                           ; $47a3: $0d
	ld   h, d                                        ; $47a4: $62
	ld   e, l                                        ; $47a5: $5d
	sbc  e                                           ; $47a6: $9b
	ld   d, h                                        ; $47a7: $54
	ld   h, e                                        ; $47a8: $63
	adc  h                                           ; $47a9: $8c
	sbc  a                                           ; $47aa: $9f
	dec  c                                           ; $47ab: $0d
	nop                                              ; $47ac: $00
	ld   a, [bc]                                     ; $47ad: $0a
	add  hl, hl                                      ; $47ae: $29
	ld   [bc], a                                     ; $47af: $02
	nop                                              ; $47b0: $00
	inc  e                                           ; $47b1: $1c
	inc  bc                                          ; $47b2: $03
	inc  bc                                          ; $47b3: $03
	inc  bc                                          ; $47b4: $03
	ld   bc, $9a5b                                   ; $47b5: $01 $5b $9a
	ld   d, d                                        ; $47b8: $52
	ld   a, c                                        ; $47b9: $79
	ld   e, c                                        ; $47ba: $59
	ld   l, l                                        ; $47bb: $6d
	ld   [hl], e                                     ; $47bc: $73
	ld   d, d                                        ; $47bd: $52
	ld   l, l                                        ; $47be: $6d
	sbc  l                                           ; $47bf: $9d
	ld   a, e                                        ; $47c0: $7b
	rst  $38                                         ; $47c1: $ff
	rst  $38                                         ; $47c2: $ff
	dec  c                                           ; $47c3: $0d
	ld   [bc], a                                     ; $47c4: $02
	and  l                                           ; $47c5: $a5
	inc  b                                           ; $47c6: $04
	xor  d                                           ; $47c7: $aa
	ld   a, l                                        ; $47c8: $7d
	inc  b                                           ; $47c9: $04
	inc  de                                          ; $47ca: $13
	ld   [bc], a                                     ; $47cb: $02
	and  c                                           ; $47cc: $a1
	sub  b                                           ; $47cd: $90
	ld   d, d                                        ; $47ce: $52
	ld   d, d                                        ; $47cf: $52
	ld   h, l                                        ; $47d0: $65
	sbc  [hl]                                        ; $47d1: $9e
	dec  c                                           ; $47d2: $0d
	inc  b                                           ; $47d3: $04
	adc  a                                           ; $47d4: $8f
	inc  b                                           ; $47d5: $04
	jr   jr_065_4851                                 ; $47d6: $18 $79

	ld   a, h                                        ; $47d8: $7c
	ld   [hl], a                                     ; $47d9: $77
	ld   e, c                                        ; $47da: $59
	ld   a, b                                        ; $47db: $78
	inc  b                                           ; $47dc: $04
	xor  d                                           ; $47dd: $aa
	ld   a, e                                        ; $47de: $7b
	sbc  a                                           ; $47df: $9f
	dec  c                                           ; $47e0: $0d
	nop                                              ; $47e1: $00
	ld   a, [bc]                                     ; $47e2: $0a
	add  hl, de                                      ; $47e3: $19
	dec  b                                           ; $47e4: $05
	ld   [bc], a                                     ; $47e5: $02
	inc  b                                           ; $47e6: $04
	xor  b                                           ; $47e7: $a8
	dec  b                                           ; $47e8: $05
	ld   hl, $7471                                   ; $47e9: $21 $71 $74
	ld   d, d                                        ; $47ec: $52
	ld   d, d                                        ; $47ed: $52
	ld   [hl], l                                     ; $47ee: $75
	ld   h, a                                        ; $47ef: $67
	ld   a, e                                        ; $47f0: $7b
	rst  $38                                         ; $47f1: $ff
	rst  $38                                         ; $47f2: $ff
	nop                                              ; $47f3: $00
	nop                                              ; $47f4: $00
	inc  b                                           ; $47f5: $04
	adc  a                                           ; $47f6: $8f
	inc  b                                           ; $47f7: $04
	jr   jr_065_4873                                 ; $47f8: $18 $79

	ld   d, d                                        ; $47fa: $52
	ld   d, d                                        ; $47fb: $52
	inc  b                                           ; $47fc: $04
	inc  de                                          ; $47fd: $13
	ld   [bc], a                                     ; $47fe: $02
	and  c                                           ; $47ff: $a1
	ld   [hl], l                                     ; $4800: $75
	ld   h, a                                        ; $4801: $67
	ld   a, e                                        ; $4802: $7b
	nop                                              ; $4803: $00
	ld   bc, $5307                                   ; $4804: $01 $07 $53
	inc  c                                           ; $4807: $0c
	ld   [bc], a                                     ; $4808: $02
	inc  bc                                          ; $4809: $03
	ld   bc, $2000                                   ; $480a: $01 $00 $20
	nop                                              ; $480d: $00
	rlca                                             ; $480e: $07
	sub  h                                           ; $480f: $94
	inc  c                                           ; $4810: $0c
	ld   [bc], a                                     ; $4811: $02
	inc  bc                                          ; $4812: $03
	ld   bc, $2001                                   ; $4813: $01 $01 $20
	nop                                              ; $4816: $00
	ld   b, $d4                                      ; $4817: $06 $d4
	inc  c                                           ; $4819: $0c
	rrca                                             ; $481a: $0f
	nop                                              ; $481b: $00
	ld   bc, $0401                                   ; $481c: $01 $01 $04
	xor  b                                           ; $481f: $a8
	dec  b                                           ; $4820: $05
	ld   hl, $7471                                   ; $4821: $21 $71 $74
	ld   d, d                                        ; $4824: $52
	ld   d, d                                        ; $4825: $52
	ld   [hl], l                                     ; $4826: $75
	ld   h, a                                        ; $4827: $67
	ld   a, e                                        ; $4828: $7b
	rst  $38                                         ; $4829: $ff
	rst  $38                                         ; $482a: $ff
	dec  c                                           ; $482b: $0d
	nop                                              ; $482c: $00
	ld   a, [bc]                                     ; $482d: $0a
	inc  e                                           ; $482e: $1c
	inc  bc                                          ; $482f: $03
	nop                                              ; $4830: $00
	nop                                              ; $4831: $00
	ld   bc, $7c6b                                   ; $4832: $01 $6b $7c
	inc  bc                                          ; $4835: $03
	pop  hl                                          ; $4836: $e1
	sbc  b                                           ; $4837: $98
	ld   a, e                                        ; $4838: $7b
	sbc  a                                           ; $4839: $9f
	dec  c                                           ; $483a: $0d
	ld   l, e                                        ; $483b: $6b
	ld   a, h                                        ; $483c: $7c
	inc  b                                           ; $483d: $04
	xor  b                                           ; $483e: $a8
	dec  b                                           ; $483f: $05
	ld   hl, $03a0                                   ; $4840: $21 $a0 $03
	sub  e                                           ; $4843: $93
	sbc  c                                           ; $4844: $99
	ld   a, h                                        ; $4845: $7c
	ld   e, d                                        ; $4846: $5a
	dec  c                                           ; $4847: $0d
	sbc  l                                           ; $4848: $9d
	ld   l, l                                        ; $4849: $6d
	ld   h, l                                        ; $484a: $65
	ld   l, l                                        ; $484b: $6d
	ld   l, a                                        ; $484c: $6f
	ld   a, h                                        ; $484d: $7c
	inc  b                                           ; $484e: $04
	db   $ec                                         ; $484f: $ec
	inc  b                                           ; $4850: $04

jr_065_4851:
	call nc, Call_065_7c78                           ; $4851: $d4 $78 $7c
	sbc  a                                           ; $4854: $9f
	dec  c                                           ; $4855: $0d
	nop                                              ; $4856: $00
	ld   a, [bc]                                     ; $4857: $0a
	ld   b, $d4                                      ; $4858: $06 $d4
	inc  c                                           ; $485a: $0c
	rrca                                             ; $485b: $0f
	nop                                              ; $485c: $00
	ld   bc, $0401                                   ; $485d: $01 $01 $04
	adc  a                                           ; $4860: $8f
	inc  b                                           ; $4861: $04
	jr   @+$7b                                       ; $4862: $18 $79

	ld   d, d                                        ; $4864: $52
	ld   d, d                                        ; $4865: $52
	inc  b                                           ; $4866: $04
	inc  de                                          ; $4867: $13
	ld   [bc], a                                     ; $4868: $02
	and  c                                           ; $4869: $a1
	ld   [hl], l                                     ; $486a: $75
	ld   h, a                                        ; $486b: $67
	ld   a, e                                        ; $486c: $7b
	sbc  a                                           ; $486d: $9f
	dec  c                                           ; $486e: $0d
	nop                                              ; $486f: $00
	ld   a, [bc]                                     ; $4870: $0a
	inc  e                                           ; $4871: $1c
	inc  bc                                          ; $4872: $03

jr_065_4873:
	inc  bc                                          ; $4873: $03
	inc  bc                                          ; $4874: $03
	ld   bc, $546b                                   ; $4875: $01 $6b $54
	ld   a, e                                        ; $4878: $7b
	sbc  a                                           ; $4879: $9f
	dec  c                                           ; $487a: $0d
	ld   h, c                                        ; $487b: $61
	and  c                                           ; $487c: $a1
	ld   a, b                                        ; $487d: $78
	inc  b                                           ; $487e: $04
	xor  d                                           ; $487f: $aa
	ld   e, d                                        ; $4880: $5a
	sbc  [hl]                                        ; $4881: $9e
	ld   h, c                                        ; $4882: $61
	sbc  d                                           ; $4883: $9a
	ld   e, c                                        ; $4884: $59
	sub  a                                           ; $4885: $97
	sub  b                                           ; $4886: $90
	ld   l, b                                        ; $4887: $68
	ld   [hl], c                                     ; $4888: $71
	halt                                             ; $4889: $76
	dec  c                                           ; $488a: $0d
	ld   [hl], d                                     ; $488b: $72
	ld   [hl], e                                     ; $488c: $73
	ld   e, l                                        ; $488d: $5d
	halt                                             ; $488e: $76
	ld   d, d                                        ; $488f: $52
	ld   d, d                                        ; $4890: $52
	sbc  l                                           ; $4891: $9d
	ld   a, e                                        ; $4892: $7b
	rst  $38                                         ; $4893: $ff
	rst  $38                                         ; $4894: $ff
	dec  c                                           ; $4895: $0d
	nop                                              ; $4896: $00
	ld   a, [bc]                                     ; $4897: $0a
	ld   b, $d4                                      ; $4898: $06 $d4
	inc  c                                           ; $489a: $0c
	inc  e                                           ; $489b: $1c
	inc  bc                                          ; $489c: $03
	inc  bc                                          ; $489d: $03
	inc  bc                                          ; $489e: $03
	ld   bc, $9e50                                   ; $489f: $01 $50 $9e
	ld   l, e                                        ; $48a2: $6b
	ld   d, h                                        ; $48a3: $54
	ld   l, [hl]                                     ; $48a4: $6e
	sbc  l                                           ; $48a5: $9d
	rst  $38                                         ; $48a6: $ff
	rst  $38                                         ; $48a7: $ff
	dec  c                                           ; $48a8: $0d
	inc  bc                                          ; $48a9: $03
	ld   l, e                                        ; $48aa: $6b
	inc  b                                           ; $48ab: $04
	ld   [de], a                                     ; $48ac: $12
	ld   [hl], c                                     ; $48ad: $71
	ld   [hl], h                                     ; $48ae: $74
	ld   e, l                                        ; $48af: $5d
	sbc  d                                           ; $48b0: $9a
	ld   l, l                                        ; $48b1: $6d
	ld   e, b                                        ; $48b2: $58
	dec  b                                           ; $48b3: $05
	dec  c                                           ; $48b4: $0d
	sub  b                                           ; $48b5: $90
	ld   e, c                                        ; $48b6: $59
	ld   a, e                                        ; $48b7: $7b
	ld   [hl], h                                     ; $48b8: $74
	dec  c                                           ; $48b9: $0d
	xor  h                                           ; $48ba: $ac
	sub  $a8                                         ; $48bb: $d6 $a8
	ld   a, c                                        ; $48bd: $79
	ld   [hl], l                                     ; $48be: $75
	sub  b                                           ; $48bf: $90
	ld   [bc], a                                     ; $48c0: $02
	ld   a, a                                        ; $48c1: $7f
	ld   e, e                                        ; $48c2: $5b
	adc  h                                           ; $48c3: $8c
	ld   h, l                                        ; $48c4: $65
	sub  l                                           ; $48c5: $95
	ld   d, h                                        ; $48c6: $54
	ld   e, c                                        ; $48c7: $59
	sbc  a                                           ; $48c8: $9f
	dec  c                                           ; $48c9: $0d
	nop                                              ; $48ca: $00
	ld   a, [bc]                                     ; $48cb: $0a
	dec  c                                           ; $48cc: $0d
	nop                                              ; $48cd: $00
	nop                                              ; $48ce: $00
	rrca                                             ; $48cf: $0f
	nop                                              ; $48d0: $00
	ld   bc, $0e06                                   ; $48d1: $01 $06 $0e
	dec  c                                           ; $48d4: $0d
	inc  hl                                          ; $48d5: $23
	sub  a                                           ; $48d6: $97
	inc  e                                           ; $48d7: $1c
	inc  bc                                          ; $48d8: $03
	inc  bc                                          ; $48d9: $03
	inc  bc                                          ; $48da: $03
	ld   bc, $5483                                   ; $48db: $01 $83 $54
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	dec  c                                           ; $48e0: $0d
	ld   h, c                                        ; $48e1: $61
	ld   h, c                                        ; $48e2: $61
	ld   a, h                                        ; $48e3: $7c
	or   h                                           ; $48e4: $b4
	ei                                               ; $48e5: $fb
	db   $d3                                         ; $48e6: $d3
	ei                                               ; $48e7: $fb
	ld   a, l                                        ; $48e8: $7d
	sbc  [hl]                                        ; $48e9: $9e
	ld   d, d                                        ; $48ea: $52
	ld   [hl], d                                     ; $48eb: $72
	ld   e, e                                        ; $48ec: $5b
	ld   [hl], h                                     ; $48ed: $74
	sub  b                                           ; $48ee: $90
	dec  c                                           ; $48ef: $0d
	ld   e, b                                        ; $48f0: $58
	ld   d, d                                        ; $48f1: $52
	ld   h, l                                        ; $48f2: $65
	ld   d, d                                        ; $48f3: $52
	sbc  l                                           ; $48f4: $9d
	ld   a, e                                        ; $48f5: $7b
	rst  $38                                         ; $48f6: $ff
	rst  $38                                         ; $48f7: $ff
	dec  c                                           ; $48f8: $0d
	nop                                              ; $48f9: $00
	ld   a, [bc]                                     ; $48fa: $0a
	ld   bc, $546b                                   ; $48fb: $01 $6b $54
	ld   d, d                                        ; $48fe: $52
	ld   d, [hl]                                     ; $48ff: $56
	ld   a, [hl]                                     ; $4900: $7e
	sbc  [hl]                                        ; $4901: $9e
	ld   [$5d00], sp                                 ; $4902: $08 $00 $5d
	and  c                                           ; $4905: $a1
	ld   a, l                                        ; $4906: $7d
	dec  c                                           ; $4907: $0d
	ld   [de], a                                     ; $4908: $12
	ld   de, $5004                                   ; $4909: $11 $04 $50
	ld   [bc], a                                     ; $490c: $02
	xor  d                                           ; $490d: $aa
	ld   a, h                                        ; $490e: $7c
	inc  bc                                          ; $490f: $03
	sub  h                                           ; $4910: $94
	inc  b                                           ; $4911: $04
	sbc  [hl]                                        ; $4912: $9e
	and  b                                           ; $4913: $a0
	dec  c                                           ; $4914: $0d
	ld   [hl], a                                     ; $4915: $77
	ld   d, h                                        ; $4916: $54
	dec  b                                           ; $4917: $05
	pop  de                                          ; $4918: $d1
	ld   d, d                                        ; $4919: $52
	ld   b, $0e                                      ; $491a: $06 $0e
	ld   d, d                                        ; $491c: $52
	ld   [hl], h                                     ; $491d: $74
	sbc  c                                           ; $491e: $99
	ld   a, h                                        ; $491f: $7c
	ld   sp, hl                                      ; $4920: $f9
	dec  c                                           ; $4921: $0d
	nop                                              ; $4922: $00
	ld   a, [bc]                                     ; $4923: $0a
	add  hl, de                                      ; $4924: $19
	dec  b                                           ; $4925: $05
	inc  bc                                          ; $4926: $03
	inc  b                                           ; $4927: $04
	ld   [$9102], sp                                 ; $4928: $08 $02 $91
	ld   a, h                                        ; $492b: $7c
	inc  b                                           ; $492c: $04
	ld   a, [bc]                                     ; $492d: $0a
	inc  bc                                          ; $492e: $03
	jp   nc, $0000                                  ; $492f: $d2 $00 $00

	inc  bc                                          ; $4932: $03
	ld   l, $03                                      ; $4933: $2e $03
	pop  hl                                          ; $4935: $e1
	ld   a, h                                        ; $4936: $7c
	inc  bc                                          ; $4937: $03
	add  d                                           ; $4938: $82
	nop                                              ; $4939: $00
	ld   bc, $1903                                   ; $493a: $01 $03 $19
	ld   [bc], a                                     ; $493d: $02
	ld   b, d                                        ; $493e: $42
	ld   a, h                                        ; $493f: $7c
	inc  bc                                          ; $4940: $03
	add  l                                           ; $4941: $85
	inc  b                                           ; $4942: $04
	xor  e                                           ; $4943: $ab
	inc  bc                                          ; $4944: $03
	or   b                                           ; $4945: $b0
	nop                                              ; $4946: $00
	ld   [bc], a                                     ; $4947: $02
	rlca                                             ; $4948: $07
	sbc  a                                           ; $4949: $9f
	dec  c                                           ; $494a: $0d
	ld   [bc], a                                     ; $494b: $02
	inc  bc                                          ; $494c: $03
	ld   bc, $2000                                   ; $494d: $01 $00 $20
	nop                                              ; $4950: $00
	rlca                                             ; $4951: $07
	nop                                              ; $4952: $00
	ld   c, $02                                      ; $4953: $0e $02
	inc  bc                                          ; $4955: $03
	ld   bc, $2001                                   ; $4956: $01 $01 $20
	nop                                              ; $4959: $00
	rlca                                             ; $495a: $07
	ld   e, [hl]                                     ; $495b: $5e
	ld   c, $02                                      ; $495c: $0e $02
	inc  bc                                          ; $495e: $03
	ld   bc, $2002                                   ; $495f: $01 $02 $20
	nop                                              ; $4962: $00
	ld   b, $d7                                      ; $4963: $06 $d7
	ld   c, $0f                                      ; $4965: $0e $0f
	nop                                              ; $4967: $00
	ld   bc, $0401                                   ; $4968: $01 $01 $04
	ld   [$9102], sp                                 ; $496b: $08 $02 $91
	ld   a, h                                        ; $496e: $7c
	inc  b                                           ; $496f: $04
	ld   a, [bc]                                     ; $4970: $0a
	inc  bc                                          ; $4971: $03
	jp   nc, Jump_065_7879                           ; $4972: $d2 $79 $78

	sbc  d                                           ; $4975: $9a
	ld   l, l                                        ; $4976: $6d
	sub  a                                           ; $4977: $97
	rst  $38                                         ; $4978: $ff
	rst  $38                                         ; $4979: $ff
	halt                                             ; $497a: $76
	dec  c                                           ; $497b: $0d
	dec  b                                           ; $497c: $05
	pop  de                                          ; $497d: $d1
	ld   [hl], c                                     ; $497e: $71
	ld   [hl], h                                     ; $497f: $74
	ld   d, d                                        ; $4980: $52
	adc  h                                           ; $4981: $8c
	ld   h, a                                        ; $4982: $67
	sbc  a                                           ; $4983: $9f
	dec  c                                           ; $4984: $0d
	nop                                              ; $4985: $00
	ld   a, [bc]                                     ; $4986: $0a
	inc  e                                           ; $4987: $1c
	inc  bc                                          ; $4988: $03
	inc  bc                                          ; $4989: $03
	inc  bc                                          ; $498a: $03
	ld   bc, $546b                                   ; $498b: $01 $6b $54
	rst  $38                                         ; $498e: $ff
	rst  $38                                         ; $498f: $ff
	dec  c                                           ; $4990: $0d
	ld   l, e                                        ; $4991: $6b
	sbc  d                                           ; $4992: $9a
	ld   a, l                                        ; $4993: $7d
	ld   l, l                                        ; $4994: $6d
	ld   a, h                                        ; $4995: $7c
	sub  b                                           ; $4996: $90
	ld   h, l                                        ; $4997: $65
	ld   d, d                                        ; $4998: $52
	sbc  l                                           ; $4999: $9d
	ld   a, e                                        ; $499a: $7b
	sbc  a                                           ; $499b: $9f
	dec  c                                           ; $499c: $0d
	nop                                              ; $499d: $00
	ld   a, [bc]                                     ; $499e: $0a
	ld   bc, $9075                                   ; $499f: $01 $75 $90
	sbc  [hl]                                        ; $49a2: $9e
	ld   l, e                                        ; $49a3: $6b
	sbc  d                                           ; $49a4: $9a
	ld   a, c                                        ; $49a5: $79
	ld   a, l                                        ; $49a6: $7d
	sub  b                                           ; $49a7: $90
	ld   a, h                                        ; $49a8: $7c
	ld   h, a                                        ; $49a9: $67
	ld   h, d                                        ; $49aa: $62
	ld   d, d                                        ; $49ab: $52
	dec  c                                           ; $49ac: $0d
	inc  bc                                          ; $49ad: $03
	db   $d3                                         ; $49ae: $d3
	dec  b                                           ; $49af: $05
	ld   a, [bc]                                     ; $49b0: $0a
	ld   e, d                                        ; $49b1: $5a
	inc  b                                           ; $49b2: $04
	adc  d                                           ; $49b3: $8a
	inc  b                                           ; $49b4: $04
	rst  JumpTable                                         ; $49b5: $df
	sub  [hl]                                        ; $49b6: $96
	sbc  a                                           ; $49b7: $9f
	dec  c                                           ; $49b8: $0d
	ld   e, d                                        ; $49b9: $5a
	and  c                                           ; $49ba: $a1
	ld   a, [hl]                                     ; $49bb: $7e
	sbc  b                                           ; $49bc: $98
	ld   a, b                                        ; $49bd: $78
	ld   h, e                                        ; $49be: $63
	ld   d, d                                        ; $49bf: $52
	sbc  a                                           ; $49c0: $9f
	dec  c                                           ; $49c1: $0d
	nop                                              ; $49c2: $00
	ld   a, [bc]                                     ; $49c3: $0a
	ld   b, $06                                      ; $49c4: $06 $06
	rrca                                             ; $49c6: $0f
	rrca                                             ; $49c7: $0f
	nop                                              ; $49c8: $00
	ld   bc, $0301                                   ; $49c9: $01 $01 $03
	ld   l, $03                                      ; $49cc: $2e $03
	pop  hl                                          ; $49ce: $e1
	ld   a, h                                        ; $49cf: $7c
	inc  bc                                          ; $49d0: $03
	ld   d, d                                        ; $49d1: $52
	ld   [bc], a                                     ; $49d2: $02
	or   a                                           ; $49d3: $b7
	and  b                                           ; $49d4: $a0
	ld   h, l                                        ; $49d5: $65
	ld   [hl], h                                     ; $49d6: $74
	ld   d, d                                        ; $49d7: $52
	sbc  c                                           ; $49d8: $99
	halt                                             ; $49d9: $76
	dec  c                                           ; $49da: $0d
	dec  b                                           ; $49db: $05
	pop  de                                          ; $49dc: $d1
	ld   d, d                                        ; $49dd: $52
	adc  h                                           ; $49de: $8c
	ld   h, a                                        ; $49df: $67
	rst  $38                                         ; $49e0: $ff
	rst  $38                                         ; $49e1: $ff
	inc  b                                           ; $49e2: $04
	xor  b                                           ; $49e3: $a8
	inc  b                                           ; $49e4: $04
	xor  c                                           ; $49e5: $a9
	ld   [hl], l                                     ; $49e6: $75
	ld   h, a                                        ; $49e7: $67
	ld   e, a                                        ; $49e8: $5f
	ld   [hl], a                                     ; $49e9: $77
	sbc  a                                           ; $49ea: $9f
	dec  c                                           ; $49eb: $0d
	nop                                              ; $49ec: $00
	ld   a, [bc]                                     ; $49ed: $0a
	inc  e                                           ; $49ee: $1c
	inc  bc                                          ; $49ef: $03
	inc  bc                                          ; $49f0: $03
	inc  bc                                          ; $49f1: $03
	ld   bc, $0701                                   ; $49f2: $01 $01 $07
	inc  bc                                          ; $49f5: $03
	ld   l, $03                                      ; $49f6: $2e $03
	pop  hl                                          ; $49f8: $e1
	ld   bc, $9008                                   ; $49f9: $01 $08 $90
	ld   bc, $0407                                   ; $49fc: $01 $07 $04
	xor  b                                           ; $49ff: $a8
	inc  b                                           ; $4a00: $04
	xor  c                                           ; $4a01: $a9
	ld   bc, $9008                                   ; $4a02: $01 $08 $90
	ld   [bc], a                                     ; $4a05: $02
	jr   z, jr_065_4a5a                              ; $4a06: $28 $52

	dec  c                                           ; $4a08: $0d
	ld   h, c                                        ; $4a09: $61
	halt                                             ; $4a0a: $76
	ld   [hl], l                                     ; $4a0b: $75
	ld   a, l                                        ; $4a0c: $7d
	ld   a, b                                        ; $4a0d: $78
	ld   d, d                                        ; $4a0e: $52
	sbc  l                                           ; $4a0f: $9d
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	adc  [hl]                                        ; $4a12: $8e
	ld   h, l                                        ; $4a13: $65
	sbc  e                                           ; $4a14: $9b
	sbc  [hl]                                        ; $4a15: $9e
	dec  c                                           ; $4a16: $0d
	ld   d, h                                        ; $4a17: $54
	sub  a                                           ; $4a18: $97
	sub  d                                           ; $4a19: $92
	adc  h                                           ; $4a1a: $8c
	ld   h, l                                        ; $4a1b: $65
	ld   d, d                                        ; $4a1c: $52
	rst  $38                                         ; $4a1d: $ff
	rst  $38                                         ; $4a1e: $ff
	dec  c                                           ; $4a1f: $0d
	nop                                              ; $4a20: $00
	ld   a, [bc]                                     ; $4a21: $0a
	ld   b, $06                                      ; $4a22: $06 $06
	rrca                                             ; $4a24: $0f
	rrca                                             ; $4a25: $0f
	nop                                              ; $4a26: $00
	ld   bc, $6b01                                   ; $4a27: $01 $01 $6b
	ld   d, h                                        ; $4a2a: $54
	ld   [hl], l                                     ; $4a2b: $75
	ld   h, a                                        ; $4a2c: $67
	ld   a, e                                        ; $4a2d: $7b
	rst  $38                                         ; $4a2e: $ff
	rst  $38                                         ; $4a2f: $ff
	dec  c                                           ; $4a30: $0d
	inc  bc                                          ; $4a31: $03
	add  hl, de                                      ; $4a32: $19
	ld   [bc], a                                     ; $4a33: $02
	ld   b, d                                        ; $4a34: $42
	ld   a, h                                        ; $4a35: $7c
	inc  bc                                          ; $4a36: $03
	add  l                                           ; $4a37: $85
	inc  b                                           ; $4a38: $04
	xor  e                                           ; $4a39: $ab
	inc  bc                                          ; $4a3a: $03
	or   b                                           ; $4a3b: $b0
	ld   [hl], l                                     ; $4a3c: $75
	ld   h, a                                        ; $4a3d: $67
	ld   e, c                                        ; $4a3e: $59
	ld   a, e                                        ; $4a3f: $7b
	ld   sp, hl                                      ; $4a40: $f9
	dec  c                                           ; $4a41: $0d
	nop                                              ; $4a42: $00
	ld   a, [bc]                                     ; $4a43: $0a
	inc  e                                           ; $4a44: $1c
	inc  bc                                          ; $4a45: $03
	inc  bc                                          ; $4a46: $03
	inc  bc                                          ; $4a47: $03
	ld   bc, $9750                                   ; $4a48: $01 $50 $97
	rst  $38                                         ; $4a4b: $ff
	rst  $38                                         ; $4a4c: $ff
	ld   l, e                                        ; $4a4d: $6b
	ld   d, h                                        ; $4a4e: $54
	ld   a, b                                        ; $4a4f: $78
	sbc  c                                           ; $4a50: $99
	halt                                             ; $4a51: $76
	dec  c                                           ; $4a52: $0d
	inc  bc                                          ; $4a53: $03
	ret  z                                           ; $4a54: $c8

	ld   l, l                                        ; $4a55: $6d
	ld   l, a                                        ; $4a56: $6f
	ld   a, h                                        ; $4a57: $7c
	inc  bc                                          ; $4a58: $03
	db   $dd                                         ; $4a59: $dd

jr_065_4a5a:
	ld   a, c                                        ; $4a5a: $79
	ld   a, b                                        ; $4a5b: $78
	ld   [hl], c                                     ; $4a5c: $71
	ld   [hl], h                                     ; $4a5d: $74
	dec  c                                           ; $4a5e: $0d
	ld   h, l                                        ; $4a5f: $65
	adc  h                                           ; $4a60: $8c
	ld   d, h                                        ; $4a61: $54
	ld   a, h                                        ; $4a62: $7c
	sub  [hl]                                        ; $4a63: $96
	ld   sp, hl                                      ; $4a64: $f9
	dec  c                                           ; $4a65: $0d
	nop                                              ; $4a66: $00
	ld   a, [bc]                                     ; $4a67: $0a
	rrca                                             ; $4a68: $0f
	nop                                              ; $4a69: $00
	ld   bc, $6b01                                   ; $4a6a: $01 $01 $6b
	sbc  d                                           ; $4a6d: $9a
	sub  b                                           ; $4a6e: $90
	ld   l, e                                        ; $4a6f: $6b
	ld   d, h                                        ; $4a70: $54
	ld   [hl], l                                     ; $4a71: $75
	ld   h, a                                        ; $4a72: $67
	ld   a, e                                        ; $4a73: $7b
	rst  $38                                         ; $4a74: $ff
	rst  $38                                         ; $4a75: $ff
	dec  c                                           ; $4a76: $0d
	ld   a, b                                        ; $4a77: $78
	sub  a                                           ; $4a78: $97
	sbc  [hl]                                        ; $4a79: $9e
	sub  d                                           ; $4a7a: $92
	adc  a                                           ; $4a7b: $8f
	ld   [hl], h                                     ; $4a7c: $74
	ld   e, b                                        ; $4a7d: $58
	ld   e, e                                        ; $4a7e: $5b
	adc  h                                           ; $4a7f: $8c
	ld   h, a                                        ; $4a80: $67
	sbc  a                                           ; $4a81: $9f
	dec  c                                           ; $4a82: $0d
	nop                                              ; $4a83: $00
	ld   a, [bc]                                     ; $4a84: $0a
	inc  e                                           ; $4a85: $1c
	inc  bc                                          ; $4a86: $03
	inc  bc                                          ; $4a87: $03
	inc  bc                                          ; $4a88: $03
	ld   bc, $d6d6                                   ; $4a89: $01 $d6 $d6
	sub  $ff                                         ; $4a8c: $d6 $ff
	rst  $38                                         ; $4a8e: $ff
	ld   l, e                                        ; $4a8f: $6b
	ld   a, h                                        ; $4a90: $7c
	adc  c                                           ; $4a91: $89
	ld   d, h                                        ; $4a92: $54
	ld   e, d                                        ; $4a93: $5a
	ld   d, d                                        ; $4a94: $52
	ld   d, d                                        ; $4a95: $52
	sbc  l                                           ; $4a96: $9d
	sbc  a                                           ; $4a97: $9f
	dec  c                                           ; $4a98: $0d
	nop                                              ; $4a99: $00
	ld   a, [bc]                                     ; $4a9a: $0a
	ld   b, $06                                      ; $4a9b: $06 $06
	rrca                                             ; $4a9d: $0f
	inc  e                                           ; $4a9e: $1c
	inc  bc                                          ; $4a9f: $03
	inc  bc                                          ; $4aa0: $03
	inc  bc                                          ; $4aa1: $03
	ld   bc, $d6d6                                   ; $4aa2: $01 $d6 $d6
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	ld   [de], a                                     ; $4aa7: $12
	ld   de, $5004                                   ; $4aa8: $11 $04 $50
	ld   [bc], a                                     ; $4aab: $02
	xor  d                                           ; $4aac: $aa
	ld   a, h                                        ; $4aad: $7c
	ld   h, c                                        ; $4aae: $61
	halt                                             ; $4aaf: $76
	ld   l, [hl]                                     ; $4ab0: $6e
	ld   e, c                                        ; $4ab1: $59
	sub  a                                           ; $4ab2: $97
	dec  c                                           ; $4ab3: $0d
	ld   l, e                                        ; $4ab4: $6b
	and  c                                           ; $4ab5: $a1
	ld   a, b                                        ; $4ab6: $78
	ld   a, c                                        ; $4ab7: $79
	ld   d, b                                        ; $4ab8: $50
	ld   l, c                                        ; $4ab9: $69
	ld   [hl], c                                     ; $4aba: $71
	ld   [hl], h                                     ; $4abb: $74
	ld   [bc], a                                     ; $4abc: $02
	ld   h, l                                        ; $4abd: $65
	ld   d, [hl]                                     ; $4abe: $56
	ld   a, b                                        ; $4abf: $78
	ld   e, l                                        ; $4ac0: $5d
	ld   [hl], h                                     ; $4ac1: $74
	sub  b                                           ; $4ac2: $90
	dec  c                                           ; $4ac3: $0d
	ld   d, d                                        ; $4ac4: $52
	ld   d, d                                        ; $4ac5: $52
	ld   h, c                                        ; $4ac6: $61
	halt                                             ; $4ac7: $76
	ld   a, e                                        ; $4ac8: $7b
	sbc  a                                           ; $4ac9: $9f
	dec  c                                           ; $4aca: $0d
	nop                                              ; $4acb: $00
	ld   a, [bc]                                     ; $4acc: $0a
	inc  e                                           ; $4acd: $1c
	inc  bc                                          ; $4ace: $03
	nop                                              ; $4acf: $00
	nop                                              ; $4ad0: $00
	ld   bc, $a502                                   ; $4ad1: $01 $02 $a5
	inc  b                                           ; $4ad4: $04
	xor  d                                           ; $4ad5: $aa
	ld   a, l                                        ; $4ad6: $7d
	ld   e, b                                        ; $4ad7: $58
	inc  bc                                          ; $4ad8: $03
	and  a                                           ; $4ad9: $a7
	adc  l                                           ; $4ada: $8d
	ld   a, b                                        ; $4adb: $78
	ld   a, h                                        ; $4adc: $7c
	ld   a, c                                        ; $4add: $79
	dec  c                                           ; $4ade: $0d
	ld   e, b                                        ; $4adf: $58
	inc  bc                                          ; $4ae0: $03
	rst  $20                                         ; $4ae1: $e7
	ld   a, h                                        ; $4ae2: $7c
	inc  b                                           ; $4ae3: $04
	dec  bc                                          ; $4ae4: $0b
	ld   a, l                                        ; $4ae5: $7d
	inc  bc                                          ; $4ae6: $03
	ld   [bc], a                                     ; $4ae7: $02
	ld   e, c                                        ; $4ae8: $59
	ld   a, e                                        ; $4ae9: $7b
	rst  $38                                         ; $4aea: $ff
	rst  $38                                         ; $4aeb: $ff
	dec  c                                           ; $4aec: $0d
	nop                                              ; $4aed: $00
	ld   a, [bc]                                     ; $4aee: $0a
	ld   bc, $a18d                                   ; $4aef: $01 $8d $a1
	ld   a, b                                        ; $4af2: $78
	inc  b                                           ; $4af3: $04
	inc  de                                          ; $4af4: $13
	ld   [bc], a                                     ; $4af5: $02
	and  c                                           ; $4af6: $a1
	ld   e, d                                        ; $4af7: $5a
	ld   d, d                                        ; $4af8: $52
	ld   d, d                                        ; $4af9: $52
	ld   e, c                                        ; $4afa: $59
	sub  a                                           ; $4afb: $97
	dec  c                                           ; $4afc: $0d
	ld   [bc], a                                     ; $4afd: $02
	bit  7, c                                        ; $4afe: $cb $79
	ld   d, d                                        ; $4b00: $52
	sbc  c                                           ; $4b01: $99
	ld   a, h                                        ; $4b02: $7c
	ld   e, c                                        ; $4b03: $59
	ld   h, l                                        ; $4b04: $65
	sub  a                                           ; $4b05: $97
	rst  $38                                         ; $4b06: $ff
	rst  $38                                         ; $4b07: $ff
	ld   sp, hl                                      ; $4b08: $f9
	dec  c                                           ; $4b09: $0d
	nop                                              ; $4b0a: $00
	ld   a, [bc]                                     ; $4b0b: $0a
	add  hl, de                                      ; $4b0c: $19
	dec  b                                           ; $4b0d: $05
	ld   [bc], a                                     ; $4b0e: $02
	rst  JumpTable                                         ; $4b0f: $df
	db   $ec                                         ; $4b10: $ec
	and  e                                           ; $4b11: $a3
	and  b                                           ; $4b12: $a0
	ld   [bc], a                                     ; $4b13: $02
	sub  l                                           ; $4b14: $95
	ld   [hl], d                                     ; $4b15: $72
	adc  a                                           ; $4b16: $8f
	sbc  c                                           ; $4b17: $99
	nop                                              ; $4b18: $00
	nop                                              ; $4b19: $00
	or   h                                           ; $4b1a: $b4
	ei                                               ; $4b1b: $fb
	db   $d3                                         ; $4b1c: $d3
	ei                                               ; $4b1d: $fb
	ld   a, h                                        ; $4b1e: $7c
	dec  b                                           ; $4b1f: $05
	jr   nz, @+$06                                   ; $4b20: $20 $04

	dec  d                                           ; $4b22: $15
	nop                                              ; $4b23: $00
	ld   bc, $7307                                   ; $4b24: $01 $07 $73
	rrca                                             ; $4b27: $0f
	ld   [bc], a                                     ; $4b28: $02
	inc  bc                                          ; $4b29: $03
	ld   bc, $2000                                   ; $4b2a: $01 $00 $20
	nop                                              ; $4b2d: $00
	rlca                                             ; $4b2e: $07
	call z, $0210                                    ; $4b2f: $cc $10 $02
	inc  bc                                          ; $4b32: $03
	ld   bc, $2001                                   ; $4b33: $01 $01 $20
	nop                                              ; $4b36: $00
	ld   b, $17                                      ; $4b37: $06 $17
	ld   de, $031c                                   ; $4b39: $11 $1c $03
	rlca                                             ; $4b3c: $07
	rlca                                             ; $4b3d: $07
	ld   bc, $9750                                   ; $4b3e: $01 $50 $97
	rst  $38                                         ; $4b41: $ff
	rst  $38                                         ; $4b42: $ff
	ld   [hl], a                                     ; $4b43: $77
	ld   d, h                                        ; $4b44: $54
	ld   h, l                                        ; $4b45: $65
	ld   l, l                                        ; $4b46: $6d
	ld   a, h                                        ; $4b47: $7c
	ld   sp, hl                                      ; $4b48: $f9
	dec  c                                           ; $4b49: $0d
	nop                                              ; $4b4a: $00
	ld   a, [bc]                                     ; $4b4b: $0a
	add  hl, de                                      ; $4b4c: $19
	dec  b                                           ; $4b4d: $05
	inc  bc                                          ; $4b4e: $03
	inc  b                                           ; $4b4f: $04
	ld   l, d                                        ; $4b50: $6a
	and  b                                           ; $4b51: $a0
	ld   [bc], a                                     ; $4b52: $02
	sub  l                                           ; $4b53: $95
	sbc  c                                           ; $4b54: $99
	nop                                              ; $4b55: $00
	nop                                              ; $4b56: $00
	inc  b                                           ; $4b57: $04
	call nc, $02a0                                   ; $4b58: $d4 $a0 $02
	sub  l                                           ; $4b5b: $95
	sbc  c                                           ; $4b5c: $99
	nop                                              ; $4b5d: $00
	ld   bc, $ae02                                   ; $4b5e: $01 $02 $ae
	and  b                                           ; $4b61: $a0
	ld   [bc], a                                     ; $4b62: $02
	sub  l                                           ; $4b63: $95
	sbc  c                                           ; $4b64: $99
	nop                                              ; $4b65: $00
	ld   [bc], a                                     ; $4b66: $02
	rlca                                             ; $4b67: $07
	cp   [hl]                                        ; $4b68: $be
	rrca                                             ; $4b69: $0f
	ld   [bc], a                                     ; $4b6a: $02
	inc  bc                                          ; $4b6b: $03
	ld   bc, $2000                                   ; $4b6c: $01 $00 $20
	nop                                              ; $4b6f: $00
	rlca                                             ; $4b70: $07
	inc  c                                           ; $4b71: $0c
	db   $10                                         ; $4b72: $10
	ld   [bc], a                                     ; $4b73: $02
	inc  bc                                          ; $4b74: $03
	ld   bc, $2001                                   ; $4b75: $01 $01 $20
	nop                                              ; $4b78: $00
	rlca                                             ; $4b79: $07
	ld   e, [hl]                                     ; $4b7a: $5e
	db   $10                                         ; $4b7b: $10
	ld   [bc], a                                     ; $4b7c: $02
	inc  bc                                          ; $4b7d: $03
	ld   bc, $2002                                   ; $4b7e: $01 $02 $20
	nop                                              ; $4b81: $00
	ld   b, $ab                                      ; $4b82: $06 $ab
	db   $10                                         ; $4b84: $10
	rrca                                             ; $4b85: $0f
	nop                                              ; $4b86: $00
	ld   bc, $030d                                   ; $4b87: $01 $0d $03
	nop                                              ; $4b8a: $00
	ld   bc, $ecdf                                   ; $4b8b: $01 $df $ec
	and  e                                           ; $4b8e: $a3
	ld   h, e                                        ; $4b8f: $63
	and  c                                           ; $4b90: $a1
	ld   a, h                                        ; $4b91: $7c
	inc  b                                           ; $4b92: $04
	ld   l, d                                        ; $4b93: $6a
	ld   [hl], c                                     ; $4b94: $71
	ld   [hl], h                                     ; $4b95: $74
	dec  c                                           ; $4b96: $0d
	ret  c                                           ; $4b97: $d8

	db   $eb                                         ; $4b98: $eb
	jp   nz, $d7cb                                   ; $4b99: $c2 $cb $d7

	rst  $28                                         ; $4b9c: $ef
	push af                                          ; $4b9d: $f5
	jp   z, $0d75                                    ; $4b9e: $ca $75 $0d

	halt                                             ; $4ba1: $76
	ld   [hl], h                                     ; $4ba2: $74
	sub  b                                           ; $4ba3: $90
	sbc  [hl]                                        ; $4ba4: $9e
	ld   e, e                                        ; $4ba5: $5b
	sbc  d                                           ; $4ba6: $9a
	ld   d, d                                        ; $4ba7: $52
	ld   [hl], l                                     ; $4ba8: $75
	ld   h, a                                        ; $4ba9: $67
	ld   a, e                                        ; $4baa: $7b
	rst  $38                                         ; $4bab: $ff
	rst  $38                                         ; $4bac: $ff
	dec  c                                           ; $4bad: $0d
	nop                                              ; $4bae: $00
	ld   a, [bc]                                     ; $4baf: $0a
	inc  e                                           ; $4bb0: $1c
	inc  bc                                          ; $4bb1: $03
	inc  bc                                          ; $4bb2: $03
	inc  bc                                          ; $4bb3: $03
	ld   bc, $d6d6                                   ; $4bb4: $01 $d6 $d6
	rst  $38                                         ; $4bb7: $ff
	rst  $38                                         ; $4bb8: $ff
	dec  c                                           ; $4bb9: $0d
	inc  b                                           ; $4bba: $04
	ld   c, $03                                      ; $4bbb: $0e $03
	add  d                                           ; $4bbd: $82
	and  b                                           ; $4bbe: $a0
	ld   e, c                                        ; $4bbf: $59
	sub  a                                           ; $4bc0: $97
	ld   e, c                                        ; $4bc1: $59
	ld   d, h                                        ; $4bc2: $54
	sub  b                                           ; $4bc3: $90
	ld   a, h                                        ; $4bc4: $7c
	ld   h, [hl]                                     ; $4bc5: $66
	sub  c                                           ; $4bc6: $91
	dec  c                                           ; $4bc7: $0d
	ld   a, b                                        ; $4bc8: $78
	ld   d, d                                        ; $4bc9: $52
	sbc  l                                           ; $4bca: $9d
	sub  [hl]                                        ; $4bcb: $96
	sbc  a                                           ; $4bcc: $9f
	dec  c                                           ; $4bcd: $0d
	nop                                              ; $4bce: $00
	ld   a, [bc]                                     ; $4bcf: $0a
	ld   b, $17                                      ; $4bd0: $06 $17
	ld   de, $000f                                   ; $4bd2: $11 $0f $00
	ld   bc, $030d                                   ; $4bd5: $01 $0d $03
	nop                                              ; $4bd8: $00
	ld   bc, $ecdf                                   ; $4bd9: $01 $df $ec
	and  e                                           ; $4bdc: $a3
	ld   h, e                                        ; $4bdd: $63
	and  c                                           ; $4bde: $a1
	ld   a, h                                        ; $4bdf: $7c
	inc  b                                           ; $4be0: $04
	call nc, $7471                                   ; $4be1: $d4 $71 $74
	dec  c                                           ; $4be4: $0d
	ld   h, a                                        ; $4be5: $67
	and  c                                           ; $4be6: $a1
	ld   [hl], l                                     ; $4be7: $75
	ld   d, d                                        ; $4be8: $52
	ld   [hl], h                                     ; $4be9: $74
	sbc  [hl]                                        ; $4bea: $9e
	ld   e, e                                        ; $4beb: $5b
	sbc  d                                           ; $4bec: $9a
	ld   d, d                                        ; $4bed: $52
	ld   [hl], l                                     ; $4bee: $75
	ld   h, a                                        ; $4bef: $67
	sub  [hl]                                        ; $4bf0: $96
	ld   a, e                                        ; $4bf1: $7b
	sbc  a                                           ; $4bf2: $9f
	dec  c                                           ; $4bf3: $0d
	nop                                              ; $4bf4: $00
	ld   a, [bc]                                     ; $4bf5: $0a
	inc  e                                           ; $4bf6: $1c
	inc  bc                                          ; $4bf7: $03
	inc  bc                                          ; $4bf8: $03
	inc  bc                                          ; $4bf9: $03
	ld   bc, $a16b                                   ; $4bfa: $01 $6b $a1
	ld   a, b                                        ; $4bfd: $78
	ld   h, c                                        ; $4bfe: $61
	halt                                             ; $4bff: $76
	ld   a, b                                        ; $4c00: $78
	ld   d, d                                        ; $4c01: $52
	sbc  l                                           ; $4c02: $9d
	sub  [hl]                                        ; $4c03: $96
	rst  $38                                         ; $4c04: $ff
	rst  $38                                         ; $4c05: $ff
	dec  c                                           ; $4c06: $0d
	adc  [hl]                                        ; $4c07: $8e
	ld   h, l                                        ; $4c08: $65
	sbc  e                                           ; $4c09: $9b
	sbc  [hl]                                        ; $4c0a: $9e
	ld   d, b                                        ; $4c0b: $50
	ld   a, b                                        ; $4c0c: $78
	ld   l, l                                        ; $4c0d: $6d
	ld   a, h                                        ; $4c0e: $7c
	inc  b                                           ; $4c0f: $04
	ld   a, b                                        ; $4c10: $78
	ld   e, d                                        ; $4c11: $5a
	dec  c                                           ; $4c12: $0d
	ld   h, a                                        ; $4c13: $67
	and  c                                           ; $4c14: $a1
	ld   l, [hl]                                     ; $4c15: $6e
	inc  b                                           ; $4c16: $04
	call nc, Call_065_65a0                           ; $4c17: $d4 $a0 $65
	ld   [hl], h                                     ; $4c1a: $74
	sbc  c                                           ; $4c1b: $99
	sbc  l                                           ; $4c1c: $9d
	rst  $38                                         ; $4c1d: $ff
	rst  $38                                         ; $4c1e: $ff
	dec  c                                           ; $4c1f: $0d
	nop                                              ; $4c20: $00
	ld   a, [bc]                                     ; $4c21: $0a
	ld   b, $17                                      ; $4c22: $06 $17
	ld   de, $000f                                   ; $4c24: $11 $0f $00
	ld   bc, $030d                                   ; $4c27: $01 $0d $03
	nop                                              ; $4c2a: $00
	ld   bc, $ecdf                                   ; $4c2b: $01 $df $ec
	and  e                                           ; $4c2e: $a3
	ld   h, e                                        ; $4c2f: $63
	and  c                                           ; $4c30: $a1
	ld   a, h                                        ; $4c31: $7c
	ld   e, l                                        ; $4c32: $5d
	ld   l, a                                        ; $4c33: $6f
	add  c                                           ; $4c34: $81
	sbc  c                                           ; $4c35: $99
	ld   [hl], c                                     ; $4c36: $71
	ld   [hl], h                                     ; $4c37: $74
	dec  c                                           ; $4c38: $0d
	sub  d                                           ; $4c39: $92
	sbc  l                                           ; $4c3a: $9d
	sub  a                                           ; $4c3b: $97
	ld   e, c                                        ; $4c3c: $59
	ld   l, e                                        ; $4c3d: $6b
	ld   d, h                                        ; $4c3e: $54
	ld   [hl], l                                     ; $4c3f: $75
	ld   h, a                                        ; $4c40: $67
	ld   a, e                                        ; $4c41: $7b
	rst  $38                                         ; $4c42: $ff
	rst  $38                                         ; $4c43: $ff
	dec  c                                           ; $4c44: $0d
	nop                                              ; $4c45: $00
	ld   a, [bc]                                     ; $4c46: $0a
	inc  e                                           ; $4c47: $1c
	inc  bc                                          ; $4c48: $03
	inc  bc                                          ; $4c49: $03
	inc  bc                                          ; $4c4a: $03
	ld   bc, $d6d6                                   ; $4c4b: $01 $d6 $d6
	rst  $38                                         ; $4c4e: $ff
	rst  $38                                         ; $4c4f: $ff
	ld   l, e                                        ; $4c50: $6b
	ld   d, h                                        ; $4c51: $54
	ld   d, d                                        ; $4c52: $52
	ld   d, h                                        ; $4c53: $54
	ld   h, c                                        ; $4c54: $61
	halt                                             ; $4c55: $76
	ld   a, l                                        ; $4c56: $7d
	dec  c                                           ; $4c57: $0d
	ld   d, b                                        ; $4c58: $50
	and  c                                           ; $4c59: $a1
	adc  h                                           ; $4c5a: $8c
	sbc  b                                           ; $4c5b: $98
	ld   [bc], a                                     ; $4c5c: $02
	sbc  l                                           ; $4c5d: $9d
	sbc  l                                           ; $4c5e: $9d
	ld   a, b                                        ; $4c5f: $78
	ld   d, d                                        ; $4c60: $52
	inc  b                                           ; $4c61: $04
	ld   a, b                                        ; $4c62: $78
	ld   e, d                                        ; $4c63: $5a
	dec  c                                           ; $4c64: $0d
	inc  b                                           ; $4c65: $04
	pop  de                                          ; $4c66: $d1
	ld   a, h                                        ; $4c67: $7c
	ld   l, l                                        ; $4c68: $6d
	adc  a                                           ; $4c69: $8f
	sub  [hl]                                        ; $4c6a: $96
	sbc  a                                           ; $4c6b: $9f
	dec  c                                           ; $4c6c: $0d
	nop                                              ; $4c6d: $00
	ld   a, [bc]                                     ; $4c6e: $0a
	ld   b, $17                                      ; $4c6f: $06 $17
	ld   de, $031c                                   ; $4c71: $11 $1c $03
	ld   bc, $0101                                   ; $4c74: $01 $01 $01
	ld   l, e                                        ; $4c77: $6b
	and  c                                           ; $4c78: $a1
	ld   a, b                                        ; $4c79: $78
	ld   a, c                                        ; $4c7a: $79
	cp   c                                           ; $4c7b: $b9
	call nz, $0276                                   ; $4c7c: $c4 $76 $02
	sub  l                                           ; $4c7f: $95
	ld   [hl], d                                     ; $4c80: $72
	adc  a                                           ; $4c81: $8f
	sub  a                                           ; $4c82: $97
	sbc  d                                           ; $4c83: $9a
	sbc  c                                           ; $4c84: $99
	halt                                             ; $4c85: $76
	dec  c                                           ; $4c86: $0d
	ld   [hl], h                                     ; $4c87: $74
	sbc  d                                           ; $4c88: $9a
	sbc  c                                           ; $4c89: $99
	sbc  l                                           ; $4c8a: $9d
	rst  $38                                         ; $4c8b: $ff
	rst  $38                                         ; $4c8c: $ff
	dec  c                                           ; $4c8d: $0d
	nop                                              ; $4c8e: $00
	ld   a, [bc]                                     ; $4c8f: $0a
	ld   b, $17                                      ; $4c90: $06 $17
	ld   de, $000f                                   ; $4c92: $11 $0f $00
	ld   bc, $df01                                   ; $4c95: $01 $01 $df
	db   $ec                                         ; $4c98: $ec
	and  e                                           ; $4c99: $a3
	ld   h, e                                        ; $4c9a: $63
	and  c                                           ; $4c9b: $a1
	ld   [hl], h                                     ; $4c9c: $74
	or   h                                           ; $4c9d: $b4
	ei                                               ; $4c9e: $fb
	db   $d3                                         ; $4c9f: $d3
	ei                                               ; $4ca0: $fb
	ld   a, l                                        ; $4ca1: $7d
	dec  c                                           ; $4ca2: $0d
	rst  $10                                         ; $4ca3: $d7
	db   $eb                                         ; $4ca4: $eb
	call nz, Call_065_78b0                           ; $4ca5: $c4 $b0 $78
	and  c                                           ; $4ca8: $a1
	ld   [hl], l                                     ; $4ca9: $75
	ld   h, a                                        ; $4caa: $67
	ld   a, e                                        ; $4cab: $7b
	sbc  a                                           ; $4cac: $9f
	dec  c                                           ; $4cad: $0d
	nop                                              ; $4cae: $00
	ld   a, [bc]                                     ; $4caf: $0a
	inc  e                                           ; $4cb0: $1c
	inc  bc                                          ; $4cb1: $03
	inc  bc                                          ; $4cb2: $03
	inc  bc                                          ; $4cb3: $03
	ld   bc, $546b                                   ; $4cb4: $01 $6b $54
	ld   a, e                                        ; $4cb7: $7b
	rst  $38                                         ; $4cb8: $ff
	rst  $38                                         ; $4cb9: $ff
	ld   l, c                                        ; $4cba: $69
	ld   [hl], c                                     ; $4cbb: $71
	ld   e, c                                        ; $4cbc: $59
	ld   e, l                                        ; $4cbd: $5d
	ld   a, h                                        ; $4cbe: $7c
	dec  b                                           ; $4cbf: $05
	ld   a, c                                        ; $4cc0: $79
	sbc  b                                           ; $4cc1: $98
	and  b                                           ; $4cc2: $a0
	dec  c                                           ; $4cc3: $0d
	inc  b                                           ; $4cc4: $04
	ld   c, c                                        ; $4cc5: $49
	ld   e, c                                        ; $4cc6: $59
	ld   [hl], l                                     ; $4cc7: $75
	sbc  [hl]                                        ; $4cc8: $9e
	ld   h, d                                        ; $4cc9: $62
	adc  h                                           ; $4cca: $8c
	ld   e, c                                        ; $4ccb: $59
	ld   h, e                                        ; $4ccc: $63
	sbc  d                                           ; $4ccd: $9a
	ld   l, a                                        ; $4cce: $6f
	sub  c                                           ; $4ccf: $91
	ld   d, h                                        ; $4cd0: $54
	ld   a, h                                        ; $4cd1: $7c
	ld   e, d                                        ; $4cd2: $5a
	dec  c                                           ; $4cd3: $0d
	ld   d, d                                        ; $4cd4: $52
	sub  d                                           ; $4cd5: $92
	ld   a, b                                        ; $4cd6: $78
	ld   a, h                                        ; $4cd7: $7c
	sub  [hl]                                        ; $4cd8: $96
	ld   a, e                                        ; $4cd9: $7b
	sbc  a                                           ; $4cda: $9f
	dec  c                                           ; $4cdb: $0d
	nop                                              ; $4cdc: $00
	ld   a, [bc]                                     ; $4cdd: $0a
	inc  e                                           ; $4cde: $1c
	inc  bc                                          ; $4cdf: $03
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	ld   bc, $9e63                                   ; $4ce2: $01 $63 $9e
	ld   l, e                                        ; $4ce5: $6b
	sbc  e                                           ; $4ce6: $9b
	ld   l, e                                        ; $4ce7: $6b
	sbc  e                                           ; $4ce8: $9b
	inc  bc                                          ; $4ce9: $03
	add  b                                           ; $4cea: $80
	adc  h                                           ; $4ceb: $8c
	ld   h, l                                        ; $4cec: $65
	sub  l                                           ; $4ced: $95
	ld   d, h                                        ; $4cee: $54
	sbc  a                                           ; $4cef: $9f
	dec  c                                           ; $4cf0: $0d
	nop                                              ; $4cf1: $00
	ld   a, [bc]                                     ; $4cf2: $0a
	dec  c                                           ; $4cf3: $0d
	nop                                              ; $4cf4: $00
	nop                                              ; $4cf5: $00
	rrca                                             ; $4cf6: $0f
	nop                                              ; $4cf7: $00
	ld   bc, $8a07                                   ; $4cf8: $01 $07 $8a
	ld   de, $1303                                   ; $4cfb: $11 $03 $13
	ld   bc, $25b4                                   ; $4cfe: $01 $b4 $25
	inc  b                                           ; $4d01: $04
	add  b                                           ; $4d02: $80
	ld   [hl], d                                     ; $4d03: $72
	ld   bc, $20ff                                   ; $4d04: $01 $ff $20
	inc  e                                           ; $4d07: $1c
	nop                                              ; $4d08: $00
	rlca                                             ; $4d09: $07
	inc  hl                                          ; $4d0a: $23
	ld   d, $03                                      ; $4d0b: $16 $03
	inc  de                                          ; $4d0d: $13
	ld   bc, $25b4                                   ; $4d0e: $01 $b4 $25
	inc  b                                           ; $4d11: $04
	add  b                                           ; $4d12: $80
	ld   [hl], d                                     ; $4d13: $72
	ld   bc, $2000                                   ; $4d14: $01 $00 $20
	inc  e                                           ; $4d17: $1c
	nop                                              ; $4d18: $00
	inc  c                                           ; $4d19: $0c
	ld   [bc], a                                     ; $4d1a: $02
	ld   c, $06                                      ; $4d1b: $0e $06
	inc  e                                           ; $4d1d: $1c
	inc  bc                                          ; $4d1e: $03
	inc  bc                                          ; $4d1f: $03
	inc  bc                                          ; $4d20: $03
	ld   bc, $a502                                   ; $4d21: $01 $02 $a5
	inc  b                                           ; $4d24: $04
	xor  d                                           ; $4d25: $aa
	ld   a, l                                        ; $4d26: $7d
	inc  bc                                          ; $4d27: $03
	ld   l, e                                        ; $4d28: $6b
	inc  b                                           ; $4d29: $04
	ld   [de], a                                     ; $4d2a: $12
	ld   [hl], c                                     ; $4d2b: $71
	ld   [hl], h                                     ; $4d2c: $74
	ld   e, l                                        ; $4d2d: $5d
	sbc  d                                           ; $4d2e: $9a
	ld   [hl], h                                     ; $4d2f: $74
	dec  c                                           ; $4d30: $0d
	ld   d, b                                        ; $4d31: $50
	sbc  b                                           ; $4d32: $98
	ld   e, d                                        ; $4d33: $5a
	halt                                             ; $4d34: $76
	ld   d, h                                        ; $4d35: $54
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	ld   l, e                                        ; $4d38: $6b
	sbc  d                                           ; $4d39: $9a
	ld   h, [hl]                                     ; $4d3a: $66
	sub  c                                           ; $4d3b: $91
	sbc  a                                           ; $4d3c: $9f
	dec  c                                           ; $4d3d: $0d
	nop                                              ; $4d3e: $00
	ld   a, [bc]                                     ; $4d3f: $0a
	dec  b                                           ; $4d40: $05
	add  b                                           ; $4d41: $80
	ld   a, b                                        ; $4d42: $78
	ld   bc, $0001                                   ; $4d43: $01 $01 $00
	dec  c                                           ; $4d46: $0d
	nop                                              ; $4d47: $00
	nop                                              ; $4d48: $00
	rrca                                             ; $4d49: $0f
	nop                                              ; $4d4a: $00
	ld   bc, $1e09                                   ; $4d4b: $01 $09 $1e
	add  hl, hl                                      ; $4d4e: $29
	nop                                              ; $4d4f: $00
	nop                                              ; $4d50: $00
	inc  c                                           ; $4d51: $0c
	ld   [bc], a                                     ; $4d52: $02
	ld   c, $96                                      ; $4d53: $0e $96
	inc  e                                           ; $4d55: $1c
	inc  bc                                          ; $4d56: $03
	nop                                              ; $4d57: $00
	nop                                              ; $4d58: $00
	dec  b                                           ; $4d59: $05
	ld   b, b                                        ; $4d5a: $40
	rst  $38                                         ; $4d5b: $ff
	ld   bc, $0000                                   ; $4d5c: $01 $00 $00
	ld   bc, $546b                                   ; $4d5f: $01 $6b $54
	ld   d, d                                        ; $4d62: $52
	ld   d, [hl]                                     ; $4d63: $56
	ld   a, [hl]                                     ; $4d64: $7e
	sbc  [hl]                                        ; $4d65: $9e
	db   $dd                                         ; $4d66: $dd
	db   $ed                                         ; $4d67: $ed
	cp   b                                           ; $4d68: $b8
	jp   nz, $0d7c                                   ; $4d69: $c2 $7c $0d

	inc  bc                                          ; $4d6c: $03
	xor  h                                           ; $4d6d: $ac
	sbc  b                                           ; $4d6e: $98
	inc  b                                           ; $4d6f: $04
	ld   a, b                                        ; $4d70: $78
	ld   [hl], c                                     ; $4d71: $71
	ld   [hl], h                                     ; $4d72: $74
	ld   e, b                                        ; $4d73: $58
	adc  d                                           ; $4d74: $8a
	ld   d, [hl]                                     ; $4d75: $56
	ld   [hl], h                                     ; $4d76: $74
	sbc  c                                           ; $4d77: $99
	ld   e, c                                        ; $4d78: $59
	ld   h, l                                        ; $4d79: $65
	sub  a                                           ; $4d7a: $97
	ld   sp, hl                                      ; $4d7b: $f9
	dec  c                                           ; $4d7c: $0d
	nop                                              ; $4d7d: $00
	ld   a, [bc]                                     ; $4d7e: $0a
	rrca                                             ; $4d7f: $0f
	nop                                              ; $4d80: $00
	ld   bc, $5601                                   ; $4d81: $01 $01 $56
	ld   d, [hl]                                     ; $4d84: $56
	halt                                             ; $4d85: $76
	rst  $38                                         ; $4d86: $ff
	rst  $38                                         ; $4d87: $ff
	dec  c                                           ; $4d88: $0d
	adc  h                                           ; $4d89: $8c
	ld   l, b                                        ; $4d8a: $68
	sbc  [hl]                                        ; $4d8b: $9e
	ld   e, b                                        ; $4d8c: $58
	inc  b                                           ; $4d8d: $04
	ccf                                              ; $4d8e: $3f
	and  b                                           ; $4d8f: $a0
	rst  $38                                         ; $4d90: $ff
	rst  $38                                         ; $4d91: $ff
	dec  c                                           ; $4d92: $0d
	nop                                              ; $4d93: $00
	ld   a, [bc]                                     ; $4d94: $0a
	add  hl, de                                      ; $4d95: $19
	dec  b                                           ; $4d96: $05
	inc  bc                                          ; $4d97: $03
	set  3, d                                        ; $4d98: $cb $da
	ld   [hl], l                                     ; $4d9a: $75
	ld   a, c                                        ; $4d9b: $79
	sbc  c                                           ; $4d9c: $99
	nop                                              ; $4d9d: $00
	nop                                              ; $4d9e: $00
	set  3, a                                        ; $4d9f: $cb $df
	ld   [hl], l                                     ; $4da1: $75
	inc  bc                                          ; $4da2: $03
	ld   l, d                                        ; $4da3: $6a
	add  a                                           ; $4da4: $87
	sbc  c                                           ; $4da5: $99
	nop                                              ; $4da6: $00
	ld   bc, $dfac                                   ; $4da7: $01 $ac $df
	jp   z, $9275                                    ; $4daa: $ca $75 $92

	ld   e, l                                        ; $4dad: $5d
	nop                                              ; $4dae: $00
	ld   [bc], a                                     ; $4daf: $02
	rlca                                             ; $4db0: $07
	rlca                                             ; $4db1: $07
	ld   [de], a                                     ; $4db2: $12
	ld   [bc], a                                     ; $4db3: $02
	inc  bc                                          ; $4db4: $03
	ld   bc, $2000                                   ; $4db5: $01 $00 $20
	nop                                              ; $4db8: $00
	rlca                                             ; $4db9: $07
	ld   c, [hl]                                     ; $4dba: $4e
	ld   [de], a                                     ; $4dbb: $12
	ld   [bc], a                                     ; $4dbc: $02
	inc  bc                                          ; $4dbd: $03
	ld   bc, $2001                                   ; $4dbe: $01 $01 $20
	nop                                              ; $4dc1: $00
	rlca                                             ; $4dc2: $07
	adc  b                                           ; $4dc3: $88
	ld   [de], a                                     ; $4dc4: $12
	ld   [bc], a                                     ; $4dc5: $02
	inc  bc                                          ; $4dc6: $03
	ld   bc, $2002                                   ; $4dc7: $01 $02 $20
	nop                                              ; $4dca: $00
	ld   b, $ce                                      ; $4dcb: $06 $ce
	ld   [de], a                                     ; $4dcd: $12
	rrca                                             ; $4dce: $0f
	nop                                              ; $4dcf: $00
	ld   bc, $5801                                   ; $4dd0: $01 $01 $58
	set  3, d                                        ; $4dd3: $cb $da
	ld   [hl], l                                     ; $4dd5: $75
	ld   a, c                                        ; $4dd6: $79
	sbc  c                                           ; $4dd7: $99
	and  c                                           ; $4dd8: $a1
	ld   [hl], l                                     ; $4dd9: $75
	ld   h, a                                        ; $4dda: $67
	sub  [hl]                                        ; $4ddb: $96
	ld   a, e                                        ; $4ddc: $7b
	sbc  a                                           ; $4ddd: $9f
	dec  c                                           ; $4dde: $0d
	nop                                              ; $4ddf: $00
	ld   a, [bc]                                     ; $4de0: $0a
	inc  e                                           ; $4de1: $1c
	inc  bc                                          ; $4de2: $03
	inc  bc                                          ; $4de3: $03
	inc  bc                                          ; $4de4: $03
	ld   bc, $546b                                   ; $4de5: $01 $6b $54
	sub  [hl]                                        ; $4de8: $96
	rst  $38                                         ; $4de9: $ff
	rst  $38                                         ; $4dea: $ff
	ld   l, e                                        ; $4deb: $6b
	ld   a, h                                        ; $4dec: $7c
	ld   a, c                                        ; $4ded: $79
	ld   h, [hl]                                     ; $4dee: $66
	sbc  c                                           ; $4def: $99
	ld   [hl], l                                     ; $4df0: $75
	dec  c                                           ; $4df1: $0d
	inc  b                                           ; $4df2: $04
	rst  $20                                         ; $4df3: $e7
	dec  b                                           ; $4df4: $05
	or   l                                           ; $4df5: $b5
	sub  b                                           ; $4df6: $90
	ld   a, c                                        ; $4df7: $79
	sbc  c                                           ; $4df8: $99
	ld   e, c                                        ; $4df9: $59
	sub  a                                           ; $4dfa: $97
	sbc  [hl]                                        ; $4dfb: $9e
	ld   h, [hl]                                     ; $4dfc: $66
	ld   [hl], c                                     ; $4dfd: $71
	ld   e, l                                        ; $4dfe: $5d
	sbc  b                                           ; $4dff: $98
	dec  c                                           ; $4e00: $0d
	ld   a, c                                        ; $4e01: $79
	sbc  c                                           ; $4e02: $99
	ld   a, h                                        ; $4e03: $7c
	sub  [hl]                                        ; $4e04: $96
	sbc  a                                           ; $4e05: $9f
	dec  c                                           ; $4e06: $0d
	nop                                              ; $4e07: $00
	ld   a, [bc]                                     ; $4e08: $0a
	dec  b                                           ; $4e09: $05
	ld   b, b                                        ; $4e0a: $40
	rst  $38                                         ; $4e0b: $ff
	inc  bc                                          ; $4e0c: $03
	rst  $38                                         ; $4e0d: $ff
	ld   bc, $2801                                   ; $4e0e: $01 $01 $28
	nop                                              ; $4e11: $00
	ld   b, $ec                                      ; $4e12: $06 $ec
	ld   [de], a                                     ; $4e14: $12
	rrca                                             ; $4e15: $0f
	nop                                              ; $4e16: $00
	ld   bc, $cb01                                   ; $4e17: $01 $01 $cb
	rst  JumpTable                                         ; $4e1a: $df
	ld   [hl], l                                     ; $4e1b: $75
	inc  bc                                          ; $4e1c: $03
	ld   l, d                                        ; $4e1d: $6a
	add  a                                           ; $4e1e: $87
	sbc  c                                           ; $4e1f: $99
	rst  $38                                         ; $4e20: $ff
	rst  $38                                         ; $4e21: $ff
	dec  c                                           ; $4e22: $0d
	ld   sp, hl                                      ; $4e23: $f9
	ld   sp, hl                                      ; $4e24: $f9
	ld   sp, hl                                      ; $4e25: $f9
	dec  c                                           ; $4e26: $0d
	nop                                              ; $4e27: $00
	ld   a, [bc]                                     ; $4e28: $0a
	inc  e                                           ; $4e29: $1c
	inc  bc                                          ; $4e2a: $03
	inc  b                                           ; $4e2b: $04
	inc  b                                           ; $4e2c: $04
	ld   bc, $dfcb                                   ; $4e2d: $01 $cb $df
	ld   [hl], l                                     ; $4e30: $75
	inc  bc                                          ; $4e31: $03
	ld   l, d                                        ; $4e32: $6a
	add  a                                           ; $4e33: $87
	ld   l, a                                        ; $4e34: $6f
	sub  c                                           ; $4e35: $91
	ld   l, [hl]                                     ; $4e36: $6e
	adc  a                                           ; $4e37: $8f
	ld   [hl], l                                     ; $4e38: $75
	ld   h, l                                        ; $4e39: $65
	sub  l                                           ; $4e3a: $95
	sbc  a                                           ; $4e3b: $9f
	dec  c                                           ; $4e3c: $0d
	set  3, d                                        ; $4e3d: $cb $da
	ld   [hl], l                                     ; $4e3f: $75
	ld   h, [hl]                                     ; $4e40: $66
	ld   [hl], c                                     ; $4e41: $71
	ld   e, l                                        ; $4e42: $5d
	sbc  b                                           ; $4e43: $98
	ld   a, c                                        ; $4e44: $79
	sbc  c                                           ; $4e45: $99
	ld   a, h                                        ; $4e46: $7c
	sub  [hl]                                        ; $4e47: $96
	sbc  a                                           ; $4e48: $9f
	dec  c                                           ; $4e49: $0d
	nop                                              ; $4e4a: $00
	ld   a, [bc]                                     ; $4e4b: $0a
	ld   b, $ec                                      ; $4e4c: $06 $ec
	ld   [de], a                                     ; $4e4e: $12
	rrca                                             ; $4e4f: $0f
	nop                                              ; $4e50: $00
	ld   bc, $ac01                                   ; $4e51: $01 $01 $ac
	rst  JumpTable                                         ; $4e54: $df
	jp   z, $9275                                    ; $4e55: $ca $75 $92

	ld   e, l                                        ; $4e58: $5d
	and  c                                           ; $4e59: $a1
	ld   [hl], l                                     ; $4e5a: $75
	ld   h, l                                        ; $4e5b: $65
	ld   l, l                                        ; $4e5c: $6d
	ld   [hl], c                                     ; $4e5d: $71
	ld   e, a                                        ; $4e5e: $5f
	ld   sp, hl                                      ; $4e5f: $f9
	dec  c                                           ; $4e60: $0d
	nop                                              ; $4e61: $00
	ld   a, [bc]                                     ; $4e62: $0a
	inc  e                                           ; $4e63: $1c
	inc  bc                                          ; $4e64: $03
	inc  b                                           ; $4e65: $04
	inc  b                                           ; $4e66: $04
	ld   bc, $5a6f                                   ; $4e67: $01 $6f $5a
	ld   d, h                                        ; $4e6a: $54
	sbc  l                                           ; $4e6b: $9d
	sbc  a                                           ; $4e6c: $9f
	set  3, d                                        ; $4e6d: $cb $da
	ld   [hl], l                                     ; $4e6f: $75
	ld   a, c                                        ; $4e70: $79
	sbc  c                                           ; $4e71: $99
	ld   a, h                                        ; $4e72: $7c
	rst  $38                                         ; $4e73: $ff
	rst  $38                                         ; $4e74: $ff
	dec  c                                           ; $4e75: $0d
	ld   l, e                                        ; $4e76: $6b
	ld   a, h                                        ; $4e77: $7c
	ld   a, c                                        ; $4e78: $79
	ld   h, [hl]                                     ; $4e79: $66
	sbc  c                                           ; $4e7a: $99
	ld   [hl], l                                     ; $4e7b: $75
	inc  b                                           ; $4e7c: $04
	rst  $20                                         ; $4e7d: $e7
	dec  b                                           ; $4e7e: $05
	or   l                                           ; $4e7f: $b5
	sub  b                                           ; $4e80: $90
	ld   a, c                                        ; $4e81: $79
	sbc  c                                           ; $4e82: $99
	ld   e, c                                        ; $4e83: $59
	sub  a                                           ; $4e84: $97
	dec  c                                           ; $4e85: $0d
	ld   h, [hl]                                     ; $4e86: $66
	ld   [hl], c                                     ; $4e87: $71
	ld   e, l                                        ; $4e88: $5d
	sbc  b                                           ; $4e89: $98
	ld   a, c                                        ; $4e8a: $79
	sbc  c                                           ; $4e8b: $99
	ld   a, h                                        ; $4e8c: $7c
	sub  [hl]                                        ; $4e8d: $96
	sbc  a                                           ; $4e8e: $9f
	dec  c                                           ; $4e8f: $0d
	nop                                              ; $4e90: $00
	ld   a, [bc]                                     ; $4e91: $0a
	ld   b, $ec                                      ; $4e92: $06 $ec
	ld   [de], a                                     ; $4e94: $12
	inc  e                                           ; $4e95: $1c
	inc  bc                                          ; $4e96: $03
	inc  b                                           ; $4e97: $04
	inc  b                                           ; $4e98: $04
	ld   bc, $8a58                                   ; $4e99: $01 $58 $8a
	ld   d, [hl]                                     ; $4e9c: $56
	ld   [hl], h                                     ; $4e9d: $74
	ld   a, b                                        ; $4e9e: $78
	ld   d, d                                        ; $4e9f: $52
	sub  [hl]                                        ; $4ea0: $96
	ld   d, h                                        ; $4ea1: $54
	ld   a, e                                        ; $4ea2: $7b
	sbc  a                                           ; $4ea3: $9f
	dec  c                                           ; $4ea4: $0d
	set  3, d                                        ; $4ea5: $cb $da
	ld   [hl], l                                     ; $4ea7: $75
	ld   a, c                                        ; $4ea8: $79
	sbc  c                                           ; $4ea9: $99
	ld   a, h                                        ; $4eaa: $7c
	sub  [hl]                                        ; $4eab: $96
	sbc  a                                           ; $4eac: $9f
	dec  c                                           ; $4ead: $0d
	nop                                              ; $4eae: $00
	ld   a, [bc]                                     ; $4eaf: $0a
	ld   b, $ec                                      ; $4eb0: $06 $ec
	ld   [de], a                                     ; $4eb2: $12
	inc  e                                           ; $4eb3: $1c
	inc  bc                                          ; $4eb4: $03
	nop                                              ; $4eb5: $00
	nop                                              ; $4eb6: $00
	ld   bc, $6803                                   ; $4eb7: $01 $03 $68
	ld   a, l                                        ; $4eba: $7d
	call z, $b9f5                                    ; $4ebb: $cc $f5 $b9
	push af                                          ; $4ebe: $f5
	and  b                                           ; $4ebf: $a0
	rst  $38                                         ; $4ec0: $ff
	rst  $38                                         ; $4ec1: $ff
	dec  c                                           ; $4ec2: $0d
	nop                                              ; $4ec3: $00
	ld   a, [bc]                                     ; $4ec4: $0a
	add  hl, de                                      ; $4ec5: $19
	dec  b                                           ; $4ec6: $05
	inc  bc                                          ; $4ec7: $03
	inc  b                                           ; $4ec8: $04
	ld   [hl], d                                     ; $4ec9: $72
	ld   [bc], a                                     ; $4eca: $02
	sbc  e                                           ; $4ecb: $9b
	inc  bc                                          ; $4ecc: $03
	dec  de                                          ; $4ecd: $1b
	sbc  b                                           ; $4ece: $98
	ld   a, c                                        ; $4ecf: $79
	ld   h, a                                        ; $4ed0: $67
	sbc  c                                           ; $4ed1: $99
	nop                                              ; $4ed2: $00
	nop                                              ; $4ed3: $00
	adc  l                                           ; $4ed4: $8d
	ld   h, [hl]                                     ; $4ed5: $66
	and  c                                           ; $4ed6: $a1
	inc  bc                                          ; $4ed7: $03
	dec  de                                          ; $4ed8: $1b
	sbc  b                                           ; $4ed9: $98
	ld   a, c                                        ; $4eda: $79
	ld   h, a                                        ; $4edb: $67
	sbc  c                                           ; $4edc: $99
	nop                                              ; $4edd: $00
	ld   bc, $9b58                                   ; $4ede: $01 $58 $9b
	ld   h, l                                        ; $4ee1: $65
	ld   [bc], a                                     ; $4ee2: $02
	dec  sp                                          ; $4ee3: $3b
	ld   [hl], l                                     ; $4ee4: $75
	ld   e, b                                        ; $4ee5: $58
	sbc  e                                           ; $4ee6: $9b
	ld   h, a                                        ; $4ee7: $67
	nop                                              ; $4ee8: $00
	ld   [bc], a                                     ; $4ee9: $02
	rlca                                             ; $4eea: $07
	ld   b, c                                        ; $4eeb: $41
	inc  de                                          ; $4eec: $13
	ld   [bc], a                                     ; $4eed: $02
	inc  bc                                          ; $4eee: $03
	ld   bc, $2000                                   ; $4eef: $01 $00 $20
	nop                                              ; $4ef2: $00
	rlca                                             ; $4ef3: $07
	ld   a, a                                        ; $4ef4: $7f
	inc  de                                          ; $4ef5: $13
	ld   [bc], a                                     ; $4ef6: $02
	inc  bc                                          ; $4ef7: $03
	ld   bc, $2001                                   ; $4ef8: $01 $01 $20
	nop                                              ; $4efb: $00
	rlca                                             ; $4efc: $07
	or   [hl]                                        ; $4efd: $b6
	inc  de                                          ; $4efe: $13
	ld   [bc], a                                     ; $4eff: $02
	inc  bc                                          ; $4f00: $03
	ld   bc, $2002                                   ; $4f01: $01 $02 $20
	nop                                              ; $4f04: $00
	ld   b, $f3                                      ; $4f05: $06 $f3
	inc  de                                          ; $4f07: $13
	rrca                                             ; $4f08: $0f
	nop                                              ; $4f09: $00
	ld   bc, $0401                                   ; $4f0a: $01 $01 $04
	ld   [hl], d                                     ; $4f0d: $72
	ld   [bc], a                                     ; $4f0e: $02
	sbc  e                                           ; $4f0f: $9b
	inc  bc                                          ; $4f10: $03
	dec  de                                          ; $4f11: $1b
	sbc  b                                           ; $4f12: $98
	ld   a, c                                        ; $4f13: $79
	ld   h, a                                        ; $4f14: $67
	sbc  c                                           ; $4f15: $99
	and  c                                           ; $4f16: $a1
	ld   [hl], l                                     ; $4f17: $75
	ld   h, a                                        ; $4f18: $67
	sub  [hl]                                        ; $4f19: $96
	ld   a, e                                        ; $4f1a: $7b
	sbc  a                                           ; $4f1b: $9f
	dec  c                                           ; $4f1c: $0d
	nop                                              ; $4f1d: $00
	ld   a, [bc]                                     ; $4f1e: $0a
	inc  e                                           ; $4f1f: $1c
	inc  bc                                          ; $4f20: $03
	inc  bc                                          ; $4f21: $03
	inc  bc                                          ; $4f22: $03
	ld   bc, $546b                                   ; $4f23: $01 $6b $54
	ld   l, e                                        ; $4f26: $6b
	ld   d, h                                        ; $4f27: $54
	sbc  a                                           ; $4f28: $9f
	dec  c                                           ; $4f29: $0d
	inc  b                                           ; $4f2a: $04
	ld   [hl], d                                     ; $4f2b: $72
	ld   [bc], a                                     ; $4f2c: $02
	sbc  e                                           ; $4f2d: $9b
	inc  bc                                          ; $4f2e: $03
	dec  de                                          ; $4f2f: $1b
	sbc  b                                           ; $4f30: $98
	ld   a, c                                        ; $4f31: $79
	ld   h, a                                        ; $4f32: $67
	sbc  c                                           ; $4f33: $99
	ld   a, h                                        ; $4f34: $7c
	sub  [hl]                                        ; $4f35: $96
	sbc  a                                           ; $4f36: $9f
	dec  c                                           ; $4f37: $0d
	nop                                              ; $4f38: $00
	ld   a, [bc]                                     ; $4f39: $0a
	dec  b                                           ; $4f3a: $05
	ld   b, b                                        ; $4f3b: $40
	rst  $38                                         ; $4f3c: $ff
	inc  bc                                          ; $4f3d: $03
	rst  $38                                         ; $4f3e: $ff
	ld   bc, $2801                                   ; $4f3f: $01 $01 $28
	nop                                              ; $4f42: $00
	ld   b, $13                                      ; $4f43: $06 $13
	inc  d                                           ; $4f45: $14
	rrca                                             ; $4f46: $0f
	nop                                              ; $4f47: $00
	ld   bc, $8d01                                   ; $4f48: $01 $01 $8d
	ld   h, [hl]                                     ; $4f4b: $66
	and  c                                           ; $4f4c: $a1
	inc  bc                                          ; $4f4d: $03
	dec  de                                          ; $4f4e: $1b
	sbc  b                                           ; $4f4f: $98
	ld   a, c                                        ; $4f50: $79
	ld   h, a                                        ; $4f51: $67
	sbc  c                                           ; $4f52: $99
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	dec  c                                           ; $4f55: $0d
	ld   [hl], l                                     ; $4f56: $75
	ld   h, l                                        ; $4f57: $65
	ld   l, l                                        ; $4f58: $6d
	ld   [hl], c                                     ; $4f59: $71
	ld   e, a                                        ; $4f5a: $5f
	ld   sp, hl                                      ; $4f5b: $f9
	dec  c                                           ; $4f5c: $0d
	nop                                              ; $4f5d: $00
	ld   a, [bc]                                     ; $4f5e: $0a
	inc  e                                           ; $4f5f: $1c
	inc  bc                                          ; $4f60: $03
	inc  b                                           ; $4f61: $04
	inc  b                                           ; $4f62: $04
	ld   bc, $5a6f                                   ; $4f63: $01 $6f $5a
	ld   d, h                                        ; $4f66: $54
	sbc  l                                           ; $4f67: $9d
	sbc  a                                           ; $4f68: $9f
	dec  c                                           ; $4f69: $0d
	inc  b                                           ; $4f6a: $04
	ld   [hl], d                                     ; $4f6b: $72
	ld   [bc], a                                     ; $4f6c: $02
	sbc  e                                           ; $4f6d: $9b
	inc  bc                                          ; $4f6e: $03
	dec  de                                          ; $4f6f: $1b
	sbc  b                                           ; $4f70: $98
	ld   a, c                                        ; $4f71: $79
	ld   h, a                                        ; $4f72: $67
	sbc  c                                           ; $4f73: $99
	ld   a, h                                        ; $4f74: $7c
	sub  [hl]                                        ; $4f75: $96
	sbc  a                                           ; $4f76: $9f
	dec  c                                           ; $4f77: $0d
	nop                                              ; $4f78: $00
	ld   a, [bc]                                     ; $4f79: $0a
	ld   b, $13                                      ; $4f7a: $06 $13
	inc  d                                           ; $4f7c: $14
	rrca                                             ; $4f7d: $0f
	nop                                              ; $4f7e: $00
	ld   bc, $5801                                   ; $4f7f: $01 $01 $58
	sbc  e                                           ; $4f82: $9b
	ld   h, l                                        ; $4f83: $65
	ld   [bc], a                                     ; $4f84: $02
	dec  sp                                          ; $4f85: $3b
	ld   [hl], l                                     ; $4f86: $75
	ld   e, b                                        ; $4f87: $58
	sbc  e                                           ; $4f88: $9b
	ld   h, a                                        ; $4f89: $67
	rst  $38                                         ; $4f8a: $ff
	rst  $38                                         ; $4f8b: $ff
	dec  c                                           ; $4f8c: $0d
	ld   [hl], l                                     ; $4f8d: $75
	ld   h, l                                        ; $4f8e: $65
	ld   l, l                                        ; $4f8f: $6d
	ld   [hl], c                                     ; $4f90: $71
	ld   e, a                                        ; $4f91: $5f
	ld   sp, hl                                      ; $4f92: $f9
	dec  c                                           ; $4f93: $0d
	nop                                              ; $4f94: $00
	ld   a, [bc]                                     ; $4f95: $0a
	inc  e                                           ; $4f96: $1c
	inc  bc                                          ; $4f97: $03
	inc  b                                           ; $4f98: $04
	inc  b                                           ; $4f99: $04
	ld   bc, $9b58                                   ; $4f9a: $01 $58 $9b
	ld   h, l                                        ; $4f9d: $65
	ld   [hl], h                                     ; $4f9e: $74
	ld   [hl], a                                     ; $4f9f: $77
	ld   d, h                                        ; $4fa0: $54
	ld   h, a                                        ; $4fa1: $67
	sbc  c                                           ; $4fa2: $99
	ld   a, h                                        ; $4fa3: $7c
	sub  [hl]                                        ; $4fa4: $96
	sbc  a                                           ; $4fa5: $9f
	dec  c                                           ; $4fa6: $0d
	inc  b                                           ; $4fa7: $04
	ld   [hl], d                                     ; $4fa8: $72
	ld   [bc], a                                     ; $4fa9: $02
	sbc  e                                           ; $4faa: $9b
	inc  bc                                          ; $4fab: $03
	dec  de                                          ; $4fac: $1b
	sbc  b                                           ; $4fad: $98
	ld   a, c                                        ; $4fae: $79
	ld   h, a                                        ; $4faf: $67
	sbc  c                                           ; $4fb0: $99
	ld   a, h                                        ; $4fb1: $7c
	sub  [hl]                                        ; $4fb2: $96
	sbc  a                                           ; $4fb3: $9f
	dec  c                                           ; $4fb4: $0d
	nop                                              ; $4fb5: $00
	ld   a, [bc]                                     ; $4fb6: $0a
	ld   b, $13                                      ; $4fb7: $06 $13
	inc  d                                           ; $4fb9: $14
	inc  e                                           ; $4fba: $1c
	inc  bc                                          ; $4fbb: $03
	inc  b                                           ; $4fbc: $04
	inc  b                                           ; $4fbd: $04
	ld   bc, $8a58                                   ; $4fbe: $01 $58 $8a
	ld   d, [hl]                                     ; $4fc1: $56
	ld   [hl], h                                     ; $4fc2: $74
	ld   a, b                                        ; $4fc3: $78
	ld   d, d                                        ; $4fc4: $52
	sub  [hl]                                        ; $4fc5: $96
	ld   d, h                                        ; $4fc6: $54
	ld   a, e                                        ; $4fc7: $7b
	sbc  a                                           ; $4fc8: $9f
	dec  c                                           ; $4fc9: $0d
	inc  b                                           ; $4fca: $04
	ld   [hl], d                                     ; $4fcb: $72
	ld   [bc], a                                     ; $4fcc: $02
	sbc  e                                           ; $4fcd: $9b
	inc  bc                                          ; $4fce: $03
	dec  de                                          ; $4fcf: $1b
	sbc  b                                           ; $4fd0: $98
	ld   a, c                                        ; $4fd1: $79
	ld   h, a                                        ; $4fd2: $67
	sbc  c                                           ; $4fd3: $99
	ld   a, h                                        ; $4fd4: $7c
	sub  [hl]                                        ; $4fd5: $96
	sbc  a                                           ; $4fd6: $9f
	dec  c                                           ; $4fd7: $0d
	nop                                              ; $4fd8: $00
	ld   a, [bc]                                     ; $4fd9: $0a
	inc  e                                           ; $4fda: $1c
	inc  bc                                          ; $4fdb: $03
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	ld   bc, $656b                                   ; $4fde: $01 $6b $65
	ld   [hl], h                                     ; $4fe1: $74
	inc  b                                           ; $4fe2: $04
	rst  $20                                         ; $4fe3: $e7
	dec  b                                           ; $4fe4: $05
	or   l                                           ; $4fe5: $b5
	sub  b                                           ; $4fe6: $90
	ld   e, b                                        ; $4fe7: $58
	inc  b                                           ; $4fe8: $04
	ccf                                              ; $4fe9: $3f
	sub  b                                           ; $4fea: $90
	dec  c                                           ; $4feb: $0d
	ld   h, [hl]                                     ; $4fec: $66
	ld   [hl], c                                     ; $4fed: $71
	ld   e, l                                        ; $4fee: $5d
	sbc  b                                           ; $4fef: $98
	ld   a, c                                        ; $4ff0: $79
	ld   h, c                                        ; $4ff1: $61
	and  c                                           ; $4ff2: $a1
	ld   l, [hl]                                     ; $4ff3: $6e
	sub  a                                           ; $4ff4: $97
	sbc  [hl]                                        ; $4ff5: $9e
	dec  c                                           ; $4ff6: $0d
	inc  bc                                          ; $4ff7: $03
	ld   l, c                                        ; $4ff8: $69
	ld   [bc], a                                     ; $4ff9: $02
	xor  d                                           ; $4ffa: $aa
	ld   a, l                                        ; $4ffb: $7d
	inc  b                                           ; $4ffc: $04
	jp   nc, Jump_065_5f72                           ; $4ffd: $d2 $72 $5f

	rst  $38                                         ; $5000: $ff
	rst  $38                                         ; $5001: $ff
	dec  c                                           ; $5002: $0d
	nop                                              ; $5003: $00
	ld   a, [bc]                                     ; $5004: $0a
	ld   bc, $dfc9                                   ; $5005: $01 $c9 $df
	ret                                              ; $5008: $c9


	db   $db                                         ; $5009: $db
	ei                                               ; $500a: $fb
	cp   d                                           ; $500b: $ba
	ret                                              ; $500c: $c9


	halt                                             ; $500d: $76
	or   d                                           ; $500e: $b2
	jp   nz, $c4e5                                   ; $500f: $c2 $e5 $c4

	ret  c                                           ; $5012: $d8

	sbc  a                                           ; $5013: $9f
	dec  c                                           ; $5014: $0d
	ld   l, e                                        ; $5015: $6b
	sbc  d                                           ; $5016: $9a
	ld   a, c                                        ; $5017: $79
	rst  $38                                         ; $5018: $ff
	rst  $38                                         ; $5019: $ff
	dec  c                                           ; $501a: $0d
	nop                                              ; $501b: $00
	ld   a, [bc]                                     ; $501c: $0a
	add  hl, de                                      ; $501d: $19
	dec  b                                           ; $501e: $05
	inc  bc                                          ; $501f: $03
	ld   e, b                                        ; $5020: $58
	ld   [bc], a                                     ; $5021: $02
	dec  l                                           ; $5022: $2d
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	ld   h, l                                        ; $5025: $65
	sub  l                                           ; $5026: $95
	ld   d, h                                        ; $5027: $54
	sub  h                                           ; $5028: $94
	nop                                              ; $5029: $00
	ld   bc, $6d59                                   ; $502a: $01 $59 $6d
	ld   e, l                                        ; $502d: $5d
	sbc  b                                           ; $502e: $98
	ld   h, c                                        ; $502f: $61
	nop                                              ; $5030: $00
	ld   [bc], a                                     ; $5031: $02
	rlca                                             ; $5032: $07
	adc  c                                           ; $5033: $89
	inc  d                                           ; $5034: $14
	ld   [bc], a                                     ; $5035: $02
	inc  bc                                          ; $5036: $03
	ld   bc, $2000                                   ; $5037: $01 $00 $20
	nop                                              ; $503a: $00
	rlca                                             ; $503b: $07
	ret  nz                                          ; $503c: $c0

	inc  d                                           ; $503d: $14
	ld   [bc], a                                     ; $503e: $02
	inc  bc                                          ; $503f: $03
	ld   bc, $2001                                   ; $5040: $01 $01 $20
	nop                                              ; $5043: $00
	rlca                                             ; $5044: $07
	cp   $14                                         ; $5045: $fe $14
	ld   [bc], a                                     ; $5047: $02
	inc  bc                                          ; $5048: $03
	ld   bc, $2002                                   ; $5049: $01 $02 $20
	nop                                              ; $504c: $00
	ld   b, $44                                      ; $504d: $06 $44
	dec  d                                           ; $504f: $15
	rrca                                             ; $5050: $0f
	nop                                              ; $5051: $00
	ld   bc, $5801                                   ; $5052: $01 $01 $58
	ld   [bc], a                                     ; $5055: $02
	dec  l                                           ; $5056: $2d
	ld   [hl], l                                     ; $5057: $75
	inc  b                                           ; $5058: $04
	jp   nc, Jump_065_76a0                           ; $5059: $d2 $a0 $76

	halt                                             ; $505c: $76
	ld   a, h                                        ; $505d: $7c
	ld   d, [hl]                                     ; $505e: $56
	sbc  c                                           ; $505f: $99
	sbc  a                                           ; $5060: $9f
	dec  c                                           ; $5061: $0d
	ld   [hl], l                                     ; $5062: $75
	ld   h, a                                        ; $5063: $67
	sub  [hl]                                        ; $5064: $96
	ld   a, e                                        ; $5065: $7b
	sbc  a                                           ; $5066: $9f
	dec  c                                           ; $5067: $0d
	nop                                              ; $5068: $00
	ld   a, [bc]                                     ; $5069: $0a
	inc  e                                           ; $506a: $1c
	inc  bc                                          ; $506b: $03
	inc  bc                                          ; $506c: $03
	inc  bc                                          ; $506d: $03
	ld   bc, $546b                                   ; $506e: $01 $6b $54
	sbc  [hl]                                        ; $5071: $9e
	inc  bc                                          ; $5072: $03
	ld   c, d                                        ; $5073: $4a
	ld   [bc], a                                     ; $5074: $02
	or   h                                           ; $5075: $b4
	sub  [hl]                                        ; $5076: $96
	sbc  a                                           ; $5077: $9f
	dec  c                                           ; $5078: $0d
	nop                                              ; $5079: $00
	ld   a, [bc]                                     ; $507a: $0a
	dec  b                                           ; $507b: $05
	ld   b, b                                        ; $507c: $40
	rst  $38                                         ; $507d: $ff
	inc  bc                                          ; $507e: $03
	rst  $38                                         ; $507f: $ff
	ld   bc, $2801                                   ; $5080: $01 $01 $28
	nop                                              ; $5083: $00
	ld   b, $6d                                      ; $5084: $06 $6d
	dec  d                                           ; $5086: $15
	rrca                                             ; $5087: $0f
	nop                                              ; $5088: $00
	ld   bc, $5801                                   ; $5089: $01 $01 $58
	ld   h, l                                        ; $508c: $65
	sub  l                                           ; $508d: $95
	ld   d, h                                        ; $508e: $54
	sub  h                                           ; $508f: $94
	and  b                                           ; $5090: $a0
	inc  b                                           ; $5091: $04
	ld   b, l                                        ; $5092: $45
	sbc  d                                           ; $5093: $9a
	sbc  c                                           ; $5094: $99
	rst  $38                                         ; $5095: $ff
	rst  $38                                         ; $5096: $ff
	dec  c                                           ; $5097: $0d
	ld   [hl], l                                     ; $5098: $75
	ld   h, l                                        ; $5099: $65
	ld   l, l                                        ; $509a: $6d
	ld   [hl], c                                     ; $509b: $71
	ld   e, a                                        ; $509c: $5f
	ld   sp, hl                                      ; $509d: $f9
	dec  c                                           ; $509e: $0d
	nop                                              ; $509f: $00
	ld   a, [bc]                                     ; $50a0: $0a
	inc  e                                           ; $50a1: $1c
	inc  bc                                          ; $50a2: $03
	inc  b                                           ; $50a3: $04
	inc  b                                           ; $50a4: $04
	ld   bc, $5a6f                                   ; $50a5: $01 $6f $5a
	ld   d, h                                        ; $50a8: $54
	sbc  l                                           ; $50a9: $9d
	sbc  a                                           ; $50aa: $9f
	dec  c                                           ; $50ab: $0d
	ld   e, b                                        ; $50ac: $58
	ld   [bc], a                                     ; $50ad: $02
	dec  l                                           ; $50ae: $2d
	and  b                                           ; $50af: $a0
	ld   d, d                                        ; $50b0: $52
	sbc  d                                           ; $50b1: $9a
	ld   [hl], h                                     ; $50b2: $74
	inc  b                                           ; $50b3: $04
	jp   nc, $0da0                                   ; $50b4: $d2 $a0 $0d

	halt                                             ; $50b7: $76
	halt                                             ; $50b8: $76
	ld   a, h                                        ; $50b9: $7c
	ld   d, [hl]                                     ; $50ba: $56
	sbc  c                                           ; $50bb: $99
	ld   a, h                                        ; $50bc: $7c
	sub  [hl]                                        ; $50bd: $96
	sbc  a                                           ; $50be: $9f
	dec  c                                           ; $50bf: $0d
	nop                                              ; $50c0: $00
	ld   a, [bc]                                     ; $50c1: $0a
	ld   b, $6d                                      ; $50c2: $06 $6d
	dec  d                                           ; $50c4: $15
	rrca                                             ; $50c5: $0f
	nop                                              ; $50c6: $00
	ld   bc, $5901                                   ; $50c7: $01 $01 $59
	ld   l, l                                        ; $50ca: $6d
	ld   e, l                                        ; $50cb: $5d
	sbc  b                                           ; $50cc: $98
	ld   h, c                                        ; $50cd: $61
	and  b                                           ; $50ce: $a0
	inc  b                                           ; $50cf: $04
	ld   b, l                                        ; $50d0: $45
	sbc  d                                           ; $50d1: $9a
	sbc  c                                           ; $50d2: $99
	rst  $38                                         ; $50d3: $ff
	rst  $38                                         ; $50d4: $ff
	dec  c                                           ; $50d5: $0d
	ld   [hl], l                                     ; $50d6: $75
	ld   h, l                                        ; $50d7: $65
	ld   l, l                                        ; $50d8: $6d
	ld   [hl], c                                     ; $50d9: $71
	ld   e, a                                        ; $50da: $5f
	ld   sp, hl                                      ; $50db: $f9
	dec  c                                           ; $50dc: $0d
	nop                                              ; $50dd: $00
	ld   a, [bc]                                     ; $50de: $0a
	inc  e                                           ; $50df: $1c
	inc  bc                                          ; $50e0: $03
	inc  b                                           ; $50e1: $04
	inc  b                                           ; $50e2: $04
	ld   bc, $efc9                                   ; $50e3: $01 $c9 $ef
	adc  l                                           ; $50e6: $8d
	and  b                                           ; $50e7: $a0
	ld   [hl], d                                     ; $50e8: $72
	ld   e, a                                        ; $50e9: $5f
	ld   [hl], h                                     ; $50ea: $74
	ld   [hl], a                                     ; $50eb: $77
	ld   d, h                                        ; $50ec: $54
	ld   h, a                                        ; $50ed: $67
	sbc  c                                           ; $50ee: $99
	ld   a, h                                        ; $50ef: $7c
	sbc  a                                           ; $50f0: $9f
	dec  c                                           ; $50f1: $0d
	ld   e, b                                        ; $50f2: $58
	ld   [bc], a                                     ; $50f3: $02
	dec  l                                           ; $50f4: $2d
	and  b                                           ; $50f5: $a0
	ld   d, d                                        ; $50f6: $52
	sbc  d                                           ; $50f7: $9a
	ld   [hl], h                                     ; $50f8: $74
	inc  b                                           ; $50f9: $04
	jp   nc, $0da0                                   ; $50fa: $d2 $a0 $0d

	halt                                             ; $50fd: $76
	halt                                             ; $50fe: $76
	ld   a, h                                        ; $50ff: $7c
	ld   d, [hl]                                     ; $5100: $56
	sbc  c                                           ; $5101: $99
	ld   a, h                                        ; $5102: $7c
	sub  [hl]                                        ; $5103: $96
	sbc  a                                           ; $5104: $9f
	dec  c                                           ; $5105: $0d
	nop                                              ; $5106: $00
	ld   a, [bc]                                     ; $5107: $0a
	ld   b, $6d                                      ; $5108: $06 $6d
	dec  d                                           ; $510a: $15
	inc  e                                           ; $510b: $1c
	inc  bc                                          ; $510c: $03
	inc  b                                           ; $510d: $04
	inc  b                                           ; $510e: $04
	ld   bc, $8a58                                   ; $510f: $01 $58 $8a
	ld   d, [hl]                                     ; $5112: $56
	ld   [hl], h                                     ; $5113: $74
	ld   a, b                                        ; $5114: $78
	ld   d, d                                        ; $5115: $52
	sub  [hl]                                        ; $5116: $96
	ld   d, h                                        ; $5117: $54
	ld   a, e                                        ; $5118: $7b
	sbc  a                                           ; $5119: $9f
	dec  c                                           ; $511a: $0d
	ld   e, b                                        ; $511b: $58
	ld   [bc], a                                     ; $511c: $02
	dec  l                                           ; $511d: $2d
	and  b                                           ; $511e: $a0
	ld   d, d                                        ; $511f: $52
	sbc  d                                           ; $5120: $9a
	ld   [hl], h                                     ; $5121: $74
	inc  b                                           ; $5122: $04
	jp   nc, $0da0                                   ; $5123: $d2 $a0 $0d

	halt                                             ; $5126: $76
	halt                                             ; $5127: $76
	ld   a, h                                        ; $5128: $7c
	ld   d, [hl]                                     ; $5129: $56
	sbc  c                                           ; $512a: $99
	ld   a, h                                        ; $512b: $7c
	sub  [hl]                                        ; $512c: $96
	sbc  a                                           ; $512d: $9f
	dec  c                                           ; $512e: $0d
	nop                                              ; $512f: $00
	ld   a, [bc]                                     ; $5130: $0a
	ld   b, $6d                                      ; $5131: $06 $6d
	dec  d                                           ; $5133: $15
	rlca                                             ; $5134: $07
	xor  a                                           ; $5135: $af
	dec  d                                           ; $5136: $15
	inc  bc                                          ; $5137: $03
	rst  $38                                         ; $5138: $ff
	ld   bc, $2002                                   ; $5139: $01 $02 $20
	nop                                              ; $513c: $00
	rlca                                             ; $513d: $07
	db   $eb                                         ; $513e: $eb
	dec  d                                           ; $513f: $15
	inc  bc                                          ; $5140: $03
	rst  $38                                         ; $5141: $ff
	ld   bc, $2301                                   ; $5142: $01 $01 $23
	nop                                              ; $5145: $00
	inc  e                                           ; $5146: $1c
	inc  bc                                          ; $5147: $03
	inc  bc                                          ; $5148: $03
	inc  bc                                          ; $5149: $03
	ld   bc, $5d96                                   ; $514a: $01 $96 $5d
	ld   e, b                                        ; $514d: $58
	adc  d                                           ; $514e: $8a
	ld   d, [hl]                                     ; $514f: $56
	ld   [hl], h                                     ; $5150: $74
	ld   l, l                                        ; $5151: $6d
	sbc  l                                           ; $5152: $9d
	ld   a, e                                        ; $5153: $7b
	sbc  a                                           ; $5154: $9f
	dec  c                                           ; $5155: $0d
	ld   l, e                                        ; $5156: $6b
	sbc  d                                           ; $5157: $9a
	ld   a, b                                        ; $5158: $78
	sub  a                                           ; $5159: $97
	sbc  [hl]                                        ; $515a: $9e
	sub  b                                           ; $515b: $90
	ld   d, h                                        ; $515c: $54
	ld   [bc], a                                     ; $515d: $02
	jr   nz, jr_065_5163                             ; $515e: $20 $03

	add  d                                           ; $5160: $82
	ld   [hl], l                                     ; $5161: $75
	sub  b                                           ; $5162: $90

jr_065_5163:
	dec  c                                           ; $5163: $0d
	inc  bc                                          ; $5164: $03
	xor  h                                           ; $5165: $ac
	sbc  d                                           ; $5166: $9a
	sbc  c                                           ; $5167: $99
	sbc  l                                           ; $5168: $9d
	sbc  a                                           ; $5169: $9f
	dec  c                                           ; $516a: $0d
	nop                                              ; $516b: $00
	ld   a, [bc]                                     ; $516c: $0a
	dec  c                                           ; $516d: $0d
	nop                                              ; $516e: $00
	nop                                              ; $516f: $00
	rrca                                             ; $5170: $0f
	nop                                              ; $5171: $00
	ld   bc, $2306                                   ; $5172: $01 $06 $23
	ld   d, $1c                                      ; $5175: $16 $1c
	inc  bc                                          ; $5177: $03
	inc  bc                                          ; $5178: $03
	inc  bc                                          ; $5179: $03
	ld   bc, $9a6b                                   ; $517a: $01 $6b $9a
	ld   e, [hl]                                     ; $517d: $5e
	sub  a                                           ; $517e: $97
	ld   d, d                                        ; $517f: $52
	ld   e, b                                        ; $5180: $58
	adc  d                                           ; $5181: $8a
	ld   d, [hl]                                     ; $5182: $56
	ld   [hl], h                                     ; $5183: $74
	sbc  d                                           ; $5184: $9a
	ld   a, [hl]                                     ; $5185: $7e
	sbc  [hl]                                        ; $5186: $9e
	dec  c                                           ; $5187: $0d
	ld   d, b                                        ; $5188: $50
	halt                                             ; $5189: $76
	ld   a, l                                        ; $518a: $7d
	inc  bc                                          ; $518b: $03
	db   $d3                                         ; $518c: $d3
	dec  b                                           ; $518d: $05
	ld   a, [bc]                                     ; $518e: $0a
	ld   h, l                                        ; $518f: $65
	ld   l, [hl]                                     ; $5190: $6e
	ld   d, d                                        ; $5191: $52
	ld   [hl], l                                     ; $5192: $75
	ld   [bc], a                                     ; $5193: $02
	jr   nz, jr_065_5199                             ; $5194: $20 $03

	add  d                                           ; $5196: $82
	ld   [hl], l                                     ; $5197: $75
	sub  b                                           ; $5198: $90

jr_065_5199:
	dec  c                                           ; $5199: $0d
	inc  bc                                          ; $519a: $03
	xor  h                                           ; $519b: $ac
	sbc  d                                           ; $519c: $9a
	sbc  c                                           ; $519d: $99
	sub  [hl]                                        ; $519e: $96
	ld   d, h                                        ; $519f: $54
	ld   a, c                                        ; $51a0: $79
	ld   a, b                                        ; $51a1: $78
	sbc  c                                           ; $51a2: $99
	sbc  l                                           ; $51a3: $9d
	sub  [hl]                                        ; $51a4: $96
	sbc  a                                           ; $51a5: $9f
	dec  c                                           ; $51a6: $0d
	nop                                              ; $51a7: $00
	ld   a, [bc]                                     ; $51a8: $0a
	dec  c                                           ; $51a9: $0d
	nop                                              ; $51aa: $00
	nop                                              ; $51ab: $00
	rrca                                             ; $51ac: $0f
	nop                                              ; $51ad: $00
	ld   bc, $2306                                   ; $51ae: $01 $06 $23
	ld   d, $1c                                      ; $51b1: $16 $1c
	inc  bc                                          ; $51b3: $03
	nop                                              ; $51b4: $00
	nop                                              ; $51b5: $00
	ld   bc, $8c50                                   ; $51b6: $01 $50 $8c
	sbc  b                                           ; $51b9: $98
	ld   e, b                                        ; $51ba: $58
	adc  d                                           ; $51bb: $8a
	ld   d, [hl]                                     ; $51bc: $56
	ld   [hl], h                                     ; $51bd: $74
	ld   a, b                                        ; $51be: $78
	ld   d, d                                        ; $51bf: $52
	adc  l                                           ; $51c0: $8d
	ld   l, l                                        ; $51c1: $6d
	ld   d, d                                        ; $51c2: $52
	ld   a, e                                        ; $51c3: $7b
	sbc  a                                           ; $51c4: $9f
	dec  c                                           ; $51c5: $0d
	ld   [hl], l                                     ; $51c6: $75
	sub  b                                           ; $51c7: $90
	sbc  [hl]                                        ; $51c8: $9e
	inc  b                                           ; $51c9: $04
	ld   c, c                                        ; $51ca: $49
	ld   [bc], a                                     ; $51cb: $02
	sub  e                                           ; $51cc: $93
	ld   e, c                                        ; $51cd: $59
	inc  bc                                          ; $51ce: $03
	xor  h                                           ; $51cf: $ac
	sbc  d                                           ; $51d0: $9a
	ld   a, [hl]                                     ; $51d1: $7e
	dec  c                                           ; $51d2: $0d
	ld   e, b                                        ; $51d3: $58
	adc  d                                           ; $51d4: $8a
	ld   d, [hl]                                     ; $51d5: $56
	sbc  c                                           ; $51d6: $99
	sbc  l                                           ; $51d7: $9d
	sub  [hl]                                        ; $51d8: $96
	sbc  a                                           ; $51d9: $9f
	ld   e, e                                        ; $51da: $5b
	ld   [hl], c                                     ; $51db: $71
	halt                                             ; $51dc: $76
	sbc  a                                           ; $51dd: $9f
	dec  c                                           ; $51de: $0d
	nop                                              ; $51df: $00
	ld   a, [bc]                                     ; $51e0: $0a
	dec  c                                           ; $51e1: $0d
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	rrca                                             ; $51e4: $0f
	nop                                              ; $51e5: $00
	ld   bc, $2306                                   ; $51e6: $01 $06 $23
	ld   d, $23                                      ; $51e9: $16 $23
	sub  c                                           ; $51eb: $91
	inc  e                                           ; $51ec: $1c
	inc  bc                                          ; $51ed: $03
	nop                                              ; $51ee: $00
	nop                                              ; $51ef: $00
	ld   bc, $6c03                                   ; $51f0: $01 $03 $6c
	ld   h, l                                        ; $51f3: $65
	inc  b                                           ; $51f4: $04
	sbc  a                                           ; $51f5: $9f
	ld   e, e                                        ; $51f6: $5b
	adc  h                                           ; $51f7: $8c
	ld   h, l                                        ; $51f8: $65
	sub  l                                           ; $51f9: $95
	ld   d, h                                        ; $51fa: $54
	sbc  a                                           ; $51fb: $9f
	dec  c                                           ; $51fc: $0d
	nop                                              ; $51fd: $00
	ld   a, [bc]                                     ; $51fe: $0a
	ld   bc, $a703                                   ; $51ff: $01 $03 $a7
	inc  b                                           ; $5202: $04
	xor  d                                           ; $5203: $aa
	ld   a, h                                        ; $5204: $7c
	dec  b                                           ; $5205: $05
	xor  a                                           ; $5206: $af
	inc  b                                           ; $5207: $04
	dec  bc                                          ; $5208: $0b
	rst  $38                                         ; $5209: $ff
	rst  $38                                         ; $520a: $ff
	dec  c                                           ; $520b: $0d
	inc  b                                           ; $520c: $04
	xor  b                                           ; $520d: $a8
	dec  b                                           ; $520e: $05
	ld   hl, $0379                                   ; $520f: $21 $79 $03
	add  d                                           ; $5212: $82
	ld   bc, $5a14                                   ; $5213: $01 $14 $5a
	ld   [bc], a                                     ; $5216: $02
	ld   a, a                                        ; $5217: $7f
	ld   e, e                                        ; $5218: $5b
	ld   [bc], a                                     ; $5219: $02
	ld   e, e                                        ; $521a: $5b
	ld   d, h                                        ; $521b: $54
	dec  c                                           ; $521c: $0d
	ld   [bc], a                                     ; $521d: $02
	ld   e, e                                        ; $521e: $5b
	dec  b                                           ; $521f: $05
	inc  a                                           ; $5220: $3c
	inc  bc                                          ; $5221: $03
	db   $ed                                         ; $5222: $ed
	rst  $38                                         ; $5223: $ff
	rst  $38                                         ; $5224: $ff
	dec  c                                           ; $5225: $0d
	nop                                              ; $5226: $00
	ld   a, [bc]                                     ; $5227: $0a
	ld   bc, $0b02                                   ; $5228: $01 $02 $0b
	inc  bc                                          ; $522b: $03
	ld   c, a                                        ; $522c: $4f
	sbc  [hl]                                        ; $522d: $9e
	dec  b                                           ; $522e: $05
	jr   nz, jr_065_5296                             ; $522f: $20 $65

	ld   l, l                                        ; $5231: $6d
	ld   e, c                                        ; $5232: $59
	ld   h, l                                        ; $5233: $65
	sub  a                                           ; $5234: $97
	rst  $38                                         ; $5235: $ff
	rst  $38                                         ; $5236: $ff
	ld   sp, hl                                      ; $5237: $f9
	dec  c                                           ; $5238: $0d
	inc  bc                                          ; $5239: $03
	ret  z                                           ; $523a: $c8

	ld   a, h                                        ; $523b: $7c
	inc  b                                           ; $523c: $04
	rlc  l                                           ; $523d: $cb $05
	jr   nz, @+$01                                   ; $523f: $20 $ff

	rst  $38                                         ; $5241: $ff
	dec  c                                           ; $5242: $0d
	nop                                              ; $5243: $00
	ld   a, [bc]                                     ; $5244: $0a
	add  hl, de                                      ; $5245: $19
	dec  b                                           ; $5246: $05
	inc  bc                                          ; $5247: $03
	rst  $28                                         ; $5248: $ef
	cp   b                                           ; $5249: $b8
	and  e                                           ; $524a: $a3
	ld   [hl], l                                     ; $524b: $75
	dec  b                                           ; $524c: $05
	ld   a, e                                        ; $524d: $7b
	ld   b, $25                                      ; $524e: $06 $25
	ld   a, h                                        ; $5250: $7c
	dec  b                                           ; $5251: $05
	jr   nz, jr_065_5254                             ; $5252: $20 $00

jr_065_5254:
	nop                                              ; $5254: $00
	jp   z, $c5a5                                    ; $5255: $ca $a5 $c5

	ld   [hl], l                                     ; $5258: $75
	ld   b, $30                                      ; $5259: $06 $30
	dec  b                                           ; $525b: $05
	ld   a, d                                        ; $525c: $7a
	ld   a, h                                        ; $525d: $7c
	dec  b                                           ; $525e: $05
	jr   nz, jr_065_5261                             ; $525f: $20 $00

jr_065_5261:
	ld   bc, $a5ba                                   ; $5261: $01 $ba $a5
	cp   d                                           ; $5264: $ba
	ld   [hl], l                                     ; $5265: $75
	ld   [bc], a                                     ; $5266: $02
	ld   l, h                                        ; $5267: $6c
	ld   [bc], a                                     ; $5268: $02
	ld   a, a                                        ; $5269: $7f
	ld   a, h                                        ; $526a: $7c
	dec  b                                           ; $526b: $05
	jr   nz, jr_065_526e                             ; $526c: $20 $00

jr_065_526e:
	ld   [bc], a                                     ; $526e: $02
	rlca                                             ; $526f: $07
	add  $16                                         ; $5270: $c6 $16
	ld   [bc], a                                     ; $5272: $02
	inc  bc                                          ; $5273: $03
	ld   bc, $2000                                   ; $5274: $01 $00 $20
	nop                                              ; $5277: $00
	rlca                                             ; $5278: $07
	sub  h                                           ; $5279: $94
	rla                                              ; $527a: $17
	ld   [bc], a                                     ; $527b: $02
	inc  bc                                          ; $527c: $03
	ld   bc, $2001                                   ; $527d: $01 $01 $20
	nop                                              ; $5280: $00
	rlca                                             ; $5281: $07
	xor  l                                           ; $5282: $ad
	rla                                              ; $5283: $17
	ld   [bc], a                                     ; $5284: $02
	inc  bc                                          ; $5285: $03
	ld   bc, $2002                                   ; $5286: $01 $02 $20
	nop                                              ; $5289: $00
	ld   b, $ef                                      ; $528a: $06 $ef
	rla                                              ; $528c: $17
	rrca                                             ; $528d: $0f
	nop                                              ; $528e: $00
	ld   bc, $ef01                                   ; $528f: $01 $01 $ef
	cp   b                                           ; $5292: $b8
	and  e                                           ; $5293: $a3
	ld   [hl], l                                     ; $5294: $75
	dec  b                                           ; $5295: $05

jr_065_5296:
	ld   a, e                                        ; $5296: $7b
	ld   b, $25                                      ; $5297: $06 $25
	ld   a, h                                        ; $5299: $7c
	ld   l, l                                        ; $529a: $6d
	adc  a                                           ; $529b: $8f
	ld   a, c                                        ; $529c: $79
	dec  c                                           ; $529d: $0d
	inc  bc                                          ; $529e: $03
	xor  b                                           ; $529f: $a8
	ld   [hl], c                                     ; $52a0: $71
	ld   [hl], h                                     ; $52a1: $74
	ld   d, d                                        ; $52a2: $52
	ld   l, l                                        ; $52a3: $6d
	ld   h, c                                        ; $52a4: $61
	halt                                             ; $52a5: $76
	ld   [hl], l                                     ; $52a6: $75
	ld   h, a                                        ; $52a7: $67
	ld   e, c                                        ; $52a8: $59
	ld   sp, hl                                      ; $52a9: $f9
	dec  c                                           ; $52aa: $0d
	nop                                              ; $52ab: $00
	ld   a, [bc]                                     ; $52ac: $0a
	inc  e                                           ; $52ad: $1c
	inc  bc                                          ; $52ae: $03
	inc  b                                           ; $52af: $04
	inc  b                                           ; $52b0: $04
	ld   bc, $5656                                   ; $52b1: $01 $56 $56
	rst  $38                                         ; $52b4: $ff
	rst  $38                                         ; $52b5: $ff
	ld   d, b                                        ; $52b6: $50
	ld   a, h                                        ; $52b7: $7c
	inc  bc                                          ; $52b8: $03
	ld   l, a                                        ; $52b9: $6f
	sbc  [hl]                                        ; $52ba: $9e
	inc  b                                           ; $52bb: $04
	xor  b                                           ; $52bc: $a8
	dec  b                                           ; $52bd: $05
	ld   hl, $0392                                   ; $52be: $21 $92 $03
	sub  h                                           ; $52c1: $94
	inc  b                                           ; $52c2: $04
	pop  hl                                          ; $52c3: $e1
	ld   a, l                                        ; $52c4: $7d
	dec  c                                           ; $52c5: $0d
	inc  bc                                          ; $52c6: $03
	xor  b                                           ; $52c7: $a8
	sbc  l                                           ; $52c8: $9d
	ld   a, b                                        ; $52c9: $78
	ld   d, d                                        ; $52ca: $52
	ld   e, c                                        ; $52cb: $59
	ld   e, h                                        ; $52cc: $5c
	sbc  b                                           ; $52cd: $98
	inc  bc                                          ; $52ce: $03
	ld   l, e                                        ; $52cf: $6b
	ld   a, c                                        ; $52d0: $79
	ld   a, l                                        ; $52d1: $7d
	ld   d, d                                        ; $52d2: $52
	sub  a                                           ; $52d3: $97
	ld   a, b                                        ; $52d4: $78
	ld   d, d                                        ; $52d5: $52
	dec  c                                           ; $52d6: $0d
	sub  b                                           ; $52d7: $90
	ld   a, h                                        ; $52d8: $7c
	ld   l, [hl]                                     ; $52d9: $6e
	ld   [hl], c                                     ; $52da: $71
	ld   l, l                                        ; $52db: $6d
	ld   a, h                                        ; $52dc: $7c
	rst  $38                                         ; $52dd: $ff
	rst  $38                                         ; $52de: $ff
	dec  c                                           ; $52df: $0d
	nop                                              ; $52e0: $00
	ld   a, [bc]                                     ; $52e1: $0a
	ld   bc, $9075                                   ; $52e2: $01 $75 $90
	sbc  [hl]                                        ; $52e5: $9e
	ld   h, c                                        ; $52e6: $61
	ld   a, h                                        ; $52e7: $7c
	dec  b                                           ; $52e8: $05
	xor  a                                           ; $52e9: $af
	ld   a, c                                        ; $52ea: $79
	inc  bc                                          ; $52eb: $03
	ld   d, d                                        ; $52ec: $52
	ld   e, e                                        ; $52ed: $5b
	sbc  c                                           ; $52ee: $99
	inc  bc                                          ; $52ef: $03
	add  d                                           ; $52f0: $82
	ld   bc, $7914                                   ; $52f1: $01 $14 $79
	ld   a, l                                        ; $52f4: $7d
	dec  c                                           ; $52f5: $0d
	inc  bc                                          ; $52f6: $03
	xor  b                                           ; $52f7: $a8
	sbc  l                                           ; $52f8: $9d
	ld   l, b                                        ; $52f9: $68
	ld   h, l                                        ; $52fa: $65
	ld   [hl], h                                     ; $52fb: $74
	inc  b                                           ; $52fc: $04
	xor  b                                           ; $52fd: $a8
	dec  b                                           ; $52fe: $05
	ld   hl, $0392                                   ; $52ff: $21 $92 $03
	sub  h                                           ; $5302: $94
	inc  b                                           ; $5303: $04
	pop  hl                                          ; $5304: $e1
	and  b                                           ; $5305: $a0
	dec  c                                           ; $5306: $0d
	inc  bc                                          ; $5307: $03
	ld   l, e                                        ; $5308: $6b
	ld   a, c                                        ; $5309: $79
	ld   h, l                                        ; $530a: $65
	ld   [hl], h                                     ; $530b: $74
	adc  c                                           ; $530c: $89
	ld   h, l                                        ; $530d: $65
	ld   d, d                                        ; $530e: $52
	rst  $38                                         ; $530f: $ff
	rst  $38                                         ; $5310: $ff
	dec  c                                           ; $5311: $0d
	nop                                              ; $5312: $00
	ld   a, [bc]                                     ; $5313: $0a
	inc  e                                           ; $5314: $1c
	inc  bc                                          ; $5315: $03
	ld   [bc], a                                     ; $5316: $02
	ld   [bc], a                                     ; $5317: $02
	ld   bc, $596e                                   ; $5318: $01 $6e $59
	sub  a                                           ; $531b: $97
	inc  bc                                          ; $531c: $03
	sbc  $9d                                         ; $531d: $de $9d
	sbc  b                                           ; $531f: $98
	ld   a, c                                        ; $5320: $79
	inc  bc                                          ; $5321: $03
	ret  z                                           ; $5322: $c8

	ld   l, l                                        ; $5323: $6d
	ld   l, a                                        ; $5324: $6f
	ld   e, d                                        ; $5325: $5a
	dec  c                                           ; $5326: $0d
	inc  bc                                          ; $5327: $03
	xor  b                                           ; $5328: $a8
	ld   d, h                                        ; $5329: $54
	ld   a, h                                        ; $532a: $7c
	sub  [hl]                                        ; $532b: $96
	sbc  a                                           ; $532c: $9f
	dec  c                                           ; $532d: $0d
	nop                                              ; $532e: $00
	ld   a, [bc]                                     ; $532f: $0a
	inc  e                                           ; $5330: $1c
	inc  bc                                          ; $5331: $03
	inc  bc                                          ; $5332: $03
	inc  bc                                          ; $5333: $03
	ld   bc, $8f62                                   ; $5334: $01 $62 $8f
	and  c                                           ; $5337: $a1
	ld   a, b                                        ; $5338: $78
	ld   h, e                                        ; $5339: $63
	ld   d, d                                        ; $533a: $52
	rst  $38                                         ; $533b: $ff
	rst  $38                                         ; $533c: $ff
	dec  c                                           ; $533d: $0d
	ld   a, b                                        ; $533e: $78
	and  c                                           ; $533f: $a1
	ld   e, c                                        ; $5340: $59
	sbc  [hl]                                        ; $5341: $9e
	ld   e, c                                        ; $5342: $59
	ld   l, l                                        ; $5343: $6d
	ld   e, l                                        ; $5344: $5d
	sbc  c                                           ; $5345: $99
	ld   h, l                                        ; $5346: $65
	ld   d, d                                        ; $5347: $52
	dec  b                                           ; $5348: $05
	jr   nz, jr_065_53c4                             ; $5349: $20 $79

	dec  c                                           ; $534b: $0d
	ld   a, b                                        ; $534c: $78
	ld   [hl], c                                     ; $534d: $71
	ld   l, a                                        ; $534e: $6f
	sub  c                                           ; $534f: $91
	ld   [hl], c                                     ; $5350: $71
	ld   l, l                                        ; $5351: $6d
	sbc  l                                           ; $5352: $9d
	ld   a, e                                        ; $5353: $7b
	sbc  a                                           ; $5354: $9f
	dec  c                                           ; $5355: $0d
	nop                                              ; $5356: $00
	ld   a, [bc]                                     ; $5357: $0a
	ld   b, $0e                                      ; $5358: $06 $0e
	jr   jr_065_536b                                 ; $535a: $18 $0f

	nop                                              ; $535c: $00
	ld   bc, $ca01                                   ; $535d: $01 $01 $ca
	and  l                                           ; $5360: $a5
	push bc                                          ; $5361: $c5
	ld   a, h                                        ; $5362: $7c
	ld   b, $30                                      ; $5363: $06 $30
	dec  b                                           ; $5365: $05
	ld   a, d                                        ; $5366: $7a
	ld   a, h                                        ; $5367: $7c
	dec  b                                           ; $5368: $05
	jr   nz, @+$77                                   ; $5369: $20 $75

jr_065_536b:
	ld   h, a                                        ; $536b: $67
	ld   e, c                                        ; $536c: $59
	ld   sp, hl                                      ; $536d: $f9
	dec  c                                           ; $536e: $0d
	nop                                              ; $536f: $00
	ld   a, [bc]                                     ; $5370: $0a
	ld   b, $c6                                      ; $5371: $06 $c6
	rla                                              ; $5373: $17
	rrca                                             ; $5374: $0f
	nop                                              ; $5375: $00
	ld   bc, $ba01                                   ; $5376: $01 $01 $ba
	and  l                                           ; $5379: $a5
	cp   d                                           ; $537a: $ba
	ld   a, h                                        ; $537b: $7c
	ld   [bc], a                                     ; $537c: $02
	ld   l, h                                        ; $537d: $6c
	ld   [bc], a                                     ; $537e: $02
	ld   a, a                                        ; $537f: $7f
	ld   a, h                                        ; $5380: $7c
	dec  b                                           ; $5381: $05
	jr   nz, jr_065_53f9                             ; $5382: $20 $75

	ld   h, a                                        ; $5384: $67
	ld   e, c                                        ; $5385: $59
	ld   sp, hl                                      ; $5386: $f9
	dec  c                                           ; $5387: $0d
	nop                                              ; $5388: $00
	ld   a, [bc]                                     ; $5389: $0a
	ld   b, $c6                                      ; $538a: $06 $c6
	rla                                              ; $538c: $17
	inc  e                                           ; $538d: $1c
	inc  bc                                          ; $538e: $03
	inc  bc                                          ; $538f: $03
	inc  bc                                          ; $5390: $03
	ld   bc, $7978                                   ; $5391: $01 $78 $79
	sub  [hl]                                        ; $5394: $96
	sbc  [hl]                                        ; $5395: $9e
	ld   l, e                                        ; $5396: $6b
	sbc  d                                           ; $5397: $9a
	ld   sp, hl                                      ; $5398: $f9
	dec  c                                           ; $5399: $0d
	sub  $d6                                         ; $539a: $d6 $d6
	rst  $38                                         ; $539c: $ff
	rst  $38                                         ; $539d: $ff
	ld   [hl], a                                     ; $539e: $77
	ld   h, c                                        ; $539f: $61
	ld   e, c                                        ; $53a0: $59
	sub  a                                           ; $53a1: $97
	ld   l, e                                        ; $53a2: $6b
	and  c                                           ; $53a3: $a1
	ld   a, b                                        ; $53a4: $78
	dec  b                                           ; $53a5: $05
	jr   nz, jr_065_5402                             ; $53a6: $20 $5a

	dec  c                                           ; $53a8: $0d
	inc  bc                                          ; $53a9: $03
	add  b                                           ; $53aa: $80
	ld   l, l                                        ; $53ab: $6d
	ld   a, h                                        ; $53ac: $7c
	ld   e, c                                        ; $53ad: $59
	ld   h, l                                        ; $53ae: $65
	sub  a                                           ; $53af: $97
	rst  $38                                         ; $53b0: $ff
	rst  $38                                         ; $53b1: $ff
	ld   sp, hl                                      ; $53b2: $f9
	dec  c                                           ; $53b3: $0d
	nop                                              ; $53b4: $00
	ld   a, [bc]                                     ; $53b5: $0a
	inc  e                                           ; $53b6: $1c
	inc  bc                                          ; $53b7: $03
	nop                                              ; $53b8: $00
	nop                                              ; $53b9: $00
	ld   bc, $508c                                   ; $53ba: $01 $8c $50
	sbc  [hl]                                        ; $53bd: $9e
	ld   d, d                                        ; $53be: $52
	ld   d, d                                        ; $53bf: $52
	sbc  l                                           ; $53c0: $9d
	rst  $38                                         ; $53c1: $ff
	rst  $38                                         ; $53c2: $ff
	dec  c                                           ; $53c3: $0d

jr_065_53c4:
	ld   h, c                                        ; $53c4: $61
	ld   a, h                                        ; $53c5: $7c
	dec  b                                           ; $53c6: $05
	jr   nz, jr_065_5446                             ; $53c7: $20 $7d

	sub  d                                           ; $53c9: $92
	adc  a                                           ; $53ca: $8f
	ld   a, c                                        ; $53cb: $79
	ld   h, l                                        ; $53cc: $65
	adc  h                                           ; $53cd: $8c
	ld   h, l                                        ; $53ce: $65
	sub  l                                           ; $53cf: $95
	ld   d, h                                        ; $53d0: $54
	sbc  a                                           ; $53d1: $9f
	dec  c                                           ; $53d2: $0d
	nop                                              ; $53d3: $00
	ld   a, [bc]                                     ; $53d4: $0a
	inc  e                                           ; $53d5: $1c
	inc  bc                                          ; $53d6: $03
	nop                                              ; $53d7: $00
	nop                                              ; $53d8: $00
	ld   bc, $5703                                   ; $53d9: $01 $03 $57
	inc  bc                                          ; $53dc: $03
	sbc  c                                           ; $53dd: $99
	dec  b                                           ; $53de: $05
	jr   nz, jr_065_545e                             ; $53df: $20 $7d

	inc  b                                           ; $53e1: $04
	adc  h                                           ; $53e2: $8c
	sbc  l                                           ; $53e3: $9d
	sbc  c                                           ; $53e4: $99
	ld   e, a                                        ; $53e5: $5f
	ld   [hl], a                                     ; $53e6: $77
	dec  c                                           ; $53e7: $0d
	ld   h, c                                        ; $53e8: $61
	ld   a, h                                        ; $53e9: $7c
	inc  bc                                          ; $53ea: $03
	ld   a, b                                        ; $53eb: $78
	ld   a, c                                        ; $53ec: $79
	ld   b, $38                                      ; $53ed: $06 $38
	ld   [bc], a                                     ; $53ef: $02
	ld   [hl], a                                     ; $53f0: $77
	inc  b                                           ; $53f1: $04
	db   $10                                         ; $53f2: $10
	halt                                             ; $53f3: $76
	ld   d, d                                        ; $53f4: $52
	ld   d, h                                        ; $53f5: $54
	ld   e, b                                        ; $53f6: $58
	inc  bc                                          ; $53f7: $03
	rst  $20                                         ; $53f8: $e7

jr_065_53f9:
	ld   e, d                                        ; $53f9: $5a
	dec  c                                           ; $53fa: $0d
	ld   d, b                                        ; $53fb: $50
	sbc  c                                           ; $53fc: $99
	and  c                                           ; $53fd: $a1
	ld   l, [hl]                                     ; $53fe: $6e
	ld   e, a                                        ; $53ff: $5f
	ld   [hl], a                                     ; $5400: $77
	inc  b                                           ; $5401: $04

jr_065_5402:
	dec  hl                                          ; $5402: $2b
	ld   [hl], c                                     ; $5403: $71
	ld   [hl], h                                     ; $5404: $74
	sbc  c                                           ; $5405: $99
	ld   sp, hl                                      ; $5406: $f9
	dec  c                                           ; $5407: $0d
	nop                                              ; $5408: $00
	ld   a, [bc]                                     ; $5409: $0a
	add  hl, de                                      ; $540a: $19
	dec  b                                           ; $540b: $05
	inc  bc                                          ; $540c: $03
	inc  b                                           ; $540d: $04
	dec  hl                                          ; $540e: $2b
	ld   [hl], c                                     ; $540f: $71
	ld   [hl], h                                     ; $5410: $74
	adc  h                                           ; $5411: $8c
	ld   h, a                                        ; $5412: $67
	sub  [hl]                                        ; $5413: $96
	nop                                              ; $5414: $00
	nop                                              ; $5415: $00
	inc  b                                           ; $5416: $04
	ld   c, c                                        ; $5417: $49
	ld   a, h                                        ; $5418: $7c
	inc  bc                                          ; $5419: $03
	rst  $20                                         ; $541a: $e7
	ld   [hl], l                                     ; $541b: $75
	ld   h, a                                        ; $541c: $67
	ld   e, c                                        ; $541d: $59
	ld   sp, hl                                      ; $541e: $f9
	nop                                              ; $541f: $00
	ld   bc, $f5ee                                   ; $5420: $01 $ee $f5
	xor  l                                           ; $5423: $ad
	ld   [bc], a                                     ; $5424: $02
	ld   hl, $6775                                   ; $5425: $21 $75 $67
	ld   e, c                                        ; $5428: $59
	ld   sp, hl                                      ; $5429: $f9
	nop                                              ; $542a: $00
	ld   [bc], a                                     ; $542b: $02
	rlca                                             ; $542c: $07
	add  e                                           ; $542d: $83
	jr   @+$04                                       ; $542e: $18 $02

	inc  bc                                          ; $5430: $03
	ld   bc, $2000                                   ; $5431: $01 $00 $20
	nop                                              ; $5434: $00
	rlca                                             ; $5435: $07
	pop  de                                          ; $5436: $d1
	jr   @+$04                                       ; $5437: $18 $02

	inc  bc                                          ; $5439: $03
	ld   bc, $2001                                   ; $543a: $01 $01 $20
	nop                                              ; $543d: $00
	rlca                                             ; $543e: $07
	dec  h                                           ; $543f: $25
	add  hl, de                                      ; $5440: $19
	ld   [bc], a                                     ; $5441: $02
	inc  bc                                          ; $5442: $03
	ld   bc, $2002                                   ; $5443: $01 $02 $20

jr_065_5446:
	nop                                              ; $5446: $00
	ld   b, $76                                      ; $5447: $06 $76
	add  hl, de                                      ; $5449: $19
	rrca                                             ; $544a: $0f
	nop                                              ; $544b: $00
	ld   bc, $0401                                   ; $544c: $01 $01 $04
	dec  hl                                          ; $544f: $2b
	ld   [hl], c                                     ; $5450: $71
	ld   [hl], h                                     ; $5451: $74
	adc  h                                           ; $5452: $8c
	ld   h, a                                        ; $5453: $67
	sub  [hl]                                        ; $5454: $96
	sbc  a                                           ; $5455: $9f
	dec  c                                           ; $5456: $0d
	inc  b                                           ; $5457: $04
	db   $eb                                         ; $5458: $eb
	inc  bc                                          ; $5459: $03
	ld   l, d                                        ; $545a: $6a
	ld   a, h                                        ; $545b: $7c
	ld   e, b                                        ; $545c: $58
	ld   d, d                                        ; $545d: $52

jr_065_545e:
	ld   h, l                                        ; $545e: $65
	ld   d, d                                        ; $545f: $52
	inc  bc                                          ; $5460: $03
	rst  $20                                         ; $5461: $e7
	dec  c                                           ; $5462: $0d
	ld   a, b                                        ; $5463: $78
	and  c                                           ; $5464: $a1
	ld   [hl], l                                     ; $5465: $75
	ld   h, a                                        ; $5466: $67
	ld   [hl], c                                     ; $5467: $71
	ld   [hl], h                                     ; $5468: $74
	ld   a, e                                        ; $5469: $7b
	sbc  a                                           ; $546a: $9f
	dec  c                                           ; $546b: $0d
	nop                                              ; $546c: $00
	ld   a, [bc]                                     ; $546d: $0a
	inc  e                                           ; $546e: $1c
	inc  bc                                          ; $546f: $03
	inc  bc                                          ; $5470: $03
	inc  bc                                          ; $5471: $03
	ld   bc, $546b                                   ; $5472: $01 $6b $54
	ld   a, b                                        ; $5475: $78
	ld   a, h                                        ; $5476: $7c
	sub  [hl]                                        ; $5477: $96
	rst  $38                                         ; $5478: $ff
	rst  $38                                         ; $5479: $ff
	dec  c                                           ; $547a: $0d
	inc  bc                                          ; $547b: $03
	ld   l, a                                        ; $547c: $6f
	ld   [bc], a                                     ; $547d: $02
	xor  c                                           ; $547e: $a9
	ld   e, d                                        ; $547f: $5a
	ld   d, b                                        ; $5480: $50
	ld   [hl], c                                     ; $5481: $71
	ld   l, l                                        ; $5482: $6d
	sub  a                                           ; $5483: $97
	ld   [bc], a                                     ; $5484: $02
	ld   a, a                                        ; $5485: $7f
	ld   e, a                                        ; $5486: $5f
	ld   l, l                                        ; $5487: $6d
	ld   a, h                                        ; $5488: $7c
	ld   a, c                                        ; $5489: $79
	dec  c                                           ; $548a: $0d
	ld   h, h                                        ; $548b: $64
	and  c                                           ; $548c: $a1
	ld   a, e                                        ; $548d: $7b
	and  c                                           ; $548e: $a1
	ld   a, e                                        ; $548f: $7b
	rst  $38                                         ; $5490: $ff
	rst  $38                                         ; $5491: $ff
	dec  c                                           ; $5492: $0d
	nop                                              ; $5493: $00
	ld   a, [bc]                                     ; $5494: $0a
	ld   b, $a4                                      ; $5495: $06 $a4
	add  hl, de                                      ; $5497: $19
	rrca                                             ; $5498: $0f
	nop                                              ; $5499: $00
	ld   bc, $0401                                   ; $549a: $01 $01 $04
	ld   c, c                                        ; $549d: $49
	ld   a, h                                        ; $549e: $7c
	inc  bc                                          ; $549f: $03
	rst  $20                                         ; $54a0: $e7
	ld   [hl], l                                     ; $54a1: $75
	ld   h, a                                        ; $54a2: $67
	ld   e, c                                        ; $54a3: $59
	ld   sp, hl                                      ; $54a4: $f9
	dec  c                                           ; $54a5: $0d
	nop                                              ; $54a6: $00
	ld   a, [bc]                                     ; $54a7: $0a
	inc  e                                           ; $54a8: $1c
	inc  bc                                          ; $54a9: $03
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	ld   bc, $eb04                                   ; $54ac: $01 $04 $eb
	inc  bc                                          ; $54af: $03
	ld   l, d                                        ; $54b0: $6a
	inc  bc                                          ; $54b1: $03
	rst  $20                                         ; $54b2: $e7
	sub  [hl]                                        ; $54b3: $96
	sbc  a                                           ; $54b4: $9f
	dec  c                                           ; $54b5: $0d
	ld   h, c                                        ; $54b6: $61
	ld   a, h                                        ; $54b7: $7c
	ld   d, b                                        ; $54b8: $50
	ld   l, l                                        ; $54b9: $6d
	sbc  b                                           ; $54ba: $98
	ld   [hl], l                                     ; $54bb: $75
	ld   a, l                                        ; $54bc: $7d
	dec  c                                           ; $54bd: $0d
	ld   e, b                                        ; $54be: $58
	ld   d, d                                        ; $54bf: $52
	ld   h, l                                        ; $54c0: $65
	ld   d, d                                        ; $54c1: $52
	ld   a, h                                        ; $54c2: $7c
	ld   [hl], l                                     ; $54c3: $75
	inc  b                                           ; $54c4: $04
	ldh  [c], a                                      ; $54c5: $e2
	inc  b                                           ; $54c6: $04
	rst  ToBoot                                         ; $54c7: $c7
	ld   a, b                                        ; $54c8: $78
	ld   a, h                                        ; $54c9: $7c
	sbc  a                                           ; $54ca: $9f
	dec  c                                           ; $54cb: $0d
	nop                                              ; $54cc: $00
	ld   a, [bc]                                     ; $54cd: $0a
	ld   bc, $6f03                                   ; $54ce: $01 $03 $6f
	ld   [bc], a                                     ; $54d1: $02
	xor  c                                           ; $54d2: $a9
	ld   e, d                                        ; $54d3: $5a
	ld   d, b                                        ; $54d4: $50
	ld   [hl], c                                     ; $54d5: $71
	ld   l, l                                        ; $54d6: $6d
	sub  a                                           ; $54d7: $97
	ld   [bc], a                                     ; $54d8: $02
	ld   a, a                                        ; $54d9: $7f
	ld   e, a                                        ; $54da: $5f
	ld   l, l                                        ; $54db: $6d
	ld   a, h                                        ; $54dc: $7c
	ld   a, c                                        ; $54dd: $79
	dec  c                                           ; $54de: $0d
	ld   h, h                                        ; $54df: $64
	and  c                                           ; $54e0: $a1
	ld   a, e                                        ; $54e1: $7b
	and  c                                           ; $54e2: $a1
	ld   a, e                                        ; $54e3: $7b
	rst  $38                                         ; $54e4: $ff
	rst  $38                                         ; $54e5: $ff
	dec  c                                           ; $54e6: $0d
	nop                                              ; $54e7: $00
	ld   a, [bc]                                     ; $54e8: $0a
	ld   b, $a4                                      ; $54e9: $06 $a4
	add  hl, de                                      ; $54eb: $19
	rrca                                             ; $54ec: $0f
	nop                                              ; $54ed: $00
	ld   bc, $ee01                                   ; $54ee: $01 $01 $ee
	push af                                          ; $54f1: $f5
	xor  l                                           ; $54f2: $ad
	ld   [bc], a                                     ; $54f3: $02
	ld   hl, $6775                                   ; $54f4: $21 $75 $67
	ld   e, c                                        ; $54f7: $59
	ld   sp, hl                                      ; $54f8: $f9
	dec  c                                           ; $54f9: $0d
	nop                                              ; $54fa: $00
	ld   a, [bc]                                     ; $54fb: $0a
	inc  e                                           ; $54fc: $1c
	inc  bc                                          ; $54fd: $03
	nop                                              ; $54fe: $00
	nop                                              ; $54ff: $00
	ld   bc, $d6d6                                   ; $5500: $01 $d6 $d6
	rst  $38                                         ; $5503: $ff
	rst  $38                                         ; $5504: $ff
	ld   l, e                                        ; $5505: $6b
	ld   d, h                                        ; $5506: $54
	ld   h, [hl]                                     ; $5507: $66
	sub  c                                           ; $5508: $91
	ld   a, b                                        ; $5509: $78
	ld   d, d                                        ; $550a: $52
	sbc  l                                           ; $550b: $9d
	sbc  a                                           ; $550c: $9f
	dec  c                                           ; $550d: $0d
	inc  b                                           ; $550e: $04
	db   $eb                                         ; $550f: $eb
	inc  bc                                          ; $5510: $03
	ld   l, d                                        ; $5511: $6a
	ld   e, d                                        ; $5512: $5a
	ld   e, b                                        ; $5513: $58
	ld   d, d                                        ; $5514: $52
	ld   h, l                                        ; $5515: $65
	ld   d, d                                        ; $5516: $52
	ld   e, b                                        ; $5517: $58
	inc  bc                                          ; $5518: $03
	rst  $20                                         ; $5519: $e7
	sub  [hl]                                        ; $551a: $96
	sbc  a                                           ; $551b: $9f
	dec  c                                           ; $551c: $0d
	nop                                              ; $551d: $00
	ld   a, [bc]                                     ; $551e: $0a
	ld   bc, $6f03                                   ; $551f: $01 $03 $6f
	ld   [bc], a                                     ; $5522: $02
	xor  c                                           ; $5523: $a9
	ld   e, d                                        ; $5524: $5a
	ld   d, b                                        ; $5525: $50
	ld   [hl], c                                     ; $5526: $71
	ld   l, l                                        ; $5527: $6d
	sub  a                                           ; $5528: $97
	ld   [bc], a                                     ; $5529: $02
	ld   a, a                                        ; $552a: $7f
	ld   e, a                                        ; $552b: $5f
	ld   l, l                                        ; $552c: $6d
	ld   a, h                                        ; $552d: $7c
	ld   a, c                                        ; $552e: $79
	dec  c                                           ; $552f: $0d
	ld   h, h                                        ; $5530: $64
	and  c                                           ; $5531: $a1
	ld   a, e                                        ; $5532: $7b
	and  c                                           ; $5533: $a1
	ld   a, e                                        ; $5534: $7b
	rst  $38                                         ; $5535: $ff
	rst  $38                                         ; $5536: $ff
	dec  c                                           ; $5537: $0d
	nop                                              ; $5538: $00
	ld   a, [bc]                                     ; $5539: $0a
	ld   b, $a4                                      ; $553a: $06 $a4
	add  hl, de                                      ; $553c: $19
	inc  e                                           ; $553d: $1c
	inc  bc                                          ; $553e: $03
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00
	ld   bc, $eb04                                   ; $5541: $01 $04 $eb
	inc  bc                                          ; $5544: $03
	ld   l, d                                        ; $5545: $6a
	ld   a, h                                        ; $5546: $7c
	ld   e, b                                        ; $5547: $58
	ld   d, d                                        ; $5548: $52
	ld   h, l                                        ; $5549: $65
	ld   d, d                                        ; $554a: $52
	inc  bc                                          ; $554b: $03
	rst  $20                                         ; $554c: $e7
	ld   a, b                                        ; $554d: $78
	ld   a, h                                        ; $554e: $7c
	sbc  a                                           ; $554f: $9f
	dec  c                                           ; $5550: $0d
	inc  bc                                          ; $5551: $03
	ld   l, a                                        ; $5552: $6f
	ld   [bc], a                                     ; $5553: $02
	xor  c                                           ; $5554: $a9
	ld   e, d                                        ; $5555: $5a
	ld   d, b                                        ; $5556: $50
	ld   [hl], c                                     ; $5557: $71
	ld   l, l                                        ; $5558: $6d
	sub  a                                           ; $5559: $97
	ld   [bc], a                                     ; $555a: $02
	ld   a, a                                        ; $555b: $7f
	ld   e, a                                        ; $555c: $5f
	ld   l, l                                        ; $555d: $6d
	ld   a, h                                        ; $555e: $7c
	ld   a, c                                        ; $555f: $79
	dec  c                                           ; $5560: $0d
	ld   h, h                                        ; $5561: $64
	and  c                                           ; $5562: $a1
	ld   a, e                                        ; $5563: $7b
	and  c                                           ; $5564: $a1
	ld   a, e                                        ; $5565: $7b
	rst  $38                                         ; $5566: $ff
	rst  $38                                         ; $5567: $ff
	dec  c                                           ; $5568: $0d
	nop                                              ; $5569: $00
	ld   a, [bc]                                     ; $556a: $0a
	rlca                                             ; $556b: $07
	ld   bc, $031a                                   ; $556c: $01 $1a $03
	inc  de                                          ; $556f: $13
	ld   bc, $25be                                   ; $5570: $01 $be $25
	nop                                              ; $5573: $00
	inc  e                                           ; $5574: $1c
	inc  bc                                          ; $5575: $03
	nop                                              ; $5576: $00
	nop                                              ; $5577: $00
	ld   bc, $9b6b                                   ; $5578: $01 $6b $9b
	ld   l, e                                        ; $557b: $6b
	sbc  e                                           ; $557c: $9b
	sbc  [hl]                                        ; $557d: $9e
	ld   [bc], a                                     ; $557e: $02
	or   l                                           ; $557f: $b5
	sbc  b                                           ; $5580: $98
	adc  h                                           ; $5581: $8c
	ld   h, l                                        ; $5582: $65
	sub  l                                           ; $5583: $95
	ld   d, h                                        ; $5584: $54
	ld   e, c                                        ; $5585: $59
	sbc  a                                           ; $5586: $9f
	dec  c                                           ; $5587: $0d
	nop                                              ; $5588: $00
	ld   a, [bc]                                     ; $5589: $0a
	dec  c                                           ; $558a: $0d
	nop                                              ; $558b: $00
	nop                                              ; $558c: $00
	rrca                                             ; $558d: $0f
	nop                                              ; $558e: $00
	ld   bc, $020c                                   ; $558f: $01 $0c $02
	ld   c, $06                                      ; $5592: $0e $06
	inc  e                                           ; $5594: $1c
	inc  bc                                          ; $5595: $03
	inc  bc                                          ; $5596: $03
	inc  bc                                          ; $5597: $03
	ld   bc, $a502                                   ; $5598: $01 $02 $a5
	inc  b                                           ; $559b: $04
	xor  d                                           ; $559c: $aa
	ld   a, l                                        ; $559d: $7d
	inc  bc                                          ; $559e: $03
	ld   l, e                                        ; $559f: $6b
	inc  b                                           ; $55a0: $04
	ld   [de], a                                     ; $55a1: $12
	ld   [hl], c                                     ; $55a2: $71
	ld   [hl], h                                     ; $55a3: $74
	ld   e, l                                        ; $55a4: $5d
	sbc  d                                           ; $55a5: $9a
	ld   [hl], h                                     ; $55a6: $74
	dec  c                                           ; $55a7: $0d
	ld   d, b                                        ; $55a8: $50
	sbc  b                                           ; $55a9: $98
	ld   e, d                                        ; $55aa: $5a
	halt                                             ; $55ab: $76
	ld   d, h                                        ; $55ac: $54
	rst  $38                                         ; $55ad: $ff
	rst  $38                                         ; $55ae: $ff
	ld   l, e                                        ; $55af: $6b
	sbc  d                                           ; $55b0: $9a
	ld   h, [hl]                                     ; $55b1: $66
	sub  c                                           ; $55b2: $91
	sbc  a                                           ; $55b3: $9f
	dec  c                                           ; $55b4: $0d
	nop                                              ; $55b5: $00
	ld   a, [bc]                                     ; $55b6: $0a
	dec  b                                           ; $55b7: $05
	add  b                                           ; $55b8: $80
	ld   a, b                                        ; $55b9: $78
	ld   bc, $0001                                   ; $55ba: $01 $01 $00
	dec  c                                           ; $55bd: $0d
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	rrca                                             ; $55c0: $0f
	nop                                              ; $55c1: $00
	ld   bc, $1e09                                   ; $55c2: $01 $09 $1e
	add  hl, hl                                      ; $55c5: $29
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	inc  e                                           ; $55c8: $1c
	inc  bc                                          ; $55c9: $03
	inc  bc                                          ; $55ca: $03
	inc  bc                                          ; $55cb: $03
	ld   bc, $1304                                   ; $55cc: $01 $04 $13
	ld   [bc], a                                     ; $55cf: $02
	and  c                                           ; $55d0: $a1
	sub  b                                           ; $55d1: $90
	ld   d, d                                        ; $55d2: $52
	ld   d, d                                        ; $55d3: $52
	ld   h, l                                        ; $55d4: $65
	rst  $38                                         ; $55d5: $ff
	rst  $38                                         ; $55d6: $ff
	dec  c                                           ; $55d7: $0d
	sub  b                                           ; $55d8: $90
	ld   d, h                                        ; $55d9: $54
	inc  bc                                          ; $55da: $03
	ld   l, h                                        ; $55db: $6c
	ld   h, l                                        ; $55dc: $65
	inc  b                                           ; $55dd: $04
	sbc  a                                           ; $55de: $9f
	ld   e, e                                        ; $55df: $5b
	adc  h                                           ; $55e0: $8c
	ld   h, l                                        ; $55e1: $65
	sub  l                                           ; $55e2: $95
	ld   d, h                                        ; $55e3: $54
	ld   e, c                                        ; $55e4: $59
	sbc  a                                           ; $55e5: $9f
	dec  c                                           ; $55e6: $0d
	nop                                              ; $55e7: $00
	ld   a, [bc]                                     ; $55e8: $0a
	dec  c                                           ; $55e9: $0d
	nop                                              ; $55ea: $00
	nop                                              ; $55eb: $00
	rrca                                             ; $55ec: $0f
	nop                                              ; $55ed: $00
	ld   bc, $8623                                   ; $55ee: $01 $23 $86
	inc  e                                           ; $55f1: $1c
	inc  bc                                          ; $55f2: $03
	nop                                              ; $55f3: $00
	nop                                              ; $55f4: $00
	ld   bc, $5490                                   ; $55f5: $01 $90 $54
	ld   l, e                                        ; $55f8: $6b
	sbc  e                                           ; $55f9: $9b
	ld   l, e                                        ; $55fa: $6b
	sbc  e                                           ; $55fb: $9b
	inc  b                                           ; $55fc: $04
	ld   [$9202], sp                                 ; $55fd: $08 $02 $92
	ld   a, e                                        ; $5600: $7b
	rst  $38                                         ; $5601: $ff
	rst  $38                                         ; $5602: $ff
	dec  c                                           ; $5603: $0d
	nop                                              ; $5604: $00
	ld   a, [bc]                                     ; $5605: $0a
	inc  e                                           ; $5606: $1c
	inc  bc                                          ; $5607: $03
	inc  bc                                          ; $5608: $03
	inc  bc                                          ; $5609: $03
	ld   bc, $567b                                   ; $560a: $01 $7b $56
	sbc  [hl]                                        ; $560d: $9e
	ld   [$5d00], sp                                 ; $560e: $08 $00 $5d
	and  c                                           ; $5611: $a1
	rst  $38                                         ; $5612: $ff
	rst  $38                                         ; $5613: $ff
	dec  c                                           ; $5614: $0d
	ld   l, a                                        ; $5615: $6f
	sub  l                                           ; $5616: $95
	ld   [hl], c                                     ; $5617: $71
	halt                                             ; $5618: $76
	ld   [bc], a                                     ; $5619: $02
	jp   nz, Jump_065_7452                           ; $561a: $c2 $52 $74

	adc  l                                           ; $561d: $8d
	ld   l, l                                        ; $561e: $6d
	ld   d, d                                        ; $561f: $52
	ld   h, c                                        ; $5620: $61
	halt                                             ; $5621: $76
	ld   e, d                                        ; $5622: $5a
	dec  c                                           ; $5623: $0d
	ld   d, b                                        ; $5624: $50
	sbc  c                                           ; $5625: $99
	ld   a, h                                        ; $5626: $7c
	ld   l, [hl]                                     ; $5627: $6e
	ld   e, a                                        ; $5628: $5f
	ld   [hl], a                                     ; $5629: $77
	ld   d, d                                        ; $562a: $52
	ld   d, d                                        ; $562b: $52
	ld   e, c                                        ; $562c: $59
	ld   h, l                                        ; $562d: $65
	sub  a                                           ; $562e: $97
	ld   sp, hl                                      ; $562f: $f9
	dec  c                                           ; $5630: $0d
	nop                                              ; $5631: $00
	ld   a, [bc]                                     ; $5632: $0a
	ld   bc, $7850                                   ; $5633: $01 $50 $78
	ld   l, l                                        ; $5636: $6d
	ld   [hl], c                                     ; $5637: $71
	ld   [hl], h                                     ; $5638: $74
	rst  $38                                         ; $5639: $ff
	rst  $38                                         ; $563a: $ff
	dec  c                                           ; $563b: $0d
	ld   [hl], a                                     ; $563c: $77
	and  c                                           ; $563d: $a1
	ld   a, b                                        ; $563e: $78
	inc  bc                                          ; $563f: $03
	ld   l, [hl]                                     ; $5640: $6e
	ld   [bc], a                                     ; $5641: $02
	db   $fc                                         ; $5642: $fc
	ld   e, d                                        ; $5643: $5a
	ld   [bc], a                                     ; $5644: $02
	sbc  d                                           ; $5645: $9a
	ld   e, e                                        ; $5646: $5b
	ld   a, b                                        ; $5647: $78
	ld   a, h                                        ; $5648: $7c
	ld   sp, hl                                      ; $5649: $f9
	dec  c                                           ; $564a: $0d
	nop                                              ; $564b: $00
	ld   a, [bc]                                     ; $564c: $0a
	add  hl, de                                      ; $564d: $19
	dec  b                                           ; $564e: $05
	inc  bc                                          ; $564f: $03
	rst  JumpTable                                         ; $5650: $df
	db   $ec                                         ; $5651: $ec
	and  e                                           ; $5652: $a3
	ld   h, e                                        ; $5653: $63
	and  c                                           ; $5654: $a1
	adc  l                                           ; $5655: $8d
	ld   l, l                                        ; $5656: $6d
	ld   d, d                                        ; $5657: $52
	ld   a, b                                        ; $5658: $78
	inc  bc                                          ; $5659: $03
	add  d                                           ; $565a: $82
	nop                                              ; $565b: $00
	nop                                              ; $565c: $00
	inc  bc                                          ; $565d: $03
	sub  h                                           ; $565e: $94
	inc  b                                           ; $565f: $04
	sbc  [hl]                                        ; $5660: $9e
	and  b                                           ; $5661: $a0
	inc  b                                           ; $5662: $04
	sbc  [hl]                                        ; $5663: $9e
	ld   e, c                                        ; $5664: $59
	ld   [hl], c                                     ; $5665: $71
	ld   [hl], h                                     ; $5666: $74
	ld   e, l                                        ; $5667: $5d
	sbc  d                                           ; $5668: $9a
	sbc  c                                           ; $5669: $99
	inc  bc                                          ; $566a: $03
	add  d                                           ; $566b: $82
	nop                                              ; $566c: $00
	ld   bc, $6e03                                   ; $566d: $01 $03 $6e
	ld   [bc], a                                     ; $5670: $02
	db   $fc                                         ; $5671: $fc
	ld   a, b                                        ; $5672: $78
	sub  a                                           ; $5673: $97
	ld   l, [hl]                                     ; $5674: $6e
	sbc  d                                           ; $5675: $9a
	ld   [hl], l                                     ; $5676: $75
	sub  b                                           ; $5677: $90
	nop                                              ; $5678: $00
	ld   [bc], a                                     ; $5679: $02
	rlca                                             ; $567a: $07
	pop  de                                          ; $567b: $d1
	ld   a, [de]                                     ; $567c: $1a
	ld   [bc], a                                     ; $567d: $02
	inc  bc                                          ; $567e: $03
	ld   bc, $2000                                   ; $567f: $01 $00 $20
	nop                                              ; $5682: $00
	rlca                                             ; $5683: $07
	ld   [$021b], sp                                 ; $5684: $08 $1b $02
	inc  bc                                          ; $5687: $03
	ld   bc, $2001                                   ; $5688: $01 $01 $20
	nop                                              ; $568b: $00
	rlca                                             ; $568c: $07
	ld   e, b                                        ; $568d: $58
	dec  de                                          ; $568e: $1b
	ld   [bc], a                                     ; $568f: $02
	inc  bc                                          ; $5690: $03
	ld   bc, $2002                                   ; $5691: $01 $02 $20
	nop                                              ; $5694: $00
	ld   b, $8c                                      ; $5695: $06 $8c
	dec  de                                          ; $5697: $1b
	rrca                                             ; $5698: $0f
	nop                                              ; $5699: $00
	ld   bc, $df01                                   ; $569a: $01 $01 $df
	db   $ec                                         ; $569d: $ec
	and  e                                           ; $569e: $a3
	ld   h, e                                        ; $569f: $63
	and  c                                           ; $56a0: $a1
	adc  l                                           ; $56a1: $8d
	ld   l, l                                        ; $56a2: $6d
	ld   d, d                                        ; $56a3: $52
	ld   a, b                                        ; $56a4: $78
	inc  bc                                          ; $56a5: $03
	add  d                                           ; $56a6: $82
	ld   [hl], l                                     ; $56a7: $75
	ld   h, a                                        ; $56a8: $67
	ld   a, e                                        ; $56a9: $7b
	sbc  a                                           ; $56aa: $9f
	dec  c                                           ; $56ab: $0d
	nop                                              ; $56ac: $00
	ld   a, [bc]                                     ; $56ad: $0a
	inc  e                                           ; $56ae: $1c
	inc  bc                                          ; $56af: $03
	inc  bc                                          ; $56b0: $03
	inc  bc                                          ; $56b1: $03
	ld   bc, $546b                                   ; $56b2: $01 $6b $54
	rst  $38                                         ; $56b5: $ff
	rst  $38                                         ; $56b6: $ff
	ld   d, b                                        ; $56b7: $50
	sbc  b                                           ; $56b8: $98
	ld   e, d                                        ; $56b9: $5a
	halt                                             ; $56ba: $76
	ld   d, h                                        ; $56bb: $54
	sbc  a                                           ; $56bc: $9f
	dec  c                                           ; $56bd: $0d
	ld   e, b                                        ; $56be: $58
	ld   l, c                                        ; $56bf: $69
	ld   h, [hl]                                     ; $56c0: $66
	ld   [hl], l                                     ; $56c1: $75
	sub  b                                           ; $56c2: $90
	ld   d, h                                        ; $56c3: $54
	sbc  d                                           ; $56c4: $9a
	ld   h, l                                        ; $56c5: $65
	ld   d, d                                        ; $56c6: $52
	sbc  l                                           ; $56c7: $9d
	sbc  a                                           ; $56c8: $9f
	dec  c                                           ; $56c9: $0d
	nop                                              ; $56ca: $00
	ld   a, [bc]                                     ; $56cb: $0a
	ld   b, $ab                                      ; $56cc: $06 $ab
	dec  de                                          ; $56ce: $1b
	rrca                                             ; $56cf: $0f
	nop                                              ; $56d0: $00
	ld   bc, $6b01                                   ; $56d1: $01 $01 $6b
	ld   d, h                                        ; $56d4: $54
	ld   [hl], l                                     ; $56d5: $75
	ld   h, a                                        ; $56d6: $67
	ld   a, e                                        ; $56d7: $7b
	rst  $38                                         ; $56d8: $ff
	rst  $38                                         ; $56d9: $ff
	dec  c                                           ; $56da: $0d
	inc  bc                                          ; $56db: $03
	sub  h                                           ; $56dc: $94
	inc  b                                           ; $56dd: $04
	sbc  [hl]                                        ; $56de: $9e
	and  b                                           ; $56df: $a0
	sbc  l                                           ; $56e0: $9d
	ld   e, c                                        ; $56e1: $59
	ld   [hl], c                                     ; $56e2: $71
	ld   [hl], h                                     ; $56e3: $74
	ld   e, l                                        ; $56e4: $5d
	sbc  d                                           ; $56e5: $9a
	sbc  c                                           ; $56e6: $99
	inc  bc                                          ; $56e7: $03
	add  d                                           ; $56e8: $82
	ld   e, c                                        ; $56e9: $59
	sub  b                                           ; $56ea: $90
	dec  c                                           ; $56eb: $0d
	inc  b                                           ; $56ec: $04
	dec  hl                                          ; $56ed: $2b
	sbc  d                                           ; $56ee: $9a
	adc  h                                           ; $56ef: $8c
	ld   l, c                                        ; $56f0: $69
	and  c                                           ; $56f1: $a1
	sbc  a                                           ; $56f2: $9f
	dec  c                                           ; $56f3: $0d
	nop                                              ; $56f4: $00
	ld   a, [bc]                                     ; $56f5: $0a
	inc  e                                           ; $56f6: $1c
	inc  bc                                          ; $56f7: $03
	inc  bc                                          ; $56f8: $03
	inc  bc                                          ; $56f9: $03
	ld   bc, $546b                                   ; $56fa: $01 $6b $54
	ld   a, e                                        ; $56fd: $7b
	rst  $38                                         ; $56fe: $ff
	rst  $38                                         ; $56ff: $ff
	inc  bc                                          ; $5700: $03
	ret  z                                           ; $5701: $c8

	sub  b                                           ; $5702: $90
	inc  b                                           ; $5703: $04
	dec  e                                           ; $5704: $1d
	ld   h, [hl]                                     ; $5705: $66
	ld   h, c                                        ; $5706: $61
	halt                                             ; $5707: $76
	and  b                                           ; $5708: $a0
	dec  c                                           ; $5709: $0d
	ld   [bc], a                                     ; $570a: $02
	jp   nz, $9a59                                   ; $570b: $c2 $59 $9a

	ld   l, l                                        ; $570e: $6d
	sub  a                                           ; $570f: $97
	sbc  [hl]                                        ; $5710: $9e
	ld   l, e                                        ; $5711: $6b
	ld   d, h                                        ; $5712: $54
	inc  bc                                          ; $5713: $03
	call c, $9956                                    ; $5714: $dc $56 $99
	sbc  l                                           ; $5717: $9d
	sbc  a                                           ; $5718: $9f
	dec  c                                           ; $5719: $0d
	nop                                              ; $571a: $00
	ld   a, [bc]                                     ; $571b: $0a
	ld   b, $ab                                      ; $571c: $06 $ab
	dec  de                                          ; $571e: $1b
	rrca                                             ; $571f: $0f
	nop                                              ; $5720: $00
	ld   bc, $0301                                   ; $5721: $01 $01 $03
	ld   l, [hl]                                     ; $5724: $6e
	ld   [bc], a                                     ; $5725: $02
	db   $fc                                         ; $5726: $fc
	ld   a, b                                        ; $5727: $78
	sub  a                                           ; $5728: $97
	inc  bc                                          ; $5729: $03
	xor  c                                           ; $572a: $a9
	ld   [hl], l                                     ; $572b: $75
	sub  b                                           ; $572c: $90
	ld   d, d                                        ; $572d: $52
	ld   d, d                                        ; $572e: $52
	ld   [hl], l                                     ; $572f: $75
	ld   h, a                                        ; $5730: $67
	sbc  a                                           ; $5731: $9f
	dec  c                                           ; $5732: $0d
	nop                                              ; $5733: $00
	ld   a, [bc]                                     ; $5734: $0a
	inc  e                                           ; $5735: $1c
	inc  bc                                          ; $5736: $03
	inc  b                                           ; $5737: $04
	inc  b                                           ; $5738: $04
	ld   bc, $546b                                   ; $5739: $01 $6b $54
	rst  $38                                         ; $573c: $ff
	rst  $38                                         ; $573d: $ff
	dec  c                                           ; $573e: $0d
	ld   d, b                                        ; $573f: $50
	adc  h                                           ; $5740: $8c
	sbc  b                                           ; $5741: $98
	ld   [bc], a                                     ; $5742: $02
	scf                                              ; $5743: $37
	inc  bc                                          ; $5744: $03
	ld   [hl], l                                     ; $5745: $75
	ld   [hl], l                                     ; $5746: $75
	ld   e, e                                        ; $5747: $5b
	ld   a, b                                        ; $5748: $78
	ld   d, d                                        ; $5749: $52
	sbc  l                                           ; $574a: $9d
	ld   a, e                                        ; $574b: $7b
	sbc  a                                           ; $574c: $9f
	dec  c                                           ; $574d: $0d
	nop                                              ; $574e: $00
	ld   a, [bc]                                     ; $574f: $0a
	ld   b, $ab                                      ; $5750: $06 $ab
	dec  de                                          ; $5752: $1b
	inc  e                                           ; $5753: $1c
	inc  bc                                          ; $5754: $03
	inc  bc                                          ; $5755: $03
	inc  bc                                          ; $5756: $03
	ld   bc, $5252                                   ; $5757: $01 $52 $52
	sbc  l                                           ; $575a: $9d
	rst  $38                                         ; $575b: $ff
	rst  $38                                         ; $575c: $ff
	dec  c                                           ; $575d: $0d
	ld   [bc], a                                     ; $575e: $02
	and  l                                           ; $575f: $a5
	ld   a, h                                        ; $5760: $7c
	ld   a, l                                        ; $5761: $7d
	ld   [bc], a                                     ; $5762: $02
	jp   nz, Jump_065_7859                           ; $5763: $c2 $59 $78

	ld   e, c                                        ; $5766: $59
	ld   [hl], c                                     ; $5767: $71
	ld   l, l                                        ; $5768: $6d
	ld   [bc], a                                     ; $5769: $02
	jp   Jump_065_6579                               ; $576a: $c3 $79 $65


	ld   [hl], h                                     ; $576d: $74
	sbc  a                                           ; $576e: $9f
	dec  c                                           ; $576f: $0d
	nop                                              ; $5770: $00
	ld   a, [bc]                                     ; $5771: $0a
	rrca                                             ; $5772: $0f
	nop                                              ; $5773: $00
	ld   bc, $df01                                   ; $5774: $01 $01 $df
	db   $ec                                         ; $5777: $ec
	and  e                                           ; $5778: $a3
	ld   h, e                                        ; $5779: $63
	and  c                                           ; $577a: $a1
	rst  $38                                         ; $577b: $ff
	rst  $38                                         ; $577c: $ff
	dec  c                                           ; $577d: $0d
	inc  b                                           ; $577e: $04
	ld   l, l                                        ; $577f: $6d
	ld   e, c                                        ; $5780: $59
	sub  a                                           ; $5781: $97
	sub  b                                           ; $5782: $90
	ld   [bc], a                                     ; $5783: $02
	jp   nz, Jump_065_7452                           ; $5784: $c2 $52 $74

	ld   d, d                                        ; $5787: $52
	ld   d, d                                        ; $5788: $52
	ld   [hl], l                                     ; $5789: $75
	ld   h, a                                        ; $578a: $67
	ld   e, c                                        ; $578b: $59
	ld   sp, hl                                      ; $578c: $f9
	dec  c                                           ; $578d: $0d
	nop                                              ; $578e: $00
	ld   a, [bc]                                     ; $578f: $0a
	inc  e                                           ; $5790: $1c
	inc  bc                                          ; $5791: $03
	inc  bc                                          ; $5792: $03
	inc  bc                                          ; $5793: $03
	ld   bc, $5656                                   ; $5794: $01 $56 $56
	sbc  [hl]                                        ; $5797: $9e
	ld   d, d                                        ; $5798: $52
	ld   d, d                                        ; $5799: $52
	sbc  l                                           ; $579a: $9d
	sub  [hl]                                        ; $579b: $96
	sbc  a                                           ; $579c: $9f
	dec  c                                           ; $579d: $0d
	nop                                              ; $579e: $00
	ld   a, [bc]                                     ; $579f: $0a
	rrca                                             ; $57a0: $0f
	nop                                              ; $57a1: $00
	ld   bc, $0201                                   ; $57a2: $01 $01 $02
	dec  bc                                          ; $57a5: $0b
	inc  bc                                          ; $57a6: $03
	ld   c, a                                        ; $57a7: $4f
	ld   a, c                                        ; $57a8: $79
	sub  b                                           ; $57a9: $90
	ld   [bc], a                                     ; $57aa: $02
	jp   nz, $6d52                                   ; $57ab: $c2 $52 $6d

	ld   e, c                                        ; $57ae: $59
	sub  b                                           ; $57af: $90
	dec  c                                           ; $57b0: $0d
	inc  b                                           ; $57b1: $04
	dec  hl                                          ; $57b2: $2b
	sbc  d                                           ; $57b3: $9a
	adc  h                                           ; $57b4: $8c
	ld   l, c                                        ; $57b5: $69
	and  c                                           ; $57b6: $a1
	ld   e, d                                        ; $57b7: $5a
	sbc  [hl]                                        ; $57b8: $9e
	rst  JumpTable                                         ; $57b9: $df
	db   $ec                                         ; $57ba: $ec
	and  e                                           ; $57bb: $a3
	ld   h, e                                        ; $57bc: $63
	and  c                                           ; $57bd: $a1
	ld   a, l                                        ; $57be: $7d
	rst  $38                                         ; $57bf: $ff
	dec  c                                           ; $57c0: $0d
	nop                                              ; $57c1: $00
	ld   a, [bc]                                     ; $57c2: $0a
	add  hl, de                                      ; $57c3: $19
	dec  b                                           ; $57c4: $05
	inc  bc                                          ; $57c5: $03
	inc  b                                           ; $57c6: $04
	ld   l, l                                        ; $57c7: $6d
	ld   a, h                                        ; $57c8: $7c
	ld   h, c                                        ; $57c9: $61
	halt                                             ; $57ca: $76
	ld   [hl], a                                     ; $57cb: $77
	ld   d, h                                        ; $57cc: $54
	dec  b                                           ; $57cd: $05
	pop  de                                          ; $57ce: $d1
	ld   d, d                                        ; $57cf: $52
	adc  h                                           ; $57d0: $8c
	ld   h, a                                        ; $57d1: $67
	ld   e, c                                        ; $57d2: $59
	ld   sp, hl                                      ; $57d3: $f9
	nop                                              ; $57d4: $00
	nop                                              ; $57d5: $00
	inc  b                                           ; $57d6: $04
	ld   c, $03                                      ; $57d7: $0e $03
	sub  b                                           ; $57d9: $90
	ld   h, e                                        ; $57da: $63
	and  c                                           ; $57db: $a1
	ld   e, d                                        ; $57dc: $5a
	ld   [bc], a                                     ; $57dd: $02
	sbc  d                                           ; $57de: $9a
	ld   e, e                                        ; $57df: $5b
	ld   a, b                                        ; $57e0: $78
	and  c                                           ; $57e1: $a1
	ld   [hl], l                                     ; $57e2: $75
	ld   h, a                                        ; $57e3: $67
	ld   e, c                                        ; $57e4: $59
	ld   sp, hl                                      ; $57e5: $f9
	nop                                              ; $57e6: $00
	ld   bc, $a177                                   ; $57e7: $01 $77 $a1
	ld   a, b                                        ; $57ea: $78
	inc  bc                                          ; $57eb: $03
	add  d                                           ; $57ec: $82
	ld   e, d                                        ; $57ed: $5a
	ld   [bc], a                                     ; $57ee: $02
	sbc  d                                           ; $57ef: $9a
	ld   e, e                                        ; $57f0: $5b
	ld   [hl], l                                     ; $57f1: $75
	ld   h, a                                        ; $57f2: $67
	ld   e, c                                        ; $57f3: $59
	ld   sp, hl                                      ; $57f4: $f9
	nop                                              ; $57f5: $00
	ld   [bc], a                                     ; $57f6: $02
	rlca                                             ; $57f7: $07
	ld   c, [hl]                                     ; $57f8: $4e
	inc  e                                           ; $57f9: $1c
	ld   [bc], a                                     ; $57fa: $02
	inc  bc                                          ; $57fb: $03
	ld   bc, $2000                                   ; $57fc: $01 $00 $20
	nop                                              ; $57ff: $00
	rlca                                             ; $5800: $07
	db   $fd                                         ; $5801: $fd
	inc  e                                           ; $5802: $1c
	ld   [bc], a                                     ; $5803: $02
	inc  bc                                          ; $5804: $03
	ld   bc, $2001                                   ; $5805: $01 $01 $20
	nop                                              ; $5808: $00
	rlca                                             ; $5809: $07
	ld   sp, $021d                                   ; $580a: $31 $1d $02
	inc  bc                                          ; $580d: $03
	ld   bc, $2002                                   ; $580e: $01 $02 $20
	nop                                              ; $5811: $00
	ld   b, $bb                                      ; $5812: $06 $bb
	dec  e                                           ; $5814: $1d
	rrca                                             ; $5815: $0f
	nop                                              ; $5816: $00
	ld   bc, $0401                                   ; $5817: $01 $01 $04
	ld   l, l                                        ; $581a: $6d
	ld   a, h                                        ; $581b: $7c
	ld   h, c                                        ; $581c: $61
	halt                                             ; $581d: $76
	ld   [hl], a                                     ; $581e: $77
	ld   d, h                                        ; $581f: $54
	dec  b                                           ; $5820: $05
	pop  de                                          ; $5821: $d1
	ld   d, d                                        ; $5822: $52
	adc  h                                           ; $5823: $8c
	ld   h, a                                        ; $5824: $67
	ld   e, c                                        ; $5825: $59
	ld   sp, hl                                      ; $5826: $f9
	dec  c                                           ; $5827: $0d
	nop                                              ; $5828: $00
	ld   a, [bc]                                     ; $5829: $0a
	inc  e                                           ; $582a: $1c
	inc  bc                                          ; $582b: $03
	inc  bc                                          ; $582c: $03
	inc  bc                                          ; $582d: $03
	ld   bc, $d6d6                                   ; $582e: $01 $d6 $d6
	rst  $38                                         ; $5831: $ff
	rst  $38                                         ; $5832: $ff
	ld   d, d                                        ; $5833: $52
	ld   e, e                                        ; $5834: $5b
	ld   a, b                                        ; $5835: $78
	sbc  b                                           ; $5836: $98
	ld   a, b                                        ; $5837: $78
	inc  bc                                          ; $5838: $03
	dec  d                                           ; $5839: $15
	inc  b                                           ; $583a: $04
	cp   a                                           ; $583b: $bf
	ld   a, e                                        ; $583c: $7b
	sbc  a                                           ; $583d: $9f
	dec  c                                           ; $583e: $0d
	nop                                              ; $583f: $00
	ld   a, [bc]                                     ; $5840: $0a
	rrca                                             ; $5841: $0f
	nop                                              ; $5842: $00
	ld   bc, $0401                                   ; $5843: $01 $01 $04
	ld   l, l                                        ; $5846: $6d
	ld   [hl], c                                     ; $5847: $71
	ld   [hl], h                                     ; $5848: $74
	rst  $38                                         ; $5849: $ff
	rst  $38                                         ; $584a: $ff
	rst  JumpTable                                         ; $584b: $df
	db   $ec                                         ; $584c: $ec
	and  e                                           ; $584d: $a3
	ld   h, e                                        ; $584e: $63
	and  c                                           ; $584f: $a1
	ld   e, c                                        ; $5850: $59
	sub  a                                           ; $5851: $97
	ld   [bc], a                                     ; $5852: $02
	sub  l                                           ; $5853: $95
	ld   [hl], h                                     ; $5854: $74
	dec  c                                           ; $5855: $0d
	ld   [hl], a                                     ; $5856: $77
	ld   d, h                                        ; $5857: $54
	ld   [hl], l                                     ; $5858: $75
	ld   h, a                                        ; $5859: $67
	ld   e, c                                        ; $585a: $59
	ld   sp, hl                                      ; $585b: $f9
	dec  c                                           ; $585c: $0d
	nop                                              ; $585d: $00
	ld   a, [bc]                                     ; $585e: $0a
	inc  e                                           ; $585f: $1c
	inc  bc                                          ; $5860: $03
	inc  bc                                          ; $5861: $03
	inc  bc                                          ; $5862: $03
	ld   bc, $7198                                   ; $5863: $01 $98 $71
	ld   a, a                                        ; $5866: $7f
	ld   l, [hl]                                     ; $5867: $6e
	halt                                             ; $5868: $76
	dec  b                                           ; $5869: $05
	pop  de                                          ; $586a: $d1
	ld   d, h                                        ; $586b: $54
	sbc  l                                           ; $586c: $9d
	sbc  a                                           ; $586d: $9f
	dec  c                                           ; $586e: $0d
	ld   e, b                                        ; $586f: $58
	ld   l, c                                        ; $5870: $69
	ld   h, [hl]                                     ; $5871: $66
	ld   [hl], l                                     ; $5872: $75
	ld   a, b                                        ; $5873: $78
	ld   e, l                                        ; $5874: $5d
	sbc  [hl]                                        ; $5875: $9e
	ld   d, b                                        ; $5876: $50
	ld   a, b                                        ; $5877: $78
	ld   l, l                                        ; $5878: $6d
	ld   a, h                                        ; $5879: $7c
	inc  bc                                          ; $587a: $03
	ld   h, h                                        ; $587b: $64
	dec  b                                           ; $587c: $05
	db   $10                                         ; $587d: $10
	ld   e, d                                        ; $587e: $5a
	dec  c                                           ; $587f: $0d
	dec  b                                           ; $5880: $05
	inc  de                                          ; $5881: $13
	ld   h, l                                        ; $5882: $65
	adc  l                                           ; $5883: $8d
	sub  [hl]                                        ; $5884: $96
	sbc  a                                           ; $5885: $9f
	dec  c                                           ; $5886: $0d
	nop                                              ; $5887: $00
	ld   a, [bc]                                     ; $5888: $0a
	inc  e                                           ; $5889: $1c
	inc  bc                                          ; $588a: $03
	ld   bc, $0101                                   ; $588b: $01 $01 $01
	ld   [hl], l                                     ; $588e: $75
	ld   e, e                                        ; $588f: $5b
	sbc  d                                           ; $5890: $9a
	ld   a, [hl]                                     ; $5891: $7e
	sbc  [hl]                                        ; $5892: $9e
	inc  b                                           ; $5893: $04
	ld   a, [bc]                                     ; $5894: $0a
	inc  bc                                          ; $5895: $03
	jp   nc, $967c                                   ; $5896: $d2 $7c $96

	ld   d, h                                        ; $5899: $54
	ld   a, b                                        ; $589a: $78
	inc  bc                                          ; $589b: $03
	add  d                                           ; $589c: $82
	ld   a, c                                        ; $589d: $79
	dec  c                                           ; $589e: $0d
	ld   a, b                                        ; $589f: $78
	ld   [hl], c                                     ; $58a0: $71
	ld   [hl], h                                     ; $58a1: $74
	adc  c                                           ; $58a2: $89
	ld   h, l                                        ; $58a3: $65
	ld   d, d                                        ; $58a4: $52
	sbc  l                                           ; $58a5: $9d
	rst  $38                                         ; $58a6: $ff
	rst  $38                                         ; $58a7: $ff
	dec  c                                           ; $58a8: $0d
	nop                                              ; $58a9: $00
	ld   a, [bc]                                     ; $58aa: $0a
	rrca                                             ; $58ab: $0f
	nop                                              ; $58ac: $00
	ld   bc, $9201                                   ; $58ad: $01 $01 $92
	ld   [hl], c                                     ; $58b0: $71
	ld   a, a                                        ; $58b1: $7f
	sbc  b                                           ; $58b2: $98
	inc  b                                           ; $58b3: $04
	ld   c, $03                                      ; $58b4: $0e $03
	sub  b                                           ; $58b6: $90
	ld   h, e                                        ; $58b7: $63
	and  c                                           ; $58b8: $a1
	ld   [hl], l                                     ; $58b9: $75
	ld   h, a                                        ; $58ba: $67
	ld   e, c                                        ; $58bb: $59
	rst  $38                                         ; $58bc: $ff
	rst  $38                                         ; $58bd: $ff
	dec  c                                           ; $58be: $0d
	nop                                              ; $58bf: $00
	ld   a, [bc]                                     ; $58c0: $0a
	ld   b, $61                                      ; $58c1: $06 $61
	dec  e                                           ; $58c3: $1d
	rrca                                             ; $58c4: $0f
	nop                                              ; $58c5: $00
	ld   bc, $0401                                   ; $58c6: $01 $01 $04
	ld   c, $03                                      ; $58c9: $0e $03
	sub  b                                           ; $58cb: $90
	ld   h, e                                        ; $58cc: $63
	and  c                                           ; $58cd: $a1
	ld   e, d                                        ; $58ce: $5a
	ld   [bc], a                                     ; $58cf: $02
	sbc  d                                           ; $58d0: $9a
	ld   e, e                                        ; $58d1: $5b
	ld   a, b                                        ; $58d2: $78
	and  c                                           ; $58d3: $a1
	ld   [hl], l                                     ; $58d4: $75
	ld   h, a                                        ; $58d5: $67
	ld   e, c                                        ; $58d6: $59
	ld   sp, hl                                      ; $58d7: $f9
	dec  c                                           ; $58d8: $0d
	nop                                              ; $58d9: $00
	ld   a, [bc]                                     ; $58da: $0a
	inc  e                                           ; $58db: $1c
	inc  bc                                          ; $58dc: $03
	ld   bc, $0101                                   ; $58dd: $01 $01 $01
	rst  $38                                         ; $58e0: $ff
	rst  $38                                         ; $58e1: $ff
	rst  $38                                         ; $58e2: $ff
	rst  $38                                         ; $58e3: $ff
	dec  c                                           ; $58e4: $0d
	nop                                              ; $58e5: $00
	ld   a, [bc]                                     ; $58e6: $0a
	ld   bc, $0f06                                   ; $58e7: $01 $06 $0f
	inc  bc                                          ; $58ea: $03
	call nc, Call_065_657d                           ; $58eb: $d4 $7d $65
	ld   a, b                                        ; $58ee: $78
	ld   d, d                                        ; $58ef: $52
	sbc  l                                           ; $58f0: $9d
	sbc  a                                           ; $58f1: $9f
	dec  c                                           ; $58f2: $0d
	nop                                              ; $58f3: $00
	ld   a, [bc]                                     ; $58f4: $0a
	ld   b, $61                                      ; $58f5: $06 $61
	dec  e                                           ; $58f7: $1d
	rrca                                             ; $58f8: $0f
	nop                                              ; $58f9: $00
	ld   bc, $7701                                   ; $58fa: $01 $01 $77
	and  c                                           ; $58fd: $a1
	ld   a, b                                        ; $58fe: $78
	inc  bc                                          ; $58ff: $03
	add  d                                           ; $5900: $82
	ld   e, d                                        ; $5901: $5a
	ld   [bc], a                                     ; $5902: $02
	sbc  d                                           ; $5903: $9a
	ld   e, e                                        ; $5904: $5b
	ld   [hl], l                                     ; $5905: $75
	ld   h, a                                        ; $5906: $67
	ld   e, c                                        ; $5907: $59
	ld   sp, hl                                      ; $5908: $f9
	dec  c                                           ; $5909: $0d
	nop                                              ; $590a: $00
	ld   a, [bc]                                     ; $590b: $0a
	inc  e                                           ; $590c: $1c
	inc  bc                                          ; $590d: $03
	ld   bc, $0101                                   ; $590e: $01 $01 $01
	ld   l, e                                        ; $5911: $6b
	ld   d, h                                        ; $5912: $54
	ld   a, e                                        ; $5913: $7b
	rst  $38                                         ; $5914: $ff
	rst  $38                                         ; $5915: $ff
	dec  c                                           ; $5916: $0d
	inc  b                                           ; $5917: $04
	ld   a, [bc]                                     ; $5918: $0a
	inc  bc                                          ; $5919: $03
	jp   nc, Jump_065_6d8d                           ; $591a: $d2 $8d $6d

	ld   d, d                                        ; $591d: $52
	ld   a, b                                        ; $591e: $78
	inc  bc                                          ; $591f: $03
	add  d                                           ; $5920: $82
	ld   e, c                                        ; $5921: $59
	sub  b                                           ; $5922: $90
	rst  $38                                         ; $5923: $ff
	rst  $38                                         ; $5924: $ff
	dec  c                                           ; $5925: $0d
	nop                                              ; $5926: $00
	ld   a, [bc]                                     ; $5927: $0a
	inc  e                                           ; $5928: $1c
	inc  bc                                          ; $5929: $03
	inc  b                                           ; $592a: $04
	inc  b                                           ; $592b: $04
	ld   bc, $ffff                                   ; $592c: $01 $ff $ff
	ld   [$5d00], sp                                 ; $592f: $08 $00 $5d
	and  c                                           ; $5932: $a1
	rst  $38                                         ; $5933: $ff
	rst  $38                                         ; $5934: $ff
	dec  c                                           ; $5935: $0d
	ld   e, b                                        ; $5936: $58
	ld   [bc], a                                     ; $5937: $02
	add  b                                           ; $5938: $80
	ld   d, d                                        ; $5939: $52
	ld   e, d                                        ; $593a: $5a
	ld   d, b                                        ; $593b: $50
	sbc  c                                           ; $593c: $99
	ld   a, h                                        ; $593d: $7c
	rst  $38                                         ; $593e: $ff
	rst  $38                                         ; $593f: $ff
	ld   [bc], a                                     ; $5940: $02
	and  l                                           ; $5941: $a5
	ld   a, h                                        ; $5942: $7c
	dec  b                                           ; $5943: $05
	jr   nz, jr_065_59c3                             ; $5944: $20 $7d

	dec  c                                           ; $5946: $0d
	inc  b                                           ; $5947: $04
	ld   a, [bc]                                     ; $5948: $0a
	inc  bc                                          ; $5949: $03
	jp   nc, Jump_065_7d79                           ; $594a: $d2 $79 $7d

	ld   l, [hl]                                     ; $594d: $6e
	adc  h                                           ; $594e: $8c
	ld   [hl], c                                     ; $594f: $71
	ld   [hl], h                                     ; $5950: $74
	ld   d, d                                        ; $5951: $52
	ld   [hl], h                                     ; $5952: $74
	sbc  a                                           ; $5953: $9f
	dec  c                                           ; $5954: $0d
	nop                                              ; $5955: $00
	ld   a, [bc]                                     ; $5956: $0a
	ld   bc, $846d                                   ; $5957: $01 $6d $84
	and  c                                           ; $595a: $a1
	sbc  [hl]                                        ; $595b: $9e
	ld   l, e                                        ; $595c: $6b
	ld   a, h                                        ; $595d: $7c
	adc  c                                           ; $595e: $89
	ld   d, h                                        ; $595f: $54
	ld   e, d                                        ; $5960: $5a
	inc  b                                           ; $5961: $04
	ld   c, c                                        ; $5962: $49
	sub  b                                           ; $5963: $90
	ld   e, c                                        ; $5964: $59
	sub  b                                           ; $5965: $90
	dec  c                                           ; $5966: $0d
	ld   d, h                                        ; $5967: $54
	adc  h                                           ; $5968: $8c
	ld   e, l                                        ; $5969: $5d
	ld   d, d                                        ; $596a: $52
	ld   e, l                                        ; $596b: $5d
	halt                                             ; $596c: $76
	dec  b                                           ; $596d: $05
	pop  de                                          ; $596e: $d1
	ld   d, h                                        ; $596f: $54
	ld   e, c                                        ; $5970: $59
	sub  a                                           ; $5971: $97
	rst  $38                                         ; $5972: $ff
	rst  $38                                         ; $5973: $ff
	dec  c                                           ; $5974: $0d
	nop                                              ; $5975: $00
	ld   a, [bc]                                     ; $5976: $0a
	dec  c                                           ; $5977: $0d
	nop                                              ; $5978: $00
	nop                                              ; $5979: $00
	rrca                                             ; $597a: $0f
	nop                                              ; $597b: $00
	ld   bc, $020c                                   ; $597c: $01 $0c $02
	ld   b, $ea                                      ; $597f: $06 $ea
	dec  e                                           ; $5981: $1d
	rrca                                             ; $5982: $0f
	nop                                              ; $5983: $00
	ld   bc, $ff01                                   ; $5984: $01 $01 $ff
	rst  $38                                         ; $5987: $ff
	ld   a, b                                        ; $5988: $78
	and  c                                           ; $5989: $a1
	ld   [hl], l                                     ; $598a: $75
	sub  b                                           ; $598b: $90
	ld   d, b                                        ; $598c: $50
	sbc  b                                           ; $598d: $98
	adc  h                                           ; $598e: $8c
	ld   l, c                                        ; $598f: $69
	and  c                                           ; $5990: $a1
	sbc  a                                           ; $5991: $9f
	dec  c                                           ; $5992: $0d
	nop                                              ; $5993: $00
	ld   a, [bc]                                     ; $5994: $0a
	inc  e                                           ; $5995: $1c
	inc  bc                                          ; $5996: $03
	inc  bc                                          ; $5997: $03
	inc  bc                                          ; $5998: $03
	ld   bc, $d6d6                                   ; $5999: $01 $d6 $d6
	rst  $38                                         ; $599c: $ff
	rst  $38                                         ; $599d: $ff
	ld   e, b                                        ; $599e: $58
	ld   e, c                                        ; $599f: $59
	ld   h, l                                        ; $59a0: $65
	ld   a, b                                        ; $59a1: $78
	inc  bc                                          ; $59a2: $03
	add  [hl]                                        ; $59a3: $86
	ld   a, e                                        ; $59a4: $7b
	sbc  a                                           ; $59a5: $9f
	dec  c                                           ; $59a6: $0d
	nop                                              ; $59a7: $00
	ld   a, [bc]                                     ; $59a8: $0a
	dec  c                                           ; $59a9: $0d
	nop                                              ; $59aa: $00
	nop                                              ; $59ab: $00
	rrca                                             ; $59ac: $0f
	nop                                              ; $59ad: $00
	ld   bc, $020c                                   ; $59ae: $01 $0c $02
	ld   c, $06                                      ; $59b1: $0e $06
	inc  e                                           ; $59b3: $1c
	inc  bc                                          ; $59b4: $03
	inc  bc                                          ; $59b5: $03
	inc  bc                                          ; $59b6: $03
	ld   bc, $a502                                   ; $59b7: $01 $02 $a5
	inc  b                                           ; $59ba: $04
	xor  d                                           ; $59bb: $aa
	ld   a, l                                        ; $59bc: $7d
	dec  b                                           ; $59bd: $05
	inc  de                                          ; $59be: $13
	ld   h, l                                        ; $59bf: $65
	ld   e, c                                        ; $59c0: $59
	ld   [hl], c                                     ; $59c1: $71
	ld   l, l                                        ; $59c2: $6d

jr_065_59c3:
	sbc  l                                           ; $59c3: $9d
	rst  $38                                         ; $59c4: $ff
	rst  $38                                         ; $59c5: $ff
	dec  c                                           ; $59c6: $0d
	nop                                              ; $59c7: $00
	ld   a, [bc]                                     ; $59c8: $0a
	ld   bc, $546b                                   ; $59c9: $01 $6b $54
	ld   l, [hl]                                     ; $59cc: $6e
	sbc  l                                           ; $59cd: $9d
	sbc  a                                           ; $59ce: $9f
	dec  c                                           ; $59cf: $0d
	inc  b                                           ; $59d0: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59d1: $cf
	inc  b                                           ; $59d2: $04
	xor  d                                           ; $59d3: $aa
	ld   a, l                                        ; $59d4: $7d
	inc  bc                                          ; $59d5: $03
	ld   l, c                                        ; $59d6: $69
	inc  bc                                          ; $59d7: $03
	ld   a, [hl]                                     ; $59d8: $7e
	rst  ToBoot                                         ; $59d9: $c7
	cp   d                                           ; $59da: $ba
	ret                                              ; $59db: $c9


	ld   l, [hl]                                     ; $59dc: $6e
	ld   [hl], c                                     ; $59dd: $71
	ld   l, l                                        ; $59de: $6d
	sbc  l                                           ; $59df: $9d
	ld   a, e                                        ; $59e0: $7b
	sbc  a                                           ; $59e1: $9f
	dec  c                                           ; $59e2: $0d
	nop                                              ; $59e3: $00
	ld   a, [bc]                                     ; $59e4: $0a
	ld   d, $20                                      ; $59e5: $16 $20
	ld   bc, $5996                                   ; $59e7: $01 $96 $59
	ld   [hl], c                                     ; $59ea: $71
	ld   l, l                                        ; $59eb: $6d
	sub  a                                           ; $59ec: $97
	sbc  [hl]                                        ; $59ed: $9e
	dec  c                                           ; $59ee: $0d
	ld   h, c                                        ; $59ef: $61
	sbc  d                                           ; $59f0: $9a
	and  b                                           ; $59f1: $a0
	ld   [bc], a                                     ; $59f2: $02
	rst  $38                                         ; $59f3: $ff
	ld   e, a                                        ; $59f4: $5f
	halt                                             ; $59f5: $76
	ld   [hl], c                                     ; $59f6: $71
	ld   [hl], h                                     ; $59f7: $74
	rst  $38                                         ; $59f8: $ff
	rst  $38                                         ; $59f9: $ff
	dec  c                                           ; $59fa: $0d
	ld   e, b                                        ; $59fb: $58
	inc  bc                                          ; $59fc: $03
	sub  e                                           ; $59fd: $93
	sbc  b                                           ; $59fe: $98
	inc  bc                                          ; $59ff: $03
	sbc  $9d                                         ; $5a00: $de $9d
	sbc  b                                           ; $5a02: $98
	ld   a, c                                        ; $5a03: $79
	sbc  a                                           ; $5a04: $9f
	dec  c                                           ; $5a05: $0d
	nop                                              ; $5a06: $00
	ld   a, [bc]                                     ; $5a07: $0a
	rrca                                             ; $5a08: $0f
	nop                                              ; $5a09: $00
	ld   bc, $0501                                   ; $5a0a: $01 $01 $05
	rst  $28                                         ; $5a0d: $ef
	inc  b                                           ; $5a0e: $04
	ret  z                                           ; $5a0f: $c8

	ld   a, h                                        ; $5a10: $7c
	and  e                                           ; $5a11: $a3
	or   b                                           ; $5a12: $b0
	cp   h                                           ; $5a13: $bc
	or   [hl]                                        ; $5a14: $b6
	db   $ec                                         ; $5a15: $ec
	ei                                               ; $5a16: $fb
	rst  $38                                         ; $5a17: $ff
	rst  $38                                         ; $5a18: $ff
	dec  c                                           ; $5a19: $0d
	nop                                              ; $5a1a: $00
	dec  b                                           ; $5a1b: $05
	add  b                                           ; $5a1c: $80
	ld   a, b                                        ; $5a1d: $78
	ld   bc, $0001                                   ; $5a1e: $01 $01 $00
	ld   bc, $9850                                   ; $5a21: $01 $50 $98
	ld   e, d                                        ; $5a24: $5a
	halt                                             ; $5a25: $76
	ld   d, h                                        ; $5a26: $54
	ld   h, d                                        ; $5a27: $62
	ld   h, h                                        ; $5a28: $64
	ld   d, d                                        ; $5a29: $52
	adc  h                                           ; $5a2a: $8c
	ld   h, a                                        ; $5a2b: $67
	sbc  a                                           ; $5a2c: $9f
	dec  c                                           ; $5a2d: $0d
	ld   e, d                                        ; $5a2e: $5a
	and  c                                           ; $5a2f: $a1
	ld   a, [hl]                                     ; $5a30: $7e
	sbc  b                                           ; $5a31: $98
	adc  h                                           ; $5a32: $8c
	ld   h, a                                        ; $5a33: $67
	sbc  [hl]                                        ; $5a34: $9e
	rst  JumpTable                                         ; $5a35: $df
	db   $ec                                         ; $5a36: $ec
	and  e                                           ; $5a37: $a3
	ld   h, e                                        ; $5a38: $63
	and  c                                           ; $5a39: $a1
	sbc  a                                           ; $5a3a: $9f
	dec  c                                           ; $5a3b: $0d
	nop                                              ; $5a3c: $00
	ld   a, [bc]                                     ; $5a3d: $0a
	add  hl, hl                                      ; $5a3e: $29
	nop                                              ; $5a3f: $00
	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	ld   c, $01                                      ; $5a42: $0e $01
	rrca                                             ; $5a44: $0f
	nop                                              ; $5a45: $00
	ld   bc, $0102                                   ; $5a46: $01 $02 $01
	rst  $38                                         ; $5a49: $ff
	rst  $38                                         ; $5a4a: $ff
	rst  $38                                         ; $5a4b: $ff
	and  c                                           ; $5a4c: $a1
	rst  $38                                         ; $5a4d: $ff
	rst  $38                                         ; $5a4e: $ff
	rst  $38                                         ; $5a4f: $ff
	inc  bc                                          ; $5a50: $03
	ld   d, $59                                      ; $5a51: $16 $59
	rst  $38                                         ; $5a53: $ff
	rst  $38                                         ; $5a54: $ff
	dec  c                                           ; $5a55: $0d
	inc  b                                           ; $5a56: $04
	ld   [$9202], sp                                 ; $5a57: $08 $02 $92
	inc  bc                                          ; $5a5a: $03
	ld   d, d                                        ; $5a5b: $52
	ld   [bc], a                                     ; $5a5c: $02
	or   a                                           ; $5a5d: $b7
	sub  b                                           ; $5a5e: $90
	ld   d, b                                        ; $5a5f: $50
	halt                                             ; $5a60: $76
	ld   [bc], a                                     ; $5a61: $02
	jr   nz, jr_065_5a68                             ; $5a62: $20 $04

	xor  d                                           ; $5a64: $aa
	ld   l, [hl]                                     ; $5a65: $6e
	ld   a, b                                        ; $5a66: $78
	rst  $38                                         ; $5a67: $ff

jr_065_5a68:
	rst  $38                                         ; $5a68: $ff
	dec  c                                           ; $5a69: $0d
	nop                                              ; $5a6a: $00
	ld   a, [bc]                                     ; $5a6b: $0a
	ld   bc, $ff50                                   ; $5a6c: $01 $50 $ff
	rst  $38                                         ; $5a6f: $ff
	ld   l, e                                        ; $5a70: $6b
	ld   d, h                                        ; $5a71: $54
	ld   l, [hl]                                     ; $5a72: $6e
	sbc  [hl]                                        ; $5a73: $9e
	dec  c                                           ; $5a74: $0d
	ld   [bc], a                                     ; $5a75: $02
	and  l                                           ; $5a76: $a5
	inc  b                                           ; $5a77: $04
	xor  d                                           ; $5a78: $aa
	ld   a, l                                        ; $5a79: $7d
	inc  bc                                          ; $5a7a: $03
	ld   l, c                                        ; $5a7b: $69
	inc  bc                                          ; $5a7c: $03
	ld   a, [hl]                                     ; $5a7d: $7e
	inc  bc                                          ; $5a7e: $03
	inc  h                                           ; $5a7f: $24
	ld   [bc], a                                     ; $5a80: $02
	sub  [hl]                                        ; $5a81: $96
	ld   e, d                                        ; $5a82: $5a
	ld   d, b                                        ; $5a83: $50
	sbc  c                                           ; $5a84: $99
	and  c                                           ; $5a85: $a1
	dec  c                                           ; $5a86: $0d
	ld   l, [hl]                                     ; $5a87: $6e
	ld   [hl], c                                     ; $5a88: $71
	ld   e, a                                        ; $5a89: $5f
	sbc  a                                           ; $5a8a: $9f
	dec  c                                           ; $5a8b: $0d
	nop                                              ; $5a8c: $00
	ld   a, [bc]                                     ; $5a8d: $0a
	ld   bc, $ffff                                   ; $5a8e: $01 $ff $ff
	sub  [hl]                                        ; $5a91: $96
	ld   h, l                                        ; $5a92: $65
	ld   a, [$020d]                                  ; $5a93: $fa $0d $02
	and  c                                           ; $5a96: $a1
	ld   [bc], a                                     ; $5a97: $02
	ld   a, e                                        ; $5a98: $7b
	ld   d, d                                        ; $5a99: $52
	and  b                                           ; $5a9a: $a0
	inc  b                                           ; $5a9b: $04
	ld   b, l                                        ; $5a9c: $45
	sbc  d                                           ; $5a9d: $9a
	ld   [hl], h                                     ; $5a9e: $74
	ld   [bc], a                                     ; $5a9f: $02
	ld   a, a                                        ; $5aa0: $7f
	ld   e, l                                        ; $5aa1: $5d
	ld   l, h                                        ; $5aa2: $6c
	ld   a, [$0dfa]                                  ; $5aa3: $fa $fa $0d
	nop                                              ; $5aa6: $00
	ld   a, [bc]                                     ; $5aa7: $0a
	inc  hl                                          ; $5aa8: $23
	ld   a, e                                        ; $5aa9: $7b
	inc  de                                          ; $5aaa: $13
	ld   c, $1c                                      ; $5aab: $0e $1c
	add  hl, bc                                      ; $5aad: $09
	nop                                              ; $5aae: $00
	nop                                              ; $5aaf: $00
	ld   bc, $7d58                                   ; $5ab0: $01 $58 $7d
	sub  [hl]                                        ; $5ab3: $96
	ld   d, h                                        ; $5ab4: $54
	sbc  [hl]                                        ; $5ab5: $9e
	ld   [$5d00], sp                                 ; $5ab6: $08 $00 $5d
	and  c                                           ; $5ab9: $a1
	sbc  a                                           ; $5aba: $9f
	dec  c                                           ; $5abb: $0d
	ld   [bc], a                                     ; $5abc: $02
	and  l                                           ; $5abd: $a5
	inc  b                                           ; $5abe: $04
	xor  d                                           ; $5abf: $aa
	ld   a, l                                        ; $5ac0: $7d
	ld   d, d                                        ; $5ac1: $52
	sub  [hl]                                        ; $5ac2: $96
	ld   d, d                                        ; $5ac3: $52
	sub  [hl]                                        ; $5ac4: $96
	inc  bc                                          ; $5ac5: $03
	ld   l, c                                        ; $5ac6: $69
	inc  bc                                          ; $5ac7: $03
	ld   a, [hl]                                     ; $5ac8: $7e
	inc  bc                                          ; $5ac9: $03
	inc  h                                           ; $5aca: $24
	ld   [bc], a                                     ; $5acb: $02
	sub  [hl]                                        ; $5acc: $96
	ld   l, [hl]                                     ; $5acd: $6e
	sbc  a                                           ; $5ace: $9f
	dec  c                                           ; $5acf: $0d
	ld   e, d                                        ; $5ad0: $5a
	and  c                                           ; $5ad1: $a1
	ld   a, [hl]                                     ; $5ad2: $7e
	ld   [hl], c                                     ; $5ad3: $71
	ld   [hl], h                                     ; $5ad4: $74
	ld   e, l                                        ; $5ad5: $5d
	sbc  d                                           ; $5ad6: $9a
	sub  [hl]                                        ; $5ad7: $96
	sbc  a                                           ; $5ad8: $9f
	dec  c                                           ; $5ad9: $0d
	nop                                              ; $5ada: $00
	ld   a, [bc]                                     ; $5adb: $0a
	ld   bc, $688c                                   ; $5adc: $01 $8c $68
	ld   a, l                                        ; $5adf: $7d
	sbc  [hl]                                        ; $5ae0: $9e
	dec  b                                           ; $5ae1: $05
	and  l                                           ; $5ae2: $a5
	inc  b                                           ; $5ae3: $04
	ld   a, [bc]                                     ; $5ae4: $0a
	ld   [bc], a                                     ; $5ae5: $02
	nop                                              ; $5ae6: $00
	halt                                             ; $5ae7: $76
	ld   a, h                                        ; $5ae8: $7c
	inc  bc                                          ; $5ae9: $03
	ld   l, l                                        ; $5aea: $6d
	dec  b                                           ; $5aeb: $05
	add  hl, de                                      ; $5aec: $19
	ld   a, h                                        ; $5aed: $7c
	dec  c                                           ; $5aee: $0d
	inc  bc                                          ; $5aef: $03
	ld   [de], a                                     ; $5af0: $12
	ld   [bc], a                                     ; $5af1: $02
	ld   h, e                                        ; $5af2: $63
	and  b                                           ; $5af3: $a0
	ld   [bc], a                                     ; $5af4: $02
	sub  l                                           ; $5af5: $95
	ld   l, c                                        ; $5af6: $69
	ld   [hl], h                                     ; $5af7: $74
	sub  b                                           ; $5af8: $90
	sub  a                                           ; $5af9: $97
	ld   e, b                                        ; $5afa: $58
	ld   d, h                                        ; $5afb: $54
	sbc  a                                           ; $5afc: $9f
	dec  c                                           ; $5afd: $0d
	nop                                              ; $5afe: $00
	ld   a, [bc]                                     ; $5aff: $0a
	ld   bc, $7d76                                   ; $5b00: $01 $76 $7d
	ld   d, d                                        ; $5b03: $52
	ld   [hl], c                                     ; $5b04: $71
	ld   [hl], h                                     ; $5b05: $74
	sub  b                                           ; $5b06: $90
	sbc  [hl]                                        ; $5b07: $9e
	inc  bc                                          ; $5b08: $03
	ld   d, a                                        ; $5b09: $57
	ld   [hl], h                                     ; $5b0a: $74
	ld   a, h                                        ; $5b0b: $7c
	inc  bc                                          ; $5b0c: $03
	ld   l, l                                        ; $5b0d: $6d
	dec  b                                           ; $5b0e: $05
	add  hl, de                                      ; $5b0f: $19
	ld   a, h                                        ; $5b10: $7c
	dec  c                                           ; $5b11: $0d
	inc  bc                                          ; $5b12: $03
	ld   [de], a                                     ; $5b13: $12
	ld   [bc], a                                     ; $5b14: $02
	ld   h, e                                        ; $5b15: $63
	and  b                                           ; $5b16: $a0
	ld   [bc], a                                     ; $5b17: $02
	sub  l                                           ; $5b18: $95
	ld   [hl], h                                     ; $5b19: $74
	ld   d, d                                        ; $5b1a: $52
	sbc  c                                           ; $5b1b: $99
	inc  bc                                          ; $5b1c: $03
	ld   l, a                                        ; $5b1d: $6f
	ld   [bc], a                                     ; $5b1e: $02
	xor  c                                           ; $5b1f: $a9
	ld   a, l                                        ; $5b20: $7d
	inc  b                                           ; $5b21: $04
	sub  $52                                         ; $5b22: $d6 $52
	sbc  a                                           ; $5b24: $9f
	dec  c                                           ; $5b25: $0d
	nop                                              ; $5b26: $00
	ld   a, [bc]                                     ; $5b27: $0a
	ld   bc, $e0ae                                   ; $5b28: $01 $ae $e0
	ld   e, d                                        ; $5b2b: $5a
	sbc  [hl]                                        ; $5b2c: $9e
	inc  bc                                          ; $5b2d: $03
	sub  h                                           ; $5b2e: $94
	inc  b                                           ; $5b2f: $04
	sbc  [hl]                                        ; $5b30: $9e
	ld   a, c                                        ; $5b31: $79
	ld   [bc], a                                     ; $5b32: $02
	jr   nz, jr_065_5b39                             ; $5b33: $20 $04

	ld   a, c                                        ; $5b35: $79
	ld   [bc], a                                     ; $5b36: $02
	ld   a, e                                        ; $5b37: $7b
	ld   [hl], c                                     ; $5b38: $71

jr_065_5b39:
	ld   [hl], h                                     ; $5b39: $74
	dec  c                                           ; $5b3a: $0d
	ld   d, d                                        ; $5b3b: $52
	sbc  c                                           ; $5b3c: $99
	halt                                             ; $5b3d: $76
	dec  b                                           ; $5b3e: $05
	pop  de                                          ; $5b3f: $d1
	ld   [hl], c                                     ; $5b40: $71
	ld   l, l                                        ; $5b41: $6d
	inc  bc                                          ; $5b42: $03
	ld   l, l                                        ; $5b43: $6d
	dec  b                                           ; $5b44: $05
	add  hl, de                                      ; $5b45: $19
	ld   a, h                                        ; $5b46: $7c
	rst  ToBoot                                         ; $5b47: $c7
	cp   d                                           ; $5b48: $ba
	ret                                              ; $5b49: $c9


	and  b                                           ; $5b4a: $a0
	dec  c                                           ; $5b4b: $0d
	ld   [bc], a                                     ; $5b4c: $02
	jr   nz, jr_065_5bc1                             ; $5b4d: $20 $72

	ld   l, [hl]                                     ; $5b4f: $6e
	ld   e, a                                        ; $5b50: $5f
	ld   [bc], a                                     ; $5b51: $02
	rst  $38                                         ; $5b52: $ff
	ld   e, a                                        ; $5b53: $5f
	ld   [hl], h                                     ; $5b54: $74
	sub  b                                           ; $5b55: $90
	sub  a                                           ; $5b56: $97
	ld   d, h                                        ; $5b57: $54
	sbc  a                                           ; $5b58: $9f
	dec  c                                           ; $5b59: $0d
	nop                                              ; $5b5a: $00
	ld   a, [bc]                                     ; $5b5b: $0a
	ld   bc, $7c77                                   ; $5b5c: $01 $77 $7c
	inc  b                                           ; $5b5f: $04
	ld   a, [bc]                                     ; $5b60: $0a
	ld   [bc], a                                     ; $5b61: $02
	nop                                              ; $5b62: $00
	halt                                             ; $5b63: $76
	ld   a, h                                        ; $5b64: $7c
	inc  bc                                          ; $5b65: $03
	ld   l, l                                        ; $5b66: $6d
	dec  b                                           ; $5b67: $05
	add  hl, de                                      ; $5b68: $19
	ld   e, d                                        ; $5b69: $5a
	dec  c                                           ; $5b6a: $0d
	ld   [bc], a                                     ; $5b6b: $02
	jr   nz, jr_065_5b72                             ; $5b6c: $20 $04

	ld   a, c                                        ; $5b6e: $79
	inc  bc                                          ; $5b6f: $03
	sub  h                                           ; $5b70: $94
	inc  b                                           ; $5b71: $04

jr_065_5b72:
	sbc  [hl]                                        ; $5b72: $9e
	ld   a, c                                        ; $5b73: $79
	ld   [bc], a                                     ; $5b74: $02
	ld   a, e                                        ; $5b75: $7b
	ld   [hl], c                                     ; $5b76: $71
	ld   [hl], h                                     ; $5b77: $74
	ld   d, d                                        ; $5b78: $52
	ld   l, l                                        ; $5b79: $6d
	ld   e, c                                        ; $5b7a: $59
	rst  $38                                         ; $5b7b: $ff
	rst  $38                                         ; $5b7c: $ff
	dec  c                                           ; $5b7d: $0d
	sub  [hl]                                        ; $5b7e: $96
	ld   e, l                                        ; $5b7f: $5d
	ld   [bc], a                                     ; $5b80: $02
	ld   h, l                                        ; $5b81: $65
	ld   d, [hl]                                     ; $5b82: $56
	ld   [hl], h                                     ; $5b83: $74
	ld   d, [hl]                                     ; $5b84: $56
	sub  a                                           ; $5b85: $97
	and  c                                           ; $5b86: $a1
	ld   [hl], l                                     ; $5b87: $75
	ld   e, l                                        ; $5b88: $5d
	sbc  d                                           ; $5b89: $9a
	sbc  a                                           ; $5b8a: $9f
	dec  c                                           ; $5b8b: $0d
	nop                                              ; $5b8c: $00
	ld   a, [bc]                                     ; $5b8d: $0a
	jr   jr_065_5b93                                 ; $5b8e: $18 $03

	ld   bc, $5d63                                   ; $5b90: $01 $63 $5d

jr_065_5b93:
	sub  a                                           ; $5b93: $97
	halt                                             ; $5b94: $76
	ld   a, h                                        ; $5b95: $7c
	inc  bc                                          ; $5b96: $03
	ld   l, l                                        ; $5b97: $6d
	dec  b                                           ; $5b98: $05
	add  hl, de                                      ; $5b99: $19
	nop                                              ; $5b9a: $00
	nop                                              ; $5b9b: $00
	ld   h, a                                        ; $5b9c: $67
	adc  l                                           ; $5b9d: $8d
	sbc  d                                           ; $5b9e: $9a
	halt                                             ; $5b9f: $76
	ld   a, h                                        ; $5ba0: $7c
	inc  bc                                          ; $5ba1: $03
	ld   l, l                                        ; $5ba2: $6d
	dec  b                                           ; $5ba3: $05
	add  hl, de                                      ; $5ba4: $19
	nop                                              ; $5ba5: $00
	ld   bc, $7c6b                                   ; $5ba6: $01 $6b $7c
	inc  b                                           ; $5ba9: $04
	ld   e, $7c                                      ; $5baa: $1e $7c
	inc  bc                                          ; $5bac: $03
	add  d                                           ; $5bad: $82
	halt                                             ; $5bae: $76
	ld   a, h                                        ; $5baf: $7c
	inc  bc                                          ; $5bb0: $03
	ld   l, l                                        ; $5bb1: $6d
	dec  b                                           ; $5bb2: $05
	add  hl, de                                      ; $5bb3: $19
	nop                                              ; $5bb4: $00
	ld   [bc], a                                     ; $5bb5: $02
	rlca                                             ; $5bb6: $07
	rst  $28                                         ; $5bb7: $ef
	ld   [$0202], sp                                 ; $5bb8: $08 $02 $02
	ld   bc, $2000                                   ; $5bbb: $01 $00 $20
	nop                                              ; $5bbe: $00
	rlca                                             ; $5bbf: $07
	rla                                              ; $5bc0: $17

jr_065_5bc1:
	ld   [bc], a                                     ; $5bc1: $02
	ld   [bc], a                                     ; $5bc2: $02
	ld   [bc], a                                     ; $5bc3: $02
	ld   bc, $2001                                   ; $5bc4: $01 $01 $20
	nop                                              ; $5bc7: $00
	rlca                                             ; $5bc8: $07
	adc  a                                           ; $5bc9: $8f
	ld   bc, $0202                                   ; $5bca: $01 $02 $02
	ld   bc, $2002                                   ; $5bcd: $01 $02 $20
	nop                                              ; $5bd0: $00
	jr   jr_065_5bd6                                 ; $5bd1: $18 $03

	ld   bc, $ecdf                                   ; $5bd3: $01 $df $ec

jr_065_5bd6:
	and  e                                           ; $5bd6: $a3
	halt                                             ; $5bd7: $76
	ld   a, h                                        ; $5bd8: $7c
	inc  bc                                          ; $5bd9: $03
	ld   l, l                                        ; $5bda: $6d
	dec  b                                           ; $5bdb: $05
	add  hl, de                                      ; $5bdc: $19
	nop                                              ; $5bdd: $00
	nop                                              ; $5bde: $00
	and  e                                           ; $5bdf: $a3
	and  l                                           ; $5be0: $a5
	db   $ec                                         ; $5be1: $ec
	cp   d                                           ; $5be2: $ba
	halt                                             ; $5be3: $76
	ld   a, h                                        ; $5be4: $7c
	inc  bc                                          ; $5be5: $03
	ld   l, l                                        ; $5be6: $6d
	dec  b                                           ; $5be7: $05
	add  hl, de                                      ; $5be8: $19
	nop                                              ; $5be9: $00
	ld   bc, $7c6b                                   ; $5bea: $01 $6b $7c
	inc  b                                           ; $5bed: $04
	ld   e, $7c                                      ; $5bee: $1e $7c
	inc  bc                                          ; $5bf0: $03
	add  d                                           ; $5bf1: $82
	halt                                             ; $5bf2: $76
	ld   a, h                                        ; $5bf3: $7c
	inc  bc                                          ; $5bf4: $03
	ld   l, l                                        ; $5bf5: $6d
	dec  b                                           ; $5bf6: $05
	add  hl, de                                      ; $5bf7: $19
	nop                                              ; $5bf8: $00
	ld   [bc], a                                     ; $5bf9: $02
	rlca                                             ; $5bfa: $07
	jr   c, @+$05                                    ; $5bfb: $38 $03

	ld   [bc], a                                     ; $5bfd: $02
	ld   [bc], a                                     ; $5bfe: $02
	ld   bc, $2000                                   ; $5bff: $01 $00 $20
	nop                                              ; $5c02: $00
	rlca                                             ; $5c03: $07
	ld   d, [hl]                                     ; $5c04: $56
	inc  b                                           ; $5c05: $04
	ld   [bc], a                                     ; $5c06: $02
	ld   [bc], a                                     ; $5c07: $02
	ld   bc, $2001                                   ; $5c08: $01 $01 $20
	nop                                              ; $5c0b: $00
	rlca                                             ; $5c0c: $07
	db   $d3                                         ; $5c0d: $d3
	ld   bc, $0202                                   ; $5c0e: $01 $02 $02
	ld   bc, $2002                                   ; $5c11: $01 $02 $20
	nop                                              ; $5c14: $00
	jr   jr_065_5c1a                                 ; $5c15: $18 $03

	ld   bc, $cf02                                   ; $5c17: $01 $02 $cf

jr_065_5c1a:
	dec  b                                           ; $5c1a: $05
	ld   a, [de]                                     ; $5c1b: $1a
	halt                                             ; $5c1c: $76
	ld   a, h                                        ; $5c1d: $7c
	inc  bc                                          ; $5c1e: $03
	ld   l, l                                        ; $5c1f: $6d
	dec  b                                           ; $5c20: $05
	add  hl, de                                      ; $5c21: $19
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	xor  h                                           ; $5c24: $ac
	push af                                          ; $5c25: $f5
	bit  6, [hl]                                     ; $5c26: $cb $76
	ld   a, h                                        ; $5c28: $7c
	inc  bc                                          ; $5c29: $03
	ld   l, l                                        ; $5c2a: $6d
	dec  b                                           ; $5c2b: $05
	add  hl, de                                      ; $5c2c: $19
	nop                                              ; $5c2d: $00
	ld   bc, $7c6b                                   ; $5c2e: $01 $6b $7c
	inc  b                                           ; $5c31: $04
	ld   e, $7c                                      ; $5c32: $1e $7c
	inc  bc                                          ; $5c34: $03
	add  d                                           ; $5c35: $82
	halt                                             ; $5c36: $76
	ld   a, h                                        ; $5c37: $7c
	inc  bc                                          ; $5c38: $03
	ld   l, l                                        ; $5c39: $6d
	dec  b                                           ; $5c3a: $05
	add  hl, de                                      ; $5c3b: $19
	nop                                              ; $5c3c: $00
	ld   [bc], a                                     ; $5c3d: $02
	rlca                                             ; $5c3e: $07
	adc  h                                           ; $5c3f: $8c
	dec  b                                           ; $5c40: $05
	ld   [bc], a                                     ; $5c41: $02
	ld   [bc], a                                     ; $5c42: $02
	ld   bc, $2000                                   ; $5c43: $01 $00 $20
	nop                                              ; $5c46: $00
	rlca                                             ; $5c47: $07
	sbc  a                                           ; $5c48: $9f
	rlca                                             ; $5c49: $07
	ld   [bc], a                                     ; $5c4a: $02
	ld   [bc], a                                     ; $5c4b: $02
	ld   bc, $2001                                   ; $5c4c: $01 $01 $20
	nop                                              ; $5c4f: $00
	rlca                                             ; $5c50: $07
	ld   c, h                                        ; $5c51: $4c
	ld   bc, $0202                                   ; $5c52: $01 $02 $02
	ld   bc, $2002                                   ; $5c55: $01 $02 $20
	nop                                              ; $5c58: $00
	inc  e                                           ; $5c59: $1c
	add  hl, bc                                      ; $5c5a: $09
	nop                                              ; $5c5b: $00
	nop                                              ; $5c5c: $00
	ld   bc, $8d67                                   ; $5c5d: $01 $67 $8d
	sbc  d                                           ; $5c60: $9a
	ld   e, l                                        ; $5c61: $5d
	and  c                                           ; $5c62: $a1
	ld   e, c                                        ; $5c63: $59
	rst  $38                                         ; $5c64: $ff
	rst  $38                                         ; $5c65: $ff
	sub  [hl]                                        ; $5c66: $96
	ld   h, l                                        ; $5c67: $65
	sbc  [hl]                                        ; $5c68: $9e
	dec  c                                           ; $5c69: $0d
	ld   l, e                                        ; $5c6a: $6b
	sbc  d                                           ; $5c6b: $9a
	ld   h, [hl]                                     ; $5c6c: $66
	sub  c                                           ; $5c6d: $91
	sbc  [hl]                                        ; $5c6e: $9e
	ld   h, a                                        ; $5c6f: $67
	adc  l                                           ; $5c70: $8d
	sbc  d                                           ; $5c71: $9a
	ld   e, l                                        ; $5c72: $5d
	and  c                                           ; $5c73: $a1
	sbc  a                                           ; $5c74: $9f
	dec  c                                           ; $5c75: $0d
	inc  b                                           ; $5c76: $04
	di                                               ; $5c77: $f3
	ld   [bc], a                                     ; $5c78: $02
	ld   b, $7d                                      ; $5c79: $06 $7d
	ld   d, d                                        ; $5c7b: $52
	ld   d, d                                        ; $5c7c: $52
	ld   e, c                                        ; $5c7d: $59
	ld   d, d                                        ; $5c7e: $52
	ld   sp, hl                                      ; $5c7f: $f9
	dec  c                                           ; $5c80: $0d
	nop                                              ; $5c81: $00
	ld   a, [bc]                                     ; $5c82: $0a
	inc  e                                           ; $5c83: $1c
	ld   [bc], a                                     ; $5c84: $02
	nop                                              ; $5c85: $00
	nop                                              ; $5c86: $00
	ld   bc, $527d                                   ; $5c87: $01 $7d $52
	sbc  [hl]                                        ; $5c8a: $9e
	inc  bc                                          ; $5c8b: $03
	ld   l, h                                        ; $5c8c: $6c
	dec  b                                           ; $5c8d: $05
	ld   h, $ff                                      ; $5c8e: $26 $ff
	sbc  a                                           ; $5c90: $9f
	dec  c                                           ; $5c91: $0d
	nop                                              ; $5c92: $00
	ld   a, [bc]                                     ; $5c93: $0a
	inc  e                                           ; $5c94: $1c
	ld   [bc], a                                     ; $5c95: $02
	ld   [bc], a                                     ; $5c96: $02
	ld   [bc], a                                     ; $5c97: $02
	ld   bc, $7d75                                   ; $5c98: $01 $75 $7d
	sbc  [hl]                                        ; $5c9b: $9e
	ld   [$6300], sp                                 ; $5c9c: $08 $00 $63
	and  c                                           ; $5c9f: $a1
	sbc  a                                           ; $5ca0: $9f
	dec  c                                           ; $5ca1: $0d
	inc  bc                                          ; $5ca2: $03
	inc  e                                           ; $5ca3: $1c
	inc  b                                           ; $5ca4: $04
	ld   d, e                                        ; $5ca5: $53
	ld   a, l                                        ; $5ca6: $7d
	sub  [hl]                                        ; $5ca7: $96
	sbc  e                                           ; $5ca8: $9b
	ld   h, l                                        ; $5ca9: $65
	ld   d, d                                        ; $5caa: $52
	ld   [hl], l                                     ; $5cab: $75
	ld   h, a                                        ; $5cac: $67
	sbc  l                                           ; $5cad: $9d
	ld   a, e                                        ; $5cae: $7b
	ld   sp, hl                                      ; $5caf: $f9
	dec  c                                           ; $5cb0: $0d
	dec  b                                           ; $5cb1: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cb2: $cf
	adc  a                                           ; $5cb3: $8f
	adc  h                                           ; $5cb4: $8c
	ld   h, a                                        ; $5cb5: $67
	sbc  l                                           ; $5cb6: $9d
	sub  [hl]                                        ; $5cb7: $96
	ld   a, [$000d]                                  ; $5cb8: $fa $0d $00
	ld   a, [bc]                                     ; $5cbb: $0a
	dec  c                                           ; $5cbc: $0d
	nop                                              ; $5cbd: $00
	nop                                              ; $5cbe: $00
	rrca                                             ; $5cbf: $0f
	nop                                              ; $5cc0: $00
	ld   bc, $021a                                   ; $5cc1: $01 $1a $02
	rlca                                             ; $5cc4: $07
	adc  [hl]                                        ; $5cc5: $8e
	ld   [bc], a                                     ; $5cc6: $02
	ld   [bc], a                                     ; $5cc7: $02
	inc  b                                           ; $5cc8: $04
	ld   bc, $2002                                   ; $5cc9: $01 $02 $20
	nop                                              ; $5ccc: $00
	ld   b, $db                                      ; $5ccd: $06 $db
	ld   [bc], a                                     ; $5ccf: $02
	inc  de                                          ; $5cd0: $13
	ld   c, $1c                                      ; $5cd1: $0e $1c
	ld   [bc], a                                     ; $5cd3: $02
	ld   bc, $1d01                                   ; $5cd4: $01 $01 $1d
	ld   b, b                                        ; $5cd7: $40
	ld   [de], a                                     ; $5cd8: $12
	inc  bc                                          ; $5cd9: $03
	ld   [de], a                                     ; $5cda: $12
	ld   bc, $2803                                   ; $5cdb: $01 $03 $28
	nop                                              ; $5cde: $00
	ld   bc, $7e67                                   ; $5cdf: $01 $67 $7e
	sub  a                                           ; $5ce2: $97
	ld   h, l                                        ; $5ce3: $65
	ld   d, d                                        ; $5ce4: $52
	inc  bc                                          ; $5ce5: $03
	ld   h, l                                        ; $5ce6: $65
	inc  bc                                          ; $5ce7: $03
	rst  $30                                         ; $5ce8: $f7
	add  h                                           ; $5ce9: $84
	sbc  b                                           ; $5cea: $98
	ld   [hl], l                                     ; $5ceb: $75
	ld   h, a                                        ; $5cec: $67
	sbc  l                                           ; $5ced: $9d
	sbc  a                                           ; $5cee: $9f
	dec  c                                           ; $5cef: $0d
	nop                                              ; $5cf0: $00
	dec  b                                           ; $5cf1: $05
	ld   b, b                                        ; $5cf2: $40
	ld   h, b                                        ; $5cf3: $60
	inc  bc                                          ; $5cf4: $03
	ld   h, b                                        ; $5cf5: $60
	ld   bc, $2801                                   ; $5cf6: $01 $01 $28
	nop                                              ; $5cf9: $00
	ld   bc, $6d03                                   ; $5cfa: $01 $03 $6d
	dec  b                                           ; $5cfd: $05
	add  hl, de                                      ; $5cfe: $19
	and  b                                           ; $5cff: $a0
	ld   e, d                                        ; $5d00: $5a
	and  c                                           ; $5d01: $a1
	ld   a, [hl]                                     ; $5d02: $7e
	ld   [hl], c                                     ; $5d03: $71
	ld   l, l                                        ; $5d04: $6d
	inc  bc                                          ; $5d05: $03
	ld   [de], a                                     ; $5d06: $12
	ld   [bc], a                                     ; $5d07: $02
	ld   h, e                                        ; $5d08: $63
	dec  c                                           ; $5d09: $0d
	ld   [hl], l                                     ; $5d0a: $75
	ld   h, a                                        ; $5d0b: $67
	sbc  l                                           ; $5d0c: $9d
	ld   a, e                                        ; $5d0d: $7b
	sbc  a                                           ; $5d0e: $9f
	dec  c                                           ; $5d0f: $0d
	nop                                              ; $5d10: $00
	ld   a, [bc]                                     ; $5d11: $0a
	dec  c                                           ; $5d12: $0d
	nop                                              ; $5d13: $00
	nop                                              ; $5d14: $00
	rrca                                             ; $5d15: $0f
	nop                                              ; $5d16: $00
	ld   bc, $1e09                                   ; $5d17: $01 $09 $1e
	ld   b, $0b                                      ; $5d1a: $06 $0b
	inc  bc                                          ; $5d1c: $03
	inc  de                                          ; $5d1d: $13
	ld   c, $1c                                      ; $5d1e: $0e $1c
	ld   [bc], a                                     ; $5d20: $02
	dec  b                                           ; $5d21: $05
	dec  b                                           ; $5d22: $05
	ld   bc, $ffff                                   ; $5d23: $01 $ff $ff
	rst  $38                                         ; $5d26: $ff
	dec  c                                           ; $5d27: $0d
	adc  h                                           ; $5d28: $8c
	ld   l, [hl]                                     ; $5d29: $6e
	adc  h                                           ; $5d2a: $8c
	ld   l, [hl]                                     ; $5d2b: $6e
	sbc  [hl]                                        ; $5d2c: $9e
	inc  bc                                          ; $5d2d: $03
	db   $d3                                         ; $5d2e: $d3
	dec  b                                           ; $5d2f: $05
	ld   a, [bc]                                     ; $5d30: $0a
	ld   e, d                                        ; $5d31: $5a
	inc  bc                                          ; $5d32: $03
	ld   a, l                                        ; $5d33: $7d
	sbc  b                                           ; $5d34: $98
	ld   a, b                                        ; $5d35: $78
	ld   d, d                                        ; $5d36: $52
	dec  c                                           ; $5d37: $0d
	sub  [hl]                                        ; $5d38: $96
	ld   d, h                                        ; $5d39: $54
	ld   [hl], l                                     ; $5d3a: $75
	ld   h, a                                        ; $5d3b: $67
	sbc  l                                           ; $5d3c: $9d
	ld   a, e                                        ; $5d3d: $7b
	sbc  a                                           ; $5d3e: $9f
	dec  c                                           ; $5d3f: $0d
	nop                                              ; $5d40: $00
	ld   a, [bc]                                     ; $5d41: $0a
	dec  c                                           ; $5d42: $0d
	nop                                              ; $5d43: $00
	nop                                              ; $5d44: $00
	rrca                                             ; $5d45: $0f
	nop                                              ; $5d46: $00
	ld   bc, $1e09                                   ; $5d47: $01 $09 $1e
	ld   b, $0b                                      ; $5d4a: $06 $0b
	inc  bc                                          ; $5d4c: $03
	inc  e                                           ; $5d4d: $1c
	add  hl, bc                                      ; $5d4e: $09
	ld   [bc], a                                     ; $5d4f: $02
	ld   [bc], a                                     ; $5d50: $02
	ld   bc, $6596                                   ; $5d51: $01 $96 $65
	rst  $38                                         ; $5d54: $ff
	rst  $38                                         ; $5d55: $ff
	ld   [hl], l                                     ; $5d56: $75
	ld   a, l                                        ; $5d57: $7d
	inc  bc                                          ; $5d58: $03
	ld   l, b                                        ; $5d59: $68
	ld   a, c                                        ; $5d5a: $79
	dec  c                                           ; $5d5b: $0d
	ld   b, $a5                                      ; $5d5c: $06 $a5
	ld   b, $a6                                      ; $5d5e: $06 $a6
	inc  bc                                          ; $5d60: $03
	xor  b                                           ; $5d61: $a8
	dec  b                                           ; $5d62: $05
	rst  $38                                         ; $5d63: $ff
	ld   [hl], l                                     ; $5d64: $75
	ld   a, h                                        ; $5d65: $7c
	inc  bc                                          ; $5d66: $03
	ld   l, c                                        ; $5d67: $69
	inc  bc                                          ; $5d68: $03
	ld   a, [hl]                                     ; $5d69: $7e
	rst  ToBoot                                         ; $5d6a: $c7
	cp   d                                           ; $5d6b: $ba
	ret                                              ; $5d6c: $c9


	and  b                                           ; $5d6d: $a0
	dec  c                                           ; $5d6e: $0d
	ld   e, b                                        ; $5d6f: $58
	ld   h, c                                        ; $5d70: $61
	ld   a, b                                        ; $5d71: $78
	ld   d, h                                        ; $5d72: $54
	ld   a, [$000d]                                  ; $5d73: $fa $0d $00
	ld   a, [bc]                                     ; $5d76: $0a
	ld   b, $18                                      ; $5d77: $06 $18
	ld   a, [bc]                                     ; $5d79: $0a
	inc  e                                           ; $5d7a: $1c
	add  hl, bc                                      ; $5d7b: $09
	nop                                              ; $5d7c: $00
	nop                                              ; $5d7d: $00
	ld   bc, $ecdf                                   ; $5d7e: $01 $df $ec
	and  e                                           ; $5d81: $a3
	ld   e, c                                        ; $5d82: $59
	rst  $38                                         ; $5d83: $ff
	rst  $38                                         ; $5d84: $ff
	sub  [hl]                                        ; $5d85: $96
	ld   h, l                                        ; $5d86: $65
	sbc  [hl]                                        ; $5d87: $9e
	dec  c                                           ; $5d88: $0d
	ld   l, e                                        ; $5d89: $6b
	sbc  d                                           ; $5d8a: $9a
	ld   h, [hl]                                     ; $5d8b: $66
	sub  c                                           ; $5d8c: $91
	sbc  [hl]                                        ; $5d8d: $9e
	rst  JumpTable                                         ; $5d8e: $df
	db   $ec                                         ; $5d8f: $ec
	and  e                                           ; $5d90: $a3
	sbc  a                                           ; $5d91: $9f
	dec  c                                           ; $5d92: $0d
	inc  b                                           ; $5d93: $04
	di                                               ; $5d94: $f3
	ld   [bc], a                                     ; $5d95: $02
	ld   b, $7d                                      ; $5d96: $06 $7d
	ld   d, d                                        ; $5d98: $52
	ld   d, d                                        ; $5d99: $52
	ld   e, c                                        ; $5d9a: $59
	ld   d, d                                        ; $5d9b: $52
	ld   sp, hl                                      ; $5d9c: $f9
	dec  c                                           ; $5d9d: $0d
	nop                                              ; $5d9e: $00
	ld   a, [bc]                                     ; $5d9f: $0a
	inc  e                                           ; $5da0: $1c
	inc  bc                                          ; $5da1: $03
	nop                                              ; $5da2: $00
	nop                                              ; $5da3: $00
	ld   bc, $7567                                   ; $5da4: $01 $67 $75
	ld   a, c                                        ; $5da7: $79
	sbc  [hl]                                        ; $5da8: $9e
	cp   d                                           ; $5da9: $ba
	ret  nz                                          ; $5daa: $c0

	push af                                          ; $5dab: $f5
	pop  de                                          ; $5dac: $d1
	and  l                                           ; $5dad: $a5
	ld   h, l                                        ; $5dae: $65
	ld   [hl], h                                     ; $5daf: $74
	adc  h                                           ; $5db0: $8c
	ld   h, a                                        ; $5db1: $67
	sbc  a                                           ; $5db2: $9f
	dec  c                                           ; $5db3: $0d
	inc  bc                                          ; $5db4: $03
	inc  e                                           ; $5db5: $1c
	inc  b                                           ; $5db6: $04
	ld   d, e                                        ; $5db7: $53
	ld   a, l                                        ; $5db8: $7d
	ld   d, d                                        ; $5db9: $52
	ld   d, d                                        ; $5dba: $52
	sbc  l                                           ; $5dbb: $9d
	ld   a, e                                        ; $5dbc: $7b
	ld   sp, hl                                      ; $5dbd: $f9
	dec  c                                           ; $5dbe: $0d
	ld   [$5d00], sp                                 ; $5dbf: $08 $00 $5d
	and  c                                           ; $5dc2: $a1
	sbc  a                                           ; $5dc3: $9f
	dec  c                                           ; $5dc4: $0d
	nop                                              ; $5dc5: $00
	ld   a, [bc]                                     ; $5dc6: $0a
	inc  e                                           ; $5dc7: $1c
	inc  bc                                          ; $5dc8: $03
	ld   [bc], a                                     ; $5dc9: $02
	ld   [bc], a                                     ; $5dca: $02
	ld   bc, $9166                                   ; $5dcb: $01 $66 $91
	sbc  [hl]                                        ; $5dce: $9e
	dec  b                                           ; $5dcf: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dd0: $cf
	adc  a                                           ; $5dd1: $8f
	sbc  c                                           ; $5dd2: $99
	sbc  l                                           ; $5dd3: $9d
	sub  [hl]                                        ; $5dd4: $96
	sbc  a                                           ; $5dd5: $9f
	dec  c                                           ; $5dd6: $0d
	nop                                              ; $5dd7: $00
	ld   a, [bc]                                     ; $5dd8: $0a
	dec  c                                           ; $5dd9: $0d
	nop                                              ; $5dda: $00
	nop                                              ; $5ddb: $00
	rrca                                             ; $5ddc: $0f
	nop                                              ; $5ddd: $00
	ld   bc, $031a                                   ; $5dde: $01 $1a $03
	rlca                                             ; $5de1: $07
	xor  e                                           ; $5de2: $ab
	inc  bc                                          ; $5de3: $03
	ld   [bc], a                                     ; $5de4: $02
	inc  b                                           ; $5de5: $04
	ld   bc, $2002                                   ; $5de6: $01 $02 $20
	nop                                              ; $5de9: $00
	ld   b, $fc                                      ; $5dea: $06 $fc
	inc  bc                                          ; $5dec: $03
	inc  de                                          ; $5ded: $13
	ld   c, $1c                                      ; $5dee: $0e $1c
	inc  bc                                          ; $5df0: $03
	inc  bc                                          ; $5df1: $03
	inc  bc                                          ; $5df2: $03
	dec  e                                           ; $5df3: $1d
	ld   b, b                                        ; $5df4: $40
	inc  de                                          ; $5df5: $13
	inc  bc                                          ; $5df6: $03
	inc  de                                          ; $5df7: $13
	ld   bc, $2803                                   ; $5df8: $01 $03 $28
	nop                                              ; $5dfb: $00
	ld   bc, $7e67                                   ; $5dfc: $01 $67 $7e
	sub  a                                           ; $5dff: $97
	ld   h, l                                        ; $5e00: $65
	ld   d, d                                        ; $5e01: $52
	sbc  l                                           ; $5e02: $9d
	sbc  a                                           ; $5e03: $9f
	dec  c                                           ; $5e04: $0d
	nop                                              ; $5e05: $00
	dec  b                                           ; $5e06: $05
	ld   b, b                                        ; $5e07: $40
	ld   h, b                                        ; $5e08: $60
	inc  bc                                          ; $5e09: $03
	ld   h, b                                        ; $5e0a: $60
	ld   bc, $2801                                   ; $5e0b: $01 $01 $28
	nop                                              ; $5e0e: $00
	ld   bc, $2703                                   ; $5e0f: $01 $03 $27
	ld   [bc], a                                     ; $5e12: $02
	sub  c                                           ; $5e13: $91
	ld   a, c                                        ; $5e14: $79
	ld   [bc], a                                     ; $5e15: $02
	ld   c, d                                        ; $5e16: $4a
	ld   h, l                                        ; $5e17: $65
	ld   [hl], h                                     ; $5e18: $74
	ld   a, l                                        ; $5e19: $7d
	sbc  [hl]                                        ; $5e1a: $9e
	sub  b                                           ; $5e1b: $90
	ld   d, h                                        ; $5e1c: $54
	dec  b                                           ; $5e1d: $05
	cp   h                                           ; $5e1e: $bc
	inc  b                                           ; $5e1f: $04
	sbc  [hl]                                        ; $5e20: $9e
	dec  c                                           ; $5e21: $0d
	inc  bc                                          ; $5e22: $03
	adc  e                                           ; $5e23: $8b
	inc  bc                                          ; $5e24: $03
	xor  b                                           ; $5e25: $a8
	ld   [hl], l                                     ; $5e26: $75
	inc  bc                                          ; $5e27: $03
	pop  hl                                          ; $5e28: $e1
	inc  b                                           ; $5e29: $04
	di                                               ; $5e2a: $f3
	ld   h, a                                        ; $5e2b: $67
	sbc  c                                           ; $5e2c: $99
	sbc  l                                           ; $5e2d: $9d
	ld   a, e                                        ; $5e2e: $7b
	sbc  a                                           ; $5e2f: $9f
	dec  c                                           ; $5e30: $0d
	nop                                              ; $5e31: $00
	ld   a, [bc]                                     ; $5e32: $0a
	dec  c                                           ; $5e33: $0d
	nop                                              ; $5e34: $00
	nop                                              ; $5e35: $00
	rrca                                             ; $5e36: $0f
	nop                                              ; $5e37: $00
	ld   bc, $1e09                                   ; $5e38: $01 $09 $1e
	ld   b, $29                                      ; $5e3b: $06 $29
	inc  b                                           ; $5e3d: $04
	inc  de                                          ; $5e3e: $13
	ld   c, $1c                                      ; $5e3f: $0e $1c
	inc  bc                                          ; $5e41: $03
	inc  b                                           ; $5e42: $04
	inc  b                                           ; $5e43: $04
	ld   bc, $ffff                                   ; $5e44: $01 $ff $ff
	rst  $38                                         ; $5e47: $ff
	dec  c                                           ; $5e48: $0d
	adc  h                                           ; $5e49: $8c
	ld   l, [hl]                                     ; $5e4a: $6e
	adc  h                                           ; $5e4b: $8c
	ld   l, [hl]                                     ; $5e4c: $6e
	sbc  [hl]                                        ; $5e4d: $9e
	inc  bc                                          ; $5e4e: $03
	db   $d3                                         ; $5e4f: $d3
	dec  b                                           ; $5e50: $05
	ld   a, [bc]                                     ; $5e51: $0a
	ld   e, d                                        ; $5e52: $5a
	inc  bc                                          ; $5e53: $03
	ld   a, l                                        ; $5e54: $7d
	sbc  b                                           ; $5e55: $98
	ld   a, b                                        ; $5e56: $78
	ld   d, d                                        ; $5e57: $52
	dec  c                                           ; $5e58: $0d
	sub  [hl]                                        ; $5e59: $96
	ld   d, h                                        ; $5e5a: $54
	ld   a, e                                        ; $5e5b: $7b
	sbc  a                                           ; $5e5c: $9f
	dec  c                                           ; $5e5d: $0d
	nop                                              ; $5e5e: $00
	ld   a, [bc]                                     ; $5e5f: $0a
	dec  c                                           ; $5e60: $0d
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	rrca                                             ; $5e63: $0f
	nop                                              ; $5e64: $00
	ld   bc, $1e09                                   ; $5e65: $01 $09 $1e
	ld   b, $29                                      ; $5e68: $06 $29
	inc  b                                           ; $5e6a: $04
	inc  e                                           ; $5e6b: $1c
	add  hl, bc                                      ; $5e6c: $09
	ld   [bc], a                                     ; $5e6d: $02
	ld   [bc], a                                     ; $5e6e: $02
	ld   bc, $6596                                   ; $5e6f: $01 $96 $65
	rst  $38                                         ; $5e72: $ff
	rst  $38                                         ; $5e73: $ff
	ld   [hl], l                                     ; $5e74: $75
	ld   a, l                                        ; $5e75: $7d
	inc  bc                                          ; $5e76: $03
	ld   l, b                                        ; $5e77: $68
	ld   a, c                                        ; $5e78: $79
	dec  c                                           ; $5e79: $0d
	ld   b, $a5                                      ; $5e7a: $06 $a5
	ld   b, $a6                                      ; $5e7c: $06 $a6
	inc  bc                                          ; $5e7e: $03
	xor  b                                           ; $5e7f: $a8
	dec  b                                           ; $5e80: $05
	rst  $38                                         ; $5e81: $ff
	ld   [hl], l                                     ; $5e82: $75
	ld   a, h                                        ; $5e83: $7c
	inc  bc                                          ; $5e84: $03
	ld   l, c                                        ; $5e85: $69
	inc  bc                                          ; $5e86: $03
	ld   a, [hl]                                     ; $5e87: $7e
	rst  ToBoot                                         ; $5e88: $c7
	cp   d                                           ; $5e89: $ba
	ret                                              ; $5e8a: $c9


	and  b                                           ; $5e8b: $a0
	dec  c                                           ; $5e8c: $0d
	ld   e, b                                        ; $5e8d: $58
	ld   h, c                                        ; $5e8e: $61
	ld   a, b                                        ; $5e8f: $78
	ld   d, h                                        ; $5e90: $54
	ld   a, [$000d]                                  ; $5e91: $fa $0d $00
	ld   a, [bc]                                     ; $5e94: $0a
	ld   b, $18                                      ; $5e95: $06 $18
	ld   a, [bc]                                     ; $5e97: $0a
	inc  e                                           ; $5e98: $1c
	add  hl, bc                                      ; $5e99: $09
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	ld   bc, $a5a3                                   ; $5e9c: $01 $a3 $a5
	db   $ec                                         ; $5e9f: $ec
	cp   d                                           ; $5ea0: $ba
	ld   e, c                                        ; $5ea1: $59
	rst  $38                                         ; $5ea2: $ff
	rst  $38                                         ; $5ea3: $ff
	sub  [hl]                                        ; $5ea4: $96
	ld   h, l                                        ; $5ea5: $65
	sbc  [hl]                                        ; $5ea6: $9e
	dec  c                                           ; $5ea7: $0d
	ld   l, e                                        ; $5ea8: $6b
	sbc  d                                           ; $5ea9: $9a
	ld   h, [hl]                                     ; $5eaa: $66
	sub  c                                           ; $5eab: $91
	sbc  [hl]                                        ; $5eac: $9e
	and  e                                           ; $5ead: $a3
	and  l                                           ; $5eae: $a5
	db   $ec                                         ; $5eaf: $ec
	cp   d                                           ; $5eb0: $ba
	sbc  a                                           ; $5eb1: $9f
	dec  c                                           ; $5eb2: $0d
	inc  b                                           ; $5eb3: $04
	di                                               ; $5eb4: $f3
	ld   [bc], a                                     ; $5eb5: $02
	ld   b, $7d                                      ; $5eb6: $06 $7d
	ld   d, d                                        ; $5eb8: $52
	ld   d, d                                        ; $5eb9: $52
	ld   e, c                                        ; $5eba: $59
	ld   d, d                                        ; $5ebb: $52
	ld   sp, hl                                      ; $5ebc: $f9
	dec  c                                           ; $5ebd: $0d
	nop                                              ; $5ebe: $00
	ld   a, [bc]                                     ; $5ebf: $0a
	inc  e                                           ; $5ec0: $1c
	inc  b                                           ; $5ec1: $04
	ld   bc, $0101                                   ; $5ec2: $01 $01 $01
	ld   d, h                                        ; $5ec5: $54
	and  c                                           ; $5ec6: $a1
	sbc  [hl]                                        ; $5ec7: $9e
	ld   d, d                                        ; $5ec8: $52
	ld   d, d                                        ; $5ec9: $52
	sub  [hl]                                        ; $5eca: $96
	sbc  a                                           ; $5ecb: $9f
	dec  c                                           ; $5ecc: $0d
	ld   e, b                                        ; $5ecd: $58
	ld   [bc], a                                     ; $5ece: $02
	inc  de                                          ; $5ecf: $13
	ld   l, a                                        ; $5ed0: $6f
	sub  c                                           ; $5ed1: $91
	and  c                                           ; $5ed2: $a1
	sbc  a                                           ; $5ed3: $9f
	dec  c                                           ; $5ed4: $0d
	nop                                              ; $5ed5: $00
	ld   a, [bc]                                     ; $5ed6: $0a
	inc  e                                           ; $5ed7: $1c
	inc  b                                           ; $5ed8: $04
	nop                                              ; $5ed9: $00
	nop                                              ; $5eda: $00
	ld   bc, $526f                                   ; $5edb: $01 $6f $52
	ld   [bc], a                                     ; $5ede: $02
	inc  de                                          ; $5edf: $13
	ld   l, a                                        ; $5ee0: $6f
	sub  c                                           ; $5ee1: $91
	and  c                                           ; $5ee2: $a1
	sbc  [hl]                                        ; $5ee3: $9e
	dec  c                                           ; $5ee4: $0d
	ld   h, [hl]                                     ; $5ee5: $66
	sub  e                                           ; $5ee6: $93
	and  c                                           ; $5ee7: $a1
	add  c                                           ; $5ee8: $81
	ld   a, l                                        ; $5ee9: $7d
	ld   d, d                                        ; $5eea: $52
	ld   d, d                                        ; $5eeb: $52
	ld   sp, hl                                      ; $5eec: $f9
	dec  c                                           ; $5eed: $0d
	ld   l, e                                        ; $5eee: $6b
	sbc  d                                           ; $5eef: $9a
	ld   h, [hl]                                     ; $5ef0: $66
	sub  c                                           ; $5ef1: $91
	sbc  [hl]                                        ; $5ef2: $9e
	ld   a, l                                        ; $5ef3: $7d
	ld   h, [hl]                                     ; $5ef4: $66
	adc  a                                           ; $5ef5: $8f
	sbc  c                                           ; $5ef6: $99
	sub  [hl]                                        ; $5ef7: $96
	ei                                               ; $5ef8: $fb
	ld   a, [$000d]                                  ; $5ef9: $fa $0d $00
	ld   a, [bc]                                     ; $5efc: $0a
	dec  c                                           ; $5efd: $0d
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	rrca                                             ; $5f00: $0f
	nop                                              ; $5f01: $00
	ld   bc, $041a                                   ; $5f02: $01 $1a $04
	rlca                                             ; $5f05: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f06: $cf
	inc  b                                           ; $5f07: $04
	ld   [bc], a                                     ; $5f08: $02
	inc  b                                           ; $5f09: $04
	ld   bc, $2002                                   ; $5f0a: $01 $02 $20
	nop                                              ; $5f0d: $00
	ld   b, $2f                                      ; $5f0e: $06 $2f
	dec  b                                           ; $5f10: $05
	inc  de                                          ; $5f11: $13
	ld   c, $1c                                      ; $5f12: $0e $1c
	inc  b                                           ; $5f14: $04
	ld   b, $06                                      ; $5f15: $06 $06
	dec  e                                           ; $5f17: $1d
	ld   b, b                                        ; $5f18: $40
	inc  d                                           ; $5f19: $14
	inc  bc                                          ; $5f1a: $03
	inc  d                                           ; $5f1b: $14
	ld   bc, $2803                                   ; $5f1c: $01 $03 $28
	nop                                              ; $5f1f: $00
	ld   bc, $7167                                   ; $5f20: $01 $67 $71
	ld   h, d                                        ; $5f23: $62
	ei                                               ; $5f24: $fb
	ld   d, d                                        ; $5f25: $52
	ld   a, [$0dfa]                                  ; $5f26: $fa $fa $0d
	nop                                              ; $5f29: $00
	dec  b                                           ; $5f2a: $05
	ld   b, b                                        ; $5f2b: $40
	ld   h, b                                        ; $5f2c: $60
	inc  bc                                          ; $5f2d: $03
	ld   h, b                                        ; $5f2e: $60
	ld   bc, $2801                                   ; $5f2f: $01 $01 $28
	nop                                              ; $5f32: $00
	ld   bc, $526f                                   ; $5f33: $01 $6f $52
	ld   [bc], a                                     ; $5f36: $02
	inc  de                                          ; $5f37: $13
	ld   l, a                                        ; $5f38: $6f
	sub  c                                           ; $5f39: $91
	and  c                                           ; $5f3a: $a1
	ld   a, [$0dfa]                                  ; $5f3b: $fa $fa $0d
	nop                                              ; $5f3e: $00
	ld   a, [bc]                                     ; $5f3f: $0a
	inc  e                                           ; $5f40: $1c
	inc  b                                           ; $5f41: $04
	ld   bc, $0101                                   ; $5f42: $01 $01 $01
	sbc  d                                           ; $5f45: $9a
	ld   d, d                                        ; $5f46: $52
	sbc  b                                           ; $5f47: $98
	sub  l                                           ; $5f48: $95
	ld   e, l                                        ; $5f49: $5d
	ld   a, h                                        ; $5f4a: $7c
	ld   [hl], d                                     ; $5f4b: $72
	ld   e, c                                        ; $5f4c: $59
	ld   d, d                                        ; $5f4d: $52
	ld   e, c                                        ; $5f4e: $59
	ld   l, l                                        ; $5f4f: $6d
	sbc  [hl]                                        ; $5f50: $9e
	dec  c                                           ; $5f51: $0d
	ld   h, a                                        ; $5f52: $67
	ld   [hl], c                                     ; $5f53: $71
	ld   h, d                                        ; $5f54: $62
	ld   e, l                                        ; $5f55: $5d
	ld   h, [hl]                                     ; $5f56: $66
	sub  l                                           ; $5f57: $95
	ld   d, h                                        ; $5f58: $54
	ld   l, b                                        ; $5f59: $68
	ld   a, c                                        ; $5f5a: $79
	dec  c                                           ; $5f5b: $0d
	ld   a, b                                        ; $5f5c: $78
	ld   [hl], c                                     ; $5f5d: $71
	ld   l, l                                        ; $5f5e: $6d
	ld   a, e                                        ; $5f5f: $7b
	ei                                               ; $5f60: $fb
	ld   a, [$0dfa]                                  ; $5f61: $fa $fa $0d
	nop                                              ; $5f64: $00
	ld   a, [bc]                                     ; $5f65: $0a
	dec  c                                           ; $5f66: $0d
	nop                                              ; $5f67: $00
	nop                                              ; $5f68: $00
	rrca                                             ; $5f69: $0f
	nop                                              ; $5f6a: $00
	ld   bc, $1e09                                   ; $5f6b: $01 $09 $1e
	ld   b, $5f                                      ; $5f6e: $06 $5f
	dec  b                                           ; $5f70: $05
	inc  de                                          ; $5f71: $13

Jump_065_5f72:
	ld   c, $1c                                      ; $5f72: $0e $1c
	inc  b                                           ; $5f74: $04
	inc  bc                                          ; $5f75: $03
	inc  bc                                          ; $5f76: $03
	ld   bc, $fc54                                   ; $5f77: $01 $54 $fc
	and  c                                           ; $5f7a: $a1
	rst  $38                                         ; $5f7b: $ff
	rst  $38                                         ; $5f7c: $ff
	dec  c                                           ; $5f7d: $0d
	sub  b                                           ; $5f7e: $90
	ld   d, h                                        ; $5f7f: $54
	ld   l, a                                        ; $5f80: $6f
	sub  l                                           ; $5f81: $95
	ld   [hl], c                                     ; $5f82: $71
	halt                                             ; $5f83: $76
	ld   l, [hl]                                     ; $5f84: $6e
	ld   [hl], c                                     ; $5f85: $71
	ld   l, l                                        ; $5f86: $6d
	ld   a, h                                        ; $5f87: $7c
	ld   a, c                                        ; $5f88: $79
	ld   a, e                                        ; $5f89: $7b
	dec  c                                           ; $5f8a: $0d
	ld   l, a                                        ; $5f8b: $6f
	ld   d, d                                        ; $5f8c: $52
	ld   [bc], a                                     ; $5f8d: $02
	inc  de                                          ; $5f8e: $13
	ld   l, a                                        ; $5f8f: $6f
	sub  c                                           ; $5f90: $91
	and  c                                           ; $5f91: $a1
	sbc  a                                           ; $5f92: $9f
	dec  c                                           ; $5f93: $0d
	nop                                              ; $5f94: $00
	ld   a, [bc]                                     ; $5f95: $0a
	dec  c                                           ; $5f96: $0d
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	rrca                                             ; $5f99: $0f
	nop                                              ; $5f9a: $00
	ld   bc, $1e09                                   ; $5f9b: $01 $09 $1e
	ld   b, $5f                                      ; $5f9e: $06 $5f
	dec  b                                           ; $5fa0: $05
	inc  e                                           ; $5fa1: $1c
	add  hl, bc                                      ; $5fa2: $09
	ld   [bc], a                                     ; $5fa3: $02
	ld   [bc], a                                     ; $5fa4: $02
	ld   bc, $6596                                   ; $5fa5: $01 $96 $65
	rst  $38                                         ; $5fa8: $ff
	rst  $38                                         ; $5fa9: $ff
	ld   [hl], l                                     ; $5faa: $75
	ld   a, l                                        ; $5fab: $7d
	inc  bc                                          ; $5fac: $03
	ld   l, b                                        ; $5fad: $68
	ld   a, c                                        ; $5fae: $79
	dec  c                                           ; $5faf: $0d
	ld   b, $a5                                      ; $5fb0: $06 $a5
	ld   b, $a6                                      ; $5fb2: $06 $a6
	inc  bc                                          ; $5fb4: $03
	xor  b                                           ; $5fb5: $a8
	dec  b                                           ; $5fb6: $05
	rst  $38                                         ; $5fb7: $ff
	ld   [hl], l                                     ; $5fb8: $75
	ld   a, h                                        ; $5fb9: $7c
	inc  bc                                          ; $5fba: $03
	ld   l, c                                        ; $5fbb: $69
	inc  bc                                          ; $5fbc: $03
	ld   a, [hl]                                     ; $5fbd: $7e
	rst  ToBoot                                         ; $5fbe: $c7
	cp   d                                           ; $5fbf: $ba
	ret                                              ; $5fc0: $c9


	and  b                                           ; $5fc1: $a0
	dec  c                                           ; $5fc2: $0d
	ld   e, b                                        ; $5fc3: $58
	ld   h, c                                        ; $5fc4: $61
	ld   a, b                                        ; $5fc5: $78
	ld   d, h                                        ; $5fc6: $54
	ld   a, [$000d]                                  ; $5fc7: $fa $0d $00
	ld   a, [bc]                                     ; $5fca: $0a
	ld   b, $18                                      ; $5fcb: $06 $18
	ld   a, [bc]                                     ; $5fcd: $0a
	inc  e                                           ; $5fce: $1c
	add  hl, bc                                      ; $5fcf: $09
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	ld   bc, $cf02                                   ; $5fd2: $01 $02 $cf
	dec  b                                           ; $5fd5: $05
	ld   a, [de]                                     ; $5fd6: $1a
	ld   e, c                                        ; $5fd7: $59
	rst  $38                                         ; $5fd8: $ff
	rst  $38                                         ; $5fd9: $ff
	sub  [hl]                                        ; $5fda: $96
	ld   h, l                                        ; $5fdb: $65
	sbc  [hl]                                        ; $5fdc: $9e
	dec  c                                           ; $5fdd: $0d
	ld   l, e                                        ; $5fde: $6b
	sbc  d                                           ; $5fdf: $9a
	ld   h, [hl]                                     ; $5fe0: $66
	sub  c                                           ; $5fe1: $91
	sbc  [hl]                                        ; $5fe2: $9e
	ld   [bc], a                                     ; $5fe3: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fe4: $cf
	dec  b                                           ; $5fe5: $05
	ld   a, [de]                                     ; $5fe6: $1a
	sbc  a                                           ; $5fe7: $9f
	dec  c                                           ; $5fe8: $0d
	inc  b                                           ; $5fe9: $04
	di                                               ; $5fea: $f3
	ld   [bc], a                                     ; $5feb: $02
	ld   b, $7d                                      ; $5fec: $06 $7d
	ld   d, d                                        ; $5fee: $52
	ld   d, d                                        ; $5fef: $52
	ld   e, c                                        ; $5ff0: $59
	ld   d, d                                        ; $5ff1: $52
	ld   sp, hl                                      ; $5ff2: $f9
	dec  c                                           ; $5ff3: $0d
	nop                                              ; $5ff4: $00
	ld   a, [bc]                                     ; $5ff5: $0a
	ld   bc, $ffff                                   ; $5ff6: $01 $ff $ff
	ld   [bc], a                                     ; $5ff9: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ffa: $cf
	dec  b                                           ; $5ffb: $05
	ld   a, [de]                                     ; $5ffc: $1a
	ld   sp, hl                                      ; $5ffd: $f9
	dec  c                                           ; $5ffe: $0d
	nop                                              ; $5fff: $00
	ld   a, [bc]                                     ; $6000: $0a
	inc  c                                           ; $6001: $0c
	add  hl, bc                                      ; $6002: $09
	inc  c                                           ; $6003: $0c
	inc  b                                           ; $6004: $04
	inc  e                                           ; $6005: $1c
	add  hl, bc                                      ; $6006: $09
	ld   b, $0b                                      ; $6007: $06 $0b
	ld   bc, $719d                                   ; $6009: $01 $9d $71
	rst  $38                                         ; $600c: $ff
	rst  $38                                         ; $600d: $ff
	ld   a, [$10fa]                                  ; $600e: $fa $fa $10
	ld   a, b                                        ; $6011: $78
	and  c                                           ; $6012: $a1
	ld   l, [hl]                                     ; $6013: $6e
	ld   a, [$0df9]                                  ; $6014: $fa $f9 $0d
	nop                                              ; $6017: $00
	ld   a, [bc]                                     ; $6018: $0a
	inc  c                                           ; $6019: $0c
	add  hl, bc                                      ; $601a: $09
	add  hl, bc                                      ; $601b: $09
	ld   e, $01                                      ; $601c: $1e $01
	inc  bc                                          ; $601e: $03
	db   $dd                                         ; $601f: $dd
	ld   b, $48                                      ; $6020: $06 $48
	ld   e, c                                        ; $6022: $59
	ld   a, [$0df9]                                  ; $6023: $fa $f9 $0d
	nop                                              ; $6026: $00
	ld   a, [bc]                                     ; $6027: $0a
	inc  e                                           ; $6028: $1c
	dec  b                                           ; $6029: $05
	jr   nz, jr_065_6034                             ; $602a: $20 $08

	ld   bc, $ffff                                   ; $602c: $01 $ff $ff
	rst  $38                                         ; $602f: $ff
	rst  $38                                         ; $6030: $ff
	ld   d, b                                        ; $6031: $50
	db   $fc                                         ; $6032: $fc
	inc  b                                           ; $6033: $04

jr_065_6034:
	ld   c, $03                                      ; $6034: $0e $03
	sub  b                                           ; $6036: $90
	ld   a, l                                        ; $6037: $7d
	and  c                                           ; $6038: $a1
	sbc  a                                           ; $6039: $9f
	dec  c                                           ; $603a: $0d
	inc  b                                           ; $603b: $04
	ld   c, $03                                      ; $603c: $0e $03
	sbc  l                                           ; $603e: $9d
	inc  b                                           ; $603f: $04
	and  [hl]                                        ; $6040: $a6
	sub  d                                           ; $6041: $92
	sbc  [hl]                                        ; $6042: $9e
	ld   [bc], a                                     ; $6043: $02
	and  l                                           ; $6044: $a5
	ld   a, h                                        ; $6045: $7c
	ld   a, l                                        ; $6046: $7d
	inc  bc                                          ; $6047: $03
	db   $dd                                         ; $6048: $dd
	ld   b, $48                                      ; $6049: $06 $48
	sub  d                                           ; $604b: $92
	ld   a, b                                        ; $604c: $78
	ld   d, d                                        ; $604d: $52
	dec  c                                           ; $604e: $0d
	rst  $38                                         ; $604f: $ff
	rst  $38                                         ; $6050: $ff
	or   e                                           ; $6051: $b3
	call c, $ffff                                    ; $6052: $dc $ff $ff
	dec  c                                           ; $6055: $0d
	nop                                              ; $6056: $00
	ld   a, [bc]                                     ; $6057: $0a
	ld   bc, $956f                                   ; $6058: $01 $6f $95
	db   $fc                                         ; $605b: $fc
	ld   [hl], c                                     ; $605c: $71
	halt                                             ; $605d: $76
	rst  ToBoot                                         ; $605e: $c7
	cp   d                                           ; $605f: $ba
	ret                                              ; $6060: $c9


	ld   a, h                                        ; $6061: $7c
	inc  bc                                          ; $6062: $03
	inc  e                                           ; $6063: $1c
	inc  b                                           ; $6064: $04
	ld   d, e                                        ; $6065: $53
	ld   h, l                                        ; $6066: $65
	ld   [hl], h                                     ; $6067: $74
	ld   [hl], h                                     ; $6068: $74
	dec  c                                           ; $6069: $0d
	inc  bc                                          ; $606a: $03
	add  e                                           ; $606b: $83
	inc  b                                           ; $606c: $04
	sbc  b                                           ; $606d: $98
	ld   h, l                                        ; $606e: $65
	ld   l, l                                        ; $606f: $6d
	ld   l, [hl]                                     ; $6070: $6e
	ld   e, a                                        ; $6071: $5f
	sub  d                                           ; $6072: $92
	rst  $38                                         ; $6073: $ff
	rst  $38                                         ; $6074: $ff
	rst  $38                                         ; $6075: $ff
	dec  c                                           ; $6076: $0d
	nop                                              ; $6077: $00
	ld   a, [bc]                                     ; $6078: $0a
	dec  c                                           ; $6079: $0d
	nop                                              ; $607a: $00
	nop                                              ; $607b: $00
	add  hl, bc                                      ; $607c: $09
	ld   e, $1c                                      ; $607d: $1e $1c
	dec  b                                           ; $607f: $05
	dec  b                                           ; $6080: $05
	dec  b                                           ; $6081: $05
	ld   bc, $c4d0                                   ; $6082: $01 $d0 $c4
	ld   a, [$0dfa]                                  ; $6085: $fa $fa $0d
	adc  c                                           ; $6088: $89
	ld   a, b                                        ; $6089: $78
	sbc  [hl]                                        ; $608a: $9e
	ld   a, l                                        ; $608b: $7d
	ld   h, [hl]                                     ; $608c: $66
	adc  a                                           ; $608d: $8f
	sub  [hl]                                        ; $608e: $96
	ld   e, c                                        ; $608f: $59
	rst  $38                                         ; $6090: $ff
	rst  $38                                         ; $6091: $ff
	dec  c                                           ; $6092: $0d
	nop                                              ; $6093: $00
	ld   a, [bc]                                     ; $6094: $0a
	rrca                                             ; $6095: $0f
	add  hl, bc                                      ; $6096: $09
	inc  b                                           ; $6097: $04
	ld   bc, $0301                                   ; $6098: $01 $01 $03
	rst  $38                                         ; $609b: $ff
	rst  $38                                         ; $609c: $ff
	call c, $c9f5                                    ; $609d: $dc $f5 $c9
	ld   a, c                                        ; $60a0: $79
	inc  b                                           ; $60a1: $04
	ld   c, $03                                      ; $60a2: $0e $03
	sbc  l                                           ; $60a4: $9d
	inc  b                                           ; $60a5: $04
	and  [hl]                                        ; $60a6: $a6
	dec  c                                           ; $60a7: $0d
	db   $10                                         ; $60a8: $10
	ld   a, b                                        ; $60a9: $78
	ld   a, h                                        ; $60aa: $7c
	ld   e, c                                        ; $60ab: $59
	rst  $38                                         ; $60ac: $ff
	rst  $38                                         ; $60ad: $ff
	rst  $38                                         ; $60ae: $ff
	rst  $38                                         ; $60af: $ff
	ld   sp, hl                                      ; $60b0: $f9
	ld   bc, $0d04                                   ; $60b1: $01 $04 $0d
	nop                                              ; $60b4: $00
	ld   a, [bc]                                     ; $60b5: $0a
	rrca                                             ; $60b6: $0f
	add  hl, bc                                      ; $60b7: $09
	nop                                              ; $60b8: $00
	ld   bc, $76ff                                   ; $60b9: $01 $ff $76
	sbc  [hl]                                        ; $60bc: $9e
	halt                                             ; $60bd: $76
	ld   d, d                                        ; $60be: $52
	ld   d, h                                        ; $60bf: $54
	ld   h, c                                        ; $60c0: $61
	halt                                             ; $60c1: $76
	ld   [hl], l                                     ; $60c2: $75
	dec  c                                           ; $60c3: $0d
	dec  b                                           ; $60c4: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c5: $cf
	adc  a                                           ; $60c6: $8f
	ld   [hl], h                                     ; $60c7: $74
	ld   e, l                                        ; $60c8: $5d
	sbc  d                                           ; $60c9: $9a
	sbc  [hl]                                        ; $60ca: $9e
	ld   [$5d00], sp                                 ; $60cb: $08 $00 $5d
	and  c                                           ; $60ce: $a1
	sbc  a                                           ; $60cf: $9f
	dec  c                                           ; $60d0: $0d
	nop                                              ; $60d1: $00
	ld   a, [bc]                                     ; $60d2: $0a
	rrca                                             ; $60d3: $0f
	nop                                              ; $60d4: $00
	ld   bc, $7d01                                   ; $60d5: $01 $01 $7d
	rst  $38                                         ; $60d8: $ff
	rst  $38                                         ; $60d9: $ff
	ld   a, l                                        ; $60da: $7d
	ld   d, d                                        ; $60db: $52
	rst  $38                                         ; $60dc: $ff
	rst  $38                                         ; $60dd: $ff
	dec  c                                           ; $60de: $0d
	nop                                              ; $60df: $00
	ld   a, [bc]                                     ; $60e0: $0a
	dec  c                                           ; $60e1: $0d
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	ld   a, [de]                                     ; $60e4: $1a
	dec  b                                           ; $60e5: $05
	rlca                                             ; $60e6: $07
	or   b                                           ; $60e7: $b0
	ld   b, $02                                      ; $60e8: $06 $02
	inc  b                                           ; $60ea: $04
	ld   bc, $2002                                   ; $60eb: $01 $02 $20
	nop                                              ; $60ee: $00
	ld   b, $1a                                      ; $60ef: $06 $1a
	rlca                                             ; $60f1: $07
	inc  de                                          ; $60f2: $13
	ld   c, $1c                                      ; $60f3: $0e $1c
	dec  b                                           ; $60f5: $05
	ld   bc, $1d01                                   ; $60f6: $01 $01 $1d
	ld   b, b                                        ; $60f9: $40
	dec  d                                           ; $60fa: $15
	inc  bc                                          ; $60fb: $03
	dec  d                                           ; $60fc: $15
	ld   bc, $2803                                   ; $60fd: $01 $03 $28
	nop                                              ; $6100: $00
	ld   bc, $9252                                   ; $6101: $01 $52 $92
	ld   d, b                                        ; $6104: $50
	db   $fc                                         ; $6105: $fc
	sbc  [hl]                                        ; $6106: $9e
	ld   a, b                                        ; $6107: $78
	ld   e, c                                        ; $6108: $59
	ld   a, b                                        ; $6109: $78
	ld   e, c                                        ; $610a: $59
	dec  c                                           ; $610b: $0d
	nop                                              ; $610c: $00
	dec  b                                           ; $610d: $05
	ld   b, b                                        ; $610e: $40
	ld   h, b                                        ; $610f: $60
	inc  bc                                          ; $6110: $03
	ld   h, b                                        ; $6111: $60
	ld   bc, $2801                                   ; $6112: $01 $01 $28
	nop                                              ; $6115: $00
	ld   bc, $5656                                   ; $6116: $01 $56 $56
	cp   d                                           ; $6119: $ba
	jp   nc, Jump_065_63cb                           ; $611a: $d2 $cb $63

	ld   a, [hl]                                     ; $611d: $7e
	ld   e, e                                        ; $611e: $5b
	sub  d                                           ; $611f: $92
	ld   [hl], c                                     ; $6120: $71
	ld   l, l                                        ; $6121: $6d
	ld   [hl], l                                     ; $6122: $75
	sbc  [hl]                                        ; $6123: $9e
	dec  c                                           ; $6124: $0d
	ld   [$7d00], sp                                 ; $6125: $08 $00 $7d
	and  c                                           ; $6128: $a1
	sbc  a                                           ; $6129: $9f
	dec  c                                           ; $612a: $0d
	nop                                              ; $612b: $00
	ld   a, [bc]                                     ; $612c: $0a
	ld   bc, $9a61                                   ; $612d: $01 $61 $9a
	ld   a, b                                        ; $6130: $78
	sub  a                                           ; $6131: $97
	and  a                                           ; $6132: $a7
	jp   nz, Jump_065_7c97                           ; $6133: $c2 $97 $7c

	inc  bc                                          ; $6136: $03
	cp   c                                           ; $6137: $b9
	sbc  c                                           ; $6138: $99
	ld   [bc], a                                     ; $6139: $02
	jr   c, jr_065_6140                              ; $613a: $38 $04

	ld   d, d                                        ; $613c: $52
	ld   a, h                                        ; $613d: $7c
	dec  c                                           ; $613e: $0d
	inc  bc                                          ; $613f: $03

jr_065_6140:
	ld   a, h                                        ; $6140: $7c
	inc  b                                           ; $6141: $04
	ld   d, e                                        ; $6142: $53
	and  b                                           ; $6143: $a0
	adc  h                                           ; $6144: $8c
	ld   e, c                                        ; $6145: $59
	ld   l, c                                        ; $6146: $69
	ld   [hl], h                                     ; $6147: $74
	ld   d, [hl]                                     ; $6148: $56
	ld   d, [hl]                                     ; $6149: $56
	ld   e, c                                        ; $614a: $59
	sub  b                                           ; $614b: $90
	ld   a, b                                        ; $614c: $78
	sbc  a                                           ; $614d: $9f
	dec  c                                           ; $614e: $0d
	nop                                              ; $614f: $00
	ld   a, [bc]                                     ; $6150: $0a
	dec  c                                           ; $6151: $0d
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	rrca                                             ; $6154: $0f
	nop                                              ; $6155: $00
	ld   bc, $1e09                                   ; $6156: $01 $09 $1e
	ld   b, $4f                                      ; $6159: $06 $4f
	rlca                                             ; $615b: $07
	inc  de                                          ; $615c: $13
	ld   c, $1c                                      ; $615d: $0e $1c
	dec  b                                           ; $615f: $05
	ld   [bc], a                                     ; $6160: $02
	ld   [bc], a                                     ; $6161: $02
	ld   bc, $7150                                   ; $6162: $01 $50 $71
	ld   l, a                                        ; $6165: $6f
	sub  c                                           ; $6166: $91
	db   $fc                                         ; $6167: $fc
	sbc  [hl]                                        ; $6168: $9e
	adc  h                                           ; $6169: $8c
	ld   l, [hl]                                     ; $616a: $6e
	adc  h                                           ; $616b: $8c
	ld   l, [hl]                                     ; $616c: $6e
	inc  b                                           ; $616d: $04
	xor  [hl]                                        ; $616e: $ae
	ld   [bc], a                                     ; $616f: $02
	call nc, $0d5a                                   ; $6170: $d4 $5a $0d
	inc  b                                           ; $6173: $04
	adc  d                                           ; $6174: $8a
	inc  b                                           ; $6175: $04
	rst  JumpTable                                         ; $6176: $df
	ld   a, h                                        ; $6177: $7c
	sub  [hl]                                        ; $6178: $96
	ld   d, h                                        ; $6179: $54
	sub  d                                           ; $617a: $92
	ld   a, b                                        ; $617b: $78
	ld   c, a                                        ; $617c: $4f
	dec  c                                           ; $617d: $0d
	ld   [$7d00], sp                                 ; $617e: $08 $00 $7d
	and  c                                           ; $6181: $a1
	sbc  a                                           ; $6182: $9f
	dec  c                                           ; $6183: $0d
	nop                                              ; $6184: $00
	ld   a, [bc]                                     ; $6185: $0a
	dec  c                                           ; $6186: $0d
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	rrca                                             ; $6189: $0f
	nop                                              ; $618a: $00
	ld   bc, $1e09                                   ; $618b: $01 $09 $1e
	ld   b, $4f                                      ; $618e: $06 $4f
	rlca                                             ; $6190: $07
	inc  e                                           ; $6191: $1c
	add  hl, bc                                      ; $6192: $09
	ld   [bc], a                                     ; $6193: $02
	ld   [bc], a                                     ; $6194: $02
	ld   bc, $6596                                   ; $6195: $01 $96 $65
	sbc  [hl]                                        ; $6198: $9e
	ld   b, $0d                                      ; $6199: $06 $0d
	inc  b                                           ; $619b: $04
	ld   e, [hl]                                     ; $619c: $5e
	ld   a, b                                        ; $619d: $78

Jump_065_619e:
	ld   [hl], a                                     ; $619e: $77
	ld   e, b                                        ; $619f: $58
	ld   h, c                                        ; $61a0: $61
	sub  a                                           ; $61a1: $97
	ld   l, b                                        ; $61a2: $68
	sbc  [hl]                                        ; $61a3: $9e
	dec  c                                           ; $61a4: $0d
	inc  b                                           ; $61a5: $04
	sub  $02                                         ; $61a6: $d6 $02
	jp   $0475                                       ; $61a8: $c3 $75 $04


	ld   c, c                                        ; $61ab: $49
	sub  [hl]                                        ; $61ac: $96
	sbc  b                                           ; $61ad: $98
	ld   l, [hl]                                     ; $61ae: $6e
	ld   [hl], c                                     ; $61af: $71
	ld   l, l                                        ; $61b0: $6d
	ld   a, b                                        ; $61b1: $78
	rst  $38                                         ; $61b2: $ff
	rst  $38                                         ; $61b3: $ff
	dec  c                                           ; $61b4: $0d
	nop                                              ; $61b5: $00
	ld   a, [bc]                                     ; $61b6: $0a
	inc  e                                           ; $61b7: $1c
	add  hl, bc                                      ; $61b8: $09
	ld   [bc], a                                     ; $61b9: $02
	ld   [bc], a                                     ; $61ba: $02
	ld   bc, $7d75                                   ; $61bb: $01 $75 $7d
	inc  bc                                          ; $61be: $03
	ld   l, b                                        ; $61bf: $68
	ld   a, c                                        ; $61c0: $79
	sbc  [hl]                                        ; $61c1: $9e
	ld   b, $a5                                      ; $61c2: $06 $a5
	ld   b, $a6                                      ; $61c4: $06 $a6
	inc  bc                                          ; $61c6: $03
	xor  b                                           ; $61c7: $a8
	dec  b                                           ; $61c8: $05
	rst  $38                                         ; $61c9: $ff
	ld   [hl], l                                     ; $61ca: $75
	ld   a, h                                        ; $61cb: $7c
	dec  c                                           ; $61cc: $0d
	inc  bc                                          ; $61cd: $03
	ld   l, c                                        ; $61ce: $69
	inc  bc                                          ; $61cf: $03
	ld   a, [hl]                                     ; $61d0: $7e
	rst  ToBoot                                         ; $61d1: $c7
	cp   d                                           ; $61d2: $ba
	ret                                              ; $61d3: $c9


	and  b                                           ; $61d4: $a0
	ld   e, b                                        ; $61d5: $58
	ld   h, c                                        ; $61d6: $61
	ld   a, b                                        ; $61d7: $78
	ld   d, h                                        ; $61d8: $54
	ld   a, [$0dfa]                                  ; $61d9: $fa $fa $0d
	nop                                              ; $61dc: $00
	ld   a, [bc]                                     ; $61dd: $0a
	ld   b, $18                                      ; $61de: $06 $18
	ld   a, [bc]                                     ; $61e0: $0a
	inc  e                                           ; $61e1: $1c
	add  hl, bc                                      ; $61e2: $09
	nop                                              ; $61e3: $00
	nop                                              ; $61e4: $00
	ld   bc, $f5ac                                   ; $61e5: $01 $ac $f5
	bit  3, c                                        ; $61e8: $cb $59
	rst  $38                                         ; $61ea: $ff
	rst  $38                                         ; $61eb: $ff
	sub  [hl]                                        ; $61ec: $96
	ld   h, l                                        ; $61ed: $65
	sbc  [hl]                                        ; $61ee: $9e
	dec  c                                           ; $61ef: $0d
	ld   l, e                                        ; $61f0: $6b
	sbc  d                                           ; $61f1: $9a
	ld   h, [hl]                                     ; $61f2: $66
	sub  c                                           ; $61f3: $91
	sbc  [hl]                                        ; $61f4: $9e
	xor  h                                           ; $61f5: $ac
	push af                                          ; $61f6: $f5
	res  3, a                                        ; $61f7: $cb $9f
	dec  c                                           ; $61f9: $0d
	inc  b                                           ; $61fa: $04
	di                                               ; $61fb: $f3
	ld   [bc], a                                     ; $61fc: $02
	ld   b, $7d                                      ; $61fd: $06 $7d
	ld   d, d                                        ; $61ff: $52
	ld   d, d                                        ; $6200: $52
	ld   e, c                                        ; $6201: $59
	ld   d, d                                        ; $6202: $52
	ld   sp, hl                                      ; $6203: $f9
	dec  c                                           ; $6204: $0d
	nop                                              ; $6205: $00
	ld   a, [bc]                                     ; $6206: $0a
	inc  e                                           ; $6207: $1c
	ld   b, $01                                      ; $6208: $06 $01
	ld   bc, $5001                                   ; $620a: $01 $01 $50
	ld   d, d                                        ; $620d: $52
	sub  [hl]                                        ; $620e: $96
	ld   a, [$8c10]                                  ; $620f: $fa $10 $8c
	ld   [hl], c                                     ; $6212: $71
	ld   [hl], h                                     ; $6213: $74
	adc  h                                           ; $6214: $8c
	ld   h, l                                        ; $6215: $65
	ld   l, l                                        ; $6216: $6d
	sbc  a                                           ; $6217: $9f
	dec  c                                           ; $6218: $0d
	ld   d, b                                        ; $6219: $50
	ld   l, l                                        ; $621a: $6d
	ld   d, d                                        ; $621b: $52
	ld   a, b                                        ; $621c: $78
	sub  a                                           ; $621d: $97
	sbc  [hl]                                        ; $621e: $9e
	ld   d, d                                        ; $621f: $52
	ld   [hl], d                                     ; $6220: $72
	ld   [hl], l                                     ; $6221: $75
	sub  b                                           ; $6222: $90
	dec  c                                           ; $6223: $0d
	inc  bc                                          ; $6224: $03
	inc  e                                           ; $6225: $1c
	inc  b                                           ; $6226: $04
	ld   d, e                                        ; $6227: $53
	xor  e                                           ; $6228: $ab
	call nz, $fbb2                                   ; $6229: $c4 $b2 $fb
	ld   l, [hl]                                     ; $622c: $6e
	ld   l, d                                        ; $622d: $6a
	ld   a, [$0dfa]                                  ; $622e: $fa $fa $0d
	nop                                              ; $6231: $00
	ld   a, [bc]                                     ; $6232: $0a
	inc  e                                           ; $6233: $1c
	ld   b, $02                                      ; $6234: $06 $02
	ld   [bc], a                                     ; $6236: $02
	ld   bc, $a16b                                   ; $6237: $01 $6b $a1
	ld   h, [hl]                                     ; $623a: $66
	sub  c                                           ; $623b: $91
	ld   d, b                                        ; $623c: $50
	ld   [$9e00], sp                                 ; $623d: $08 $00 $9e
	dec  c                                           ; $6240: $0d
	ld   [bc], a                                     ; $6241: $02
	and  c                                           ; $6242: $a1
	ld   [bc], a                                     ; $6243: $02
	ld   a, e                                        ; $6244: $7b
	ld   d, d                                        ; $6245: $52
	inc  b                                           ; $6246: $04
	ld   b, l                                        ; $6247: $45
	sbc  d                                           ; $6248: $9a
	ld   [hl], h                                     ; $6249: $74
	ld   d, d                                        ; $624a: $52
	ld   e, l                                        ; $624b: $5d
	ld   l, d                                        ; $624c: $6a
	ld   a, [$0dfa]                                  ; $624d: $fa $fa $0d
	nop                                              ; $6250: $00
	ld   a, [bc]                                     ; $6251: $0a
	dec  c                                           ; $6252: $0d
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	rrca                                             ; $6255: $0f
	nop                                              ; $6256: $00
	ld   bc, $061a                                   ; $6257: $01 $1a $06
	rlca                                             ; $625a: $07
	inc  h                                           ; $625b: $24
	ld   [$0402], sp                                 ; $625c: $08 $02 $04
	ld   bc, $2002                                   ; $625f: $01 $02 $20
	nop                                              ; $6262: $00
	ld   b, $86                                      ; $6263: $06 $86
	ld   [$0e13], sp                                 ; $6265: $08 $13 $0e
	inc  e                                           ; $6268: $1c
	ld   b, $01                                      ; $6269: $06 $01
	ld   bc, $401d                                   ; $626b: $01 $1d $40
	ld   d, $03                                      ; $626e: $16 $03
	ld   d, $01                                      ; $6270: $16 $01
	inc  bc                                          ; $6272: $03
	jr   z, jr_065_6275                              ; $6273: $28 $00

jr_065_6275:
	ld   bc, $a154                                   ; $6275: $01 $54 $a1
	sbc  [hl]                                        ; $6278: $9e
	ld   a, b                                        ; $6279: $78
	ld   e, c                                        ; $627a: $59
	ld   a, b                                        ; $627b: $78
	ld   e, c                                        ; $627c: $59
	ld   [bc], a                                     ; $627d: $02
	and  c                                           ; $627e: $a1
	ld   [bc], a                                     ; $627f: $02
	ld   a, e                                        ; $6280: $7b
	ld   d, d                                        ; $6281: $52
	ld   a, h                                        ; $6282: $7c
	inc  b                                           ; $6283: $04
	ld   b, l                                        ; $6284: $45
	ld   [hl], c                                     ; $6285: $71
	ld   l, l                                        ; $6286: $6d
	dec  c                                           ; $6287: $0d
	nop                                              ; $6288: $00
	dec  b                                           ; $6289: $05
	ld   b, b                                        ; $628a: $40
	ld   h, b                                        ; $628b: $60
	inc  bc                                          ; $628c: $03
	ld   h, b                                        ; $628d: $60
	ld   bc, $2801                                   ; $628e: $01 $01 $28
	nop                                              ; $6291: $00
	ld   bc, $1f02                                   ; $6292: $01 $02 $1f
	inc  b                                           ; $6295: $04
	adc  [hl]                                        ; $6296: $8e
	ld   l, [hl]                                     ; $6297: $6e
	ld   [hl], c                                     ; $6298: $71
	ld   l, l                                        ; $6299: $6d
	ld   l, d                                        ; $629a: $6a
	ld   a, [$000d]                                  ; $629b: $fa $0d $00
	ld   a, [bc]                                     ; $629e: $0a
	inc  e                                           ; $629f: $1c
	ld   b, $07                                      ; $62a0: $06 $07
	rlca                                             ; $62a2: $07
	ld   bc, $7650                                   ; $62a3: $01 $50 $76
	ld   a, l                                        ; $62a6: $7d
	sbc  [hl]                                        ; $62a7: $9e
	sub  b                                           ; $62a8: $90
	ld   [hl], c                                     ; $62a9: $71
	halt                                             ; $62aa: $76
	db   $e3                                         ; $62ab: $e3
	cp   b                                           ; $62ac: $b8
	and  b                                           ; $62ad: $a0
	inc  bc                                          ; $62ae: $03
	ld   l, d                                        ; $62af: $6a
	ld   d, [hl]                                     ; $62b0: $56
	ld   a, [hl]                                     ; $62b1: $7e
	dec  c                                           ; $62b2: $0d
	xor  h                                           ; $62b3: $ac
	push af                                          ; $62b4: $f5
	db   $db                                         ; $62b5: $db
	xor  [hl]                                        ; $62b6: $ae
	ld   l, [hl]                                     ; $62b7: $6e
	ld   a, b                                        ; $62b8: $78
	sbc  a                                           ; $62b9: $9f
	dec  c                                           ; $62ba: $0d
	nop                                              ; $62bb: $00
	ld   a, [bc]                                     ; $62bc: $0a
	dec  c                                           ; $62bd: $0d
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	rrca                                             ; $62c0: $0f
	nop                                              ; $62c1: $00
	ld   bc, $1e09                                   ; $62c2: $01 $09 $1e
	ld   b, $c2                                      ; $62c5: $06 $c2
	ld   [$0e13], sp                                 ; $62c7: $08 $13 $0e
	inc  e                                           ; $62ca: $1c
	ld   b, $05                                      ; $62cb: $06 $05
	dec  b                                           ; $62cd: $05
	ld   bc, $fc54                                   ; $62ce: $01 $54 $fc
	and  c                                           ; $62d1: $a1
	rst  $38                                         ; $62d2: $ff
	rst  $38                                         ; $62d3: $ff
	ld   h, c                                        ; $62d4: $61
	sbc  d                                           ; $62d5: $9a
	ld   h, [hl]                                     ; $62d6: $66
	sub  c                                           ; $62d7: $91
	ld   d, b                                        ; $62d8: $50
	adc  h                                           ; $62d9: $8c
	ld   l, [hl]                                     ; $62da: $6e
	dec  c                                           ; $62db: $0d
	ld   [$7900], sp                                 ; $62dc: $08 $00 $79
	ld   a, l                                        ; $62df: $7d
	ld   d, b                                        ; $62e0: $50
	ld   l, l                                        ; $62e1: $6d
	ld   d, d                                        ; $62e2: $52
	ld   a, h                                        ; $62e3: $7c
	dec  b                                           ; $62e4: $05
	ld   d, e                                        ; $62e5: $53
	inc  b                                           ; $62e6: $04
	dec  bc                                          ; $62e7: $0b
	and  b                                           ; $62e8: $a0
	dec  c                                           ; $62e9: $0d
	adc  h                                           ; $62ea: $8c
	ld   e, c                                        ; $62eb: $59
	ld   l, c                                        ; $62ec: $69
	sub  a                                           ; $62ed: $97
	sbc  d                                           ; $62ee: $9a
	ld   a, e                                        ; $62ef: $7b
	ld   d, [hl]                                     ; $62f0: $56
	ld   a, b                                        ; $62f1: $78
	ld   d, b                                        ; $62f2: $50
	rst  $38                                         ; $62f3: $ff
	rst  $38                                         ; $62f4: $ff
	sbc  a                                           ; $62f5: $9f
	dec  c                                           ; $62f6: $0d
	nop                                              ; $62f7: $00
	ld   a, [bc]                                     ; $62f8: $0a
	dec  c                                           ; $62f9: $0d
	nop                                              ; $62fa: $00
	nop                                              ; $62fb: $00
	rrca                                             ; $62fc: $0f
	nop                                              ; $62fd: $00
	ld   bc, $1e09                                   ; $62fe: $01 $09 $1e
	ld   b, $c2                                      ; $6301: $06 $c2
	ld   [$091c], sp                                 ; $6303: $08 $1c $09
	ld   [bc], a                                     ; $6306: $02
	ld   [bc], a                                     ; $6307: $02
	ld   bc, $6596                                   ; $6308: $01 $96 $65
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	ld   [hl], l                                     ; $630d: $75
	ld   a, l                                        ; $630e: $7d
	inc  bc                                          ; $630f: $03
	ld   l, b                                        ; $6310: $68
	ld   a, c                                        ; $6311: $79
	dec  c                                           ; $6312: $0d
	ld   b, $a5                                      ; $6313: $06 $a5
	ld   b, $a6                                      ; $6315: $06 $a6
	inc  bc                                          ; $6317: $03
	xor  b                                           ; $6318: $a8
	dec  b                                           ; $6319: $05
	rst  $38                                         ; $631a: $ff
	ld   [hl], l                                     ; $631b: $75
	ld   a, h                                        ; $631c: $7c
	inc  bc                                          ; $631d: $03
	ld   l, c                                        ; $631e: $69
	inc  bc                                          ; $631f: $03
	ld   a, [hl]                                     ; $6320: $7e
	rst  ToBoot                                         ; $6321: $c7
	cp   d                                           ; $6322: $ba
	ret                                              ; $6323: $c9


	and  b                                           ; $6324: $a0
	dec  c                                           ; $6325: $0d
	ld   e, b                                        ; $6326: $58
	ld   h, c                                        ; $6327: $61
	ld   a, b                                        ; $6328: $78
	ld   d, h                                        ; $6329: $54
	ld   a, [$000d]                                  ; $632a: $fa $0d $00
	ld   a, [bc]                                     ; $632d: $0a
	ld   b, $18                                      ; $632e: $06 $18
	ld   a, [bc]                                     ; $6330: $0a
	inc  e                                           ; $6331: $1c
	add  hl, bc                                      ; $6332: $09
	nop                                              ; $6333: $00
	nop                                              ; $6334: $00
	ld   bc, $5d63                                   ; $6335: $01 $63 $5d
	sub  a                                           ; $6338: $97
	ld   e, l                                        ; $6339: $5d
	and  c                                           ; $633a: $a1
	ld   e, c                                        ; $633b: $59
	rst  $38                                         ; $633c: $ff
	rst  $38                                         ; $633d: $ff
	sub  [hl]                                        ; $633e: $96
	ld   h, l                                        ; $633f: $65
	sbc  [hl]                                        ; $6340: $9e
	dec  c                                           ; $6341: $0d
	ld   l, e                                        ; $6342: $6b
	sbc  d                                           ; $6343: $9a
	ld   h, [hl]                                     ; $6344: $66
	sub  c                                           ; $6345: $91
	sbc  [hl]                                        ; $6346: $9e
	ld   h, e                                        ; $6347: $63
	ld   e, l                                        ; $6348: $5d
	sub  a                                           ; $6349: $97
	ld   e, l                                        ; $634a: $5d
	and  c                                           ; $634b: $a1
	sbc  a                                           ; $634c: $9f
	dec  c                                           ; $634d: $0d
	inc  b                                           ; $634e: $04
	di                                               ; $634f: $f3
	ld   [bc], a                                     ; $6350: $02
	ld   b, $7d                                      ; $6351: $06 $7d
	ld   d, d                                        ; $6353: $52
	ld   d, d                                        ; $6354: $52
	ld   e, c                                        ; $6355: $59
	ld   d, d                                        ; $6356: $52
	ld   sp, hl                                      ; $6357: $f9
	dec  c                                           ; $6358: $0d
	nop                                              ; $6359: $00
	ld   a, [bc]                                     ; $635a: $0a
	inc  e                                           ; $635b: $1c
	ld   bc, $0000                                   ; $635c: $01 $00 $00
	ld   bc, $527d                                   ; $635f: $01 $7d $52
	ld   a, [$030d]                                  ; $6362: $fa $0d $03
	xor  l                                           ; $6365: $ad
	inc  b                                           ; $6366: $04
	ret                                              ; $6367: $c9


	ld   b, $60                                      ; $6368: $06 $60
	ld   h, e                                        ; $636a: $63
	ld   e, l                                        ; $636b: $5d
	sub  a                                           ; $636c: $97
	sbc  [hl]                                        ; $636d: $9e
	inc  bc                                          ; $636e: $03
	inc  e                                           ; $636f: $1c
	inc  b                                           ; $6370: $04
	ld   d, e                                        ; $6371: $53
	dec  b                                           ; $6372: $05
	and  b                                           ; $6373: $a0
	dec  b                                           ; $6374: $05
	nop                                              ; $6375: $00
	ld   [hl], l                                     ; $6376: $75
	ld   h, a                                        ; $6377: $67
	ld   a, [$000d]                                  ; $6378: $fa $0d $00
	ld   a, [bc]                                     ; $637b: $0a
	inc  e                                           ; $637c: $1c
	ld   bc, $0202                                   ; $637d: $01 $02 $02
	ld   bc, $0008                                   ; $6380: $01 $08 $00
	ld   h, e                                        ; $6383: $63
	and  c                                           ; $6384: $a1
	rst  $38                                         ; $6385: $ff
	rst  $38                                         ; $6386: $ff
	dec  c                                           ; $6387: $0d
	ld   e, d                                        ; $6388: $5a
	and  c                                           ; $6389: $a1
	ld   a, [hl]                                     ; $638a: $7e
	sbc  b                                           ; $638b: $98
	adc  h                                           ; $638c: $8c
	ld   h, l                                        ; $638d: $65
	sub  l                                           ; $638e: $95
	ld   d, h                                        ; $638f: $54
	ld   a, e                                        ; $6390: $7b
	sbc  a                                           ; $6391: $9f
	dec  c                                           ; $6392: $0d
	nop                                              ; $6393: $00
	ld   a, [bc]                                     ; $6394: $0a
	dec  c                                           ; $6395: $0d
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	rrca                                             ; $6398: $0f
	nop                                              ; $6399: $00
	ld   bc, $011a                                   ; $639a: $01 $1a $01
	rlca                                             ; $639d: $07
	ld   h, a                                        ; $639e: $67
	add  hl, bc                                      ; $639f: $09
	ld   [bc], a                                     ; $63a0: $02
	inc  b                                           ; $63a1: $04
	ld   bc, $2002                                   ; $63a2: $01 $02 $20
	nop                                              ; $63a5: $00
	ld   b, $ba                                      ; $63a6: $06 $ba
	add  hl, bc                                      ; $63a8: $09
	inc  de                                          ; $63a9: $13
	ld   c, $1c                                      ; $63aa: $0e $1c
	ld   bc, $0000                                   ; $63ac: $01 $00 $00
	dec  e                                           ; $63af: $1d
	ld   b, b                                        ; $63b0: $40
	ld   de, $1103                                   ; $63b1: $11 $03 $11
	ld   bc, $2803                                   ; $63b4: $01 $03 $28
	nop                                              ; $63b7: $00
	ld   bc, $6267                                   ; $63b8: $01 $67 $62
	ld   d, d                                        ; $63bb: $52
	ld   [hl], l                                     ; $63bc: $75
	ld   h, a                                        ; $63bd: $67
	sbc  [hl]                                        ; $63be: $9e
	ld   [$6300], sp                                 ; $63bf: $08 $00 $63
	and  c                                           ; $63c2: $a1
	ld   a, [$000d]                                  ; $63c3: $fa $0d $00
	dec  b                                           ; $63c6: $05
	ld   b, b                                        ; $63c7: $40
	ld   h, b                                        ; $63c8: $60
	inc  bc                                          ; $63c9: $03
	ld   h, b                                        ; $63ca: $60

Jump_065_63cb:
	ld   bc, $2801                                   ; $63cb: $01 $01 $28
	nop                                              ; $63ce: $00
	ld   bc, $ffff                                   ; $63cf: $01 $ff $ff
	ld   [bc], a                                     ; $63d2: $02
	and  l                                           ; $63d3: $a5
	ld   a, h                                        ; $63d4: $7c
	ld   [bc], a                                     ; $63d5: $02
	ld   a, b                                        ; $63d6: $78
	ld   b, $9f                                      ; $63d7: $06 $9f
	halt                                             ; $63d9: $76
	ld   [bc], a                                     ; $63da: $02
	xor  c                                           ; $63db: $a9
	ld   [bc], a                                     ; $63dc: $02
	ld   a, e                                        ; $63dd: $7b
	ld   d, d                                        ; $63de: $52
	rst  $38                                         ; $63df: $ff
	rst  $38                                         ; $63e0: $ff
	dec  c                                           ; $63e1: $0d
	inc  b                                           ; $63e2: $04
	and  e                                           ; $63e3: $a3
	sbc  d                                           ; $63e4: $9a
	ld   a, b                                        ; $63e5: $78
	ld   d, d                                        ; $63e6: $52
	ld   [hl], l                                     ; $63e7: $75
	ld   e, l                                        ; $63e8: $5d
	ld   l, [hl]                                     ; $63e9: $6e
	ld   h, e                                        ; $63ea: $63
	ld   d, d                                        ; $63eb: $52
	ld   a, e                                        ; $63ec: $7b
	sbc  a                                           ; $63ed: $9f
	dec  c                                           ; $63ee: $0d
	nop                                              ; $63ef: $00
	ld   a, [bc]                                     ; $63f0: $0a
	dec  c                                           ; $63f1: $0d
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	rrca                                             ; $63f4: $0f
	nop                                              ; $63f5: $00
	ld   bc, $1e09                                   ; $63f6: $01 $09 $1e
	ld   b, $eb                                      ; $63f9: $06 $eb
	add  hl, bc                                      ; $63fb: $09
	inc  de                                          ; $63fc: $13
	ld   c, $1c                                      ; $63fd: $0e $1c
	ld   bc, $0404                                   ; $63ff: $01 $04 $04
	ld   bc, $ffff                                   ; $6402: $01 $ff $ff
	rst  $38                                         ; $6405: $ff
	rst  $38                                         ; $6406: $ff
	rst  $38                                         ; $6407: $ff
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	dec  c                                           ; $640a: $0d
	adc  h                                           ; $640b: $8c
	ld   l, [hl]                                     ; $640c: $6e
	ld   [bc], a                                     ; $640d: $02
	cp   h                                           ; $640e: $bc
	ld   a, c                                        ; $640f: $79
	inc  b                                           ; $6410: $04
	cp   l                                           ; $6411: $bd
	ld   d, d                                        ; $6412: $52
	ld   e, d                                        ; $6413: $5a
	dec  c                                           ; $6414: $0d
	ld   d, b                                        ; $6415: $50
	sbc  c                                           ; $6416: $99
	sub  [hl]                                        ; $6417: $96
	ld   d, h                                        ; $6418: $54
	ld   [hl], l                                     ; $6419: $75
	ld   h, a                                        ; $641a: $67
	ld   a, e                                        ; $641b: $7b
	rst  $38                                         ; $641c: $ff
	rst  $38                                         ; $641d: $ff
	dec  c                                           ; $641e: $0d
	nop                                              ; $641f: $00
	ld   a, [bc]                                     ; $6420: $0a
	dec  c                                           ; $6421: $0d
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	rrca                                             ; $6424: $0f
	nop                                              ; $6425: $00
	ld   bc, $1e09                                   ; $6426: $01 $09 $1e
	ld   b, $eb                                      ; $6429: $06 $eb
	add  hl, bc                                      ; $642b: $09
	nop                                              ; $642c: $00
	inc  e                                           ; $642d: $1c
	add  hl, bc                                      ; $642e: $09
	ld   [bc], a                                     ; $642f: $02
	ld   [bc], a                                     ; $6430: $02
	ld   bc, $6596                                   ; $6431: $01 $96 $65
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	ld   [hl], l                                     ; $6436: $75
	ld   a, l                                        ; $6437: $7d
	inc  bc                                          ; $6438: $03
	ld   l, b                                        ; $6439: $68
	ld   a, c                                        ; $643a: $79
	dec  c                                           ; $643b: $0d
	ld   b, $a5                                      ; $643c: $06 $a5
	ld   b, $a6                                      ; $643e: $06 $a6
	inc  bc                                          ; $6440: $03
	xor  b                                           ; $6441: $a8
	dec  b                                           ; $6442: $05
	rst  $38                                         ; $6443: $ff
	ld   [hl], l                                     ; $6444: $75
	ld   a, h                                        ; $6445: $7c
	inc  bc                                          ; $6446: $03
	ld   l, c                                        ; $6447: $69
	inc  bc                                          ; $6448: $03
	ld   a, [hl]                                     ; $6449: $7e
	rst  ToBoot                                         ; $644a: $c7
	cp   d                                           ; $644b: $ba
	ret                                              ; $644c: $c9


	and  b                                           ; $644d: $a0
	dec  c                                           ; $644e: $0d
	ld   e, b                                        ; $644f: $58
	ld   h, c                                        ; $6450: $61
	ld   a, b                                        ; $6451: $78
	ld   d, h                                        ; $6452: $54
	ld   a, [$000d]                                  ; $6453: $fa $0d $00
	ld   a, [bc]                                     ; $6456: $0a
	ld   b, $18                                      ; $6457: $06 $18
	ld   a, [bc]                                     ; $6459: $0a
	ld   bc, $9a6b                                   ; $645a: $01 $6b $9a
	ld   h, [hl]                                     ; $645d: $66
	sub  c                                           ; $645e: $91
	sbc  [hl]                                        ; $645f: $9e
	dec  c                                           ; $6460: $0d
	ld   [bc], a                                     ; $6461: $02
	jr   c, jr_065_6468                              ; $6462: $38 $04

	ld   d, d                                        ; $6464: $52
	and  b                                           ; $6465: $a0
	ld   d, [hl]                                     ; $6466: $56
	sub  a                                           ; $6467: $97

jr_065_6468:
	and  c                                           ; $6468: $a1
	ld   [hl], l                                     ; $6469: $75
	ld   e, l                                        ; $646a: $5d
	sbc  d                                           ; $646b: $9a
	sbc  a                                           ; $646c: $9f
	dec  c                                           ; $646d: $0d
	nop                                              ; $646e: $00
	ld   a, [bc]                                     ; $646f: $0a
	dec  c                                           ; $6470: $0d
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	rrca                                             ; $6473: $0f
	nop                                              ; $6474: $00
	ld   bc, $1c28                                   ; $6475: $01 $28 $1c
	add  hl, bc                                      ; $6478: $09
	ld   [bc], a                                     ; $6479: $02
	ld   [bc], a                                     ; $647a: $02
	ld   bc, $7c61                                   ; $647b: $01 $61 $7c
	ld   [bc], a                                     ; $647e: $02
	jr   c, jr_065_6485                              ; $647f: $38 $04

	ld   d, d                                        ; $6481: $52
	ld   [hl], l                                     ; $6482: $75
	ld   d, d                                        ; $6483: $52
	ld   d, d                                        ; $6484: $52

jr_065_6485:
	and  c                                           ; $6485: $a1
	ld   l, [hl]                                     ; $6486: $6e
	ld   a, b                                        ; $6487: $78
	ld   sp, hl                                      ; $6488: $f9
	dec  c                                           ; $6489: $0d
	nop                                              ; $648a: $00
	ld   a, [bc]                                     ; $648b: $0a
	jr   jr_065_6490                                 ; $648c: $18 $02

	nop                                              ; $648e: $00
	ld   a, l                                        ; $648f: $7d

jr_065_6490:
	ld   d, d                                        ; $6490: $52
	nop                                              ; $6491: $00
	nop                                              ; $6492: $00
	ld   d, d                                        ; $6493: $52
	ld   d, d                                        ; $6494: $52
	ld   d, [hl]                                     ; $6495: $56
	nop                                              ; $6496: $00
	ld   bc, $6807                                   ; $6497: $01 $07 $68
	ld   a, [bc]                                     ; $649a: $0a
	ld   [bc], a                                     ; $649b: $02
	ld   [bc], a                                     ; $649c: $02
	ld   bc, $2000                                   ; $649d: $01 $00 $20
	nop                                              ; $64a0: $00
	rlca                                             ; $64a1: $07
	ld   l, $0a                                      ; $64a2: $2e $0a
	ld   [bc], a                                     ; $64a4: $02
	ld   [bc], a                                     ; $64a5: $02
	ld   bc, $2001                                   ; $64a6: $01 $01 $20
	nop                                              ; $64a9: $00
	inc  e                                           ; $64aa: $1c
	add  hl, bc                                      ; $64ab: $09
	ld   [bc], a                                     ; $64ac: $02
	ld   [bc], a                                     ; $64ad: $02
	ld   bc, $3802                                   ; $64ae: $01 $02 $38
	inc  b                                           ; $64b1: $04
	ld   d, d                                        ; $64b2: $52
	ld   e, d                                        ; $64b3: $5a
	ld   [bc], a                                     ; $64b4: $02
	add  e                                           ; $64b5: $83
	adc  h                                           ; $64b6: $8c
	ld   [hl], c                                     ; $64b7: $71
	ld   l, l                                        ; $64b8: $6d
	sub  [hl]                                        ; $64b9: $96
	ld   d, h                                        ; $64ba: $54
	ld   l, [hl]                                     ; $64bb: $6e
	ld   a, b                                        ; $64bc: $78
	sbc  a                                           ; $64bd: $9f
	dec  c                                           ; $64be: $0d
	ld   l, e                                        ; $64bf: $6b
	sbc  d                                           ; $64c0: $9a
	ld   h, [hl]                                     ; $64c1: $66
	sub  c                                           ; $64c2: $91
	sbc  [hl]                                        ; $64c3: $9e
	inc  bc                                          ; $64c4: $03
	ld   l, c                                        ; $64c5: $69
	ld   [bc], a                                     ; $64c6: $02
	xor  d                                           ; $64c7: $aa
	ld   a, h                                        ; $64c8: $7c
	ld   b, $a5                                      ; $64c9: $06 $a5
	ld   b, $a6                                      ; $64cb: $06 $a6
	inc  bc                                          ; $64cd: $03
	xor  b                                           ; $64ce: $a8
	ld   l, [hl]                                     ; $64cf: $6e
	sbc  a                                           ; $64d0: $9f
	dec  c                                           ; $64d1: $0d
	ld   [bc], a                                     ; $64d2: $02
	and  c                                           ; $64d3: $a1
	and  b                                           ; $64d4: $a0
	inc  b                                           ; $64d5: $04
	sub  h                                           ; $64d6: $94
	ld   e, l                                        ; $64d7: $5d
	ld   a, b                                        ; $64d8: $78
	sub  [hl]                                        ; $64d9: $96
	sbc  [hl]                                        ; $64da: $9e
	ld   d, d                                        ; $64db: $52
	ld   e, l                                        ; $64dc: $5d
	ld   l, h                                        ; $64dd: $6c
	ld   a, [$0dfa]                                  ; $64de: $fa $fa $0d
	nop                                              ; $64e1: $00
	ld   a, [bc]                                     ; $64e2: $0a
	dec  c                                           ; $64e3: $0d
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	rrca                                             ; $64e6: $0f
	nop                                              ; $64e7: $00
	ld   bc, $0527                                   ; $64e8: $01 $27 $05
	rlca                                             ; $64eb: $07
	or   d                                           ; $64ec: $b2
	ld   a, [bc]                                     ; $64ed: $0a
	ld   [bc], a                                     ; $64ee: $02
	inc  b                                           ; $64ef: $04
	nop                                              ; $64f0: $00
	ld   b, $eb                                      ; $64f1: $06 $eb
	ld   a, [bc]                                     ; $64f3: $0a
	inc  e                                           ; $64f4: $1c
	add  hl, bc                                      ; $64f5: $09
	ld   bc, $0101                                   ; $64f6: $01 $01 $01
	sub  d                                           ; $64f9: $92
	ld   [hl], c                                     ; $64fa: $71
	ld   l, l                                        ; $64fb: $6d
	ld   a, b                                        ; $64fc: $78
	sbc  [hl]                                        ; $64fd: $9e
	ld   [$5d00], sp                                 ; $64fe: $08 $00 $5d
	and  c                                           ; $6501: $a1
	sbc  a                                           ; $6502: $9f
	dec  c                                           ; $6503: $0d
	nop                                              ; $6504: $00
	dec  b                                           ; $6505: $05
	ld   b, b                                        ; $6506: $40
	ld   h, b                                        ; $6507: $60
	inc  bc                                          ; $6508: $03
	ld   h, b                                        ; $6509: $60
	ld   bc, $2801                                   ; $650a: $01 $01 $28
	nop                                              ; $650d: $00
	ld   bc, $7e67                                   ; $650e: $01 $67 $7e
	sub  a                                           ; $6511: $97
	ld   h, l                                        ; $6512: $65
	ld   d, d                                        ; $6513: $52
	inc  bc                                          ; $6514: $03
	xor  b                                           ; $6515: $a8
	ld   d, d                                        ; $6516: $52
	add  h                                           ; $6517: $84
	sbc  b                                           ; $6518: $98
	ld   l, [hl]                                     ; $6519: $6e
	ld   [hl], c                                     ; $651a: $71
	ld   l, l                                        ; $651b: $6d
	ld   l, h                                        ; $651c: $6c
	sbc  a                                           ; $651d: $9f
	dec  c                                           ; $651e: $0d
	nop                                              ; $651f: $00
	ld   a, [bc]                                     ; $6520: $0a
	dec  b                                           ; $6521: $05
	ld   b, b                                        ; $6522: $40
	ld   d, l                                        ; $6523: $55
	inc  bc                                          ; $6524: $03
	ld   d, l                                        ; $6525: $55
	ld   bc, $2801                                   ; $6526: $01 $01 $28
	nop                                              ; $6529: $00
	ld   b, $02                                      ; $652a: $06 $02
	dec  bc                                          ; $652c: $0b
	inc  e                                           ; $652d: $1c
	add  hl, bc                                      ; $652e: $09
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	ld   bc, $2803                                   ; $6531: $01 $03 $28
	inc  b                                           ; $6534: $04
	ld   c, b                                        ; $6535: $48
	ld   l, [hl]                                     ; $6536: $6e
	ld   [hl], c                                     ; $6537: $71
	ld   l, l                                        ; $6538: $6d
	ld   a, b                                        ; $6539: $78
	sbc  [hl]                                        ; $653a: $9e
	dec  c                                           ; $653b: $0d
	ld   [$5d00], sp                                 ; $653c: $08 $00 $5d
	and  c                                           ; $653f: $a1
	sbc  a                                           ; $6540: $9f
	dec  c                                           ; $6541: $0d
	nop                                              ; $6542: $00
	ld   a, [bc]                                     ; $6543: $0a
	ld   bc, $a502                                   ; $6544: $01 $02 $a5
	inc  b                                           ; $6547: $04
	xor  d                                           ; $6548: $aa
	ld   a, h                                        ; $6549: $7c
	inc  bc                                          ; $654a: $03
	inc  h                                           ; $654b: $24
	ld   [bc], a                                     ; $654c: $02
	sub  [hl]                                        ; $654d: $96
	ld   [bc], a                                     ; $654e: $02
	reti                                             ; $654f: $d9


	ld   [bc], a                                     ; $6550: $02
	ld   h, e                                        ; $6551: $63
	ld   a, l                                        ; $6552: $7d
	sbc  [hl]                                        ; $6553: $9e
	dec  c                                           ; $6554: $0d
	ld   h, a                                        ; $6555: $67
	add  a                                           ; $6556: $87
	ld   [hl], h                                     ; $6557: $74
	inc  b                                           ; $6558: $04
	rst  $10                                         ; $6559: $d7
	inc  b                                           ; $655a: $04
	ld   hl, $0b04                                   ; $655b: $21 $04 $0b
	inc  bc                                          ; $655e: $03
	ld   h, h                                        ; $655f: $64
	ld   a, c                                        ; $6560: $79
	inc  b                                           ; $6561: $04
	ld   [de], a                                     ; $6562: $12
	ld   d, [hl]                                     ; $6563: $56
	sub  a                                           ; $6564: $97
	sbc  d                                           ; $6565: $9a
	sbc  c                                           ; $6566: $99
	dec  c                                           ; $6567: $0d
	ld   [bc], a                                     ; $6568: $02
	jp   Jump_065_7879                               ; $6569: $c3 $79 $78


	ld   [hl], c                                     ; $656c: $71
	ld   [hl], h                                     ; $656d: $74
	ld   d, d                                        ; $656e: $52
	sbc  c                                           ; $656f: $99
	sbc  a                                           ; $6570: $9f
	dec  c                                           ; $6571: $0d
	nop                                              ; $6572: $00
	ld   a, [bc]                                     ; $6573: $0a
	ld   bc, $d902                                   ; $6574: $01 $02 $d9
	ld   [bc], a                                     ; $6577: $02
	ld   h, e                                        ; $6578: $63

Jump_065_6579:
	ld   a, l                                        ; $6579: $7d
	ld   d, b                                        ; $657a: $50
	halt                                             ; $657b: $76
	ld   [hl], l                                     ; $657c: $75

Call_065_657d:
	ld   [bc], a                                     ; $657d: $02
	jp   z, EnqueueHDMATransfer                                    ; $657e: $ca $7c $02

	and  [hl]                                        ; $6581: $a6
	ld   a, c                                        ; $6582: $79
	dec  c                                           ; $6583: $0d
	inc  bc                                          ; $6584: $03
	sbc  a                                           ; $6585: $9f
	sub  a                                           ; $6586: $97
	sbc  d                                           ; $6587: $9a
	ld   [hl], h                                     ; $6588: $74
	ld   e, l                                        ; $6589: $5d
	sbc  c                                           ; $658a: $99
	ld   l, [hl]                                     ; $658b: $6e
	sbc  e                                           ; $658c: $9b
	ld   d, h                                        ; $658d: $54
	sbc  a                                           ; $658e: $9f
	dec  c                                           ; $658f: $0d
	nop                                              ; $6590: $00
	ld   a, [bc]                                     ; $6591: $0a
	ld   bc, $7978                                   ; $6592: $01 $78 $79
	ld   a, l                                        ; $6595: $7d
	halt                                             ; $6596: $76

Call_065_6597:
	sub  b                                           ; $6597: $90
	ld   d, b                                        ; $6598: $50
	sbc  d                                           ; $6599: $9a
	sbc  [hl]                                        ; $659a: $9e
	ld   d, d                                        ; $659b: $52
	adc  h                                           ; $659c: $8c
	adc  h                                           ; $659d: $8c
	ld   [hl], l                                     ; $659e: $75
	dec  c                                           ; $659f: $0d

Call_065_65a0:
	sub  [hl]                                        ; $65a0: $96
	ld   e, l                                        ; $65a1: $5d
	ld   e, d                                        ; $65a2: $5a
	and  c                                           ; $65a3: $a1
	ld   a, [hl]                                     ; $65a4: $7e
	ld   [hl], c                                     ; $65a5: $71
	ld   l, l                                        ; $65a6: $6d
	ld   a, b                                        ; $65a7: $78
	sbc  a                                           ; $65a8: $9f
	dec  c                                           ; $65a9: $0d
	nop                                              ; $65aa: $00
	ld   a, [bc]                                     ; $65ab: $0a
	ld   bc, $a502                                   ; $65ac: $01 $02 $a5
	inc  b                                           ; $65af: $04
	xor  d                                           ; $65b0: $aa
	ld   a, l                                        ; $65b1: $7d
	inc  b                                           ; $65b2: $04
	ld   a, e                                        ; $65b3: $7b
	sbc  d                                           ; $65b4: $9a
	ld   l, l                                        ; $65b5: $6d
	ld   l, [hl]                                     ; $65b6: $6e
	sbc  e                                           ; $65b7: $9b
	ld   d, h                                        ; $65b8: $54
	sbc  a                                           ; $65b9: $9f
	dec  c                                           ; $65ba: $0d
	inc  bc                                          ; $65bb: $03
	ld   [hl], b                                     ; $65bc: $70
	ld   e, l                                        ; $65bd: $5d
	inc  b                                           ; $65be: $04
	sub  l                                           ; $65bf: $95
	ld   [bc], a                                     ; $65c0: $02
	ld   hl, $0479                                   ; $65c1: $21 $79 $04
	jp   $7471                                       ; $65c4: $c3 $71 $74


	inc  bc                                          ; $65c7: $03
	and  a                                           ; $65c8: $a7
	adc  [hl]                                        ; $65c9: $8e
	halt                                             ; $65ca: $76
	ld   d, d                                        ; $65cb: $52
	ld   d, d                                        ; $65cc: $52
	sbc  a                                           ; $65cd: $9f
	dec  c                                           ; $65ce: $0d
	nop                                              ; $65cf: $00
	ld   a, [bc]                                     ; $65d0: $0a
	rrca                                             ; $65d1: $0f
	nop                                              ; $65d2: $00
	ld   bc, $7d01                                   ; $65d3: $01 $01 $7d
	ld   d, d                                        ; $65d6: $52
	rst  $38                                         ; $65d7: $ff
	rst  $38                                         ; $65d8: $ff
	inc  b                                           ; $65d9: $04
	ld   c, $03                                      ; $65da: $0e $03
	sub  b                                           ; $65dc: $90
	ld   h, e                                        ; $65dd: $63
	and  c                                           ; $65de: $a1
	sbc  a                                           ; $65df: $9f
	dec  c                                           ; $65e0: $0d
	ld   d, b                                        ; $65e1: $50
	sbc  b                                           ; $65e2: $98
	ld   e, d                                        ; $65e3: $5a
	halt                                             ; $65e4: $76
	ld   d, h                                        ; $65e5: $54
	ld   h, d                                        ; $65e6: $62
	ld   h, h                                        ; $65e7: $64
	ld   d, d                                        ; $65e8: $52
	adc  h                                           ; $65e9: $8c
	ld   h, l                                        ; $65ea: $65
	ld   l, l                                        ; $65eb: $6d
	ld   a, [$0dfa]                                  ; $65ec: $fa $fa $0d
	nop                                              ; $65ef: $00
	ld   a, [bc]                                     ; $65f0: $0a
	inc  e                                           ; $65f1: $1c
	add  hl, bc                                      ; $65f2: $09
	ld   bc, $0101                                   ; $65f3: $01 $01 $01
	ld   d, h                                        ; $65f6: $54
	and  c                                           ; $65f7: $a1
	sbc  [hl]                                        ; $65f8: $9e
	ld   l, e                                        ; $65f9: $6b
	sbc  d                                           ; $65fa: $9a
	ld   h, [hl]                                     ; $65fb: $66
	sub  c                                           ; $65fc: $91
	sbc  a                                           ; $65fd: $9f
	dec  c                                           ; $65fe: $0d
	sub  h                                           ; $65ff: $94
	ld   [hl], c                                     ; $6600: $71
	ld   e, l                                        ; $6601: $5d
	sbc  b                                           ; $6602: $98
	inc  bc                                          ; $6603: $03
	and  a                                           ; $6604: $a7
	adc  a                                           ; $6605: $8f
	sub  [hl]                                        ; $6606: $96
	sbc  a                                           ; $6607: $9f
	dec  c                                           ; $6608: $0d
	nop                                              ; $6609: $00
	ld   a, [bc]                                     ; $660a: $0a
	dec  c                                           ; $660b: $0d
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	rrca                                             ; $660e: $0f
	nop                                              ; $660f: $00
	ld   bc, $0029                                   ; $6610: $01 $29 $00
	nop                                              ; $6613: $00
	nop                                              ; $6614: $00
	ld   c, $01                                      ; $6615: $0e $01
	rrca                                             ; $6617: $0f
	nop                                              ; $6618: $00
	ld   bc, $0613                                   ; $6619: $01 $13 $06
	ld   [bc], a                                     ; $661c: $02
	ld   bc, $d203                                   ; $661d: $01 $03 $d2
	ld   d, d                                        ; $6620: $52
	sub  [hl]                                        ; $6621: $96
	ld   d, h                                        ; $6622: $54
	ld   [hl], l                                     ; $6623: $75
	dec  b                                           ; $6624: $05
	ld   a, [$7159]                                  ; $6625: $fa $59 $71
	ld   l, l                                        ; $6628: $6d
	dec  c                                           ; $6629: $0d
	inc  b                                           ; $662a: $04
	ld   [$8f02], sp                                 ; $662b: $08 $02 $8f
	ld   [bc], a                                     ; $662e: $02
	sub  b                                           ; $662f: $90
	ld   [bc], a                                     ; $6630: $02
	sub  c                                           ; $6631: $91
	inc  b                                           ; $6632: $04
	add  hl, bc                                      ; $6633: $09
	ld   a, h                                        ; $6634: $7c
	inc  b                                           ; $6635: $04
	dec  c                                           ; $6636: $0d
	ld   [bc], a                                     ; $6637: $02
	sub  [hl]                                        ; $6638: $96
	inc  b                                           ; $6639: $04
	ld   b, l                                        ; $663a: $45
	inc  b                                           ; $663b: $04
	ld   a, [bc]                                     ; $663c: $0a
	sub  b                                           ; $663d: $90
	dec  c                                           ; $663e: $0d
	sub  b                                           ; $663f: $90
	ld   d, h                                        ; $6640: $54
	inc  bc                                          ; $6641: $03
	ld   a, [hl]                                     ; $6642: $7e
	sbc  l                                           ; $6643: $9d
	sbc  e                                           ; $6644: $9b
	ld   d, h                                        ; $6645: $54
	halt                                             ; $6646: $76
	ld   h, l                                        ; $6647: $65
	ld   [hl], h                                     ; $6648: $74
	ld   d, d                                        ; $6649: $52
	sbc  c                                           ; $664a: $99
	rst  $38                                         ; $664b: $ff
	rst  $38                                         ; $664c: $ff
	dec  c                                           ; $664d: $0d
	nop                                              ; $664e: $00
	ld   a, [bc]                                     ; $664f: $0a
	ld   bc, $6903                                   ; $6650: $01 $03 $69
	ld   [bc], a                                     ; $6653: $02
	xor  d                                           ; $6654: $aa
	ld   a, l                                        ; $6655: $7d
	sbc  [hl]                                        ; $6656: $9e
	adc  l                                           ; $6657: $8d
	and  c                                           ; $6658: $a1
	ld   a, b                                        ; $6659: $78
	ld   l, e                                        ; $665a: $6b
	sbc  e                                           ; $665b: $9b
	ld   [hl], c                                     ; $665c: $71
	ld   [hl], h                                     ; $665d: $74
	dec  c                                           ; $665e: $0d
	ld   h, e                                        ; $665f: $63
	sub  [hl]                                        ; $6660: $96
	ld   a, b                                        ; $6661: $78
	sub  a                                           ; $6662: $97
	jp   nc, $c7fb                                   ; $6663: $d2 $fb $c7

	and  h                                           ; $6666: $a4
	ei                                               ; $6667: $fb
	and  b                                           ; $6668: $a0
	ld   [bc], a                                     ; $6669: $02
	adc  b                                           ; $666a: $88
	ld   d, d                                        ; $666b: $52
	ld   [hl], h                                     ; $666c: $74
	dec  c                                           ; $666d: $0d
	ld   e, l                                        ; $666e: $5d
	sbc  d                                           ; $666f: $9a
	sbc  c                                           ; $6670: $99
	halt                                             ; $6671: $76
	ld   d, d                                        ; $6672: $52
	ld   d, h                                        ; $6673: $54
	rst  $38                                         ; $6674: $ff
	rst  $38                                         ; $6675: $ff
	dec  c                                           ; $6676: $0d
	nop                                              ; $6677: $00
	ld   a, [bc]                                     ; $6678: $0a
	rlca                                             ; $6679: $07
	inc  sp                                          ; $667a: $33
	ld   bc, $1103                                   ; $667b: $01 $03 $11
	ld   bc, $2578                                   ; $667e: $01 $78 $25
	inc  bc                                          ; $6681: $03
	ld   de, $1403                                   ; $6682: $11 $03 $14
	dec  h                                           ; $6685: $25
	inc  e                                           ; $6686: $1c
	inc  bc                                          ; $6687: $03
	ld   de, $1203                                   ; $6688: $11 $03 $12
	dec  h                                           ; $668b: $25
	inc  e                                           ; $668c: $1c
	inc  bc                                          ; $668d: $03
	ld   de, $1303                                   ; $668e: $11 $03 $13
	dec  h                                           ; $6691: $25
	inc  e                                           ; $6692: $1c
	inc  bc                                          ; $6693: $03
	ld   de, $1503                                   ; $6694: $11 $03 $15
	dec  h                                           ; $6697: $25
	inc  e                                           ; $6698: $1c
	inc  bc                                          ; $6699: $03
	ld   de, $1603                                   ; $669a: $11 $03 $16
	dec  h                                           ; $669d: $25
	inc  e                                           ; $669e: $1c
	nop                                              ; $669f: $00
	rlca                                             ; $66a0: $07
	ld   h, h                                        ; $66a1: $64
	ld   bc, $1203                                   ; $66a2: $01 $03 $12
	ld   bc, $2578                                   ; $66a5: $01 $78 $25
	inc  bc                                          ; $66a8: $03
	ld   [de], a                                     ; $66a9: $12
	inc  bc                                          ; $66aa: $03
	ld   de, $1c25                                   ; $66ab: $11 $25 $1c
	inc  bc                                          ; $66ae: $03
	ld   [de], a                                     ; $66af: $12
	inc  bc                                          ; $66b0: $03
	inc  de                                          ; $66b1: $13
	dec  h                                           ; $66b2: $25
	inc  e                                           ; $66b3: $1c
	inc  bc                                          ; $66b4: $03
	ld   [de], a                                     ; $66b5: $12
	inc  bc                                          ; $66b6: $03
	inc  d                                           ; $66b7: $14
	dec  h                                           ; $66b8: $25
	inc  e                                           ; $66b9: $1c
	inc  bc                                          ; $66ba: $03
	ld   [de], a                                     ; $66bb: $12
	inc  bc                                          ; $66bc: $03
	dec  d                                           ; $66bd: $15
	dec  h                                           ; $66be: $25
	inc  e                                           ; $66bf: $1c
	inc  bc                                          ; $66c0: $03
	ld   [de], a                                     ; $66c1: $12
	inc  bc                                          ; $66c2: $03
	ld   d, $25                                      ; $66c3: $16 $25
	inc  e                                           ; $66c5: $1c
	nop                                              ; $66c6: $00
	rlca                                             ; $66c7: $07
	ld   [$0302], sp                                 ; $66c8: $08 $02 $03
	inc  d                                           ; $66cb: $14
	ld   bc, $2578                                   ; $66cc: $01 $78 $25
	inc  bc                                          ; $66cf: $03
	inc  d                                           ; $66d0: $14
	inc  bc                                          ; $66d1: $03
	ld   de, $1c25                                   ; $66d2: $11 $25 $1c
	inc  bc                                          ; $66d5: $03
	inc  d                                           ; $66d6: $14
	inc  bc                                          ; $66d7: $03
	ld   [de], a                                     ; $66d8: $12
	dec  h                                           ; $66d9: $25
	inc  e                                           ; $66da: $1c
	inc  bc                                          ; $66db: $03
	inc  d                                           ; $66dc: $14
	inc  bc                                          ; $66dd: $03
	inc  de                                          ; $66de: $13
	dec  h                                           ; $66df: $25
	inc  e                                           ; $66e0: $1c
	inc  bc                                          ; $66e1: $03
	inc  d                                           ; $66e2: $14
	inc  bc                                          ; $66e3: $03
	dec  d                                           ; $66e4: $15
	dec  h                                           ; $66e5: $25
	inc  e                                           ; $66e6: $1c
	inc  bc                                          ; $66e7: $03
	inc  d                                           ; $66e8: $14
	inc  bc                                          ; $66e9: $03
	ld   d, $25                                      ; $66ea: $16 $25
	inc  e                                           ; $66ec: $1c
	nop                                              ; $66ed: $00
	rlca                                             ; $66ee: $07
	sub  d                                           ; $66ef: $92
	ld   bc, $1303                                   ; $66f0: $01 $03 $13
	ld   bc, $2578                                   ; $66f3: $01 $78 $25
	inc  bc                                          ; $66f6: $03
	inc  de                                          ; $66f7: $13
	inc  bc                                          ; $66f8: $03
	ld   de, $1c25                                   ; $66f9: $11 $25 $1c
	inc  bc                                          ; $66fc: $03
	inc  de                                          ; $66fd: $13
	inc  bc                                          ; $66fe: $03
	ld   [de], a                                     ; $66ff: $12
	dec  h                                           ; $6700: $25
	inc  e                                           ; $6701: $1c
	inc  bc                                          ; $6702: $03
	inc  de                                          ; $6703: $13
	inc  bc                                          ; $6704: $03
	inc  d                                           ; $6705: $14
	dec  h                                           ; $6706: $25
	inc  e                                           ; $6707: $1c
	inc  bc                                          ; $6708: $03
	inc  de                                          ; $6709: $13
	inc  bc                                          ; $670a: $03
	dec  d                                           ; $670b: $15
	dec  h                                           ; $670c: $25
	inc  e                                           ; $670d: $1c
	inc  bc                                          ; $670e: $03
	inc  de                                          ; $670f: $13
	inc  bc                                          ; $6710: $03
	ld   d, $25                                      ; $6711: $16 $25
	inc  e                                           ; $6713: $1c
	nop                                              ; $6714: $00
	rlca                                             ; $6715: $07
	db   $e4                                         ; $6716: $e4
	ld   bc, $1503                                   ; $6717: $01 $03 $15
	ld   bc, $2578                                   ; $671a: $01 $78 $25
	inc  bc                                          ; $671d: $03
	dec  d                                           ; $671e: $15
	inc  bc                                          ; $671f: $03
	ld   de, $1c25                                   ; $6720: $11 $25 $1c
	inc  bc                                          ; $6723: $03
	dec  d                                           ; $6724: $15
	inc  bc                                          ; $6725: $03
	ld   [de], a                                     ; $6726: $12
	dec  h                                           ; $6727: $25
	inc  e                                           ; $6728: $1c
	inc  bc                                          ; $6729: $03
	dec  d                                           ; $672a: $15
	inc  bc                                          ; $672b: $03
	inc  d                                           ; $672c: $14
	dec  h                                           ; $672d: $25
	inc  e                                           ; $672e: $1c
	inc  bc                                          ; $672f: $03
	dec  d                                           ; $6730: $15
	inc  bc                                          ; $6731: $03
	inc  de                                          ; $6732: $13
	dec  h                                           ; $6733: $25
	inc  e                                           ; $6734: $1c
	inc  bc                                          ; $6735: $03
	dec  d                                           ; $6736: $15
	inc  bc                                          ; $6737: $03
	ld   d, $25                                      ; $6738: $16 $25
	inc  e                                           ; $673a: $1c
	nop                                              ; $673b: $00
	rlca                                             ; $673c: $07
	cp   a                                           ; $673d: $bf
	ld   bc, $1603                                   ; $673e: $01 $03 $16
	ld   bc, $2578                                   ; $6741: $01 $78 $25
	nop                                              ; $6744: $00
	ld   b, $32                                      ; $6745: $06 $32
	ld   [bc], a                                     ; $6747: $02
	inc  e                                           ; $6748: $1c
	ld   bc, $0101                                   ; $6749: $01 $01 $01
	ld   bc, $0008                                   ; $674c: $01 $08 $00
	ld   h, e                                        ; $674f: $63
	and  c                                           ; $6750: $a1
	sbc  a                                           ; $6751: $9f
	dec  c                                           ; $6752: $0d
	adc  l                                           ; $6753: $8d
	and  c                                           ; $6754: $a1
	ld   a, b                                        ; $6755: $78
	ld   e, d                                        ; $6756: $5a
	inc  b                                           ; $6757: $04
	rla                                              ; $6758: $17
	ld   [hl], c                                     ; $6759: $71
	ld   [hl], h                                     ; $675a: $74
	adc  h                                           ; $675b: $8c
	ld   h, a                                        ; $675c: $67
	sub  [hl]                                        ; $675d: $96
	sbc  a                                           ; $675e: $9f
	dec  c                                           ; $675f: $0d
	ld   h, e                                        ; $6760: $63
	ld   d, b                                        ; $6761: $50
	sbc  [hl]                                        ; $6762: $9e
	ld   [bc], a                                     ; $6763: $02
	ld   a, a                                        ; $6764: $7f
	ld   e, e                                        ; $6765: $5b
	adc  h                                           ; $6766: $8c
	ld   h, l                                        ; $6767: $65
	sub  l                                           ; $6768: $95
	ld   d, h                                        ; $6769: $54
	sbc  a                                           ; $676a: $9f
	dec  c                                           ; $676b: $0d
	nop                                              ; $676c: $00
	ld   a, [bc]                                     ; $676d: $0a
	dec  c                                           ; $676e: $0d
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	rrca                                             ; $6771: $0f
	nop                                              ; $6772: $00
	ld   bc, $020c                                   ; $6773: $01 $0c $02
	ld   b, $5f                                      ; $6776: $06 $5f
	ld   [bc], a                                     ; $6778: $02
	inc  e                                           ; $6779: $1c
	ld   [bc], a                                     ; $677a: $02
	ld   bc, $0101                                   ; $677b: $01 $01 $01
	ld   [$6300], sp                                 ; $677e: $08 $00 $63
	and  c                                           ; $6781: $a1
	sbc  a                                           ; $6782: $9f
	dec  c                                           ; $6783: $0d
	adc  l                                           ; $6784: $8d
	and  c                                           ; $6785: $a1
	ld   a, b                                        ; $6786: $78
	ld   e, d                                        ; $6787: $5a
	inc  b                                           ; $6788: $04
	rla                                              ; $6789: $17
	ld   [hl], c                                     ; $678a: $71
	ld   [hl], h                                     ; $678b: $74
	adc  h                                           ; $678c: $8c
	ld   h, a                                        ; $678d: $67
	sbc  l                                           ; $678e: $9d
	sub  [hl]                                        ; $678f: $96
	sbc  a                                           ; $6790: $9f
	dec  c                                           ; $6791: $0d
	ld   h, e                                        ; $6792: $63
	ld   d, b                                        ; $6793: $50
	sbc  [hl]                                        ; $6794: $9e
	inc  bc                                          ; $6795: $03
	ld   [hl], b                                     ; $6796: $70
	ld   e, l                                        ; $6797: $5d
	sbc  a                                           ; $6798: $9f
	dec  c                                           ; $6799: $0d
	nop                                              ; $679a: $00
	ld   a, [bc]                                     ; $679b: $0a
	dec  c                                           ; $679c: $0d
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	rrca                                             ; $679f: $0f
	nop                                              ; $67a0: $00
	ld   bc, $020c                                   ; $67a1: $01 $0c $02
	ld   b, $5f                                      ; $67a4: $06 $5f
	ld   [bc], a                                     ; $67a6: $02
	inc  e                                           ; $67a7: $1c
	inc  bc                                          ; $67a8: $03
	inc  bc                                          ; $67a9: $03
	inc  bc                                          ; $67aa: $03
	ld   bc, $0008                                   ; $67ab: $01 $08 $00
	ld   e, l                                        ; $67ae: $5d
	and  c                                           ; $67af: $a1
	sbc  a                                           ; $67b0: $9f
	dec  c                                           ; $67b1: $0d
	adc  l                                           ; $67b2: $8d
	and  c                                           ; $67b3: $a1
	ld   a, b                                        ; $67b4: $78
	ld   e, d                                        ; $67b5: $5a
	inc  b                                           ; $67b6: $04
	rla                                              ; $67b7: $17
	ld   [hl], c                                     ; $67b8: $71
	ld   [hl], h                                     ; $67b9: $74
	sbc  c                                           ; $67ba: $99
	sbc  l                                           ; $67bb: $9d
	sbc  a                                           ; $67bc: $9f
	dec  c                                           ; $67bd: $0d
	ld   [bc], a                                     ; $67be: $02
	ld   a, a                                        ; $67bf: $7f
	ld   e, e                                        ; $67c0: $5b
	adc  h                                           ; $67c1: $8c
	ld   h, l                                        ; $67c2: $65
	sub  l                                           ; $67c3: $95
	ld   d, h                                        ; $67c4: $54
	sbc  a                                           ; $67c5: $9f
	dec  c                                           ; $67c6: $0d
	nop                                              ; $67c7: $00
	ld   a, [bc]                                     ; $67c8: $0a
	dec  c                                           ; $67c9: $0d
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	rrca                                             ; $67cc: $0f
	nop                                              ; $67cd: $00
	ld   bc, $020c                                   ; $67ce: $01 $0c $02
	ld   b, $5f                                      ; $67d1: $06 $5f
	ld   [bc], a                                     ; $67d3: $02
	inc  e                                           ; $67d4: $1c
	ld   b, $01                                      ; $67d5: $06 $01
	ld   bc, $9601                                   ; $67d7: $01 $01 $96
	ld   e, b                                        ; $67da: $58
	sbc  [hl]                                        ; $67db: $9e
	ld   [$9f00], sp                                 ; $67dc: $08 $00 $9f
	dec  c                                           ; $67df: $0d
	adc  l                                           ; $67e0: $8d
	and  c                                           ; $67e1: $a1
	ld   a, b                                        ; $67e2: $78
	ld   e, d                                        ; $67e3: $5a
	inc  b                                           ; $67e4: $04
	rla                                              ; $67e5: $17
	ld   [hl], c                                     ; $67e6: $71
	ld   [hl], h                                     ; $67e7: $74
	sbc  c                                           ; $67e8: $99
	ld   l, d                                        ; $67e9: $6a
	sbc  a                                           ; $67ea: $9f
	dec  c                                           ; $67eb: $0d
	nop                                              ; $67ec: $00
	ld   a, [bc]                                     ; $67ed: $0a
	dec  c                                           ; $67ee: $0d
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	rrca                                             ; $67f1: $0f
	nop                                              ; $67f2: $00
	ld   bc, $020c                                   ; $67f3: $01 $0c $02
	ld   b, $5f                                      ; $67f6: $06 $5f
	ld   [bc], a                                     ; $67f8: $02
	inc  e                                           ; $67f9: $1c
	dec  b                                           ; $67fa: $05
	ld   bc, $0101                                   ; $67fb: $01 $01 $01
	ld   [$7d00], sp                                 ; $67fe: $08 $00 $7d
	and  c                                           ; $6801: $a1
	sbc  a                                           ; $6802: $9f
	dec  c                                           ; $6803: $0d
	adc  l                                           ; $6804: $8d
	and  c                                           ; $6805: $a1
	ld   a, b                                        ; $6806: $78
	sbc  [hl]                                        ; $6807: $9e
	inc  b                                           ; $6808: $04
	rla                                              ; $6809: $17
	ld   [hl], c                                     ; $680a: $71
	ld   [hl], h                                     ; $680b: $74
	and  c                                           ; $680c: $a1
	ld   [hl], l                                     ; $680d: $75
	sbc  a                                           ; $680e: $9f
	dec  c                                           ; $680f: $0d
	nop                                              ; $6810: $00
	ld   a, [bc]                                     ; $6811: $0a
	dec  c                                           ; $6812: $0d
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	rrca                                             ; $6815: $0f
	nop                                              ; $6816: $00
	ld   bc, $020c                                   ; $6817: $01 $0c $02
	ld   b, $5f                                      ; $681a: $06 $5f
	ld   [bc], a                                     ; $681c: $02
	inc  e                                           ; $681d: $1c
	inc  b                                           ; $681e: $04
	ld   bc, $0101                                   ; $681f: $01 $01 $01
	ld   l, a                                        ; $6822: $6f
	ld   d, d                                        ; $6823: $52
	ld   [bc], a                                     ; $6824: $02
	inc  de                                          ; $6825: $13
	ld   l, a                                        ; $6826: $6f
	sub  c                                           ; $6827: $91
	and  c                                           ; $6828: $a1
	sbc  a                                           ; $6829: $9f
	dec  c                                           ; $682a: $0d
	adc  l                                           ; $682b: $8d
	and  c                                           ; $682c: $a1
	ld   a, b                                        ; $682d: $78
	adc  h                                           ; $682e: $8c
	ld   [hl], c                                     ; $682f: $71
	ld   [hl], h                                     ; $6830: $74
	sbc  c                                           ; $6831: $99
	sub  [hl]                                        ; $6832: $96
	sbc  a                                           ; $6833: $9f
	dec  c                                           ; $6834: $0d
	ld   d, d                                        ; $6835: $52
	ld   h, c                                        ; $6836: $61
	ld   d, h                                        ; $6837: $54
	sbc  a                                           ; $6838: $9f
	dec  c                                           ; $6839: $0d
	nop                                              ; $683a: $00
	ld   a, [bc]                                     ; $683b: $0a
	dec  c                                           ; $683c: $0d
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	rrca                                             ; $683f: $0f
	nop                                              ; $6840: $00
	ld   bc, $020c                                   ; $6841: $01 $0c $02
	ld   b, $5f                                      ; $6844: $06 $5f
	ld   [bc], a                                     ; $6846: $02
	inc  e                                           ; $6847: $1c
	add  hl, bc                                      ; $6848: $09
	ld   bc, $0101                                   ; $6849: $01 $01 $01
	ld   [$5d00], sp                                 ; $684c: $08 $00 $5d
	and  c                                           ; $684f: $a1
	sbc  a                                           ; $6850: $9f
	dec  c                                           ; $6851: $0d
	adc  l                                           ; $6852: $8d
	and  c                                           ; $6853: $a1
	ld   a, b                                        ; $6854: $78
	ld   e, d                                        ; $6855: $5a
	inc  b                                           ; $6856: $04
	rla                                              ; $6857: $17
	ld   [hl], c                                     ; $6858: $71
	ld   [hl], h                                     ; $6859: $74
	sbc  c                                           ; $685a: $99
	sub  [hl]                                        ; $685b: $96
	sbc  a                                           ; $685c: $9f
	dec  c                                           ; $685d: $0d
	ld   h, e                                        ; $685e: $63
	ld   d, b                                        ; $685f: $50
	sbc  [hl]                                        ; $6860: $9e
	ld   [bc], a                                     ; $6861: $02
	ld   a, a                                        ; $6862: $7f
	ld   h, c                                        ; $6863: $61
	ld   d, h                                        ; $6864: $54
	sbc  a                                           ; $6865: $9f
	dec  c                                           ; $6866: $0d
	nop                                              ; $6867: $00
	ld   a, [bc]                                     ; $6868: $0a
	dec  c                                           ; $6869: $0d
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	rrca                                             ; $686c: $0f
	nop                                              ; $686d: $00
	ld   bc, $020c                                   ; $686e: $01 $0c $02
	ld   b, $5f                                      ; $6871: $06 $5f
	ld   [bc], a                                     ; $6873: $02
	ld   c, $2a                                      ; $6874: $0e $2a

jr_065_6876:
	inc  e                                           ; $6876: $1c
	add  hl, bc                                      ; $6877: $09
	ld   bc, $0101                                   ; $6878: $01 $01 $01
	ld   [bc], a                                     ; $687b: $02
	jr   nz, jr_065_6876                             ; $687c: $20 $f8

	ld   [bc], a                                     ; $687e: $02
	sbc  e                                           ; $687f: $9b
	sub  [hl]                                        ; $6880: $96
	ld   e, l                                        ; $6881: $5d
	ld   e, d                                        ; $6882: $5a
	and  c                                           ; $6883: $a1
	ld   a, [hl]                                     ; $6884: $7e
	ld   [hl], c                                     ; $6885: $71
	ld   l, l                                        ; $6886: $6d
	ld   a, e                                        ; $6887: $7b
	sbc  a                                           ; $6888: $9f
	dec  c                                           ; $6889: $0d
	ld   e, b                                        ; $688a: $58
	inc  b                                           ; $688b: $04
	ld   a, e                                        ; $688c: $7b
	sbc  d                                           ; $688d: $9a
	ld   h, e                                        ; $688e: $63
	adc  h                                           ; $688f: $8c
	sbc  a                                           ; $6890: $9f
	dec  c                                           ; $6891: $0d
	nop                                              ; $6892: $00
	ld   a, [bc]                                     ; $6893: $0a
	ld   bc, $ca02                                   ; $6894: $01 $02 $ca
	ld   a, h                                        ; $6897: $7c
	ld   e, d                                        ; $6898: $5a
	and  c                                           ; $6899: $a1
	ld   a, [hl]                                     ; $689a: $7e
	sbc  b                                           ; $689b: $98
	ld   a, c                                        ; $689c: $79
	ld   a, l                                        ; $689d: $7d
	dec  c                                           ; $689e: $0d
	dec  b                                           ; $689f: $05
	ld   [hl], e                                     ; $68a0: $73
	sub  b                                           ; $68a1: $90
	ld   [bc], a                                     ; $68a2: $02
	sub  l                                           ; $68a3: $95
	inc  bc                                          ; $68a4: $03
	and  h                                           ; $68a5: $a4
	ld   d, h                                        ; $68a6: $54
	add  a                                           ; $68a7: $87
	ld   e, e                                        ; $68a8: $5b
	sub  b                                           ; $68a9: $90
	ld   a, h                                        ; $68aa: $7c
	ld   e, d                                        ; $68ab: $5a
	ld   d, b                                        ; $68ac: $50
	ld   [hl], c                                     ; $68ad: $71
	ld   l, l                                        ; $68ae: $6d
	sub  [hl]                                        ; $68af: $96
	dec  c                                           ; $68b0: $0d
	ld   [$5d00], sp                                 ; $68b1: $08 $00 $5d
	and  c                                           ; $68b4: $a1
	sbc  a                                           ; $68b5: $9f
	dec  c                                           ; $68b6: $0d
	nop                                              ; $68b7: $00
	ld   a, [bc]                                     ; $68b8: $0a
	inc  e                                           ; $68b9: $1c
	ld   a, [bc]                                     ; $68ba: $0a
	ld   bc, $0101                                   ; $68bb: $01 $01 $01
	ld   e, b                                        ; $68be: $58
	inc  bc                                          ; $68bf: $03
	ld   c, a                                        ; $68c0: $4f
	ld   e, d                                        ; $68c1: $5a
	ld   h, c                                        ; $68c2: $61
	ld   a, h                                        ; $68c3: $7c
	ld   [bc], a                                     ; $68c4: $02
	xor  d                                           ; $68c5: $aa
	ld   [hl], a                                     ; $68c6: $77
	ld   d, h                                        ; $68c7: $54
	ld   d, d                                        ; $68c8: $52
	ld   d, h                                        ; $68c9: $54
	dec  c                                           ; $68ca: $0d
	inc  b                                           ; $68cb: $04
	pop  de                                          ; $68cc: $d1
	ld   a, h                                        ; $68cd: $7c
	inc  bc                                          ; $68ce: $03
	or   a                                           ; $68cf: $b7
	sbc  b                                           ; $68d0: $98
	inc  b                                           ; $68d1: $04
	ld   a, b                                        ; $68d2: $78
	and  b                                           ; $68d3: $a0
	ld   h, a                                        ; $68d4: $67
	sbc  c                                           ; $68d5: $99
	ld   a, h                                        ; $68d6: $7c
	ld   e, c                                        ; $68d7: $59
	dec  c                                           ; $68d8: $0d
	ld   h, l                                        ; $68d9: $65
	sub  a                                           ; $68da: $97
	ld   a, e                                        ; $68db: $7b
	ld   d, [hl]                                     ; $68dc: $56
	ld   e, d                                        ; $68dd: $5a
	rst  $38                                         ; $68de: $ff
	rst  $38                                         ; $68df: $ff
	dec  c                                           ; $68e0: $0d
	nop                                              ; $68e1: $00
	ld   a, [bc]                                     ; $68e2: $0a
	ld   bc, $7252                                   ; $68e3: $01 $52 $72
	ld   [hl], l                                     ; $68e6: $75
	sub  b                                           ; $68e7: $90
	dec  b                                           ; $68e8: $05
	ld   a, [bc]                                     ; $68e9: $0a
	ld   a, c                                        ; $68ea: $79
	ld   a, b                                        ; $68eb: $78
	sbc  c                                           ; $68ec: $99
	ld   l, d                                        ; $68ed: $6a
	sbc  a                                           ; $68ee: $9f
	dec  c                                           ; $68ef: $0d
	inc  b                                           ; $68f0: $04
	ld   c, c                                        ; $68f1: $49
	ld   l, [hl]                                     ; $68f2: $6e
	ld   [hl], c                                     ; $68f3: $71
	ld   l, l                                        ; $68f4: $6d
	sub  a                                           ; $68f5: $97
	ld   h, c                                        ; $68f6: $61
	ld   a, h                                        ; $68f7: $7c
	adc  h                                           ; $68f8: $8c
	adc  h                                           ; $68f9: $8c
	inc  b                                           ; $68fa: $04
	ld   [$9202], sp                                 ; $68fb: $08 $02 $92
	ld   [hl], l                                     ; $68fe: $75
	dec  c                                           ; $68ff: $0d
	inc  bc                                          ; $6900: $03
	pop  af                                          ; $6901: $f1
	ld   e, l                                        ; $6902: $5d
	ld   e, c                                        ; $6903: $59
	ld   sp, hl                                      ; $6904: $f9
	dec  c                                           ; $6905: $0d
	nop                                              ; $6906: $00
	ld   a, [bc]                                     ; $6907: $0a
	inc  e                                           ; $6908: $1c
	dec  bc                                          ; $6909: $0b
	ld   hl, $010d                                   ; $690a: $21 $0d $01
	ld   d, b                                        ; $690d: $50
	ld   a, b                                        ; $690e: $78
	ld   l, l                                        ; $690f: $6d
	ld   a, c                                        ; $6910: $79
	ld   a, l                                        ; $6911: $7d
	ld   d, b                                        ; $6912: $50
	ld   a, b                                        ; $6913: $78
	ld   l, l                                        ; $6914: $6d
	ld   a, h                                        ; $6915: $7c
	dec  b                                           ; $6916: $05
	db   $dd                                         ; $6917: $dd
	adc  [hl]                                        ; $6918: $8e
	add  a                                           ; $6919: $87
	ld   e, e                                        ; $691a: $5b
	dec  c                                           ; $691b: $0d
	inc  b                                           ; $691c: $04
	ld   d, $5a                                      ; $691d: $16 $5a
	ld   d, b                                        ; $691f: $50
	sbc  c                                           ; $6920: $99
	sbc  l                                           ; $6921: $9d
	rst  $38                                         ; $6922: $ff
	rst  $38                                         ; $6923: $ff
	dec  c                                           ; $6924: $0d
	nop                                              ; $6925: $00
	ld   a, [bc]                                     ; $6926: $0a
	ld   bc, $6161                                   ; $6927: $01 $61 $61
	ld   [hl], l                                     ; $692a: $75
	ld   b, $02                                      ; $692b: $06 $02
	ld   l, l                                        ; $692d: $6d
	sub  b                                           ; $692e: $90
	ld   a, h                                        ; $692f: $7c
	ld   a, l                                        ; $6930: $7d
	sbc  [hl]                                        ; $6931: $9e
	ld   e, e                                        ; $6932: $5b
	ld   [hl], c                                     ; $6933: $71
	halt                                             ; $6934: $76
	dec  c                                           ; $6935: $0d
	ld   l, e                                        ; $6936: $6b
	ld   a, h                                        ; $6937: $7c
	inc  b                                           ; $6938: $04
	ld   d, $75                                      ; $6939: $16 $75
	sub  b                                           ; $693b: $90
	inc  b                                           ; $693c: $04
	ld   c, c                                        ; $693d: $49
	ld   e, c                                        ; $693e: $59
	ld   a, h                                        ; $693f: $7c
	dec  b                                           ; $6940: $05
	ld   a, [bc]                                     ; $6941: $0a
	ld   a, c                                        ; $6942: $79
	ld   a, b                                        ; $6943: $78
	sbc  c                                           ; $6944: $99
	ld   e, c                                        ; $6945: $59
	sub  a                                           ; $6946: $97
	dec  c                                           ; $6947: $0d
	ld   e, d                                        ; $6948: $5a
	and  c                                           ; $6949: $a1
	ld   a, [hl]                                     ; $694a: $7e
	ld   [hl], c                                     ; $694b: $71
	ld   [hl], h                                     ; $694c: $74
	rst  $38                                         ; $694d: $ff
	rst  $38                                         ; $694e: $ff
	dec  c                                           ; $694f: $0d
	nop                                              ; $6950: $00
	ld   a, [bc]                                     ; $6951: $0a
	inc  e                                           ; $6952: $1c
	ld   bc, $0606                                   ; $6953: $01 $06 $06
	ld   bc, $9a61                                   ; $6956: $01 $61 $9a
	ld   [hl], l                                     ; $6959: $75
	sbc  [hl]                                        ; $695a: $9e
	ld   e, b                                        ; $695b: $58
	inc  b                                           ; $695c: $04
	ld   d, h                                        ; $695d: $54
	sbc  d                                           ; $695e: $9a
	ld   a, b                                        ; $695f: $78
	and  c                                           ; $6960: $a1
	ld   [hl], l                                     ; $6961: $75
	ld   h, a                                        ; $6962: $67
	ld   a, e                                        ; $6963: $7b
	rst  $38                                         ; $6964: $ff
	rst  $38                                         ; $6965: $ff
	dec  c                                           ; $6966: $0d
	nop                                              ; $6967: $00
	ld   a, [bc]                                     ; $6968: $0a
	inc  e                                           ; $6969: $1c
	ld   [bc], a                                     ; $696a: $02
	ld   bc, $0101                                   ; $696b: $01 $01 $01
	ld   d, b                                        ; $696e: $50
	sub  a                                           ; $696f: $97
	sbc  [hl]                                        ; $6970: $9e
	ld   h, e                                        ; $6971: $63
	ld   e, l                                        ; $6972: $5d
	sub  a                                           ; $6973: $97
	ld   h, e                                        ; $6974: $63
	and  c                                           ; $6975: $a1
	sbc  a                                           ; $6976: $9f
	dec  c                                           ; $6977: $0d
	ld   h, c                                        ; $6978: $61
	sbc  d                                           ; $6979: $9a
	ld   [hl], l                                     ; $697a: $75
	dec  b                                           ; $697b: $05
	ld   l, [hl]                                     ; $697c: $6e
	ld   [bc], a                                     ; $697d: $02
	ld   bc, $047c                                   ; $697e: $01 $7c $04
	ld   d, h                                        ; $6981: $54
	sbc  d                                           ; $6982: $9a
	halt                                             ; $6983: $76
	ld   d, d                                        ; $6984: $52
	ld   d, h                                        ; $6985: $54
	dec  c                                           ; $6986: $0d
	sbc  l                                           ; $6987: $9d
	ld   e, a                                        ; $6988: $5f
	ld   [hl], l                                     ; $6989: $75
	ld   a, l                                        ; $698a: $7d
	ld   d, b                                        ; $698b: $50
	sbc  b                                           ; $698c: $98
	adc  h                                           ; $698d: $8c
	ld   l, c                                        ; $698e: $69
	and  c                                           ; $698f: $a1
	sbc  l                                           ; $6990: $9d
	rst  $38                                         ; $6991: $ff
	rst  $38                                         ; $6992: $ff
	dec  c                                           ; $6993: $0d
	nop                                              ; $6994: $00
	ld   a, [bc]                                     ; $6995: $0a
	inc  e                                           ; $6996: $1c
	inc  bc                                          ; $6997: $03
	inc  bc                                          ; $6998: $03
	inc  bc                                          ; $6999: $03
	ld   bc, $0804                                   ; $699a: $01 $04 $08
	inc  b                                           ; $699d: $04
	cpl                                              ; $699e: $2f
	and  b                                           ; $699f: $a0
	inc  bc                                          ; $69a0: $03
	sub  e                                           ; $69a1: $93
	sbc  c                                           ; $69a2: $99
	halt                                             ; $69a3: $76
	ld   d, d                                        ; $69a4: $52
	ld   d, h                                        ; $69a5: $54
	dec  b                                           ; $69a6: $05
	rst  $10                                         ; $69a7: $d7
	ld   a, h                                        ; $69a8: $7c
	ld   [bc], a                                     ; $69a9: $02
	inc  [hl]                                        ; $69aa: $34
	ld   a, c                                        ; $69ab: $79
	dec  c                                           ; $69ac: $0d
	ld   e, e                                        ; $69ad: $5b
	ld   [hl], c                                     ; $69ae: $71
	halt                                             ; $69af: $76
	sbc  [hl]                                        ; $69b0: $9e
	adc  h                                           ; $69b1: $8c
	ld   l, l                                        ; $69b2: $6d
	ld   [bc], a                                     ; $69b3: $02
	add  [hl]                                        ; $69b4: $86
	ld   d, [hl]                                     ; $69b5: $56
	sbc  c                                           ; $69b6: $99
	inc  b                                           ; $69b7: $04
	xor  d                                           ; $69b8: $aa
	ld   e, d                                        ; $69b9: $5a
	dec  c                                           ; $69ba: $0d
	ld   e, l                                        ; $69bb: $5d
	sbc  c                                           ; $69bc: $99
	ld   a, l                                        ; $69bd: $7d
	ld   l, b                                        ; $69be: $68
	sub  [hl]                                        ; $69bf: $96
	sbc  a                                           ; $69c0: $9f
	dec  c                                           ; $69c1: $0d
	nop                                              ; $69c2: $00
	ld   a, [bc]                                     ; $69c3: $0a
	inc  e                                           ; $69c4: $1c
	ld   b, $01                                      ; $69c5: $06 $01
	ld   bc, $0401                                   ; $69c7: $01 $01 $04
	dec  e                                           ; $69ca: $1d
	ld   h, [hl]                                     ; $69cb: $66
	ld   [bc], a                                     ; $69cc: $02
	or   [hl]                                        ; $69cd: $b6
	ld   a, h                                        ; $69ce: $7c
	ld   [bc], a                                     ; $69cf: $02
	inc  [hl]                                        ; $69d0: $34
	sbc  [hl]                                        ; $69d1: $9e
	ld   [bc], a                                     ; $69d2: $02
	add  [hl]                                        ; $69d3: $86
	ld   d, d                                        ; $69d4: $52
	ld   l, l                                        ; $69d5: $6d
	ld   e, l                                        ; $69d6: $5d
	ld   a, b                                        ; $69d7: $78
	ld   [hl], c                                     ; $69d8: $71
	ld   l, l                                        ; $69d9: $6d
	sub  a                                           ; $69da: $97
	dec  c                                           ; $69db: $0d
	ld   [hl], a                                     ; $69dc: $77
	ld   [hl], c                                     ; $69dd: $71
	ld   l, a                                        ; $69de: $6f
	ld   e, c                                        ; $69df: $59
	sub  a                                           ; $69e0: $97
	ld   [hl], l                                     ; $69e1: $75
	sub  b                                           ; $69e2: $90
	ld   [bc], a                                     ; $69e3: $02
	add  [hl]                                        ; $69e4: $86
	ld   d, d                                        ; $69e5: $52
	ld   a, c                                        ; $69e6: $79
	ld   [bc], a                                     ; $69e7: $02
	ld   a, a                                        ; $69e8: $7f
	ld   e, a                                        ; $69e9: $5f
	ld   a, [hl]                                     ; $69ea: $7e
	dec  c                                           ; $69eb: $0d
	ld   d, d                                        ; $69ec: $52
	ld   d, d                                        ; $69ed: $52
	ld   a, h                                        ; $69ee: $7c
	ld   h, e                                        ; $69ef: $63
	sbc  a                                           ; $69f0: $9f
	dec  c                                           ; $69f1: $0d
	nop                                              ; $69f2: $00
	ld   a, [bc]                                     ; $69f3: $0a
	inc  e                                           ; $69f4: $1c
	dec  b                                           ; $69f5: $05
	ld   bc, $0101                                   ; $69f6: $01 $01 $01
	ld   l, e                                        ; $69f9: $6b
	sub  d                                           ; $69fa: $92
	sbc  [hl]                                        ; $69fb: $9e
	ld   l, [hl]                                     ; $69fc: $6e
	ld   e, c                                        ; $69fd: $59
	sub  a                                           ; $69fe: $97
	db   $fd                                         ; $69ff: $fd
	ld   h, e                                        ; $6a00: $63
	sub  [hl]                                        ; $6a01: $96
	ld   a, b                                        ; $6a02: $78
	sub  a                                           ; $6a03: $97
	cp   $a0                                         ; $6a04: $fe $a0
	dec  c                                           ; $6a06: $0d
	ld   [bc], a                                     ; $6a07: $02
	sbc  l                                           ; $6a08: $9d
	ld   d, h                                        ; $6a09: $54
	ld   a, h                                        ; $6a0a: $7c
	ld   a, l                                        ; $6a0b: $7d
	sub  d                                           ; $6a0c: $92
	adc  a                                           ; $6a0d: $8f
	sub  d                                           ; $6a0e: $92
	sbc  a                                           ; $6a0f: $9f
	dec  c                                           ; $6a10: $0d
	nop                                              ; $6a11: $00
	ld   a, [bc]                                     ; $6a12: $0a
	inc  e                                           ; $6a13: $1c
	inc  b                                           ; $6a14: $04
	ld   bc, $0101                                   ; $6a15: $01 $01 $01
	ld   d, h                                        ; $6a18: $54
	and  c                                           ; $6a19: $a1
	ld   a, [$8c0d]                                  ; $6a1a: $fa $0d $8c
	ld   l, l                                        ; $6a1d: $6d
	ld   d, b                                        ; $6a1e: $50
	ld   d, h                                        ; $6a1f: $54
	and  c                                           ; $6a20: $a1
	ld   l, [hl]                                     ; $6a21: $6e
	sub  b                                           ; $6a22: $90
	and  c                                           ; $6a23: $a1
	ld   a, e                                        ; $6a24: $7b
	sbc  a                                           ; $6a25: $9f
	dec  c                                           ; $6a26: $0d
	nop                                              ; $6a27: $00
	ld   a, [bc]                                     ; $6a28: $0a
	inc  e                                           ; $6a29: $1c
	ld   bc, $0505                                   ; $6a2a: $01 $05 $05
	ld   bc, $546b                                   ; $6a2d: $01 $6b $54
	ld   [hl], l                                     ; $6a30: $75
	ld   h, a                                        ; $6a31: $67
	ld   a, e                                        ; $6a32: $7b
	rst  $38                                         ; $6a33: $ff
	rst  $38                                         ; $6a34: $ff
	dec  c                                           ; $6a35: $0d
	ld   h, [hl]                                     ; $6a36: $66
	sub  c                                           ; $6a37: $91
	db   $fd                                         ; $6a38: $fd
	ld   h, e                                        ; $6a39: $63
	sub  [hl]                                        ; $6a3a: $96
	ld   a, b                                        ; $6a3b: $78
	sub  a                                           ; $6a3c: $97
	cp   $7d                                         ; $6a3d: $fe $7d
	ld   [bc], a                                     ; $6a3f: $02
	sbc  l                                           ; $6a40: $9d
	ld   d, d                                        ; $6a41: $52
	adc  h                                           ; $6a42: $8c
	ld   l, c                                        ; $6a43: $69
	and  c                                           ; $6a44: $a1
	dec  c                                           ; $6a45: $0d
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	adc  h                                           ; $6a48: $8c
	ld   l, l                                        ; $6a49: $6d
	sbc  [hl]                                        ; $6a4a: $9e
	ld   [bc], a                                     ; $6a4b: $02
	add  [hl]                                        ; $6a4c: $86
	ld   d, d                                        ; $6a4d: $52
	adc  h                                           ; $6a4e: $8c
	ld   h, l                                        ; $6a4f: $65
	sub  l                                           ; $6a50: $95
	ld   d, h                                        ; $6a51: $54
	ld   a, [$000d]                                  ; $6a52: $fa $0d $00
	ld   a, [bc]                                     ; $6a55: $0a
	dec  c                                           ; $6a56: $0d
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	rrca                                             ; $6a59: $0f
	nop                                              ; $6a5a: $00
	ld   bc, $020c                                   ; $6a5b: $01 $0c $02
	rlca                                             ; $6a5e: $07
	rrca                                             ; $6a5f: $0f
	dec  b                                           ; $6a60: $05
	inc  bc                                          ; $6a61: $03
	ld   de, $7801                                   ; $6a62: $11 $01 $78
	dec  h                                           ; $6a65: $25
	inc  bc                                          ; $6a66: $03
	ld   de, $1403                                   ; $6a67: $11 $03 $14
	dec  h                                           ; $6a6a: $25
	inc  e                                           ; $6a6b: $1c
	inc  bc                                          ; $6a6c: $03
	ld   de, $1203                                   ; $6a6d: $11 $03 $12
	dec  h                                           ; $6a70: $25
	inc  e                                           ; $6a71: $1c
	inc  bc                                          ; $6a72: $03
	ld   de, $1303                                   ; $6a73: $11 $03 $13
	dec  h                                           ; $6a76: $25
	inc  e                                           ; $6a77: $1c
	inc  bc                                          ; $6a78: $03
	ld   de, $1503                                   ; $6a79: $11 $03 $15
	dec  h                                           ; $6a7c: $25
	inc  e                                           ; $6a7d: $1c
	inc  bc                                          ; $6a7e: $03
	ld   de, $1603                                   ; $6a7f: $11 $03 $16
	dec  h                                           ; $6a82: $25
	inc  e                                           ; $6a83: $1c
	nop                                              ; $6a84: $00
	rlca                                             ; $6a85: $07
	ld   d, h                                        ; $6a86: $54
	dec  b                                           ; $6a87: $05
	inc  bc                                          ; $6a88: $03
	ld   [de], a                                     ; $6a89: $12
	ld   bc, $2578                                   ; $6a8a: $01 $78 $25
	inc  bc                                          ; $6a8d: $03
	ld   [de], a                                     ; $6a8e: $12
	inc  bc                                          ; $6a8f: $03
	ld   de, $1c25                                   ; $6a90: $11 $25 $1c
	inc  bc                                          ; $6a93: $03
	ld   [de], a                                     ; $6a94: $12
	inc  bc                                          ; $6a95: $03
	inc  de                                          ; $6a96: $13
	dec  h                                           ; $6a97: $25
	inc  e                                           ; $6a98: $1c
	inc  bc                                          ; $6a99: $03
	ld   [de], a                                     ; $6a9a: $12
	inc  bc                                          ; $6a9b: $03
	inc  d                                           ; $6a9c: $14
	dec  h                                           ; $6a9d: $25
	inc  e                                           ; $6a9e: $1c
	inc  bc                                          ; $6a9f: $03
	ld   [de], a                                     ; $6aa0: $12
	inc  bc                                          ; $6aa1: $03
	dec  d                                           ; $6aa2: $15
	dec  h                                           ; $6aa3: $25
	inc  e                                           ; $6aa4: $1c
	inc  bc                                          ; $6aa5: $03
	ld   [de], a                                     ; $6aa6: $12
	inc  bc                                          ; $6aa7: $03
	ld   d, $25                                      ; $6aa8: $16 $25
	inc  e                                           ; $6aaa: $1c
	nop                                              ; $6aab: $00
	rlca                                             ; $6aac: $07
	sbc  $05                                         ; $6aad: $de $05
	inc  bc                                          ; $6aaf: $03
	inc  d                                           ; $6ab0: $14
	ld   bc, $2578                                   ; $6ab1: $01 $78 $25
	inc  bc                                          ; $6ab4: $03
	inc  d                                           ; $6ab5: $14
	inc  bc                                          ; $6ab6: $03
	ld   de, $1c25                                   ; $6ab7: $11 $25 $1c
	inc  bc                                          ; $6aba: $03
	inc  d                                           ; $6abb: $14
	inc  bc                                          ; $6abc: $03
	ld   [de], a                                     ; $6abd: $12
	dec  h                                           ; $6abe: $25
	inc  e                                           ; $6abf: $1c
	inc  bc                                          ; $6ac0: $03
	inc  d                                           ; $6ac1: $14
	inc  bc                                          ; $6ac2: $03
	inc  de                                          ; $6ac3: $13
	dec  h                                           ; $6ac4: $25
	inc  e                                           ; $6ac5: $1c
	inc  bc                                          ; $6ac6: $03
	inc  d                                           ; $6ac7: $14
	inc  bc                                          ; $6ac8: $03
	dec  d                                           ; $6ac9: $15
	dec  h                                           ; $6aca: $25
	inc  e                                           ; $6acb: $1c
	inc  bc                                          ; $6acc: $03
	inc  d                                           ; $6acd: $14
	inc  bc                                          ; $6ace: $03
	ld   d, $25                                      ; $6acf: $16 $25
	inc  e                                           ; $6ad1: $1c
	nop                                              ; $6ad2: $00
	rlca                                             ; $6ad3: $07
	sbc  c                                           ; $6ad4: $99
	dec  b                                           ; $6ad5: $05
	inc  bc                                          ; $6ad6: $03
	inc  de                                          ; $6ad7: $13
	ld   bc, $2578                                   ; $6ad8: $01 $78 $25
	inc  bc                                          ; $6adb: $03
	inc  de                                          ; $6adc: $13
	inc  bc                                          ; $6add: $03
	ld   de, $1c25                                   ; $6ade: $11 $25 $1c
	inc  bc                                          ; $6ae1: $03
	inc  de                                          ; $6ae2: $13
	inc  bc                                          ; $6ae3: $03
	ld   [de], a                                     ; $6ae4: $12
	dec  h                                           ; $6ae5: $25
	inc  e                                           ; $6ae6: $1c
	inc  bc                                          ; $6ae7: $03
	inc  de                                          ; $6ae8: $13
	inc  bc                                          ; $6ae9: $03
	inc  d                                           ; $6aea: $14
	dec  h                                           ; $6aeb: $25
	inc  e                                           ; $6aec: $1c
	inc  bc                                          ; $6aed: $03
	inc  de                                          ; $6aee: $13
	inc  bc                                          ; $6aef: $03
	dec  d                                           ; $6af0: $15
	dec  h                                           ; $6af1: $25
	inc  e                                           ; $6af2: $1c
	inc  bc                                          ; $6af3: $03
	inc  de                                          ; $6af4: $13
	inc  bc                                          ; $6af5: $03
	ld   d, $25                                      ; $6af6: $16 $25
	inc  e                                           ; $6af8: $1c
	nop                                              ; $6af9: $00
	rlca                                             ; $6afa: $07
	ld   l, b                                        ; $6afb: $68
	ld   b, $03                                      ; $6afc: $06 $03
	dec  d                                           ; $6afe: $15
	ld   bc, $2578                                   ; $6aff: $01 $78 $25
	inc  bc                                          ; $6b02: $03
	dec  d                                           ; $6b03: $15
	inc  bc                                          ; $6b04: $03
	ld   de, $1c25                                   ; $6b05: $11 $25 $1c
	inc  bc                                          ; $6b08: $03
	dec  d                                           ; $6b09: $15
	inc  bc                                          ; $6b0a: $03
	ld   [de], a                                     ; $6b0b: $12
	dec  h                                           ; $6b0c: $25
	inc  e                                           ; $6b0d: $1c
	inc  bc                                          ; $6b0e: $03
	dec  d                                           ; $6b0f: $15
	inc  bc                                          ; $6b10: $03
	inc  d                                           ; $6b11: $14
	dec  h                                           ; $6b12: $25
	inc  e                                           ; $6b13: $1c
	inc  bc                                          ; $6b14: $03
	dec  d                                           ; $6b15: $15
	inc  bc                                          ; $6b16: $03
	inc  de                                          ; $6b17: $13
	dec  h                                           ; $6b18: $25
	inc  e                                           ; $6b19: $1c
	inc  bc                                          ; $6b1a: $03
	dec  d                                           ; $6b1b: $15
	inc  bc                                          ; $6b1c: $03
	ld   d, $25                                      ; $6b1d: $16 $25
	inc  e                                           ; $6b1f: $1c
	nop                                              ; $6b20: $00
	ld   b, $23                                      ; $6b21: $06 $23
	ld   b, $07                                      ; $6b23: $06 $07
	ld   h, e                                        ; $6b25: $63
	rrca                                             ; $6b26: $0f
	inc  bc                                          ; $6b27: $03
	inc  hl                                          ; $6b28: $23
	ld   bc, $25c2                                   ; $6b29: $01 $c2 $25
	inc  bc                                          ; $6b2c: $03
	inc  h                                           ; $6b2d: $24
	ld   bc, $25c2                                   ; $6b2e: $01 $c2 $25
	inc  e                                           ; $6b31: $1c
	inc  bc                                          ; $6b32: $03
	dec  h                                           ; $6b33: $25
	ld   bc, $25c2                                   ; $6b34: $01 $c2 $25
	inc  e                                           ; $6b37: $1c
	nop                                              ; $6b38: $00
	rlca                                             ; $6b39: $07
	ld   c, $10                                      ; $6b3a: $0e $10
	inc  bc                                          ; $6b3c: $03
	inc  h                                           ; $6b3d: $24
	ld   bc, $25ff                                   ; $6b3e: $01 $ff $25
	nop                                              ; $6b41: $00
	rlca                                             ; $6b42: $07
	add  sp, $10                                     ; $6b43: $e8 $10
	inc  bc                                          ; $6b45: $03
	dec  h                                           ; $6b46: $25
	ld   bc, $25ff                                   ; $6b47: $01 $ff $25
	nop                                              ; $6b4a: $00
	rlca                                             ; $6b4b: $07
	call nz, $0311                                   ; $6b4c: $c4 $11 $03
	inc  hl                                          ; $6b4f: $23
	ld   bc, $25ff                                   ; $6b50: $01 $ff $25
	nop                                              ; $6b53: $00
	rlca                                             ; $6b54: $07
	ld   c, [hl]                                     ; $6b55: $4e
	inc  de                                          ; $6b56: $13
	inc  bc                                          ; $6b57: $03
	ld   [hl+], a                                    ; $6b58: $22
	ld   bc, $25ff                                   ; $6b59: $01 $ff $25
	nop                                              ; $6b5c: $00
	rlca                                             ; $6b5d: $07
	add  a                                           ; $6b5e: $87
	ld   [de], a                                     ; $6b5f: $12
	inc  bc                                          ; $6b60: $03
	ld   hl, $ff01                                   ; $6b61: $21 $01 $ff
	dec  h                                           ; $6b64: $25
	nop                                              ; $6b65: $00
	ld   b, $3e                                      ; $6b66: $06 $3e
	inc  d                                           ; $6b68: $14
	rlca                                             ; $6b69: $07
	ld   h, e                                        ; $6b6a: $63
	rrca                                             ; $6b6b: $0f
	inc  bc                                          ; $6b6c: $03
	inc  hl                                          ; $6b6d: $23
	ld   bc, $25c2                                   ; $6b6e: $01 $c2 $25
	inc  bc                                          ; $6b71: $03
	inc  h                                           ; $6b72: $24
	ld   bc, $25c2                                   ; $6b73: $01 $c2 $25
	inc  e                                           ; $6b76: $1c
	inc  bc                                          ; $6b77: $03
	dec  h                                           ; $6b78: $25
	ld   bc, $25c2                                   ; $6b79: $01 $c2 $25
	inc  e                                           ; $6b7c: $1c
	nop                                              ; $6b7d: $00
	rlca                                             ; $6b7e: $07
	ld   c, $10                                      ; $6b7f: $0e $10
	inc  bc                                          ; $6b81: $03
	inc  h                                           ; $6b82: $24
	ld   bc, $25ff                                   ; $6b83: $01 $ff $25
	nop                                              ; $6b86: $00
	rlca                                             ; $6b87: $07
	add  sp, $10                                     ; $6b88: $e8 $10
	inc  bc                                          ; $6b8a: $03
	dec  h                                           ; $6b8b: $25
	ld   bc, $25ff                                   ; $6b8c: $01 $ff $25
	nop                                              ; $6b8f: $00
	rlca                                             ; $6b90: $07
	call nz, $0311                                   ; $6b91: $c4 $11 $03
	inc  hl                                          ; $6b94: $23
	ld   bc, $25ff                                   ; $6b95: $01 $ff $25
	nop                                              ; $6b98: $00
	rlca                                             ; $6b99: $07
	ld   c, [hl]                                     ; $6b9a: $4e
	inc  de                                          ; $6b9b: $13
	inc  bc                                          ; $6b9c: $03
	ld   [hl+], a                                    ; $6b9d: $22
	ld   bc, $25ff                                   ; $6b9e: $01 $ff $25
	nop                                              ; $6ba1: $00
	rlca                                             ; $6ba2: $07
	add  a                                           ; $6ba3: $87
	ld   [de], a                                     ; $6ba4: $12
	inc  bc                                          ; $6ba5: $03
	ld   hl, $ff01                                   ; $6ba6: $21 $01 $ff
	dec  h                                           ; $6ba9: $25
	nop                                              ; $6baa: $00
	ld   b, $3e                                      ; $6bab: $06 $3e
	inc  d                                           ; $6bad: $14
	rlca                                             ; $6bae: $07
	ld   h, e                                        ; $6baf: $63
	rrca                                             ; $6bb0: $0f
	inc  bc                                          ; $6bb1: $03
	inc  hl                                          ; $6bb2: $23
	ld   bc, $25c2                                   ; $6bb3: $01 $c2 $25
	inc  bc                                          ; $6bb6: $03
	inc  h                                           ; $6bb7: $24
	ld   bc, $25c2                                   ; $6bb8: $01 $c2 $25
	inc  e                                           ; $6bbb: $1c
	inc  bc                                          ; $6bbc: $03
	dec  h                                           ; $6bbd: $25
	ld   bc, $25c2                                   ; $6bbe: $01 $c2 $25
	inc  e                                           ; $6bc1: $1c
	nop                                              ; $6bc2: $00
	rlca                                             ; $6bc3: $07
	add  sp, $10                                     ; $6bc4: $e8 $10
	inc  bc                                          ; $6bc6: $03
	dec  h                                           ; $6bc7: $25
	ld   bc, $25ff                                   ; $6bc8: $01 $ff $25
	nop                                              ; $6bcb: $00
	rlca                                             ; $6bcc: $07
	ld   c, $10                                      ; $6bcd: $0e $10
	inc  bc                                          ; $6bcf: $03
	inc  h                                           ; $6bd0: $24
	ld   bc, $25ff                                   ; $6bd1: $01 $ff $25
	nop                                              ; $6bd4: $00
	rlca                                             ; $6bd5: $07
	call nz, $0311                                   ; $6bd6: $c4 $11 $03
	inc  hl                                          ; $6bd9: $23
	ld   bc, $25ff                                   ; $6bda: $01 $ff $25
	nop                                              ; $6bdd: $00
	rlca                                             ; $6bde: $07
	ld   c, [hl]                                     ; $6bdf: $4e
	inc  de                                          ; $6be0: $13
	inc  bc                                          ; $6be1: $03
	ld   [hl+], a                                    ; $6be2: $22
	ld   bc, $25ff                                   ; $6be3: $01 $ff $25
	nop                                              ; $6be6: $00
	rlca                                             ; $6be7: $07
	add  a                                           ; $6be8: $87
	ld   [de], a                                     ; $6be9: $12
	inc  bc                                          ; $6bea: $03
	ld   hl, $ff01                                   ; $6beb: $21 $01 $ff
	dec  h                                           ; $6bee: $25
	nop                                              ; $6bef: $00
	ld   b, $3e                                      ; $6bf0: $06 $3e
	inc  d                                           ; $6bf2: $14
	rlca                                             ; $6bf3: $07
	ld   h, e                                        ; $6bf4: $63
	rrca                                             ; $6bf5: $0f
	inc  bc                                          ; $6bf6: $03
	inc  hl                                          ; $6bf7: $23
	ld   bc, $25c2                                   ; $6bf8: $01 $c2 $25
	inc  bc                                          ; $6bfb: $03
	inc  h                                           ; $6bfc: $24
	ld   bc, $25c2                                   ; $6bfd: $01 $c2 $25
	inc  e                                           ; $6c00: $1c
	inc  bc                                          ; $6c01: $03
	dec  h                                           ; $6c02: $25
	ld   bc, $25c2                                   ; $6c03: $01 $c2 $25
	inc  e                                           ; $6c06: $1c
	nop                                              ; $6c07: $00
	rlca                                             ; $6c08: $07
	ld   c, [hl]                                     ; $6c09: $4e
	inc  de                                          ; $6c0a: $13
	inc  bc                                          ; $6c0b: $03
	ld   [hl+], a                                    ; $6c0c: $22
	ld   bc, $25ff                                   ; $6c0d: $01 $ff $25
	nop                                              ; $6c10: $00
	rlca                                             ; $6c11: $07
	add  sp, $10                                     ; $6c12: $e8 $10
	inc  bc                                          ; $6c14: $03
	dec  h                                           ; $6c15: $25
	ld   bc, $25ff                                   ; $6c16: $01 $ff $25
	nop                                              ; $6c19: $00
	rlca                                             ; $6c1a: $07
	call nz, $0311                                   ; $6c1b: $c4 $11 $03
	inc  hl                                          ; $6c1e: $23
	ld   bc, $25ff                                   ; $6c1f: $01 $ff $25
	nop                                              ; $6c22: $00
	rlca                                             ; $6c23: $07
	ld   c, $10                                      ; $6c24: $0e $10
	inc  bc                                          ; $6c26: $03
	inc  h                                           ; $6c27: $24
	ld   bc, $25ff                                   ; $6c28: $01 $ff $25
	nop                                              ; $6c2b: $00
	rlca                                             ; $6c2c: $07
	add  a                                           ; $6c2d: $87
	ld   [de], a                                     ; $6c2e: $12
	inc  bc                                          ; $6c2f: $03
	ld   hl, $ff01                                   ; $6c30: $21 $01 $ff
	dec  h                                           ; $6c33: $25
	nop                                              ; $6c34: $00
	ld   b, $3e                                      ; $6c35: $06 $3e
	inc  d                                           ; $6c37: $14
	rlca                                             ; $6c38: $07
	ld   h, e                                        ; $6c39: $63
	rrca                                             ; $6c3a: $0f
	inc  bc                                          ; $6c3b: $03
	inc  hl                                          ; $6c3c: $23
	ld   bc, $25c2                                   ; $6c3d: $01 $c2 $25
	inc  bc                                          ; $6c40: $03
	inc  h                                           ; $6c41: $24
	ld   bc, $25c2                                   ; $6c42: $01 $c2 $25
	inc  e                                           ; $6c45: $1c
	inc  bc                                          ; $6c46: $03
	dec  h                                           ; $6c47: $25
	ld   bc, $25c2                                   ; $6c48: $01 $c2 $25
	inc  e                                           ; $6c4b: $1c
	nop                                              ; $6c4c: $00
	rlca                                             ; $6c4d: $07
	call nz, $0311                                   ; $6c4e: $c4 $11 $03
	inc  hl                                          ; $6c51: $23
	ld   bc, $25ff                                   ; $6c52: $01 $ff $25
	nop                                              ; $6c55: $00
	rlca                                             ; $6c56: $07
	add  sp, $10                                     ; $6c57: $e8 $10
	inc  bc                                          ; $6c59: $03
	dec  h                                           ; $6c5a: $25
	ld   bc, $25ff                                   ; $6c5b: $01 $ff $25
	nop                                              ; $6c5e: $00
	rlca                                             ; $6c5f: $07
	ld   c, $10                                      ; $6c60: $0e $10
	inc  bc                                          ; $6c62: $03
	inc  h                                           ; $6c63: $24
	ld   bc, $25ff                                   ; $6c64: $01 $ff $25
	nop                                              ; $6c67: $00
	rlca                                             ; $6c68: $07
	ld   c, [hl]                                     ; $6c69: $4e
	inc  de                                          ; $6c6a: $13
	inc  bc                                          ; $6c6b: $03
	ld   [hl+], a                                    ; $6c6c: $22
	ld   bc, $25ff                                   ; $6c6d: $01 $ff $25
	nop                                              ; $6c70: $00
	rlca                                             ; $6c71: $07
	add  a                                           ; $6c72: $87
	ld   [de], a                                     ; $6c73: $12
	inc  bc                                          ; $6c74: $03
	ld   hl, $ff01                                   ; $6c75: $21 $01 $ff
	dec  h                                           ; $6c78: $25
	nop                                              ; $6c79: $00
	ld   b, $3e                                      ; $6c7a: $06 $3e
	inc  d                                           ; $6c7c: $14
	rlca                                             ; $6c7d: $07
	ld   h, e                                        ; $6c7e: $63
	rrca                                             ; $6c7f: $0f
	inc  bc                                          ; $6c80: $03
	inc  hl                                          ; $6c81: $23
	ld   bc, $25c2                                   ; $6c82: $01 $c2 $25
	inc  bc                                          ; $6c85: $03
	inc  h                                           ; $6c86: $24
	ld   bc, $25c2                                   ; $6c87: $01 $c2 $25
	inc  e                                           ; $6c8a: $1c
	inc  bc                                          ; $6c8b: $03
	dec  h                                           ; $6c8c: $25
	ld   bc, $25c2                                   ; $6c8d: $01 $c2 $25
	inc  e                                           ; $6c90: $1c
	nop                                              ; $6c91: $00
	rlca                                             ; $6c92: $07
	add  a                                           ; $6c93: $87
	ld   [de], a                                     ; $6c94: $12
	inc  bc                                          ; $6c95: $03
	ld   hl, $ff01                                   ; $6c96: $21 $01 $ff
	dec  h                                           ; $6c99: $25
	nop                                              ; $6c9a: $00
	rlca                                             ; $6c9b: $07
	add  sp, $10                                     ; $6c9c: $e8 $10
	inc  bc                                          ; $6c9e: $03
	dec  h                                           ; $6c9f: $25
	ld   bc, $25ff                                   ; $6ca0: $01 $ff $25
	nop                                              ; $6ca3: $00
	rlca                                             ; $6ca4: $07
	call nz, $0311                                   ; $6ca5: $c4 $11 $03
	inc  hl                                          ; $6ca8: $23
	ld   bc, $25ff                                   ; $6ca9: $01 $ff $25
	nop                                              ; $6cac: $00
	rlca                                             ; $6cad: $07
	ld   c, [hl]                                     ; $6cae: $4e
	inc  de                                          ; $6caf: $13
	inc  bc                                          ; $6cb0: $03
	ld   [hl+], a                                    ; $6cb1: $22
	ld   bc, $25ff                                   ; $6cb2: $01 $ff $25
	nop                                              ; $6cb5: $00
	rlca                                             ; $6cb6: $07
	ld   c, $10                                      ; $6cb7: $0e $10
	inc  bc                                          ; $6cb9: $03
	inc  h                                           ; $6cba: $24
	ld   bc, $25ff                                   ; $6cbb: $01 $ff $25
	nop                                              ; $6cbe: $00
	ld   b, $3e                                      ; $6cbf: $06 $3e
	inc  d                                           ; $6cc1: $14
	ld   c, $8f                                      ; $6cc2: $0e $8f
	rrca                                             ; $6cc4: $0f
	nop                                              ; $6cc5: $00
	ld   bc, $0101                                   ; $6cc6: $01 $01 $01
	inc  bc                                          ; $6cc9: $03
	ld   l, e                                        ; $6cca: $6b
	sbc  e                                           ; $6ccb: $9b
	ld   l, e                                        ; $6ccc: $6b
	sbc  e                                           ; $6ccd: $9b
	dec  b                                           ; $6cce: $05
	adc  [hl]                                        ; $6ccf: $8e
	inc  bc                                          ; $6cd0: $03
	sub  l                                           ; $6cd1: $95
	ld   e, d                                        ; $6cd2: $5a
	inc  bc                                          ; $6cd3: $03
	add  b                                           ; $6cd4: $80
	sbc  c                                           ; $6cd5: $99
	dec  c                                           ; $6cd6: $0d
	db   $10                                         ; $6cd7: $10
	inc  bc                                          ; $6cd8: $03
	ld   l, a                                        ; $6cd9: $6f
	ld   [bc], a                                     ; $6cda: $02
	xor  c                                           ; $6cdb: $a9
	ld   l, [hl]                                     ; $6cdc: $6e
	ld   a, b                                        ; $6cdd: $78
	rst  $38                                         ; $6cde: $ff
	rst  $38                                         ; $6cdf: $ff
	ld   bc, $0d04                                   ; $6ce0: $01 $04 $0d
	nop                                              ; $6ce3: $00
	ld   a, [bc]                                     ; $6ce4: $0a
	rrca                                             ; $6ce5: $0f
	ld   bc, $0100                                   ; $6ce6: $01 $00 $01
	ld   [$6300], sp                                 ; $6ce9: $08 $00 $63
	and  c                                           ; $6cec: $a1
	ld   a, [$000d]                                  ; $6ced: $fa $0d $00
	ld   a, [bc]                                     ; $6cf0: $0a
	inc  de                                          ; $6cf1: $13
	dec  b                                           ; $6cf2: $05
	inc  e                                           ; $6cf3: $1c
	ld   bc, $0505                                   ; $6cf4: $01 $05 $05
	ld   bc, $5996                                   ; $6cf7: $01 $96 $59
	ld   [hl], c                                     ; $6cfa: $71
	ld   l, l                                        ; $6cfb: $6d
	rst  $38                                         ; $6cfc: $ff
	rst  $38                                         ; $6cfd: $ff
	dec  c                                           ; $6cfe: $0d
	ld   [bc], a                                     ; $6cff: $02
	xor  c                                           ; $6d00: $a9
	ld   a, c                                        ; $6d01: $79
	ld   [bc], a                                     ; $6d02: $02
	ld   a, e                                        ; $6d03: $7b
	sbc  l                                           ; $6d04: $9d
	ld   a, b                                        ; $6d05: $78
	ld   d, d                                        ; $6d06: $52
	ld   e, c                                        ; $6d07: $59
	halt                                             ; $6d08: $76
	dec  b                                           ; $6d09: $05
	pop  de                                          ; $6d0a: $d1
	ld   [hl], c                                     ; $6d0b: $71
	ld   [hl], h                                     ; $6d0c: $74
	dec  c                                           ; $6d0d: $0d
	adc  h                                           ; $6d0e: $8c
	ld   h, l                                        ; $6d0f: $65
	ld   l, l                                        ; $6d10: $6d
	sbc  a                                           ; $6d11: $9f
	dec  c                                           ; $6d12: $0d
	nop                                              ; $6d13: $00
	ld   a, [bc]                                     ; $6d14: $0a
	rrca                                             ; $6d15: $0f
	nop                                              ; $6d16: $00
	ld   bc, $ff01                                   ; $6d17: $01 $01 $ff
	rst  $38                                         ; $6d1a: $ff
	ld   [hl], a                                     ; $6d1b: $77
	ld   d, h                                        ; $6d1c: $54
	ld   h, l                                        ; $6d1d: $65
	ld   [hl], h                                     ; $6d1e: $74
	sbc  [hl]                                        ; $6d1f: $9e
	ld   h, c                                        ; $6d20: $61
	ld   h, c                                        ; $6d21: $61
	ld   e, d                                        ; $6d22: $5a
	ld   sp, hl                                      ; $6d23: $f9
	dec  c                                           ; $6d24: $0d
	nop                                              ; $6d25: $00
	ld   a, [bc]                                     ; $6d26: $0a
	inc  e                                           ; $6d27: $1c
	ld   bc, $0101                                   ; $6d28: $01 $01 $01
	ld   bc, $0e04                                   ; $6d2b: $01 $04 $0e
	inc  bc                                          ; $6d2e: $03
	sub  b                                           ; $6d2f: $90
	ld   h, e                                        ; $6d30: $63
	and  c                                           ; $6d31: $a1
	ld   e, c                                        ; $6d32: $59
	sub  a                                           ; $6d33: $97
	ld   [bc], a                                     ; $6d34: $02
	jp   nz, $6d52                                   ; $6d35: $c2 $52 $6d

	and  c                                           ; $6d38: $a1
	ld   [hl], l                                     ; $6d39: $75
	ld   h, a                                        ; $6d3a: $67
	sbc  a                                           ; $6d3b: $9f
	dec  c                                           ; $6d3c: $0d
	ld   h, c                                        ; $6d3d: $61
	ld   a, h                                        ; $6d3e: $7c
	dec  b                                           ; $6d3f: $05
	adc  [hl]                                        ; $6d40: $8e
	inc  bc                                          ; $6d41: $03
	sub  l                                           ; $6d42: $95
	ld   a, c                                        ; $6d43: $79
	ld   a, h                                        ; $6d44: $7c
	sbc  c                                           ; $6d45: $99
	and  c                                           ; $6d46: $a1
	ld   l, [hl]                                     ; $6d47: $6e
	ld   [hl], c                                     ; $6d48: $71
	ld   [hl], h                                     ; $6d49: $74
	rst  $38                                         ; $6d4a: $ff
	rst  $38                                         ; $6d4b: $ff
	dec  c                                           ; $6d4c: $0d
	nop                                              ; $6d4d: $00
	ld   a, [bc]                                     ; $6d4e: $0a
	inc  e                                           ; $6d4f: $1c
	ld   bc, $0505                                   ; $6d50: $01 $05 $05
	ld   bc, $7c50                                   ; $6d53: $01 $50 $7c
	rst  $38                                         ; $6d56: $ff
	rst  $38                                         ; $6d57: $ff
	dec  c                                           ; $6d58: $0d
	inc  bc                                          ; $6d59: $03
	ld   [$6b65], a                                  ; $6d5a: $ea $65 $6b
	add  c                                           ; $6d5d: $81
	sbc  d                                           ; $6d5e: $9a
	ld   l, a                                        ; $6d5f: $6f
	sub  c                                           ; $6d60: $91
	ld   [hl], c                                     ; $6d61: $71
	ld   l, l                                        ; $6d62: $6d
	sub  b                                           ; $6d63: $90
	ld   a, h                                        ; $6d64: $7c
	ld   e, d                                        ; $6d65: $5a
	dec  c                                           ; $6d66: $0d
	ld   d, b                                        ; $6d67: $50
	sbc  c                                           ; $6d68: $99
	and  c                                           ; $6d69: $a1
	ld   [hl], l                                     ; $6d6a: $75
	ld   h, a                                        ; $6d6b: $67
	sbc  a                                           ; $6d6c: $9f
	dec  c                                           ; $6d6d: $0d
	nop                                              ; $6d6e: $00
	ld   a, [bc]                                     ; $6d6f: $0a
	ld   d, $2f                                      ; $6d70: $16 $2f
	rrca                                             ; $6d72: $0f
	ld   bc, $0105                                   ; $6d73: $01 $05 $01
	ret  nc                                          ; $6d76: $d0

	and  l                                           ; $6d77: $a5
	sbc  [hl]                                        ; $6d78: $9e
	ld   h, c                                        ; $6d79: $61
	sbc  d                                           ; $6d7a: $9a
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	dec  c                                           ; $6d7d: $0d
	nop                                              ; $6d7e: $00
	ld   a, [bc]                                     ; $6d7f: $0a
	rrca                                             ; $6d80: $0f
	nop                                              ; $6d81: $00
	ld   bc, wVisitedTitleScreen                                   ; $6d82: $01 $01 $c2
	or   d                                           ; $6d85: $b2
	call nz, $ffc9                                   ; $6d86: $c4 $c9 $ff
	rst  $38                                         ; $6d89: $ff
	ld   sp, hl                                      ; $6d8a: $f9
	dec  c                                           ; $6d8b: $0d
	nop                                              ; $6d8c: $00

Jump_065_6d8d:
	ld   a, [bc]                                     ; $6d8d: $0a
	rrca                                             ; $6d8e: $0f
	ld   bc, $0105                                   ; $6d8f: $01 $05 $01
	ld   h, c                                        ; $6d92: $61
	and  c                                           ; $6d93: $a1
	ld   [hl], a                                     ; $6d94: $77
	ld   a, h                                        ; $6d95: $7c
	ld   [bc], a                                     ; $6d96: $02
	sbc  c                                           ; $6d97: $99
	ld   [bc], a                                     ; $6d98: $02
	rra                                              ; $6d99: $1f
	ld   a, h                                        ; $6d9a: $7c
	jp   nz, $c4b2                                   ; $6d9b: $c2 $b2 $c4

	ret                                              ; $6d9e: $c9


	ld   [hl], l                                     ; $6d9f: $75
	ld   h, a                                        ; $6da0: $67
	sbc  a                                           ; $6da1: $9f
	dec  c                                           ; $6da2: $0d
	ld   l, d                                        ; $6da3: $6a
	add  b                                           ; $6da4: $80
	ld   [bc], a                                     ; $6da5: $02
	sub  l                                           ; $6da6: $95
	ld   a, c                                        ; $6da7: $79
	dec  b                                           ; $6da8: $05
	db   $10                                         ; $6da9: $10
	ld   [hl], h                                     ; $6daa: $74
	ld   e, l                                        ; $6dab: $5d
	ld   l, [hl]                                     ; $6dac: $6e
	ld   h, e                                        ; $6dad: $63
	ld   d, d                                        ; $6dae: $52
	ld   a, e                                        ; $6daf: $7b
	ld   a, [$000d]                                  ; $6db0: $fa $0d $00
	ld   a, [bc]                                     ; $6db3: $0a
	rrca                                             ; $6db4: $0f
	nop                                              ; $6db5: $00
	ld   bc, $5001                                   ; $6db6: $01 $01 $50
	sbc  b                                           ; $6db9: $98
	ld   e, d                                        ; $6dba: $5a
	halt                                             ; $6dbb: $76
	ld   d, h                                        ; $6dbc: $54
	rst  $38                                         ; $6dbd: $ff
	rst  $38                                         ; $6dbe: $ff
	ld   h, e                                        ; $6dbf: $63
	ld   e, l                                        ; $6dc0: $5d
	sub  a                                           ; $6dc1: $97
	ld   h, e                                        ; $6dc2: $63
	and  c                                           ; $6dc3: $a1
	sbc  a                                           ; $6dc4: $9f
	dec  c                                           ; $6dc5: $0d
	nop                                              ; $6dc6: $00
	ld   a, [bc]                                     ; $6dc7: $0a
	ld   c, $8f                                      ; $6dc8: $0e $8f
	inc  e                                           ; $6dca: $1c
	ld   bc, $0101                                   ; $6dcb: $01 $01 $01
	ld   bc, $e004                                   ; $6dce: $01 $04 $e0
	inc  bc                                          ; $6dd1: $03
	dec  hl                                          ; $6dd2: $2b
	ld   [hl], l                                     ; $6dd3: $75
	ld   h, a                                        ; $6dd4: $67
	sub  [hl]                                        ; $6dd5: $96
	sbc  a                                           ; $6dd6: $9f
	dec  c                                           ; $6dd7: $0d
	db   $fd                                         ; $6dd8: $fd
	adc  h                                           ; $6dd9: $8c
	ld   l, l                                        ; $6dda: $6d
	ld   [bc], a                                     ; $6ddb: $02
	add  [hl]                                        ; $6ddc: $86
	ld   d, d                                        ; $6ddd: $52
	adc  h                                           ; $6dde: $8c
	ld   h, l                                        ; $6ddf: $65
	sub  l                                           ; $6de0: $95
	ld   d, h                                        ; $6de1: $54
	cp   $0d                                         ; $6de2: $fe $0d
	ld   [hl], l                                     ; $6de4: $75
	ld   h, a                                        ; $6de5: $67
	ld   e, c                                        ; $6de6: $59
	sub  a                                           ; $6de7: $97
	ld   a, e                                        ; $6de8: $7b
	rst  $38                                         ; $6de9: $ff
	rst  $38                                         ; $6dea: $ff
	sub  $d6                                         ; $6deb: $d6 $d6
	sub  $9f                                         ; $6ded: $d6 $9f
	dec  c                                           ; $6def: $0d
	nop                                              ; $6df0: $00
	dec  d                                           ; $6df1: $15
	nop                                              ; $6df2: $00
	ld   de, $0600                                   ; $6df3: $11 $00 $06
	db   $e4                                         ; $6df6: $e4
	rlca                                             ; $6df7: $07
	ld   a, [bc]                                     ; $6df8: $0a
	inc  e                                           ; $6df9: $1c
	ld   bc, $0000                                   ; $6dfa: $01 $00 $00
	add  hl, bc                                      ; $6dfd: $09
	inc  a                                           ; $6dfe: $3c
	inc  h                                           ; $6dff: $24
	ld   bc, $8f0e                                   ; $6e00: $01 $0e $8f
	rrca                                             ; $6e03: $0f
	nop                                              ; $6e04: $00
	ld   bc, $0101                                   ; $6e05: $01 $01 $01
	inc  bc                                          ; $6e08: $03
	ld   l, e                                        ; $6e09: $6b
	sbc  e                                           ; $6e0a: $9b
	ld   l, e                                        ; $6e0b: $6b
	sbc  e                                           ; $6e0c: $9b
	dec  b                                           ; $6e0d: $05
	adc  [hl]                                        ; $6e0e: $8e
	inc  bc                                          ; $6e0f: $03
	sub  l                                           ; $6e10: $95
	ld   e, d                                        ; $6e11: $5a
	inc  bc                                          ; $6e12: $03
	add  b                                           ; $6e13: $80
	sbc  c                                           ; $6e14: $99
	dec  c                                           ; $6e15: $0d
	db   $10                                         ; $6e16: $10
	inc  bc                                          ; $6e17: $03
	ld   l, a                                        ; $6e18: $6f
	ld   [bc], a                                     ; $6e19: $02
	xor  c                                           ; $6e1a: $a9
	ld   l, [hl]                                     ; $6e1b: $6e
	ld   a, b                                        ; $6e1c: $78
	rst  $38                                         ; $6e1d: $ff
	rst  $38                                         ; $6e1e: $ff
	ld   bc, $0d04                                   ; $6e1f: $01 $04 $0d
	nop                                              ; $6e22: $00
	ld   a, [bc]                                     ; $6e23: $0a
	rrca                                             ; $6e24: $0f
	ld   [bc], a                                     ; $6e25: $02
	ld   bc, $0801                                   ; $6e26: $01 $01 $08
	nop                                              ; $6e29: $00
	ld   h, e                                        ; $6e2a: $63
	and  c                                           ; $6e2b: $a1
	sbc  a                                           ; $6e2c: $9f
	dec  c                                           ; $6e2d: $0d
	nop                                              ; $6e2e: $00
	ld   a, [bc]                                     ; $6e2f: $0a
	inc  de                                          ; $6e30: $13
	dec  b                                           ; $6e31: $05
	inc  e                                           ; $6e32: $1c
	ld   [bc], a                                     ; $6e33: $02
	inc  b                                           ; $6e34: $04
	inc  b                                           ; $6e35: $04
	ld   bc, $5996                                   ; $6e36: $01 $96 $59
	ld   [hl], c                                     ; $6e39: $71
	ld   l, l                                        ; $6e3a: $6d
	ld   [hl], l                                     ; $6e3b: $75
	ld   h, a                                        ; $6e3c: $67
	sbc  l                                           ; $6e3d: $9d
	sbc  [hl]                                        ; $6e3e: $9e
	dec  c                                           ; $6e3f: $0d
	ld   [bc], a                                     ; $6e40: $02
	xor  c                                           ; $6e41: $a9
	ld   a, c                                        ; $6e42: $79
	ld   [bc], a                                     ; $6e43: $02
	ld   a, e                                        ; $6e44: $7b
	ld   [hl], c                                     ; $6e45: $71
	ld   [hl], h                                     ; $6e46: $74
	rst  $38                                         ; $6e47: $ff
	rst  $38                                         ; $6e48: $ff
	dec  c                                           ; $6e49: $0d
	nop                                              ; $6e4a: $00
	ld   a, [bc]                                     ; $6e4b: $0a
	rrca                                             ; $6e4c: $0f
	nop                                              ; $6e4d: $00
	ld   bc, $ff01                                   ; $6e4e: $01 $01 $ff
	rst  $38                                         ; $6e51: $ff
	ld   [hl], a                                     ; $6e52: $77
	ld   d, h                                        ; $6e53: $54
	ld   h, l                                        ; $6e54: $65
	ld   [hl], h                                     ; $6e55: $74
	sbc  [hl]                                        ; $6e56: $9e
	ld   h, c                                        ; $6e57: $61
	ld   h, c                                        ; $6e58: $61
	ld   e, d                                        ; $6e59: $5a
	ld   sp, hl                                      ; $6e5a: $f9
	dec  c                                           ; $6e5b: $0d
	nop                                              ; $6e5c: $00
	ld   a, [bc]                                     ; $6e5d: $0a
	inc  e                                           ; $6e5e: $1c
	ld   [bc], a                                     ; $6e5f: $02
	ld   bc, $0101                                   ; $6e60: $01 $01 $01
	inc  bc                                          ; $6e63: $03
	ld   l, h                                        ; $6e64: $6c
	dec  b                                           ; $6e65: $05
	ld   h, $59                                      ; $6e66: $26 $59
	sub  a                                           ; $6e68: $97
	ld   [bc], a                                     ; $6e69: $02
	jp   nz, $6d52                                   ; $6e6a: $c2 $52 $6d

	and  c                                           ; $6e6d: $a1
	ld   [hl], l                                     ; $6e6e: $75
	ld   h, a                                        ; $6e6f: $67
	ld   a, h                                        ; $6e70: $7c
	sbc  a                                           ; $6e71: $9f
	dec  c                                           ; $6e72: $0d
	ld   h, c                                        ; $6e73: $61
	ld   a, h                                        ; $6e74: $7c
	dec  b                                           ; $6e75: $05
	adc  [hl]                                        ; $6e76: $8e
	inc  bc                                          ; $6e77: $03
	sub  l                                           ; $6e78: $95
	ld   a, c                                        ; $6e79: $79
	ld   a, h                                        ; $6e7a: $7c
	sbc  c                                           ; $6e7b: $99
	ld   a, h                                        ; $6e7c: $7c
	ld   l, [hl]                                     ; $6e7d: $6e
	halt                                             ; $6e7e: $76
	rst  $38                                         ; $6e7f: $ff
	rst  $38                                         ; $6e80: $ff
	dec  c                                           ; $6e81: $0d
	nop                                              ; $6e82: $00
	ld   a, [bc]                                     ; $6e83: $0a
	inc  e                                           ; $6e84: $1c
	ld   [bc], a                                     ; $6e85: $02
	inc  b                                           ; $6e86: $04
	inc  b                                           ; $6e87: $04
	ld   bc, $8b03                                   ; $6e88: $01 $03 $8b
	ld   a, l                                        ; $6e8b: $7d
	rst  $38                                         ; $6e8c: $ff
	rst  $38                                         ; $6e8d: $ff
	dec  c                                           ; $6e8e: $0d
	inc  bc                                          ; $6e8f: $03
	ld   [$6b65], a                                  ; $6e90: $ea $65 $6b
	add  c                                           ; $6e93: $81
	sbc  d                                           ; $6e94: $9a
	ld   l, l                                        ; $6e95: $6d
	sub  b                                           ; $6e96: $90
	ld   a, h                                        ; $6e97: $7c
	ld   e, d                                        ; $6e98: $5a
	dec  c                                           ; $6e99: $0d
	ld   d, b                                        ; $6e9a: $50
	sbc  b                                           ; $6e9b: $98
	adc  h                                           ; $6e9c: $8c
	ld   h, l                                        ; $6e9d: $65
	ld   [hl], h                                     ; $6e9e: $74
	sbc  a                                           ; $6e9f: $9f
	dec  c                                           ; $6ea0: $0d
	nop                                              ; $6ea1: $00
	ld   a, [bc]                                     ; $6ea2: $0a
	ld   d, $30                                      ; $6ea3: $16 $30
	rrca                                             ; $6ea5: $0f
	ld   [bc], a                                     ; $6ea6: $02
	inc  b                                           ; $6ea7: $04
	ld   bc, $9a61                                   ; $6ea8: $01 $61 $9a
	ld   [hl], l                                     ; $6eab: $75
	ld   h, a                                        ; $6eac: $67
	sbc  l                                           ; $6ead: $9d
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	dec  c                                           ; $6eb0: $0d
	nop                                              ; $6eb1: $00
	ld   a, [bc]                                     ; $6eb2: $0a
	rrca                                             ; $6eb3: $0f
	nop                                              ; $6eb4: $00
	ld   bc, wVisitedTitleScreen                                   ; $6eb5: $01 $01 $c2
	or   d                                           ; $6eb8: $b2
	call nz, $ffc9                                   ; $6eb9: $c4 $c9 $ff
	rst  $38                                         ; $6ebc: $ff
	ld   sp, hl                                      ; $6ebd: $f9
	dec  c                                           ; $6ebe: $0d
	nop                                              ; $6ebf: $00
	ld   a, [bc]                                     ; $6ec0: $0a
	rrca                                             ; $6ec1: $0f
	ld   [bc], a                                     ; $6ec2: $02
	inc  b                                           ; $6ec3: $04
	ld   bc, $6803                                   ; $6ec4: $01 $03 $68
	ld   [bc], a                                     ; $6ec7: $02
	sub  e                                           ; $6ec8: $93
	ld   a, h                                        ; $6ec9: $7c
	ld   [bc], a                                     ; $6eca: $02
	sbc  c                                           ; $6ecb: $99
	ld   [bc], a                                     ; $6ecc: $02
	rra                                              ; $6ecd: $1f
	ld   a, h                                        ; $6ece: $7c
	jp   nz, $c4b2                                   ; $6ecf: $c2 $b2 $c4

	ret                                              ; $6ed2: $c9


	ld   [hl], l                                     ; $6ed3: $75
	ld   h, a                                        ; $6ed4: $67
	sbc  l                                           ; $6ed5: $9d
	sbc  a                                           ; $6ed6: $9f
	dec  c                                           ; $6ed7: $0d
	sbc  l                                           ; $6ed8: $9d
	ld   l, l                                        ; $6ed9: $6d
	ld   e, l                                        ; $6eda: $5d
	ld   h, l                                        ; $6edb: $65
	ld   a, h                                        ; $6edc: $7c
	inc  bc                                          ; $6edd: $03
	and  [hl]                                        ; $6ede: $a6
	dec  b                                           ; $6edf: $05
	call nc, Call_065_6597                           ; $6ee0: $d4 $97 $65
	ld   d, d                                        ; $6ee3: $52
	ld   [bc], a                                     ; $6ee4: $02
	rra                                              ; $6ee5: $1f
	ld   [bc], a                                     ; $6ee6: $02
	adc  h                                           ; $6ee7: $8c
	and  b                                           ; $6ee8: $a0
	dec  c                                           ; $6ee9: $0d
	ld   [bc], a                                     ; $6eea: $02
	sub  l                                           ; $6eeb: $95
	ld   a, c                                        ; $6eec: $79
	dec  b                                           ; $6eed: $05
	db   $10                                         ; $6eee: $10
	ld   [hl], h                                     ; $6eef: $74
	ld   e, l                                        ; $6ef0: $5d
	ld   l, [hl]                                     ; $6ef1: $6e
	ld   h, e                                        ; $6ef2: $63
	ld   d, d                                        ; $6ef3: $52
	ld   a, e                                        ; $6ef4: $7b
	sbc  a                                           ; $6ef5: $9f
	dec  c                                           ; $6ef6: $0d
	nop                                              ; $6ef7: $00
	ld   a, [bc]                                     ; $6ef8: $0a
	rrca                                             ; $6ef9: $0f
	nop                                              ; $6efa: $00
	ld   bc, $5001                                   ; $6efb: $01 $01 $50
	sbc  b                                           ; $6efe: $98
	ld   e, d                                        ; $6eff: $5a
	halt                                             ; $6f00: $76
	ld   d, h                                        ; $6f01: $54
	rst  $38                                         ; $6f02: $ff
	rst  $38                                         ; $6f03: $ff
	ld   h, a                                        ; $6f04: $67
	adc  l                                           ; $6f05: $8d
	sbc  d                                           ; $6f06: $9a
	ld   h, e                                        ; $6f07: $63
	and  c                                           ; $6f08: $a1
	sbc  a                                           ; $6f09: $9f
	dec  c                                           ; $6f0a: $0d
	nop                                              ; $6f0b: $00
	ld   a, [bc]                                     ; $6f0c: $0a
	ld   c, $8f                                      ; $6f0d: $0e $8f
	inc  e                                           ; $6f0f: $1c
	ld   [bc], a                                     ; $6f10: $02
	ld   bc, $0101                                   ; $6f11: $01 $01 $01
	ld   h, e                                        ; $6f14: $63
	add  c                                           ; $6f15: $81
	ld   h, l                                        ; $6f16: $65
	ld   e, l                                        ; $6f17: $5d
	ld   a, b                                        ; $6f18: $78
	ld   [hl], c                                     ; $6f19: $71
	ld   l, l                                        ; $6f1a: $6d
	sub  a                                           ; $6f1b: $97
	sbc  [hl]                                        ; $6f1c: $9e
	sbc  l                                           ; $6f1d: $9d
	ld   l, l                                        ; $6f1e: $6d
	ld   e, l                                        ; $6f1f: $5d
	ld   h, l                                        ; $6f20: $65
	ld   a, h                                        ; $6f21: $7c
	dec  c                                           ; $6f22: $0d
	ld   d, h                                        ; $6f23: $54
	sbc  c                                           ; $6f24: $99
	sbc  l                                           ; $6f25: $9d
	ld   h, l                                        ; $6f26: $65
	ld   e, e                                        ; $6f27: $5b
	ld   [bc], a                                     ; $6f28: $02
	di                                               ; $6f29: $f3
	and  b                                           ; $6f2a: $a0
	dec  b                                           ; $6f2b: $05
	pop  de                                          ; $6f2c: $d1
	ld   d, d                                        ; $6f2d: $52
	inc  b                                           ; $6f2e: $04
	or   c                                           ; $6f2f: $b1
	ld   e, c                                        ; $6f30: $59
	add  a                                           ; $6f31: $87
	sbc  c                                           ; $6f32: $99
	halt                                             ; $6f33: $76
	dec  c                                           ; $6f34: $0d
	ld   d, d                                        ; $6f35: $52
	ld   d, d                                        ; $6f36: $52
	ld   [hl], l                                     ; $6f37: $75
	ld   h, a                                        ; $6f38: $67
	sbc  l                                           ; $6f39: $9d
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	ld   e, b                                        ; $6f3c: $58
	ei                                               ; $6f3d: $fb
	adc  c                                           ; $6f3e: $89
	adc  c                                           ; $6f3f: $89
	adc  c                                           ; $6f40: $89
	adc  c                                           ; $6f41: $89
	ld   a, [$000d]                                  ; $6f42: $fa $0d $00
	dec  d                                           ; $6f45: $15
	ld   bc, $0011                                   ; $6f46: $01 $11 $00
	ld   b, $38                                      ; $6f49: $06 $38
	add  hl, bc                                      ; $6f4b: $09
	ld   a, [bc]                                     ; $6f4c: $0a
	add  hl, bc                                      ; $6f4d: $09
	inc  a                                           ; $6f4e: $3c
	inc  h                                           ; $6f4f: $24
	ld   [bc], a                                     ; $6f50: $02
	ld   c, $8f                                      ; $6f51: $0e $8f
	rrca                                             ; $6f53: $0f
	nop                                              ; $6f54: $00
	ld   bc, $0101                                   ; $6f55: $01 $01 $01
	inc  bc                                          ; $6f58: $03
	ld   l, e                                        ; $6f59: $6b
	sbc  e                                           ; $6f5a: $9b
	ld   l, e                                        ; $6f5b: $6b
	sbc  e                                           ; $6f5c: $9b
	dec  b                                           ; $6f5d: $05
	adc  [hl]                                        ; $6f5e: $8e
	inc  bc                                          ; $6f5f: $03
	sub  l                                           ; $6f60: $95
	ld   e, d                                        ; $6f61: $5a
	inc  bc                                          ; $6f62: $03
	add  b                                           ; $6f63: $80
	sbc  c                                           ; $6f64: $99
	dec  c                                           ; $6f65: $0d
	db   $10                                         ; $6f66: $10
	inc  bc                                          ; $6f67: $03
	ld   l, a                                        ; $6f68: $6f
	ld   [bc], a                                     ; $6f69: $02
	xor  c                                           ; $6f6a: $a9
	ld   l, [hl]                                     ; $6f6b: $6e
	ld   a, b                                        ; $6f6c: $78
	rst  $38                                         ; $6f6d: $ff
	rst  $38                                         ; $6f6e: $ff
	ld   bc, $0d04                                   ; $6f6f: $01 $04 $0d
	nop                                              ; $6f72: $00
	ld   a, [bc]                                     ; $6f73: $0a
	rrca                                             ; $6f74: $0f
	inc  bc                                          ; $6f75: $03
	inc  bc                                          ; $6f76: $03
	ld   bc, $0008                                   ; $6f77: $01 $08 $00
	ld   e, l                                        ; $6f7a: $5d
	and  c                                           ; $6f7b: $a1
	sbc  a                                           ; $6f7c: $9f
	dec  c                                           ; $6f7d: $0d
	nop                                              ; $6f7e: $00
	ld   a, [bc]                                     ; $6f7f: $0a
	inc  de                                          ; $6f80: $13
	dec  b                                           ; $6f81: $05
	inc  e                                           ; $6f82: $1c
	inc  bc                                          ; $6f83: $03
	inc  bc                                          ; $6f84: $03
	inc  bc                                          ; $6f85: $03
	ld   bc, $5996                                   ; $6f86: $01 $96 $59
	ld   [hl], c                                     ; $6f89: $71
	ld   l, l                                        ; $6f8a: $6d
	sbc  l                                           ; $6f8b: $9d
	sbc  [hl]                                        ; $6f8c: $9e
	dec  c                                           ; $6f8d: $0d
	ld   [bc], a                                     ; $6f8e: $02
	xor  c                                           ; $6f8f: $a9
	ld   a, c                                        ; $6f90: $79
	ld   [bc], a                                     ; $6f91: $02
	ld   a, e                                        ; $6f92: $7b
	ld   [hl], c                                     ; $6f93: $71
	ld   [hl], h                                     ; $6f94: $74
	rst  $38                                         ; $6f95: $ff
	rst  $38                                         ; $6f96: $ff
	dec  c                                           ; $6f97: $0d
	nop                                              ; $6f98: $00
	ld   a, [bc]                                     ; $6f99: $0a
	rrca                                             ; $6f9a: $0f
	nop                                              ; $6f9b: $00
	ld   bc, $ff01                                   ; $6f9c: $01 $01 $ff
	rst  $38                                         ; $6f9f: $ff
	ld   [hl], a                                     ; $6fa0: $77
	ld   d, h                                        ; $6fa1: $54
	ld   h, l                                        ; $6fa2: $65
	ld   [hl], h                                     ; $6fa3: $74
	sbc  [hl]                                        ; $6fa4: $9e
	ld   h, c                                        ; $6fa5: $61
	ld   h, c                                        ; $6fa6: $61
	ld   e, d                                        ; $6fa7: $5a
	ld   sp, hl                                      ; $6fa8: $f9
	dec  c                                           ; $6fa9: $0d
	nop                                              ; $6faa: $00
	ld   a, [bc]                                     ; $6fab: $0a
	inc  e                                           ; $6fac: $1c
	inc  bc                                          ; $6fad: $03
	inc  bc                                          ; $6fae: $03
	inc  bc                                          ; $6faf: $03
	ld   bc, $0a04                                   ; $6fb0: $01 $04 $0a
	inc  bc                                          ; $6fb3: $03
	jp   nc, $9759                                   ; $6fb4: $d2 $59 $97

	ld   [bc], a                                     ; $6fb7: $02
	jp   nz, $6d52                                   ; $6fb8: $c2 $52 $6d

	ld   a, h                                        ; $6fbb: $7c
	sub  [hl]                                        ; $6fbc: $96
	sbc  a                                           ; $6fbd: $9f
	dec  c                                           ; $6fbe: $0d
	ld   h, c                                        ; $6fbf: $61
	ld   a, h                                        ; $6fc0: $7c
	dec  b                                           ; $6fc1: $05
	adc  [hl]                                        ; $6fc2: $8e
	inc  bc                                          ; $6fc3: $03
	sub  l                                           ; $6fc4: $95
	ld   a, c                                        ; $6fc5: $79
	ld   a, h                                        ; $6fc6: $7c
	sbc  c                                           ; $6fc7: $99
	ld   [hl], c                                     ; $6fc8: $71
	ld   [hl], h                                     ; $6fc9: $74
	rst  $38                                         ; $6fca: $ff
	rst  $38                                         ; $6fcb: $ff
	dec  c                                           ; $6fcc: $0d
	nop                                              ; $6fcd: $00
	ld   a, [bc]                                     ; $6fce: $0a
	inc  e                                           ; $6fcf: $1c
	inc  bc                                          ; $6fd0: $03
	ld   bc, $0101                                   ; $6fd1: $01 $01 $01
	inc  bc                                          ; $6fd4: $03
	adc  e                                           ; $6fd5: $8b
	ld   a, l                                        ; $6fd6: $7d
	rst  $38                                         ; $6fd7: $ff
	rst  $38                                         ; $6fd8: $ff
	dec  c                                           ; $6fd9: $0d
	inc  bc                                          ; $6fda: $03
	ld   [$6b65], a                                  ; $6fdb: $ea $65 $6b
	add  c                                           ; $6fde: $81
	sbc  d                                           ; $6fdf: $9a
	ld   l, l                                        ; $6fe0: $6d
	sub  b                                           ; $6fe1: $90
	ld   a, h                                        ; $6fe2: $7c
	ld   e, d                                        ; $6fe3: $5a
	dec  c                                           ; $6fe4: $0d
	ld   d, b                                        ; $6fe5: $50
	ld   [hl], c                                     ; $6fe6: $71
	ld   l, l                                        ; $6fe7: $6d
	ld   a, h                                        ; $6fe8: $7c
	sbc  a                                           ; $6fe9: $9f
	dec  c                                           ; $6fea: $0d
	nop                                              ; $6feb: $00
	ld   a, [bc]                                     ; $6fec: $0a
	ld   d, $31                                      ; $6fed: $16 $31
	rrca                                             ; $6fef: $0f
	inc  bc                                          ; $6ff0: $03
	ld   bc, $6101                                   ; $6ff1: $01 $01 $61
	sbc  d                                           ; $6ff4: $9a
	sub  [hl]                                        ; $6ff5: $96
	rst  $38                                         ; $6ff6: $ff
	rst  $38                                         ; $6ff7: $ff
	dec  c                                           ; $6ff8: $0d
	nop                                              ; $6ff9: $00
	ld   a, [bc]                                     ; $6ffa: $0a
	rrca                                             ; $6ffb: $0f
	nop                                              ; $6ffc: $00
	ld   bc, wVisitedTitleScreen                                   ; $6ffd: $01 $01 $c2
	or   d                                           ; $7000: $b2
	call nz, $ffc9                                   ; $7001: $c4 $c9 $ff
	rst  $38                                         ; $7004: $ff
	ld   sp, hl                                      ; $7005: $f9
	dec  c                                           ; $7006: $0d
	nop                                              ; $7007: $00
	ld   a, [bc]                                     ; $7008: $0a
	rrca                                             ; $7009: $0f
	inc  bc                                          ; $700a: $03
	ld   bc, $6101                                   ; $700b: $01 $01 $61
	and  c                                           ; $700e: $a1
	ld   [hl], a                                     ; $700f: $77
	ld   a, h                                        ; $7010: $7c
	ld   [bc], a                                     ; $7011: $02
	sbc  c                                           ; $7012: $99
	ld   [bc], a                                     ; $7013: $02
	rra                                              ; $7014: $1f
	ld   a, h                                        ; $7015: $7c
	jp   nz, $c4b2                                   ; $7016: $c2 $b2 $c4

	ret                                              ; $7019: $c9


	sub  [hl]                                        ; $701a: $96
	sbc  a                                           ; $701b: $9f
	dec  c                                           ; $701c: $0d
	ld   d, b                                        ; $701d: $50
	ld   a, b                                        ; $701e: $78
	ld   l, l                                        ; $701f: $6d
	ld   a, c                                        ; $7020: $79
	ld   l, d                                        ; $7021: $6a
	add  b                                           ; $7022: $80
	ld   [bc], a                                     ; $7023: $02
	sub  l                                           ; $7024: $95
	ld   a, c                                        ; $7025: $79
	dec  b                                           ; $7026: $05
	db   $10                                         ; $7027: $10
	ld   [hl], h                                     ; $7028: $74
	dec  c                                           ; $7029: $0d
	sub  b                                           ; $702a: $90
	sub  a                                           ; $702b: $97
	ld   d, d                                        ; $702c: $52
	ld   l, l                                        ; $702d: $6d
	ld   d, d                                        ; $702e: $52
	ld   a, h                                        ; $702f: $7c
	rst  $38                                         ; $7030: $ff
	rst  $38                                         ; $7031: $ff
	dec  c                                           ; $7032: $0d
	nop                                              ; $7033: $00
	ld   a, [bc]                                     ; $7034: $0a
	rrca                                             ; $7035: $0f
	nop                                              ; $7036: $00
	ld   bc, $5001                                   ; $7037: $01 $01 $50
	sbc  b                                           ; $703a: $98
	ld   e, d                                        ; $703b: $5a
	halt                                             ; $703c: $76
	ld   d, h                                        ; $703d: $54
	rst  $38                                         ; $703e: $ff
	rst  $38                                         ; $703f: $ff
	rst  JumpTable                                         ; $7040: $df
	db   $ec                                         ; $7041: $ec
	and  e                                           ; $7042: $a3
	ld   h, e                                        ; $7043: $63
	and  c                                           ; $7044: $a1
	sbc  a                                           ; $7045: $9f
	dec  c                                           ; $7046: $0d
	nop                                              ; $7047: $00
	ld   a, [bc]                                     ; $7048: $0a
	ld   c, $8f                                      ; $7049: $0e $8f
	inc  e                                           ; $704b: $1c
	inc  bc                                          ; $704c: $03
	inc  bc                                          ; $704d: $03
	inc  bc                                          ; $704e: $03
	ld   bc, $8003                                   ; $704f: $01 $03 $80
	ld   [bc], a                                     ; $7052: $02
	add  [hl]                                        ; $7053: $86
	ld   d, d                                        ; $7054: $52
	ld   e, d                                        ; $7055: $5a
	ld   d, b                                        ; $7056: $50
	sbc  d                                           ; $7057: $9a
	ld   a, [hl]                                     ; $7058: $7e
	inc  b                                           ; $7059: $04
	ld   d, h                                        ; $705a: $54
	sbc  d                                           ; $705b: $9a
	ld   e, d                                        ; $705c: $5a
	ld   d, b                                        ; $705d: $50
	sbc  c                                           ; $705e: $99
	ld   e, a                                        ; $705f: $5f
	ld   [hl], a                                     ; $7060: $77
	dec  c                                           ; $7061: $0d
	ld   [hl], l                                     ; $7062: $75
	sub  b                                           ; $7063: $90
	sbc  [hl]                                        ; $7064: $9e
	adc  h                                           ; $7065: $8c
	ld   l, l                                        ; $7066: $6d
	ld   e, e                                        ; $7067: $5b
	ld   [hl], c                                     ; $7068: $71
	halt                                             ; $7069: $76
	ld   [bc], a                                     ; $706a: $02
	add  [hl]                                        ; $706b: $86
	ld   d, [hl]                                     ; $706c: $56
	sbc  c                                           ; $706d: $99
	rst  $38                                         ; $706e: $ff
	rst  $38                                         ; $706f: $ff
	dec  c                                           ; $7070: $0d
	ld   l, e                                        ; $7071: $6b
	ld   a, h                                        ; $7072: $7c
	inc  b                                           ; $7073: $04
	xor  d                                           ; $7074: $aa
	and  b                                           ; $7075: $a0
	dec  b                                           ; $7076: $05
	inc  de                                          ; $7077: $13
	ld   h, l                                        ; $7078: $65
	adc  l                                           ; $7079: $8d
	ld   a, c                                        ; $707a: $79
	ld   h, l                                        ; $707b: $65
	ld   [hl], h                                     ; $707c: $74
	sbc  c                                           ; $707d: $99
	sbc  l                                           ; $707e: $9d
	sbc  a                                           ; $707f: $9f
	dec  c                                           ; $7080: $0d
	nop                                              ; $7081: $00
	dec  d                                           ; $7082: $15
	ld   [bc], a                                     ; $7083: $02
	ld   de, $0600                                   ; $7084: $11 $00 $06
	ld   [hl], l                                     ; $7087: $75
	ld   a, [bc]                                     ; $7088: $0a
	ld   a, [bc]                                     ; $7089: $0a
	add  hl, bc                                      ; $708a: $09
	inc  a                                           ; $708b: $3c
	inc  h                                           ; $708c: $24
	inc  bc                                          ; $708d: $03
	ld   c, $8f                                      ; $708e: $0e $8f
	rrca                                             ; $7090: $0f
	nop                                              ; $7091: $00
	ld   bc, $0101                                   ; $7092: $01 $01 $01
	inc  bc                                          ; $7095: $03
	ld   l, e                                        ; $7096: $6b
	sbc  e                                           ; $7097: $9b
	ld   l, e                                        ; $7098: $6b
	sbc  e                                           ; $7099: $9b
	dec  b                                           ; $709a: $05
	adc  [hl]                                        ; $709b: $8e
	inc  bc                                          ; $709c: $03
	sub  l                                           ; $709d: $95
	ld   e, d                                        ; $709e: $5a
	inc  bc                                          ; $709f: $03
	add  b                                           ; $70a0: $80
	sbc  c                                           ; $70a1: $99
	dec  c                                           ; $70a2: $0d
	db   $10                                         ; $70a3: $10
	inc  bc                                          ; $70a4: $03
	ld   l, a                                        ; $70a5: $6f
	ld   [bc], a                                     ; $70a6: $02
	xor  c                                           ; $70a7: $a9
	ld   l, [hl]                                     ; $70a8: $6e
	ld   a, b                                        ; $70a9: $78
	rst  $38                                         ; $70aa: $ff
	rst  $38                                         ; $70ab: $ff
	ld   bc, $0d04                                   ; $70ac: $01 $04 $0d
	nop                                              ; $70af: $00
	ld   a, [bc]                                     ; $70b0: $0a
	rrca                                             ; $70b1: $0f
	ld   b, $01                                      ; $70b2: $06 $01
	ld   bc, $fb58                                   ; $70b4: $01 $58 $fb
	ld   d, d                                        ; $70b7: $52
	sbc  [hl]                                        ; $70b8: $9e
	ld   [$fa00], sp                                 ; $70b9: $08 $00 $fa
	dec  c                                           ; $70bc: $0d
	nop                                              ; $70bd: $00
	ld   a, [bc]                                     ; $70be: $0a
	inc  de                                          ; $70bf: $13
	dec  b                                           ; $70c0: $05
	inc  e                                           ; $70c1: $1c
	ld   b, $01                                      ; $70c2: $06 $01
	ld   bc, $9601                                   ; $70c4: $01 $01 $96
	ld   e, c                                        ; $70c7: $59
	ld   [hl], c                                     ; $70c8: $71
	ld   l, l                                        ; $70c9: $6d
	ld   l, d                                        ; $70ca: $6a
	sbc  [hl]                                        ; $70cb: $9e
	dec  c                                           ; $70cc: $0d
	ld   [bc], a                                     ; $70cd: $02
	xor  c                                           ; $70ce: $a9
	ld   a, c                                        ; $70cf: $79
	ld   [bc], a                                     ; $70d0: $02
	ld   a, e                                        ; $70d1: $7b
	ld   [hl], c                                     ; $70d2: $71
	ld   [hl], h                                     ; $70d3: $74
	rst  $38                                         ; $70d4: $ff
	rst  $38                                         ; $70d5: $ff
	dec  c                                           ; $70d6: $0d
	nop                                              ; $70d7: $00
	ld   a, [bc]                                     ; $70d8: $0a
	rrca                                             ; $70d9: $0f
	nop                                              ; $70da: $00
	ld   bc, $ff01                                   ; $70db: $01 $01 $ff
	rst  $38                                         ; $70de: $ff
	ld   [hl], a                                     ; $70df: $77
	ld   d, h                                        ; $70e0: $54
	ld   h, l                                        ; $70e1: $65
	ld   [hl], h                                     ; $70e2: $74
	sbc  [hl]                                        ; $70e3: $9e
	ld   h, c                                        ; $70e4: $61
	ld   h, c                                        ; $70e5: $61
	ld   e, d                                        ; $70e6: $5a
	ld   sp, hl                                      ; $70e7: $f9
	dec  c                                           ; $70e8: $0d
	nop                                              ; $70e9: $00
	ld   a, [bc]                                     ; $70ea: $0a
	inc  e                                           ; $70eb: $1c
	ld   b, $01                                      ; $70ec: $06 $01
	ld   bc, $0401                                   ; $70ee: $01 $01 $04
	ld   a, [bc]                                     ; $70f1: $0a
	inc  bc                                          ; $70f2: $03
	jp   nc, $9759                                   ; $70f3: $d2 $59 $97

	ld   [bc], a                                     ; $70f6: $02
	jp   nz, $6d52                                   ; $70f7: $c2 $52 $6d

	and  c                                           ; $70fa: $a1
	ld   l, [hl]                                     ; $70fb: $6e
	sub  [hl]                                        ; $70fc: $96
	sbc  a                                           ; $70fd: $9f
	dec  c                                           ; $70fe: $0d
	ld   e, b                                        ; $70ff: $58
	inc  bc                                          ; $7100: $03
	ld   c, a                                        ; $7101: $4f
	ld   e, d                                        ; $7102: $5a
	ld   h, c                                        ; $7103: $61
	ld   a, h                                        ; $7104: $7c
	dec  b                                           ; $7105: $05
	adc  [hl]                                        ; $7106: $8e
	inc  bc                                          ; $7107: $03
	sub  l                                           ; $7108: $95
	ld   a, c                                        ; $7109: $79
	ld   a, h                                        ; $710a: $7c
	sbc  c                                           ; $710b: $99
	ld   [hl], c                                     ; $710c: $71
	ld   [hl], h                                     ; $710d: $74
	rst  $38                                         ; $710e: $ff
	rst  $38                                         ; $710f: $ff
	dec  c                                           ; $7110: $0d
	nop                                              ; $7111: $00
	ld   a, [bc]                                     ; $7112: $0a
	inc  e                                           ; $7113: $1c
	ld   b, $04                                      ; $7114: $06 $04
	inc  b                                           ; $7116: $04
	ld   bc, $8b03                                   ; $7117: $01 $03 $8b
	ld   a, l                                        ; $711a: $7d
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	dec  c                                           ; $711d: $0d
	inc  bc                                          ; $711e: $03
	ld   [$6d65], a                                  ; $711f: $ea $65 $6d
	ld   d, d                                        ; $7122: $52
	db   $e4                                         ; $7123: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7124: $cf
	ld   e, d                                        ; $7125: $5a
	ld   d, b                                        ; $7126: $50
	ld   [hl], c                                     ; $7127: $71
	ld   l, l                                        ; $7128: $6d
	and  c                                           ; $7129: $a1
	ld   l, [hl]                                     ; $712a: $6e
	sub  [hl]                                        ; $712b: $96
	sbc  a                                           ; $712c: $9f
	dec  c                                           ; $712d: $0d
	nop                                              ; $712e: $00
	ld   a, [bc]                                     ; $712f: $0a
	ld   d, $32                                      ; $7130: $16 $32
	rrca                                             ; $7132: $0f
	ld   b, $04                                      ; $7133: $06 $04
	ld   bc, $9789                                   ; $7135: $01 $89 $97
	sbc  [hl]                                        ; $7138: $9e
	ld   [bc], a                                     ; $7139: $02
	rst  $38                                         ; $713a: $ff
	ld   e, a                                        ; $713b: $5f
	halt                                             ; $713c: $76
	sbc  d                                           ; $713d: $9a
	sub  [hl]                                        ; $713e: $96
	rst  $38                                         ; $713f: $ff
	rst  $38                                         ; $7140: $ff
	dec  c                                           ; $7141: $0d
	nop                                              ; $7142: $00
	ld   a, [bc]                                     ; $7143: $0a
	rrca                                             ; $7144: $0f
	nop                                              ; $7145: $00
	ld   bc, wVisitedTitleScreen                                   ; $7146: $01 $01 $c2
	or   d                                           ; $7149: $b2
	call nz, $ffc9                                   ; $714a: $c4 $c9 $ff
	rst  $38                                         ; $714d: $ff
	ld   sp, hl                                      ; $714e: $f9
	dec  c                                           ; $714f: $0d
	nop                                              ; $7150: $00
	ld   a, [bc]                                     ; $7151: $0a
	rrca                                             ; $7152: $0f
	ld   b, $04                                      ; $7153: $06 $04
	ld   bc, $a161                                   ; $7155: $01 $61 $a1
	ld   [hl], a                                     ; $7158: $77
	ld   a, h                                        ; $7159: $7c
	ld   [bc], a                                     ; $715a: $02
	sbc  c                                           ; $715b: $99
	ld   [bc], a                                     ; $715c: $02
	rra                                              ; $715d: $1f
	ld   a, h                                        ; $715e: $7c
	jp   nz, $c4b2                                   ; $715f: $c2 $b2 $c4

	ret                                              ; $7162: $c9


	ld   h, e                                        ; $7163: $63
	sbc  a                                           ; $7164: $9f
	dec  c                                           ; $7165: $0d
	ld   [bc], a                                     ; $7166: $02
	sub  l                                           ; $7167: $95
	ld   a, c                                        ; $7168: $79
	dec  b                                           ; $7169: $05
	db   $10                                         ; $716a: $10
	sbc  d                                           ; $716b: $9a
	ld   a, [hl]                                     ; $716c: $7e
	sbc  [hl]                                        ; $716d: $9e
	adc  h                                           ; $716e: $8c
	ld   l, l                                        ; $716f: $6d
	adc  l                                           ; $7170: $8d
	and  c                                           ; $7171: $a1
	ld   a, b                                        ; $7172: $78
	halt                                             ; $7173: $76
	sub  b                                           ; $7174: $90
	dec  c                                           ; $7175: $0d
	ld   [bc], a                                     ; $7176: $02
	add  [hl]                                        ; $7177: $86
	ld   d, [hl]                                     ; $7178: $56
	sbc  c                                           ; $7179: $99
	ld   l, [hl]                                     ; $717a: $6e
	sbc  e                                           ; $717b: $9b
	ld   sp, hl                                      ; $717c: $f9
	dec  c                                           ; $717d: $0d
	nop                                              ; $717e: $00
	ld   a, [bc]                                     ; $717f: $0a
	rrca                                             ; $7180: $0f
	nop                                              ; $7181: $00
	ld   bc, $5001                                   ; $7182: $01 $01 $50
	sbc  b                                           ; $7185: $98
	ld   e, d                                        ; $7186: $5a
	halt                                             ; $7187: $76
	ld   d, h                                        ; $7188: $54
	rst  $38                                         ; $7189: $ff
	rst  $38                                         ; $718a: $ff
	xor  h                                           ; $718b: $ac
	push af                                          ; $718c: $f5
	bit  4, e                                        ; $718d: $cb $63
	and  c                                           ; $718f: $a1
	sbc  a                                           ; $7190: $9f
	dec  c                                           ; $7191: $0d
	nop                                              ; $7192: $00
	ld   a, [bc]                                     ; $7193: $0a
	ld   c, $8f                                      ; $7194: $0e $8f
	inc  e                                           ; $7196: $1c
	ld   b, $01                                      ; $7197: $06 $01
	ld   bc, $6601                                   ; $7199: $01 $01 $66
	sub  c                                           ; $719c: $91
	ld   d, b                                        ; $719d: $50
	sbc  [hl]                                        ; $719e: $9e
	adc  h                                           ; $719f: $8c
	ld   l, l                                        ; $71a0: $6d
	ld   a, b                                        ; $71a1: $78
	sbc  a                                           ; $71a2: $9f
	dec  c                                           ; $71a3: $0d
	ld   l, a                                        ; $71a4: $6f
	sub  c                                           ; $71a5: $91
	and  c                                           ; $71a6: $a1
	halt                                             ; $71a7: $76
	db   $e3                                         ; $71a8: $e3
	cp   b                                           ; $71a9: $b8
	inc  bc                                          ; $71aa: $03
	ld   l, d                                        ; $71ab: $6a
	ld   d, [hl]                                     ; $71ac: $56
	sub  [hl]                                        ; $71ad: $96
	sbc  a                                           ; $71ae: $9f
	dec  c                                           ; $71af: $0d
	nop                                              ; $71b0: $00
	dec  d                                           ; $71b1: $15
	ld   b, $11                                      ; $71b2: $06 $11
	nop                                              ; $71b4: $00
	ld   b, $a4                                      ; $71b5: $06 $a4
	dec  bc                                          ; $71b7: $0b
	ld   a, [bc]                                     ; $71b8: $0a
	add  hl, bc                                      ; $71b9: $09
	inc  a                                           ; $71ba: $3c
	inc  h                                           ; $71bb: $24
	ld   b, $0e                                      ; $71bc: $06 $0e
	adc  a                                           ; $71be: $8f
	rrca                                             ; $71bf: $0f
	nop                                              ; $71c0: $00
	ld   bc, $0101                                   ; $71c1: $01 $01 $01
	inc  bc                                          ; $71c4: $03
	ld   l, e                                        ; $71c5: $6b
	sbc  e                                           ; $71c6: $9b
	ld   l, e                                        ; $71c7: $6b
	sbc  e                                           ; $71c8: $9b
	dec  b                                           ; $71c9: $05
	adc  [hl]                                        ; $71ca: $8e
	inc  bc                                          ; $71cb: $03
	sub  l                                           ; $71cc: $95
	ld   e, d                                        ; $71cd: $5a
	inc  bc                                          ; $71ce: $03
	add  b                                           ; $71cf: $80
	sbc  c                                           ; $71d0: $99
	dec  c                                           ; $71d1: $0d
	db   $10                                         ; $71d2: $10
	inc  bc                                          ; $71d3: $03
	ld   l, a                                        ; $71d4: $6f
	ld   [bc], a                                     ; $71d5: $02
	xor  c                                           ; $71d6: $a9
	ld   l, [hl]                                     ; $71d7: $6e
	ld   a, b                                        ; $71d8: $78
	rst  $38                                         ; $71d9: $ff
	rst  $38                                         ; $71da: $ff
	ld   bc, $0d04                                   ; $71db: $01 $04 $0d
	nop                                              ; $71de: $00
	ld   a, [bc]                                     ; $71df: $0a
	rrca                                             ; $71e0: $0f
	inc  b                                           ; $71e1: $04
	ld   bc, $6f01                                   ; $71e2: $01 $01 $6f
	ld   d, d                                        ; $71e5: $52
	ld   [bc], a                                     ; $71e6: $02
	inc  de                                          ; $71e7: $13
	ld   l, a                                        ; $71e8: $6f
	sub  c                                           ; $71e9: $91
	ei                                               ; $71ea: $fb
	and  c                                           ; $71eb: $a1
	ld   a, [$000d]                                  ; $71ec: $fa $0d $00
	dec  d                                           ; $71ef: $15
	inc  bc                                          ; $71f0: $03
	inc  de                                          ; $71f1: $13
	dec  b                                           ; $71f2: $05
	ld   a, [bc]                                     ; $71f3: $0a
	inc  e                                           ; $71f4: $1c
	inc  b                                           ; $71f5: $04
	ld   bc, $0101                                   ; $71f6: $01 $01 $01
	sub  [hl]                                        ; $71f9: $96
	ld   e, c                                        ; $71fa: $59
	ld   [hl], c                                     ; $71fb: $71
	ld   l, l                                        ; $71fc: $6d
	db   $fc                                         ; $71fd: $fc
	sbc  a                                           ; $71fe: $9f
	dec  c                                           ; $71ff: $0d
	adc  h                                           ; $7200: $8c
	ld   a, c                                        ; $7201: $79
	ld   d, b                                        ; $7202: $50
	ld   [hl], c                                     ; $7203: $71
	ld   [hl], h                                     ; $7204: $74
	rst  $38                                         ; $7205: $ff
	rst  $38                                         ; $7206: $ff
	dec  c                                           ; $7207: $0d
	nop                                              ; $7208: $00
	ld   a, [bc]                                     ; $7209: $0a
	rrca                                             ; $720a: $0f
	nop                                              ; $720b: $00
	ld   bc, $ff01                                   ; $720c: $01 $01 $ff
	rst  $38                                         ; $720f: $ff
	ld   [hl], a                                     ; $7210: $77
	ld   d, h                                        ; $7211: $54
	ld   h, l                                        ; $7212: $65
	ld   [hl], h                                     ; $7213: $74
	sbc  [hl]                                        ; $7214: $9e
	ld   h, c                                        ; $7215: $61
	ld   h, c                                        ; $7216: $61
	ld   e, d                                        ; $7217: $5a
	ld   sp, hl                                      ; $7218: $f9
	dec  c                                           ; $7219: $0d
	nop                                              ; $721a: $00
	ld   a, [bc]                                     ; $721b: $0a
	inc  e                                           ; $721c: $1c
	inc  b                                           ; $721d: $04
	ld   bc, $0101                                   ; $721e: $01 $01 $01
	ld   e, b                                        ; $7221: $58
	ld   [bc], a                                     ; $7222: $02
	inc  de                                          ; $7223: $13
	ld   l, a                                        ; $7224: $6f
	sub  c                                           ; $7225: $91
	and  c                                           ; $7226: $a1
	ld   e, d                                        ; $7227: $5a
	ld   e, b                                        ; $7228: $58
	ld   h, l                                        ; $7229: $65
	ld   d, [hl]                                     ; $722a: $56
	ld   [hl], h                                     ; $722b: $74
	dec  c                                           ; $722c: $0d
	ld   e, l                                        ; $722d: $5d
	sbc  d                                           ; $722e: $9a
	ld   l, l                                        ; $722f: $6d
	ld   a, h                                        ; $7230: $7c
	sbc  a                                           ; $7231: $9f
	ld   l, a                                        ; $7232: $6f
	ld   d, d                                        ; $7233: $52
	ld   [bc], a                                     ; $7234: $02
	inc  de                                          ; $7235: $13
	ld   l, a                                        ; $7236: $6f
	sub  c                                           ; $7237: $91
	and  c                                           ; $7238: $a1
	ld   a, l                                        ; $7239: $7d
	dec  c                                           ; $723a: $0d
	ld   e, e                                        ; $723b: $5b
	ld   h, l                                        ; $723c: $65
	sub  c                                           ; $723d: $91
	ld   [hl], l                                     ; $723e: $75
	ld   e, c                                        ; $723f: $59
	ld   d, [hl]                                     ; $7240: $56
	sbc  c                                           ; $7241: $99
	and  c                                           ; $7242: $a1
	ld   l, [hl]                                     ; $7243: $6e
	ld   [hl], c                                     ; $7244: $71
	ld   [hl], h                                     ; $7245: $74
	rst  $38                                         ; $7246: $ff
	rst  $38                                         ; $7247: $ff
	dec  c                                           ; $7248: $0d
	nop                                              ; $7249: $00
	ld   a, [bc]                                     ; $724a: $0a
	inc  e                                           ; $724b: $1c
	inc  b                                           ; $724c: $04
	dec  b                                           ; $724d: $05
	dec  b                                           ; $724e: $05
	ld   bc, $7c50                                   ; $724f: $01 $50 $7c
	ld   a, e                                        ; $7252: $7b
	sbc  a                                           ; $7253: $9f
	dec  c                                           ; $7254: $0d
	ld   l, a                                        ; $7255: $6f
	ld   d, d                                        ; $7256: $52
	ld   [bc], a                                     ; $7257: $02
	inc  de                                          ; $7258: $13
	ld   l, a                                        ; $7259: $6f
	sub  c                                           ; $725a: $91
	and  c                                           ; $725b: $a1
	ld   a, c                                        ; $725c: $79
	dec  c                                           ; $725d: $0d
	ld   d, b                                        ; $725e: $50
	ld   h, b                                        ; $725f: $60
	ld   l, l                                        ; $7260: $6d
	ld   d, d                                        ; $7261: $52
	sub  b                                           ; $7262: $90
	ld   a, h                                        ; $7263: $7c
	ld   e, d                                        ; $7264: $5a
	ld   d, b                                        ; $7265: $50
	sbc  c                                           ; $7266: $99
	ld   a, h                                        ; $7267: $7c
	rst  $38                                         ; $7268: $ff
	rst  $38                                         ; $7269: $ff
	dec  c                                           ; $726a: $0d
	nop                                              ; $726b: $00
	ld   a, [bc]                                     ; $726c: $0a
	ld   d, $34                                      ; $726d: $16 $34
	rrca                                             ; $726f: $0f
	inc  b                                           ; $7270: $04
	dec  b                                           ; $7271: $05
	ld   bc, $a5d0                                   ; $7272: $01 $d0 $a5
	sbc  [hl]                                        ; $7275: $9e
	ld   h, c                                        ; $7276: $61
	sbc  d                                           ; $7277: $9a
	rst  $38                                         ; $7278: $ff
	rst  $38                                         ; $7279: $ff
	dec  c                                           ; $727a: $0d
	nop                                              ; $727b: $00
	ld   a, [bc]                                     ; $727c: $0a
	rrca                                             ; $727d: $0f
	nop                                              ; $727e: $00
	ld   bc, wVisitedTitleScreen                                   ; $727f: $01 $01 $c2
	or   d                                           ; $7282: $b2
	call nz, $ffc9                                   ; $7283: $c4 $c9 $ff
	rst  $38                                         ; $7286: $ff
	ld   sp, hl                                      ; $7287: $f9
	dec  c                                           ; $7288: $0d
	nop                                              ; $7289: $00
	ld   a, [bc]                                     ; $728a: $0a
	rrca                                             ; $728b: $0f
	inc  b                                           ; $728c: $04
	dec  b                                           ; $728d: $05
	ld   bc, $a154                                   ; $728e: $01 $54 $a1
	sbc  [hl]                                        ; $7291: $9e
	dec  c                                           ; $7292: $0d
	ld   h, c                                        ; $7293: $61
	and  c                                           ; $7294: $a1
	ld   [hl], a                                     ; $7295: $77
	ld   a, h                                        ; $7296: $7c
	ld   h, c                                        ; $7297: $61
	ld   d, h                                        ; $7298: $54
	ld   d, [hl]                                     ; $7299: $56
	and  c                                           ; $729a: $a1
	ld   a, h                                        ; $729b: $7c
	ld   l, [hl]                                     ; $729c: $6e
	sub  [hl]                                        ; $729d: $96
	sbc  a                                           ; $729e: $9f
	dec  c                                           ; $729f: $0d
	nop                                              ; $72a0: $00
	ld   a, [bc]                                     ; $72a1: $0a
	ld   bc, $a5a3                                   ; $72a2: $01 $a3 $a5
	db   $ec                                         ; $72a5: $ec
	cp   d                                           ; $72a6: $ba
	sbc  [hl]                                        ; $72a7: $9e
	ld   e, d                                        ; $72a8: $5a
	and  c                                           ; $72a9: $a1
	ld   a, [hl]                                     ; $72aa: $7e
	sbc  c                                           ; $72ab: $99
	ld   e, c                                        ; $72ac: $59
	sub  a                                           ; $72ad: $97
	dec  c                                           ; $72ae: $0d
	ld   l, d                                        ; $72af: $6a
	ld   [hl], c                                     ; $72b0: $71
	ld   l, l                                        ; $72b1: $6d
	ld   d, d                                        ; $72b2: $52
	adc  l                                           ; $72b3: $8d
	ld   a, c                                        ; $72b4: $79
	ld   e, e                                        ; $72b5: $5b
	ld   [hl], h                                     ; $72b6: $74
	ld   a, e                                        ; $72b7: $7b
	sbc  a                                           ; $72b8: $9f
	dec  c                                           ; $72b9: $0d
	nop                                              ; $72ba: $00
	ld   a, [bc]                                     ; $72bb: $0a
	rrca                                             ; $72bc: $0f
	nop                                              ; $72bd: $00
	ld   bc, $5001                                   ; $72be: $01 $01 $50
	sbc  b                                           ; $72c1: $98
	ld   e, d                                        ; $72c2: $5a
	halt                                             ; $72c3: $76
	ld   d, h                                        ; $72c4: $54
	rst  $38                                         ; $72c5: $ff
	rst  $38                                         ; $72c6: $ff
	and  e                                           ; $72c7: $a3
	and  l                                           ; $72c8: $a5
	db   $ec                                         ; $72c9: $ec
	cp   d                                           ; $72ca: $ba
	sbc  a                                           ; $72cb: $9f
	dec  c                                           ; $72cc: $0d
	nop                                              ; $72cd: $00
	ld   a, [bc]                                     ; $72ce: $0a
	ld   c, $8f                                      ; $72cf: $0e $8f
	inc  e                                           ; $72d1: $1c
	inc  b                                           ; $72d2: $04
	ld   bc, $0101                                   ; $72d3: $01 $01 $01
	ld   h, [hl]                                     ; $72d6: $66
	sub  c                                           ; $72d7: $91
	ld   d, b                                        ; $72d8: $50
	ld   a, e                                        ; $72d9: $7b
	sbc  [hl]                                        ; $72da: $9e
	ld   l, a                                        ; $72db: $6f
	ld   d, d                                        ; $72dc: $52
	ld   [bc], a                                     ; $72dd: $02
	inc  de                                          ; $72de: $13
	ld   l, a                                        ; $72df: $6f
	sub  c                                           ; $72e0: $91
	and  c                                           ; $72e1: $a1
	sbc  a                                           ; $72e2: $9f
	dec  c                                           ; $72e3: $0d
	adc  h                                           ; $72e4: $8c
	ld   l, l                                        ; $72e5: $6d
	ld   d, b                                        ; $72e6: $50
	ld   d, h                                        ; $72e7: $54
	and  c                                           ; $72e8: $a1
	ld   l, [hl]                                     ; $72e9: $6e
	ld   e, c                                        ; $72ea: $59
	sub  a                                           ; $72eb: $97
	ld   a, e                                        ; $72ec: $7b
	ld   a, [$000d]                                  ; $72ed: $fa $0d $00
	dec  d                                           ; $72f0: $15
	inc  b                                           ; $72f1: $04
	ld   de, $0600                                   ; $72f2: $11 $00 $06
	db   $e3                                         ; $72f5: $e3
	inc  c                                           ; $72f6: $0c
	ld   a, [bc]                                     ; $72f7: $0a
	add  hl, bc                                      ; $72f8: $09
	inc  a                                           ; $72f9: $3c
	inc  h                                           ; $72fa: $24
	inc  b                                           ; $72fb: $04
	ld   c, $8f                                      ; $72fc: $0e $8f
	rrca                                             ; $72fe: $0f
	nop                                              ; $72ff: $00
	ld   bc, $0101                                   ; $7300: $01 $01 $01
	inc  bc                                          ; $7303: $03
	ld   l, e                                        ; $7304: $6b
	sbc  e                                           ; $7305: $9b
	ld   l, e                                        ; $7306: $6b
	sbc  e                                           ; $7307: $9b
	dec  b                                           ; $7308: $05
	adc  [hl]                                        ; $7309: $8e
	inc  bc                                          ; $730a: $03
	sub  l                                           ; $730b: $95
	ld   e, d                                        ; $730c: $5a
	inc  bc                                          ; $730d: $03
	add  b                                           ; $730e: $80
	sbc  c                                           ; $730f: $99
	dec  c                                           ; $7310: $0d
	db   $10                                         ; $7311: $10
	inc  bc                                          ; $7312: $03
	ld   l, a                                        ; $7313: $6f
	ld   [bc], a                                     ; $7314: $02
	xor  c                                           ; $7315: $a9
	ld   l, [hl]                                     ; $7316: $6e
	ld   a, b                                        ; $7317: $78
	rst  $38                                         ; $7318: $ff
	rst  $38                                         ; $7319: $ff
	ld   bc, $0d04                                   ; $731a: $01 $04 $0d
	nop                                              ; $731d: $00
	ld   a, [bc]                                     ; $731e: $0a
	rrca                                             ; $731f: $0f
	dec  b                                           ; $7320: $05
	ld   bc, $0801                                   ; $7321: $01 $01 $08
	nop                                              ; $7324: $00
	ld   a, l                                        ; $7325: $7d
	and  c                                           ; $7326: $a1
	ld   a, [$000d]                                  ; $7327: $fa $0d $00
	ld   a, [bc]                                     ; $732a: $0a
	inc  de                                          ; $732b: $13
	dec  b                                           ; $732c: $05
	inc  e                                           ; $732d: $1c
	dec  b                                           ; $732e: $05
	ld   bc, $0101                                   ; $732f: $01 $01 $01
	sub  [hl]                                        ; $7332: $96
	ld   e, c                                        ; $7333: $59
	ld   [hl], c                                     ; $7334: $71
	ld   l, l                                        ; $7335: $6d
	rst  $38                                         ; $7336: $ff
	rst  $38                                         ; $7337: $ff
	dec  c                                           ; $7338: $0d
	ld   [bc], a                                     ; $7339: $02
	xor  c                                           ; $733a: $a9
	ld   a, c                                        ; $733b: $79
	ld   e, b                                        ; $733c: $58
	ld   d, h                                        ; $733d: $54
	ld   l, l                                        ; $733e: $6d
	sbc  l                                           ; $733f: $9d
	sbc  a                                           ; $7340: $9f
	dec  c                                           ; $7341: $0d
	nop                                              ; $7342: $00
	ld   a, [bc]                                     ; $7343: $0a
	rrca                                             ; $7344: $0f
	nop                                              ; $7345: $00
	ld   bc, $ff01                                   ; $7346: $01 $01 $ff
	rst  $38                                         ; $7349: $ff
	ld   [hl], a                                     ; $734a: $77
	ld   d, h                                        ; $734b: $54
	ld   h, l                                        ; $734c: $65
	ld   [hl], h                                     ; $734d: $74
	sbc  [hl]                                        ; $734e: $9e
	ld   h, c                                        ; $734f: $61
	ld   h, c                                        ; $7350: $61
	ld   e, d                                        ; $7351: $5a
	ld   sp, hl                                      ; $7352: $f9
	dec  c                                           ; $7353: $0d
	nop                                              ; $7354: $00
	ld   a, [bc]                                     ; $7355: $0a
	inc  e                                           ; $7356: $1c
	dec  b                                           ; $7357: $05
	ld   bc, $0101                                   ; $7358: $01 $01 $01
	inc  b                                           ; $735b: $04
	ld   c, $03                                      ; $735c: $0e $03
	sub  b                                           ; $735e: $90
	ld   a, l                                        ; $735f: $7d
	and  c                                           ; $7360: $a1
	ld   e, d                                        ; $7361: $5a
	ld   [bc], a                                     ; $7362: $02
	ret  nc                                          ; $7363: $d0

	ld   d, [hl]                                     ; $7364: $56
	ld   [hl], h                                     ; $7365: $74
	ld   e, l                                        ; $7366: $5d
	sbc  d                                           ; $7367: $9a
	ld   l, l                                        ; $7368: $6d
	and  c                                           ; $7369: $a1
	sub  d                                           ; $736a: $92
	sbc  a                                           ; $736b: $9f
	dec  c                                           ; $736c: $0d
	ld   h, c                                        ; $736d: $61
	ld   a, h                                        ; $736e: $7c
	dec  b                                           ; $736f: $05
	adc  [hl]                                        ; $7370: $8e
	inc  bc                                          ; $7371: $03
	sub  l                                           ; $7372: $95
	ld   a, c                                        ; $7373: $79
	ld   a, h                                        ; $7374: $7c
	sbc  c                                           ; $7375: $99
	ld   [hl], c                                     ; $7376: $71
	ld   [hl], h                                     ; $7377: $74
	ld   a, b                                        ; $7378: $78
	rst  $38                                         ; $7379: $ff
	rst  $38                                         ; $737a: $ff
	dec  c                                           ; $737b: $0d
	nop                                              ; $737c: $00
	ld   a, [bc]                                     ; $737d: $0a
	inc  e                                           ; $737e: $1c
	dec  b                                           ; $737f: $05
	inc  b                                           ; $7380: $04
	inc  b                                           ; $7381: $04
	ld   bc, $8b03                                   ; $7382: $01 $03 $8b
	ld   a, l                                        ; $7385: $7d
	sbc  [hl]                                        ; $7386: $9e
	ld   [$7d00], sp                                 ; $7387: $08 $00 $7d
	and  c                                           ; $738a: $a1
	ld   a, c                                        ; $738b: $79
	dec  c                                           ; $738c: $0d
	inc  bc                                          ; $738d: $03
	ld   [$6b65], a                                  ; $738e: $ea $65 $6b
	add  c                                           ; $7391: $81
	sbc  d                                           ; $7392: $9a
	ld   l, l                                        ; $7393: $6d
	sub  b                                           ; $7394: $90
	and  c                                           ; $7395: $a1
	ld   e, d                                        ; $7396: $5a
	dec  c                                           ; $7397: $0d
	ld   d, b                                        ; $7398: $50
	ld   [hl], c                                     ; $7399: $71
	ld   [hl], h                                     ; $739a: $74
	ld   a, b                                        ; $739b: $78
	rst  $38                                         ; $739c: $ff
	rst  $38                                         ; $739d: $ff
	dec  c                                           ; $739e: $0d
	nop                                              ; $739f: $00
	ld   a, [bc]                                     ; $73a0: $0a
	ld   d, $33                                      ; $73a1: $16 $33
	rrca                                             ; $73a3: $0f
	dec  b                                           ; $73a4: $05
	inc  b                                           ; $73a5: $04
	ld   bc, $5289                                   ; $73a6: $01 $89 $52
	sbc  [hl]                                        ; $73a9: $9e
	ld   h, c                                        ; $73aa: $61
	sbc  d                                           ; $73ab: $9a
	rst  $38                                         ; $73ac: $ff
	rst  $38                                         ; $73ad: $ff
	dec  c                                           ; $73ae: $0d
	nop                                              ; $73af: $00
	ld   a, [bc]                                     ; $73b0: $0a
	rrca                                             ; $73b1: $0f
	nop                                              ; $73b2: $00
	ld   bc, wVisitedTitleScreen                                   ; $73b3: $01 $01 $c2
	or   d                                           ; $73b6: $b2
	call nz, $ffc9                                   ; $73b7: $c4 $c9 $ff
	rst  $38                                         ; $73ba: $ff
	ld   sp, hl                                      ; $73bb: $f9
	dec  c                                           ; $73bc: $0d
	nop                                              ; $73bd: $00
	ld   a, [bc]                                     ; $73be: $0a
	rrca                                             ; $73bf: $0f
	dec  b                                           ; $73c0: $05
	inc  b                                           ; $73c1: $04
	ld   bc, $926b                                   ; $73c2: $01 $6b $92
	sbc  [hl]                                        ; $73c5: $9e
	inc  bc                                          ; $73c6: $03
	ld   l, b                                        ; $73c7: $68
	ld   [bc], a                                     ; $73c8: $02
	sub  e                                           ; $73c9: $93
	ld   [bc], a                                     ; $73ca: $02
	sbc  c                                           ; $73cb: $99
	ld   [bc], a                                     ; $73cc: $02
	rra                                              ; $73cd: $1f
	ld   a, h                                        ; $73ce: $7c
	jp   nz, $c4b2                                   ; $73cf: $c2 $b2 $c4

	ret                                              ; $73d2: $c9


	sub  d                                           ; $73d3: $92
	sbc  a                                           ; $73d4: $9f
	dec  c                                           ; $73d5: $0d
	ld   l, c                                        ; $73d6: $69
	ld   [hl], c                                     ; $73d7: $71
	ld   e, c                                        ; $73d8: $59
	ld   e, l                                        ; $73d9: $5d
	sub  d                                           ; $73da: $92
	ld   e, c                                        ; $73db: $59
	sub  a                                           ; $73dc: $97
	ld   [bc], a                                     ; $73dd: $02
	sub  l                                           ; $73de: $95
	ld   a, c                                        ; $73df: $79
	dec  b                                           ; $73e0: $05
	db   $10                                         ; $73e1: $10
	ld   [hl], h                                     ; $73e2: $74
	sub  d                                           ; $73e3: $92
	sbc  a                                           ; $73e4: $9f
	dec  c                                           ; $73e5: $0d
	ld   l, e                                        ; $73e6: $6b
	ld   h, l                                        ; $73e7: $65
	ld   l, l                                        ; $73e8: $6d
	sub  a                                           ; $73e9: $97
	sbc  [hl]                                        ; $73ea: $9e
	adc  h                                           ; $73eb: $8c
	ld   l, l                                        ; $73ec: $6d
	ld   [bc], a                                     ; $73ed: $02
	add  [hl]                                        ; $73ee: $86
	ld   d, [hl]                                     ; $73ef: $56
	sbc  c                                           ; $73f0: $99
	ld   h, l                                        ; $73f1: $65
	ld   a, b                                        ; $73f2: $78
	rst  $38                                         ; $73f3: $ff
	rst  $38                                         ; $73f4: $ff
	dec  c                                           ; $73f5: $0d
	nop                                              ; $73f6: $00
	ld   a, [bc]                                     ; $73f7: $0a
	rrca                                             ; $73f8: $0f
	nop                                              ; $73f9: $00
	ld   bc, $5001                                   ; $73fa: $01 $01 $50
	sbc  b                                           ; $73fd: $98
	ld   e, d                                        ; $73fe: $5a
	halt                                             ; $73ff: $76
	ld   d, h                                        ; $7400: $54
	rst  $38                                         ; $7401: $ff
	rst  $38                                         ; $7402: $ff
	ld   [bc], a                                     ; $7403: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7404: $cf
	dec  b                                           ; $7405: $05
	ld   a, [de]                                     ; $7406: $1a
	ld   h, e                                        ; $7407: $63
	and  c                                           ; $7408: $a1
	sbc  a                                           ; $7409: $9f
	dec  c                                           ; $740a: $0d
	nop                                              ; $740b: $00
	ld   a, [bc]                                     ; $740c: $0a
	ld   c, $8f                                      ; $740d: $0e $8f
	inc  e                                           ; $740f: $1c
	dec  b                                           ; $7410: $05
	ld   bc, $0101                                   ; $7411: $01 $01 $01
	ld   h, l                                        ; $7414: $65
	adc  l                                           ; $7415: $8d
	ld   [hl], c                                     ; $7416: $71
	ld   l, l                                        ; $7417: $6d
	sbc  d                                           ; $7418: $9a
	ld   l, l                                        ; $7419: $6d
	inc  b                                           ; $741a: $04
	ld   d, h                                        ; $741b: $54
	sbc  d                                           ; $741c: $9a
	ld   a, l                                        ; $741d: $7d
	dec  c                                           ; $741e: $0d
	ld   [bc], a                                     ; $741f: $02
	db   $fc                                         ; $7420: $fc
	ld   a, c                                        ; $7421: $79
	ld   d, b                                        ; $7422: $50
	sbc  l                                           ; $7423: $9d
	and  c                                           ; $7424: $a1
	sbc  l                                           ; $7425: $9d
	rst  $38                                         ; $7426: $ff
	rst  $38                                         ; $7427: $ff
	adc  c                                           ; $7428: $89
	and  c                                           ; $7429: $a1
	ld   a, b                                        ; $742a: $78
	sub  a                                           ; $742b: $97
	rst  $38                                         ; $742c: $ff
	rst  $38                                         ; $742d: $ff
	dec  c                                           ; $742e: $0d
	adc  c                                           ; $742f: $89
	ld   a, b                                        ; $7430: $78
	sbc  [hl]                                        ; $7431: $9e
	adc  h                                           ; $7432: $8c
	ld   l, l                                        ; $7433: $6d
	ld   a, b                                        ; $7434: $78
	ld   a, [$000d]                                  ; $7435: $fa $0d $00
	dec  d                                           ; $7438: $15
	dec  b                                           ; $7439: $05
	ld   de, $0600                                   ; $743a: $11 $00 $06
	dec  hl                                          ; $743d: $2b
	ld   c, $0a                                      ; $743e: $0e $0a
	add  hl, bc                                      ; $7440: $09
	inc  a                                           ; $7441: $3c
	inc  h                                           ; $7442: $24
	dec  b                                           ; $7443: $05
	ld   c, $8f                                      ; $7444: $0e $8f
	rrca                                             ; $7446: $0f
	nop                                              ; $7447: $00
	ld   bc, $0101                                   ; $7448: $01 $01 $01
	inc  bc                                          ; $744b: $03
	ld   l, e                                        ; $744c: $6b
	sbc  e                                           ; $744d: $9b
	ld   l, e                                        ; $744e: $6b
	sbc  e                                           ; $744f: $9b
	dec  b                                           ; $7450: $05
	adc  [hl]                                        ; $7451: $8e

Jump_065_7452:
	inc  bc                                          ; $7452: $03
	sub  l                                           ; $7453: $95
	ld   e, d                                        ; $7454: $5a
	inc  bc                                          ; $7455: $03
	add  b                                           ; $7456: $80
	sbc  c                                           ; $7457: $99
	dec  c                                           ; $7458: $0d
	db   $10                                         ; $7459: $10
	inc  bc                                          ; $745a: $03
	ld   l, a                                        ; $745b: $6f
	ld   [bc], a                                     ; $745c: $02
	xor  c                                           ; $745d: $a9
	ld   l, [hl]                                     ; $745e: $6e
	ld   a, b                                        ; $745f: $78
	rst  $38                                         ; $7460: $ff
	rst  $38                                         ; $7461: $ff
	ld   bc, $0d04                                   ; $7462: $01 $04 $0d
	nop                                              ; $7465: $00
	ld   a, [bc]                                     ; $7466: $0a
	rrca                                             ; $7467: $0f
	add  hl, bc                                      ; $7468: $09
	ld   bc, $0801                                   ; $7469: $01 $01 $08
	nop                                              ; $746c: $00
	ld   e, l                                        ; $746d: $5d
	and  c                                           ; $746e: $a1
	ld   a, [$000d]                                  ; $746f: $fa $0d $00
	ld   a, [bc]                                     ; $7472: $0a
	inc  de                                          ; $7473: $13
	dec  b                                           ; $7474: $05
	inc  e                                           ; $7475: $1c
	add  hl, bc                                      ; $7476: $09
	ld   bc, $0101                                   ; $7477: $01 $01 $01
	sub  [hl]                                        ; $747a: $96
	ld   e, c                                        ; $747b: $59
	ld   [hl], c                                     ; $747c: $71
	ld   l, l                                        ; $747d: $6d
	rst  $38                                         ; $747e: $ff
	rst  $38                                         ; $747f: $ff
	dec  c                                           ; $7480: $0d
	ld   [bc], a                                     ; $7481: $02
	xor  c                                           ; $7482: $a9
	ld   a, c                                        ; $7483: $79
	ld   d, b                                        ; $7484: $50
	ld   [hl], c                                     ; $7485: $71
	ld   l, l                                        ; $7486: $6d
	sbc  a                                           ; $7487: $9f
	dec  c                                           ; $7488: $0d
	nop                                              ; $7489: $00
	ld   a, [bc]                                     ; $748a: $0a
	rrca                                             ; $748b: $0f
	nop                                              ; $748c: $00
	ld   bc, $ff01                                   ; $748d: $01 $01 $ff
	rst  $38                                         ; $7490: $ff
	ld   [hl], a                                     ; $7491: $77
	ld   d, h                                        ; $7492: $54
	ld   h, l                                        ; $7493: $65
	ld   [hl], h                                     ; $7494: $74
	sbc  [hl]                                        ; $7495: $9e
	ld   h, c                                        ; $7496: $61
	ld   h, c                                        ; $7497: $61
	ld   e, d                                        ; $7498: $5a
	ld   sp, hl                                      ; $7499: $f9
	dec  c                                           ; $749a: $0d
	nop                                              ; $749b: $00
	ld   a, [bc]                                     ; $749c: $0a
	inc  e                                           ; $749d: $1c
	add  hl, bc                                      ; $749e: $09
	ld   bc, $0101                                   ; $749f: $01 $01 $01
	ld   e, b                                        ; $74a2: $58
	ld   d, d                                        ; $74a3: $52
	ld   e, b                                        ; $74a4: $58
	ld   d, d                                        ; $74a5: $52
	sbc  [hl]                                        ; $74a6: $9e
	dec  b                                           ; $74a7: $05
	ld   [hl], e                                     ; $74a8: $73
	ld   a, c                                        ; $74a9: $79
	ld   a, l                                        ; $74aa: $7d
	ld   h, c                                        ; $74ab: $61
	ld   a, h                                        ; $74ac: $7c
	dec  b                                           ; $74ad: $05
	adc  [hl]                                        ; $74ae: $8e
	inc  bc                                          ; $74af: $03
	sub  l                                           ; $74b0: $95
	ld   a, c                                        ; $74b1: $79
	dec  c                                           ; $74b2: $0d
	ld   a, h                                        ; $74b3: $7c
	sbc  c                                           ; $74b4: $99
	ld   [hl], c                                     ; $74b5: $71
	ld   [hl], h                                     ; $74b6: $74
	ld   [bc], a                                     ; $74b7: $02
	ret  nc                                          ; $74b8: $d0

	ld   d, [hl]                                     ; $74b9: $56
	ld   [hl], h                                     ; $74ba: $74
	ld   e, l                                        ; $74bb: $5d
	sbc  d                                           ; $74bc: $9a
	ld   l, l                                        ; $74bd: $6d
	ld   h, [hl]                                     ; $74be: $66
	sub  c                                           ; $74bf: $91
	dec  c                                           ; $74c0: $0d
	ld   a, b                                        ; $74c1: $78
	ld   d, d                                        ; $74c2: $52
	ld   e, c                                        ; $74c3: $59
	sbc  a                                           ; $74c4: $9f
	dec  c                                           ; $74c5: $0d
	nop                                              ; $74c6: $00
	ld   a, [bc]                                     ; $74c7: $0a
	ld   bc, $8b03                                   ; $74c8: $01 $03 $8b
	ld   a, l                                        ; $74cb: $7d
	ld   [bc], a                                     ; $74cc: $02
	jp   z, $0379                                    ; $74cd: $ca $79 $03

	ld   [$6d65], a                                  ; $74d0: $ea $65 $6d
	ld   d, d                                        ; $74d3: $52
	sub  b                                           ; $74d4: $90
	ld   a, h                                        ; $74d5: $7c
	ld   e, d                                        ; $74d6: $5a
	dec  c                                           ; $74d7: $0d
	ld   d, b                                        ; $74d8: $50
	sbc  c                                           ; $74d9: $99
	and  c                                           ; $74da: $a1
	ld   l, [hl]                                     ; $74db: $6e
	rst  $38                                         ; $74dc: $ff
	rst  $38                                         ; $74dd: $ff
	dec  c                                           ; $74de: $0d
	nop                                              ; $74df: $00
	ld   a, [bc]                                     ; $74e0: $0a
	dec  de                                          ; $74e1: $1b
	ccf                                              ; $74e2: $3f
	rrca                                             ; $74e3: $0f
	add  hl, bc                                      ; $74e4: $09
	ld   bc, $6101                                   ; $74e5: $01 $01 $61
	sbc  d                                           ; $74e8: $9a
	and  b                                           ; $74e9: $a0
	ld   [bc], a                                     ; $74ea: $02
	rst  $38                                         ; $74eb: $ff
	ld   e, a                                        ; $74ec: $5f
	halt                                             ; $74ed: $76
	ld   [hl], c                                     ; $74ee: $71
	ld   [hl], h                                     ; $74ef: $74
	adc  c                                           ; $74f0: $89
	ld   h, l                                        ; $74f1: $65
	ld   d, d                                        ; $74f2: $52
	rst  $38                                         ; $74f3: $ff
	rst  $38                                         ; $74f4: $ff
	dec  c                                           ; $74f5: $0d
	nop                                              ; $74f6: $00
	ld   a, [bc]                                     ; $74f7: $0a
	rrca                                             ; $74f8: $0f
	nop                                              ; $74f9: $00
	ld   bc, wVisitedTitleScreen                                   ; $74fa: $01 $01 $c2
	or   d                                           ; $74fd: $b2
	call nz, $ffc9                                   ; $74fe: $c4 $c9 $ff
	rst  $38                                         ; $7501: $ff
	ld   sp, hl                                      ; $7502: $f9
	dec  c                                           ; $7503: $0d
	nop                                              ; $7504: $00
	ld   a, [bc]                                     ; $7505: $0a
	rrca                                             ; $7506: $0f
	add  hl, bc                                      ; $7507: $09
	ld   bc, $6b01                                   ; $7508: $01 $01 $6b
	ld   d, h                                        ; $750b: $54
	sbc  [hl]                                        ; $750c: $9e
	inc  bc                                          ; $750d: $03
	ld   l, b                                        ; $750e: $68
	ld   [bc], a                                     ; $750f: $02
	sub  e                                           ; $7510: $93
	ld   [bc], a                                     ; $7511: $02
	sbc  c                                           ; $7512: $99
	ld   [bc], a                                     ; $7513: $02
	rra                                              ; $7514: $1f
	ld   a, h                                        ; $7515: $7c
	jp   nz, $c4b2                                   ; $7516: $c2 $b2 $c4

	ret                                              ; $7519: $c9


	ld   h, e                                        ; $751a: $63
	sbc  a                                           ; $751b: $9f
	dec  c                                           ; $751c: $0d
	ld   h, c                                        ; $751d: $61
	sbc  d                                           ; $751e: $9a
	and  b                                           ; $751f: $a0
	ld   [bc], a                                     ; $7520: $02
	sub  l                                           ; $7521: $95
	ld   a, c                                        ; $7522: $79
	dec  b                                           ; $7523: $05
	db   $10                                         ; $7524: $10
	sbc  d                                           ; $7525: $9a
	ld   a, [hl]                                     ; $7526: $7e
	sbc  [hl]                                        ; $7527: $9e
	adc  l                                           ; $7528: $8d
	and  c                                           ; $7529: $a1
	ld   a, b                                        ; $752a: $78
	halt                                             ; $752b: $76
	dec  c                                           ; $752c: $0d
	ld   [bc], a                                     ; $752d: $02
	add  [hl]                                        ; $752e: $86
	ld   d, h                                        ; $752f: $54
	ld   [bc], a                                     ; $7530: $02
	ld   e, b                                        ; $7531: $58
	ld   [bc], a                                     ; $7532: $02
	add  [hl]                                        ; $7533: $86
	ld   e, d                                        ; $7534: $5a
	inc  bc                                          ; $7535: $03
	xor  h                                           ; $7536: $ac
	sbc  d                                           ; $7537: $9a
	sbc  c                                           ; $7538: $99
	ld   h, [hl]                                     ; $7539: $66
	sub  c                                           ; $753a: $91
	ld   a, b                                        ; $753b: $78
	ld   d, d                                        ; $753c: $52
	ld   e, c                                        ; $753d: $59
	sbc  a                                           ; $753e: $9f
	dec  c                                           ; $753f: $0d
	nop                                              ; $7540: $00
	ld   a, [bc]                                     ; $7541: $0a
	rrca                                             ; $7542: $0f
	nop                                              ; $7543: $00
	ld   bc, $5001                                   ; $7544: $01 $01 $50
	sbc  b                                           ; $7547: $98
	ld   e, d                                        ; $7548: $5a
	halt                                             ; $7549: $76
	ld   d, h                                        ; $754a: $54
	ld   h, d                                        ; $754b: $62
	ld   h, h                                        ; $754c: $64
	ld   d, d                                        ; $754d: $52
	adc  h                                           ; $754e: $8c
	ld   h, a                                        ; $754f: $67
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	dec  c                                           ; $7552: $0d
	inc  b                                           ; $7553: $04
	ld   c, $03                                      ; $7554: $0e $03
	sub  b                                           ; $7556: $90
	ld   h, e                                        ; $7557: $63
	and  c                                           ; $7558: $a1
	sbc  a                                           ; $7559: $9f
	dec  c                                           ; $755a: $0d
	nop                                              ; $755b: $00
	ld   a, [bc]                                     ; $755c: $0a
	inc  e                                           ; $755d: $1c
	add  hl, bc                                      ; $755e: $09
	ld   bc, $0101                                   ; $755f: $01 $01 $01
	ld   h, [hl]                                     ; $7562: $66
	sub  c                                           ; $7563: $91
	ld   d, b                                        ; $7564: $50
	sbc  [hl]                                        ; $7565: $9e
	adc  h                                           ; $7566: $8c
	ld   l, l                                        ; $7567: $6d
	ld   a, b                                        ; $7568: $78
	sbc  a                                           ; $7569: $9f
	dec  c                                           ; $756a: $0d
	ld   [bc], a                                     ; $756b: $02
	xor  h                                           ; $756c: $ac
	ld   [bc], a                                     ; $756d: $02
	and  c                                           ; $756e: $a1
	ld   [hl], l                                     ; $756f: $75
	sbc  a                                           ; $7570: $9f
	dec  c                                           ; $7571: $0d
	nop                                              ; $7572: $00
	ld   a, [bc]                                     ; $7573: $0a
	ld   de, $2400                                   ; $7574: $11 $00 $24
	add  hl, bc                                      ; $7577: $09
	inc  c                                           ; $7578: $0c
	ld   bc, $0401                                   ; $7579: $01 $01 $04
	ld   [$8f02], sp                                 ; $757c: $08 $02 $8f
	ld   [bc], a                                     ; $757f: $02
	sub  b                                           ; $7580: $90
	ld   [bc], a                                     ; $7581: $02
	sub  c                                           ; $7582: $91
	inc  b                                           ; $7583: $04
	add  hl, bc                                      ; $7584: $09
	rst  $38                                         ; $7585: $ff
	rst  $38                                         ; $7586: $ff
	ld   e, c                                        ; $7587: $59
	rst  $38                                         ; $7588: $ff
	rst  $38                                         ; $7589: $ff
	dec  c                                           ; $758a: $0d
	adc  h                                           ; $758b: $8c
	ld   l, l                                        ; $758c: $6d
	sbc  [hl]                                        ; $758d: $9e
	dec  b                                           ; $758e: $05
	db   $10                                         ; $758f: $10
	sbc  d                                           ; $7590: $9a
	sbc  c                                           ; $7591: $99
	halt                                             ; $7592: $76
	ld   d, d                                        ; $7593: $52
	ld   d, d                                        ; $7594: $52
	ld   a, h                                        ; $7595: $7c
	ld   a, c                                        ; $7596: $79
	ld   a, b                                        ; $7597: $78
	rst  $38                                         ; $7598: $ff
	rst  $38                                         ; $7599: $ff
	dec  c                                           ; $759a: $0d
	nop                                              ; $759b: $00
	ld   a, [bc]                                     ; $759c: $0a
	inc  c                                           ; $759d: $0c
	ld   [bc], a                                     ; $759e: $02
	ld   c, $c5                                      ; $759f: $0e $c5
	inc  e                                           ; $75a1: $1c
	ld   bc, $0101                                   ; $75a2: $01 $01 $01
	ld   bc, $0008                                   ; $75a5: $01 $08 $00
	ld   h, e                                        ; $75a8: $63
	and  c                                           ; $75a9: $a1
	sbc  a                                           ; $75aa: $9f
	dec  c                                           ; $75ab: $0d
	nop                                              ; $75ac: $00
	ld   a, [bc]                                     ; $75ad: $0a
	rrca                                             ; $75ae: $0f
	nop                                              ; $75af: $00
	ld   bc, $6301                                   ; $75b0: $01 $01 $63
	ld   e, l                                        ; $75b3: $5d
	sub  a                                           ; $75b4: $97
	ld   h, e                                        ; $75b5: $63
	and  c                                           ; $75b6: $a1
	sbc  a                                           ; $75b7: $9f
	dec  c                                           ; $75b8: $0d
	ld   [hl], a                                     ; $75b9: $77
	ld   d, h                                        ; $75ba: $54
	ld   h, l                                        ; $75bb: $65
	ld   l, l                                        ; $75bc: $6d
	and  c                                           ; $75bd: $a1
	ld   [hl], l                                     ; $75be: $75
	ld   h, a                                        ; $75bf: $67
	ld   e, c                                        ; $75c0: $59
	ld   sp, hl                                      ; $75c1: $f9
	dec  c                                           ; $75c2: $0d
	nop                                              ; $75c3: $00
	ld   a, [bc]                                     ; $75c4: $0a
	rrca                                             ; $75c5: $0f
	ld   bc, $0101                                   ; $75c6: $01 $01 $01
	ld   [$6300], sp                                 ; $75c9: $08 $00 $63
	and  c                                           ; $75cc: $a1
	sbc  a                                           ; $75cd: $9f
	dec  c                                           ; $75ce: $0d
	ld   d, b                                        ; $75cf: $50
	ld   l, l                                        ; $75d0: $6d
	ld   h, l                                        ; $75d1: $65
	ld   a, h                                        ; $75d2: $7c
	inc  bc                                          ; $75d3: $03
	ld   l, l                                        ; $75d4: $6d
	dec  b                                           ; $75d5: $05
	add  hl, de                                      ; $75d6: $19
	sbc  [hl]                                        ; $75d7: $9e
	ld   e, d                                        ; $75d8: $5a
	and  c                                           ; $75d9: $a1
	ld   a, [hl]                                     ; $75da: $7e
	ld   [hl], c                                     ; $75db: $71
	ld   [hl], h                                     ; $75dc: $74
	dec  c                                           ; $75dd: $0d
	ld   e, l                                        ; $75de: $5d
	sbc  d                                           ; $75df: $9a
	ld   [hl], h                                     ; $75e0: $74
	ld   d, b                                        ; $75e1: $50
	sbc  b                                           ; $75e2: $98
	ld   e, d                                        ; $75e3: $5a
	halt                                             ; $75e4: $76
	ld   d, h                                        ; $75e5: $54
	sbc  a                                           ; $75e6: $9f
	dec  c                                           ; $75e7: $0d
	nop                                              ; $75e8: $00
	ld   a, [bc]                                     ; $75e9: $0a
	ld   bc, $9a61                                   ; $75ea: $01 $61 $9a
	ld   e, c                                        ; $75ed: $59
	sub  a                                           ; $75ee: $97
	sub  b                                           ; $75ef: $90
	sbc  [hl]                                        ; $75f0: $9e
	inc  b                                           ; $75f1: $04
	xor  d                                           ; $75f2: $aa
	ld   bc, $7c14                                   ; $75f3: $01 $14 $7c
	inc  bc                                          ; $75f6: $03
	db   $ec                                         ; $75f7: $ec
	dec  b                                           ; $75f8: $05
	add  hl, de                                      ; $75f9: $19
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	dec  c                                           ; $75fc: $0d
	inc  b                                           ; $75fd: $04
	and  e                                           ; $75fe: $a3
	sbc  d                                           ; $75ff: $9a
	ld   l, b                                        ; $7600: $68
	ld   a, c                                        ; $7601: $79
	ld   [bc], a                                     ; $7602: $02
	ei                                               ; $7603: $fb
	ld   e, a                                        ; $7604: $5f
	ld   [hl], h                                     ; $7605: $74
	ld   [bc], a                                     ; $7606: $02
	inc  [hl]                                        ; $7607: $34
	ld   h, e                                        ; $7608: $63
	ld   d, d                                        ; $7609: $52
	ld   a, e                                        ; $760a: $7b
	sbc  a                                           ; $760b: $9f
	dec  c                                           ; $760c: $0d
	ld   h, [hl]                                     ; $760d: $66
	sub  c                                           ; $760e: $91
	ld   d, b                                        ; $760f: $50
	sbc  a                                           ; $7610: $9f
	dec  c                                           ; $7611: $0d
	nop                                              ; $7612: $00
	ld   a, [bc]                                     ; $7613: $0a
	dec  c                                           ; $7614: $0d
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	rrca                                             ; $7617: $0f
	nop                                              ; $7618: $00
	ld   bc, $020c                                   ; $7619: $01 $0c $02
	inc  de                                          ; $761c: $13
	add  b                                           ; $761d: $80
	add  hl, bc                                      ; $761e: $09
	ld   d, b                                        ; $761f: $50
	ld   b, $ff                                      ; $7620: $06 $ff
	inc  de                                          ; $7622: $13
	inc  c                                           ; $7623: $0c
	ld   bc, $0401                                   ; $7624: $01 $01 $04
	ld   [$8f02], sp                                 ; $7627: $08 $02 $8f
	ld   [bc], a                                     ; $762a: $02
	sub  b                                           ; $762b: $90
	ld   [bc], a                                     ; $762c: $02
	sub  c                                           ; $762d: $91
	inc  b                                           ; $762e: $04
	add  hl, bc                                      ; $762f: $09
	rst  $38                                         ; $7630: $ff
	rst  $38                                         ; $7631: $ff
	ld   e, c                                        ; $7632: $59
	rst  $38                                         ; $7633: $ff
	rst  $38                                         ; $7634: $ff
	dec  c                                           ; $7635: $0d
	adc  h                                           ; $7636: $8c
	ld   l, l                                        ; $7637: $6d
	sbc  [hl]                                        ; $7638: $9e
	dec  b                                           ; $7639: $05
	db   $10                                         ; $763a: $10
	sbc  d                                           ; $763b: $9a
	sbc  c                                           ; $763c: $99
	halt                                             ; $763d: $76
	ld   d, d                                        ; $763e: $52
	ld   d, d                                        ; $763f: $52
	ld   a, h                                        ; $7640: $7c
	ld   a, c                                        ; $7641: $79
	ld   a, b                                        ; $7642: $78
	rst  $38                                         ; $7643: $ff
	rst  $38                                         ; $7644: $ff
	dec  c                                           ; $7645: $0d
	nop                                              ; $7646: $00
	ld   a, [bc]                                     ; $7647: $0a
	inc  c                                           ; $7648: $0c
	ld   [bc], a                                     ; $7649: $02
	ld   c, $c5                                      ; $764a: $0e $c5
	inc  e                                           ; $764c: $1c
	ld   [bc], a                                     ; $764d: $02
	ld   bc, $0101                                   ; $764e: $01 $01 $01
	ld   [$6300], sp                                 ; $7651: $08 $00 $63
	and  c                                           ; $7654: $a1
	sbc  a                                           ; $7655: $9f
	dec  c                                           ; $7656: $0d
	nop                                              ; $7657: $00
	ld   a, [bc]                                     ; $7658: $0a
	rrca                                             ; $7659: $0f
	nop                                              ; $765a: $00
	ld   bc, $6701                                   ; $765b: $01 $01 $67
	adc  l                                           ; $765e: $8d
	sbc  d                                           ; $765f: $9a
	ld   h, e                                        ; $7660: $63
	and  c                                           ; $7661: $a1
	sbc  a                                           ; $7662: $9f
	dec  c                                           ; $7663: $0d
	ld   [hl], a                                     ; $7664: $77
	ld   d, h                                        ; $7665: $54
	ld   h, l                                        ; $7666: $65
	ld   l, l                                        ; $7667: $6d
	and  c                                           ; $7668: $a1
	ld   [hl], l                                     ; $7669: $75
	ld   h, a                                        ; $766a: $67
	ld   e, c                                        ; $766b: $59
	ld   sp, hl                                      ; $766c: $f9
	dec  c                                           ; $766d: $0d
	nop                                              ; $766e: $00
	ld   a, [bc]                                     ; $766f: $0a
	rrca                                             ; $7670: $0f
	ld   [bc], a                                     ; $7671: $02
	ld   bc, $0801                                   ; $7672: $01 $01 $08
	nop                                              ; $7675: $00
	ld   h, e                                        ; $7676: $63
	and  c                                           ; $7677: $a1
	sbc  a                                           ; $7678: $9f
	dec  c                                           ; $7679: $0d
	sbc  l                                           ; $767a: $9d
	ld   l, l                                        ; $767b: $6d
	ld   e, l                                        ; $767c: $5d
	ld   h, l                                        ; $767d: $65
	ld   a, h                                        ; $767e: $7c
	inc  bc                                          ; $767f: $03
	ld   l, l                                        ; $7680: $6d
	dec  b                                           ; $7681: $05
	add  hl, de                                      ; $7682: $19
	sbc  [hl]                                        ; $7683: $9e
	sub  [hl]                                        ; $7684: $96
	ld   e, l                                        ; $7685: $5d
	dec  c                                           ; $7686: $0d
	ld   e, d                                        ; $7687: $5a
	and  c                                           ; $7688: $a1
	ld   a, [hl]                                     ; $7689: $7e
	sbc  b                                           ; $768a: $98
	adc  h                                           ; $768b: $8c
	ld   h, l                                        ; $768c: $65
	ld   l, l                                        ; $768d: $6d
	sbc  l                                           ; $768e: $9d
	ld   a, e                                        ; $768f: $7b
	sbc  a                                           ; $7690: $9f
	dec  c                                           ; $7691: $0d
	nop                                              ; $7692: $00
	ld   a, [bc]                                     ; $7693: $0a
	inc  e                                           ; $7694: $1c
	ld   [bc], a                                     ; $7695: $02
	ld   [bc], a                                     ; $7696: $02
	ld   [bc], a                                     ; $7697: $02
	ld   bc, $9a61                                   ; $7698: $01 $61 $9a
	ld   e, c                                        ; $769b: $59
	sub  a                                           ; $769c: $97
	sub  b                                           ; $769d: $90
	sbc  [hl]                                        ; $769e: $9e
	inc  bc                                          ; $769f: $03

Jump_065_76a0:
	ld   [hl], l                                     ; $76a0: $75
	halt                                             ; $76a1: $76
	inc  b                                           ; $76a2: $04
	dec  c                                           ; $76a3: $0d
	ld   a, h                                        ; $76a4: $7c
	inc  bc                                          ; $76a5: $03
	db   $ec                                         ; $76a6: $ec
	dec  b                                           ; $76a7: $05
	add  hl, de                                      ; $76a8: $19
	rst  $38                                         ; $76a9: $ff
	dec  c                                           ; $76aa: $0d
	ld   e, e                                        ; $76ab: $5b
	ld   l, a                                        ; $76ac: $6f
	and  c                                           ; $76ad: $a1
	halt                                             ; $76ae: $76
	ld   [bc], a                                     ; $76af: $02
	ei                                               ; $76b0: $fb
	ld   e, a                                        ; $76b1: $5f
	sbc  c                                           ; $76b2: $99
	ld   a, h                                        ; $76b3: $7c
	ld   [hl], l                                     ; $76b4: $75
	ld   h, a                                        ; $76b5: $67
	sbc  l                                           ; $76b6: $9d
	sub  [hl]                                        ; $76b7: $96
	sbc  a                                           ; $76b8: $9f
	dec  c                                           ; $76b9: $0d
	ld   l, e                                        ; $76ba: $6b
	ld   h, l                                        ; $76bb: $65
	ld   [hl], h                                     ; $76bc: $74
	rst  $38                                         ; $76bd: $ff
	rst  $38                                         ; $76be: $ff
	rst  $38                                         ; $76bf: $ff
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	dec  c                                           ; $76c3: $0d
	nop                                              ; $76c4: $00
	ld   a, [bc]                                     ; $76c5: $0a
	inc  e                                           ; $76c6: $1c
	ld   [bc], a                                     ; $76c7: $02
	ld   bc, $0101                                   ; $76c8: $01 $01 $01
	sbc  l                                           ; $76cb: $9d
	ld   l, l                                        ; $76cc: $6d
	ld   e, l                                        ; $76cd: $5d
	ld   h, l                                        ; $76ce: $65
	ld   a, h                                        ; $76cf: $7c
	sub  [hl]                                        ; $76d0: $96
	ld   d, h                                        ; $76d1: $54
	ld   a, b                                        ; $76d2: $78
	inc  bc                                          ; $76d3: $03
	add  d                                           ; $76d4: $82
	ld   [bc], a                                     ; $76d5: $02
	xor  c                                           ; $76d6: $a9
	ld   a, c                                        ; $76d7: $79
	dec  c                                           ; $76d8: $0d
	ld   e, b                                        ; $76d9: $58
	ld   a, b                                        ; $76da: $78
	sbc  b                                           ; $76db: $98
	ld   a, b                                        ; $76dc: $78
	ld   h, e                                        ; $76dd: $63
	ld   d, d                                        ; $76de: $52
	ld   a, b                                        ; $76df: $78
	sbc  a                                           ; $76e0: $9f
	dec  c                                           ; $76e1: $0d
	ld   e, b                                        ; $76e2: $58
	ei                                               ; $76e3: $fb
	adc  c                                           ; $76e4: $89
	ld   [hl], c                                     ; $76e5: $71
	adc  c                                           ; $76e6: $89
	ld   [hl], c                                     ; $76e7: $71
	adc  c                                           ; $76e8: $89
	ld   [hl], c                                     ; $76e9: $71
	ld   a, [$000d]                                  ; $76ea: $fa $0d $00
	ld   a, [bc]                                     ; $76ed: $0a
	dec  c                                           ; $76ee: $0d
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	rrca                                             ; $76f1: $0f
	nop                                              ; $76f2: $00
	ld   bc, $020c                                   ; $76f3: $01 $0c $02
	inc  de                                          ; $76f6: $13
	add  b                                           ; $76f7: $80
	add  hl, bc                                      ; $76f8: $09
	ld   d, b                                        ; $76f9: $50
	ld   b, $ff                                      ; $76fa: $06 $ff
	inc  de                                          ; $76fc: $13
	inc  c                                           ; $76fd: $0c
	ld   bc, $0401                                   ; $76fe: $01 $01 $04
	ld   [$8f02], sp                                 ; $7701: $08 $02 $8f
	ld   [bc], a                                     ; $7704: $02
	sub  b                                           ; $7705: $90
	ld   [bc], a                                     ; $7706: $02
	sub  c                                           ; $7707: $91
	inc  b                                           ; $7708: $04
	add  hl, bc                                      ; $7709: $09
	rst  $38                                         ; $770a: $ff
	rst  $38                                         ; $770b: $ff
	ld   e, c                                        ; $770c: $59
	rst  $38                                         ; $770d: $ff
	rst  $38                                         ; $770e: $ff
	dec  c                                           ; $770f: $0d
	adc  h                                           ; $7710: $8c
	ld   l, l                                        ; $7711: $6d
	sbc  [hl]                                        ; $7712: $9e
	dec  b                                           ; $7713: $05
	db   $10                                         ; $7714: $10
	sbc  d                                           ; $7715: $9a
	sbc  c                                           ; $7716: $99
	halt                                             ; $7717: $76
	ld   d, d                                        ; $7718: $52
	ld   d, d                                        ; $7719: $52
	ld   a, h                                        ; $771a: $7c
	ld   a, c                                        ; $771b: $79
	ld   a, b                                        ; $771c: $78
	rst  $38                                         ; $771d: $ff
	rst  $38                                         ; $771e: $ff
	dec  c                                           ; $771f: $0d
	nop                                              ; $7720: $00
	ld   a, [bc]                                     ; $7721: $0a
	inc  c                                           ; $7722: $0c
	ld   [bc], a                                     ; $7723: $02
	ld   c, $c5                                      ; $7724: $0e $c5
	inc  e                                           ; $7726: $1c
	inc  bc                                          ; $7727: $03
	inc  bc                                          ; $7728: $03
	inc  bc                                          ; $7729: $03
	ld   bc, $0008                                   ; $772a: $01 $08 $00
	ld   e, l                                        ; $772d: $5d
	and  c                                           ; $772e: $a1
	sbc  a                                           ; $772f: $9f
	dec  c                                           ; $7730: $0d
	nop                                              ; $7731: $00
	ld   a, [bc]                                     ; $7732: $0a
	rrca                                             ; $7733: $0f
	nop                                              ; $7734: $00
	ld   bc, $df01                                   ; $7735: $01 $01 $df
	db   $ec                                         ; $7738: $ec
	and  e                                           ; $7739: $a3
	ld   h, e                                        ; $773a: $63
	and  c                                           ; $773b: $a1
	sbc  a                                           ; $773c: $9f
	dec  c                                           ; $773d: $0d
	ld   [hl], a                                     ; $773e: $77
	ld   d, h                                        ; $773f: $54
	ld   h, l                                        ; $7740: $65
	ld   l, l                                        ; $7741: $6d
	and  c                                           ; $7742: $a1
	ld   [hl], l                                     ; $7743: $75
	ld   h, a                                        ; $7744: $67
	ld   e, c                                        ; $7745: $59
	ld   sp, hl                                      ; $7746: $f9
	dec  c                                           ; $7747: $0d
	nop                                              ; $7748: $00
	ld   a, [bc]                                     ; $7749: $0a
	rrca                                             ; $774a: $0f
	inc  bc                                          ; $774b: $03
	inc  bc                                          ; $774c: $03
	ld   bc, $0008                                   ; $774d: $01 $08 $00
	ld   e, l                                        ; $7750: $5d
	and  c                                           ; $7751: $a1
	sbc  a                                           ; $7752: $9f
	dec  c                                           ; $7753: $0d
	inc  bc                                          ; $7754: $03
	ret  z                                           ; $7755: $c8

	ld   a, h                                        ; $7756: $7c
	inc  bc                                          ; $7757: $03
	ld   l, l                                        ; $7758: $6d
	dec  b                                           ; $7759: $05
	add  hl, de                                      ; $775a: $19
	sbc  [hl]                                        ; $775b: $9e
	ld   e, d                                        ; $775c: $5a
	and  c                                           ; $775d: $a1
	ld   a, [hl]                                     ; $775e: $7e
	ld   [hl], c                                     ; $775f: $71
	ld   l, l                                        ; $7760: $6d
	sbc  l                                           ; $7761: $9d
	ld   a, e                                        ; $7762: $7b
	sbc  a                                           ; $7763: $9f
	dec  c                                           ; $7764: $0d
	nop                                              ; $7765: $00
	ld   a, [bc]                                     ; $7766: $0a
	inc  e                                           ; $7767: $1c
	inc  bc                                          ; $7768: $03
	inc  b                                           ; $7769: $04
	inc  b                                           ; $776a: $04
	ld   bc, $4a03                                   ; $776b: $01 $03 $4a
	inc  bc                                          ; $776e: $03
	jp   c, Jump_065_619e                            ; $776f: $da $9e $61

	ld   h, c                                        ; $7772: $61
	adc  h                                           ; $7773: $8c
	ld   [hl], l                                     ; $7774: $75
	ld   e, d                                        ; $7775: $5a
	and  c                                           ; $7776: $a1
	ld   a, [hl]                                     ; $7777: $7e
	sbc  c                                           ; $7778: $99
	dec  c                                           ; $7779: $0d
	ld   a, b                                        ; $777a: $78
	and  c                                           ; $777b: $a1
	ld   [hl], h                                     ; $777c: $74
	sbc  [hl]                                        ; $777d: $9e
	dec  b                                           ; $777e: $05
	pop  de                                          ; $777f: $d1
	ld   [hl], c                                     ; $7780: $71
	ld   [hl], h                                     ; $7781: $74
	ld   a, b                                        ; $7782: $78
	ld   e, c                                        ; $7783: $59
	ld   [hl], c                                     ; $7784: $71
	ld   l, l                                        ; $7785: $6d
	sbc  l                                           ; $7786: $9d
	sbc  a                                           ; $7787: $9f
	dec  c                                           ; $7788: $0d
	nop                                              ; $7789: $00
	ld   a, [bc]                                     ; $778a: $0a
	inc  e                                           ; $778b: $1c
	inc  bc                                          ; $778c: $03
	inc  bc                                          ; $778d: $03
	inc  bc                                          ; $778e: $03
	ld   bc, $9a61                                   ; $778f: $01 $61 $9a
	ld   e, c                                        ; $7792: $59
	sub  a                                           ; $7793: $97
	sub  b                                           ; $7794: $90
	sbc  [hl]                                        ; $7795: $9e
	ld   l, e                                        ; $7796: $6b
	ld   a, h                                        ; $7797: $7c
	ld   e, d                                        ; $7798: $5a
	and  c                                           ; $7799: $a1
	ld   a, [hl]                                     ; $779a: $7e
	sbc  b                                           ; $779b: $98
	and  b                                           ; $779c: $a0
	dec  c                                           ; $779d: $0d
	inc  bc                                          ; $779e: $03
	and  b                                           ; $779f: $a0
	ld   [hl], c                                     ; $77a0: $71
	ld   [hl], h                                     ; $77a1: $74
	sbc  [hl]                                        ; $77a2: $9e
	ld   d, d                                        ; $77a3: $52
	sbc  e                                           ; $77a4: $9b
	ld   d, d                                        ; $77a5: $52
	sbc  e                                           ; $77a6: $9b
	ld   a, b                                        ; $77a7: $78
	ld   [bc], a                                     ; $77a8: $02
	jp   $0d79                                       ; $77a9: $c3 $79 $0d


	jp   nz, $eee5                                   ; $77ac: $c2 $e5 $ee

	push af                                          ; $77af: $f5
	cp   c                                           ; $77b0: $b9
	ld   h, l                                        ; $77b1: $65
	ld   [hl], h                                     ; $77b2: $74
	ld   d, d                                        ; $77b3: $52
	ld   e, e                                        ; $77b4: $5b
	ld   a, b                                        ; $77b5: $78
	ld   h, e                                        ; $77b6: $63
	ld   d, d                                        ; $77b7: $52
	sbc  a                                           ; $77b8: $9f
	dec  c                                           ; $77b9: $0d
	nop                                              ; $77ba: $00
	ld   a, [bc]                                     ; $77bb: $0a
	ld   bc, $9166                                   ; $77bc: $01 $66 $91
	sbc  [hl]                                        ; $77bf: $9e
	ld   [bc], a                                     ; $77c0: $02
	xor  h                                           ; $77c1: $ac
	ld   [bc], a                                     ; $77c2: $02
	and  c                                           ; $77c3: $a1
	ld   [hl], l                                     ; $77c4: $75
	ld   a, e                                        ; $77c5: $7b
	sbc  a                                           ; $77c6: $9f
	dec  c                                           ; $77c7: $0d
	nop                                              ; $77c8: $00
	ld   a, [bc]                                     ; $77c9: $0a
	dec  c                                           ; $77ca: $0d
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	rrca                                             ; $77cd: $0f
	nop                                              ; $77ce: $00
	ld   bc, $020c                                   ; $77cf: $01 $0c $02
	inc  de                                          ; $77d2: $13
	add  b                                           ; $77d3: $80
	add  hl, bc                                      ; $77d4: $09
	ld   d, b                                        ; $77d5: $50
	ld   b, $ff                                      ; $77d6: $06 $ff
	inc  de                                          ; $77d8: $13
	inc  c                                           ; $77d9: $0c
	ld   bc, $0401                                   ; $77da: $01 $01 $04
	ld   [$8f02], sp                                 ; $77dd: $08 $02 $8f
	ld   [bc], a                                     ; $77e0: $02
	sub  b                                           ; $77e1: $90
	ld   [bc], a                                     ; $77e2: $02
	sub  c                                           ; $77e3: $91
	inc  b                                           ; $77e4: $04
	add  hl, bc                                      ; $77e5: $09
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	ld   e, c                                        ; $77e8: $59
	rst  $38                                         ; $77e9: $ff
	rst  $38                                         ; $77ea: $ff
	dec  c                                           ; $77eb: $0d
	adc  h                                           ; $77ec: $8c
	ld   l, l                                        ; $77ed: $6d
	sbc  [hl]                                        ; $77ee: $9e
	dec  b                                           ; $77ef: $05
	db   $10                                         ; $77f0: $10
	sbc  d                                           ; $77f1: $9a
	sbc  c                                           ; $77f2: $99
	halt                                             ; $77f3: $76
	ld   d, d                                        ; $77f4: $52
	ld   d, d                                        ; $77f5: $52
	ld   a, h                                        ; $77f6: $7c
	ld   a, c                                        ; $77f7: $79
	ld   a, b                                        ; $77f8: $78
	rst  $38                                         ; $77f9: $ff
	rst  $38                                         ; $77fa: $ff
	dec  c                                           ; $77fb: $0d
	nop                                              ; $77fc: $00
	ld   a, [bc]                                     ; $77fd: $0a
	inc  c                                           ; $77fe: $0c
	ld   [bc], a                                     ; $77ff: $02
	ld   c, $c5                                      ; $7800: $0e $c5
	inc  e                                           ; $7802: $1c
	ld   b, $01                                      ; $7803: $06 $01
	ld   bc, $0801                                   ; $7805: $01 $01 $08
	nop                                              ; $7808: $00
	ld   a, [$000d]                                  ; $7809: $fa $0d $00
	ld   a, [bc]                                     ; $780c: $0a
	rrca                                             ; $780d: $0f
	nop                                              ; $780e: $00
	ld   bc, $ac01                                   ; $780f: $01 $01 $ac
	push af                                          ; $7812: $f5
	bit  4, e                                        ; $7813: $cb $63
	and  c                                           ; $7815: $a1
	sbc  a                                           ; $7816: $9f
	dec  c                                           ; $7817: $0d
	ld   [hl], a                                     ; $7818: $77
	ld   d, h                                        ; $7819: $54
	ld   h, l                                        ; $781a: $65
	ld   l, l                                        ; $781b: $6d
	and  c                                           ; $781c: $a1
	ld   [hl], l                                     ; $781d: $75
	ld   h, a                                        ; $781e: $67
	ld   e, c                                        ; $781f: $59
	ld   sp, hl                                      ; $7820: $f9
	dec  c                                           ; $7821: $0d
	nop                                              ; $7822: $00
	ld   a, [bc]                                     ; $7823: $0a
	rrca                                             ; $7824: $0f
	ld   b, $01                                      ; $7825: $06 $01
	ld   bc, $0008                                   ; $7827: $01 $08 $00
	sbc  a                                           ; $782a: $9f
	dec  c                                           ; $782b: $0d
	ld   d, b                                        ; $782c: $50
	ld   l, l                                        ; $782d: $6d
	ld   d, d                                        ; $782e: $52
	ld   a, h                                        ; $782f: $7c
	inc  bc                                          ; $7830: $03
	ld   l, l                                        ; $7831: $6d
	dec  b                                           ; $7832: $05
	add  hl, de                                      ; $7833: $19
	sbc  [hl]                                        ; $7834: $9e
	inc  b                                           ; $7835: $04
	adc  a                                           ; $7836: $8f
	inc  b                                           ; $7837: $04
	jr   jr_065_78b3                                 ; $7838: $18 $79

	sub  [hl]                                        ; $783a: $96
	ld   e, l                                        ; $783b: $5d
	dec  c                                           ; $783c: $0d
	ld   e, d                                        ; $783d: $5a
	and  c                                           ; $783e: $a1
	ld   a, [hl]                                     ; $783f: $7e
	ld   [hl], c                                     ; $7840: $71
	ld   l, l                                        ; $7841: $6d
	ld   a, b                                        ; $7842: $78
	sbc  a                                           ; $7843: $9f
	dec  c                                           ; $7844: $0d
	nop                                              ; $7845: $00
	ld   a, [bc]                                     ; $7846: $0a
	ld   bc, $9a61                                   ; $7847: $01 $61 $9a
	ld   e, c                                        ; $784a: $59
	sub  a                                           ; $784b: $97
	sub  b                                           ; $784c: $90
	sbc  [hl]                                        ; $784d: $9e
	xor  l                                           ; $784e: $ad
	push af                                          ; $784f: $f5
	xor  l                                           ; $7850: $ad
	push af                                          ; $7851: $f5
	inc  b                                           ; $7852: $04
	dec  c                                           ; $7853: $0d
	and  b                                           ; $7854: $a0
	dec  c                                           ; $7855: $0d
	ld   e, e                                        ; $7856: $5b
	ld   l, l                                        ; $7857: $6d
	ld   d, [hl]                                     ; $7858: $56

Jump_065_7859:
	sbc  c                                           ; $7859: $99
	and  c                                           ; $785a: $a1
	ld   l, [hl]                                     ; $785b: $6e
	ld   l, h                                        ; $785c: $6c
	sbc  a                                           ; $785d: $9f
	dec  c                                           ; $785e: $0d
	nop                                              ; $785f: $00
	ld   a, [bc]                                     ; $7860: $0a
	ld   bc, $7302                                   ; $7861: $01 $02 $73
	inc  bc                                          ; $7864: $03
	ld   d, a                                        ; $7865: $57
	ld   a, b                                        ; $7866: $78
	sbc  c                                           ; $7867: $99
	dec  b                                           ; $7868: $05
	ldh  [$03], a                                    ; $7869: $e0 $03
	sub  b                                           ; $786b: $90
	ld   a, l                                        ; $786c: $7d
	sbc  [hl]                                        ; $786d: $9e
	dec  c                                           ; $786e: $0d
	ld   [bc], a                                     ; $786f: $02
	ld   [hl], e                                     ; $7870: $73
	inc  bc                                          ; $7871: $03
	ld   d, a                                        ; $7872: $57
	ld   a, b                                        ; $7873: $78
	sbc  c                                           ; $7874: $99
	inc  b                                           ; $7875: $04
	pop  de                                          ; $7876: $d1
	inc  b                                           ; $7877: $04
	dec  c                                           ; $7878: $0d

Jump_065_7879:
	ld   a, c                                        ; $7879: $79
	inc  bc                                          ; $787a: $03
	ld   b, a                                        ; $787b: $47
	sbc  c                                           ; $787c: $99
	ld   l, [hl]                                     ; $787d: $6e
	sbc  a                                           ; $787e: $9f
	dec  c                                           ; $787f: $0d
	ld   h, [hl]                                     ; $7880: $66
	sub  c                                           ; $7881: $91
	sbc  [hl]                                        ; $7882: $9e
	ld   [bc], a                                     ; $7883: $02
	xor  h                                           ; $7884: $ac
	ld   [bc], a                                     ; $7885: $02
	and  c                                           ; $7886: $a1
	ld   [hl], l                                     ; $7887: $75
	ld   a, b                                        ; $7888: $78
	sbc  a                                           ; $7889: $9f
	dec  c                                           ; $788a: $0d
	nop                                              ; $788b: $00
	ld   a, [bc]                                     ; $788c: $0a
	dec  c                                           ; $788d: $0d
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	rrca                                             ; $7890: $0f
	nop                                              ; $7891: $00
	ld   bc, $020c                                   ; $7892: $01 $0c $02
	inc  de                                          ; $7895: $13
	add  b                                           ; $7896: $80
	add  hl, bc                                      ; $7897: $09
	ld   d, b                                        ; $7898: $50
	ld   b, $ff                                      ; $7899: $06 $ff
	inc  de                                          ; $789b: $13
	inc  c                                           ; $789c: $0c
	ld   bc, $0401                                   ; $789d: $01 $01 $04
	ld   [$8f02], sp                                 ; $78a0: $08 $02 $8f
	ld   [bc], a                                     ; $78a3: $02
	sub  b                                           ; $78a4: $90
	ld   [bc], a                                     ; $78a5: $02
	sub  c                                           ; $78a6: $91
	inc  b                                           ; $78a7: $04
	add  hl, bc                                      ; $78a8: $09
	rst  $38                                         ; $78a9: $ff
	rst  $38                                         ; $78aa: $ff
	ld   e, c                                        ; $78ab: $59
	rst  $38                                         ; $78ac: $ff
	rst  $38                                         ; $78ad: $ff
	dec  c                                           ; $78ae: $0d
	adc  h                                           ; $78af: $8c

Call_065_78b0:
	ld   l, l                                        ; $78b0: $6d
	sbc  [hl]                                        ; $78b1: $9e
	dec  b                                           ; $78b2: $05

jr_065_78b3:
	db   $10                                         ; $78b3: $10
	sbc  d                                           ; $78b4: $9a
	sbc  c                                           ; $78b5: $99
	halt                                             ; $78b6: $76
	ld   d, d                                        ; $78b7: $52
	ld   d, d                                        ; $78b8: $52
	ld   a, h                                        ; $78b9: $7c
	ld   a, c                                        ; $78ba: $79
	ld   a, b                                        ; $78bb: $78
	rst  $38                                         ; $78bc: $ff
	rst  $38                                         ; $78bd: $ff
	dec  c                                           ; $78be: $0d
	nop                                              ; $78bf: $00
	ld   a, [bc]                                     ; $78c0: $0a
	inc  c                                           ; $78c1: $0c
	ld   [bc], a                                     ; $78c2: $02
	ld   c, $c5                                      ; $78c3: $0e $c5
	inc  e                                           ; $78c5: $1c
	dec  b                                           ; $78c6: $05
	ld   bc, $0101                                   ; $78c7: $01 $01 $01
	ld   [$7d00], sp                                 ; $78ca: $08 $00 $7d
	and  c                                           ; $78cd: $a1
	sbc  a                                           ; $78ce: $9f
	dec  c                                           ; $78cf: $0d
	nop                                              ; $78d0: $00
	ld   a, [bc]                                     ; $78d1: $0a
	rrca                                             ; $78d2: $0f
	nop                                              ; $78d3: $00
	ld   bc, $0201                                   ; $78d4: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78d7: $cf
	dec  b                                           ; $78d8: $05
	ld   a, [de]                                     ; $78d9: $1a
	ld   h, e                                        ; $78da: $63
	and  c                                           ; $78db: $a1
	sbc  a                                           ; $78dc: $9f
	dec  c                                           ; $78dd: $0d
	ld   [hl], a                                     ; $78de: $77
	ld   d, h                                        ; $78df: $54
	ld   h, l                                        ; $78e0: $65
	ld   l, l                                        ; $78e1: $6d
	and  c                                           ; $78e2: $a1
	ld   [hl], l                                     ; $78e3: $75
	ld   h, a                                        ; $78e4: $67
	ld   e, c                                        ; $78e5: $59
	ld   sp, hl                                      ; $78e6: $f9
	dec  c                                           ; $78e7: $0d
	nop                                              ; $78e8: $00
	ld   a, [bc]                                     ; $78e9: $0a
	rrca                                             ; $78ea: $0f
	dec  b                                           ; $78eb: $05
	ld   bc, $0801                                   ; $78ec: $01 $01 $08
	nop                                              ; $78ef: $00
	ld   a, l                                        ; $78f0: $7d
	and  c                                           ; $78f1: $a1
	sbc  a                                           ; $78f2: $9f
	dec  c                                           ; $78f3: $0d
	and  a                                           ; $78f4: $a7
	jp   nz, $037c                                   ; $78f5: $c2 $7c $03

	ld   l, l                                        ; $78f8: $6d
	dec  b                                           ; $78f9: $05
	add  hl, de                                      ; $78fa: $19
	sbc  [hl]                                        ; $78fb: $9e
	sub  [hl]                                        ; $78fc: $96
	ei                                               ; $78fd: $fb
	sub  d                                           ; $78fe: $92
	ld   [hl], c                                     ; $78ff: $71
	ld   l, l                                        ; $7900: $6d
	ld   a, b                                        ; $7901: $78
	db   $fc                                         ; $7902: $fc
	sbc  a                                           ; $7903: $9f
	dec  c                                           ; $7904: $0d
	call c, $dff5                                    ; $7905: $dc $f5 $df
	ld   a, c                                        ; $7908: $79
	ld   e, d                                        ; $7909: $5a
	and  c                                           ; $790a: $a1
	ld   a, [hl]                                     ; $790b: $7e
	ld   [hl], c                                     ; $790c: $71
	ld   l, l                                        ; $790d: $6d
	ld   [hl], l                                     ; $790e: $75
	sbc  a                                           ; $790f: $9f
	dec  c                                           ; $7910: $0d
	nop                                              ; $7911: $00
	ld   a, [bc]                                     ; $7912: $0a
	ld   bc, $a15a                                   ; $7913: $01 $5a $a1
	ld   a, [hl]                                     ; $7916: $7e
	sbc  c                                           ; $7917: $99
	ld   l, a                                        ; $7918: $6f
	sub  e                                           ; $7919: $93
	ei                                               ; $791a: $fb
	ld   a, h                                        ; $791b: $7c
	ld   a, l                                        ; $791c: $7d
	sbc  [hl]                                        ; $791d: $9e
	inc  b                                           ; $791e: $04
	ld   c, $03                                      ; $791f: $0e $03
	dec  de                                          ; $7921: $1b
	ld   a, b                                        ; $7922: $78
	dec  c                                           ; $7923: $0d
	ld   h, c                                        ; $7924: $61
	halt                                             ; $7925: $76
	sub  d                                           ; $7926: $92
	sbc  a                                           ; $7927: $9f
	ld   h, c                                        ; $7928: $61
	sbc  d                                           ; $7929: $9a
	ld   e, c                                        ; $792a: $59
	sub  a                                           ; $792b: $97
	sub  b                                           ; $792c: $90
	sbc  [hl]                                        ; $792d: $9e
	inc  b                                           ; $792e: $04
	ld   c, c                                        ; $792f: $49
	ld   [bc], a                                     ; $7930: $02
	jp   $9079                                       ; $7931: $c3 $79 $90


	dec  c                                           ; $7934: $0d
	ld   e, d                                        ; $7935: $5a
	and  c                                           ; $7936: $a1
	ld   a, [hl]                                     ; $7937: $7e
	ld   [hl], c                                     ; $7938: $71
	ld   [hl], h                                     ; $7939: $74
	jp   nz, $eee5                                   ; $793a: $c2 $e5 $ee

	push af                                          ; $793d: $f5
	cp   c                                           ; $793e: $b9
	ld   h, l                                        ; $793f: $65
	ei                                               ; $7940: $fb
	sub  d                                           ; $7941: $92
	sbc  a                                           ; $7942: $9f
	dec  c                                           ; $7943: $0d
	nop                                              ; $7944: $00
	ld   a, [bc]                                     ; $7945: $0a
	ld   bc, $7889                                   ; $7946: $01 $89 $78
	sbc  [hl]                                        ; $7949: $9e
	ld   [bc], a                                     ; $794a: $02
	xor  h                                           ; $794b: $ac
	ld   [bc], a                                     ; $794c: $02
	and  c                                           ; $794d: $a1
	ld   [hl], l                                     ; $794e: $75
	ld   a, b                                        ; $794f: $78
	sbc  a                                           ; $7950: $9f
	dec  c                                           ; $7951: $0d
	nop                                              ; $7952: $00
	ld   a, [bc]                                     ; $7953: $0a
	dec  c                                           ; $7954: $0d
	nop                                              ; $7955: $00
	nop                                              ; $7956: $00
	rrca                                             ; $7957: $0f
	nop                                              ; $7958: $00
	ld   bc, $020c                                   ; $7959: $01 $0c $02
	inc  de                                          ; $795c: $13
	add  b                                           ; $795d: $80
	add  hl, bc                                      ; $795e: $09
	ld   d, b                                        ; $795f: $50
	ld   b, $ff                                      ; $7960: $06 $ff
	inc  de                                          ; $7962: $13
	inc  c                                           ; $7963: $0c
	ld   bc, $0401                                   ; $7964: $01 $01 $04
	ld   [$8f02], sp                                 ; $7967: $08 $02 $8f
	ld   [bc], a                                     ; $796a: $02
	sub  b                                           ; $796b: $90
	ld   [bc], a                                     ; $796c: $02
	sub  c                                           ; $796d: $91
	inc  b                                           ; $796e: $04
	add  hl, bc                                      ; $796f: $09
	rst  $38                                         ; $7970: $ff
	rst  $38                                         ; $7971: $ff
	ld   e, c                                        ; $7972: $59
	rst  $38                                         ; $7973: $ff
	rst  $38                                         ; $7974: $ff
	dec  c                                           ; $7975: $0d
	adc  h                                           ; $7976: $8c
	ld   l, l                                        ; $7977: $6d
	sbc  [hl]                                        ; $7978: $9e
	dec  b                                           ; $7979: $05
	db   $10                                         ; $797a: $10
	sbc  d                                           ; $797b: $9a
	sbc  c                                           ; $797c: $99
	halt                                             ; $797d: $76
	ld   d, d                                        ; $797e: $52
	ld   d, d                                        ; $797f: $52
	ld   a, h                                        ; $7980: $7c
	ld   a, c                                        ; $7981: $79
	ld   a, b                                        ; $7982: $78
	rst  $38                                         ; $7983: $ff
	rst  $38                                         ; $7984: $ff
	dec  c                                           ; $7985: $0d
	nop                                              ; $7986: $00
	ld   a, [bc]                                     ; $7987: $0a
	inc  c                                           ; $7988: $0c
	ld   [bc], a                                     ; $7989: $02
	ld   c, $c5                                      ; $798a: $0e $c5
	inc  e                                           ; $798c: $1c
	inc  b                                           ; $798d: $04
	ld   bc, $0101                                   ; $798e: $01 $01 $01
	ld   l, a                                        ; $7991: $6f
	ld   d, d                                        ; $7992: $52
	ld   [bc], a                                     ; $7993: $02
	inc  de                                          ; $7994: $13
	ld   l, a                                        ; $7995: $6f
	sub  c                                           ; $7996: $91
	and  c                                           ; $7997: $a1
	sbc  a                                           ; $7998: $9f
	dec  c                                           ; $7999: $0d
	nop                                              ; $799a: $00
	ld   a, [bc]                                     ; $799b: $0a
	rrca                                             ; $799c: $0f
	nop                                              ; $799d: $00
	ld   bc, $a301                                   ; $799e: $01 $01 $a3
	and  l                                           ; $79a1: $a5
	db   $ec                                         ; $79a2: $ec
	cp   d                                           ; $79a3: $ba
	ld   sp, hl                                      ; $79a4: $f9
	dec  c                                           ; $79a5: $0d
	ld   [hl], a                                     ; $79a6: $77
	ld   d, h                                        ; $79a7: $54
	ld   h, l                                        ; $79a8: $65
	ld   l, l                                        ; $79a9: $6d
	and  c                                           ; $79aa: $a1
	ld   l, [hl]                                     ; $79ab: $6e
	ld   d, d                                        ; $79ac: $52
	ld   sp, hl                                      ; $79ad: $f9
	dec  c                                           ; $79ae: $0d
	nop                                              ; $79af: $00
	ld   a, [bc]                                     ; $79b0: $0a
	rrca                                             ; $79b1: $0f
	inc  b                                           ; $79b2: $04
	ld   bc, $6f01                                   ; $79b3: $01 $01 $6f
	ld   d, d                                        ; $79b6: $52
	ld   [bc], a                                     ; $79b7: $02
	inc  de                                          ; $79b8: $13
	ld   l, a                                        ; $79b9: $6f
	sub  c                                           ; $79ba: $91
	and  c                                           ; $79bb: $a1
	sbc  a                                           ; $79bc: $9f
	dec  c                                           ; $79bd: $0d
	and  e                                           ; $79be: $a3
	and  l                                           ; $79bf: $a5
	db   $ec                                         ; $79c0: $ec
	cp   d                                           ; $79c1: $ba
	ld   a, h                                        ; $79c2: $7c
	ld   e, l                                        ; $79c3: $5d
	and  c                                           ; $79c4: $a1
	sbc  d                                           ; $79c5: $9a
	and  c                                           ; $79c6: $a1
	sbc  [hl]                                        ; $79c7: $9e
	dec  c                                           ; $79c8: $0d
	sub  [hl]                                        ; $79c9: $96
	ld   e, l                                        ; $79ca: $5d
	ld   e, d                                        ; $79cb: $5a
	and  c                                           ; $79cc: $a1
	ld   a, [hl]                                     ; $79cd: $7e
	ld   [hl], c                                     ; $79ce: $71
	ld   l, l                                        ; $79cf: $6d
	ld   a, e                                        ; $79d0: $7b
	sbc  a                                           ; $79d1: $9f
	dec  c                                           ; $79d2: $0d
	nop                                              ; $79d3: $00
	ld   a, [bc]                                     ; $79d4: $0a
	ld   bc, $5d96                                   ; $79d5: $01 $96 $5d
	ld   [hl], l                                     ; $79d8: $75
	ld   e, e                                        ; $79d9: $5b
	adc  h                                           ; $79da: $8c
	ld   h, l                                        ; $79db: $65
	ld   l, l                                        ; $79dc: $6d
	sbc  a                                           ; $79dd: $9f
	dec  c                                           ; $79de: $0d
	xor  c                                           ; $79df: $a9
	db   $eb                                         ; $79e0: $eb
	and  l                                           ; $79e1: $a5
	sbc  [hl]                                        ; $79e2: $9e
	xor  c                                           ; $79e3: $a9
	db   $eb                                         ; $79e4: $eb
	and  l                                           ; $79e5: $a5
	sbc  a                                           ; $79e6: $9f
	dec  c                                           ; $79e7: $0d
	cp   c                                           ; $79e8: $b9
	push hl                                          ; $79e9: $e5
	push af                                          ; $79ea: $f5
	sbc  $fb                                         ; $79eb: $de $fb
	db   $ed                                         ; $79ed: $ed
	sub  b                                           ; $79ee: $90
	adc  c                                           ; $79ef: $89
	adc  a                                           ; $79f0: $8f
	ld   [hl], h                                     ; $79f1: $74
	sbc  c                                           ; $79f2: $99
	sub  [hl]                                        ; $79f3: $96
	sbc  a                                           ; $79f4: $9f
	dec  c                                           ; $79f5: $0d
	nop                                              ; $79f6: $00
	ld   a, [bc]                                     ; $79f7: $0a
	ld   bc, $9a6b                                   ; $79f8: $01 $6b $9a
	ld   h, [hl]                                     ; $79fb: $66
	sub  c                                           ; $79fc: $91
	sbc  [hl]                                        ; $79fd: $9e
	adc  h                                           ; $79fe: $8c
	ld   l, l                                        ; $79ff: $6d
	ld   a, e                                        ; $7a00: $7b
	sbc  a                                           ; $7a01: $9f
	dec  c                                           ; $7a02: $0d
	nop                                              ; $7a03: $00
	ld   a, [bc]                                     ; $7a04: $0a
	dec  c                                           ; $7a05: $0d
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	rrca                                             ; $7a08: $0f
	nop                                              ; $7a09: $00
	ld   bc, $020c                                   ; $7a0a: $01 $0c $02
	inc  de                                          ; $7a0d: $13
	add  b                                           ; $7a0e: $80
	add  hl, bc                                      ; $7a0f: $09
	ld   d, b                                        ; $7a10: $50
	ld   b, $ff                                      ; $7a11: $06 $ff
	inc  de                                          ; $7a13: $13
	rlca                                             ; $7a14: $07
	xor  l                                           ; $7a15: $ad
	ld   b, $04                                      ; $7a16: $06 $04
	add  b                                           ; $7a18: $80
	ld   [de], a                                     ; $7a19: $12
	ld   bc, $20ff                                   ; $7a1a: $01 $ff $20
	nop                                              ; $7a1d: $00
	rlca                                             ; $7a1e: $07
	db   $ec                                         ; $7a1f: $ec
	rlca                                             ; $7a20: $07
	inc  b                                           ; $7a21: $04
	add  b                                           ; $7a22: $80
	ld   [hl+], a                                    ; $7a23: $22
	ld   bc, $20ff                                   ; $7a24: $01 $ff $20
	nop                                              ; $7a27: $00
	rlca                                             ; $7a28: $07
	inc  a                                           ; $7a29: $3c
	add  hl, bc                                      ; $7a2a: $09
	inc  b                                           ; $7a2b: $04
	add  b                                           ; $7a2c: $80
	ld   a, b                                        ; $7a2d: $78
	ld   bc, $20ff                                   ; $7a2e: $01 $ff $20
	nop                                              ; $7a31: $00
	rlca                                             ; $7a32: $07
	ld   a, c                                        ; $7a33: $79
	ld   a, [bc]                                     ; $7a34: $0a
	inc  b                                           ; $7a35: $04
	add  b                                           ; $7a36: $80
	adc  h                                           ; $7a37: $8c
	ld   bc, $20ff                                   ; $7a38: $01 $ff $20
	nop                                              ; $7a3b: $00
	rlca                                             ; $7a3c: $07
	xor  b                                           ; $7a3d: $a8
	dec  bc                                          ; $7a3e: $0b
	inc  b                                           ; $7a3f: $04
	add  b                                           ; $7a40: $80
	ld   c, [hl]                                     ; $7a41: $4e
	ld   bc, $20ff                                   ; $7a42: $01 $ff $20
	nop                                              ; $7a45: $00
	rlca                                             ; $7a46: $07
	rst  $20                                         ; $7a47: $e7
	inc  c                                           ; $7a48: $0c
	inc  b                                           ; $7a49: $04
	add  b                                           ; $7a4a: $80
	jr   c, jr_065_7a4e                              ; $7a4b: $38 $01

	rst  $38                                         ; $7a4d: $ff

jr_065_7a4e:
	jr   nz, jr_065_7a50                             ; $7a4e: $20 $00

jr_065_7a50:
	ld   b, $2f                                      ; $7a50: $06 $2f
	ld   c, $0c                                      ; $7a52: $0e $0c
	ld   bc, $000f                                   ; $7a54: $01 $0f $00
	ld   bc, $6101                                   ; $7a57: $01 $01 $61
	ld   d, h                                        ; $7a5a: $54
	ld   h, l                                        ; $7a5b: $65
	ld   [hl], h                                     ; $7a5c: $74
	inc  b                                           ; $7a5d: $04
	ld   l, l                                        ; $7a5e: $6d
	ld   a, h                                        ; $7a5f: $7c
	inc  b                                           ; $7a60: $04
	dec  c                                           ; $7a61: $0d
	ld   [bc], a                                     ; $7a62: $02
	sub  [hl]                                        ; $7a63: $96
	inc  b                                           ; $7a64: $04
	ld   b, l                                        ; $7a65: $45
	inc  b                                           ; $7a66: $04
	ld   a, [bc]                                     ; $7a67: $0a
	ld   a, l                                        ; $7a68: $7d
	dec  c                                           ; $7a69: $0d
	inc  b                                           ; $7a6a: $04
	reti                                             ; $7a6b: $d9


	and  b                                           ; $7a6c: $a0
	inc  b                                           ; $7a6d: $04
	ld   l, [hl]                                     ; $7a6e: $6e
	ld   h, [hl]                                     ; $7a6f: $66
	ld   l, l                                        ; $7a70: $6d
	rst  $38                                         ; $7a71: $ff
	rst  $38                                         ; $7a72: $ff
	dec  c                                           ; $7a73: $0d
	nop                                              ; $7a74: $00
	ld   a, [bc]                                     ; $7a75: $0a
	ld   bc, $fa05                                   ; $7a76: $01 $05 $fa
	ld   e, c                                        ; $7a79: $59
	ld   [hl], c                                     ; $7a7a: $71
	ld   l, l                                        ; $7a7b: $6d
	ld   e, a                                        ; $7a7c: $5f
	sbc  d                                           ; $7a7d: $9a
	ld   [hl], a                                     ; $7a7e: $77
	dec  c                                           ; $7a7f: $0d
	dec  b                                           ; $7a80: $05
	rst  ToBoot                                         ; $7a81: $c7
	inc  bc                                          ; $7a82: $03
	adc  e                                           ; $7a83: $8b
	ld   h, l                                        ; $7a84: $65

jr_065_7a85:
	ld   [hl], h                                     ; $7a85: $74
	ld   d, d                                        ; $7a86: $52
	ld   l, l                                        ; $7a87: $6d
	ld   h, c                                        ; $7a88: $61
	ld   a, h                                        ; $7a89: $7c
	ld   [bc], a                                     ; $7a8a: $02
	jr   nz, jr_065_7a85                             ; $7a8b: $20 $f8

	ld   [bc], a                                     ; $7a8d: $02
	sbc  e                                           ; $7a8e: $9b
	rst  $38                                         ; $7a8f: $ff
	rst  $38                                         ; $7a90: $ff
	dec  c                                           ; $7a91: $0d
	nop                                              ; $7a92: $00
	ld   a, [bc]                                     ; $7a93: $0a
	ld   bc, $6d04                                   ; $7a94: $01 $04 $6d
	ld   a, l                                        ; $7a97: $7d
	ld   [bc], a                                     ; $7a98: $02
	jr   nz, jr_065_7a9e                             ; $7a99: $20 $03

	ld   d, d                                        ; $7a9b: $52
	inc  b                                           ; $7a9c: $04
	and  e                                           ; $7a9d: $a3

jr_065_7a9e:
	sbc  d                                           ; $7a9e: $9a
	sbc  c                                           ; $7a9f: $99
	ld   h, c                                        ; $7aa0: $61
	halt                                             ; $7aa1: $76
	ld   a, l                                        ; $7aa2: $7d
	dec  c                                           ; $7aa3: $0d
	ld   a, b                                        ; $7aa4: $78
	ld   d, d                                        ; $7aa5: $52
	ld   l, [hl]                                     ; $7aa6: $6e
	sbc  e                                           ; $7aa7: $9b
	ld   d, h                                        ; $7aa8: $54
	rst  $38                                         ; $7aa9: $ff
	rst  $38                                         ; $7aaa: $ff
	dec  c                                           ; $7aab: $0d
	nop                                              ; $7aac: $00
	ld   a, [bc]                                     ; $7aad: $0a
	ld   bc, $9663                                   ; $7aae: $01 $63 $96
	ld   d, h                                        ; $7ab1: $54
	ld   a, b                                        ; $7ab2: $78
	sub  a                                           ; $7ab3: $97
	inc  b                                           ; $7ab4: $04
	ld   [$9202], sp                                 ; $7ab5: $08 $02 $92
	rst  $38                                         ; $7ab8: $ff
	rst  $38                                         ; $7ab9: $ff
	dec  c                                           ; $7aba: $0d
	nop                                              ; $7abb: $00
	ld   a, [bc]                                     ; $7abc: $0a
	inc  c                                           ; $7abd: $0c
	ld   [bc], a                                     ; $7abe: $02
	inc  de                                          ; $7abf: $13
	add  b                                           ; $7ac0: $80
	add  hl, bc                                      ; $7ac1: $09
	ld   d, b                                        ; $7ac2: $50
	rlca                                             ; $7ac3: $07
	xor  l                                           ; $7ac4: $ad
	ld   b, $04                                      ; $7ac5: $06 $04
	add  b                                           ; $7ac7: $80
	ld   [de], a                                     ; $7ac8: $12
	ld   bc, $20ff                                   ; $7ac9: $01 $ff $20
	nop                                              ; $7acc: $00
	rlca                                             ; $7acd: $07
	db   $ec                                         ; $7ace: $ec
	rlca                                             ; $7acf: $07
	inc  b                                           ; $7ad0: $04
	add  b                                           ; $7ad1: $80
	ld   [hl+], a                                    ; $7ad2: $22
	ld   bc, $20ff                                   ; $7ad3: $01 $ff $20
	nop                                              ; $7ad6: $00
	rlca                                             ; $7ad7: $07
	inc  a                                           ; $7ad8: $3c
	add  hl, bc                                      ; $7ad9: $09
	inc  b                                           ; $7ada: $04
	add  b                                           ; $7adb: $80
	ld   a, b                                        ; $7adc: $78
	ld   bc, $20ff                                   ; $7add: $01 $ff $20
	nop                                              ; $7ae0: $00
	rlca                                             ; $7ae1: $07
	ld   a, c                                        ; $7ae2: $79
	ld   a, [bc]                                     ; $7ae3: $0a
	inc  b                                           ; $7ae4: $04
	add  b                                           ; $7ae5: $80
	adc  h                                           ; $7ae6: $8c
	ld   bc, $20ff                                   ; $7ae7: $01 $ff $20
	nop                                              ; $7aea: $00
	rlca                                             ; $7aeb: $07
	xor  b                                           ; $7aec: $a8
	dec  bc                                          ; $7aed: $0b
	inc  b                                           ; $7aee: $04
	add  b                                           ; $7aef: $80
	ld   c, [hl]                                     ; $7af0: $4e
	ld   bc, $20ff                                   ; $7af1: $01 $ff $20
	nop                                              ; $7af4: $00
	rlca                                             ; $7af5: $07
	rst  $20                                         ; $7af6: $e7
	inc  c                                           ; $7af7: $0c
	inc  b                                           ; $7af8: $04
	add  b                                           ; $7af9: $80
	jr   c, jr_065_7afd                              ; $7afa: $38 $01

	rst  $38                                         ; $7afc: $ff

jr_065_7afd:
	jr   nz, jr_065_7aff                             ; $7afd: $20 $00

jr_065_7aff:
	ld   b, $2f                                      ; $7aff: $06 $2f
	ld   c, $00                                      ; $7b01: $0e $00
	ld   c, $01                                      ; $7b03: $0e $01
	rrca                                             ; $7b05: $0f
	nop                                              ; $7b06: $00
	ld   bc, $0102                                   ; $7b07: $01 $02 $01
	sub  [hl]                                        ; $7b0a: $96
	ld   h, l                                        ; $7b0b: $65
	sbc  [hl]                                        ; $7b0c: $9e
	ld   [bc], a                                     ; $7b0d: $02
	and  l                                           ; $7b0e: $a5
	inc  b                                           ; $7b0f: $04
	xor  d                                           ; $7b10: $aa
	sub  b                                           ; $7b11: $90
	ld   e, d                                        ; $7b12: $5a
	and  c                                           ; $7b13: $a1
	ld   a, [hl]                                     ; $7b14: $7e
	sbc  c                                           ; $7b15: $99
	ld   l, h                                        ; $7b16: $6c
	ld   a, [$ff0d]                                  ; $7b17: $fa $0d $ff
	rst  $38                                         ; $7b1a: $ff
	ld   d, b                                        ; $7b1b: $50
	sbc  [hl]                                        ; $7b1c: $9e
	ld   l, e                                        ; $7b1d: $6b
	ld   d, h                                        ; $7b1e: $54
	ld   e, c                                        ; $7b1f: $59
	sbc  a                                           ; $7b20: $9f
	dec  c                                           ; $7b21: $0d
	ld   [bc], a                                     ; $7b22: $02
	and  l                                           ; $7b23: $a5
	inc  b                                           ; $7b24: $04
	xor  d                                           ; $7b25: $aa
	ld   a, l                                        ; $7b26: $7d
	inc  b                                           ; $7b27: $04
	xor  d                                           ; $7b28: $aa
	inc  b                                           ; $7b29: $04
	db   $f4                                         ; $7b2a: $f4
	inc  b                                           ; $7b2b: $04
	xor  d                                           ; $7b2c: $aa
	ld   l, [hl]                                     ; $7b2d: $6e
	ld   [hl], c                                     ; $7b2e: $71
	ld   l, l                                        ; $7b2f: $6d
	ld   a, b                                        ; $7b30: $78
	rst  $38                                         ; $7b31: $ff
	rst  $38                                         ; $7b32: $ff
	dec  c                                           ; $7b33: $0d
	nop                                              ; $7b34: $00
	ld   a, [bc]                                     ; $7b35: $0a
	inc  d                                           ; $7b36: $14
	ld   b, $01                                      ; $7b37: $06 $01
	rrca                                             ; $7b39: $0f
	add  hl, bc                                      ; $7b3a: $09
	ld   bc, $0801                                   ; $7b3b: $01 $01 $08
	nop                                              ; $7b3e: $00
	ld   e, l                                        ; $7b3f: $5d
	and  c                                           ; $7b40: $a1
	sbc  a                                           ; $7b41: $9f
	dec  c                                           ; $7b42: $0d
	ld   d, d                                        ; $7b43: $52
	ld   d, d                                        ; $7b44: $52
	ld   e, c                                        ; $7b45: $59
	ld   a, b                                        ; $7b46: $78
	sbc  a                                           ; $7b47: $9f
	dec  c                                           ; $7b48: $0d
	nop                                              ; $7b49: $00
	ld   a, [bc]                                     ; $7b4a: $0a
	rrca                                             ; $7b4b: $0f
	nop                                              ; $7b4c: $00
	ld   bc, $5001                                   ; $7b4d: $01 $01 $50
	sbc  [hl]                                        ; $7b50: $9e
	inc  b                                           ; $7b51: $04
	ld   c, $03                                      ; $7b52: $0e $03
	sub  b                                           ; $7b54: $90
	ld   h, e                                        ; $7b55: $63
	and  c                                           ; $7b56: $a1
	sbc  a                                           ; $7b57: $9f
	dec  c                                           ; $7b58: $0d
	ld   [hl], a                                     ; $7b59: $77
	ld   d, h                                        ; $7b5a: $54
	ld   l, h                                        ; $7b5b: $6c
	sbc  a                                           ; $7b5c: $9f
	dec  c                                           ; $7b5d: $0d
	nop                                              ; $7b5e: $00
	ld   a, [bc]                                     ; $7b5f: $0a
	inc  d                                           ; $7b60: $14
	ld   a, [bc]                                     ; $7b61: $0a
	ld   bc, $091c                                   ; $7b62: $01 $1c $09
	ld   bc, $0101                                   ; $7b65: $01 $01 $01
	ld   e, b                                        ; $7b68: $58
	ld   a, l                                        ; $7b69: $7d
	sub  [hl]                                        ; $7b6a: $96
	ld   d, h                                        ; $7b6b: $54
	sbc  [hl]                                        ; $7b6c: $9e
	ld   [$5d00], sp                                 ; $7b6d: $08 $00 $5d
	and  c                                           ; $7b70: $a1
	sbc  a                                           ; $7b71: $9f
	dec  c                                           ; $7b72: $0d
	nop                                              ; $7b73: $00
	ld   a, [bc]                                     ; $7b74: $0a
	inc  e                                           ; $7b75: $1c
	add  hl, bc                                      ; $7b76: $09
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	ld   bc, $8c67                                   ; $7b79: $01 $67 $8c
	ld   a, b                                        ; $7b7c: $78
	ld   d, d                                        ; $7b7d: $52
	ld   e, d                                        ; $7b7e: $5a
	sbc  [hl]                                        ; $7b7f: $9e
	ld   [bc], a                                     ; $7b80: $02
	and  l                                           ; $7b81: $a5
	inc  b                                           ; $7b82: $04
	xor  d                                           ; $7b83: $aa
	dec  b                                           ; $7b84: $05
	ld   [hl], e                                     ; $7b85: $73
	ld   a, l                                        ; $7b86: $7d
	inc  bc                                          ; $7b87: $03
	ld   c, e                                        ; $7b88: $4b
	inc  b                                           ; $7b89: $04
	di                                               ; $7b8a: $f3
	ld   [hl], l                                     ; $7b8b: $75
	dec  c                                           ; $7b8c: $0d
	ld   [bc], a                                     ; $7b8d: $02
	jr   nz, jr_065_7b94                             ; $7b8e: $20 $04

	xor  d                                           ; $7b90: $aa
	inc  b                                           ; $7b91: $04
	dec  bc                                          ; $7b92: $0b
	inc  bc                                          ; $7b93: $03

jr_065_7b94:
	add  b                                           ; $7b94: $80
	ld   e, c                                        ; $7b95: $59
	ld   e, a                                        ; $7b96: $5f
	ld   a, b                                        ; $7b97: $78
	ld   e, l                                        ; $7b98: $5d
	ld   l, a                                        ; $7b99: $6f
	sub  c                                           ; $7b9a: $91
	dec  c                                           ; $7b9b: $0d
	ld   d, d                                        ; $7b9c: $52
	ld   e, a                                        ; $7b9d: $5f
	ld   a, b                                        ; $7b9e: $78
	ld   d, d                                        ; $7b9f: $52
	and  c                                           ; $7ba0: $a1
	ld   l, [hl]                                     ; $7ba1: $6e
	rst  $38                                         ; $7ba2: $ff
	rst  $38                                         ; $7ba3: $ff
	dec  c                                           ; $7ba4: $0d
	nop                                              ; $7ba5: $00
	ld   a, [bc]                                     ; $7ba6: $0a
	ld   bc, $596e                                   ; $7ba7: $01 $6e $59
	sub  a                                           ; $7baa: $97
	ld   [bc], a                                     ; $7bab: $02
	jp   z, $9e79                                    ; $7bac: $ca $79 $9e

	add  e                                           ; $7baf: $83
	ld   l, [hl]                                     ; $7bb0: $6e
	and  c                                           ; $7bb1: $a1
	dec  b                                           ; $7bb2: $05
	ld   [hl], e                                     ; $7bb3: $73
	ld   e, d                                        ; $7bb4: $5a
	dec  c                                           ; $7bb5: $0d
	sub  d                                           ; $7bb6: $92
	ld   [hl], c                                     ; $7bb7: $71
	ld   [hl], h                                     ; $7bb8: $74
	sbc  c                                           ; $7bb9: $99
	inc  bc                                          ; $7bba: $03
	dec  c                                           ; $7bbb: $0d
	ld   [bc], a                                     ; $7bbc: $02
	jp   $03a0                                       ; $7bbd: $c3 $a0 $03


	ld   d, a                                        ; $7bc0: $57
	ld   [hl], h                                     ; $7bc1: $74
	dec  c                                           ; $7bc2: $0d
	adc  h                                           ; $7bc3: $8c
	ld   e, c                                        ; $7bc4: $59
	ld   l, c                                        ; $7bc5: $69
	ld   l, l                                        ; $7bc6: $6d
	ld   d, d                                        ; $7bc7: $52
	halt                                             ; $7bc8: $76
	dec  b                                           ; $7bc9: $05
	pop  de                                          ; $7bca: $d1
	ld   d, h                                        ; $7bcb: $54
	sbc  a                                           ; $7bcc: $9f
	dec  c                                           ; $7bcd: $0d
	nop                                              ; $7bce: $00
	ld   a, [bc]                                     ; $7bcf: $0a
	inc  e                                           ; $7bd0: $1c
	add  hl, bc                                      ; $7bd1: $09
	ld   bc, $0101                                   ; $7bd2: $01 $01 $01
	ret  nc                                          ; $7bd5: $d0

	ret  nc                                          ; $7bd6: $d0

	ret  nc                                          ; $7bd7: $d0

	rst  $38                                         ; $7bd8: $ff
	rst  $38                                         ; $7bd9: $ff
	ld   l, e                                        ; $7bda: $6b
	and  c                                           ; $7bdb: $a1
	ld   a, b                                        ; $7bdc: $78
	ld   a, c                                        ; $7bdd: $79
	ld   e, e                                        ; $7bde: $5b
	and  c                                           ; $7bdf: $a1
	ld   l, a                                        ; $7be0: $6f
	sub  l                                           ; $7be1: $95
	ld   d, h                                        ; $7be2: $54
	dec  c                                           ; $7be3: $0d
	ld   h, l                                        ; $7be4: $65
	ld   a, b                                        ; $7be5: $78
	ld   e, l                                        ; $7be6: $5d
	ld   [hl], h                                     ; $7be7: $74
	sub  b                                           ; $7be8: $90
	inc  b                                           ; $7be9: $04
	ld   c, $03                                      ; $7bea: $0e $03
	sbc  l                                           ; $7bec: $9d
	inc  b                                           ; $7bed: $04
	and  [hl]                                        ; $7bee: $a6
	ld   l, [hl]                                     ; $7bef: $6e
	sub  [hl]                                        ; $7bf0: $96
	sbc  a                                           ; $7bf1: $9f
	dec  c                                           ; $7bf2: $0d
	adc  c                                           ; $7bf3: $89
	halt                                             ; $7bf4: $76
	and  c                                           ; $7bf5: $a1
	ld   [hl], a                                     ; $7bf6: $77
	dec  b                                           ; $7bf7: $05
	ret                                              ; $7bf8: $c9


	inc  b                                           ; $7bf9: $04
	di                                               ; $7bfa: $f3
	ld   l, [hl]                                     ; $7bfb: $6e
	ld   e, c                                        ; $7bfc: $59
	sub  a                                           ; $7bfd: $97
	ld   a, e                                        ; $7bfe: $7b
	sbc  a                                           ; $7bff: $9f
	dec  c                                           ; $7c00: $0d
	nop                                              ; $7c01: $00
	ld   a, [bc]                                     ; $7c02: $0a
	ld   bc, $9166                                   ; $7c03: $01 $66 $91
	sbc  [hl]                                        ; $7c06: $9e
	ld   l, l                                        ; $7c07: $6d
	ld   a, h                                        ; $7c08: $7c
	and  c                                           ; $7c09: $a1
	ld   l, [hl]                                     ; $7c0a: $6e
	sub  [hl]                                        ; $7c0b: $96
	sbc  a                                           ; $7c0c: $9f
	dec  c                                           ; $7c0d: $0d
	nop                                              ; $7c0e: $00
	ld   a, [bc]                                     ; $7c0f: $0a
	dec  c                                           ; $7c10: $0d
	nop                                              ; $7c11: $00
	nop                                              ; $7c12: $00
	rrca                                             ; $7c13: $0f
	nop                                              ; $7c14: $00
	ld   bc, $1e09                                   ; $7c15: $01 $09 $1e
	ld   bc, $0e04                                   ; $7c18: $01 $04 $0e
	inc  bc                                          ; $7c1b: $03
	sub  b                                           ; $7c1c: $90
	ld   h, e                                        ; $7c1d: $63
	and  c                                           ; $7c1e: $a1
	ld   a, h                                        ; $7c1f: $7c
	inc  bc                                          ; $7c20: $03
	sbc  $04                                         ; $7c21: $de $04
	db   $ec                                         ; $7c23: $ec
	ld   e, c                                        ; $7c24: $59
	rst  $38                                         ; $7c25: $ff
	rst  $38                                         ; $7c26: $ff
	dec  c                                           ; $7c27: $0d
	ld   e, d                                        ; $7c28: $5a
	and  c                                           ; $7c29: $a1
	ld   a, [hl]                                     ; $7c2a: $7e
	sub  a                                           ; $7c2b: $97
	ld   a, b                                        ; $7c2c: $78
	ld   e, l                                        ; $7c2d: $5d
	ld   l, a                                        ; $7c2e: $6f
	sub  c                                           ; $7c2f: $91
	sbc  a                                           ; $7c30: $9f
	dec  c                                           ; $7c31: $0d
	nop                                              ; $7c32: $00
	ld   a, [bc]                                     ; $7c33: $0a
	dec  c                                           ; $7c34: $0d
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	rrca                                             ; $7c37: $0f
	nop                                              ; $7c38: $00
	ld   bc, $020c                                   ; $7c39: $01 $0c $02
	ld   c, $5c                                      ; $7c3c: $0e $5c
	ld   bc, $7463                                   ; $7c3e: $01 $63 $74
	sbc  [hl]                                        ; $7c41: $9e
	ld   [hl], a                                     ; $7c42: $77
	and  c                                           ; $7c43: $a1
	ld   a, b                                        ; $7c44: $78
	inc  bc                                          ; $7c45: $03
	dec  c                                           ; $7c46: $0d
	ld   [bc], a                                     ; $7c47: $02
	jp   $0d5a                                       ; $7c48: $c3 $5a $0d


	ld   d, b                                        ; $7c4b: $50
	sbc  c                                           ; $7c4c: $99
	ld   a, h                                        ; $7c4d: $7c
	ld   e, c                                        ; $7c4e: $59
	ld   a, b                                        ; $7c4f: $78
	db   $fc                                         ; $7c50: $fc
	sbc  a                                           ; $7c51: $9f
	dec  c                                           ; $7c52: $0d
	nop                                              ; $7c53: $00
	ld   a, [bc]                                     ; $7c54: $0a
	ld   b, $55                                      ; $7c55: $06 $55
	ld   bc, $0c1c                                   ; $7c57: $01 $1c $0c
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	ld   bc, $9750                                   ; $7c5c: $01 $50 $97
	sbc  [hl]                                        ; $7c5f: $9e
	ld   [$6300], sp                                 ; $7c60: $08 $00 $63
	and  c                                           ; $7c63: $a1
	sbc  a                                           ; $7c64: $9f
	dec  c                                           ; $7c65: $0d
	nop                                              ; $7c66: $00
	ld   a, [bc]                                     ; $7c67: $0a
	ld   bc, $8d67                                   ; $7c68: $01 $67 $8d
	adc  h                                           ; $7c6b: $8c
	ld   l, c                                        ; $7c6c: $69
	and  c                                           ; $7c6d: $a1
	rst  $38                                         ; $7c6e: $ff
	rst  $38                                         ; $7c6f: $ff
	dec  c                                           ; $7c70: $0d
	sub  b                                           ; $7c71: $90
	ld   h, l                                        ; $7c72: $65
	inc  bc                                          ; $7c73: $03
	ld   l, e                                        ; $7c74: $6b
	ld   e, d                                        ; $7c75: $5a
	ld   [bc], a                                     ; $7c76: $02
	or   [hl]                                        ; $7c77: $b6

Call_065_7c78:
	ld   d, d                                        ; $7c78: $52
	ld   [hl], h                                     ; $7c79: $74
	ld   d, d                                        ; $7c7a: $52
	ld   l, l                                        ; $7c7b: $6d
	sub  a                                           ; $7c7c: $97
	dec  c                                           ; $7c7d: $0d
	inc  bc                                          ; $7c7e: $03
	ld   l, e                                        ; $7c7f: $6b
	inc  b                                           ; $7c80: $04
	ld   [de], a                                     ; $7c81: $12
	ld   [hl], c                                     ; $7c82: $71
	ld   [hl], h                                     ; $7c83: $74
	sub  b                                           ; $7c84: $90
	sub  a                                           ; $7c85: $97
	ld   d, [hl]                                     ; $7c86: $56
	adc  h                                           ; $7c87: $8c
	ld   l, c                                        ; $7c88: $69
	and  c                                           ; $7c89: $a1
	ld   e, c                                        ; $7c8a: $59
	ld   sp, hl                                      ; $7c8b: $f9
	dec  c                                           ; $7c8c: $0d
	nop                                              ; $7c8d: $00
	ld   a, [bc]                                     ; $7c8e: $0a
	add  hl, de                                      ; $7c8f: $19
	dec  b                                           ; $7c90: $05
	ld   [bc], a                                     ; $7c91: $02
	ld   [bc], a                                     ; $7c92: $02
	inc  l                                           ; $7c93: $2c
	ld   e, e                                        ; $7c94: $5b
	ld   [bc], a                                     ; $7c95: $02
	rst  $38                                         ; $7c96: $ff

Jump_065_7c97:
	ld   e, a                                        ; $7c97: $5f
	sbc  c                                           ; $7c98: $99
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	ld   [bc], a                                     ; $7c9b: $02
	inc  l                                           ; $7c9c: $2c
	ld   e, e                                        ; $7c9d: $5b
	ld   [bc], a                                     ; $7c9e: $02
	rst  $38                                         ; $7c9f: $ff
	ld   e, a                                        ; $7ca0: $5f
	ld   a, b                                        ; $7ca1: $78
	ld   d, d                                        ; $7ca2: $52
	nop                                              ; $7ca3: $00
	ld   bc, $b707                                   ; $7ca4: $01 $07 $b7
	ld   bc, $0302                                   ; $7ca7: $01 $02 $03
	ld   bc, $2000                                   ; $7caa: $01 $00 $20
	nop                                              ; $7cad: $00
	rlca                                             ; $7cae: $07
	ld   d, b                                        ; $7caf: $50
	ld   [bc], a                                     ; $7cb0: $02
	ld   [bc], a                                     ; $7cb1: $02
	inc  bc                                          ; $7cb2: $03
	ld   bc, $2001                                   ; $7cb3: $01 $01 $20
	nop                                              ; $7cb6: $00
	ld   b, $ad                                      ; $7cb7: $06 $ad
	ld   [bc], a                                     ; $7cb9: $02
	rrca                                             ; $7cba: $0f
	nop                                              ; $7cbb: $00
	ld   bc, $9d01                                   ; $7cbc: $01 $01 $9d
	ld   e, c                                        ; $7cbf: $59
	sbc  b                                           ; $7cc0: $98
	adc  h                                           ; $7cc1: $8c
	ld   h, l                                        ; $7cc2: $65
	ld   l, l                                        ; $7cc3: $6d
	sbc  a                                           ; $7cc4: $9f
	dec  c                                           ; $7cc5: $0d
	sub  [hl]                                        ; $7cc6: $96
	sbc  e                                           ; $7cc7: $9b
	ld   h, c                                        ; $7cc8: $61
	and  c                                           ; $7cc9: $a1
	ld   [hl], l                                     ; $7cca: $75
	ld   e, b                                        ; $7ccb: $58
	ld   [bc], a                                     ; $7ccc: $02
	inc  l                                           ; $7ccd: $2c
	ld   e, e                                        ; $7cce: $5b
	ld   [bc], a                                     ; $7ccf: $02
	rst  $38                                         ; $7cd0: $ff
	ld   e, a                                        ; $7cd1: $5f
	ld   h, l                                        ; $7cd2: $65
	adc  h                                           ; $7cd3: $8c
	ld   h, a                                        ; $7cd4: $67
	sbc  a                                           ; $7cd5: $9f
	dec  c                                           ; $7cd6: $0d
	nop                                              ; $7cd7: $00
	ld   a, [bc]                                     ; $7cd8: $0a
	dec  b                                           ; $7cd9: $05
	ld   b, b                                        ; $7cda: $40
	ld   h, l                                        ; $7cdb: $65
	inc  bc                                          ; $7cdc: $03
	ld   h, l                                        ; $7cdd: $65
	ld   bc, $2801                                   ; $7cde: $01 $01 $28
	nop                                              ; $7ce1: $00
	inc  e                                           ; $7ce2: $1c
	inc  c                                           ; $7ce3: $0c
	ld   bc, $0101                                   ; $7ce4: $01 $01 $01
	ld   d, b                                        ; $7ce7: $50
	sbc  b                                           ; $7ce8: $98
	ld   e, d                                        ; $7ce9: $5a
	halt                                             ; $7cea: $76
	ld   d, h                                        ; $7ceb: $54
	ld   h, d                                        ; $7cec: $62
	ld   h, h                                        ; $7ced: $64
	ld   d, d                                        ; $7cee: $52
	adc  h                                           ; $7cef: $8c
	ld   h, a                                        ; $7cf0: $67
	sbc  a                                           ; $7cf1: $9f
	dec  c                                           ; $7cf2: $0d
	inc  bc                                          ; $7cf3: $03
	ld   d, l                                        ; $7cf4: $55
	dec  b                                           ; $7cf5: $05
	ld   h, d                                        ; $7cf6: $62
	ld   a, h                                        ; $7cf7: $7c
	inc  bc                                          ; $7cf8: $03
	ld   a, h                                        ; $7cf9: $7c
	dec  b                                           ; $7cfa: $05
	ld   de, $65a0                                   ; $7cfb: $11 $a0 $65
	ld   [hl], h                                     ; $7cfe: $74
	sbc  c                                           ; $7cff: $99
	and  c                                           ; $7d00: $a1
	ld   [hl], l                                     ; $7d01: $75
	ld   h, a                                        ; $7d02: $67
	ld   e, a                                        ; $7d03: $5f
	ld   [hl], a                                     ; $7d04: $77
	dec  c                                           ; $7d05: $0d
	sub  b                                           ; $7d06: $90
	ld   a, h                                        ; $7d07: $7c
	ld   h, a                                        ; $7d08: $67
	ld   h, d                                        ; $7d09: $62
	ld   d, d                                        ; $7d0a: $52
	dec  b                                           ; $7d0b: $05
	ld   h, [hl]                                     ; $7d0c: $66
	ld   e, d                                        ; $7d0d: $5a
	ld   d, b                                        ; $7d0e: $50
	ld   [hl], c                                     ; $7d0f: $71
	ld   [hl], h                                     ; $7d10: $74
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	dec  c                                           ; $7d13: $0d
	nop                                              ; $7d14: $00
	ld   a, [bc]                                     ; $7d15: $0a
	inc  e                                           ; $7d16: $1c
	inc  c                                           ; $7d17: $0c
	ld   bc, $0101                                   ; $7d18: $01 $01 $01
	sbc  l                                           ; $7d1b: $9d
	ld   l, l                                        ; $7d1c: $6d
	ld   h, l                                        ; $7d1d: $65
	halt                                             ; $7d1e: $76
	inc  b                                           ; $7d1f: $04
	pop  hl                                          ; $7d20: $e1
	inc  b                                           ; $7d21: $04
	rst  $38                                         ; $7d22: $ff
	ld   l, [hl]                                     ; $7d23: $6e
	ld   e, a                                        ; $7d24: $5f
	ld   h, [hl]                                     ; $7d25: $66
	sub  c                                           ; $7d26: $91
	sbc  [hl]                                        ; $7d27: $9e
	dec  c                                           ; $7d28: $0d
	halt                                             ; $7d29: $76
	ld   [hl], h                                     ; $7d2a: $74
	sub  b                                           ; $7d2b: $90
	ld   [bc], a                                     ; $7d2c: $02
	and  l                                           ; $7d2d: $a5
	inc  b                                           ; $7d2e: $04
	xor  d                                           ; $7d2f: $aa
	inc  b                                           ; $7d30: $04
	dec  bc                                          ; $7d31: $0b
	ld   a, c                                        ; $7d32: $79
	inc  bc                                          ; $7d33: $03
	ld   a, [hl]                                     ; $7d34: $7e
	sbc  l                                           ; $7d35: $9d
	sub  a                                           ; $7d36: $97
	ld   a, b                                        ; $7d37: $78
	ld   d, d                                        ; $7d38: $52
	dec  c                                           ; $7d39: $0d
	halt                                             ; $7d3a: $76
	dec  b                                           ; $7d3b: $05
	pop  de                                          ; $7d3c: $d1
	ld   [hl], c                                     ; $7d3d: $71
	ld   [hl], h                                     ; $7d3e: $74
	ld   l, l                                        ; $7d3f: $6d
	and  c                                           ; $7d40: $a1
	ld   [hl], l                                     ; $7d41: $75
	ld   h, a                                        ; $7d42: $67
	sub  [hl]                                        ; $7d43: $96
	sbc  a                                           ; $7d44: $9f
	dec  c                                           ; $7d45: $0d
	nop                                              ; $7d46: $00
	ld   a, [bc]                                     ; $7d47: $0a
	dec  c                                           ; $7d48: $0d
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	rrca                                             ; $7d4b: $0f
	nop                                              ; $7d4c: $00
	ld   bc, $020c                                   ; $7d4d: $01 $0c $02
	ld   b, $47                                      ; $7d50: $06 $47
	inc  bc                                          ; $7d52: $03
	rrca                                             ; $7d53: $0f
	nop                                              ; $7d54: $00
	ld   bc, $6701                                   ; $7d55: $01 $01 $67
	adc  l                                           ; $7d58: $8d
	adc  h                                           ; $7d59: $8c
	ld   l, c                                        ; $7d5a: $69
	and  c                                           ; $7d5b: $a1
	sbc  a                                           ; $7d5c: $9f
	dec  c                                           ; $7d5d: $0d
	inc  b                                           ; $7d5e: $04
	ld   e, $79                                      ; $7d5f: $1e $79
	sub  d                                           ; $7d61: $92
	sbc  c                                           ; $7d62: $99
	ld   h, c                                        ; $7d63: $61
	halt                                             ; $7d64: $76
	ld   e, d                                        ; $7d65: $5a
	ld   d, b                                        ; $7d66: $50
	sbc  c                                           ; $7d67: $99
	ld   a, h                                        ; $7d68: $7c
	ld   [hl], l                                     ; $7d69: $75
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	dec  c                                           ; $7d6c: $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	inc  e                                           ; $7d6f: $1c
	inc  c                                           ; $7d70: $0c
	inc  bc                                          ; $7d71: $03
	inc  bc                                          ; $7d72: $03
	ld   bc, $546b                                   ; $7d73: $01 $6b $54
	ld   [hl], l                                     ; $7d76: $75
	ld   h, a                                        ; $7d77: $67
	ld   e, c                                        ; $7d78: $59

Jump_065_7d79:
	rst  $38                                         ; $7d79: $ff
	rst  $38                                         ; $7d7a: $ff
	dec  c                                           ; $7d7b: $0d
	sbc  l                                           ; $7d7c: $9d
	ld   e, c                                        ; $7d7d: $59
	sbc  b                                           ; $7d7e: $98
	adc  h                                           ; $7d7f: $8c
	ld   h, l                                        ; $7d80: $65
	ld   l, l                                        ; $7d81: $6d
	sbc  [hl]                                        ; $7d82: $9e
	inc  b                                           ; $7d83: $04
	ld   e, $7c                                      ; $7d84: $1e $7c
	inc  bc                                          ; $7d86: $03
	add  d                                           ; $7d87: $82
	ld   a, c                                        ; $7d88: $79
	dec  c                                           ; $7d89: $0d
	ld   l, l                                        ; $7d8a: $6d
	ld   a, h                                        ; $7d8b: $7c
	and  c                                           ; $7d8c: $a1
	ld   [hl], l                                     ; $7d8d: $75
	adc  l                                           ; $7d8e: $8d
	adc  h                                           ; $7d8f: $8c
	ld   h, a                                        ; $7d90: $67
	sbc  a                                           ; $7d91: $9f
	dec  c                                           ; $7d92: $0d
	nop                                              ; $7d93: $00
	ld   a, [bc]                                     ; $7d94: $0a
	dec  c                                           ; $7d95: $0d
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	rrca                                             ; $7d98: $0f
	nop                                              ; $7d99: $00
	ld   bc, $1e09                                   ; $7d9a: $01 $09 $1e
	ld   bc, $1e04                                   ; $7d9d: $01 $04 $1e
	ld   a, h                                        ; $7da0: $7c
	inc  bc                                          ; $7da1: $03
	ld   c, e                                        ; $7da2: $4b
	ld   a, c                                        ; $7da3: $79
	ld   [bc], a                                     ; $7da4: $02
	ld   a, a                                        ; $7da5: $7f
	ld   h, c                                        ; $7da6: $61
	ld   d, h                                        ; $7da7: $54
	rst  $38                                         ; $7da8: $ff
	rst  $38                                         ; $7da9: $ff
	dec  c                                           ; $7daa: $0d
	nop                                              ; $7dab: $00
	ld   a, [bc]                                     ; $7dac: $0a
	ld   b, $29                                      ; $7dad: $06 $29
	ld   [$000f], sp                                 ; $7daf: $08 $0f $00
	ld   bc, $ff01                                   ; $7db2: $01 $01 $ff
	rst  $38                                         ; $7db5: $ff
	rst  $38                                         ; $7db6: $ff
	rst  $38                                         ; $7db7: $ff
	dec  c                                           ; $7db8: $0d
	nop                                              ; $7db9: $00
	ld   a, [bc]                                     ; $7dba: $0a
	inc  e                                           ; $7dbb: $1c
	inc  c                                           ; $7dbc: $0c
	inc  bc                                          ; $7dbd: $03
	inc  bc                                          ; $7dbe: $03
	ld   bc, $7c50                                   ; $7dbf: $01 $50 $7c
	rst  $38                                         ; $7dc2: $ff
	rst  $38                                         ; $7dc3: $ff
	ld   [hl], a                                     ; $7dc4: $77
	ld   d, h                                        ; $7dc5: $54
	ld   e, c                                        ; $7dc6: $59
	ld   h, e                                        ; $7dc7: $63
	sbc  d                                           ; $7dc8: $9a
	adc  h                                           ; $7dc9: $8c
	ld   h, l                                        ; $7dca: $65
	ld   l, l                                        ; $7dcb: $6d
	ld   sp, hl                                      ; $7dcc: $f9
	dec  c                                           ; $7dcd: $0d
	nop                                              ; $7dce: $00
	ld   a, [bc]                                     ; $7dcf: $0a
	inc  e                                           ; $7dd0: $1c
	dec  c                                           ; $7dd1: $0d
	ld   bc, $0101                                   ; $7dd2: $01 $01 $01
	adc  d                                           ; $7dd5: $8a
	ei                                               ; $7dd6: $fb
	ld   [hl], c                                     ; $7dd7: $71
	halt                                             ; $7dd8: $76
	ld   h, l                                        ; $7dd9: $65
	ld   [hl], h                                     ; $7dda: $74
	sbc  c                                           ; $7ddb: $99
	ld   e, [hl]                                     ; $7ddc: $5e
	sub  a                                           ; $7ddd: $97
	ld   d, d                                        ; $7dde: $52
	ld   l, [hl]                                     ; $7ddf: $6e
	ld   e, c                                        ; $7de0: $59
	sub  a                                           ; $7de1: $97
	dec  c                                           ; $7de2: $0d
	db   $d3                                         ; $7de3: $d3
	rst  JumpTable                                         ; $7de4: $df
	ld   a, b                                        ; $7de5: $78
	and  c                                           ; $7de6: $a1
	ld   [hl], l                                     ; $7de7: $75
	ld   h, l                                        ; $7de8: $65
	sub  l                                           ; $7de9: $95
	ld   sp, hl                                      ; $7dea: $f9
	dec  c                                           ; $7deb: $0d
	nop                                              ; $7dec: $00
	ld   a, [bc]                                     ; $7ded: $0a
	ld   bc, $ffff                                   ; $7dee: $01 $ff $ff
	halt                                             ; $7df1: $76
	ld   d, d                                        ; $7df2: $52
	ld   d, h                                        ; $7df3: $54
	ld   h, c                                        ; $7df4: $61
	halt                                             ; $7df5: $76
	ld   [hl], l                                     ; $7df6: $75
	sbc  [hl]                                        ; $7df7: $9e
	dec  c                                           ; $7df8: $0d
	inc  bc                                          ; $7df9: $03
	ld   l, e                                        ; $7dfa: $6b
	inc  b                                           ; $7dfb: $04
	ld   [de], a                                     ; $7dfc: $12
	ld   d, h                                        ; $7dfd: $54
	halt                                             ; $7dfe: $76
	ld   d, d                                        ; $7dff: $52
	ld   d, h                                        ; $7e00: $54
	ld   h, c                                        ; $7e01: $61
	halt                                             ; $7e02: $76
	ld   a, c                                        ; $7e03: $79
	ld   [bc], a                                     ; $7e04: $02
	add  e                                           ; $7e05: $83
	adc  h                                           ; $7e06: $8c
	sbc  b                                           ; $7e07: $98
	ld   a, e                                        ; $7e08: $7b
	ld   a, [$000d]                                  ; $7e09: $fa $0d $00
	ld   a, [bc]                                     ; $7e0c: $0a
	ld   bc, $9e63                                   ; $7e0d: $01 $63 $9e
	inc  bc                                          ; $7e10: $03
	ld   [hl], b                                     ; $7e11: $70
	ld   e, l                                        ; $7e12: $5d
	inc  bc                                          ; $7e13: $03
	ld   [hl], b                                     ; $7e14: $70
	ld   e, l                                        ; $7e15: $5d
	sbc  a                                           ; $7e16: $9f
	dec  c                                           ; $7e17: $0d
	nop                                              ; $7e18: $00
	ld   a, [bc]                                     ; $7e19: $0a
	inc  e                                           ; $7e1a: $1c
	inc  c                                           ; $7e1b: $0c
	inc  bc                                          ; $7e1c: $03
	inc  bc                                          ; $7e1d: $03
	ld   bc, $8d67                                   ; $7e1e: $01 $67 $8d
	adc  h                                           ; $7e21: $8c
	ld   l, c                                        ; $7e22: $69
	and  c                                           ; $7e23: $a1
	rst  $38                                         ; $7e24: $ff
	rst  $38                                         ; $7e25: $ff
	dec  c                                           ; $7e26: $0d
	ld   a, b                                        ; $7e27: $78
	and  c                                           ; $7e28: $a1
	ld   l, [hl]                                     ; $7e29: $6e
	ld   e, c                                        ; $7e2a: $59
	sbc  [hl]                                        ; $7e2b: $9e
	ld   [bc], a                                     ; $7e2c: $02
	rla                                              ; $7e2d: $17
	ld   h, l                                        ; $7e2e: $65
	ld   [hl], d                                     ; $7e2f: $72
	ld   e, a                                        ; $7e30: $5f
	ld   [hl], h                                     ; $7e31: $74
	ld   h, l                                        ; $7e32: $65
	adc  h                                           ; $7e33: $8c
	ld   [hl], c                                     ; $7e34: $71
	ld   l, l                                        ; $7e35: $6d
	dec  c                                           ; $7e36: $0d
	adc  l                                           ; $7e37: $8d
	ld   l, l                                        ; $7e38: $6d
	ld   d, d                                        ; $7e39: $52
	ld   [hl], l                                     ; $7e3a: $75
	sbc  a                                           ; $7e3b: $9f
	dec  c                                           ; $7e3c: $0d
	nop                                              ; $7e3d: $00
	ld   a, [bc]                                     ; $7e3e: $0a
	dec  c                                           ; $7e3f: $0d
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	rrca                                             ; $7e42: $0f
	nop                                              ; $7e43: $00
	ld   bc, $020c                                   ; $7e44: $01 $0c $02
	ld   b, $47                                      ; $7e47: $06 $47
	inc  bc                                          ; $7e49: $03
	ld   c, $2f                                      ; $7e4a: $0e $2f
	inc  e                                           ; $7e4c: $1c
	inc  c                                           ; $7e4d: $0c
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	ld   bc, $9166                                   ; $7e50: $01 $66 $91
	ld   d, b                                        ; $7e53: $50
	sbc  [hl]                                        ; $7e54: $9e
	inc  bc                                          ; $7e55: $03
	ld   d, l                                        ; $7e56: $55
	dec  b                                           ; $7e57: $05
	ld   h, d                                        ; $7e58: $62
	ld   a, h                                        ; $7e59: $7c
	inc  bc                                          ; $7e5a: $03
	ld   a, h                                        ; $7e5b: $7c
	dec  b                                           ; $7e5c: $05
	ld   de, $0da0                                   ; $7e5d: $11 $a0 $0d
	ld   e, b                                        ; $7e60: $58
	ld   [bc], a                                     ; $7e61: $02
	add  b                                           ; $7e62: $80
	ld   d, d                                        ; $7e63: $52
	ld   h, l                                        ; $7e64: $65
	adc  h                                           ; $7e65: $8c
	ld   h, a                                        ; $7e66: $67
	sbc  a                                           ; $7e67: $9f
	dec  c                                           ; $7e68: $0d
	nop                                              ; $7e69: $00
	ld   a, [bc]                                     ; $7e6a: $0a
	rrca                                             ; $7e6b: $0f
	nop                                              ; $7e6c: $00
	ld   bc, $9601                                   ; $7e6d: $01 $01 $96
	ld   h, l                                        ; $7e70: $65
	sbc  [hl]                                        ; $7e71: $9e
	ld   e, d                                        ; $7e72: $5a
	and  c                                           ; $7e73: $a1
	ld   a, [hl]                                     ; $7e74: $7e
	sbc  c                                           ; $7e75: $99
	ld   l, h                                        ; $7e76: $6c
	ld   a, [$8c0d]                                  ; $7e77: $fa $0d $8c
	ld   l, b                                        ; $7e7a: $68
	ld   a, l                                        ; $7e7b: $7d
	sbc  [hl]                                        ; $7e7c: $9e
	inc  bc                                          ; $7e7d: $03
	ld   d, l                                        ; $7e7e: $55
	dec  b                                           ; $7e7f: $05
	ld   h, d                                        ; $7e80: $62
	and  b                                           ; $7e81: $a0
	rst  $38                                         ; $7e82: $ff
	rst  $38                                         ; $7e83: $ff
	dec  c                                           ; $7e84: $0d
	nop                                              ; $7e85: $00
	ld   a, [bc]                                     ; $7e86: $0a
	add  hl, de                                      ; $7e87: $19
	dec  b                                           ; $7e88: $05
	ld   [bc], a                                     ; $7e89: $02
	inc  bc                                          ; $7e8a: $03
	ld   d, l                                        ; $7e8b: $55
	dec  b                                           ; $7e8c: $05
	ld   h, d                                        ; $7e8d: $62
	and  b                                           ; $7e8e: $a0
	ld   l, l                                        ; $7e8f: $6d
	ld   a, [hl]                                     ; $7e90: $7e
	ld   a, e                                        ; $7e91: $7b
	sbc  c                                           ; $7e92: $99
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	inc  bc                                          ; $7e95: $03
	ld   d, l                                        ; $7e96: $55
	dec  b                                           ; $7e97: $05
	ld   h, d                                        ; $7e98: $62
	and  b                                           ; $7e99: $a0
	inc  bc                                          ; $7e9a: $03
	dec  c                                           ; $7e9b: $0d
	inc  b                                           ; $7e9c: $04
	sbc  [hl]                                        ; $7e9d: $9e
	ld   e, a                                        ; $7e9e: $5f
	sbc  c                                           ; $7e9f: $99
	nop                                              ; $7ea0: $00
	ld   bc, $b407                                   ; $7ea1: $01 $07 $b4
	inc  bc                                          ; $7ea4: $03
	ld   [bc], a                                     ; $7ea5: $02
	inc  bc                                          ; $7ea6: $03
	ld   bc, $2000                                   ; $7ea7: $01 $00 $20
	nop                                              ; $7eaa: $00
	rlca                                             ; $7eab: $07
	rst  JumpTable                                         ; $7eac: $df
	inc  bc                                          ; $7ead: $03
	ld   [bc], a                                     ; $7eae: $02
	inc  bc                                          ; $7eaf: $03
	ld   bc, $2001                                   ; $7eb0: $01 $01 $20
	nop                                              ; $7eb3: $00
	ld   b, $1b                                      ; $7eb4: $06 $1b
	inc  b                                           ; $7eb6: $04
	inc  e                                           ; $7eb7: $1c
	inc  c                                           ; $7eb8: $0c
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	ld   bc, $9e50                                   ; $7ebb: $01 $50 $9e
	ld   h, a                                        ; $7ebe: $67
	adc  l                                           ; $7ebf: $8d
	adc  h                                           ; $7ec0: $8c
	ld   l, c                                        ; $7ec1: $69
	and  c                                           ; $7ec2: $a1
	sbc  a                                           ; $7ec3: $9f
	dec  c                                           ; $7ec4: $0d
	ld   l, l                                        ; $7ec5: $6d
	ld   a, [hl]                                     ; $7ec6: $7e
	ld   a, e                                        ; $7ec7: $7b
	sbc  c                                           ; $7ec8: $99
	inc  bc                                          ; $7ec9: $03
	ld   c, a                                        ; $7eca: $4f
	ld   a, c                                        ; $7ecb: $79
	adc  h                                           ; $7ecc: $8c
	ld   l, b                                        ; $7ecd: $68
	inc  bc                                          ; $7ece: $03
	dec  c                                           ; $7ecf: $0d
	inc  b                                           ; $7ed0: $04
	sbc  [hl]                                        ; $7ed1: $9e
	ld   e, a                                        ; $7ed2: $5f
	and  b                                           ; $7ed3: $a0
	ld   h, l                                        ; $7ed4: $65
	ld   [hl], h                                     ; $7ed5: $74
	dec  c                                           ; $7ed6: $0d
	ld   [bc], a                                     ; $7ed7: $02
	inc  [hl]                                        ; $7ed8: $34
	ld   h, e                                        ; $7ed9: $63
	ld   d, d                                        ; $7eda: $52
	sbc  a                                           ; $7edb: $9f
	dec  c                                           ; $7edc: $0d
	nop                                              ; $7edd: $00
	ld   a, [bc]                                     ; $7ede: $0a
	ld   b, $30                                      ; $7edf: $06 $30
	inc  b                                           ; $7ee1: $04
	inc  e                                           ; $7ee2: $1c
	dec  c                                           ; $7ee3: $0d
	ld   bc, $0101                                   ; $7ee4: $01 $01 $01
	ld   d, b                                        ; $7ee7: $50
	sub  a                                           ; $7ee8: $97
	sbc  [hl]                                        ; $7ee9: $9e
	ld   l, l                                        ; $7eea: $6d
	ld   a, [hl]                                     ; $7eeb: $7e
	ld   a, e                                        ; $7eec: $7b
	sbc  c                                           ; $7eed: $99
	inc  bc                                          ; $7eee: $03
	ld   c, a                                        ; $7eef: $4f
	ld   a, c                                        ; $7ef0: $79
	inc  bc                                          ; $7ef1: $03
	dec  c                                           ; $7ef2: $0d
	inc  b                                           ; $7ef3: $04
	sbc  [hl]                                        ; $7ef4: $9e
	ld   e, a                                        ; $7ef5: $5f
	sbc  c                                           ; $7ef6: $99
	dec  c                                           ; $7ef7: $0d
	ld   a, b                                        ; $7ef8: $78
	and  c                                           ; $7ef9: $a1
	ld   [hl], h                                     ; $7efa: $74
	sbc  [hl]                                        ; $7efb: $9e
	sub  [hl]                                        ; $7efc: $96
	ld   d, h                                        ; $7efd: $54
	sbc  b                                           ; $7efe: $98
	sub  l                                           ; $7eff: $95
	ld   d, h                                        ; $7f00: $54
	ld   e, d                                        ; $7f01: $5a
	sbc  l                                           ; $7f02: $9d
	ld   e, c                                        ; $7f03: $59
	ld   [hl], c                                     ; $7f04: $71
	ld   [hl], h                                     ; $7f05: $74
	dec  c                                           ; $7f06: $0d
	nop                                              ; $7f07: $00
	dec  b                                           ; $7f08: $05
	ld   b, b                                        ; $7f09: $40
	rst  $38                                         ; $7f0a: $ff
	inc  bc                                          ; $7f0b: $03
	rst  $38                                         ; $7f0c: $ff
	ld   bc, $2801                                   ; $7f0d: $01 $01 $28
	nop                                              ; $7f10: $00
	ld   bc, $6699                                   ; $7f11: $01 $99 $66
	sub  c                                           ; $7f14: $91
	ld   a, b                                        ; $7f15: $78
	ld   d, d                                        ; $7f16: $52
	sbc  a                                           ; $7f17: $9f
	dec  c                                           ; $7f18: $0d
	nop                                              ; $7f19: $00
	ld   a, [bc]                                     ; $7f1a: $0a
	ld   b, $30                                      ; $7f1b: $06 $30
	inc  b                                           ; $7f1d: $04
	inc  e                                           ; $7f1e: $1c
	dec  c                                           ; $7f1f: $0d
	ld   [bc], a                                     ; $7f20: $02
	ld   [bc], a                                     ; $7f21: $02
	ld   bc, $9789                                   ; $7f22: $01 $89 $97
	sbc  [hl]                                        ; $7f25: $9e
	inc  bc                                          ; $7f26: $03
	ld   l, e                                        ; $7f27: $6b
	and  b                                           ; $7f28: $a0
	inc  bc                                          ; $7f29: $03
	ld   b, c                                        ; $7f2a: $41
	adc  a                                           ; $7f2b: $8f
	ld   a, b                                        ; $7f2c: $78
	ld   d, d                                        ; $7f2d: $52
	ld   [hl], l                                     ; $7f2e: $75
	sbc  a                                           ; $7f2f: $9f
	dec  c                                           ; $7f30: $0d
	nop                                              ; $7f31: $00
	ld   a, [bc]                                     ; $7f32: $0a
	inc  e                                           ; $7f33: $1c
	inc  c                                           ; $7f34: $0c
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	ld   bc, $0008                                   ; $7f37: $01 $08 $00
	ld   h, e                                        ; $7f3a: $63
	and  c                                           ; $7f3b: $a1
	sbc  [hl]                                        ; $7f3c: $9e
	dec  c                                           ; $7f3d: $0d
	ld   h, c                                        ; $7f3e: $61
	sbc  d                                           ; $7f3f: $9a
	sub  a                                           ; $7f40: $97
	ld   a, h                                        ; $7f41: $7c
	inc  bc                                          ; $7f42: $03
	ld   d, l                                        ; $7f43: $55
	dec  b                                           ; $7f44: $05
	ld   h, d                                        ; $7f45: $62
	and  b                                           ; $7f46: $a0
	inc  bc                                          ; $7f47: $03
	ret  nz                                          ; $7f48: $c0

	inc  bc                                          ; $7f49: $03
	ld   d, d                                        ; $7f4a: $52
	dec  b                                           ; $7f4b: $05
	db   $e4                                         ; $7f4c: $e4
	ld   a, h                                        ; $7f4d: $7c
	inc  b                                           ; $7f4e: $04
	add  a                                           ; $7f4f: $87
	ld   a, c                                        ; $7f50: $79
	dec  c                                           ; $7f51: $0d
	inc  b                                           ; $7f52: $04
	ld   b, l                                        ; $7f53: $45
	sbc  d                                           ; $7f54: $9a
	ld   [hl], h                                     ; $7f55: $74
	sub  b                                           ; $7f56: $90
	sub  a                                           ; $7f57: $97
	ld   d, [hl]                                     ; $7f58: $56
	adc  h                                           ; $7f59: $8c
	ld   h, a                                        ; $7f5a: $67
	ld   e, c                                        ; $7f5b: $59
	ld   sp, hl                                      ; $7f5c: $f9
	dec  c                                           ; $7f5d: $0d
	nop                                              ; $7f5e: $00
	ld   a, [bc]                                     ; $7f5f: $0a
	add  hl, de                                      ; $7f60: $19
	dec  b                                           ; $7f61: $05
	ld   [bc], a                                     ; $7f62: $02
	ld   l, e                                        ; $7f63: $6b
	ld   a, h                                        ; $7f64: $7c
	adc  h                                           ; $7f65: $8c
	adc  h                                           ; $7f66: $8c
	inc  b                                           ; $7f67: $04
	add  a                                           ; $7f68: $87
	ld   a, c                                        ; $7f69: $79
	inc  b                                           ; $7f6a: $04
	ld   b, l                                        ; $7f6b: $45
	sbc  d                                           ; $7f6c: $9a
	sbc  c                                           ; $7f6d: $99
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	inc  bc                                          ; $7f70: $03
	ld   d, l                                        ; $7f71: $55
	inc  b                                           ; $7f72: $04
	ret  c                                           ; $7f73: $d8

	ld   a, c                                        ; $7f74: $79
	pop  de                                          ; $7f75: $d1
	push bc                                          ; $7f76: $c5
	ld   a, h                                        ; $7f77: $7c
	inc  bc                                          ; $7f78: $03
	sbc  h                                           ; $7f79: $9c
	and  b                                           ; $7f7a: $a0
	inc  b                                           ; $7f7b: $04
	ld   b, l                                        ; $7f7c: $45
	sbc  d                                           ; $7f7d: $9a
	sbc  c                                           ; $7f7e: $99
	nop                                              ; $7f7f: $00
	ld   bc, $9307                                   ; $7f80: $01 $07 $93
	inc  b                                           ; $7f83: $04
	ld   [bc], a                                     ; $7f84: $02
	inc  bc                                          ; $7f85: $03
	ld   bc, $2000                                   ; $7f86: $01 $00 $20
	nop                                              ; $7f89: $00
	rlca                                             ; $7f8a: $07
	dec  de                                          ; $7f8b: $1b
	dec  b                                           ; $7f8c: $05
	ld   [bc], a                                     ; $7f8d: $02
	inc  bc                                          ; $7f8e: $03
	ld   bc, $2001                                   ; $7f8f: $01 $01 $20
	nop                                              ; $7f92: $00
	ld   b, $6c                                      ; $7f93: $06 $6c
	dec  b                                           ; $7f95: $05
	inc  e                                           ; $7f96: $1c
	dec  c                                           ; $7f97: $0d
	ld   [bc], a                                     ; $7f98: $02
	ld   [bc], a                                     ; $7f99: $02
	ld   bc, $956f                                   ; $7f9a: $01 $6f $95
	ld   [hl], c                                     ; $7f9d: $71
	halt                                             ; $7f9e: $76
	ld   a, [$6b0d]                                  ; $7f9f: $fa $0d $6b
	ld   a, h                                        ; $7fa2: $7c
	adc  h                                           ; $7fa3: $8c
	adc  h                                           ; $7fa4: $8c
	ld   [hl], l                                     ; $7fa5: $75
	sbc  [hl]                                        ; $7fa6: $9e
	inc  bc                                          ; $7fa7: $03
	ret  nz                                          ; $7fa8: $c0

	inc  bc                                          ; $7fa9: $03
	ld   d, d                                        ; $7faa: $52
	dec  b                                           ; $7fab: $05
	db   $e4                                         ; $7fac: $e4
	ld   a, h                                        ; $7fad: $7c
	inc  b                                           ; $7fae: $04
	add  a                                           ; $7faf: $87
	ld   a, c                                        ; $7fb0: $79
	dec  c                                           ; $7fb1: $0d
	inc  b                                           ; $7fb2: $04
	ld   b, l                                        ; $7fb3: $45
	sbc  d                                           ; $7fb4: $9a
	ld   a, b                                        ; $7fb5: $78
	ld   d, d                                        ; $7fb6: $52
	ld   [hl], l                                     ; $7fb7: $75
	sub  [hl]                                        ; $7fb8: $96
	sbc  a                                           ; $7fb9: $9f
	dec  c                                           ; $7fba: $0d
	nop                                              ; $7fbb: $00
	ld   a, [bc]                                     ; $7fbc: $0a
	ld   bc, $c003                                   ; $7fbd: $01 $03 $c0
	inc  bc                                          ; $7fc0: $03
	ld   d, d                                        ; $7fc1: $52
	dec  b                                           ; $7fc2: $05
	db   $e4                                         ; $7fc3: $e4
	ld   l, [hl]                                     ; $7fc4: $6e
	ld   [hl], c                                     ; $7fc5: $71
	ld   [hl], h                                     ; $7fc6: $74
	sbc  l                                           ; $7fc7: $9d
	ld   e, c                                        ; $7fc8: $59
	sbc  c                                           ; $7fc9: $99
	sub  [hl]                                        ; $7fca: $96
	ld   d, h                                        ; $7fcb: $54
	ld   a, c                                        ; $7fcc: $79
	sbc  [hl]                                        ; $7fcd: $9e
	dec  c                                           ; $7fce: $0d
	inc  bc                                          ; $7fcf: $03
	ld   d, l                                        ; $7fd0: $55
	inc  b                                           ; $7fd1: $04
	ret  c                                           ; $7fd2: $d8

	ld   a, c                                        ; $7fd3: $79
	inc  b                                           ; $7fd4: $04
	ld   c, $5b                                      ; $7fd5: $0e $5b
	ld   e, l                                        ; $7fd7: $5d
	pop  de                                          ; $7fd8: $d1
	push bc                                          ; $7fd9: $c5
	and  b                                           ; $7fda: $a0
	inc  b                                           ; $7fdb: $04
	ld   b, l                                        ; $7fdc: $45
	sbc  d                                           ; $7fdd: $9a
	ld   [hl], h                                     ; $7fde: $74
	ld   e, c                                        ; $7fdf: $59
	sub  a                                           ; $7fe0: $97
	dec  c                                           ; $7fe1: $0d
	inc  b                                           ; $7fe2: $04
	add  a                                           ; $7fe3: $87
	ld   a, c                                        ; $7fe4: $79
	inc  b                                           ; $7fe5: $04
	ld   b, l                                        ; $7fe6: $45
	sbc  d                                           ; $7fe7: $9a
	ld   [hl], h                                     ; $7fe8: $74
	ld   l, a                                        ; $7fe9: $6f
	sub  l                                           ; $7fea: $95
	ld   d, h                                        ; $7feb: $54
	ld   l, [hl]                                     ; $7fec: $6e
	ld   d, d                                        ; $7fed: $52
	sbc  a                                           ; $7fee: $9f
	dec  c                                           ; $7fef: $0d
	nop                                              ; $7ff0: $00
	ld   a, [bc]                                     ; $7ff1: $0a
	inc  e                                           ; $7ff2: $1c
	inc  c                                           ; $7ff3: $0c
	inc  bc                                          ; $7ff4: $03
	inc  bc                                          ; $7ff5: $03
	ld   bc, $8f62                                   ; $7ff6: $01 $62 $8f
	and  c                                           ; $7ff9: $a1
	ld   a, b                                        ; $7ffa: $78
	ld   h, e                                        ; $7ffb: $63
	ld   d, d                                        ; $7ffc: $52
	rst  $38                                         ; $7ffd: $ff
	rst  $38                                         ; $7ffe: $ff
	dec  c                                           ; $7fff: $0d
