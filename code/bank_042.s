; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

	sub  a                                           ; $4000: $97
	sbc  [hl]                                        ; $4001: $9e
	ld   e, b                                        ; $4002: $58
	inc  b                                           ; $4003: $04
	ld   l, $63                                      ; $4004: $2e $63
	and  c                                           ; $4006: $a1
	ld   a, h                                        ; $4007: $7c
	inc  bc                                          ; $4008: $03
	xor  h                                           ; $4009: $ac
	ld   [hl], c                                     ; $400a: $71
	ld   l, l                                        ; $400b: $6d
	ld   e, b                                        ; $400c: $58
	ld   l, c                                        ; $400d: $69
	and  c                                           ; $400e: $a1
	dec  c                                           ; $400f: $0d
	add  a                                           ; $4010: $87
	ld   d, d                                        ; $4011: $52
	ld   e, d                                        ; $4012: $5a
	sbc  [hl]                                        ; $4013: $9e
	inc  b                                           ; $4014: $04
	ld   c, $02                                      ; $4015: $0e $02
	sbc  d                                           ; $4017: $9a
	ld   e, e                                        ; $4018: $5b
	ld   a, b                                        ; $4019: $78
	and  c                                           ; $401a: $a1
	ld   [hl], l                                     ; $401b: $75
	ld   h, a                                        ; $401c: $67
	sbc  a                                           ; $401d: $9f
	dec  c                                           ; $401e: $0d
	nop                                              ; $401f: $00
	ld   a, [bc]                                     ; $4020: $0a
	inc  e                                           ; $4021: $1c
	ld   c, $01                                      ; $4022: $0e $01
	ld   bc, $6101                                   ; $4024: $01 $01 $61
	and  c                                           ; $4027: $a1
	ld   [hl], a                                     ; $4028: $77
	sbc  [hl]                                        ; $4029: $9e
	ld   d, h                                        ; $402a: $54
	ld   l, a                                        ; $402b: $6f
	ld   a, h                                        ; $402c: $7c
	ld   e, b                                        ; $402d: $58
	inc  b                                           ; $402e: $04
	ld   l, $63                                      ; $402f: $2e $63
	and  c                                           ; $4031: $a1
	ld   e, d                                        ; $4032: $5a
	dec  c                                           ; $4033: $0d
	inc  bc                                          ; $4034: $03
	xor  h                                           ; $4035: $ac
	ld   [hl], c                                     ; $4036: $71
	ld   l, l                                        ; $4037: $6d
	ld   e, b                                        ; $4038: $58
	ld   l, c                                        ; $4039: $69
	and  c                                           ; $403a: $a1
	add  a                                           ; $403b: $87
	ld   d, d                                        ; $403c: $52
	sbc  [hl]                                        ; $403d: $9e
	ld   d, d                                        ; $403e: $52
	ld   [hl], c                                     ; $403f: $71
	ld   h, l                                        ; $4040: $65
	sub  l                                           ; $4041: $95
	ld   a, c                                        ; $4042: $79
	dec  c                                           ; $4043: $0d
	inc  bc                                          ; $4044: $03
	ld   l, d                                        ; $4045: $6a
	add  a                                           ; $4046: $87
	adc  h                                           ; $4047: $8c
	ld   h, l                                        ; $4048: $65
	sub  l                                           ; $4049: $95
	ld   d, h                                        ; $404a: $54
	ld   a, e                                        ; $404b: $7b
	sbc  a                                           ; $404c: $9f
	dec  c                                           ; $404d: $0d
	nop                                              ; $404e: $00
	ld   a, [bc]                                     ; $404f: $0a
	ld   bc, $9166                                   ; $4050: $01 $66 $91
	sbc  [hl]                                        ; $4053: $9e
	ld   d, b                                        ; $4054: $50
	ld   l, l                                        ; $4055: $6d
	ld   h, l                                        ; $4056: $65
	ld   a, l                                        ; $4057: $7d
	inc  bc                                          ; $4058: $03
	dec  c                                           ; $4059: $0d
	ld   [bc], a                                     ; $405a: $02
	jp   $0d5a                                       ; $405b: $c3 $5a $0d


	ld   d, b                                        ; $405e: $50
	sbc  b                                           ; $405f: $98
	adc  h                                           ; $4060: $8c
	ld   h, a                                        ; $4061: $67
	ld   a, h                                        ; $4062: $7c
	ld   [hl], l                                     ; $4063: $75
	sbc  [hl]                                        ; $4064: $9e
	ld   h, c                                        ; $4065: $61
	sbc  d                                           ; $4066: $9a
	ld   [hl], l                                     ; $4067: $75
	rst  $38                                         ; $4068: $ff
	rst  $38                                         ; $4069: $ff
	dec  c                                           ; $406a: $0d
	nop                                              ; $406b: $00
	ld   a, [bc]                                     ; $406c: $0a
	dec  b                                           ; $406d: $05
	add  b                                           ; $406e: $80
	and  c                                           ; $406f: $a1
	ld   bc, $0001                                   ; $4070: $01 $01 $00
	nop                                              ; $4073: $00
	inc  e                                           ; $4074: $1c
	ld   c, $00                                      ; $4075: $0e $00
	nop                                              ; $4077: $00
	ld   bc, $9750                                   ; $4078: $01 $50 $97
	sbc  [hl]                                        ; $407b: $9e
	ld   [$6300], sp                                 ; $407c: $08 $00 $63
	and  c                                           ; $407f: $a1
	sbc  a                                           ; $4080: $9f
	dec  c                                           ; $4081: $0d
	ld   d, d                                        ; $4082: $52
	sub  a                                           ; $4083: $97
	ld   [hl], c                                     ; $4084: $71
	ld   h, l                                        ; $4085: $65
	sub  c                                           ; $4086: $91
	ld   d, d                                        ; $4087: $52
	adc  h                                           ; $4088: $8c
	ld   l, c                                        ; $4089: $69
	rst  $38                                         ; $408a: $ff
	rst  $38                                         ; $408b: $ff
	halt                                             ; $408c: $76
	sbc  [hl]                                        ; $408d: $9e
	ld   [bc], a                                     ; $408e: $02
	sbc  l                                           ; $408f: $9d
	ld   d, d                                        ; $4090: $52
	dec  c                                           ; $4091: $0d
	ld   l, l                                        ; $4092: $6d
	ld   d, d                                        ; $4093: $52
	halt                                             ; $4094: $76
	ld   h, c                                        ; $4095: $61
	sbc  e                                           ; $4096: $9b
	ld   a, b                                        ; $4097: $78
	ld   a, h                                        ; $4098: $7c
	ld   [hl], l                                     ; $4099: $75
	ld   h, a                                        ; $409a: $67
	ld   e, d                                        ; $409b: $5a
	rst  $38                                         ; $409c: $ff
	rst  $38                                         ; $409d: $ff
	dec  c                                           ; $409e: $0d
	nop                                              ; $409f: $00
	ld   a, [bc]                                     ; $40a0: $0a
	rrca                                             ; $40a1: $0f
	nop                                              ; $40a2: $00
	ld   bc, $9d01                                   ; $40a3: $01 $01 $9d
	ld   e, c                                        ; $40a6: $59
	ld   [hl], c                                     ; $40a7: $71
	ld   [hl], h                                     ; $40a8: $74
	adc  h                                           ; $40a9: $8c
	ld   h, a                                        ; $40aa: $67
	sub  [hl]                                        ; $40ab: $96
	sbc  a                                           ; $40ac: $9f
	dec  c                                           ; $40ad: $0d
	rst  $10                                         ; $40ae: $d7
	rst  $28                                         ; $40af: $ef
	rst  JumpTable                                         ; $40b0: $df
	and  l                                           ; $40b1: $a5
	jp   z, $037d                                    ; $40b2: $ca $7d $03

	ld   a, c                                        ; $40b5: $79
	ld   a, c                                        ; $40b6: $79
	ld   [de], a                                     ; $40b7: $12
	inc  b                                           ; $40b8: $04
	push bc                                          ; $40b9: $c5
	ld   h, l                                        ; $40ba: $65
	ld   e, c                                        ; $40bb: $59
	dec  c                                           ; $40bc: $0d
	ld   b, $1a                                      ; $40bd: $06 $1a
	sbc  d                                           ; $40bf: $9a
	ld   a, b                                        ; $40c0: $78
	ld   d, d                                        ; $40c1: $52
	and  c                                           ; $40c2: $a1
	ld   [hl], l                                     ; $40c3: $75
	ld   h, l                                        ; $40c4: $65
	sub  l                                           ; $40c5: $95
	sbc  a                                           ; $40c6: $9f
	dec  c                                           ; $40c7: $0d
	nop                                              ; $40c8: $00
	ld   a, [bc]                                     ; $40c9: $0a
	inc  e                                           ; $40ca: $1c
	ld   c, $01                                      ; $40cb: $0e $01
	ld   bc, $7d01                                   ; $40cd: $01 $01 $7d
	ld   d, d                                        ; $40d0: $52
	sbc  [hl]                                        ; $40d1: $9e
	ld   l, e                                        ; $40d2: $6b
	ld   d, h                                        ; $40d3: $54
	ld   a, b                                        ; $40d4: $78
	and  c                                           ; $40d5: $a1
	ld   [hl], l                                     ; $40d6: $75
	ld   h, a                                        ; $40d7: $67
	sbc  a                                           ; $40d8: $9f
	dec  c                                           ; $40d9: $0d
	ld   h, d                                        ; $40da: $62
	adc  a                                           ; $40db: $8f
	and  c                                           ; $40dc: $a1
	ld   a, b                                        ; $40dd: $78
	ld   h, e                                        ; $40de: $63
	ld   d, d                                        ; $40df: $52
	sbc  a                                           ; $40e0: $9f
	dec  c                                           ; $40e1: $0d
	ld   [hl], l                                     ; $40e2: $75
	sub  b                                           ; $40e3: $90
	sbc  [hl]                                        ; $40e4: $9e
	ld   [bc], a                                     ; $40e5: $02
	and  l                                           ; $40e6: $a5
	inc  b                                           ; $40e7: $04
	xor  d                                           ; $40e8: $aa
	ld   a, l                                        ; $40e9: $7d
	ld   e, b                                        ; $40ea: $58
	sbc  l                                           ; $40eb: $9d
	add  c                                           ; $40ec: $81
	ld   a, c                                        ; $40ed: $79
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	dec  c                                           ; $40f0: $0d
	nop                                              ; $40f1: $00
	ld   a, [bc]                                     ; $40f2: $0a
	inc  e                                           ; $40f3: $1c
	ld   c, $01                                      ; $40f4: $0e $01
	ld   bc, $7d01                                   ; $40f6: $01 $01 $7d
	ld   d, d                                        ; $40f9: $52
	sbc  [hl]                                        ; $40fa: $9e
	ld   [$6300], sp                                 ; $40fb: $08 $00 $63
	and  c                                           ; $40fe: $a1
	sbc  a                                           ; $40ff: $9f
	dec  c                                           ; $4100: $0d
	ld   h, c                                        ; $4101: $61
	ld   a, h                                        ; $4102: $7c
	inc  bc                                          ; $4103: $03
	ld   c, a                                        ; $4104: $4f
	ld   [bc], a                                     ; $4105: $02
	sbc  l                                           ; $4106: $9d
	ld   [hl], c                                     ; $4107: $71
	ld   [hl], h                                     ; $4108: $74
	ld   l, l                                        ; $4109: $6d
	sbc  [hl]                                        ; $410a: $9e
	ld   d, h                                        ; $410b: $54
	ld   l, a                                        ; $410c: $6f
	ld   a, h                                        ; $410d: $7c
	dec  c                                           ; $410e: $0d
	ld   e, b                                        ; $410f: $58
	ld   l, c                                        ; $4110: $69
	and  c                                           ; $4111: $a1
	add  a                                           ; $4112: $87
	ld   d, d                                        ; $4113: $52
	ld   [hl], l                                     ; $4114: $75
	ld   h, a                                        ; $4115: $67
	sbc  a                                           ; $4116: $9f
	dec  c                                           ; $4117: $0d
	nop                                              ; $4118: $00
	ld   a, [bc]                                     ; $4119: $0a
	dec  c                                           ; $411a: $0d
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	db   $10                                         ; $411d: $10
	ld   c, d                                        ; $411e: $4a
	nop                                              ; $411f: $00
	ld   bc, $9e63                                   ; $4120: $01 $63 $9e
	ld   [hl], a                                     ; $4123: $77
	ld   d, h                                        ; $4124: $54
	ld   l, h                                        ; $4125: $6c
	sbc  a                                           ; $4126: $9f
	dec  c                                           ; $4127: $0d
	inc  bc                                          ; $4128: $03
	ld   l, d                                        ; $4129: $6a
	add  a                                           ; $412a: $87
	ld   [hl], h                                     ; $412b: $74
	ld   [bc], a                                     ; $412c: $02
	inc  [hl]                                        ; $412d: $34
	ld   h, e                                        ; $412e: $63
	ld   d, d                                        ; $412f: $52
	sbc  a                                           ; $4130: $9f
	dec  c                                           ; $4131: $0d
	nop                                              ; $4132: $00
	ld   a, [bc]                                     ; $4133: $0a
	inc  e                                           ; $4134: $1c
	ld   c, $00                                      ; $4135: $0e $00
	nop                                              ; $4137: $00
	ld   bc, $5477                                   ; $4138: $01 $77 $54
	ld   [hl], l                                     ; $413b: $75
	ld   h, a                                        ; $413c: $67
	ld   e, c                                        ; $413d: $59
	ld   sp, hl                                      ; $413e: $f9
	dec  c                                           ; $413f: $0d
	nop                                              ; $4140: $00
	ld   a, [bc]                                     ; $4141: $0a
	add  hl, de                                      ; $4142: $19
	inc  bc                                          ; $4143: $03
	inc  bc                                          ; $4144: $03
	ld   e, b                                        ; $4145: $58
	ld   d, d                                        ; $4146: $52
	ld   h, l                                        ; $4147: $65
	ld   d, d                                        ; $4148: $52
	nop                                              ; $4149: $00
	nop                                              ; $414a: $00
	ld   l, a                                        ; $414b: $6f
	sub  l                                           ; $414c: $95
	ld   [hl], c                                     ; $414d: $71
	halt                                             ; $414e: $76
	ld   e, c                                        ; $414f: $59
	ld   l, l                                        ; $4150: $6d
	ld   d, d                                        ; $4151: $52
	nop                                              ; $4152: $00
	ld   bc, $688c                                   ; $4153: $01 $8c $68
	ld   d, d                                        ; $4156: $52
	nop                                              ; $4157: $00
	ld   [bc], a                                     ; $4158: $02
	rlca                                             ; $4159: $07
	and  l                                           ; $415a: $a5
	dec  e                                           ; $415b: $1d
	ld   [bc], a                                     ; $415c: $02
	inc  bc                                          ; $415d: $03
	ld   bc, $2000                                   ; $415e: $01 $00 $20
	nop                                              ; $4161: $00
	rlca                                             ; $4162: $07
	ld   b, b                                        ; $4163: $40
	ld   e, $02                                      ; $4164: $1e $02
	inc  bc                                          ; $4166: $03
	ld   bc, $2001                                   ; $4167: $01 $01 $20
	nop                                              ; $416a: $00
	rlca                                             ; $416b: $07
	ldh  a, [c]                                      ; $416c: $f2
	ld   e, $02                                      ; $416d: $1e $02
	inc  bc                                          ; $416f: $03
	ld   bc, $2002                                   ; $4170: $01 $02 $20
	nop                                              ; $4173: $00
	ld   b, $4b                                      ; $4174: $06 $4b
	rra                                              ; $4176: $1f
	rrca                                             ; $4177: $0f
	nop                                              ; $4178: $00
	ld   bc, $5801                                   ; $4179: $01 $01 $58
	ld   d, d                                        ; $417c: $52
	ld   h, l                                        ; $417d: $65
	ld   d, d                                        ; $417e: $52
	ld   [hl], l                                     ; $417f: $75
	ld   h, a                                        ; $4180: $67
	sbc  a                                           ; $4181: $9f
	dec  c                                           ; $4182: $0d
	adc  c                                           ; $4183: $89
	ld   [hl], a                                     ; $4184: $77
	sub  [hl]                                        ; $4185: $96
	ld   d, d                                        ; $4186: $52
	ld   h, l                                        ; $4187: $65
	sub  l                                           ; $4188: $95
	ld   d, h                                        ; $4189: $54
	sub  h                                           ; $418a: $94
	ld   [bc], a                                     ; $418b: $02
	ld   d, b                                        ; $418c: $50
	ld   [bc], a                                     ; $418d: $02
	db   $eb                                         ; $418e: $eb
	ld   [hl], l                                     ; $418f: $75
	dec  c                                           ; $4190: $0d
	adc  c                                           ; $4191: $89
	ld   [hl], a                                     ; $4192: $77
	sub  [hl]                                        ; $4193: $96
	ld   d, d                                        ; $4194: $52
	ld   e, c                                        ; $4195: $59
	ld   l, l                                        ; $4196: $6d
	ld   h, e                                        ; $4197: $63
	rst  $38                                         ; $4198: $ff
	rst  $38                                         ; $4199: $ff
	dec  c                                           ; $419a: $0d
	nop                                              ; $419b: $00
	ld   a, [bc]                                     ; $419c: $0a
	ld   bc, $9a61                                   ; $419d: $01 $61 $9a
	ld   a, l                                        ; $41a0: $7d
	sbc  [hl]                                        ; $41a1: $9e
	halt                                             ; $41a2: $76
	ld   [hl], h                                     ; $41a3: $74
	sub  b                                           ; $41a4: $90
	ld   e, b                                        ; $41a5: $58
	ld   d, d                                        ; $41a6: $52
	ld   h, l                                        ; $41a7: $65
	ld   d, d                                        ; $41a8: $52
	dec  c                                           ; $41a9: $0d
	ld   e, b                                        ; $41aa: $58
	ld   l, c                                        ; $41ab: $69
	and  c                                           ; $41ac: $a1
	add  a                                           ; $41ad: $87
	ld   d, d                                        ; $41ae: $52
	ld   [hl], l                                     ; $41af: $75
	ld   h, a                                        ; $41b0: $67
	ld   a, e                                        ; $41b1: $7b
	sbc  a                                           ; $41b2: $9f
	dec  c                                           ; $41b3: $0d
	nop                                              ; $41b4: $00
	ld   a, [bc]                                     ; $41b5: $0a
	inc  e                                           ; $41b6: $1c
	ld   c, $01                                      ; $41b7: $0e $01
	ld   bc, $5001                                   ; $41b9: $01 $01 $50
	sbc  b                                           ; $41bc: $98
	ld   e, d                                        ; $41bd: $5a
	halt                                             ; $41be: $76
	ld   d, h                                        ; $41bf: $54
	ld   h, d                                        ; $41c0: $62
	ld   h, h                                        ; $41c1: $64
	ld   d, d                                        ; $41c2: $52
	adc  h                                           ; $41c3: $8c
	ld   h, a                                        ; $41c4: $67
	sbc  a                                           ; $41c5: $9f
	dec  c                                           ; $41c6: $0d
	ld   l, e                                        ; $41c7: $6b
	ld   d, h                                        ; $41c8: $54
	ld   d, d                                        ; $41c9: $52
	ld   [hl], c                                     ; $41ca: $71
	ld   [hl], h                                     ; $41cb: $74
	ld   d, d                                        ; $41cc: $52
	ld   l, l                                        ; $41cd: $6d
	ld   l, [hl]                                     ; $41ce: $6e
	ld   e, a                                        ; $41cf: $5f
	sbc  c                                           ; $41d0: $99
	halt                                             ; $41d1: $76
	dec  c                                           ; $41d2: $0d
	halt                                             ; $41d3: $76
	ld   [hl], h                                     ; $41d4: $74
	sub  b                                           ; $41d5: $90
	ld   d, h                                        ; $41d6: $54
	sbc  d                                           ; $41d7: $9a
	ld   h, l                                        ; $41d8: $65
	ld   d, d                                        ; $41d9: $52
	ld   [hl], l                                     ; $41da: $75
	ld   h, a                                        ; $41db: $67
	sbc  a                                           ; $41dc: $9f
	dec  c                                           ; $41dd: $0d
	nop                                              ; $41de: $00
	ld   a, [bc]                                     ; $41df: $0a
	ld   bc, $9a54                                   ; $41e0: $01 $54 $9a
	ld   h, l                                        ; $41e3: $65
	ld   d, d                                        ; $41e4: $52
	ld   e, c                                        ; $41e5: $59
	sub  a                                           ; $41e6: $97
	sbc  [hl]                                        ; $41e7: $9e
	ld   [bc], a                                     ; $41e8: $02
	and  l                                           ; $41e9: $a5
	inc  bc                                          ; $41ea: $03
	ld   a, c                                        ; $41eb: $79
	ld   a, l                                        ; $41ec: $7d
	dec  c                                           ; $41ed: $0d
	sub  b                                           ; $41ee: $90
	ld   d, h                                        ; $41ef: $54
	ld   [bc], a                                     ; $41f0: $02
	jr   nz, jr_042_41f7                             ; $41f1: $20 $04

	push bc                                          ; $41f3: $c5
	rst  $10                                         ; $41f4: $d7
	rst  $28                                         ; $41f5: $ef
	rst  JumpTable                                         ; $41f6: $df

jr_042_41f7:
	and  l                                           ; $41f7: $a5
	jp   z, $0da0                                    ; $41f8: $ca $a0 $0d

	or   [hl]                                        ; $41fb: $b6
	ei                                               ; $41fc: $fb
	call nc, Call_042_65ba                           ; $41fd: $d4 $ba $65
	ld   l, a                                        ; $4200: $6f
	sub  c                                           ; $4201: $91
	ld   d, d                                        ; $4202: $52
	adc  h                                           ; $4203: $8c
	ld   h, a                                        ; $4204: $67
	sbc  a                                           ; $4205: $9f
	dec  c                                           ; $4206: $0d
	nop                                              ; $4207: $00
	ld   a, [bc]                                     ; $4208: $0a
	dec  b                                           ; $4209: $05
	add  b                                           ; $420a: $80
	and  d                                           ; $420b: $a2
	ld   bc, $0001                                   ; $420c: $01 $01 $00
	ld   l, $02                                      ; $420f: $2e $02
	nop                                              ; $4211: $00
	rrca                                             ; $4212: $0f
	nop                                              ; $4213: $00
	ld   bc, $ff01                                   ; $4214: $01 $01 $ff
	rst  $38                                         ; $4217: $ff
	inc  b                                           ; $4218: $04
	ld   l, l                                        ; $4219: $6d
	ld   a, c                                        ; $421a: $79
	ld   a, l                                        ; $421b: $7d
	inc  bc                                          ; $421c: $03
	ld   l, h                                        ; $421d: $6c
	ld   h, l                                        ; $421e: $65
	ld   e, c                                        ; $421f: $59
	ld   l, l                                        ; $4220: $6d
	ld   d, d                                        ; $4221: $52
	dec  c                                           ; $4222: $0d
	sub  [hl]                                        ; $4223: $96
	ld   d, h                                        ; $4224: $54
	ld   [hl], l                                     ; $4225: $75
	ld   h, a                                        ; $4226: $67
	sbc  a                                           ; $4227: $9f
	dec  c                                           ; $4228: $0d
	ld   [hl], l                                     ; $4229: $75
	sub  b                                           ; $422a: $90
	sbc  [hl]                                        ; $422b: $9e
	inc  b                                           ; $422c: $04
	jp   nc, $d17d                                   ; $422d: $d2 $7d $d1

	call nz, $ecc2                                   ; $4230: $c4 $c2 $ec
	ld   [hl], l                                     ; $4233: $75
	ld   h, a                                        ; $4234: $67
	sub  [hl]                                        ; $4235: $96
	sbc  a                                           ; $4236: $9f
	dec  c                                           ; $4237: $0d
	nop                                              ; $4238: $00
	ld   a, [bc]                                     ; $4239: $0a
	rrca                                             ; $423a: $0f
	ld   c, $00                                      ; $423b: $0e $00
	ld   bc, $6d59                                   ; $423d: $01 $59 $6d
	ld   d, d                                        ; $4240: $52
	ld   [hl], l                                     ; $4241: $75
	ld   h, a                                        ; $4242: $67
	ld   e, c                                        ; $4243: $59
	rst  $38                                         ; $4244: $ff
	rst  $38                                         ; $4245: $ff
	dec  c                                           ; $4246: $0d
	inc  b                                           ; $4247: $04
	ld   l, $7c                                      ; $4248: $2e $7c
	ld   e, l                                        ; $424a: $5d
	ld   l, a                                        ; $424b: $6f
	ld   e, [hl]                                     ; $424c: $5e
	ld   l, c                                        ; $424d: $69
	ld   a, b                                        ; $424e: $78
	and  c                                           ; $424f: $a1
	ld   [hl], l                                     ; $4250: $75
	ld   h, a                                        ; $4251: $67
	sub  [hl]                                        ; $4252: $96
	rst  $38                                         ; $4253: $ff
	rst  $38                                         ; $4254: $ff
	dec  c                                           ; $4255: $0d
	nop                                              ; $4256: $00
	ld   a, [bc]                                     ; $4257: $0a
	ld   bc, $8806                                   ; $4258: $01 $06 $88
	dec  b                                           ; $425b: $05
	push af                                          ; $425c: $f5
	ld   [hl], c                                     ; $425d: $71
	inc  bc                                          ; $425e: $03
	add  [hl]                                        ; $425f: $86
	ld   a, b                                        ; $4260: $78
	sub  a                                           ; $4261: $97
	sbc  [hl]                                        ; $4262: $9e
	ld   h, c                                        ; $4263: $61
	sbc  d                                           ; $4264: $9a
	ld   e, l                                        ; $4265: $5d
	sub  a                                           ; $4266: $97
	ld   d, d                                        ; $4267: $52
	ld   a, h                                        ; $4268: $7c
	dec  c                                           ; $4269: $0d
	ld   e, c                                        ; $426a: $59
	ld   l, l                                        ; $426b: $6d
	ld   h, e                                        ; $426c: $63
	ld   [hl], l                                     ; $426d: $75
	sbc  [hl]                                        ; $426e: $9e
	ld   [bc], a                                     ; $426f: $02
	inc  bc                                          ; $4270: $03
	and  b                                           ; $4271: $a0
	inc  bc                                          ; $4272: $03
	ld   h, l                                        ; $4273: $65
	ld   h, b                                        ; $4274: $60
	ld   l, a                                        ; $4275: $6f
	sub  c                                           ; $4276: $91
	ld   d, d                                        ; $4277: $52
	ld   e, a                                        ; $4278: $5f
	dec  c                                           ; $4279: $0d
	ld   a, e                                        ; $427a: $7b
	ei                                               ; $427b: $fb
	sub  [hl]                                        ; $427c: $96
	ld   [hl], c                                     ; $427d: $71
	ld   [hl], h                                     ; $427e: $74
	rst  $38                                         ; $427f: $ff
	rst  $38                                         ; $4280: $ff
	dec  c                                           ; $4281: $0d
	nop                                              ; $4282: $00
	ld   a, [bc]                                     ; $4283: $0a
	inc  e                                           ; $4284: $1c
	ld   c, $01                                      ; $4285: $0e $01
	ld   bc, $7501                                   ; $4287: $01 $01 $75
	sub  b                                           ; $428a: $90
	sbc  [hl]                                        ; $428b: $9e
	ld   e, b                                        ; $428c: $58
	ld   d, d                                        ; $428d: $52
	ld   h, l                                        ; $428e: $65
	ld   d, d                                        ; $428f: $52
	and  c                                           ; $4290: $a1
	ld   [hl], l                                     ; $4291: $75
	ld   h, a                                        ; $4292: $67
	sub  [hl]                                        ; $4293: $96
	ld   a, e                                        ; $4294: $7b
	sbc  a                                           ; $4295: $9f
	dec  c                                           ; $4296: $0d
	sub  [hl]                                        ; $4297: $96
	ld   e, c                                        ; $4298: $59
	ld   [hl], c                                     ; $4299: $71
	ld   l, l                                        ; $429a: $6d
	rst  $38                                         ; $429b: $ff
	rst  $38                                         ; $429c: $ff
	dec  c                                           ; $429d: $0d
	nop                                              ; $429e: $00
	ld   a, [bc]                                     ; $429f: $0a
	ld   bc, $9166                                   ; $42a0: $01 $66 $91
	sbc  [hl]                                        ; $42a3: $9e
	ld   d, b                                        ; $42a4: $50
	ld   l, l                                        ; $42a5: $6d
	ld   h, l                                        ; $42a6: $65
	ld   a, l                                        ; $42a7: $7d
	inc  bc                                          ; $42a8: $03
	dec  c                                           ; $42a9: $0d
	ld   [bc], a                                     ; $42aa: $02
	jp   $0d5a                                       ; $42ab: $c3 $5a $0d


	ld   d, b                                        ; $42ae: $50
	sbc  b                                           ; $42af: $98
	adc  h                                           ; $42b0: $8c
	ld   h, a                                        ; $42b1: $67
	ld   a, h                                        ; $42b2: $7c
	ld   [hl], l                                     ; $42b3: $75
	sbc  [hl]                                        ; $42b4: $9e
	ld   h, c                                        ; $42b5: $61
	sbc  d                                           ; $42b6: $9a
	ld   [hl], l                                     ; $42b7: $75
	rst  $38                                         ; $42b8: $ff
	rst  $38                                         ; $42b9: $ff
	dec  c                                           ; $42ba: $0d
	nop                                              ; $42bb: $00
	ld   a, [bc]                                     ; $42bc: $0a
	dec  b                                           ; $42bd: $05
	add  b                                           ; $42be: $80
	and  d                                           ; $42bf: $a2
	ld   bc, $0001                                   ; $42c0: $01 $01 $00
	nop                                              ; $42c3: $00
	rrca                                             ; $42c4: $0f
	nop                                              ; $42c5: $00
	ld   bc, $c101                                   ; $42c6: $01 $01 $c1
	db   $e3                                         ; $42c9: $e3
	ld   [hl], l                                     ; $42ca: $75
	ld   h, a                                        ; $42cb: $67
	ld   a, e                                        ; $42cc: $7b
	rst  $38                                         ; $42cd: $ff
	rst  $38                                         ; $42ce: $ff
	dec  c                                           ; $42cf: $0d
	inc  b                                           ; $42d0: $04
	ld   l, l                                        ; $42d1: $6d
	ld   a, h                                        ; $42d2: $7c
	ld   [bc], a                                     ; $42d3: $02
	xor  [hl]                                        ; $42d4: $ae
	ld   a, c                                        ; $42d5: $79
	ld   a, l                                        ; $42d6: $7d
	ld   d, b                                        ; $42d7: $50
	sbc  l                                           ; $42d8: $9d
	ld   a, b                                        ; $42d9: $78
	ld   d, d                                        ; $42da: $52
	ld   [hl], l                                     ; $42db: $75
	ld   h, a                                        ; $42dc: $67
	sbc  a                                           ; $42dd: $9f
	dec  c                                           ; $42de: $0d
	nop                                              ; $42df: $00
	ld   a, [bc]                                     ; $42e0: $0a
	inc  e                                           ; $42e1: $1c
	ld   c, $03                                      ; $42e2: $0e $03
	inc  bc                                          ; $42e4: $03
	ld   bc, $546b                                   ; $42e5: $01 $6b $54
	ld   [hl], l                                     ; $42e8: $75
	ld   h, a                                        ; $42e9: $67
	ld   e, c                                        ; $42ea: $59
	rst  $38                                         ; $42eb: $ff
	rst  $38                                         ; $42ec: $ff
	dec  c                                           ; $42ed: $0d
	inc  bc                                          ; $42ee: $03
	jr   z, jr_042_42f5                              ; $42ef: $28 $04

	ld   c, b                                        ; $42f1: $48
	ld   [hl], l                                     ; $42f2: $75
	ld   h, a                                        ; $42f3: $67
	ld   a, e                                        ; $42f4: $7b

jr_042_42f5:
	sbc  a                                           ; $42f5: $9f
	dec  c                                           ; $42f6: $0d
	nop                                              ; $42f7: $00
	ld   a, [bc]                                     ; $42f8: $0a
	ld   bc, $9166                                   ; $42f9: $01 $66 $91
	sbc  [hl]                                        ; $42fc: $9e
	ld   d, b                                        ; $42fd: $50
	ld   l, l                                        ; $42fe: $6d
	ld   h, l                                        ; $42ff: $65
	ld   a, l                                        ; $4300: $7d
	inc  bc                                          ; $4301: $03
	dec  c                                           ; $4302: $0d
	ld   [bc], a                                     ; $4303: $02
	jp   $0d5a                                       ; $4304: $c3 $5a $0d


	ld   d, b                                        ; $4307: $50
	sbc  b                                           ; $4308: $98
	adc  h                                           ; $4309: $8c
	ld   h, a                                        ; $430a: $67
	ld   a, h                                        ; $430b: $7c
	ld   [hl], l                                     ; $430c: $75
	sbc  [hl]                                        ; $430d: $9e
	ld   h, c                                        ; $430e: $61
	sbc  d                                           ; $430f: $9a
	ld   [hl], l                                     ; $4310: $75
	rst  $38                                         ; $4311: $ff
	rst  $38                                         ; $4312: $ff
	dec  c                                           ; $4313: $0d
	nop                                              ; $4314: $00
	ld   a, [bc]                                     ; $4315: $0a
	dec  b                                           ; $4316: $05
	add  b                                           ; $4317: $80
	and  d                                           ; $4318: $a2
	ld   bc, $0001                                   ; $4319: $01 $01 $00
	nop                                              ; $431c: $00
	inc  e                                           ; $431d: $1c
	ld   c, $03                                      ; $431e: $0e $03
	inc  bc                                          ; $4320: $03
	ld   bc, $a16b                                   ; $4321: $01 $6b $a1
	ld   a, b                                        ; $4324: $78
	ld   a, c                                        ; $4325: $79
	ld   [bc], a                                     ; $4326: $02
	ld   h, l                                        ; $4327: $65
	ld   d, [hl]                                     ; $4328: $56
	ld   [bc], a                                     ; $4329: $02
	ld   b, b                                        ; $432a: $40
	and  c                                           ; $432b: $a1
	ld   [hl], l                                     ; $432c: $75
	rst  $38                                         ; $432d: $ff
	rst  $38                                         ; $432e: $ff
	rst  $38                                         ; $432f: $ff
	dec  c                                           ; $4330: $0d
	sub  b                                           ; $4331: $90
	ld   h, l                                        ; $4332: $65
	ld   e, c                                        ; $4333: $59
	ld   h, l                                        ; $4334: $65
	ld   [hl], h                                     ; $4335: $74
	rst  $38                                         ; $4336: $ff
	rst  $38                                         ; $4337: $ff
	dec  c                                           ; $4338: $0d
	nop                                              ; $4339: $00
	ld   a, [bc]                                     ; $433a: $0a
	ld   b, $a5                                      ; $433b: $06 $a5
	dec  e                                           ; $433d: $1d
	inc  e                                           ; $433e: $1c
	ld   c, $00                                      ; $433f: $0e $00
	nop                                              ; $4341: $00
	ld   bc, $9750                                   ; $4342: $01 $50 $97
	sbc  [hl]                                        ; $4345: $9e
	ld   [$6300], sp                                 ; $4346: $08 $00 $63
	and  c                                           ; $4349: $a1
	sbc  a                                           ; $434a: $9f
	dec  c                                           ; $434b: $0d
	ld   d, d                                        ; $434c: $52
	sub  a                                           ; $434d: $97
	ld   [hl], c                                     ; $434e: $71
	ld   h, l                                        ; $434f: $65
	sub  c                                           ; $4350: $91
	ld   d, d                                        ; $4351: $52
	adc  h                                           ; $4352: $8c
	ld   l, c                                        ; $4353: $69
	rst  $38                                         ; $4354: $ff
	rst  $38                                         ; $4355: $ff
	halt                                             ; $4356: $76
	sbc  [hl]                                        ; $4357: $9e
	ld   [bc], a                                     ; $4358: $02
	sbc  l                                           ; $4359: $9d
	ld   d, d                                        ; $435a: $52
	dec  c                                           ; $435b: $0d
	ld   l, l                                        ; $435c: $6d
	ld   d, d                                        ; $435d: $52
	halt                                             ; $435e: $76
	ld   h, c                                        ; $435f: $61
	sbc  e                                           ; $4360: $9b
	ld   a, b                                        ; $4361: $78
	ld   a, h                                        ; $4362: $7c
	ld   [hl], l                                     ; $4363: $75
	ld   h, a                                        ; $4364: $67
	ld   e, d                                        ; $4365: $5a
	rst  $38                                         ; $4366: $ff
	rst  $38                                         ; $4367: $ff
	dec  c                                           ; $4368: $0d
	nop                                              ; $4369: $00
	ld   a, [bc]                                     ; $436a: $0a
	rrca                                             ; $436b: $0f
	nop                                              ; $436c: $00
	ld   bc, $9d01                                   ; $436d: $01 $01 $9d
	ld   e, c                                        ; $4370: $59
	ld   [hl], c                                     ; $4371: $71
	ld   [hl], h                                     ; $4372: $74
	adc  h                                           ; $4373: $8c
	ld   h, a                                        ; $4374: $67
	sub  [hl]                                        ; $4375: $96
	sbc  a                                           ; $4376: $9f
	dec  c                                           ; $4377: $0d
	rst  $10                                         ; $4378: $d7
	rst  $28                                         ; $4379: $ef
	rst  JumpTable                                         ; $437a: $df
	and  l                                           ; $437b: $a5
	jp   z, $037d                                    ; $437c: $ca $7d $03

	ld   a, c                                        ; $437f: $79
	ld   a, c                                        ; $4380: $79
	ld   [de], a                                     ; $4381: $12
	inc  b                                           ; $4382: $04
	push bc                                          ; $4383: $c5
	ld   h, l                                        ; $4384: $65
	ld   e, c                                        ; $4385: $59
	dec  c                                           ; $4386: $0d
	ld   b, $1a                                      ; $4387: $06 $1a
	sbc  d                                           ; $4389: $9a
	ld   a, b                                        ; $438a: $78
	ld   d, d                                        ; $438b: $52
	and  c                                           ; $438c: $a1
	ld   [hl], l                                     ; $438d: $75
	ld   h, l                                        ; $438e: $65
	sub  l                                           ; $438f: $95
	sbc  a                                           ; $4390: $9f
	dec  c                                           ; $4391: $0d
	nop                                              ; $4392: $00
	ld   a, [bc]                                     ; $4393: $0a
	inc  e                                           ; $4394: $1c
	ld   c, $01                                      ; $4395: $0e $01
	ld   bc, $7d01                                   ; $4397: $01 $01 $7d
	ld   d, d                                        ; $439a: $52
	sbc  [hl]                                        ; $439b: $9e
	ld   l, e                                        ; $439c: $6b
	ld   d, h                                        ; $439d: $54
	ld   a, b                                        ; $439e: $78
	and  c                                           ; $439f: $a1
	ld   [hl], l                                     ; $43a0: $75
	ld   h, a                                        ; $43a1: $67
	sbc  a                                           ; $43a2: $9f
	dec  c                                           ; $43a3: $0d
	ld   h, d                                        ; $43a4: $62
	adc  a                                           ; $43a5: $8f
	and  c                                           ; $43a6: $a1
	ld   a, b                                        ; $43a7: $78
	ld   h, e                                        ; $43a8: $63
	ld   d, d                                        ; $43a9: $52
	sbc  a                                           ; $43aa: $9f
	dec  c                                           ; $43ab: $0d
	nop                                              ; $43ac: $00
	ld   a, [bc]                                     ; $43ad: $0a
	rrca                                             ; $43ae: $0f
	nop                                              ; $43af: $00
	ld   bc, $7601                                   ; $43b0: $01 $01 $76
	ld   h, c                                        ; $43b3: $61
	sbc  e                                           ; $43b4: $9b
	ld   [hl], l                                     ; $43b5: $75
	sbc  [hl]                                        ; $43b6: $9e
	ld   b, $5b                                      ; $43b7: $06 $5b
	ld   h, e                                        ; $43b9: $63
	and  c                                           ; $43ba: $a1
	sbc  a                                           ; $43bb: $9f
	dec  c                                           ; $43bc: $0d
	ld   l, a                                        ; $43bd: $6f
	sub  l                                           ; $43be: $95
	ld   [hl], c                                     ; $43bf: $71
	halt                                             ; $43c0: $76
	ld   [bc], a                                     ; $43c1: $02
	jp   nz, Jump_042_6d5b                           ; $43c2: $c2 $5b $6d

	ld   d, d                                        ; $43c5: $52
	ld   h, c                                        ; $43c6: $61
	halt                                             ; $43c7: $76
	ld   e, d                                        ; $43c8: $5a
	dec  c                                           ; $43c9: $0d
	ld   d, b                                        ; $43ca: $50
	sbc  c                                           ; $43cb: $99
	and  c                                           ; $43cc: $a1
	ld   [hl], l                                     ; $43cd: $75
	ld   h, a                                        ; $43ce: $67
	ld   e, a                                        ; $43cf: $5f
	ld   [hl], a                                     ; $43d0: $77
	rst  $38                                         ; $43d1: $ff
	rst  $38                                         ; $43d2: $ff
	dec  c                                           ; $43d3: $0d
	nop                                              ; $43d4: $00
	ld   a, [bc]                                     ; $43d5: $0a
	ld   bc, $5b06                                   ; $43d6: $01 $06 $5b
	ld   h, e                                        ; $43d9: $63
	and  c                                           ; $43da: $a1
	ld   a, h                                        ; $43db: $7c
	ld   [bc], a                                     ; $43dc: $02
	sbc  d                                           ; $43dd: $9a
	ld   e, e                                        ; $43de: $5b
	ld   a, b                                        ; $43df: $78
	ret  nz                                          ; $43e0: $c0

	and  l                                           ; $43e1: $a5
	ret  c                                           ; $43e2: $d8

	ld   [hl], c                                     ; $43e3: $71
	ld   [hl], h                                     ; $43e4: $74
	dec  c                                           ; $43e5: $0d
	ld   [hl], a                                     ; $43e6: $77
	and  c                                           ; $43e7: $a1
	ld   a, b                                        ; $43e8: $78
	inc  bc                                          ; $43e9: $03
	add  d                                           ; $43ea: $82
	ld   [hl], l                                     ; $43eb: $75
	ld   h, a                                        ; $43ec: $67
	ld   e, c                                        ; $43ed: $59
	ld   sp, hl                                      ; $43ee: $f9
	dec  c                                           ; $43ef: $0d
	nop                                              ; $43f0: $00
	ld   a, [bc]                                     ; $43f1: $0a
	inc  e                                           ; $43f2: $1c
	ld   c, $00                                      ; $43f3: $0e $00
	nop                                              ; $43f5: $00
	ld   de, $0100                                   ; $43f6: $11 $00 $01
	ld   d, b                                        ; $43f9: $50
	ld   l, l                                        ; $43fa: $6d
	ld   h, l                                        ; $43fb: $65
	ld   a, h                                        ; $43fc: $7c
	ld   [bc], a                                     ; $43fd: $02
	sbc  d                                           ; $43fe: $9a
	ld   e, e                                        ; $43ff: $5b
	ld   a, b                                        ; $4400: $78
	ret  nz                                          ; $4401: $c0

	and  l                                           ; $4402: $a5
	ret  c                                           ; $4403: $d8

	ld   [hl], l                                     ; $4404: $75
	ld   h, a                                        ; $4405: $67
	ld   e, c                                        ; $4406: $59
	ld   sp, hl                                      ; $4407: $f9
	dec  c                                           ; $4408: $0d
	ld   l, e                                        ; $4409: $6b
	ld   d, h                                        ; $440a: $54
	ld   [hl], l                                     ; $440b: $75
	ld   h, a                                        ; $440c: $67
	ld   a, e                                        ; $440d: $7b
	rst  $38                                         ; $440e: $ff
	rst  $38                                         ; $440f: $ff
	rst  $38                                         ; $4410: $ff
	rst  $38                                         ; $4411: $ff
	rst  $38                                         ; $4412: $ff
	rst  $38                                         ; $4413: $ff
	rst  $38                                         ; $4414: $ff
	rst  $38                                         ; $4415: $ff
	dec  c                                           ; $4416: $0d
	rst  $38                                         ; $4417: $ff
	rst  $38                                         ; $4418: $ff
	rst  $38                                         ; $4419: $ff
	rst  $38                                         ; $441a: $ff
	rst  $38                                         ; $441b: $ff
	rst  $38                                         ; $441c: $ff
	rst  $38                                         ; $441d: $ff
	rst  $38                                         ; $441e: $ff
	rst  $38                                         ; $441f: $ff
	rst  $38                                         ; $4420: $ff
	rst  $38                                         ; $4421: $ff
	rst  $38                                         ; $4422: $ff
	rst  $38                                         ; $4423: $ff
	rst  $38                                         ; $4424: $ff
	dec  c                                           ; $4425: $0d
	nop                                              ; $4426: $00
	ld   a, [bc]                                     ; $4427: $0a
	ld   de, $01ff                                   ; $4428: $11 $ff $01
	dec  b                                           ; $442b: $05
	inc  bc                                          ; $442c: $03
	sbc  b                                           ; $442d: $98
	ld   a, c                                        ; $442e: $79
	ld   a, b                                        ; $442f: $78
	sbc  c                                           ; $4430: $99
	ld   e, b                                        ; $4431: $58
	ld   [bc], a                                     ; $4432: $02
	inc  de                                          ; $4433: $13
	ld   h, e                                        ; $4434: $63
	and  c                                           ; $4435: $a1
	rst  $38                                         ; $4436: $ff
	rst  $38                                         ; $4437: $ff
	dec  c                                           ; $4438: $0d
	ld   e, c                                        ; $4439: $59
	ld   a, b                                        ; $443a: $78
	db   $fc                                         ; $443b: $fc
	sbc  a                                           ; $443c: $9f
	dec  c                                           ; $443d: $0d
	nop                                              ; $443e: $00
	ld   a, [bc]                                     ; $443f: $0a
	ld   bc, $546b                                   ; $4440: $01 $6b $54
	ld   [bc], a                                     ; $4443: $02
	sbc  l                                           ; $4444: $9d
	ld   d, h                                        ; $4445: $54
	ld   [$6300], sp                                 ; $4446: $08 $00 $63
	and  c                                           ; $4449: $a1
	ld   a, l                                        ; $444a: $7d
	sbc  [hl]                                        ; $444b: $9e
	dec  c                                           ; $444c: $0d
	ld   [hl], a                                     ; $444d: $77
	and  c                                           ; $444e: $a1
	ld   a, b                                        ; $444f: $78
	inc  bc                                          ; $4450: $03
	add  d                                           ; $4451: $82
	ld   e, d                                        ; $4452: $5a
	ld   [bc], a                                     ; $4453: $02
	sbc  d                                           ; $4454: $9a
	adc  l                                           ; $4455: $8d
	ld   a, b                                        ; $4456: $78
	and  c                                           ; $4457: $a1
	ld   [hl], l                                     ; $4458: $75
	ld   h, a                                        ; $4459: $67
	ld   e, c                                        ; $445a: $59
	ld   sp, hl                                      ; $445b: $f9
	dec  c                                           ; $445c: $0d
	nop                                              ; $445d: $00
	ld   a, [bc]                                     ; $445e: $0a
	add  hl, de                                      ; $445f: $19
	dec  b                                           ; $4460: $05
	inc  bc                                          ; $4461: $03
	inc  b                                           ; $4462: $04
	ld   c, $03                                      ; $4463: $0e $03
	add  d                                           ; $4465: $82
	ld   a, h                                        ; $4466: $7c
	inc  bc                                          ; $4467: $03
	ld   l, [hl]                                     ; $4468: $6e
	ld   [bc], a                                     ; $4469: $02
	db   $fc                                         ; $446a: $fc
	nop                                              ; $446b: $00
	nop                                              ; $446c: $00
	inc  bc                                          ; $446d: $03
	add  [hl]                                        ; $446e: $86
	ld   [bc], a                                     ; $446f: $02
	xor  l                                           ; $4470: $ad
	ld   [hl], c                                     ; $4471: $71
	adc  e                                           ; $4472: $8b
	ld   d, d                                        ; $4473: $52
	inc  bc                                          ; $4474: $03
	add  d                                           ; $4475: $82
	nop                                              ; $4476: $00
	ld   bc, $a903                                   ; $4477: $01 $03 $a9
	ld   [hl], l                                     ; $447a: $75
	sub  b                                           ; $447b: $90
	ld   d, d                                        ; $447c: $52
	ld   d, d                                        ; $447d: $52
	nop                                              ; $447e: $00
	ld   [bc], a                                     ; $447f: $02
	rlca                                             ; $4480: $07
	call z, $0220                                    ; $4481: $cc $20 $02
	inc  bc                                          ; $4484: $03
	ld   bc, $2000                                   ; $4485: $01 $00 $20
	nop                                              ; $4488: $00
	rlca                                             ; $4489: $07
	or   [hl]                                        ; $448a: $b6
	ld   hl, $0302                                   ; $448b: $21 $02 $03
	ld   bc, $2001                                   ; $448e: $01 $01 $20
	nop                                              ; $4491: $00
	rlca                                             ; $4492: $07
	and  h                                           ; $4493: $a4
	ld   [hl+], a                                    ; $4494: $22
	ld   [bc], a                                     ; $4495: $02
	inc  bc                                          ; $4496: $03
	ld   bc, $2002                                   ; $4497: $01 $02 $20
	nop                                              ; $449a: $00
	ld   b, $96                                      ; $449b: $06 $96
	inc  hl                                          ; $449d: $23
	rrca                                             ; $449e: $0f
	nop                                              ; $449f: $00
	ld   bc, $6b01                                   ; $44a0: $01 $01 $6b
	ld   d, h                                        ; $44a3: $54
	ld   [hl], l                                     ; $44a4: $75
	ld   h, a                                        ; $44a5: $67
	ld   a, e                                        ; $44a6: $7b
	rst  $38                                         ; $44a7: $ff
	rst  $38                                         ; $44a8: $ff
	sbc  [hl]                                        ; $44a9: $9e
	inc  b                                           ; $44aa: $04
	ld   l, l                                        ; $44ab: $6d
	ld   a, l                                        ; $44ac: $7d
	dec  c                                           ; $44ad: $0d
	inc  b                                           ; $44ae: $04
	ld   c, $03                                      ; $44af: $0e $03
	add  d                                           ; $44b1: $82
	ld   [hl], c                                     ; $44b2: $71
	adc  e                                           ; $44b3: $8b
	ld   d, d                                        ; $44b4: $52
	inc  bc                                          ; $44b5: $03
	add  d                                           ; $44b6: $82
	ld   e, d                                        ; $44b7: $5a
	ret  nz                                          ; $44b8: $c0

	and  l                                           ; $44b9: $a5
	ret  c                                           ; $44ba: $d8

	ld   [hl], l                                     ; $44bb: $75
	ld   h, a                                        ; $44bc: $67
	ld   a, e                                        ; $44bd: $7b
	sbc  a                                           ; $44be: $9f
	dec  c                                           ; $44bf: $0d
	nop                                              ; $44c0: $00
	ld   a, [bc]                                     ; $44c1: $0a
	inc  e                                           ; $44c2: $1c
	ld   c, $01                                      ; $44c3: $0e $01
	ld   bc, $7601                                   ; $44c5: $01 $01 $76
	ld   d, d                                        ; $44c8: $52
	ld   d, h                                        ; $44c9: $54
	ld   h, c                                        ; $44ca: $61
	halt                                             ; $44cb: $76
	ld   a, l                                        ; $44cc: $7d
	sbc  [hl]                                        ; $44cd: $9e
	dec  c                                           ; $44ce: $0d
	rst  JumpTable                                         ; $44cf: $df
	db   $ec                                         ; $44d0: $ec
	and  e                                           ; $44d1: $a3
	ld   h, e                                        ; $44d2: $63
	and  c                                           ; $44d3: $a1
	halt                                             ; $44d4: $76
	ld   e, c                                        ; $44d5: $59
	sbc  [hl]                                        ; $44d6: $9e
	ld   h, a                                        ; $44d7: $67
	adc  l                                           ; $44d8: $8d
	sbc  d                                           ; $44d9: $9a
	ld   h, e                                        ; $44da: $63
	and  c                                           ; $44db: $a1
	dec  c                                           ; $44dc: $0d
	ld   [hl], l                                     ; $44dd: $75
	ld   h, a                                        ; $44de: $67
	ld   a, e                                        ; $44df: $7b
	sbc  a                                           ; $44e0: $9f
	dec  c                                           ; $44e1: $0d
	nop                                              ; $44e2: $00
	ld   a, [bc]                                     ; $44e3: $0a
	rrca                                             ; $44e4: $0f
	nop                                              ; $44e5: $00
	ld   bc, $7801                                   ; $44e6: $01 $01 $78
	sbc  [hl]                                        ; $44e9: $9e
	ld   a, b                                        ; $44ea: $78
	and  c                                           ; $44eb: $a1
	ld   [hl], l                                     ; $44ec: $75
	ld   h, a                                        ; $44ed: $67
	ld   e, c                                        ; $44ee: $59
	sbc  [hl]                                        ; $44ef: $9e
	ld   l, e                                        ; $44f0: $6b
	sbc  d                                           ; $44f1: $9a
	ld   a, l                                        ; $44f2: $7d
	ld   sp, hl                                      ; $44f3: $f9
	dec  c                                           ; $44f4: $0d
	nop                                              ; $44f5: $00
	ld   a, [bc]                                     ; $44f6: $0a
	rrca                                             ; $44f7: $0f
	ld   c, $01                                      ; $44f8: $0e $01
	ld   bc, $5050                                   ; $44fa: $01 $50 $50
	ld   d, d                                        ; $44fd: $52
	ld   d, h                                        ; $44fe: $54
	sbc  [hl]                                        ; $44ff: $9e
	inc  b                                           ; $4500: $04
	ld   c, $03                                      ; $4501: $0e $03
	add  d                                           ; $4503: $82
	ld   [hl], c                                     ; $4504: $71
	adc  e                                           ; $4505: $8b
	ld   d, d                                        ; $4506: $52
	inc  bc                                          ; $4507: $03
	ld   l, [hl]                                     ; $4508: $6e
	ld   [bc], a                                     ; $4509: $02
	db   $fc                                         ; $450a: $fc
	ld   [hl], c                                     ; $450b: $71
	ld   [hl], h                                     ; $450c: $74
	dec  c                                           ; $450d: $0d
	ld   a, b                                        ; $450e: $78
	and  c                                           ; $450f: $a1
	ld   l, [hl]                                     ; $4510: $6e
	ld   e, c                                        ; $4511: $59
	sbc  [hl]                                        ; $4512: $9e
	ld   l, l                                        ; $4513: $6d
	sub  [hl]                                        ; $4514: $96
	sbc  b                                           ; $4515: $98
	ld   a, c                                        ; $4516: $79
	ld   a, b                                        ; $4517: $78
	sbc  b                                           ; $4518: $98
	ld   l, e                                        ; $4519: $6b
	ld   d, h                                        ; $451a: $54
	dec  c                                           ; $451b: $0d
	ld   [hl], l                                     ; $451c: $75
	ld   h, a                                        ; $451d: $67
	sub  b                                           ; $451e: $90
	ld   a, h                                        ; $451f: $7c
	ld   a, e                                        ; $4520: $7b
	sbc  a                                           ; $4521: $9f
	dec  c                                           ; $4522: $0d
	nop                                              ; $4523: $00
	ld   a, [bc]                                     ; $4524: $0a
	ld   bc, $0008                                   ; $4525: $01 $08 $00
	ld   h, e                                        ; $4528: $63
	and  c                                           ; $4529: $a1
	ld   [hl], c                                     ; $452a: $71
	ld   [hl], h                                     ; $452b: $74
	sbc  [hl]                                        ; $452c: $9e
	dec  c                                           ; $452d: $0d
	ld   [bc], a                                     ; $452e: $02
	ld   b, $02                                      ; $452f: $06 $02
	bit  6, [hl]                                     ; $4531: $cb $76
	dec  b                                           ; $4533: $05
	and  c                                           ; $4534: $a1
	ld   d, [hl]                                     ; $4535: $56
	and  c                                           ; $4536: $a1
	dec  b                                           ; $4537: $05
	ld   d, a                                        ; $4538: $57
	ld   e, c                                        ; $4539: $59
	sub  b                                           ; $453a: $90
	dec  c                                           ; $453b: $0d
	ld   h, l                                        ; $453c: $65
	sbc  d                                           ; $453d: $9a
	adc  h                                           ; $453e: $8c
	ld   l, c                                        ; $453f: $69
	and  c                                           ; $4540: $a1
	ld   a, e                                        ; $4541: $7b
	sbc  a                                           ; $4542: $9f
	dec  c                                           ; $4543: $0d
	nop                                              ; $4544: $00
	ld   a, [bc]                                     ; $4545: $0a
	ld   bc, $9166                                   ; $4546: $01 $66 $91
	sbc  [hl]                                        ; $4549: $9e
	ld   d, b                                        ; $454a: $50
	ld   l, l                                        ; $454b: $6d
	ld   h, l                                        ; $454c: $65
	ld   a, l                                        ; $454d: $7d
	inc  bc                                          ; $454e: $03
	dec  c                                           ; $454f: $0d
	ld   [bc], a                                     ; $4550: $02
	jp   $0d5a                                       ; $4551: $c3 $5a $0d


	ld   d, b                                        ; $4554: $50
	sbc  b                                           ; $4555: $98
	adc  h                                           ; $4556: $8c
	ld   h, a                                        ; $4557: $67
	ld   a, h                                        ; $4558: $7c
	ld   [hl], l                                     ; $4559: $75
	sbc  [hl]                                        ; $455a: $9e
	ld   h, c                                        ; $455b: $61
	sbc  d                                           ; $455c: $9a
	ld   [hl], l                                     ; $455d: $75
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	dec  c                                           ; $4560: $0d
	nop                                              ; $4561: $00
	ld   a, [bc]                                     ; $4562: $0a
	dec  c                                           ; $4563: $0d
	nop                                              ; $4564: $00
	nop                                              ; $4565: $00
	rrca                                             ; $4566: $0f
	nop                                              ; $4567: $00
	ld   bc, $5001                                   ; $4568: $01 $01 $50
	ld   a, h                                        ; $456b: $7c
	rst  $38                                         ; $456c: $ff
	rst  $38                                         ; $456d: $ff
	dec  c                                           ; $456e: $0d
	ld   d, b                                        ; $456f: $50
	ei                                               ; $4570: $fb
	ld   d, b                                        ; $4571: $50
	sbc  [hl]                                        ; $4572: $9e
	ld   [bc], a                                     ; $4573: $02
	ld   a, a                                        ; $4574: $7f
	ld   [hl], c                                     ; $4575: $71
	ld   l, a                                        ; $4576: $6f
	sub  c                                           ; $4577: $91
	ld   [hl], c                                     ; $4578: $71
	ld   l, l                                        ; $4579: $6d
	rst  $38                                         ; $457a: $ff
	rst  $38                                         ; $457b: $ff
	dec  c                                           ; $457c: $0d
	nop                                              ; $457d: $00
	ld   a, [bc]                                     ; $457e: $0a
	dec  b                                           ; $457f: $05
	add  b                                           ; $4580: $80
	and  e                                           ; $4581: $a3
	ld   bc, $0001                                   ; $4582: $01 $01 $00
	add  hl, bc                                      ; $4585: $09
	ld   e, $00                                      ; $4586: $1e $00
	rrca                                             ; $4588: $0f
	nop                                              ; $4589: $00
	ld   bc, $6b01                                   ; $458a: $01 $01 $6b
	ld   d, h                                        ; $458d: $54
	ld   [hl], l                                     ; $458e: $75
	ld   h, a                                        ; $458f: $67
	ld   a, e                                        ; $4590: $7b
	rst  $38                                         ; $4591: $ff
	rst  $38                                         ; $4592: $ff
	sbc  [hl]                                        ; $4593: $9e
	inc  b                                           ; $4594: $04
	ld   l, l                                        ; $4595: $6d
	ld   a, l                                        ; $4596: $7d
	dec  c                                           ; $4597: $0d
	inc  bc                                          ; $4598: $03
	add  [hl]                                        ; $4599: $86
	ld   [bc], a                                     ; $459a: $02
	xor  l                                           ; $459b: $ad
	ld   [hl], c                                     ; $459c: $71
	adc  e                                           ; $459d: $8b
	ld   d, d                                        ; $459e: $52
	inc  bc                                          ; $459f: $03
	add  d                                           ; $45a0: $82
	ld   e, d                                        ; $45a1: $5a
	ret  nz                                          ; $45a2: $c0

	and  l                                           ; $45a3: $a5
	ret  c                                           ; $45a4: $d8

	ld   [hl], l                                     ; $45a5: $75
	ld   h, a                                        ; $45a6: $67
	ld   a, e                                        ; $45a7: $7b
	sbc  a                                           ; $45a8: $9f
	dec  c                                           ; $45a9: $0d
	nop                                              ; $45aa: $00
	ld   a, [bc]                                     ; $45ab: $0a
	inc  e                                           ; $45ac: $1c
	ld   c, $01                                      ; $45ad: $0e $01
	ld   bc, $7601                                   ; $45af: $01 $01 $76
	ld   d, d                                        ; $45b2: $52
	ld   d, h                                        ; $45b3: $54
	ld   h, c                                        ; $45b4: $61
	halt                                             ; $45b5: $76
	ld   a, l                                        ; $45b6: $7d
	dec  c                                           ; $45b7: $0d
	cp   e                                           ; $45b8: $bb
	pop  de                                          ; $45b9: $d1
	db   $ec                                         ; $45ba: $ec
	sbc  [hl]                                        ; $45bb: $9e
	and  e                                           ; $45bc: $a3
	and  l                                           ; $45bd: $a5
	db   $ec                                         ; $45be: $ec
	cp   d                                           ; $45bf: $ba
	ld   l, a                                        ; $45c0: $6f
	sub  c                                           ; $45c1: $91
	and  c                                           ; $45c2: $a1
	dec  c                                           ; $45c3: $0d
	ld   e, d                                        ; $45c4: $5a
	ld   [bc], a                                     ; $45c5: $02
	sbc  d                                           ; $45c6: $9a
	ld   e, e                                        ; $45c7: $5b
	ld   a, b                                        ; $45c8: $78
	and  c                                           ; $45c9: $a1
	ld   [hl], l                                     ; $45ca: $75
	ld   h, a                                        ; $45cb: $67
	ld   a, e                                        ; $45cc: $7b
	sbc  a                                           ; $45cd: $9f
	dec  c                                           ; $45ce: $0d
	nop                                              ; $45cf: $00
	ld   a, [bc]                                     ; $45d0: $0a
	rrca                                             ; $45d1: $0f
	nop                                              ; $45d2: $00
	ld   bc, $7801                                   ; $45d3: $01 $01 $78
	sbc  [hl]                                        ; $45d6: $9e
	ld   a, b                                        ; $45d7: $78
	and  c                                           ; $45d8: $a1
	ld   [hl], l                                     ; $45d9: $75
	dec  c                                           ; $45da: $0d
	ld   l, e                                        ; $45db: $6b
	ld   d, h                                        ; $45dc: $54
	ld   a, b                                        ; $45dd: $78
	sbc  c                                           ; $45de: $99
	and  c                                           ; $45df: $a1
	ld   [hl], l                                     ; $45e0: $75
	ld   h, a                                        ; $45e1: $67
	ld   e, c                                        ; $45e2: $59
	ld   sp, hl                                      ; $45e3: $f9
	dec  c                                           ; $45e4: $0d
	nop                                              ; $45e5: $00
	ld   a, [bc]                                     ; $45e6: $0a
	rrca                                             ; $45e7: $0f
	ld   c, $01                                      ; $45e8: $0e $01
	ld   bc, $9075                                   ; $45ea: $01 $75 $90
	sbc  [hl]                                        ; $45ed: $9e
	inc  bc                                          ; $45ee: $03
	xor  a                                           ; $45ef: $af
	ld   h, e                                        ; $45f0: $63
	ld   d, d                                        ; $45f1: $52
	inc  bc                                          ; $45f2: $03
	add  [hl]                                        ; $45f3: $86
	ld   e, d                                        ; $45f4: $5a
	ld   [bc], a                                     ; $45f5: $02
	sbc  d                                           ; $45f6: $9a
	ld   e, e                                        ; $45f7: $5b
	ld   a, b                                        ; $45f8: $78
	and  c                                           ; $45f9: $a1
	ld   [hl], h                                     ; $45fa: $74
	sbc  [hl]                                        ; $45fb: $9e
	dec  c                                           ; $45fc: $0d
	ld   [$6300], sp                                 ; $45fd: $08 $00 $63
	and  c                                           ; $4600: $a1
	ld   [hl], h                                     ; $4601: $74
	sbc  [hl]                                        ; $4602: $9e
	dec  c                                           ; $4603: $0d
	ld   [bc], a                                     ; $4604: $02
	ld   b, $02                                      ; $4605: $06 $02
	bit  6, [hl]                                     ; $4607: $cb $76
	ld   e, b                                        ; $4609: $58
	ld   [bc], a                                     ; $460a: $02
	inc  de                                          ; $460b: $13
	ld   h, e                                        ; $460c: $63
	and  c                                           ; $460d: $a1
	ld   [hl], l                                     ; $460e: $75
	ld   h, a                                        ; $460f: $67
	ld   a, e                                        ; $4610: $7b
	sbc  a                                           ; $4611: $9f
	dec  c                                           ; $4612: $0d
	nop                                              ; $4613: $00
	ld   a, [bc]                                     ; $4614: $0a
	ld   bc, $6590                                   ; $4615: $01 $90 $65
	ld   e, c                                        ; $4618: $59
	ld   h, l                                        ; $4619: $65
	ld   [hl], h                                     ; $461a: $74
	dec  b                                           ; $461b: $05
	inc  bc                                          ; $461c: $03
	sbc  b                                           ; $461d: $98
	ld   a, c                                        ; $461e: $79
	ld   h, e                                        ; $461f: $63
	sbc  d                                           ; $4620: $9a
	sbc  c                                           ; $4621: $99
	ld   a, h                                        ; $4622: $7c
	ld   e, d                                        ; $4623: $5a
	dec  c                                           ; $4624: $0d
	ld   [bc], a                                     ; $4625: $02
	sbc  d                                           ; $4626: $9a
	ld   e, e                                        ; $4627: $5b
	ld   a, b                                        ; $4628: $78
	ld   a, h                                        ; $4629: $7c
	ld   e, c                                        ; $462a: $59
	sub  b                                           ; $462b: $90
	ld   h, l                                        ; $462c: $65
	sbc  d                                           ; $462d: $9a
	adc  h                                           ; $462e: $8c
	ld   l, c                                        ; $462f: $69
	and  c                                           ; $4630: $a1
	ld   a, e                                        ; $4631: $7b
	sbc  a                                           ; $4632: $9f
	dec  c                                           ; $4633: $0d
	nop                                              ; $4634: $00
	ld   a, [bc]                                     ; $4635: $0a
	ld   bc, $9166                                   ; $4636: $01 $66 $91
	sbc  [hl]                                        ; $4639: $9e
	ld   d, b                                        ; $463a: $50
	ld   l, l                                        ; $463b: $6d
	ld   h, l                                        ; $463c: $65
	ld   a, l                                        ; $463d: $7d
	inc  bc                                          ; $463e: $03
	dec  c                                           ; $463f: $0d
	ld   [bc], a                                     ; $4640: $02
	jp   $0d5a                                       ; $4641: $c3 $5a $0d


	ld   d, b                                        ; $4644: $50
	sbc  b                                           ; $4645: $98
	adc  h                                           ; $4646: $8c
	ld   h, a                                        ; $4647: $67
	ld   a, h                                        ; $4648: $7c
	ld   [hl], l                                     ; $4649: $75
	sbc  [hl]                                        ; $464a: $9e
	ld   h, c                                        ; $464b: $61
	sbc  d                                           ; $464c: $9a
	ld   [hl], l                                     ; $464d: $75
	rst  $38                                         ; $464e: $ff
	rst  $38                                         ; $464f: $ff
	dec  c                                           ; $4650: $0d
	nop                                              ; $4651: $00
	ld   a, [bc]                                     ; $4652: $0a
	dec  c                                           ; $4653: $0d
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	rrca                                             ; $4656: $0f
	nop                                              ; $4657: $00
	ld   bc, $5001                                   ; $4658: $01 $01 $50
	sbc  [hl]                                        ; $465b: $9e
	ld   a, l                                        ; $465c: $7d
	ld   d, d                                        ; $465d: $52
	rst  $38                                         ; $465e: $ff
	rst  $38                                         ; $465f: $ff
	dec  c                                           ; $4660: $0d
	ld   [bc], a                                     ; $4661: $02
	ld   a, a                                        ; $4662: $7f
	ld   [hl], c                                     ; $4663: $71
	ld   l, a                                        ; $4664: $6f
	sub  c                                           ; $4665: $91
	ld   [hl], c                                     ; $4666: $71
	ld   l, l                                        ; $4667: $6d
	rst  $38                                         ; $4668: $ff
	rst  $38                                         ; $4669: $ff
	dec  c                                           ; $466a: $0d
	nop                                              ; $466b: $00
	ld   a, [bc]                                     ; $466c: $0a
	dec  b                                           ; $466d: $05
	add  b                                           ; $466e: $80
	and  e                                           ; $466f: $a3
	ld   bc, $0001                                   ; $4670: $01 $01 $00
	add  hl, bc                                      ; $4673: $09
	ld   e, $00                                      ; $4674: $1e $00
	rrca                                             ; $4676: $0f
	nop                                              ; $4677: $00
	ld   bc, $0301                                   ; $4678: $01 $01 $03
	xor  c                                           ; $467b: $a9
	ld   [hl], l                                     ; $467c: $75
	sub  b                                           ; $467d: $90
	ld   d, d                                        ; $467e: $52
	ld   d, d                                        ; $467f: $52
	ld   [hl], l                                     ; $4680: $75
	ld   h, a                                        ; $4681: $67
	sub  [hl]                                        ; $4682: $96
	sbc  [hl]                                        ; $4683: $9e
	inc  b                                           ; $4684: $04
	ld   l, l                                        ; $4685: $6d
	ld   a, l                                        ; $4686: $7d
	sbc  a                                           ; $4687: $9f
	dec  c                                           ; $4688: $0d
	nop                                              ; $4689: $00
	ld   a, [bc]                                     ; $468a: $0a
	inc  e                                           ; $468b: $1c
	ld   c, $01                                      ; $468c: $0e $01
	ld   bc, $7601                                   ; $468e: $01 $01 $76
	ld   d, d                                        ; $4691: $52
	ld   d, h                                        ; $4692: $54
	ld   h, c                                        ; $4693: $61
	halt                                             ; $4694: $76
	ld   a, l                                        ; $4695: $7d
	sbc  [hl]                                        ; $4696: $9e
	dec  c                                           ; $4697: $0d
	inc  b                                           ; $4698: $04
	ld   c, $03                                      ; $4699: $0e $03
	sub  b                                           ; $469b: $90
	ld   h, e                                        ; $469c: $63
	and  c                                           ; $469d: $a1
	sub  d                                           ; $469e: $92
	sbc  [hl]                                        ; $469f: $9e
	inc  b                                           ; $46a0: $04
	rst  $10                                         ; $46a1: $d7
	inc  b                                           ; $46a2: $04
	ld   hl, $8503                                   ; $46a3: $21 $03 $85
	inc  b                                           ; $46a6: $04
	xor  e                                           ; $46a7: $ab
	inc  bc                                          ; $46a8: $03
	add  d                                           ; $46a9: $82
	ld   [hl], l                                     ; $46aa: $75
	sub  b                                           ; $46ab: $90
	ld   sp, hl                                      ; $46ac: $f9
	dec  c                                           ; $46ad: $0d
	nop                                              ; $46ae: $00
	ld   a, [bc]                                     ; $46af: $0a
	rrca                                             ; $46b0: $0f
	nop                                              ; $46b1: $00
	ld   bc, $6b01                                   ; $46b2: $01 $01 $6b
	sbc  [hl]                                        ; $46b5: $9e
	ld   l, e                                        ; $46b6: $6b
	sbc  d                                           ; $46b7: $9a
	ld   a, l                                        ; $46b8: $7d
	sbc  [hl]                                        ; $46b9: $9e
	ld   e, c                                        ; $46ba: $59
	and  c                                           ; $46bb: $a1
	add  a                                           ; $46bc: $87
	and  c                                           ; $46bd: $a1
	ld   h, l                                        ; $46be: $65
	ld   [hl], h                                     ; $46bf: $74
	dec  c                                           ; $46c0: $0d
	ld   e, l                                        ; $46c1: $5d
	ld   l, [hl]                                     ; $46c2: $6e
	ld   h, e                                        ; $46c3: $63
	ld   d, d                                        ; $46c4: $52
	sbc  a                                           ; $46c5: $9f
	dec  c                                           ; $46c6: $0d
	nop                                              ; $46c7: $00
	ld   a, [bc]                                     ; $46c8: $0a
	rrca                                             ; $46c9: $0f
	ld   c, $01                                      ; $46ca: $0e $01
	ld   bc, $599d                                   ; $46cc: $01 $9d $59
	ld   [hl], c                                     ; $46cf: $71
	ld   [hl], h                                     ; $46d0: $74
	adc  h                                           ; $46d1: $8c
	ld   h, a                                        ; $46d2: $67
	ld   [hl], c                                     ; $46d3: $71
	ld   [hl], h                                     ; $46d4: $74
	sbc  a                                           ; $46d5: $9f
	dec  c                                           ; $46d6: $0d
	ld   h, [hl]                                     ; $46d7: $66
	sub  l                                           ; $46d8: $95
	ld   d, h                                        ; $46d9: $54
	ld   l, [hl]                                     ; $46da: $6e
	and  c                                           ; $46db: $a1
	ld   [hl], l                                     ; $46dc: $75
	ld   h, a                                        ; $46dd: $67
	sub  [hl]                                        ; $46de: $96
	sbc  a                                           ; $46df: $9f
	dec  c                                           ; $46e0: $0d
	nop                                              ; $46e1: $00
	ld   a, [bc]                                     ; $46e2: $0a
	ld   bc, $7c61                                   ; $46e3: $01 $61 $7c
	inc  b                                           ; $46e6: $04
	ld   [$9202], sp                                 ; $46e7: $08 $02 $92
	ld   a, c                                        ; $46ea: $79
	ld   a, l                                        ; $46eb: $7d
	sbc  [hl]                                        ; $46ec: $9e
	cp   d                                           ; $46ed: $ba
	rst  ToBoot                                         ; $46ee: $c7
	xor  [hl]                                        ; $46ef: $ae
	ld   a, b                                        ; $46f0: $78
	inc  bc                                          ; $46f1: $03
	ld   l, [hl]                                     ; $46f2: $6e
	ld   [bc], a                                     ; $46f3: $02
	db   $fc                                         ; $46f4: $fc
	ld   e, d                                        ; $46f5: $5a
	dec  c                                           ; $46f6: $0d
	ld   l, l                                        ; $46f7: $6d
	ld   e, l                                        ; $46f8: $5d
	ld   h, e                                        ; $46f9: $63
	and  c                                           ; $46fa: $a1
	ld   d, d                                        ; $46fb: $52
	adc  h                                           ; $46fc: $8c
	ld   h, a                                        ; $46fd: $67
	ld   e, c                                        ; $46fe: $59
	sub  a                                           ; $46ff: $97
	sbc  [hl]                                        ; $4700: $9e
	dec  c                                           ; $4701: $0d
	ld   [bc], a                                     ; $4702: $02
	add  e                                           ; $4703: $83
	adc  a                                           ; $4704: $8f
	sub  a                                           ; $4705: $97
	sbc  d                                           ; $4706: $9a
	ld   a, b                                        ; $4707: $78
	ld   d, d                                        ; $4708: $52
	ld   [hl], l                                     ; $4709: $75
	ld   h, a                                        ; $470a: $67
	sub  [hl]                                        ; $470b: $96
	ld   a, e                                        ; $470c: $7b
	sbc  a                                           ; $470d: $9f
	dec  c                                           ; $470e: $0d
	nop                                              ; $470f: $00
	ld   a, [bc]                                     ; $4710: $0a
	ld   bc, $9166                                   ; $4711: $01 $66 $91
	sbc  [hl]                                        ; $4714: $9e
	ld   d, b                                        ; $4715: $50
	ld   l, l                                        ; $4716: $6d
	ld   h, l                                        ; $4717: $65
	ld   a, l                                        ; $4718: $7d
	inc  bc                                          ; $4719: $03
	dec  c                                           ; $471a: $0d
	ld   [bc], a                                     ; $471b: $02
	jp   $0d5a                                       ; $471c: $c3 $5a $0d


	ld   d, b                                        ; $471f: $50
	sbc  b                                           ; $4720: $98
	adc  h                                           ; $4721: $8c
	ld   h, a                                        ; $4722: $67
	ld   a, h                                        ; $4723: $7c
	ld   [hl], l                                     ; $4724: $75
	sbc  [hl]                                        ; $4725: $9e
	ld   h, c                                        ; $4726: $61
	sbc  d                                           ; $4727: $9a
	ld   [hl], l                                     ; $4728: $75
	rst  $38                                         ; $4729: $ff
	rst  $38                                         ; $472a: $ff
	dec  c                                           ; $472b: $0d
	nop                                              ; $472c: $00
	ld   a, [bc]                                     ; $472d: $0a
	dec  c                                           ; $472e: $0d
	nop                                              ; $472f: $00
	nop                                              ; $4730: $00
	rrca                                             ; $4731: $0f
	nop                                              ; $4732: $00
	ld   bc, $5601                                   ; $4733: $01 $01 $56
	sbc  [hl]                                        ; $4736: $9e
	ld   d, b                                        ; $4737: $50
	sbc  [hl]                                        ; $4738: $9e
	ld   d, b                                        ; $4739: $50
	ld   a, h                                        ; $473a: $7c
	db   $fc                                         ; $473b: $fc
	sbc  [hl]                                        ; $473c: $9e
	ld   l, e                                        ; $473d: $6b
	ld   d, h                                        ; $473e: $54
	ld   d, d                                        ; $473f: $52
	ld   d, h                                        ; $4740: $54
	sbc  l                                           ; $4741: $9d
	ld   e, a                                        ; $4742: $5f
	dec  c                                           ; $4743: $0d
	ld   h, [hl]                                     ; $4744: $66
	sub  c                                           ; $4745: $91
	rst  $38                                         ; $4746: $ff
	rst  $38                                         ; $4747: $ff
	rst  $38                                         ; $4748: $ff
	rst  $38                                         ; $4749: $ff
	rst  $38                                         ; $474a: $ff
	rst  $38                                         ; $474b: $ff
	rst  $38                                         ; $474c: $ff
	rst  $38                                         ; $474d: $ff
	dec  c                                           ; $474e: $0d
	ld   d, b                                        ; $474f: $50
	ei                                               ; $4750: $fb
	ld   d, b                                        ; $4751: $50
	sbc  [hl]                                        ; $4752: $9e
	ld   [bc], a                                     ; $4753: $02
	ld   a, a                                        ; $4754: $7f
	ld   [hl], c                                     ; $4755: $71
	ld   l, a                                        ; $4756: $6f
	sub  c                                           ; $4757: $91
	ld   [hl], c                                     ; $4758: $71
	ld   l, l                                        ; $4759: $6d
	rst  $38                                         ; $475a: $ff
	rst  $38                                         ; $475b: $ff
	dec  c                                           ; $475c: $0d
	nop                                              ; $475d: $00
	ld   a, [bc]                                     ; $475e: $0a
	dec  b                                           ; $475f: $05
	add  b                                           ; $4760: $80
	and  e                                           ; $4761: $a3
	ld   bc, $0001                                   ; $4762: $01 $01 $00
	add  hl, bc                                      ; $4765: $09
	ld   e, $00                                      ; $4766: $1e $00
	rrca                                             ; $4768: $0f
	ld   c, $00                                      ; $4769: $0e $00
	ld   bc, $5477                                   ; $476b: $01 $77 $54
	ld   h, l                                        ; $476e: $65
	ld   l, l                                        ; $476f: $6d
	and  c                                           ; $4770: $a1
	ld   [hl], l                                     ; $4771: $75
	ld   h, a                                        ; $4772: $67
	ld   e, c                                        ; $4773: $59
	ld   sp, hl                                      ; $4774: $f9
	dec  c                                           ; $4775: $0d
	ld   l, e                                        ; $4776: $6b
	and  c                                           ; $4777: $a1
	ld   a, b                                        ; $4778: $78
	ld   a, c                                        ; $4779: $79
	inc  bc                                          ; $477a: $03
	xor  l                                           ; $477b: $ad
	ld   [bc], a                                     ; $477c: $02
	cp   h                                           ; $477d: $bc
	ld   a, c                                        ; $477e: $79
	ld   [bc], a                                     ; $477f: $02
	ld   h, l                                        ; $4780: $65
	ld   d, [hl]                                     ; $4781: $56
	ld   [hl], h                                     ; $4782: $74
	sbc  a                                           ; $4783: $9f
	dec  c                                           ; $4784: $0d
	nop                                              ; $4785: $00
	ld   a, [bc]                                     ; $4786: $0a
	inc  e                                           ; $4787: $1c
	ld   c, $03                                      ; $4788: $0e $03
	inc  bc                                          ; $478a: $03
	ld   bc, $6d50                                   ; $478b: $01 $50 $6d
	ld   h, l                                        ; $478e: $65
	sbc  [hl]                                        ; $478f: $9e
	inc  b                                           ; $4790: $04
	adc  h                                           ; $4791: $8c
	ld   a, b                                        ; $4792: $78
	ld   h, c                                        ; $4793: $61
	halt                                             ; $4794: $76
	and  b                                           ; $4795: $a0
	dec  c                                           ; $4796: $0d
	ld   [bc], a                                     ; $4797: $02
	jp   nz, Jump_042_6f52                           ; $4798: $c2 $52 $6f

	sub  c                                           ; $479b: $91
	ld   d, d                                        ; $479c: $52
	adc  h                                           ; $479d: $8c
	ld   h, l                                        ; $479e: $65
	ld   l, l                                        ; $479f: $6d
	ld   a, e                                        ; $47a0: $7b
	sbc  a                                           ; $47a1: $9f
	dec  c                                           ; $47a2: $0d
	ld   h, d                                        ; $47a3: $62
	adc  a                                           ; $47a4: $8f
	and  c                                           ; $47a5: $a1
	ld   a, b                                        ; $47a6: $78
	ld   h, e                                        ; $47a7: $63
	ld   d, d                                        ; $47a8: $52
	sbc  a                                           ; $47a9: $9f
	dec  c                                           ; $47aa: $0d
	nop                                              ; $47ab: $00
	ld   a, [bc]                                     ; $47ac: $0a
	ld   bc, $9166                                   ; $47ad: $01 $66 $91
	sbc  [hl]                                        ; $47b0: $9e
	ld   d, b                                        ; $47b1: $50
	ld   l, l                                        ; $47b2: $6d
	ld   h, l                                        ; $47b3: $65
	ld   a, l                                        ; $47b4: $7d
	inc  bc                                          ; $47b5: $03
	dec  c                                           ; $47b6: $0d
	ld   [bc], a                                     ; $47b7: $02
	jp   $0d5a                                       ; $47b8: $c3 $5a $0d


	ld   d, b                                        ; $47bb: $50
	sbc  b                                           ; $47bc: $98
	adc  h                                           ; $47bd: $8c
	ld   h, a                                        ; $47be: $67
	ld   a, h                                        ; $47bf: $7c
	ld   [hl], l                                     ; $47c0: $75
	sbc  [hl]                                        ; $47c1: $9e
	ld   h, c                                        ; $47c2: $61
	sbc  d                                           ; $47c3: $9a
	ld   [hl], l                                     ; $47c4: $75
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	dec  c                                           ; $47c7: $0d
	nop                                              ; $47c8: $00
	ld   a, [bc]                                     ; $47c9: $0a
	dec  b                                           ; $47ca: $05
	add  b                                           ; $47cb: $80
	and  e                                           ; $47cc: $a3
	ld   bc, $0001                                   ; $47cd: $01 $01 $00
	dec  c                                           ; $47d0: $0d
	nop                                              ; $47d1: $00
	nop                                              ; $47d2: $00
	rrca                                             ; $47d3: $0f
	nop                                              ; $47d4: $00
	ld   bc, $1e09                                   ; $47d5: $01 $09 $1e
	nop                                              ; $47d8: $00
	nop                                              ; $47d9: $00
	ld   c, $01                                      ; $47da: $0e $01
	rrca                                             ; $47dc: $0f
	nop                                              ; $47dd: $00
	ld   bc, $0502                                   ; $47de: $01 $02 $05
	ld   b, b                                        ; $47e1: $40
	ldh  [$03], a                                    ; $47e2: $e0 $03
	ldh  [rSB], a                                    ; $47e4: $e0 $01
	ld   bc, $0028                                   ; $47e6: $01 $28 $00
	rlca                                             ; $47e9: $07
	ld   b, d                                        ; $47ea: $42
	nop                                              ; $47eb: $00
	inc  bc                                          ; $47ec: $03
	ldh  [rSB], a                                    ; $47ed: $e0 $01
	ld   [bc], a                                     ; $47ef: $02
	inc  h                                           ; $47f0: $24
	nop                                              ; $47f1: $00
	ld   bc, $546b                                   ; $47f2: $01 $6b $54
	ld   l, [hl]                                     ; $47f5: $6e
	sbc  [hl]                                        ; $47f6: $9e
	ld   h, e                                        ; $47f7: $63
	ld   e, l                                        ; $47f8: $5d
	sub  a                                           ; $47f9: $97
	ld   h, e                                        ; $47fa: $63
	and  c                                           ; $47fb: $a1
	ld   e, c                                        ; $47fc: $59
	sub  a                                           ; $47fd: $97
	dec  c                                           ; $47fe: $0d
	ld   d, b                                        ; $47ff: $50
	ld   l, b                                        ; $4800: $68
	ld   e, c                                        ; $4801: $59
	ld   [hl], c                                     ; $4802: $71
	ld   l, l                                        ; $4803: $6d
	or   [hl]                                        ; $4804: $b6
	db   $dd                                         ; $4805: $dd
	rst  ToBoot                                         ; $4806: $c7
	push af                                          ; $4807: $f5
	ld   a, h                                        ; $4808: $7c
	inc  bc                                          ; $4809: $03
	add  hl, de                                      ; $480a: $19
	dec  b                                           ; $480b: $05
	jr   nz, @-$5e                                   ; $480c: $20 $a0

	dec  c                                           ; $480e: $0d
	ld   h, l                                        ; $480f: $65
	ld   a, b                                        ; $4810: $78
	ld   e, l                                        ; $4811: $5d
	ld   l, a                                        ; $4812: $6f
	sub  c                                           ; $4813: $91
	rst  $38                                         ; $4814: $ff
	rst  $38                                         ; $4815: $ff
	dec  c                                           ; $4816: $0d
	nop                                              ; $4817: $00
	ld   a, [bc]                                     ; $4818: $0a
	ld   b, $58                                      ; $4819: $06 $58
	nop                                              ; $481b: $00
	ld   bc, $ddb6                                   ; $481c: $01 $b6 $dd
	rst  ToBoot                                         ; $481f: $c7
	push af                                          ; $4820: $f5
	ld   a, h                                        ; $4821: $7c
	inc  bc                                          ; $4822: $03
	add  hl, de                                      ; $4823: $19
	dec  b                                           ; $4824: $05
	jr   nz, jr_042_489c                             ; $4825: $20 $75

	sub  b                                           ; $4827: $90
	dec  c                                           ; $4828: $0d
	ld   h, a                                        ; $4829: $67
	sbc  c                                           ; $482a: $99
	ld   e, c                                        ; $482b: $59
	ld   a, b                                        ; $482c: $78
	rst  $38                                         ; $482d: $ff
	rst  $38                                         ; $482e: $ff
	dec  c                                           ; $482f: $0d
	nop                                              ; $4830: $00
	ld   a, [bc]                                     ; $4831: $0a
	rlca                                             ; $4832: $07
	ld   l, l                                        ; $4833: $6d
	nop                                              ; $4834: $00
	ld   [bc], a                                     ; $4835: $02
	nop                                              ; $4836: $00
	ld   bc, $220a                                   ; $4837: $01 $0a $22
	nop                                              ; $483a: $00
	rlca                                             ; $483b: $07
	ld   a, c                                        ; $483c: $79
	nop                                              ; $483d: $00
	ld   [bc], a                                     ; $483e: $02
	nop                                              ; $483f: $00
	ld   bc, $2211                                   ; $4840: $01 $11 $22
	nop                                              ; $4843: $00
	ld   b, $8e                                      ; $4844: $06 $8e
	nop                                              ; $4846: $00
	rlca                                             ; $4847: $07
	xor  h                                           ; $4848: $ac
	nop                                              ; $4849: $00
	inc  bc                                          ; $484a: $03
	ldh  [rSB], a                                    ; $484b: $e0 $01
	inc  b                                           ; $484d: $04
	ld   [hl+], a                                    ; $484e: $22
	nop                                              ; $484f: $00
	ld   b, $c7                                      ; $4850: $06 $c7
	nop                                              ; $4852: $00
	rlca                                             ; $4853: $07
	xor  h                                           ; $4854: $ac
	nop                                              ; $4855: $00
	inc  bc                                          ; $4856: $03
	ldh  [rSB], a                                    ; $4857: $e0 $01
	inc  b                                           ; $4859: $04
	ld   [hl+], a                                    ; $485a: $22
	nop                                              ; $485b: $00
	rlca                                             ; $485c: $07
	rst  ToBoot                                         ; $485d: $c7
	nop                                              ; $485e: $00
	inc  bc                                          ; $485f: $03
	ldh  [rSB], a                                    ; $4860: $e0 $01
	ld   b, $22                                      ; $4862: $06 $22
	nop                                              ; $4864: $00
	ld   b, $ec                                      ; $4865: $06 $ec
	nop                                              ; $4867: $00
	rlca                                             ; $4868: $07
	xor  h                                           ; $4869: $ac
	nop                                              ; $486a: $00
	inc  bc                                          ; $486b: $03
	ldh  [rSB], a                                    ; $486c: $e0 $01
	inc  b                                           ; $486e: $04
	ld   [hl+], a                                    ; $486f: $22
	nop                                              ; $4870: $00
	rlca                                             ; $4871: $07
	rst  ToBoot                                         ; $4872: $c7
	nop                                              ; $4873: $00
	inc  bc                                          ; $4874: $03
	ldh  [rSB], a                                    ; $4875: $e0 $01
	ld   b, $22                                      ; $4877: $06 $22
	nop                                              ; $4879: $00
	rlca                                             ; $487a: $07
	db   $ec                                         ; $487b: $ec
	nop                                              ; $487c: $00
	inc  bc                                          ; $487d: $03
	ldh  [rSB], a                                    ; $487e: $e0 $01
	ld   [$0022], sp                                 ; $4880: $08 $22 $00
	ld   b, $0d                                      ; $4883: $06 $0d
	ld   bc, $012b                                   ; $4885: $01 $2b $01
	nop                                              ; $4888: $00
	rrca                                             ; $4889: $0f
	nop                                              ; $488a: $00
	ld   bc, $0010                                   ; $488b: $01 $10 $00
	rst  $38                                         ; $488e: $ff
	ld   bc, $7003                                   ; $488f: $01 $03 $70
	ld   e, l                                        ; $4892: $5d
	inc  b                                           ; $4893: $04
	ld   c, $5b                                      ; $4894: $0e $5b
	ld   e, l                                        ; $4896: $5d
	ld   a, b                                        ; $4897: $78
	sbc  d                                           ; $4898: $9a
	sub  [hl]                                        ; $4899: $96
	rst  $38                                         ; $489a: $ff
	rst  $38                                         ; $489b: $ff

jr_042_489c:
	dec  c                                           ; $489c: $0d
	nop                                              ; $489d: $00
	ld   a, [bc]                                     ; $489e: $0a
	inc  b                                           ; $489f: $04
	nop                                              ; $48a0: $00
	dec  hl                                          ; $48a1: $2b
	ld   bc, $0f01                                   ; $48a2: $01 $01 $0f
	nop                                              ; $48a5: $00
	ld   bc, $0010                                   ; $48a6: $01 $10 $00
	rst  $38                                         ; $48a9: $ff
	ld   bc, $a178                                   ; $48aa: $01 $78 $a1
	halt                                             ; $48ad: $76
	ld   a, b                                        ; $48ae: $78
	ld   e, l                                        ; $48af: $5d
	inc  bc                                          ; $48b0: $03
	ld   c, a                                        ; $48b1: $4f
	sub  [hl]                                        ; $48b2: $96
	sbc  b                                           ; $48b3: $98
	dec  c                                           ; $48b4: $0d
	inc  b                                           ; $48b5: $04
	ld   c, $5b                                      ; $48b6: $0e $5b
	ld   e, l                                        ; $48b8: $5d
	ld   a, b                                        ; $48b9: $78
	ld   [hl], c                                     ; $48ba: $71
	ld   l, l                                        ; $48bb: $6d
	ld   [bc], a                                     ; $48bc: $02
	and  c                                           ; $48bd: $a1
	ld   e, d                                        ; $48be: $5a
	rst  $38                                         ; $48bf: $ff
	rst  $38                                         ; $48c0: $ff
	dec  c                                           ; $48c1: $0d
	nop                                              ; $48c2: $00
	ld   a, [bc]                                     ; $48c3: $0a
	inc  b                                           ; $48c4: $04
	nop                                              ; $48c5: $00
	dec  hl                                          ; $48c6: $2b
	ld   bc, $0f02                                   ; $48c7: $01 $02 $0f
	nop                                              ; $48ca: $00
	ld   bc, $0010                                   ; $48cb: $01 $10 $00
	rst  $38                                         ; $48ce: $ff
	ld   bc, $526e                                   ; $48cf: $01 $6e $52
	add  h                                           ; $48d2: $84
	or   [hl]                                        ; $48d3: $b6
	db   $dd                                         ; $48d4: $dd
	rst  ToBoot                                         ; $48d5: $c7
	push af                                          ; $48d6: $f5
	sub  a                                           ; $48d7: $97
	ld   h, l                                        ; $48d8: $65
	ld   e, l                                        ; $48d9: $5d
	dec  c                                           ; $48da: $0d
	ld   a, b                                        ; $48db: $78
	ld   [hl], c                                     ; $48dc: $71
	ld   [hl], h                                     ; $48dd: $74
	ld   e, e                                        ; $48de: $5b
	ld   l, l                                        ; $48df: $6d
	ld   l, h                                        ; $48e0: $6c
	sbc  a                                           ; $48e1: $9f
	dec  c                                           ; $48e2: $0d
	nop                                              ; $48e3: $00
	ld   a, [bc]                                     ; $48e4: $0a
	inc  b                                           ; $48e5: $04
	nop                                              ; $48e6: $00
	dec  hl                                          ; $48e7: $2b
	ld   bc, $0f03                                   ; $48e8: $01 $03 $0f
	nop                                              ; $48eb: $00
	ld   bc, $0110                                   ; $48ec: $01 $10 $01
	rst  $38                                         ; $48ef: $ff
	ld   bc, $7192                                   ; $48f0: $01 $92 $71
	ld   l, l                                        ; $48f3: $6d
	ld   a, [$0dfa]                                  ; $48f4: $fa $fa $0d
	ld   [bc], a                                     ; $48f7: $02
	sbc  b                                           ; $48f8: $98
	ld   e, d                                        ; $48f9: $5a
	inc  bc                                          ; $48fa: $03
	ld   h, a                                        ; $48fb: $67
	ld   d, d                                        ; $48fc: $52
	ld   l, l                                        ; $48fd: $6d
	ld   l, h                                        ; $48fe: $6c
	ld   a, [$0dfa]                                  ; $48ff: $fa $fa $0d
	nop                                              ; $4902: $00
	ld   a, [bc]                                     ; $4903: $0a
	inc  b                                           ; $4904: $04
	ld   bc, $6596                                   ; $4905: $01 $96 $65
	ld   a, [$0dfa]                                  ; $4908: $fa $fa $0d
	ld   h, e                                        ; $490b: $63
	ld   e, l                                        ; $490c: $5d
	sub  a                                           ; $490d: $97
	ld   h, e                                        ; $490e: $63
	and  c                                           ; $490f: $a1
	ld   a, c                                        ; $4910: $79
	ld   [bc], a                                     ; $4911: $02
	sub  l                                           ; $4912: $95
	ld   l, c                                        ; $4913: $69
	ld   a, c                                        ; $4914: $79
	ld   [bc], a                                     ; $4915: $02
	ld   a, a                                        ; $4916: $7f
	ld   h, c                                        ; $4917: $61
	ld   d, h                                        ; $4918: $54
	ld   a, [$0dfa]                                  ; $4919: $fa $fa $0d
	nop                                              ; $491c: $00
	ld   a, [bc]                                     ; $491d: $0a
	inc  hl                                          ; $491e: $23
	ld   b, d                                        ; $491f: $42
	inc  d                                           ; $4920: $14
	ld   b, $01                                      ; $4921: $06 $01
	ld   bc, $5d63                                   ; $4923: $01 $63 $5d
	sub  a                                           ; $4926: $97
	ld   h, e                                        ; $4927: $63
	and  c                                           ; $4928: $a1
	sbc  [hl]                                        ; $4929: $9e
	dec  c                                           ; $492a: $0d
	ld   d, d                                        ; $492b: $52
	sub  a                                           ; $492c: $97
	ld   [hl], c                                     ; $492d: $71
	ld   h, l                                        ; $492e: $65
	sub  c                                           ; $492f: $91
	ld   d, d                                        ; $4930: $52
	adc  h                                           ; $4931: $8c
	ld   h, a                                        ; $4932: $67
	ld   e, c                                        ; $4933: $59
	ld   sp, hl                                      ; $4934: $f9
	dec  c                                           ; $4935: $0d
	nop                                              ; $4936: $00
	ld   a, [bc]                                     ; $4937: $0a
	inc  d                                           ; $4938: $14
	ld   a, [bc]                                     ; $4939: $0a
	ld   bc, $430e                                   ; $493a: $01 $0e $43
	inc  e                                           ; $493d: $1c
	ld   bc, $0000                                   ; $493e: $01 $00 $00
	ld   bc, $9750                                   ; $4941: $01 $50 $97
	sbc  [hl]                                        ; $4944: $9e
	ld   [$6300], sp                                 ; $4945: $08 $00 $63
	and  c                                           ; $4948: $a1
	sbc  a                                           ; $4949: $9f
	dec  c                                           ; $494a: $0d
	ld   [hl], a                                     ; $494b: $77
	ld   d, h                                        ; $494c: $54
	ld   h, l                                        ; $494d: $65
	ld   l, l                                        ; $494e: $6d
	and  c                                           ; $494f: $a1
	ld   [hl], l                                     ; $4950: $75
	ld   h, a                                        ; $4951: $67
	ld   e, c                                        ; $4952: $59
	ld   sp, hl                                      ; $4953: $f9
	dec  c                                           ; $4954: $0d
	ld   l, e                                        ; $4955: $6b
	and  c                                           ; $4956: $a1
	ld   a, b                                        ; $4957: $78
	ld   a, c                                        ; $4958: $79
	ld   d, b                                        ; $4959: $50
	sbc  l                                           ; $495a: $9d
	ld   [hl], h                                     ; $495b: $74
	ld   [hl], h                                     ; $495c: $74
	rst  $38                                         ; $495d: $ff
	rst  $38                                         ; $495e: $ff
	dec  c                                           ; $495f: $0d
	nop                                              ; $4960: $00
	ld   a, [bc]                                     ; $4961: $0a
	rrca                                             ; $4962: $0f
	nop                                              ; $4963: $00
	ld   bc, $5001                                   ; $4964: $01 $01 $50
	ld   a, h                                        ; $4967: $7c
	sbc  [hl]                                        ; $4968: $9e
	ld   h, e                                        ; $4969: $63
	ld   e, l                                        ; $496a: $5d
	sub  a                                           ; $496b: $97
	ld   h, e                                        ; $496c: $63
	and  c                                           ; $496d: $a1
	ld   a, c                                        ; $496e: $79
	inc  bc                                          ; $496f: $03
	jp   hl                                          ; $4970: $e9


	ld   d, d                                        ; $4971: $52
	ld   l, l                                        ; $4972: $6d
	dec  c                                           ; $4973: $0d
	or   [hl]                                        ; $4974: $b6
	db   $dd                                         ; $4975: $dd
	rst  ToBoot                                         ; $4976: $c7
	push af                                          ; $4977: $f5
	ld   a, c                                        ; $4978: $79
	ld   [bc], a                                     ; $4979: $02
	sbc  b                                           ; $497a: $98
	ld   e, d                                        ; $497b: $5a
	inc  bc                                          ; $497c: $03
	ld   h, a                                        ; $497d: $67
	ld   d, d                                        ; $497e: $52
	ld   l, l                                        ; $497f: $6d
	ld   a, h                                        ; $4980: $7c
	ld   [hl], l                                     ; $4981: $75
	dec  c                                           ; $4982: $0d
	ld   e, b                                        ; $4983: $58
	inc  b                                           ; $4984: $04
	dec  hl                                          ; $4985: $2b
	sub  a                                           ; $4986: $97
	ld   l, c                                        ; $4987: $69
	ld   h, l                                        ; $4988: $65
	ld   l, l                                        ; $4989: $6d
	ld   e, l                                        ; $498a: $5d
	ld   [hl], h                                     ; $498b: $74
	rst  $38                                         ; $498c: $ff
	rst  $38                                         ; $498d: $ff
	dec  c                                           ; $498e: $0d
	nop                                              ; $498f: $00
	ld   a, [bc]                                     ; $4990: $0a
	db   $10                                         ; $4991: $10
	ld   bc, $0600                                   ; $4992: $01 $00 $06
	cp   l                                           ; $4995: $bd
	ld   bc, $011c                                   ; $4996: $01 $1c $01
	inc  bc                                          ; $4999: $03
	inc  bc                                          ; $499a: $03
	dec  b                                           ; $499b: $05
	ld   b, b                                        ; $499c: $40
	ldh  [rSB], a                                    ; $499d: $e0 $01
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	ld   bc, $9d54                                   ; $49a1: $01 $54 $9d
	ld   d, b                                        ; $49a4: $50
	ei                                               ; $49a5: $fb
	call c, $c9f5                                    ; $49a6: $dc $f5 $c9
	ld   a, c                                        ; $49a9: $79
	ld   a, [$0dfa]                                  ; $49aa: $fa $fa $0d
	ld   h, a                                        ; $49ad: $67
	ld   h, d                                        ; $49ae: $62
	ld   d, d                                        ; $49af: $52
	ld   [hl], l                                     ; $49b0: $75
	ld   h, a                                        ; $49b1: $67

jr_042_49b2:
	sub  [hl]                                        ; $49b2: $96
	sbc  [hl]                                        ; $49b3: $9e
	dec  c                                           ; $49b4: $0d
	ld   [$6300], sp                                 ; $49b5: $08 $00 $63
	and  c                                           ; $49b8: $a1
	ld   a, [$0dfa]                                  ; $49b9: $fa $fa $0d
	nop                                              ; $49bc: $00
	ld   a, [bc]                                     ; $49bd: $0a
	dec  b                                           ; $49be: $05
	ld   b, b                                        ; $49bf: $40
	ld   c, [hl]                                     ; $49c0: $4e
	ld   bc, $0000                                   ; $49c1: $01 $00 $00
	inc  e                                           ; $49c4: $1c
	ld   bc, $0000                                   ; $49c5: $01 $00 $00
	ld   bc, $9a5b                                   ; $49c8: $01 $5b $9a
	ld   d, d                                        ; $49cb: $52
	ld   a, c                                        ; $49cc: $79
	ld   [bc], a                                     ; $49cd: $02
	sbc  b                                           ; $49ce: $98
	ld   e, d                                        ; $49cf: $5a
	inc  bc                                          ; $49d0: $03
	ld   h, a                                        ; $49d1: $67
	ld   d, d                                        ; $49d2: $52
	ld   [hl], h                                     ; $49d3: $74
	ld   d, d                                        ; $49d4: $52
	sbc  c                                           ; $49d5: $99
	ld   h, [hl]                                     ; $49d6: $66
	sub  c                                           ; $49d7: $91
	dec  c                                           ; $49d8: $0d
	ld   a, b                                        ; $49d9: $78
	ld   d, d                                        ; $49da: $52
	ld   [hl], l                                     ; $49db: $75
	ld   h, a                                        ; $49dc: $67
	ld   e, c                                        ; $49dd: $59
	sbc  a                                           ; $49de: $9f
	dec  c                                           ; $49df: $0d
	ld   e, d                                        ; $49e0: $5a
	and  c                                           ; $49e1: $a1
	ld   a, [hl]                                     ; $49e2: $7e
	sbc  b                                           ; $49e3: $98
	adc  h                                           ; $49e4: $8c
	ld   h, l                                        ; $49e5: $65
	ld   l, l                                        ; $49e6: $6d
	ld   a, e                                        ; $49e7: $7b
	sbc  a                                           ; $49e8: $9f
	dec  c                                           ; $49e9: $0d
	nop                                              ; $49ea: $00
	ld   a, [bc]                                     ; $49eb: $0a
	inc  e                                           ; $49ec: $1c
	ld   bc, $0101                                   ; $49ed: $01 $01 $01
	ld   bc, $6d50                                   ; $49f0: $01 $50 $6d
	ld   h, l                                        ; $49f3: $65
	sbc  [hl]                                        ; $49f4: $9e
	ld   d, h                                        ; $49f5: $54
	sbc  d                                           ; $49f6: $9a
	ld   h, l                                        ; $49f7: $65
	ld   d, d                                        ; $49f8: $52
	ld   [hl], l                                     ; $49f9: $75
	ld   h, a                                        ; $49fa: $67
	sbc  a                                           ; $49fb: $9f
	dec  c                                           ; $49fc: $0d
	nop                                              ; $49fd: $00
	ld   a, [bc]                                     ; $49fe: $0a
	inc  e                                           ; $49ff: $1c
	ld   bc, $0000                                   ; $4a00: $01 $00 $00
	ld   bc, $546b                                   ; $4a03: $01 $6b $54
	ld   l, [hl]                                     ; $4a06: $6e
	sbc  l                                           ; $4a07: $9d
	sbc  [hl]                                        ; $4a08: $9e
	adc  h                                           ; $4a09: $8c
	ld   h, [hl]                                     ; $4a0a: $66
	adc  a                                           ; $4a0b: $8f
	ld   a, c                                        ; $4a0c: $79
	inc  bc                                          ; $4a0d: $03
	add  hl, de                                      ; $4a0e: $19
	dec  b                                           ; $4a0f: $05
	jr   nz, jr_042_49b2                             ; $4a10: $20 $a0

	dec  c                                           ; $4a12: $0d
	ld   h, l                                        ; $4a13: $65
	ld   [hl], h                                     ; $4a14: $74
	ld   e, l                                        ; $4a15: $5d
	sbc  d                                           ; $4a16: $9a
	ld   l, l                                        ; $4a17: $6d
	ld   [$6300], sp                                 ; $4a18: $08 $00 $63
	and  c                                           ; $4a1b: $a1
	ld   a, c                                        ; $4a1c: $79
	dec  c                                           ; $4a1d: $0d
	ld   h, d                                        ; $4a1e: $62
	adc  c                                           ; $4a1f: $89
	ld   d, h                                        ; $4a20: $54
	add  c                                           ; $4a21: $81
	and  b                                           ; $4a22: $a0
	ld   d, b                                        ; $4a23: $50
	ld   h, b                                        ; $4a24: $60
	adc  h                                           ; $4a25: $8c
	ld   h, a                                        ; $4a26: $67
	ld   a, e                                        ; $4a27: $7b
	sbc  a                                           ; $4a28: $9f
	dec  c                                           ; $4a29: $0d
	nop                                              ; $4a2a: $00
	ld   a, [bc]                                     ; $4a2b: $0a
	ld   bc, $6d50                                   ; $4a2c: $01 $50 $6d
	ld   h, l                                        ; $4a2f: $65
	ld   a, h                                        ; $4a30: $7c
	inc  b                                           ; $4a31: $04
	adc  d                                           ; $4a32: $8a
	inc  bc                                          ; $4a33: $03
	ld   e, [hl]                                     ; $4a34: $5e
	ld   [bc], a                                     ; $4a35: $02
	adc  h                                           ; $4a36: $8c
	sbc  [hl]                                        ; $4a37: $9e
	dec  c                                           ; $4a38: $0d
	inc  b                                           ; $4a39: $04
	sub  [hl]                                        ; $4a3a: $96
	inc  bc                                          ; $4a3b: $03
	ld   h, c                                        ; $4a3c: $61
	ld   [bc], a                                     ; $4a3d: $02
	cp   h                                           ; $4a3e: $bc
	dec  b                                           ; $4a3f: $05
	db   $db                                         ; $4a40: $db
	di                                               ; $4a41: $f3
	inc  bc                                          ; $4a42: $03
	adc  a                                           ; $4a43: $8f
	ld   [bc], a                                     ; $4a44: $02
	sbc  b                                           ; $4a45: $98
	inc  b                                           ; $4a46: $04
	sbc  c                                           ; $4a47: $99
	inc  bc                                          ; $4a48: $03
	sub  b                                           ; $4a49: $90
	dec  c                                           ; $4a4a: $0d
	and  b                                           ; $4a4b: $a0
	ld   [bc], a                                     ; $4a4c: $02
	sub  l                                           ; $4a4d: $95
	ld   l, c                                        ; $4a4e: $69
	ld   [hl], h                                     ; $4a4f: $74
	ld   d, b                                        ; $4a50: $50
	ld   h, b                                        ; $4a51: $60
	adc  h                                           ; $4a52: $8c
	ld   h, a                                        ; $4a53: $67
	sbc  a                                           ; $4a54: $9f
	dec  c                                           ; $4a55: $0d
	nop                                              ; $4a56: $00
	ld   a, [bc]                                     ; $4a57: $0a
	ld   bc, $9a6b                                   ; $4a58: $01 $6b $9a
	ld   h, [hl]                                     ; $4a5b: $66
	sub  c                                           ; $4a5c: $91
	sbc  [hl]                                        ; $4a5d: $9e
	ld   l, a                                        ; $4a5e: $6f
	sub  l                                           ; $4a5f: $95
	ld   [hl], c                                     ; $4a60: $71
	halt                                             ; $4a61: $76
	inc  b                                           ; $4a62: $04
	dec  bc                                          ; $4a63: $0b
	inc  b                                           ; $4a64: $04
	rra                                              ; $4a65: $1f
	ld   a, c                                        ; $4a66: $79
	dec  c                                           ; $4a67: $0d
	inc  bc                                          ; $4a68: $03
	add  b                                           ; $4a69: $80
	adc  h                                           ; $4a6a: $8c
	ld   h, l                                        ; $4a6b: $65
	sub  l                                           ; $4a6c: $95
	ld   d, h                                        ; $4a6d: $54
	ld   e, c                                        ; $4a6e: $59
	rst  $38                                         ; $4a6f: $ff
	rst  $38                                         ; $4a70: $ff
	dec  c                                           ; $4a71: $0d
	nop                                              ; $4a72: $00
	ld   a, [bc]                                     ; $4a73: $0a
	dec  c                                           ; $4a74: $0d
	nop                                              ; $4a75: $00
	nop                                              ; $4a76: $00
	rrca                                             ; $4a77: $0f
	nop                                              ; $4a78: $00
	ld   bc, $9d23                                   ; $4a79: $01 $23 $9d
	inc  e                                           ; $4a7c: $1c
	ld   bc, $0000                                   ; $4a7d: $01 $00 $00
	ld   bc, $5252                                   ; $4a80: $01 $52 $52
	ld   [hl], l                                     ; $4a83: $75
	ld   h, a                                        ; $4a84: $67
	ld   e, c                                        ; $4a85: $59
	sbc  [hl]                                        ; $4a86: $9e
	ld   [$6300], sp                                 ; $4a87: $08 $00 $63
	and  c                                           ; $4a8a: $a1
	sbc  a                                           ; $4a8b: $9f
	dec  c                                           ; $4a8c: $0d
	ld   [bc], a                                     ; $4a8d: $02
	jr   nz, jr_042_4a94                             ; $4a8e: $20 $04

	add  hl, hl                                      ; $4a90: $29
	ld   h, l                                        ; $4a91: $65
	ld   e, c                                        ; $4a92: $59
	sub  d                                           ; $4a93: $92

jr_042_4a94:
	sbc  b                                           ; $4a94: $98
	adc  h                                           ; $4a95: $8c
	ld   l, c                                        ; $4a96: $69
	and  c                                           ; $4a97: $a1
	ld   e, c                                        ; $4a98: $59
	sub  a                                           ; $4a99: $97
	dec  c                                           ; $4a9a: $0d
	sub  [hl]                                        ; $4a9b: $96
	ld   e, l                                        ; $4a9c: $5d
	ld   [bc], a                                     ; $4a9d: $02
	sub  l                                           ; $4a9e: $95
	ld   [hl], h                                     ; $4a9f: $74
	ld   d, d                                        ; $4aa0: $52
	ld   [hl], h                                     ; $4aa1: $74
	ld   [bc], a                                     ; $4aa2: $02
	inc  [hl]                                        ; $4aa3: $34
	ld   h, e                                        ; $4aa4: $63
	ld   d, d                                        ; $4aa5: $52
	ld   a, e                                        ; $4aa6: $7b
	sbc  a                                           ; $4aa7: $9f
	dec  c                                           ; $4aa8: $0d
	nop                                              ; $4aa9: $00
	ld   a, [bc]                                     ; $4aaa: $0a
	inc  e                                           ; $4aab: $1c
	ld   bc, $0202                                   ; $4aac: $01 $02 $02
	ld   bc, $9604                                   ; $4aaf: $01 $04 $96
	inc  bc                                          ; $4ab2: $03
	ld   h, c                                        ; $4ab3: $61
	ld   [bc], a                                     ; $4ab4: $02
	cp   h                                           ; $4ab5: $bc
	dec  b                                           ; $4ab6: $05
	db   $db                                         ; $4ab7: $db
	di                                               ; $4ab8: $f3
	inc  bc                                          ; $4ab9: $03
	adc  a                                           ; $4aba: $8f
	ld   [bc], a                                     ; $4abb: $02
	sbc  b                                           ; $4abc: $98
	inc  b                                           ; $4abd: $04
	sbc  c                                           ; $4abe: $99
	inc  bc                                          ; $4abf: $03
	sub  b                                           ; $4ac0: $90
	ld   a, [$0dfa]                                  ; $4ac1: $fa $fa $0d
	nop                                              ; $4ac4: $00
	ld   a, [bc]                                     ; $4ac5: $0a
	dec  c                                           ; $4ac6: $0d
	nop                                              ; $4ac7: $00
	nop                                              ; $4ac8: $00
	cpl                                              ; $4ac9: $2f
	ld   bc, $9d0e                                   ; $4aca: $01 $0e $9d
	inc  e                                           ; $4acd: $1c
	ld   bc, $0000                                   ; $4ace: $01 $00 $00
	ld   bc, $7c61                                   ; $4ad1: $01 $61 $7c
	ld   [bc], a                                     ; $4ad4: $02
	adc  h                                           ; $4ad5: $8c
	ld   a, l                                        ; $4ad6: $7d
	sbc  [hl]                                        ; $4ad7: $9e
	ld   a, b                                        ; $4ad8: $78
	ld   a, c                                        ; $4ad9: $79
	sub  [hl]                                        ; $4ada: $96
	sbc  b                                           ; $4adb: $98
	sub  b                                           ; $4adc: $90
	dec  b                                           ; $4add: $05
	ldh  [$03], a                                    ; $4ade: $e0 $03
	sub  b                                           ; $4ae0: $90
	dec  b                                           ; $4ae1: $05
	ld   a, [bc]                                     ; $4ae2: $0a
	sbc  a                                           ; $4ae3: $9f
	dec  c                                           ; $4ae4: $0d
	dec  b                                           ; $4ae5: $05
	ldh  [$03], a                                    ; $4ae6: $e0 $03
	sub  b                                           ; $4ae8: $90
	ld   a, h                                        ; $4ae9: $7c
	ld   b, $89                                      ; $4aea: $06 $89
	ld   [bc], a                                     ; $4aec: $02
	jr   nz, @+$5c                                   ; $4aed: $20 $5a

	inc  b                                           ; $4aef: $04
	ld   c, $03                                      ; $4af0: $0e $03
	dec  de                                          ; $4af2: $1b
	ld   a, b                                        ; $4af3: $78
	ld   a, h                                        ; $4af4: $7c
	ld   [hl], l                                     ; $4af5: $75
	ld   h, a                                        ; $4af6: $67
	sbc  a                                           ; $4af7: $9f
	dec  c                                           ; $4af8: $0d
	nop                                              ; $4af9: $00
	ld   a, [bc]                                     ; $4afa: $0a
	inc  e                                           ; $4afb: $1c
	ld   bc, $0101                                   ; $4afc: $01 $01 $01
	ld   bc, $0008                                   ; $4aff: $01 $08 $00
	ld   h, e                                        ; $4b02: $63
	and  c                                           ; $4b03: $a1
	sub  b                                           ; $4b04: $90
	sbc  [hl]                                        ; $4b05: $9e
	ld   h, c                                        ; $4b06: $61
	ld   a, h                                        ; $4b07: $7c
	inc  b                                           ; $4b08: $04
	dec  c                                           ; $4b09: $0d
	ld   [bc], a                                     ; $4b0a: $02
	sub  [hl]                                        ; $4b0b: $96
	dec  c                                           ; $4b0c: $0d
	inc  b                                           ; $4b0d: $04
	ld   b, l                                        ; $4b0e: $45
	inc  b                                           ; $4b0f: $04
	ld   a, [bc]                                     ; $4b10: $0a
	ld   a, h                                        ; $4b11: $7c
	ld   [bc], a                                     ; $4b12: $02
	pop  bc                                          ; $4b13: $c1
	ld   [bc], a                                     ; $4b14: $02
	xor  c                                           ; $4b15: $a9
	ld   a, c                                        ; $4b16: $79
	sbc  [hl]                                        ; $4b17: $9e
	inc  bc                                          ; $4b18: $03
	sub  h                                           ; $4b19: $94
	inc  b                                           ; $4b1a: $04
	sbc  [hl]                                        ; $4b1b: $9e
	ld   a, h                                        ; $4b1c: $7c
	dec  b                                           ; $4b1d: $05
	ldh  [$03], a                                    ; $4b1e: $e0 $03
	sub  b                                           ; $4b20: $90
	and  b                                           ; $4b21: $a0
	dec  c                                           ; $4b22: $0d
	inc  bc                                          ; $4b23: $03
	ld   c, d                                        ; $4b24: $4a
	ld   h, l                                        ; $4b25: $65
	ld   e, l                                        ; $4b26: $5d
	ld   e, e                                        ; $4b27: $5b
	ld   l, l                                        ; $4b28: $6d
	ld   d, [hl]                                     ; $4b29: $56
	ld   [hl], h                                     ; $4b2a: $74
	ld   e, l                                        ; $4b2b: $5d
	ld   l, [hl]                                     ; $4b2c: $6e
	ld   h, e                                        ; $4b2d: $63
	ld   d, d                                        ; $4b2e: $52
	ld   a, e                                        ; $4b2f: $7b
	sbc  a                                           ; $4b30: $9f
	dec  c                                           ; $4b31: $0d
	nop                                              ; $4b32: $00
	ld   a, [bc]                                     ; $4b33: $0a
	ld   bc, $7d75                                   ; $4b34: $01 $75 $7d
	sbc  [hl]                                        ; $4b37: $9e
	adc  h                                           ; $4b38: $8c
	ld   l, l                                        ; $4b39: $6d
	ld   [bc], a                                     ; $4b3a: $02
	xor  d                                           ; $4b3b: $aa
	ld   [hl], l                                     ; $4b3c: $75
	rst  $38                                         ; $4b3d: $ff
	rst  $38                                         ; $4b3e: $ff
	dec  c                                           ; $4b3f: $0d
	nop                                              ; $4b40: $00
	ld   a, [bc]                                     ; $4b41: $0a
	dec  c                                           ; $4b42: $0d
	nop                                              ; $4b43: $00
	nop                                              ; $4b44: $00
	rrca                                             ; $4b45: $0f
	nop                                              ; $4b46: $00
	ld   bc, $ba01                                   ; $4b47: $01 $01 $ba
	or   l                                           ; $4b4a: $b5
	and  l                                           ; $4b4b: $a5
	ld   [bc], a                                     ; $4b4c: $02
	adc  h                                           ; $4b4d: $8c
	ld   l, [hl]                                     ; $4b4e: $6e
	ld   [hl], c                                     ; $4b4f: $71
	ld   l, l                                        ; $4b50: $6d
	ld   a, b                                        ; $4b51: $78
	rst  $38                                         ; $4b52: $ff
	rst  $38                                         ; $4b53: $ff
	dec  c                                           ; $4b54: $0d
	inc  b                                           ; $4b55: $04
	ld   l, l                                        ; $4b56: $6d
	sub  b                                           ; $4b57: $90
	ld   d, b                                        ; $4b58: $50
	and  c                                           ; $4b59: $a1
	ld   a, b                                        ; $4b5a: $78
	ld   [bc], a                                     ; $4b5b: $02
	adc  h                                           ; $4b5c: $8c
	ld   e, d                                        ; $4b5d: $5a
	ld   [hl], l                                     ; $4b5e: $75
	ld   e, e                                        ; $4b5f: $5b
	sbc  c                                           ; $4b60: $99
	sub  [hl]                                        ; $4b61: $96
	ld   d, h                                        ; $4b62: $54
	ld   a, c                                        ; $4b63: $79
	dec  c                                           ; $4b64: $0d
	ld   e, d                                        ; $4b65: $5a
	and  c                                           ; $4b66: $a1
	ld   a, [hl]                                     ; $4b67: $7e
	sbc  e                                           ; $4b68: $9b
	ld   d, h                                        ; $4b69: $54
	sbc  a                                           ; $4b6a: $9f
	dec  c                                           ; $4b6b: $0d
	nop                                              ; $4b6c: $00
	ld   a, [bc]                                     ; $4b6d: $0a
	dec  b                                           ; $4b6e: $05
	add  b                                           ; $4b6f: $80
	cp   d                                           ; $4b70: $ba
	ld   bc, $0001                                   ; $4b71: $01 $01 $00
	nop                                              ; $4b74: $00
	nop                                              ; $4b75: $00
	ld   c, $01                                      ; $4b76: $0e $01
	rrca                                             ; $4b78: $0f
	nop                                              ; $4b79: $00
	ld   bc, $0502                                   ; $4b7a: $01 $02 $05
	ld   b, b                                        ; $4b7d: $40
	pop  hl                                          ; $4b7e: $e1
	inc  bc                                          ; $4b7f: $03
	pop  hl                                          ; $4b80: $e1
	ld   bc, $2801                                   ; $4b81: $01 $01 $28
	nop                                              ; $4b84: $00
	rlca                                             ; $4b85: $07
	ld   b, b                                        ; $4b86: $40
	nop                                              ; $4b87: $00
	inc  bc                                          ; $4b88: $03
	pop  hl                                          ; $4b89: $e1
	ld   bc, $2402                                   ; $4b8a: $01 $02 $24
	nop                                              ; $4b8d: $00
	ld   bc, $546b                                   ; $4b8e: $01 $6b $54
	ld   l, [hl]                                     ; $4b91: $6e
	sbc  [hl]                                        ; $4b92: $9e
	ld   h, a                                        ; $4b93: $67
	adc  l                                           ; $4b94: $8d
	sbc  d                                           ; $4b95: $9a
	ld   h, e                                        ; $4b96: $63
	and  c                                           ; $4b97: $a1
	ld   e, c                                        ; $4b98: $59
	sub  a                                           ; $4b99: $97
	dec  c                                           ; $4b9a: $0d
	inc  bc                                          ; $4b9b: $03
	jp   hl                                          ; $4b9c: $e9


	ld   d, d                                        ; $4b9d: $52
	ld   l, l                                        ; $4b9e: $6d
	ret  nc                                          ; $4b9f: $d0

	ei                                               ; $4ba0: $fb
	rst  $10                                         ; $4ba1: $d7
	ld   a, h                                        ; $4ba2: $7c
	inc  bc                                          ; $4ba3: $03
	add  hl, de                                      ; $4ba4: $19
	dec  b                                           ; $4ba5: $05
	jr   nz, @-$5e                                   ; $4ba6: $20 $a0

	dec  c                                           ; $4ba8: $0d
	ld   h, l                                        ; $4ba9: $65
	ld   a, b                                        ; $4baa: $78
	ld   e, l                                        ; $4bab: $5d
	ld   l, a                                        ; $4bac: $6f
	sub  c                                           ; $4bad: $91
	rst  $38                                         ; $4bae: $ff
	rst  $38                                         ; $4baf: $ff
	dec  c                                           ; $4bb0: $0d
	nop                                              ; $4bb1: $00
	ld   a, [bc]                                     ; $4bb2: $0a
	ld   b, $55                                      ; $4bb3: $06 $55
	nop                                              ; $4bb5: $00
	ld   bc, $fbd0                                   ; $4bb6: $01 $d0 $fb
	rst  $10                                         ; $4bb9: $d7
	ld   a, h                                        ; $4bba: $7c
	inc  bc                                          ; $4bbb: $03
	add  hl, de                                      ; $4bbc: $19
	dec  b                                           ; $4bbd: $05
	jr   nz, jr_042_4c35                             ; $4bbe: $20 $75

	sub  b                                           ; $4bc0: $90
	dec  c                                           ; $4bc1: $0d
	ld   h, a                                        ; $4bc2: $67
	sbc  c                                           ; $4bc3: $99
	ld   e, c                                        ; $4bc4: $59
	ld   a, b                                        ; $4bc5: $78
	rst  $38                                         ; $4bc6: $ff
	rst  $38                                         ; $4bc7: $ff
	dec  c                                           ; $4bc8: $0d
	nop                                              ; $4bc9: $00
	ld   a, [bc]                                     ; $4bca: $0a
	rlca                                             ; $4bcb: $07
	ld   l, d                                        ; $4bcc: $6a
	nop                                              ; $4bcd: $00
	ld   [bc], a                                     ; $4bce: $02
	nop                                              ; $4bcf: $00
	ld   bc, $220a                                   ; $4bd0: $01 $0a $22
	nop                                              ; $4bd3: $00
	rlca                                             ; $4bd4: $07
	halt                                             ; $4bd5: $76
	nop                                              ; $4bd6: $00
	ld   [bc], a                                     ; $4bd7: $02
	nop                                              ; $4bd8: $00
	ld   bc, $2211                                   ; $4bd9: $01 $11 $22
	nop                                              ; $4bdc: $00
	ld   b, $8b                                      ; $4bdd: $06 $8b
	nop                                              ; $4bdf: $00
	rlca                                             ; $4be0: $07
	xor  c                                           ; $4be1: $a9
	nop                                              ; $4be2: $00
	inc  bc                                          ; $4be3: $03
	pop  hl                                          ; $4be4: $e1
	ld   bc, $2204                                   ; $4be5: $01 $04 $22
	nop                                              ; $4be8: $00
	ld   b, $c5                                      ; $4be9: $06 $c5
	nop                                              ; $4beb: $00
	rlca                                             ; $4bec: $07
	xor  c                                           ; $4bed: $a9
	nop                                              ; $4bee: $00
	inc  bc                                          ; $4bef: $03
	pop  hl                                          ; $4bf0: $e1
	ld   bc, $2204                                   ; $4bf1: $01 $04 $22
	nop                                              ; $4bf4: $00
	rlca                                             ; $4bf5: $07
	push bc                                          ; $4bf6: $c5
	nop                                              ; $4bf7: $00
	inc  bc                                          ; $4bf8: $03
	pop  hl                                          ; $4bf9: $e1
	ld   bc, $2206                                   ; $4bfa: $01 $06 $22
	nop                                              ; $4bfd: $00
	ld   b, $e1                                      ; $4bfe: $06 $e1
	nop                                              ; $4c00: $00
	rlca                                             ; $4c01: $07
	xor  c                                           ; $4c02: $a9
	nop                                              ; $4c03: $00
	inc  bc                                          ; $4c04: $03
	pop  hl                                          ; $4c05: $e1
	ld   bc, $2204                                   ; $4c06: $01 $04 $22
	nop                                              ; $4c09: $00
	rlca                                             ; $4c0a: $07
	push bc                                          ; $4c0b: $c5
	nop                                              ; $4c0c: $00
	inc  bc                                          ; $4c0d: $03
	pop  hl                                          ; $4c0e: $e1
	ld   bc, $2206                                   ; $4c0f: $01 $06 $22
	nop                                              ; $4c12: $00
	rlca                                             ; $4c13: $07
	pop  hl                                          ; $4c14: $e1
	nop                                              ; $4c15: $00
	inc  bc                                          ; $4c16: $03
	pop  hl                                          ; $4c17: $e1
	ld   bc, $2208                                   ; $4c18: $01 $08 $22
	nop                                              ; $4c1b: $00
	ld   b, $01                                      ; $4c1c: $06 $01
	ld   bc, $022b                                   ; $4c1e: $01 $2b $02
	nop                                              ; $4c21: $00
	rrca                                             ; $4c22: $0f
	nop                                              ; $4c23: $00
	ld   bc, $0a10                                   ; $4c24: $01 $10 $0a
	rst  $38                                         ; $4c27: $ff
	ld   bc, $6c03                                   ; $4c28: $01 $03 $6c
	ld   h, l                                        ; $4c2b: $65
	ld   a, l                                        ; $4c2c: $7d
	inc  bc                                          ; $4c2d: $03
	ld   [de], a                                     ; $4c2e: $12
	inc  bc                                          ; $4c2f: $03
	jp   nc, Jump_042_6d65                           ; $4c30: $d2 $65 $6d

	ld   e, c                                        ; $4c33: $59
	ld   a, b                                        ; $4c34: $78

jr_042_4c35:
	ld   sp, hl                                      ; $4c35: $f9
	dec  c                                           ; $4c36: $0d
	nop                                              ; $4c37: $00
	ld   a, [bc]                                     ; $4c38: $0a
	inc  b                                           ; $4c39: $04
	nop                                              ; $4c3a: $00
	dec  hl                                          ; $4c3b: $2b
	ld   [bc], a                                     ; $4c3c: $02
	ld   bc, $000f                                   ; $4c3d: $01 $0f $00
	ld   bc, $0b10                                   ; $4c40: $01 $10 $0b
	rst  $38                                         ; $4c43: $ff
	ld   bc, $9104                                   ; $4c44: $01 $04 $91
	ld   [hl], c                                     ; $4c47: $71
	ld   a, a                                        ; $4c48: $7f
	ld   e, d                                        ; $4c49: $5a
	add  e                                           ; $4c4a: $83
	ld   d, [hl]                                     ; $4c4b: $56
	ld   [hl], h                                     ; $4c4c: $74
	ld   e, e                                        ; $4c4d: $5b
	ld   l, l                                        ; $4c4e: $6d
	ld   e, c                                        ; $4c4f: $59
	ld   a, b                                        ; $4c50: $78
	ld   sp, hl                                      ; $4c51: $f9
	dec  c                                           ; $4c52: $0d
	nop                                              ; $4c53: $00
	ld   a, [bc]                                     ; $4c54: $0a
	inc  b                                           ; $4c55: $04
	nop                                              ; $4c56: $00
	dec  hl                                          ; $4c57: $2b
	ld   [bc], a                                     ; $4c58: $02
	ld   [bc], a                                     ; $4c59: $02
	rrca                                             ; $4c5a: $0f
	nop                                              ; $4c5b: $00
	ld   bc, $0c10                                   ; $4c5c: $01 $10 $0c
	rst  $38                                         ; $4c5f: $ff
	ld   bc, $526e                                   ; $4c60: $01 $6e $52
	add  h                                           ; $4c63: $84
	ret  nc                                          ; $4c64: $d0

	ei                                               ; $4c65: $fb
	rst  $10                                         ; $4c66: $d7
	ld   [hl], c                                     ; $4c67: $71
	adc  e                                           ; $4c68: $8b
	ld   e, l                                        ; $4c69: $5d
	dec  c                                           ; $4c6a: $0d
	ld   a, b                                        ; $4c6b: $78
	ld   [hl], c                                     ; $4c6c: $71
	ld   [hl], h                                     ; $4c6d: $74
	ld   e, e                                        ; $4c6e: $5b
	ld   l, l                                        ; $4c6f: $6d
	ld   l, h                                        ; $4c70: $6c
	sbc  a                                           ; $4c71: $9f
	dec  c                                           ; $4c72: $0d
	nop                                              ; $4c73: $00
	ld   a, [bc]                                     ; $4c74: $0a
	inc  b                                           ; $4c75: $04
	nop                                              ; $4c76: $00
	dec  hl                                          ; $4c77: $2b
	ld   [bc], a                                     ; $4c78: $02
	inc  bc                                          ; $4c79: $03
	rrca                                             ; $4c7a: $0f
	nop                                              ; $4c7b: $00
	ld   bc, GetRandomNumInPreSpecifiedRange                                   ; $4c7c: $01 $10 $0d
	rst  $38                                         ; $4c7f: $ff
	ld   bc, $5858                                   ; $4c80: $01 $58 $58
	sbc  [hl]                                        ; $4c83: $9e
	ld   a, b                                        ; $4c84: $78
	ld   e, c                                        ; $4c85: $59
	ld   a, b                                        ; $4c86: $78
	ld   e, c                                        ; $4c87: $59
	dec  c                                           ; $4c88: $0d
	sbc  b                                           ; $4c89: $98
	ld   [hl], c                                     ; $4c8a: $71
	ld   a, a                                        ; $4c8b: $7f
	ld   a, c                                        ; $4c8c: $79
	ld   [bc], a                                     ; $4c8d: $02
	ld   e, $71                                      ; $4c8e: $1e $71
	ld   l, l                                        ; $4c90: $6d
	ld   a, b                                        ; $4c91: $78
	ld   d, b                                        ; $4c92: $50
	rst  $38                                         ; $4c93: $ff
	rst  $38                                         ; $4c94: $ff
	dec  c                                           ; $4c95: $0d
	nop                                              ; $4c96: $00
	ld   a, [bc]                                     ; $4c97: $0a
	inc  b                                           ; $4c98: $04
	ld   bc, $6596                                   ; $4c99: $01 $96 $65
	ld   a, [$0dfa]                                  ; $4c9c: $fa $fa $0d
	ld   h, a                                        ; $4c9f: $67
	adc  l                                           ; $4ca0: $8d
	sbc  d                                           ; $4ca1: $9a
	ld   h, e                                        ; $4ca2: $63
	and  c                                           ; $4ca3: $a1
	ld   a, c                                        ; $4ca4: $79
	ld   [bc], a                                     ; $4ca5: $02
	sub  l                                           ; $4ca6: $95
	ld   l, c                                        ; $4ca7: $69
	ld   a, c                                        ; $4ca8: $79
	ld   [bc], a                                     ; $4ca9: $02
	ld   a, a                                        ; $4caa: $7f
	ld   h, c                                        ; $4cab: $61
	ld   d, h                                        ; $4cac: $54
	ld   a, [$0dfa]                                  ; $4cad: $fa $fa $0d
	nop                                              ; $4cb0: $00
	ld   a, [bc]                                     ; $4cb1: $0a
	inc  hl                                          ; $4cb2: $23
	ld   b, h                                        ; $4cb3: $44
	inc  d                                           ; $4cb4: $14
	ld   b, $01                                      ; $4cb5: $06 $01
	ld   bc, $8d67                                   ; $4cb7: $01 $67 $8d
	sbc  d                                           ; $4cba: $9a
	ld   h, e                                        ; $4cbb: $63
	and  c                                           ; $4cbc: $a1
	sbc  [hl]                                        ; $4cbd: $9e
	dec  c                                           ; $4cbe: $0d
	ld   d, d                                        ; $4cbf: $52
	sub  a                                           ; $4cc0: $97
	ld   [hl], c                                     ; $4cc1: $71
	ld   h, l                                        ; $4cc2: $65
	sub  c                                           ; $4cc3: $91
	ld   d, d                                        ; $4cc4: $52
	adc  h                                           ; $4cc5: $8c
	ld   h, a                                        ; $4cc6: $67
	ld   e, c                                        ; $4cc7: $59
	ld   sp, hl                                      ; $4cc8: $f9
	dec  c                                           ; $4cc9: $0d
	nop                                              ; $4cca: $00
	ld   a, [bc]                                     ; $4ccb: $0a
	inc  d                                           ; $4ccc: $14
	ld   a, [bc]                                     ; $4ccd: $0a
	ld   bc, $450e                                   ; $4cce: $01 $0e $45
	inc  e                                           ; $4cd1: $1c
	ld   [bc], a                                     ; $4cd2: $02
	nop                                              ; $4cd3: $00
	nop                                              ; $4cd4: $00
	ld   bc, $9750                                   ; $4cd5: $01 $50 $97
	sbc  [hl]                                        ; $4cd8: $9e
	ld   [$6300], sp                                 ; $4cd9: $08 $00 $63
	and  c                                           ; $4cdc: $a1
	sbc  a                                           ; $4cdd: $9f
	dec  c                                           ; $4cde: $0d
	ld   [hl], a                                     ; $4cdf: $77
	ld   d, h                                        ; $4ce0: $54
	ld   h, l                                        ; $4ce1: $65
	adc  h                                           ; $4ce2: $8c
	ld   h, l                                        ; $4ce3: $65
	ld   l, l                                        ; $4ce4: $6d
	ld   a, h                                        ; $4ce5: $7c
	ld   sp, hl                                      ; $4ce6: $f9
	dec  c                                           ; $4ce7: $0d
	ld   l, e                                        ; $4ce8: $6b
	and  c                                           ; $4ce9: $a1
	ld   a, b                                        ; $4cea: $78
	ld   a, c                                        ; $4ceb: $79
	ld   d, b                                        ; $4cec: $50
	sbc  l                                           ; $4ced: $9d
	ld   [hl], h                                     ; $4cee: $74
	ld   [hl], h                                     ; $4cef: $74
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	dec  c                                           ; $4cf2: $0d
	nop                                              ; $4cf3: $00
	ld   a, [bc]                                     ; $4cf4: $0a
	rrca                                             ; $4cf5: $0f
	nop                                              ; $4cf6: $00
	ld   bc, $5001                                   ; $4cf7: $01 $01 $50
	ld   a, h                                        ; $4cfa: $7c
	sbc  [hl]                                        ; $4cfb: $9e
	ld   h, a                                        ; $4cfc: $67
	adc  l                                           ; $4cfd: $8d
	sbc  d                                           ; $4cfe: $9a
	ld   h, e                                        ; $4cff: $63
	and  c                                           ; $4d00: $a1
	ld   e, c                                        ; $4d01: $59
	sub  a                                           ; $4d02: $97
	inc  bc                                          ; $4d03: $03
	jp   hl                                          ; $4d04: $e9


	ld   d, d                                        ; $4d05: $52
	ld   l, l                                        ; $4d06: $6d
	dec  c                                           ; $4d07: $0d
	ret  nc                                          ; $4d08: $d0

	ei                                               ; $4d09: $fb
	rst  $10                                         ; $4d0a: $d7
	ld   e, d                                        ; $4d0b: $5a
	sbc  b                                           ; $4d0c: $98
	ld   [hl], c                                     ; $4d0d: $71
	ld   a, a                                        ; $4d0e: $7f
	ld   a, c                                        ; $4d0f: $79
	ld   [bc], a                                     ; $4d10: $02
	ld   e, $71                                      ; $4d11: $1e $71
	ld   l, l                                        ; $4d13: $6d
	ld   a, h                                        ; $4d14: $7c
	ld   [hl], l                                     ; $4d15: $75
	dec  c                                           ; $4d16: $0d
	ld   e, b                                        ; $4d17: $58
	ld   [bc], a                                     ; $4d18: $02
	sub  l                                           ; $4d19: $95
	ld   l, c                                        ; $4d1a: $69
	ld   h, l                                        ; $4d1b: $65
	ld   l, l                                        ; $4d1c: $6d
	ld   e, l                                        ; $4d1d: $5d
	ld   [hl], h                                     ; $4d1e: $74
	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	dec  c                                           ; $4d21: $0d
	nop                                              ; $4d22: $00
	ld   a, [bc]                                     ; $4d23: $0a
	db   $10                                         ; $4d24: $10
	dec  c                                           ; $4d25: $0d
	nop                                              ; $4d26: $00
	ld   b, $b4                                      ; $4d27: $06 $b4
	ld   bc, $021c                                   ; $4d29: $01 $1c $02
	inc  bc                                          ; $4d2c: $03
	inc  bc                                          ; $4d2d: $03
	dec  b                                           ; $4d2e: $05
	ld   b, b                                        ; $4d2f: $40
	pop  hl                                          ; $4d30: $e1
	ld   bc, $0000                                   ; $4d31: $01 $00 $00
	ld   bc, $9750                                   ; $4d34: $01 $50 $97
	ld   d, b                                        ; $4d37: $50
	sub  a                                           ; $4d38: $97
	sbc  [hl]                                        ; $4d39: $9e
	ld   h, c                                        ; $4d3a: $61
	sbc  d                                           ; $4d3b: $9a
	ld   a, l                                        ; $4d3c: $7d
	adc  l                                           ; $4d3d: $8d
	ld   h, d                                        ; $4d3e: $62
	halt                                             ; $4d3f: $76
	ld   a, b                                        ; $4d40: $78
	dec  c                                           ; $4d41: $0d
	ret  nc                                          ; $4d42: $d0

	ei                                               ; $4d43: $fb
	rst  $10                                         ; $4d44: $d7
	ld   [hl], l                                     ; $4d45: $75
	ld   h, a                                        ; $4d46: $67
	ld   h, c                                        ; $4d47: $61
	halt                                             ; $4d48: $76
	sbc  a                                           ; $4d49: $9f
	dec  c                                           ; $4d4a: $0d
	nop                                              ; $4d4b: $00
	ld   a, [bc]                                     ; $4d4c: $0a
	inc  e                                           ; $4d4d: $1c
	ld   [bc], a                                     ; $4d4e: $02
	nop                                              ; $4d4f: $00
	nop                                              ; $4d50: $00
	ld   bc, $5978                                   ; $4d51: $01 $78 $59
	ld   a, b                                        ; $4d54: $78
	ld   e, c                                        ; $4d55: $59
	sub  d                                           ; $4d56: $92
	sbc  b                                           ; $4d57: $98
	adc  h                                           ; $4d58: $8c
	ld   h, a                                        ; $4d59: $67
	sbc  l                                           ; $4d5a: $9d
	ld   a, e                                        ; $4d5b: $7b
	sbc  [hl]                                        ; $4d5c: $9e
	dec  c                                           ; $4d5d: $0d
	ld   [$6300], sp                                 ; $4d5e: $08 $00 $63
	and  c                                           ; $4d61: $a1
	sbc  a                                           ; $4d62: $9f
	dec  c                                           ; $4d63: $0d
	nop                                              ; $4d64: $00
	ld   a, [bc]                                     ; $4d65: $0a
	inc  e                                           ; $4d66: $1c
	ld   [bc], a                                     ; $4d67: $02
	ld   bc, $0101                                   ; $4d68: $01 $01 $01
	sub  [hl]                                        ; $4d6b: $96
	ld   e, l                                        ; $4d6c: $5d
	ld   e, d                                        ; $4d6d: $5a
	and  c                                           ; $4d6e: $a1
	ld   a, [hl]                                     ; $4d6f: $7e
	sbc  b                                           ; $4d70: $98
	adc  h                                           ; $4d71: $8c
	ld   h, l                                        ; $4d72: $65
	ld   l, l                                        ; $4d73: $6d
	sbc  a                                           ; $4d74: $9f
	dec  c                                           ; $4d75: $0d
	ld   [bc], a                                     ; $4d76: $02
	scf                                              ; $4d77: $37
	inc  bc                                          ; $4d78: $03
	ld   [hl], l                                     ; $4d79: $75
	ld   d, d                                        ; $4d7a: $52
	ld   l, l                                        ; $4d7b: $6d
	ld   h, l                                        ; $4d7c: $65
	adc  h                                           ; $4d7d: $8c
	ld   h, a                                        ; $4d7e: $67
	sbc  l                                           ; $4d7f: $9d
	sbc  a                                           ; $4d80: $9f
	dec  c                                           ; $4d81: $0d
	nop                                              ; $4d82: $00
	ld   a, [bc]                                     ; $4d83: $0a
	inc  e                                           ; $4d84: $1c
	ld   [bc], a                                     ; $4d85: $02
	nop                                              ; $4d86: $00
	nop                                              ; $4d87: $00
	ld   bc, $668c                                   ; $4d88: $01 $8c $66
	adc  a                                           ; $4d8b: $8f
	ld   a, c                                        ; $4d8c: $79
	inc  bc                                          ; $4d8d: $03
	add  hl, de                                      ; $4d8e: $19
	dec  b                                           ; $4d8f: $05
	jr   nz, @-$5e                                   ; $4d90: $20 $a0

	ld   h, l                                        ; $4d92: $65
	ld   [hl], h                                     ; $4d93: $74
	ld   e, e                                        ; $4d94: $5b
	ld   l, l                                        ; $4d95: $6d
	dec  c                                           ; $4d96: $0d
	ld   [$6300], sp                                 ; $4d97: $08 $00 $63
	and  c                                           ; $4d9a: $a1
	ld   a, c                                        ; $4d9b: $79
	sbc  [hl]                                        ; $4d9c: $9e
	ld   h, d                                        ; $4d9d: $62
	adc  c                                           ; $4d9e: $89
	ld   d, h                                        ; $4d9f: $54
	add  c                                           ; $4da0: $81
	and  b                                           ; $4da1: $a0
	dec  c                                           ; $4da2: $0d
	nop                                              ; $4da3: $00
	dec  b                                           ; $4da4: $05
	ld   b, b                                        ; $4da5: $40
	ld   c, a                                        ; $4da6: $4f
	ld   bc, $0000                                   ; $4da7: $01 $00 $00
	ld   bc, $3c05                                   ; $4daa: $01 $05 $3c
	ld   h, l                                        ; $4dad: $65
	inc  bc                                          ; $4dae: $03
	ld   h, l                                        ; $4daf: $65
	ld   h, b                                        ; $4db0: $60
	adc  h                                           ; $4db1: $8c
	ld   h, a                                        ; $4db2: $67
	sbc  l                                           ; $4db3: $9d
	sbc  a                                           ; $4db4: $9f
	dec  c                                           ; $4db5: $0d
	nop                                              ; $4db6: $00
	ld   a, [bc]                                     ; $4db7: $0a
	ld   bc, $6d9d                                   ; $4db8: $01 $9d $6d
	ld   e, l                                        ; $4dbb: $5d
	ld   h, l                                        ; $4dbc: $65
	ld   a, h                                        ; $4dbd: $7c
	inc  b                                           ; $4dbe: $04
	adc  d                                           ; $4dbf: $8a
	inc  bc                                          ; $4dc0: $03
	ld   e, [hl]                                     ; $4dc1: $5e
	ld   [bc], a                                     ; $4dc2: $02
	adc  h                                           ; $4dc3: $8c
	sbc  [hl]                                        ; $4dc4: $9e
	dec  c                                           ; $4dc5: $0d
	inc  bc                                          ; $4dc6: $03
	sub  b                                           ; $4dc7: $90
	inc  bc                                          ; $4dc8: $03
	cp   e                                           ; $4dc9: $bb
	inc  b                                           ; $4dca: $04
	ld   [hl], a                                     ; $4dcb: $77
	inc  bc                                          ; $4dcc: $03
	or   l                                           ; $4dcd: $b5
	dec  b                                           ; $4dce: $05
	inc  d                                           ; $4dcf: $14
	di                                               ; $4dd0: $f3
	ld   [bc], a                                     ; $4dd1: $02
	ret  c                                           ; $4dd2: $d8

	inc  b                                           ; $4dd3: $04
	ld   sp, $047c                                   ; $4dd4: $31 $7c $04
	adc  [hl]                                        ; $4dd7: $8e
	dec  c                                           ; $4dd8: $0d
	and  b                                           ; $4dd9: $a0
	ld   [bc], a                                     ; $4dda: $02
	sub  l                                           ; $4ddb: $95
	ld   l, c                                        ; $4ddc: $69
	ld   [hl], h                                     ; $4ddd: $74
	ld   d, b                                        ; $4dde: $50
	ld   h, b                                        ; $4ddf: $60
	adc  h                                           ; $4de0: $8c
	ld   h, a                                        ; $4de1: $67
	sbc  l                                           ; $4de2: $9d
	sbc  a                                           ; $4de3: $9f
	dec  c                                           ; $4de4: $0d
	nop                                              ; $4de5: $00
	ld   a, [bc]                                     ; $4de6: $0a
	dec  c                                           ; $4de7: $0d
	nop                                              ; $4de8: $00
	nop                                              ; $4de9: $00
	rrca                                             ; $4dea: $0f
	nop                                              ; $4deb: $00
	ld   bc, $9d23                                   ; $4dec: $01 $23 $9d
	inc  e                                           ; $4def: $1c
	ld   [bc], a                                     ; $4df0: $02
	nop                                              ; $4df1: $00
	nop                                              ; $4df2: $00
	ld   bc, $5252                                   ; $4df3: $01 $52 $52
	ld   [hl], l                                     ; $4df6: $75
	ld   h, a                                        ; $4df7: $67
	ld   e, c                                        ; $4df8: $59
	sbc  [hl]                                        ; $4df9: $9e
	ld   [$6300], sp                                 ; $4dfa: $08 $00 $63
	and  c                                           ; $4dfd: $a1
	sbc  a                                           ; $4dfe: $9f
	dec  c                                           ; $4dff: $0d
	ld   [bc], a                                     ; $4e00: $02
	jr   nz, jr_042_4e07                             ; $4e01: $20 $04

	add  hl, hl                                      ; $4e03: $29
	ld   h, l                                        ; $4e04: $65
	ld   e, c                                        ; $4e05: $59
	sub  d                                           ; $4e06: $92

jr_042_4e07:
	sbc  b                                           ; $4e07: $98
	adc  h                                           ; $4e08: $8c
	ld   l, c                                        ; $4e09: $69
	and  c                                           ; $4e0a: $a1
	ld   e, c                                        ; $4e0b: $59
	sub  a                                           ; $4e0c: $97
	dec  c                                           ; $4e0d: $0d
	sub  [hl]                                        ; $4e0e: $96
	ld   e, l                                        ; $4e0f: $5d
	ld   [bc], a                                     ; $4e10: $02
	sub  l                                           ; $4e11: $95
	ld   [hl], h                                     ; $4e12: $74
	ld   d, d                                        ; $4e13: $52
	ld   [hl], h                                     ; $4e14: $74
	ld   [bc], a                                     ; $4e15: $02
	inc  [hl]                                        ; $4e16: $34
	ld   h, e                                        ; $4e17: $63
	ld   d, d                                        ; $4e18: $52
	ld   a, b                                        ; $4e19: $78
	sbc  a                                           ; $4e1a: $9f
	dec  c                                           ; $4e1b: $0d
	nop                                              ; $4e1c: $00
	ld   a, [bc]                                     ; $4e1d: $0a
	inc  e                                           ; $4e1e: $1c
	ld   [bc], a                                     ; $4e1f: $02
	ld   [bc], a                                     ; $4e20: $02
	ld   [bc], a                                     ; $4e21: $02
	ld   bc, $9003                                   ; $4e22: $01 $03 $90
	inc  bc                                          ; $4e25: $03
	cp   e                                           ; $4e26: $bb
	inc  b                                           ; $4e27: $04
	ld   [hl], a                                     ; $4e28: $77
	inc  bc                                          ; $4e29: $03
	or   l                                           ; $4e2a: $b5
	dec  b                                           ; $4e2b: $05
	inc  d                                           ; $4e2c: $14
	dec  c                                           ; $4e2d: $0d
	ld   [bc], a                                     ; $4e2e: $02
	ret  c                                           ; $4e2f: $d8

	inc  b                                           ; $4e30: $04
	ld   sp, $047c                                   ; $4e31: $31 $7c $04
	adc  [hl]                                        ; $4e34: $8e
	ld   a, [$0dfa]                                  ; $4e35: $fa $fa $0d
	nop                                              ; $4e38: $00
	ld   a, [bc]                                     ; $4e39: $0a
	dec  c                                           ; $4e3a: $0d
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00
	cpl                                              ; $4e3d: $2f
	ld   [bc], a                                     ; $4e3e: $02
	ld   c, $9d                                      ; $4e3f: $0e $9d
	inc  e                                           ; $4e41: $1c
	ld   [bc], a                                     ; $4e42: $02
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	ld   bc, $7c61                                   ; $4e45: $01 $61 $7c
	ld   [bc], a                                     ; $4e48: $02
	adc  h                                           ; $4e49: $8c
	ld   a, l                                        ; $4e4a: $7d
	sbc  [hl]                                        ; $4e4b: $9e
	dec  b                                           ; $4e4c: $05
	ldh  [$03], a                                    ; $4e4d: $e0 $03
	sub  b                                           ; $4e4f: $90
	dec  b                                           ; $4e50: $05
	ld   a, [bc]                                     ; $4e51: $0a
	sbc  [hl]                                        ; $4e52: $9e
	inc  bc                                          ; $4e53: $03
	and  [hl]                                        ; $4e54: $a6
	inc  bc                                          ; $4e55: $03
	ld   [hl], b                                     ; $4e56: $70
	ld   h, e                                        ; $4e57: $63
	dec  c                                           ; $4e58: $0d
	ld   l, e                                        ; $4e59: $6b
	ld   h, l                                        ; $4e5a: $65
	ld   [hl], h                                     ; $4e5b: $74
	inc  b                                           ; $4e5c: $04
	ld   c, c                                        ; $4e5d: $49
	sub  [hl]                                        ; $4e5e: $96
	sbc  b                                           ; $4e5f: $98
	sub  b                                           ; $4e60: $90
	inc  b                                           ; $4e61: $04
	and  c                                           ; $4e62: $a1
	ld   h, l                                        ; $4e63: $65
	ld   h, e                                        ; $4e64: $63
	ld   e, d                                        ; $4e65: $5a
	dec  c                                           ; $4e66: $0d
	inc  b                                           ; $4e67: $04
	ld   c, $03                                      ; $4e68: $0e $03
	dec  de                                          ; $4e6a: $1b
	ld   [hl], l                                     ; $4e6b: $75
	ld   h, a                                        ; $4e6c: $67
	ld   a, h                                        ; $4e6d: $7c
	sbc  a                                           ; $4e6e: $9f
	dec  c                                           ; $4e6f: $0d
	nop                                              ; $4e70: $00
	ld   a, [bc]                                     ; $4e71: $0a
	ld   bc, $0008                                   ; $4e72: $01 $08 $00
	ld   h, e                                        ; $4e75: $63
	and  c                                           ; $4e76: $a1
	sub  b                                           ; $4e77: $90
	sbc  [hl]                                        ; $4e78: $9e
	ld   h, c                                        ; $4e79: $61
	ld   a, h                                        ; $4e7a: $7c
	inc  b                                           ; $4e7b: $04
	dec  c                                           ; $4e7c: $0d
	ld   [bc], a                                     ; $4e7d: $02
	sub  [hl]                                        ; $4e7e: $96
	dec  c                                           ; $4e7f: $0d
	inc  b                                           ; $4e80: $04
	ld   b, l                                        ; $4e81: $45
	inc  b                                           ; $4e82: $04
	ld   a, [bc]                                     ; $4e83: $0a
	ld   a, h                                        ; $4e84: $7c
	ld   [bc], a                                     ; $4e85: $02
	pop  bc                                          ; $4e86: $c1
	ld   [bc], a                                     ; $4e87: $02
	xor  c                                           ; $4e88: $a9
	ld   a, c                                        ; $4e89: $79
	sbc  [hl]                                        ; $4e8a: $9e
	ld   h, d                                        ; $4e8b: $62
	inc  bc                                          ; $4e8c: $03
	sub  h                                           ; $4e8d: $94
	inc  b                                           ; $4e8e: $04
	sbc  [hl]                                        ; $4e8f: $9e
	and  b                                           ; $4e90: $a0
	dec  c                                           ; $4e91: $0d
	ld   h, l                                        ; $4e92: $65
	ld   [hl], c                                     ; $4e93: $71
	ld   e, c                                        ; $4e94: $59
	sbc  b                                           ; $4e95: $98
	halt                                             ; $4e96: $76
	ld   e, b                                        ; $4e97: $58
	ld   e, e                                        ; $4e98: $5b
	ld   l, l                                        ; $4e99: $6d
	ld   d, [hl]                                     ; $4e9a: $56
	ld   a, b                                        ; $4e9b: $78
	ld   h, e                                        ; $4e9c: $63
	ld   d, d                                        ; $4e9d: $52
	sbc  a                                           ; $4e9e: $9f
	dec  c                                           ; $4e9f: $0d
	nop                                              ; $4ea0: $00
	ld   a, [bc]                                     ; $4ea1: $0a
	inc  e                                           ; $4ea2: $1c
	ld   [bc], a                                     ; $4ea3: $02
	ld   bc, $0101                                   ; $4ea4: $01 $01 $01
	ld   l, e                                        ; $4ea7: $6b
	ld   d, h                                        ; $4ea8: $54
	ld   h, a                                        ; $4ea9: $67
	sbc  d                                           ; $4eaa: $9a
	ld   a, [hl]                                     ; $4eab: $7e
	sbc  [hl]                                        ; $4eac: $9e
	ld   [$6300], sp                                 ; $4ead: $08 $00 $63
	and  c                                           ; $4eb0: $a1
	dec  c                                           ; $4eb1: $0d
	ld   a, c                                        ; $4eb2: $79
	sub  b                                           ; $4eb3: $90
	sbc  [hl]                                        ; $4eb4: $9e
	sbc  l                                           ; $4eb5: $9d
	ld   l, l                                        ; $4eb6: $6d
	ld   e, l                                        ; $4eb7: $5d
	ld   h, l                                        ; $4eb8: $65
	ld   a, h                                        ; $4eb9: $7c
	ld   [bc], a                                     ; $4eba: $02
	adc  h                                           ; $4ebb: $8c
	and  b                                           ; $4ebc: $a0
	inc  bc                                          ; $4ebd: $03
	xor  [hl]                                        ; $4ebe: $ae
	ld   d, [hl]                                     ; $4ebf: $56
	sbc  c                                           ; $4ec0: $99
	ld   h, c                                        ; $4ec1: $61
	dec  c                                           ; $4ec2: $0d
	halt                                             ; $4ec3: $76
	ld   e, d                                        ; $4ec4: $5a
	ld   [hl], l                                     ; $4ec5: $75
	ld   e, e                                        ; $4ec6: $5b
	sbc  c                                           ; $4ec7: $99
	ld   e, c                                        ; $4ec8: $59
	sub  b                                           ; $4ec9: $90
	ld   h, l                                        ; $4eca: $65
	sbc  d                                           ; $4ecb: $9a
	adc  h                                           ; $4ecc: $8c
	ld   l, c                                        ; $4ecd: $69
	and  c                                           ; $4ece: $a1
	sbc  l                                           ; $4ecf: $9d
	sbc  a                                           ; $4ed0: $9f
	dec  c                                           ; $4ed1: $0d
	nop                                              ; $4ed2: $00
	ld   a, [bc]                                     ; $4ed3: $0a
	ld   bc, $9a6b                                   ; $4ed4: $01 $6b $9a
	ld   [hl], l                                     ; $4ed7: $75
	ld   a, l                                        ; $4ed8: $7d
	sbc  [hl]                                        ; $4ed9: $9e
	ld   e, d                                        ; $4eda: $5a
	and  c                                           ; $4edb: $a1
	ld   a, [hl]                                     ; $4edc: $7e
	sbc  b                                           ; $4edd: $98
	ld   a, b                                        ; $4ede: $78
	ld   h, e                                        ; $4edf: $63
	ld   d, d                                        ; $4ee0: $52
	sbc  a                                           ; $4ee1: $9f
	dec  c                                           ; $4ee2: $0d
	nop                                              ; $4ee3: $00
	ld   a, [bc]                                     ; $4ee4: $0a
	dec  c                                           ; $4ee5: $0d
	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	rrca                                             ; $4ee8: $0f
	nop                                              ; $4ee9: $00
	ld   bc, $ba01                                   ; $4eea: $01 $01 $ba
	or   l                                           ; $4eed: $b5
	and  l                                           ; $4eee: $a5
	ld   [bc], a                                     ; $4eef: $02
	adc  h                                           ; $4ef0: $8c
	ld   l, [hl]                                     ; $4ef1: $6e
	ld   [hl], c                                     ; $4ef2: $71
	ld   l, l                                        ; $4ef3: $6d
	ld   a, b                                        ; $4ef4: $78
	rst  $38                                         ; $4ef5: $ff
	rst  $38                                         ; $4ef6: $ff
	dec  c                                           ; $4ef7: $0d
	inc  b                                           ; $4ef8: $04
	ld   l, l                                        ; $4ef9: $6d
	sub  b                                           ; $4efa: $90
	ld   d, b                                        ; $4efb: $50
	and  c                                           ; $4efc: $a1
	ld   a, b                                        ; $4efd: $78
	ld   [bc], a                                     ; $4efe: $02
	adc  h                                           ; $4eff: $8c
	ld   e, d                                        ; $4f00: $5a
	ld   [hl], l                                     ; $4f01: $75
	ld   e, e                                        ; $4f02: $5b
	sbc  c                                           ; $4f03: $99
	sub  [hl]                                        ; $4f04: $96
	ld   d, h                                        ; $4f05: $54
	ld   a, c                                        ; $4f06: $79
	dec  c                                           ; $4f07: $0d
	ld   e, d                                        ; $4f08: $5a
	and  c                                           ; $4f09: $a1
	ld   a, [hl]                                     ; $4f0a: $7e
	sbc  e                                           ; $4f0b: $9b
	ld   d, h                                        ; $4f0c: $54
	sbc  a                                           ; $4f0d: $9f
	dec  c                                           ; $4f0e: $0d
	nop                                              ; $4f0f: $00
	ld   a, [bc]                                     ; $4f10: $0a
	dec  b                                           ; $4f11: $05
	add  b                                           ; $4f12: $80
	cp   e                                           ; $4f13: $bb
	ld   bc, $0001                                   ; $4f14: $01 $01 $00
	nop                                              ; $4f17: $00
	nop                                              ; $4f18: $00
	ld   c, $01                                      ; $4f19: $0e $01
	rrca                                             ; $4f1b: $0f
	nop                                              ; $4f1c: $00
	ld   bc, $0502                                   ; $4f1d: $01 $02 $05
	ld   b, b                                        ; $4f20: $40
	ldh  [c], a                                      ; $4f21: $e2
	inc  bc                                          ; $4f22: $03
	ldh  [c], a                                      ; $4f23: $e2
	ld   bc, $2801                                   ; $4f24: $01 $01 $28
	nop                                              ; $4f27: $00
	rlca                                             ; $4f28: $07
	add  hl, sp                                      ; $4f29: $39
	nop                                              ; $4f2a: $00
	inc  bc                                          ; $4f2b: $03
	ldh  [c], a                                      ; $4f2c: $e2
	ld   bc, $2402                                   ; $4f2d: $01 $02 $24
	nop                                              ; $4f30: $00
	ld   bc, $546b                                   ; $4f31: $01 $6b $54
	ld   l, [hl]                                     ; $4f34: $6e
	sbc  [hl]                                        ; $4f35: $9e
	rst  JumpTable                                         ; $4f36: $df
	db   $ec                                         ; $4f37: $ec
	and  e                                           ; $4f38: $a3
	ld   h, e                                        ; $4f39: $63
	and  c                                           ; $4f3a: $a1
	ld   e, c                                        ; $4f3b: $59
	sub  a                                           ; $4f3c: $97
	dec  c                                           ; $4f3d: $0d
	ld   e, c                                        ; $4f3e: $59
	sbc  b                                           ; $4f3f: $98
	ld   l, l                                        ; $4f40: $6d
	inc  b                                           ; $4f41: $04
	adc  a                                           ; $4f42: $8f
	ld   [hl], l                                     ; $4f43: $75
	sub  b                                           ; $4f44: $90
	inc  b                                           ; $4f45: $04
	ld   de, $5490                                   ; $4f46: $11 $90 $54
	ld   e, c                                        ; $4f49: $59
	ld   a, b                                        ; $4f4a: $78
	sbc  a                                           ; $4f4b: $9f
	dec  c                                           ; $4f4c: $0d
	nop                                              ; $4f4d: $00
	ld   a, [bc]                                     ; $4f4e: $0a
	ld   b, $49                                      ; $4f4f: $06 $49
	nop                                              ; $4f51: $00
	ld   bc, $8f04                                   ; $4f52: $01 $04 $8f
	ld   [hl], l                                     ; $4f55: $75
	sub  b                                           ; $4f56: $90
	inc  b                                           ; $4f57: $04
	ld   de, $5490                                   ; $4f58: $11 $90 $54
	ld   e, c                                        ; $4f5b: $59
	ld   a, b                                        ; $4f5c: $78
	rst  $38                                         ; $4f5d: $ff
	rst  $38                                         ; $4f5e: $ff
	dec  c                                           ; $4f5f: $0d
	nop                                              ; $4f60: $00
	ld   a, [bc]                                     ; $4f61: $0a
	rlca                                             ; $4f62: $07
	ld   e, [hl]                                     ; $4f63: $5e
	nop                                              ; $4f64: $00
	ld   [bc], a                                     ; $4f65: $02
	nop                                              ; $4f66: $00
	ld   bc, $220a                                   ; $4f67: $01 $0a $22
	nop                                              ; $4f6a: $00
	rlca                                             ; $4f6b: $07
	ld   l, d                                        ; $4f6c: $6a
	nop                                              ; $4f6d: $00
	ld   [bc], a                                     ; $4f6e: $02
	nop                                              ; $4f6f: $00
	ld   bc, $2211                                   ; $4f70: $01 $11 $22
	nop                                              ; $4f73: $00
	ld   b, $7f                                      ; $4f74: $06 $7f
	nop                                              ; $4f76: $00
	rlca                                             ; $4f77: $07
	sbc  l                                           ; $4f78: $9d
	nop                                              ; $4f79: $00
	inc  bc                                          ; $4f7a: $03
	ldh  [c], a                                      ; $4f7b: $e2
	ld   bc, $2204                                   ; $4f7c: $01 $04 $22
	nop                                              ; $4f7f: $00
	ld   b, $bc                                      ; $4f80: $06 $bc
	nop                                              ; $4f82: $00
	rlca                                             ; $4f83: $07
	sbc  l                                           ; $4f84: $9d
	nop                                              ; $4f85: $00
	inc  bc                                          ; $4f86: $03
	ldh  [c], a                                      ; $4f87: $e2
	ld   bc, $2204                                   ; $4f88: $01 $04 $22
	nop                                              ; $4f8b: $00
	rlca                                             ; $4f8c: $07
	cp   h                                           ; $4f8d: $bc
	nop                                              ; $4f8e: $00
	inc  bc                                          ; $4f8f: $03
	ldh  [c], a                                      ; $4f90: $e2
	ld   bc, $2206                                   ; $4f91: $01 $06 $22
	nop                                              ; $4f94: $00
	ld   b, $e1                                      ; $4f95: $06 $e1
	nop                                              ; $4f97: $00
	rlca                                             ; $4f98: $07
	sbc  l                                           ; $4f99: $9d
	nop                                              ; $4f9a: $00
	inc  bc                                          ; $4f9b: $03
	ldh  [c], a                                      ; $4f9c: $e2
	ld   bc, $2204                                   ; $4f9d: $01 $04 $22
	nop                                              ; $4fa0: $00
	rlca                                             ; $4fa1: $07
	cp   h                                           ; $4fa2: $bc
	nop                                              ; $4fa3: $00
	inc  bc                                          ; $4fa4: $03
	ldh  [c], a                                      ; $4fa5: $e2
	ld   bc, $2206                                   ; $4fa6: $01 $06 $22
	nop                                              ; $4fa9: $00
	rlca                                             ; $4faa: $07
	pop  hl                                          ; $4fab: $e1
	nop                                              ; $4fac: $00
	inc  bc                                          ; $4fad: $03
	ldh  [c], a                                      ; $4fae: $e2
	ld   bc, $2208                                   ; $4faf: $01 $08 $22
	nop                                              ; $4fb2: $00
	ld   b, $fa                                      ; $4fb3: $06 $fa
	nop                                              ; $4fb5: $00
	dec  hl                                          ; $4fb6: $2b
	inc  bc                                          ; $4fb7: $03
	nop                                              ; $4fb8: $00
	rrca                                             ; $4fb9: $0f
	nop                                              ; $4fba: $00
	ld   bc, $1810                                   ; $4fbb: $01 $10 $18
	rst  $38                                         ; $4fbe: $ff
	ld   bc, $6e8c                                   ; $4fbf: $01 $8c $6e
	sbc  [hl]                                        ; $4fc2: $9e
	ld   e, c                                        ; $4fc3: $59
	ld   a, b                                        ; $4fc4: $78
	sbc  b                                           ; $4fc5: $98
	db   $db                                         ; $4fc6: $db
	ei                                               ; $4fc7: $fb
	cp   c                                           ; $4fc8: $b9
	ld   e, d                                        ; $4fc9: $5a
	dec  c                                           ; $4fca: $0d
	ld   d, b                                        ; $4fcb: $50
	sbc  c                                           ; $4fcc: $99
	ld   a, b                                        ; $4fcd: $78
	rst  $38                                         ; $4fce: $ff
	rst  $38                                         ; $4fcf: $ff
	dec  c                                           ; $4fd0: $0d
	nop                                              ; $4fd1: $00
	ld   a, [bc]                                     ; $4fd2: $0a
	inc  b                                           ; $4fd3: $04
	nop                                              ; $4fd4: $00
	dec  hl                                          ; $4fd5: $2b
	inc  bc                                          ; $4fd6: $03
	ld   bc, $000f                                   ; $4fd7: $01 $0f $00
	ld   bc, $1810                                   ; $4fda: $01 $10 $18
	rst  $38                                         ; $4fdd: $ff
	ld   bc, $5483                                   ; $4fde: $01 $83 $54
	rst  $38                                         ; $4fe1: $ff
	rst  $38                                         ; $4fe2: $ff
	sbc  [hl]                                        ; $4fe3: $9e
	dec  c                                           ; $4fe4: $0d
	ld   [hl], d                                     ; $4fe5: $72
	ld   [hl], e                                     ; $4fe6: $73
	ld   e, e                                        ; $4fe7: $5b
	ld   a, l                                        ; $4fe8: $7d
	adc  h                                           ; $4fe9: $8c
	ld   l, l                                        ; $4fea: $6d
	ld   [bc], a                                     ; $4feb: $02
	and  l                                           ; $4fec: $a5
	inc  b                                           ; $4fed: $04
	add  hl, hl                                      ; $4fee: $29
	ld   a, c                                        ; $4fef: $79
	ld   h, l                                        ; $4ff0: $65
	sub  [hl]                                        ; $4ff1: $96
	ld   d, h                                        ; $4ff2: $54
	rst  $38                                         ; $4ff3: $ff
	rst  $38                                         ; $4ff4: $ff
	dec  c                                           ; $4ff5: $0d
	nop                                              ; $4ff6: $00
	ld   a, [bc]                                     ; $4ff7: $0a
	inc  b                                           ; $4ff8: $04
	nop                                              ; $4ff9: $00
	dec  hl                                          ; $4ffa: $2b
	inc  bc                                          ; $4ffb: $03
	ld   [bc], a                                     ; $4ffc: $02
	rrca                                             ; $4ffd: $0f
	nop                                              ; $4ffe: $00
	ld   bc, $1810                                   ; $4fff: $01 $10 $18
	rst  $38                                         ; $5002: $ff
	ld   bc, $7650                                   ; $5003: $01 $50 $76
	ld   l, a                                        ; $5006: $6f
	sub  l                                           ; $5007: $95
	ld   [hl], c                                     ; $5008: $71
	halt                                             ; $5009: $76
	ld   l, [hl]                                     ; $500a: $6e
	ld   a, b                                        ; $500b: $78
	rst  $38                                         ; $500c: $ff
	rst  $38                                         ; $500d: $ff
	dec  c                                           ; $500e: $0d
	nop                                              ; $500f: $00
	ld   a, [bc]                                     ; $5010: $0a
	inc  b                                           ; $5011: $04
	nop                                              ; $5012: $00
	dec  hl                                          ; $5013: $2b
	inc  bc                                          ; $5014: $03
	inc  bc                                          ; $5015: $03
	rrca                                             ; $5016: $0f
	nop                                              ; $5017: $00
	ld   bc, $1910                                   ; $5018: $01 $10 $19
	rst  $38                                         ; $501b: $ff
	ld   bc, $5483                                   ; $501c: $01 $83 $54
	db   $fc                                         ; $501f: $fc
	sbc  a                                           ; $5020: $9f
	dec  c                                           ; $5021: $0d
	sub  d                                           ; $5022: $92
	ld   [hl], c                                     ; $5023: $71
	halt                                             ; $5024: $76
	inc  b                                           ; $5025: $04
	ld   de, $038d                                   ; $5026: $11 $8d $03
	ld   a, [hl]                                     ; $5029: $7e
	sbc  l                                           ; $502a: $9d
	ld   [hl], c                                     ; $502b: $71
	ld   l, l                                        ; $502c: $6d
	ld   l, h                                        ; $502d: $6c
	sbc  a                                           ; $502e: $9f
	dec  c                                           ; $502f: $0d
	nop                                              ; $5030: $00
	ld   a, [bc]                                     ; $5031: $0a
	inc  b                                           ; $5032: $04
	ld   bc, $6596                                   ; $5033: $01 $96 $65
	sbc  [hl]                                        ; $5036: $9e
	inc  b                                           ; $5037: $04
	and  e                                           ; $5038: $a3
	sbc  d                                           ; $5039: $9a
	ld   a, b                                        ; $503a: $78
	ld   d, d                                        ; $503b: $52
	ld   d, h                                        ; $503c: $54
	ld   l, a                                        ; $503d: $6f
	ld   a, c                                        ; $503e: $79
	dec  c                                           ; $503f: $0d
	rst  JumpTable                                         ; $5040: $df
	db   $ec                                         ; $5041: $ec
	and  e                                           ; $5042: $a3
	ld   h, e                                        ; $5043: $63
	and  c                                           ; $5044: $a1
	ld   a, h                                        ; $5045: $7c
	halt                                             ; $5046: $76
	ld   h, c                                        ; $5047: $61
	sbc  e                                           ; $5048: $9b
	add  [hl]                                        ; $5049: $86
	dec  c                                           ; $504a: $0d
	inc  b                                           ; $504b: $04
	sub  a                                           ; $504c: $97
	ld   h, l                                        ; $504d: $65
	ld   a, c                                        ; $504e: $79
	ld   d, d                                        ; $504f: $52
	ld   h, c                                        ; $5050: $61
	ld   d, h                                        ; $5051: $54
	sbc  a                                           ; $5052: $9f
	dec  c                                           ; $5053: $0d
	nop                                              ; $5054: $00
	ld   a, [bc]                                     ; $5055: $0a
	inc  hl                                          ; $5056: $23
	ld   b, [hl]                                     ; $5057: $46
	inc  d                                           ; $5058: $14
	ld   b, $01                                      ; $5059: $06 $01
	ld   bc, $ecdf                                   ; $505b: $01 $df $ec
	and  e                                           ; $505e: $a3
	ld   h, e                                        ; $505f: $63
	and  c                                           ; $5060: $a1
	sbc  [hl]                                        ; $5061: $9e
	dec  c                                           ; $5062: $0d
	ld   d, d                                        ; $5063: $52
	sub  a                                           ; $5064: $97
	ld   [hl], c                                     ; $5065: $71
	ld   h, l                                        ; $5066: $65
	sub  c                                           ; $5067: $91
	ld   d, d                                        ; $5068: $52
	adc  h                                           ; $5069: $8c
	ld   h, a                                        ; $506a: $67
	ld   e, c                                        ; $506b: $59
	ld   sp, hl                                      ; $506c: $f9
	dec  c                                           ; $506d: $0d
	nop                                              ; $506e: $00
	ld   a, [bc]                                     ; $506f: $0a
	inc  d                                           ; $5070: $14
	ld   a, [bc]                                     ; $5071: $0a
	ld   bc, $470e                                   ; $5072: $01 $0e $47
	inc  e                                           ; $5075: $1c
	inc  bc                                          ; $5076: $03
	nop                                              ; $5077: $00
	nop                                              ; $5078: $00
	ld   bc, $9750                                   ; $5079: $01 $50 $97
	sbc  [hl]                                        ; $507c: $9e
	ld   [$5d00], sp                                 ; $507d: $08 $00 $5d
	and  c                                           ; $5080: $a1
	sbc  a                                           ; $5081: $9f
	dec  c                                           ; $5082: $0d
	ld   [hl], a                                     ; $5083: $77
	ld   d, h                                        ; $5084: $54
	ld   h, l                                        ; $5085: $65
	ld   l, l                                        ; $5086: $6d
	ld   a, h                                        ; $5087: $7c
	ld   sp, hl                                      ; $5088: $f9
	dec  c                                           ; $5089: $0d
	ld   l, e                                        ; $508a: $6b
	and  c                                           ; $508b: $a1
	ld   a, b                                        ; $508c: $78
	ld   a, c                                        ; $508d: $79
	ld   d, b                                        ; $508e: $50
	sbc  l                                           ; $508f: $9d
	ld   [hl], h                                     ; $5090: $74
	ld   [hl], h                                     ; $5091: $74
	rst  $38                                         ; $5092: $ff
	rst  $38                                         ; $5093: $ff
	dec  c                                           ; $5094: $0d
	nop                                              ; $5095: $00
	ld   a, [bc]                                     ; $5096: $0a
	rrca                                             ; $5097: $0f
	nop                                              ; $5098: $00
	ld   bc, $5001                                   ; $5099: $01 $01 $50
	ld   a, h                                        ; $509c: $7c
	sbc  [hl]                                        ; $509d: $9e
	rst  JumpTable                                         ; $509e: $df
	db   $ec                                         ; $509f: $ec
	and  e                                           ; $50a0: $a3
	ld   h, e                                        ; $50a1: $63
	and  c                                           ; $50a2: $a1
	ld   a, c                                        ; $50a3: $79
	ld   e, b                                        ; $50a4: $58
	dec  b                                           ; $50a5: $05
	db   $e3                                         ; $50a6: $e3
	sbc  b                                           ; $50a7: $98
	dec  c                                           ; $50a8: $0d
	ld   h, l                                        ; $50a9: $65
	ld   [hl], h                                     ; $50aa: $74
	ld   d, d                                        ; $50ab: $52
	ld   l, l                                        ; $50ac: $6d
	inc  b                                           ; $50ad: $04
	adc  a                                           ; $50ae: $8f
	and  b                                           ; $50af: $a0
	inc  b                                           ; $50b0: $04
	ld   de, $038d                                   ; $50b1: $11 $8d $03
	ld   a, [hl]                                     ; $50b4: $7e
	ld   d, [hl]                                     ; $50b5: $56
	ld   l, l                                        ; $50b6: $6d
	ld   a, h                                        ; $50b7: $7c
	ld   [hl], l                                     ; $50b8: $75
	sbc  [hl]                                        ; $50b9: $9e
	dec  c                                           ; $50ba: $0d
	inc  b                                           ; $50bb: $04
	sub  a                                           ; $50bc: $97
	ld   h, l                                        ; $50bd: $65
	ld   a, c                                        ; $50be: $79
	ld   e, e                                        ; $50bf: $5b
	adc  h                                           ; $50c0: $8c
	ld   h, l                                        ; $50c1: $65
	ld   l, l                                        ; $50c2: $6d
	sbc  a                                           ; $50c3: $9f
	dec  c                                           ; $50c4: $0d
	nop                                              ; $50c5: $00
	ld   a, [bc]                                     ; $50c6: $0a
	db   $10                                         ; $50c7: $10
	add  hl, de                                      ; $50c8: $19
	nop                                              ; $50c9: $00
	ld   b, $b4                                      ; $50ca: $06 $b4
	ld   bc, $031c                                   ; $50cc: $01 $1c $03
	rlca                                             ; $50cf: $07
	rlca                                             ; $50d0: $07
	dec  b                                           ; $50d1: $05
	ld   b, b                                        ; $50d2: $40
	ldh  [c], a                                      ; $50d3: $e2
	ld   bc, $0000                                   ; $50d4: $01 $00 $00
	ld   bc, $6903                                   ; $50d7: $01 $03 $69
	ld   [bc], a                                     ; $50da: $02
	xor  d                                           ; $50db: $aa
	adc  h                                           ; $50dc: $8c
	ld   [hl], l                                     ; $50dd: $75
	inc  b                                           ; $50de: $04
	ld   de, $6ea1                                   ; $50df: $11 $a1 $6e
	ld   a, h                                        ; $50e2: $7c
	ld   a, e                                        ; $50e3: $7b
	sbc  a                                           ; $50e4: $9f
	dec  c                                           ; $50e5: $0d
	ld   [bc], a                                     ; $50e6: $02
	scf                                              ; $50e7: $37
	inc  bc                                          ; $50e8: $03
	ld   [hl], l                                     ; $50e9: $75
	ld   l, [hl]                                     ; $50ea: $6e
	sbc  l                                           ; $50eb: $9d
	sbc  a                                           ; $50ec: $9f
	dec  c                                           ; $50ed: $0d
	nop                                              ; $50ee: $00
	ld   a, [bc]                                     ; $50ef: $0a
	dec  b                                           ; $50f0: $05
	ld   b, b                                        ; $50f1: $40
	ld   d, b                                        ; $50f2: $50
	ld   bc, $0000                                   ; $50f3: $01 $00 $00
	inc  e                                           ; $50f6: $1c
	inc  bc                                          ; $50f7: $03
	nop                                              ; $50f8: $00
	nop                                              ; $50f9: $00
	ld   bc, $638c                                   ; $50fa: $01 $8c $63
	ld   e, c                                        ; $50fd: $59
	inc  bc                                          ; $50fe: $03
	ld   l, c                                        ; $50ff: $69
	ld   [bc], a                                     ; $5100: $02
	xor  d                                           ; $5101: $aa
	adc  h                                           ; $5102: $8c
	ld   [hl], l                                     ; $5103: $75
	inc  b                                           ; $5104: $04
	ld   de, $998f                                   ; $5105: $11 $8f $99
	ld   a, b                                        ; $5108: $78
	and  c                                           ; $5109: $a1
	ld   [hl], h                                     ; $510a: $74
	dec  c                                           ; $510b: $0d
	dec  b                                           ; $510c: $05
	pop  de                                          ; $510d: $d1
	ld   [hl], c                                     ; $510e: $71
	ld   [hl], h                                     ; $510f: $74
	sub  b                                           ; $5110: $90
	adc  l                                           ; $5111: $8d
	ld   a, b                                        ; $5112: $78
	ld   e, c                                        ; $5113: $59
	ld   [hl], c                                     ; $5114: $71
	ld   l, l                                        ; $5115: $6d
	rst  $38                                         ; $5116: $ff
	rst  $38                                         ; $5117: $ff
	dec  c                                           ; $5118: $0d
	sub  [hl]                                        ; $5119: $96
	ld   e, l                                        ; $511a: $5d
	ld   e, d                                        ; $511b: $5a
	and  c                                           ; $511c: $a1
	ld   a, [hl]                                     ; $511d: $7e
	ld   [hl], c                                     ; $511e: $71
	ld   l, l                                        ; $511f: $6d
	sbc  l                                           ; $5120: $9d
	ld   a, e                                        ; $5121: $7b
	sbc  a                                           ; $5122: $9f
	dec  c                                           ; $5123: $0d
	nop                                              ; $5124: $00
	ld   a, [bc]                                     ; $5125: $0a
	inc  e                                           ; $5126: $1c
	inc  bc                                          ; $5127: $03
	nop                                              ; $5128: $00
	nop                                              ; $5129: $00
	ld   bc, $0008                                   ; $512a: $01 $08 $00
	ld   e, l                                        ; $512d: $5d
	and  c                                           ; $512e: $a1
	ld   a, c                                        ; $512f: $79
	sbc  [hl]                                        ; $5130: $9e
	ld   a, b                                        ; $5131: $78
	ld   a, c                                        ; $5132: $79
	ld   e, c                                        ; $5133: $59
	dec  c                                           ; $5134: $0d
	ld   h, d                                        ; $5135: $62
	adc  c                                           ; $5136: $89
	ld   d, h                                        ; $5137: $54
	add  c                                           ; $5138: $81
	and  b                                           ; $5139: $a0
	ld   d, b                                        ; $513a: $50
	ld   h, b                                        ; $513b: $60
	ld   a, b                                        ; $513c: $78
	ld   e, l                                        ; $513d: $5d
	ld   [hl], h                                     ; $513e: $74
	ld   a, l                                        ; $513f: $7d
	ld   a, e                                        ; $5140: $7b
	sbc  a                                           ; $5141: $9f
	dec  c                                           ; $5142: $0d
	rst  $38                                         ; $5143: $ff
	rst  $38                                         ; $5144: $ff
	rst  $38                                         ; $5145: $ff
	rst  $38                                         ; $5146: $ff
	rst  $38                                         ; $5147: $ff
	rst  $38                                         ; $5148: $ff
	ld   l, e                                        ; $5149: $6b
	ld   d, h                                        ; $514a: $54
	ld   l, [hl]                                     ; $514b: $6e
	sbc  l                                           ; $514c: $9d
	sbc  [hl]                                        ; $514d: $9e
	dec  c                                           ; $514e: $0d
	nop                                              ; $514f: $00
	ld   a, [bc]                                     ; $5150: $0a
	ld   bc, $c803                                   ; $5151: $01 $03 $c8
	ld   a, h                                        ; $5154: $7c
	inc  b                                           ; $5155: $04
	adc  d                                           ; $5156: $8a
	inc  bc                                          ; $5157: $03
	ld   e, [hl]                                     ; $5158: $5e
	ld   [bc], a                                     ; $5159: $02
	adc  h                                           ; $515a: $8c
	sbc  [hl]                                        ; $515b: $9e
	cp   d                                           ; $515c: $ba
	adc  $b1                                         ; $515d: $ce $b1
	ei                                               ; $515f: $fb
	db   $eb                                         ; $5160: $eb
	jp   nz, $0dac                                   ; $5161: $c2 $ac $0d

	and  b                                           ; $5164: $a0
	ld   [bc], a                                     ; $5165: $02
	sub  l                                           ; $5166: $95
	ld   l, c                                        ; $5167: $69
	ld   [hl], h                                     ; $5168: $74
	ld   d, b                                        ; $5169: $50
	ld   h, b                                        ; $516a: $60
	adc  h                                           ; $516b: $8c
	ld   h, l                                        ; $516c: $65
	sub  l                                           ; $516d: $95
	ld   d, h                                        ; $516e: $54
	sbc  a                                           ; $516f: $9f
	dec  c                                           ; $5170: $0d
	nop                                              ; $5171: $00
	ld   a, [bc]                                     ; $5172: $0a
	dec  c                                           ; $5173: $0d
	nop                                              ; $5174: $00
	nop                                              ; $5175: $00
	rrca                                             ; $5176: $0f
	nop                                              ; $5177: $00
	ld   bc, $7a23                                   ; $5178: $01 $23 $7a
	inc  e                                           ; $517b: $1c
	inc  bc                                          ; $517c: $03
	nop                                              ; $517d: $00
	nop                                              ; $517e: $00
	ld   bc, $5252                                   ; $517f: $01 $52 $52
	sbc  [hl]                                        ; $5182: $9e
	ld   [$5d00], sp                                 ; $5183: $08 $00 $5d
	and  c                                           ; $5186: $a1
	sbc  a                                           ; $5187: $9f
	dec  c                                           ; $5188: $0d
	ld   [bc], a                                     ; $5189: $02
	jr   nz, jr_042_5190                             ; $518a: $20 $04

	add  hl, hl                                      ; $518c: $29
	ld   h, l                                        ; $518d: $65
	ld   e, c                                        ; $518e: $59
	sub  d                                           ; $518f: $92

jr_042_5190:
	sub  a                                           ; $5190: $97
	ld   a, b                                        ; $5191: $78
	ld   d, d                                        ; $5192: $52
	ld   e, c                                        ; $5193: $59
	sub  a                                           ; $5194: $97
	dec  c                                           ; $5195: $0d
	sub  [hl]                                        ; $5196: $96
	ld   e, l                                        ; $5197: $5d
	ld   [bc], a                                     ; $5198: $02
	sub  l                                           ; $5199: $95
	ld   [hl], h                                     ; $519a: $74
	ld   d, d                                        ; $519b: $52
	sbc  c                                           ; $519c: $99
	ld   a, h                                        ; $519d: $7c
	sub  [hl]                                        ; $519e: $96
	sbc  a                                           ; $519f: $9f
	dec  c                                           ; $51a0: $0d
	nop                                              ; $51a1: $00
	ld   a, [bc]                                     ; $51a2: $0a
	inc  e                                           ; $51a3: $1c
	inc  bc                                          ; $51a4: $03
	ld   [bc], a                                     ; $51a5: $02
	ld   [bc], a                                     ; $51a6: $02
	ld   bc, $ceba                                   ; $51a7: $01 $ba $ce
	or   c                                           ; $51aa: $b1
	ei                                               ; $51ab: $fb
	ei                                               ; $51ac: $fb
	ei                                               ; $51ad: $fb
	db   $eb                                         ; $51ae: $eb
	jp   nz, $faac                                   ; $51af: $c2 $ac $fa

	dec  c                                           ; $51b2: $0d
	nop                                              ; $51b3: $00
	ld   a, [bc]                                     ; $51b4: $0a
	dec  c                                           ; $51b5: $0d
	nop                                              ; $51b6: $00
	nop                                              ; $51b7: $00
	cpl                                              ; $51b8: $2f
	inc  bc                                          ; $51b9: $03
	ld   c, $7a                                      ; $51ba: $0e $7a
	inc  e                                           ; $51bc: $1c
	inc  bc                                          ; $51bd: $03
	nop                                              ; $51be: $00
	nop                                              ; $51bf: $00
	ld   de, $0100                                   ; $51c0: $11 $00 $01
	add  e                                           ; $51c3: $83
	ld   d, h                                        ; $51c4: $54
	rst  $38                                         ; $51c5: $ff
	rst  $38                                         ; $51c6: $ff
	rst  $38                                         ; $51c7: $ff
	rst  $38                                         ; $51c8: $ff
	dec  c                                           ; $51c9: $0d
	nop                                              ; $51ca: $00
	ld   a, [bc]                                     ; $51cb: $0a
	ld   de, $01ff                                   ; $51cc: $11 $ff $01
	ld   [$5d00], sp                                 ; $51cf: $08 $00 $5d
	and  c                                           ; $51d2: $a1
	sub  b                                           ; $51d3: $90
	sbc  [hl]                                        ; $51d4: $9e
	ld   h, c                                        ; $51d5: $61
	ld   a, h                                        ; $51d6: $7c
	inc  b                                           ; $51d7: $04
	dec  c                                           ; $51d8: $0d
	ld   [bc], a                                     ; $51d9: $02
	sub  [hl]                                        ; $51da: $96
	dec  c                                           ; $51db: $0d
	inc  b                                           ; $51dc: $04
	ld   b, l                                        ; $51dd: $45
	inc  b                                           ; $51de: $04
	ld   a, [bc]                                     ; $51df: $0a
	ld   a, h                                        ; $51e0: $7c
	ld   [bc], a                                     ; $51e1: $02
	pop  bc                                          ; $51e2: $c1
	ld   [bc], a                                     ; $51e3: $02
	xor  c                                           ; $51e4: $a9
	ld   a, c                                        ; $51e5: $79
	sbc  [hl]                                        ; $51e6: $9e
	inc  bc                                          ; $51e7: $03
	ld   [hl], l                                     ; $51e8: $75
	halt                                             ; $51e9: $76
	inc  b                                           ; $51ea: $04
	dec  c                                           ; $51eb: $0d
	and  b                                           ; $51ec: $a0
	dec  c                                           ; $51ed: $0d
	ld   h, l                                        ; $51ee: $65
	ld   [hl], c                                     ; $51ef: $71
	ld   e, c                                        ; $51f0: $59
	sbc  b                                           ; $51f1: $98
	ld   e, e                                        ; $51f2: $5b
	ld   l, l                                        ; $51f3: $6d
	ld   d, [hl]                                     ; $51f4: $56
	ld   a, b                                        ; $51f5: $78
	ld   h, e                                        ; $51f6: $63
	ld   d, d                                        ; $51f7: $52
	sbc  a                                           ; $51f8: $9f
	dec  c                                           ; $51f9: $0d
	nop                                              ; $51fa: $00
	ld   a, [bc]                                     ; $51fb: $0a
	ld   de, $01ff                                   ; $51fc: $11 $ff $01
	ld   l, e                                        ; $51ff: $6b
	ld   d, h                                        ; $5200: $54
	ld   h, a                                        ; $5201: $67
	sbc  d                                           ; $5202: $9a
	ld   a, [hl]                                     ; $5203: $7e
	sbc  [hl]                                        ; $5204: $9e
	dec  c                                           ; $5205: $0d
	ld   h, c                                        ; $5206: $61
	ld   d, h                                        ; $5207: $54
	ld   d, d                                        ; $5208: $52
	ld   d, h                                        ; $5209: $54
	pop  af                                          ; $520a: $f1
	or   a                                           ; $520b: $b7
	and  b                                           ; $520c: $a0
	inc  bc                                          ; $520d: $03
	xor  [hl]                                        ; $520e: $ae
	ld   d, h                                        ; $520f: $54
	ld   h, c                                        ; $5210: $61
	halt                                             ; $5211: $76
	sub  b                                           ; $5212: $90
	dec  c                                           ; $5213: $0d
	inc  b                                           ; $5214: $04
	cp   [hl]                                        ; $5215: $be
	ld   [hl], l                                     ; $5216: $75
	ld   a, l                                        ; $5217: $7d
	ld   a, b                                        ; $5218: $78
	ld   d, d                                        ; $5219: $52
	sbc  l                                           ; $521a: $9d
	sbc  a                                           ; $521b: $9f
	dec  c                                           ; $521c: $0d
	nop                                              ; $521d: $00
	ld   a, [bc]                                     ; $521e: $0a
	inc  e                                           ; $521f: $1c
	inc  bc                                          ; $5220: $03
	inc  bc                                          ; $5221: $03
	inc  bc                                          ; $5222: $03
	ld   bc, $9a6b                                   ; $5223: $01 $6b $9a
	ld   h, [hl]                                     ; $5226: $66
	sub  c                                           ; $5227: $91
	sbc  [hl]                                        ; $5228: $9e
	ld   e, d                                        ; $5229: $5a
	and  c                                           ; $522a: $a1
	ld   a, [hl]                                     ; $522b: $7e
	ld   [hl], c                                     ; $522c: $71
	ld   [hl], h                                     ; $522d: $74
	ld   a, e                                        ; $522e: $7b
	sbc  a                                           ; $522f: $9f
	dec  c                                           ; $5230: $0d
	ld   [$5d00], sp                                 ; $5231: $08 $00 $5d
	and  c                                           ; $5234: $a1
	sbc  a                                           ; $5235: $9f
	dec  c                                           ; $5236: $0d
	nop                                              ; $5237: $00
	ld   a, [bc]                                     ; $5238: $0a
	dec  c                                           ; $5239: $0d
	nop                                              ; $523a: $00
	nop                                              ; $523b: $00
	rrca                                             ; $523c: $0f
	nop                                              ; $523d: $00
	ld   bc, $ba01                                   ; $523e: $01 $01 $ba
	or   l                                           ; $5241: $b5
	and  l                                           ; $5242: $a5
	ld   [bc], a                                     ; $5243: $02
	adc  h                                           ; $5244: $8c
	ld   l, [hl]                                     ; $5245: $6e
	ld   [hl], c                                     ; $5246: $71
	ld   l, l                                        ; $5247: $6d
	ld   a, b                                        ; $5248: $78
	rst  $38                                         ; $5249: $ff
	rst  $38                                         ; $524a: $ff
	dec  c                                           ; $524b: $0d
	inc  b                                           ; $524c: $04
	ld   l, l                                        ; $524d: $6d
	sub  b                                           ; $524e: $90
	ld   d, b                                        ; $524f: $50
	and  c                                           ; $5250: $a1
	ld   a, b                                        ; $5251: $78
	ld   [bc], a                                     ; $5252: $02
	adc  h                                           ; $5253: $8c
	ld   e, d                                        ; $5254: $5a
	ld   [hl], l                                     ; $5255: $75
	ld   e, e                                        ; $5256: $5b
	sbc  c                                           ; $5257: $99
	sub  [hl]                                        ; $5258: $96
	ld   d, h                                        ; $5259: $54
	ld   a, c                                        ; $525a: $79
	dec  c                                           ; $525b: $0d
	ld   e, d                                        ; $525c: $5a
	and  c                                           ; $525d: $a1
	ld   a, [hl]                                     ; $525e: $7e
	sbc  e                                           ; $525f: $9b
	ld   d, h                                        ; $5260: $54
	sbc  a                                           ; $5261: $9f
	dec  c                                           ; $5262: $0d
	nop                                              ; $5263: $00
	ld   a, [bc]                                     ; $5264: $0a
	dec  b                                           ; $5265: $05
	add  b                                           ; $5266: $80
	cp   h                                           ; $5267: $bc
	ld   bc, $0001                                   ; $5268: $01 $01 $00
	nop                                              ; $526b: $00
	nop                                              ; $526c: $00
	ld   c, $01                                      ; $526d: $0e $01
	rrca                                             ; $526f: $0f
	nop                                              ; $5270: $00
	ld   bc, $0502                                   ; $5271: $01 $02 $05
	ld   b, b                                        ; $5274: $40
	db   $e3                                         ; $5275: $e3
	inc  bc                                          ; $5276: $03
	db   $e3                                         ; $5277: $e3
	ld   bc, $2801                                   ; $5278: $01 $01 $28
	nop                                              ; $527b: $00
	rlca                                             ; $527c: $07
	ld   b, b                                        ; $527d: $40
	nop                                              ; $527e: $00
	inc  bc                                          ; $527f: $03
	db   $e3                                         ; $5280: $e3
	ld   bc, $2402                                   ; $5281: $01 $02 $24
	nop                                              ; $5284: $00
	ld   bc, $546b                                   ; $5285: $01 $6b $54
	ld   l, [hl]                                     ; $5288: $6e
	sbc  [hl]                                        ; $5289: $9e
	and  e                                           ; $528a: $a3
	and  l                                           ; $528b: $a5
	db   $ec                                         ; $528c: $ec
	cp   d                                           ; $528d: $ba
	ld   e, c                                        ; $528e: $59
	sub  a                                           ; $528f: $97
	dec  c                                           ; $5290: $0d
	ld   d, b                                        ; $5291: $50
	ld   l, b                                        ; $5292: $68
	ld   e, c                                        ; $5293: $59
	ld   [hl], c                                     ; $5294: $71
	ld   l, l                                        ; $5295: $6d
	rst  JumpTable                                         ; $5296: $df
	db   $ec                                         ; $5297: $ec
	ei                                               ; $5298: $fb
	ld   a, h                                        ; $5299: $7c
	inc  bc                                          ; $529a: $03
	add  hl, de                                      ; $529b: $19
	dec  b                                           ; $529c: $05
	jr   nz, @-$5e                                   ; $529d: $20 $a0

	dec  c                                           ; $529f: $0d
	ld   h, l                                        ; $52a0: $65
	ld   a, b                                        ; $52a1: $78
	ld   e, l                                        ; $52a2: $5d
	ld   l, a                                        ; $52a3: $6f
	sub  c                                           ; $52a4: $91
	rst  $38                                         ; $52a5: $ff
	rst  $38                                         ; $52a6: $ff
	dec  c                                           ; $52a7: $0d
	nop                                              ; $52a8: $00
	ld   a, [bc]                                     ; $52a9: $0a
	ld   b, $55                                      ; $52aa: $06 $55
	nop                                              ; $52ac: $00
	ld   bc, $ecdf                                   ; $52ad: $01 $df $ec
	ei                                               ; $52b0: $fb
	ld   a, h                                        ; $52b1: $7c
	inc  bc                                          ; $52b2: $03
	add  hl, de                                      ; $52b3: $19
	dec  b                                           ; $52b4: $05
	jr   nz, jr_042_532c                             ; $52b5: $20 $75

	sub  b                                           ; $52b7: $90
	dec  c                                           ; $52b8: $0d
	ld   h, a                                        ; $52b9: $67
	sbc  c                                           ; $52ba: $99
	ld   e, c                                        ; $52bb: $59
	ld   a, b                                        ; $52bc: $78
	rst  $38                                         ; $52bd: $ff
	rst  $38                                         ; $52be: $ff
	dec  c                                           ; $52bf: $0d
	nop                                              ; $52c0: $00
	ld   a, [bc]                                     ; $52c1: $0a
	rlca                                             ; $52c2: $07
	ld   l, d                                        ; $52c3: $6a
	nop                                              ; $52c4: $00
	ld   [bc], a                                     ; $52c5: $02
	nop                                              ; $52c6: $00
	ld   bc, $220a                                   ; $52c7: $01 $0a $22
	nop                                              ; $52ca: $00
	rlca                                             ; $52cb: $07
	halt                                             ; $52cc: $76
	nop                                              ; $52cd: $00
	ld   [bc], a                                     ; $52ce: $02
	nop                                              ; $52cf: $00
	ld   bc, $2211                                   ; $52d0: $01 $11 $22
	nop                                              ; $52d3: $00
	ld   b, $8b                                      ; $52d4: $06 $8b
	nop                                              ; $52d6: $00
	rlca                                             ; $52d7: $07
	xor  c                                           ; $52d8: $a9
	nop                                              ; $52d9: $00
	inc  bc                                          ; $52da: $03
	db   $e3                                         ; $52db: $e3
	ld   bc, $2204                                   ; $52dc: $01 $04 $22
	nop                                              ; $52df: $00
	ld   b, $d3                                      ; $52e0: $06 $d3
	nop                                              ; $52e2: $00
	rlca                                             ; $52e3: $07
	xor  c                                           ; $52e4: $a9
	nop                                              ; $52e5: $00
	inc  bc                                          ; $52e6: $03
	db   $e3                                         ; $52e7: $e3
	ld   bc, $2204                                   ; $52e8: $01 $04 $22
	nop                                              ; $52eb: $00
	rlca                                             ; $52ec: $07
	db   $d3                                         ; $52ed: $d3
	nop                                              ; $52ee: $00
	inc  bc                                          ; $52ef: $03
	db   $e3                                         ; $52f0: $e3
	ld   bc, $2206                                   ; $52f1: $01 $06 $22
	nop                                              ; $52f4: $00
	ld   b, $fa                                      ; $52f5: $06 $fa
	nop                                              ; $52f7: $00
	rlca                                             ; $52f8: $07
	xor  c                                           ; $52f9: $a9
	nop                                              ; $52fa: $00
	inc  bc                                          ; $52fb: $03
	db   $e3                                         ; $52fc: $e3
	ld   bc, $2204                                   ; $52fd: $01 $04 $22
	nop                                              ; $5300: $00
	rlca                                             ; $5301: $07
	db   $d3                                         ; $5302: $d3
	nop                                              ; $5303: $00
	inc  bc                                          ; $5304: $03
	db   $e3                                         ; $5305: $e3
	ld   bc, $2206                                   ; $5306: $01 $06 $22
	nop                                              ; $5309: $00
	rlca                                             ; $530a: $07
	ld   a, [$0300]                                  ; $530b: $fa $00 $03
	db   $e3                                         ; $530e: $e3
	ld   bc, $2208                                   ; $530f: $01 $08 $22
	nop                                              ; $5312: $00
	ld   b, $21                                      ; $5313: $06 $21
	ld   bc, $042b                                   ; $5315: $01 $2b $04
	nop                                              ; $5318: $00
	rrca                                             ; $5319: $0f
	nop                                              ; $531a: $00
	ld   bc, $2110                                   ; $531b: $01 $10 $21
	rst  $38                                         ; $531e: $ff
	ld   bc, $a178                                   ; $531f: $01 $78 $a1
	ld   l, [hl]                                     ; $5322: $6e
	ld   e, c                                        ; $5323: $59
	sbc  [hl]                                        ; $5324: $9e
	sub  $b8                                         ; $5325: $d6 $b8
	xor  a                                           ; $5327: $af
	ld   a, b                                        ; $5328: $78
	sub  $f5                                         ; $5329: $d6 $f5
	and  l                                           ; $532b: $a5

jr_042_532c:
	xor  [hl]                                        ; $532c: $ae
	ld   a, h                                        ; $532d: $7c
	dec  c                                           ; $532e: $0d
	ld   d, b                                        ; $532f: $50
	sbc  c                                           ; $5330: $99
	call $b1a5                                       ; $5331: $cd $a5 $b1
	db   $ed                                         ; $5334: $ed
	ldh  [$6e], a                                    ; $5335: $e0 $6e
	ld   a, b                                        ; $5337: $78
	ld   d, b                                        ; $5338: $50
	rst  $38                                         ; $5339: $ff
	rst  $38                                         ; $533a: $ff
	dec  c                                           ; $533b: $0d
	nop                                              ; $533c: $00
	ld   a, [bc]                                     ; $533d: $0a
	inc  b                                           ; $533e: $04
	nop                                              ; $533f: $00
	dec  hl                                          ; $5340: $2b
	inc  b                                           ; $5341: $04
	ld   bc, $000f                                   ; $5342: $01 $0f $00
	ld   bc, $2110                                   ; $5345: $01 $10 $21
	rst  $38                                         ; $5348: $ff
	ld   bc, $a178                                   ; $5349: $01 $78 $a1
	ld   l, [hl]                                     ; $534c: $6e
	ld   e, c                                        ; $534d: $59
	sbc  [hl]                                        ; $534e: $9e
	ld   h, c                                        ; $534f: $61
	ld   [hl], c                                     ; $5350: $71
	ld   l, a                                        ; $5351: $6f
	and  b                                           ; $5352: $a0
	ld   [bc], a                                     ; $5353: $02
	sub  l                                           ; $5354: $95
	ld   [hl], h                                     ; $5355: $74
	ld   d, d                                        ; $5356: $52
	sbc  c                                           ; $5357: $99
	dec  c                                           ; $5358: $0d
	ld   [bc], a                                     ; $5359: $02
	and  c                                           ; $535a: $a1
	ld   e, d                                        ; $535b: $5a
	ld   h, a                                        ; $535c: $67
	sbc  c                                           ; $535d: $99
	ld   a, b                                        ; $535e: $78
	ld   d, b                                        ; $535f: $50
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	dec  c                                           ; $5362: $0d
	nop                                              ; $5363: $00
	ld   a, [bc]                                     ; $5364: $0a
	inc  b                                           ; $5365: $04
	nop                                              ; $5366: $00
	dec  hl                                          ; $5367: $2b
	inc  b                                           ; $5368: $04
	ld   [bc], a                                     ; $5369: $02
	rrca                                             ; $536a: $0f
	nop                                              ; $536b: $00
	ld   bc, $2110                                   ; $536c: $01 $10 $21
	rst  $38                                         ; $536f: $ff
	ld   bc, $a102                                   ; $5370: $01 $02 $a1
	ld   a, h                                        ; $5373: $7c
	ld   l, c                                        ; $5374: $69
	ld   d, d                                        ; $5375: $52
	ld   e, c                                        ; $5376: $59
	sbc  [hl]                                        ; $5377: $9e
	sub  [hl]                                        ; $5378: $96
	sbc  e                                           ; $5379: $9b
	ld   h, c                                        ; $537a: $61
	and  c                                           ; $537b: $a1
	ld   [hl], l                                     ; $537c: $75
	ld   d, d                                        ; $537d: $52
	sbc  c                                           ; $537e: $99
	dec  c                                           ; $537f: $0d
	ld   [bc], a                                     ; $5380: $02
	and  c                                           ; $5381: $a1
	ld   e, d                                        ; $5382: $5a
	ld   h, a                                        ; $5383: $67
	sbc  c                                           ; $5384: $99
	ld   a, b                                        ; $5385: $78
	ld   d, b                                        ; $5386: $50
	rst  $38                                         ; $5387: $ff
	rst  $38                                         ; $5388: $ff
	dec  c                                           ; $5389: $0d
	nop                                              ; $538a: $00
	ld   a, [bc]                                     ; $538b: $0a
	inc  b                                           ; $538c: $04
	nop                                              ; $538d: $00
	dec  hl                                          ; $538e: $2b
	inc  b                                           ; $538f: $04
	inc  bc                                          ; $5390: $03
	rrca                                             ; $5391: $0f
	nop                                              ; $5392: $00
	ld   bc, $2110                                   ; $5393: $01 $10 $21
	rst  $38                                         ; $5396: $ff
	ld   bc, hScriptOpcodeParams+1                                   ; $5397: $01 $a1 $ff
	rst  $38                                         ; $539a: $ff
	ld   sp, hl                                      ; $539b: $f9
	dec  c                                           ; $539c: $0d
	ld   a, b                                        ; $539d: $78
	and  c                                           ; $539e: $a1
	ld   l, [hl]                                     ; $539f: $6e
	ld   e, c                                        ; $53a0: $59
	sbc  [hl]                                        ; $53a1: $9e
	rst  JumpTable                                         ; $53a2: $df
	db   $ec                                         ; $53a3: $ec
	ei                                               ; $53a4: $fb
	ld   a, c                                        ; $53a5: $79
	dec  c                                           ; $53a6: $0d
	dec  b                                           ; $53a7: $05
	jr   nz, jr_042_540f                             ; $53a8: $20 $65

	ld   e, c                                        ; $53aa: $59
	ld   e, a                                        ; $53ab: $5f
	sub  a                                           ; $53ac: $97
	sbc  d                                           ; $53ad: $9a
	ld   l, l                                        ; $53ae: $6d
	sub  [hl]                                        ; $53af: $96
	ld   d, h                                        ; $53b0: $54
	ld   a, b                                        ; $53b1: $78
	rst  $38                                         ; $53b2: $ff
	rst  $38                                         ; $53b3: $ff
	ld   sp, hl                                      ; $53b4: $f9
	dec  c                                           ; $53b5: $0d
	nop                                              ; $53b6: $00
	ld   a, [bc]                                     ; $53b7: $0a
	inc  b                                           ; $53b8: $04
	inc  d                                           ; $53b9: $14
	ld   b, $01                                      ; $53ba: $06 $01
	rrca                                             ; $53bc: $0f
	inc  b                                           ; $53bd: $04
	nop                                              ; $53be: $00
	ld   bc, $526f                                   ; $53bf: $01 $6f $52
	ld   [bc], a                                     ; $53c2: $02
	inc  de                                          ; $53c3: $13
	ld   l, a                                        ; $53c4: $6f
	sub  c                                           ; $53c5: $91
	and  c                                           ; $53c6: $a1
	sbc  [hl]                                        ; $53c7: $9e
	and  e                                           ; $53c8: $a3
	and  l                                           ; $53c9: $a5
	db   $ec                                         ; $53ca: $ec
	cp   d                                           ; $53cb: $ba
	ld   l, [hl]                                     ; $53cc: $6e
	sub  [hl]                                        ; $53cd: $96
	sbc  a                                           ; $53ce: $9f
	dec  c                                           ; $53cf: $0d
	nop                                              ; $53d0: $00
	ld   a, [bc]                                     ; $53d1: $0a
	inc  d                                           ; $53d2: $14
	ld   a, [bc]                                     ; $53d3: $0a
	ld   bc, $040d                                   ; $53d4: $01 $0d $04
	nop                                              ; $53d7: $00
	rrca                                             ; $53d8: $0f
	nop                                              ; $53d9: $00
	ld   bc, $a301                                   ; $53da: $01 $01 $a3
	and  l                                           ; $53dd: $a5
	db   $ec                                         ; $53de: $ec
	cp   d                                           ; $53df: $ba
	ld   sp, hl                                      ; $53e0: $f9
	dec  c                                           ; $53e1: $0d
	ld   [hl], a                                     ; $53e2: $77
	ld   d, h                                        ; $53e3: $54
	ld   h, l                                        ; $53e4: $65
	ld   l, l                                        ; $53e5: $6d
	and  c                                           ; $53e6: $a1
	ld   l, [hl]                                     ; $53e7: $6e
	ld   d, d                                        ; $53e8: $52
	ld   sp, hl                                      ; $53e9: $f9
	dec  c                                           ; $53ea: $0d
	ld   d, d                                        ; $53eb: $52
	ld   e, e                                        ; $53ec: $5b
	ld   a, b                                        ; $53ed: $78
	sbc  b                                           ; $53ee: $98
	rst  $38                                         ; $53ef: $ff
	rst  $38                                         ; $53f0: $ff
	dec  c                                           ; $53f1: $0d
	nop                                              ; $53f2: $00
	ld   a, [bc]                                     ; $53f3: $0a
	inc  e                                           ; $53f4: $1c
	inc  b                                           ; $53f5: $04
	dec  b                                           ; $53f6: $05
	dec  b                                           ; $53f7: $05
	ld   bc, $8656                                   ; $53f8: $01 $56 $86
	add  [hl]                                        ; $53fb: $86
	rst  $38                                         ; $53fc: $ff
	rst  $38                                         ; $53fd: $ff
	ld   l, a                                        ; $53fe: $6f
	sub  l                                           ; $53ff: $95
	ld   [hl], c                                     ; $5400: $71
	halt                                             ; $5401: $76
	rst  JumpTable                                         ; $5402: $df
	db   $ec                                         ; $5403: $ec
	ei                                               ; $5404: $fb
	ld   a, h                                        ; $5405: $7c
	dec  c                                           ; $5406: $0d
	ld   h, c                                        ; $5407: $61
	halt                                             ; $5408: $76
	ld   e, d                                        ; $5409: $5a
	ld   e, e                                        ; $540a: $5b
	ld   a, c                                        ; $540b: $79
	ld   a, b                                        ; $540c: $78
	ld   [hl], c                                     ; $540d: $71
	ld   l, l                                        ; $540e: $6d

jr_042_540f:
	ld   a, h                                        ; $540f: $7c
	rst  $38                                         ; $5410: $ff
	rst  $38                                         ; $5411: $ff
	dec  c                                           ; $5412: $0d
	nop                                              ; $5413: $00
	ld   a, [bc]                                     ; $5414: $0a
	ld   bc, $526f                                   ; $5415: $01 $6f $52
	ld   [bc], a                                     ; $5418: $02
	inc  de                                          ; $5419: $13
	ld   l, a                                        ; $541a: $6f
	sub  c                                           ; $541b: $91
	and  c                                           ; $541c: $a1
	ld   e, d                                        ; $541d: $5a
	sbc  [hl]                                        ; $541e: $9e
	ld   l, a                                        ; $541f: $6f
	sub  c                                           ; $5420: $91
	and  c                                           ; $5421: $a1
	halt                                             ; $5422: $76
	dec  c                                           ; $5423: $0d
	ld   e, b                                        ; $5424: $58
	ld   l, c                                        ; $5425: $69
	sbc  l                                           ; $5426: $9d
	ld   h, l                                        ; $5427: $65
	ld   [hl], h                                     ; $5428: $74
	ld   e, l                                        ; $5429: $5d
	sbc  d                                           ; $542a: $9a
	ld   [hl], h                                     ; $542b: $74
	sbc  c                                           ; $542c: $99
	ld   e, c                                        ; $542d: $59
	ld   a, b                                        ; $542e: $78
	halt                                             ; $542f: $76
	dec  c                                           ; $5430: $0d
	ld   e, b                                        ; $5431: $58
	sub  b                                           ; $5432: $90
	ld   [hl], c                                     ; $5433: $71
	ld   [hl], h                                     ; $5434: $74
	rst  $38                                         ; $5435: $ff
	rst  $38                                         ; $5436: $ff
	dec  c                                           ; $5437: $0d
	nop                                              ; $5438: $00
	ld   a, [bc]                                     ; $5439: $0a
	ld   bc, $7287                                   ; $543a: $01 $87 $72
	ld   a, c                                        ; $543d: $79
	sbc  [hl]                                        ; $543e: $9e
	rst  JumpTable                                         ; $543f: $df
	db   $ec                                         ; $5440: $ec
	ei                                               ; $5441: $fb
	ld   e, d                                        ; $5442: $5a
	ld   d, d                                        ; $5443: $52
	ld   a, b                                        ; $5444: $78
	ld   e, l                                        ; $5445: $5d
	ld   [hl], h                                     ; $5446: $74
	dec  c                                           ; $5447: $0d
	ld   h, e                                        ; $5448: $63
	add  c                                           ; $5449: $81
	ld   h, l                                        ; $544a: $65
	ld   e, l                                        ; $544b: $5d
	ld   a, b                                        ; $544c: $78
	ld   [hl], c                                     ; $544d: $71
	ld   l, l                                        ; $544e: $6d
	and  c                                           ; $544f: $a1
	ld   h, [hl]                                     ; $5450: $66
	sub  c                                           ; $5451: $91
	dec  c                                           ; $5452: $0d
	ld   a, b                                        ; $5453: $78
	ld   d, d                                        ; $5454: $52
	sub  [hl]                                        ; $5455: $96
	rst  $38                                         ; $5456: $ff
	rst  $38                                         ; $5457: $ff
	dec  c                                           ; $5458: $0d
	nop                                              ; $5459: $00
	ld   a, [bc]                                     ; $545a: $0a
	rrca                                             ; $545b: $0f
	nop                                              ; $545c: $00
	ld   bc, $d001                                   ; $545d: $01 $01 $d0
	ret  nc                                          ; $5460: $d0

	rst  $38                                         ; $5461: $ff
	rst  $38                                         ; $5462: $ff
	ld   l, [hl]                                     ; $5463: $6e
	ld   d, d                                        ; $5464: $52
	ld   h, [hl]                                     ; $5465: $66
	sub  l                                           ; $5466: $95
	ld   d, h                                        ; $5467: $54
	add  h                                           ; $5468: $84
	sbc  [hl]                                        ; $5469: $9e
	dec  c                                           ; $546a: $0d
	rst  JumpTable                                         ; $546b: $df
	db   $ec                                         ; $546c: $ec
	ei                                               ; $546d: $fb
	ld   a, h                                        ; $546e: $7c
	inc  bc                                          ; $546f: $03
	add  hl, de                                      ; $5470: $19
	dec  b                                           ; $5471: $05
	jr   nz, jr_042_54f1                             ; $5472: $20 $7d

	ld   l, a                                        ; $5474: $6f
	sub  c                                           ; $5475: $91
	and  c                                           ; $5476: $a1
	halt                                             ; $5477: $76
	dec  c                                           ; $5478: $0d
	ld   h, l                                        ; $5479: $65
	ld   [hl], h                                     ; $547a: $74
	sbc  c                                           ; $547b: $99
	sub  [hl]                                        ; $547c: $96
	sbc  a                                           ; $547d: $9f
	ld   a, l                                        ; $547e: $7d
	ld   d, d                                        ; $547f: $52
	ld   [hl], a                                     ; $5480: $77
	ld   d, h                                        ; $5481: $54
	ld   l, h                                        ; $5482: $6c
	sbc  a                                           ; $5483: $9f
	dec  c                                           ; $5484: $0d
	nop                                              ; $5485: $00
	ld   a, [bc]                                     ; $5486: $0a
	db   $10                                         ; $5487: $10
	ld   hl, $1c00                                   ; $5488: $21 $00 $1c
	inc  b                                           ; $548b: $04
	ld   b, $06                                      ; $548c: $06 $06
	ld   bc, $9d54                                   ; $548e: $01 $54 $9d
	ld   d, b                                        ; $5491: $50
	db   $fc                                         ; $5492: $fc
	rst  JumpTable                                         ; $5493: $df
	db   $ec                                         ; $5494: $ec
	ei                                               ; $5495: $fb
	sbc  [hl]                                        ; $5496: $9e
	ld   h, a                                        ; $5497: $67
	ld   [hl], c                                     ; $5498: $71
	ld   h, d                                        ; $5499: $62
	ld   e, l                                        ; $549a: $5d
	dec  c                                           ; $549b: $0d
	ld   d, h                                        ; $549c: $54
	sbc  d                                           ; $549d: $9a
	ld   h, l                                        ; $549e: $65
	ld   l, e                                        ; $549f: $6b
	ld   d, h                                        ; $54a0: $54
	ld   l, [hl]                                     ; $54a1: $6e
	sub  [hl]                                        ; $54a2: $96
	ld   a, [$0dfa]                                  ; $54a3: $fa $fa $0d
	nop                                              ; $54a6: $00
	ld   a, [bc]                                     ; $54a7: $0a
	ld   b, $3e                                      ; $54a8: $06 $3e
	ld   [bc], a                                     ; $54aa: $02
	inc  e                                           ; $54ab: $1c
	inc  b                                           ; $54ac: $04
	ld   b, $06                                      ; $54ad: $06 $06
	dec  b                                           ; $54af: $05
	ld   b, b                                        ; $54b0: $40
	db   $e3                                         ; $54b1: $e3
	ld   bc, $0000                                   ; $54b2: $01 $00 $00
	ld   bc, $526f                                   ; $54b5: $01 $6f $52
	ld   [bc], a                                     ; $54b8: $02
	inc  de                                          ; $54b9: $13
	ld   l, a                                        ; $54ba: $6f
	sub  c                                           ; $54bb: $91
	and  c                                           ; $54bc: $a1
	ld   a, [$a50d]                                  ; $54bd: $fa $0d $a5
	call $df7c                                       ; $54c0: $cd $7c $df
	db   $ec                                         ; $54c3: $ec
	ei                                               ; $54c4: $fb
	halt                                             ; $54c5: $76
	ld   a, b                                        ; $54c6: $78
	ld   e, c                                        ; $54c7: $59
	sub  [hl]                                        ; $54c8: $96
	ld   e, l                                        ; $54c9: $5d
	ld   a, b                                        ; $54ca: $78
	sbc  d                                           ; $54cb: $9a
	ld   l, l                                        ; $54cc: $6d
	dec  c                                           ; $54cd: $0d
	adc  l                                           ; $54ce: $8d
	ld   l, l                                        ; $54cf: $6d
	ld   d, d                                        ; $54d0: $52
	ld   l, [hl]                                     ; $54d1: $6e
	ld   a, e                                        ; $54d2: $7b
	sbc  a                                           ; $54d3: $9f
	dec  c                                           ; $54d4: $0d
	nop                                              ; $54d5: $00
	ld   a, [bc]                                     ; $54d6: $0a
	dec  b                                           ; $54d7: $05
	ld   b, b                                        ; $54d8: $40
	ld   d, c                                        ; $54d9: $51
	ld   bc, $0000                                   ; $54da: $01 $00 $00
	inc  e                                           ; $54dd: $1c
	inc  b                                           ; $54de: $04
	ld   bc, $0101                                   ; $54df: $01 $01 $01
	ld   l, a                                        ; $54e2: $6f
	ld   d, d                                        ; $54e3: $52
	ld   [bc], a                                     ; $54e4: $02
	inc  de                                          ; $54e5: $13
	ld   l, a                                        ; $54e6: $6f
	sub  c                                           ; $54e7: $91
	and  c                                           ; $54e8: $a1
	sbc  [hl]                                        ; $54e9: $9e
	cp   d                                           ; $54ea: $ba
	or   l                                           ; $54eb: $b5
	and  l                                           ; $54ec: $a5
	ld   a, [$5a0d]                                  ; $54ed: $fa $0d $5a
	and  c                                           ; $54f0: $a1

jr_042_54f1:
	ld   a, [hl]                                     ; $54f1: $7e
	ld   [hl], c                                     ; $54f2: $71
	ld   l, l                                        ; $54f3: $6d
	ld   a, e                                        ; $54f4: $7b
	db   $fc                                         ; $54f5: $fc
	sbc  a                                           ; $54f6: $9f
	dec  c                                           ; $54f7: $0d
	nop                                              ; $54f8: $00
	ld   a, [bc]                                     ; $54f9: $0a
	inc  e                                           ; $54fa: $1c
	inc  b                                           ; $54fb: $04
	nop                                              ; $54fc: $00
	nop                                              ; $54fd: $00
	ld   bc, $9166                                   ; $54fe: $01 $66 $91
	ld   d, b                                        ; $5501: $50
	sbc  [hl]                                        ; $5502: $9e
	ld   l, e                                        ; $5503: $6b
	and  c                                           ; $5504: $a1
	ld   a, b                                        ; $5505: $78
	ld   l, a                                        ; $5506: $6f
	ld   d, d                                        ; $5507: $52
	ld   [bc], a                                     ; $5508: $02
	inc  de                                          ; $5509: $13
	ld   l, a                                        ; $550a: $6f
	sub  c                                           ; $550b: $91
	and  c                                           ; $550c: $a1
	ld   a, c                                        ; $550d: $79
	dec  c                                           ; $550e: $0d
	ld   h, d                                        ; $550f: $62
	adc  c                                           ; $5510: $89
	ld   d, h                                        ; $5511: $54
	add  c                                           ; $5512: $81
	and  b                                           ; $5513: $a0
	ld   d, b                                        ; $5514: $50
	ld   h, b                                        ; $5515: $60
	adc  h                                           ; $5516: $8c
	ei                                               ; $5517: $fb
	ld   h, a                                        ; $5518: $67
	sbc  a                                           ; $5519: $9f
	dec  c                                           ; $551a: $0d
	nop                                              ; $551b: $00
	ld   a, [bc]                                     ; $551c: $0a
	ld   bc, $a5a3                                   ; $551d: $01 $a3 $a5
	db   $ec                                         ; $5520: $ec
	cp   d                                           ; $5521: $ba
	ld   a, h                                        ; $5522: $7c
	add  b                                           ; $5523: $80
	ld   [hl], c                                     ; $5524: $71
	ld   h, e                                        ; $5525: $63
	ld   [hl], d                                     ; $5526: $72
	sbc  l                                           ; $5527: $9d
	ld   h, h                                        ; $5528: $64
	dec  c                                           ; $5529: $0d
	and  l                                           ; $552a: $a5
	db   $ec                                         ; $552b: $ec
	cp   d                                           ; $552c: $ba
	di                                               ; $552d: $f3
	rst  JumpTable                                         ; $552e: $df
	db   $ec                                         ; $552f: $ec
	ld   [$c4ce], a                                  ; $5530: $ea $ce $c4
	ret                                              ; $5533: $c9


	dec  c                                           ; $5534: $0d
	and  b                                           ; $5535: $a0
	adc  l                                           ; $5536: $8d
	ld   l, c                                        ; $5537: $69
	ld   [hl], h                                     ; $5538: $74
	ld   d, b                                        ; $5539: $50
	ld   h, b                                        ; $553a: $60
	sbc  c                                           ; $553b: $99
	ld   a, e                                        ; $553c: $7b
	sbc  a                                           ; $553d: $9f
	dec  c                                           ; $553e: $0d
	nop                                              ; $553f: $00
	ld   a, [bc]                                     ; $5540: $0a
	dec  c                                           ; $5541: $0d
	nop                                              ; $5542: $00
	nop                                              ; $5543: $00
	rrca                                             ; $5544: $0f
	nop                                              ; $5545: $00
	ld   bc, $9d23                                   ; $5546: $01 $23 $9d
	inc  e                                           ; $5549: $1c
	inc  b                                           ; $554a: $04
	nop                                              ; $554b: $00
	nop                                              ; $554c: $00
	ld   bc, $7c61                                   ; $554d: $01 $61 $7c
	pop  af                                          ; $5550: $f1
	or   a                                           ; $5551: $b7
	ld   a, l                                        ; $5552: $7d
	ld   a, e                                        ; $5553: $7b
	sbc  [hl]                                        ; $5554: $9e
	ld   l, l                                        ; $5555: $6d
	ld   d, d                                        ; $5556: $52
	sbc  b                                           ; $5557: $98
	sub  l                                           ; $5558: $95
	ld   e, l                                        ; $5559: $5d
	and  b                                           ; $555a: $a0
	dec  c                                           ; $555b: $0d
	ld   e, c                                        ; $555c: $59
	ld   d, d                                        ; $555d: $52
	add  e                                           ; $555e: $83
	ld   e, l                                        ; $555f: $5d
	ld   h, a                                        ; $5560: $67
	sbc  c                                           ; $5561: $99
	pop  af                                          ; $5562: $f1
	or   a                                           ; $5563: $b7
	ld   a, b                                        ; $5564: $78
	and  c                                           ; $5565: $a1
	ld   l, [hl]                                     ; $5566: $6e
	sub  [hl]                                        ; $5567: $96
	sbc  a                                           ; $5568: $9f
	dec  c                                           ; $5569: $0d
	ld   h, [hl]                                     ; $556a: $66
	sub  c                                           ; $556b: $91
	sbc  [hl]                                        ; $556c: $9e
	ld   d, d                                        ; $556d: $52
	ld   [hl], c                                     ; $556e: $71
	ld   e, l                                        ; $556f: $5d
	sub  [hl]                                        ; $5570: $96
	ei                                               ; $5571: $fb
	ei                                               ; $5572: $fb
	ei                                               ; $5573: $fb
	ei                                               ; $5574: $fb
	ld   a, [$000d]                                  ; $5575: $fa $0d $00
	ld   a, [bc]                                     ; $5578: $0a
	inc  e                                           ; $5579: $1c
	inc  b                                           ; $557a: $04
	ld   [bc], a                                     ; $557b: $02
	ld   [bc], a                                     ; $557c: $02
	ld   sp, $2040                                   ; $557d: $31 $40 $20
	ld   bc, $00ff                                   ; $5580: $01 $ff $00
	ld   bc, $eca5                                   ; $5583: $01 $a5 $ec
	cp   d                                           ; $5586: $ba
	di                                               ; $5587: $f3
	rst  JumpTable                                         ; $5588: $df
	db   $ec                                         ; $5589: $ec
	ld   [$fbce], a                                  ; $558a: $ea $ce $fb
	ei                                               ; $558d: $fb
	ei                                               ; $558e: $fb
	call nz, $fac9                                   ; $558f: $c4 $c9 $fa
	dec  c                                           ; $5592: $0d
	nop                                              ; $5593: $00
	ld   a, [bc]                                     ; $5594: $0a
	dec  c                                           ; $5595: $0d
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	cpl                                              ; $5598: $2f
	inc  b                                           ; $5599: $04
	ld   c, $9d                                      ; $559a: $0e $9d
	rrca                                             ; $559c: $0f
	nop                                              ; $559d: $00
	ld   bc, $0101                                   ; $559e: $01 $01 $01
	inc  bc                                          ; $55a1: $03
	inc  b                                           ; $55a2: $04
	dec  c                                           ; $55a3: $0d
	dec  b                                           ; $55a4: $05
	ld   a, [bc]                                     ; $55a5: $0a
	ld   e, d                                        ; $55a6: $5a
	inc  bc                                          ; $55a7: $03
	ld   d, a                                        ; $55a8: $57
	ld   [bc], a                                     ; $55a9: $02
	sub  e                                           ; $55aa: $93
	inc  b                                           ; $55ab: $04
	ld   a, h                                        ; $55ac: $7c
	ld   h, l                                        ; $55ad: $65
	ld   l, l                                        ; $55ae: $6d
	ld   a, [$01fa]                                  ; $55af: $fa $fa $01
	inc  b                                           ; $55b2: $04
	dec  c                                           ; $55b3: $0d
	nop                                              ; $55b4: $00
	ld   a, [bc]                                     ; $55b5: $0a
	inc  e                                           ; $55b6: $1c
	inc  b                                           ; $55b7: $04
	ld   bc, $0101                                   ; $55b8: $01 $01 $01
	ld   [hl], a                                     ; $55bb: $77
	ld   e, b                                        ; $55bc: $58
	sbc  [hl]                                        ; $55bd: $9e
	ld   l, a                                        ; $55be: $6f
	ld   d, d                                        ; $55bf: $52
	ld   [bc], a                                     ; $55c0: $02
	inc  de                                          ; $55c1: $13
	ld   l, a                                        ; $55c2: $6f
	sub  c                                           ; $55c3: $91
	and  c                                           ; $55c4: $a1
	sbc  a                                           ; $55c5: $9f
	dec  c                                           ; $55c6: $0d
	ld   l, l                                        ; $55c7: $6d
	ld   d, d                                        ; $55c8: $52
	sbc  b                                           ; $55c9: $98
	sub  l                                           ; $55ca: $95
	ld   e, l                                        ; $55cb: $5d
	ld   e, d                                        ; $55cc: $5a
	ld   e, c                                        ; $55cd: $59
	ld   d, d                                        ; $55ce: $52
	add  e                                           ; $55cf: $83
	ld   e, l                                        ; $55d0: $5d
	ld   h, l                                        ; $55d1: $65
	ld   l, l                                        ; $55d2: $6d
	dec  c                                           ; $55d3: $0d
	ld   [hl], l                                     ; $55d4: $75
	ld   h, l                                        ; $55d5: $65
	sub  l                                           ; $55d6: $95
	sbc  a                                           ; $55d7: $9f
	dec  c                                           ; $55d8: $0d
	nop                                              ; $55d9: $00
	ld   a, [bc]                                     ; $55da: $0a
	ld   bc, $526f                                   ; $55db: $01 $6f $52
	ld   [bc], a                                     ; $55de: $02
	inc  de                                          ; $55df: $13
	ld   l, a                                        ; $55e0: $6f
	sub  c                                           ; $55e1: $91
	and  c                                           ; $55e2: $a1
	sub  b                                           ; $55e3: $90
	sbc  [hl]                                        ; $55e4: $9e
	ld   e, l                                        ; $55e5: $5d
	and  c                                           ; $55e6: $a1
	sbc  d                                           ; $55e7: $9a
	and  c                                           ; $55e8: $a1
	and  b                                           ; $55e9: $a0
	dec  c                                           ; $55ea: $0d
	ld   [hl], d                                     ; $55eb: $72
	adc  a                                           ; $55ec: $8f
	ld   a, [hl]                                     ; $55ed: $7e
	sbc  [hl]                                        ; $55ee: $9e
	and  e                                           ; $55ef: $a3
	and  l                                           ; $55f0: $a5
	db   $ec                                         ; $55f1: $ec
	cp   d                                           ; $55f2: $ba
	ld   a, h                                        ; $55f3: $7c
	sub  [hl]                                        ; $55f4: $96
	ld   d, h                                        ; $55f5: $54
	ld   a, b                                        ; $55f6: $78
	pop  af                                          ; $55f7: $f1
	or   a                                           ; $55f8: $b7
	dec  c                                           ; $55f9: $0d
	and  b                                           ; $55fa: $a0
	ld   [hl], d                                     ; $55fb: $72
	ld   e, c                                        ; $55fc: $59
	ld   d, [hl]                                     ; $55fd: $56
	sbc  c                                           ; $55fe: $99
	sub  [hl]                                        ; $55ff: $96
	ld   d, h                                        ; $5600: $54
	ld   a, c                                        ; $5601: $79
	ld   a, b                                        ; $5602: $78
	sbc  c                                           ; $5603: $99
	sub  [hl]                                        ; $5604: $96
	sbc  a                                           ; $5605: $9f
	dec  c                                           ; $5606: $0d
	nop                                              ; $5607: $00
	ld   a, [bc]                                     ; $5608: $0a
	ld   bc, $9166                                   ; $5609: $01 $66 $91
	ld   d, b                                        ; $560c: $50
	ld   a, e                                        ; $560d: $7b
	sbc  a                                           ; $560e: $9f
	dec  c                                           ; $560f: $0d
	nop                                              ; $5610: $00
	ld   a, [bc]                                     ; $5611: $0a
	dec  c                                           ; $5612: $0d
	nop                                              ; $5613: $00
	nop                                              ; $5614: $00
	rrca                                             ; $5615: $0f
	nop                                              ; $5616: $00
	ld   bc, $ba01                                   ; $5617: $01 $01 $ba
	or   l                                           ; $561a: $b5
	and  l                                           ; $561b: $a5
	ld   [bc], a                                     ; $561c: $02
	adc  h                                           ; $561d: $8c
	ld   l, [hl]                                     ; $561e: $6e
	ld   [hl], c                                     ; $561f: $71
	ld   l, l                                        ; $5620: $6d
	ld   a, b                                        ; $5621: $78
	rst  $38                                         ; $5622: $ff
	rst  $38                                         ; $5623: $ff
	dec  c                                           ; $5624: $0d
	inc  b                                           ; $5625: $04
	ld   l, l                                        ; $5626: $6d
	sub  b                                           ; $5627: $90
	ld   d, b                                        ; $5628: $50
	and  c                                           ; $5629: $a1
	ld   a, b                                        ; $562a: $78
	ld   [bc], a                                     ; $562b: $02
	adc  h                                           ; $562c: $8c
	ld   e, d                                        ; $562d: $5a
	ld   [hl], l                                     ; $562e: $75
	ld   e, e                                        ; $562f: $5b
	sbc  c                                           ; $5630: $99
	sub  [hl]                                        ; $5631: $96
	ld   d, h                                        ; $5632: $54
	ld   a, c                                        ; $5633: $79
	dec  c                                           ; $5634: $0d
	ld   e, d                                        ; $5635: $5a
	and  c                                           ; $5636: $a1
	ld   a, [hl]                                     ; $5637: $7e
	sbc  e                                           ; $5638: $9b
	ld   d, h                                        ; $5639: $54
	sbc  a                                           ; $563a: $9f
	dec  c                                           ; $563b: $0d
	nop                                              ; $563c: $00
	ld   a, [bc]                                     ; $563d: $0a
	dec  b                                           ; $563e: $05
	add  b                                           ; $563f: $80
	cp   l                                           ; $5640: $bd
	ld   bc, $0001                                   ; $5641: $01 $01 $00
	nop                                              ; $5644: $00
	nop                                              ; $5645: $00
	ld   c, $01                                      ; $5646: $0e $01
	rrca                                             ; $5648: $0f
	nop                                              ; $5649: $00
	ld   bc, $0502                                   ; $564a: $01 $02 $05
	ld   b, b                                        ; $564d: $40
	db   $e4                                         ; $564e: $e4
	inc  bc                                          ; $564f: $03
	db   $e4                                         ; $5650: $e4
	ld   bc, $2801                                   ; $5651: $01 $01 $28
	nop                                              ; $5654: $00
	rlca                                             ; $5655: $07
	ld   b, b                                        ; $5656: $40
	nop                                              ; $5657: $00
	inc  bc                                          ; $5658: $03
	db   $e4                                         ; $5659: $e4
	ld   bc, $2402                                   ; $565a: $01 $02 $24
	nop                                              ; $565d: $00
	ld   bc, $546b                                   ; $565e: $01 $6b $54
	ld   l, [hl]                                     ; $5661: $6e
	sbc  [hl]                                        ; $5662: $9e
	ld   [bc], a                                     ; $5663: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5664: $cf
	dec  b                                           ; $5665: $05
	ld   a, [de]                                     ; $5666: $1a
	ld   h, e                                        ; $5667: $63
	and  c                                           ; $5668: $a1
	ld   e, c                                        ; $5669: $59
	sub  a                                           ; $566a: $97
	dec  c                                           ; $566b: $0d
	sub  b                                           ; $566c: $90
	sub  a                                           ; $566d: $97
	ld   [hl], c                                     ; $566e: $71
	ld   l, l                                        ; $566f: $6d
	jp   nc, $edbb                                   ; $5670: $d2 $bb $ed

	ld   [hl], l                                     ; $5673: $75
	sub  b                                           ; $5674: $90
	dec  c                                           ; $5675: $0d
	sub  d                                           ; $5676: $92
	ld   [hl], c                                     ; $5677: $71
	ld   [hl], h                                     ; $5678: $74
	adc  l                                           ; $5679: $8d
	sub  [hl]                                        ; $567a: $96
	ld   d, h                                        ; $567b: $54
	ld   e, c                                        ; $567c: $59
	ld   a, b                                        ; $567d: $78
	rst  $38                                         ; $567e: $ff
	rst  $38                                         ; $567f: $ff
	dec  c                                           ; $5680: $0d
	nop                                              ; $5681: $00
	ld   a, [bc]                                     ; $5682: $0a
	ld   b, $4f                                      ; $5683: $06 $4f
	nop                                              ; $5685: $00
	ld   bc, $bbd2                                   ; $5686: $01 $d2 $bb
	db   $ed                                         ; $5689: $ed
	ld   [hl], l                                     ; $568a: $75
	sub  b                                           ; $568b: $90
	ld   h, a                                        ; $568c: $67
	sbc  c                                           ; $568d: $99
	ld   e, c                                        ; $568e: $59
	ld   a, b                                        ; $568f: $78
	rst  $38                                         ; $5690: $ff
	rst  $38                                         ; $5691: $ff
	dec  c                                           ; $5692: $0d
	nop                                              ; $5693: $00
	ld   a, [bc]                                     ; $5694: $0a
	rlca                                             ; $5695: $07
	ld   h, h                                        ; $5696: $64
	nop                                              ; $5697: $00
	ld   [bc], a                                     ; $5698: $02
	nop                                              ; $5699: $00
	ld   bc, $220a                                   ; $569a: $01 $0a $22
	nop                                              ; $569d: $00
	rlca                                             ; $569e: $07
	ld   [hl], b                                     ; $569f: $70
	nop                                              ; $56a0: $00
	ld   [bc], a                                     ; $56a1: $02
	nop                                              ; $56a2: $00
	ld   bc, $2211                                   ; $56a3: $01 $11 $22
	nop                                              ; $56a6: $00
	ld   b, $85                                      ; $56a7: $06 $85
	nop                                              ; $56a9: $00
	rlca                                             ; $56aa: $07
	and  e                                           ; $56ab: $a3
	nop                                              ; $56ac: $00
	inc  bc                                          ; $56ad: $03
	db   $e4                                         ; $56ae: $e4
	ld   bc, $2204                                   ; $56af: $01 $04 $22
	nop                                              ; $56b2: $00
	ld   b, $c0                                      ; $56b3: $06 $c0
	nop                                              ; $56b5: $00
	rlca                                             ; $56b6: $07
	and  e                                           ; $56b7: $a3
	nop                                              ; $56b8: $00
	inc  bc                                          ; $56b9: $03
	db   $e4                                         ; $56ba: $e4
	ld   bc, $2204                                   ; $56bb: $01 $04 $22
	nop                                              ; $56be: $00
	rlca                                             ; $56bf: $07
	ret  nz                                          ; $56c0: $c0

	nop                                              ; $56c1: $00
	inc  bc                                          ; $56c2: $03
	db   $e4                                         ; $56c3: $e4
	ld   bc, $2206                                   ; $56c4: $01 $06 $22
	nop                                              ; $56c7: $00
	ld   b, $db                                      ; $56c8: $06 $db
	nop                                              ; $56ca: $00
	rlca                                             ; $56cb: $07
	and  e                                           ; $56cc: $a3
	nop                                              ; $56cd: $00
	inc  bc                                          ; $56ce: $03
	db   $e4                                         ; $56cf: $e4
	ld   bc, $2204                                   ; $56d0: $01 $04 $22
	nop                                              ; $56d3: $00
	rlca                                             ; $56d4: $07
	ret  nz                                          ; $56d5: $c0

	nop                                              ; $56d6: $00
	inc  bc                                          ; $56d7: $03
	db   $e4                                         ; $56d8: $e4
	ld   bc, $2206                                   ; $56d9: $01 $06 $22
	nop                                              ; $56dc: $00
	rlca                                             ; $56dd: $07
	db   $db                                         ; $56de: $db
	nop                                              ; $56df: $00
	inc  bc                                          ; $56e0: $03
	db   $e4                                         ; $56e1: $e4
	ld   bc, $2208                                   ; $56e2: $01 $08 $22
	nop                                              ; $56e5: $00
	ld   b, $f5                                      ; $56e6: $06 $f5
	nop                                              ; $56e8: $00
	dec  hl                                          ; $56e9: $2b
	dec  b                                           ; $56ea: $05
	nop                                              ; $56eb: $00
	rrca                                             ; $56ec: $0f
	nop                                              ; $56ed: $00
	ld   bc, $2a10                                   ; $56ee: $01 $10 $2a
	rst  $38                                         ; $56f1: $ff
	ld   bc, $6e8c                                   ; $56f2: $01 $8c $6e
	adc  h                                           ; $56f5: $8c
	ld   l, [hl]                                     ; $56f6: $6e
	sbc  [hl]                                        ; $56f7: $9e
	ld   e, c                                        ; $56f8: $59
	ld   e, c                                        ; $56f9: $59
	sbc  b                                           ; $56fa: $98
	ld   l, e                                        ; $56fb: $6b
	ld   d, h                                        ; $56fc: $54
	ld   l, [hl]                                     ; $56fd: $6e
	ld   a, b                                        ; $56fe: $78
	ld   d, b                                        ; $56ff: $50
	rst  $38                                         ; $5700: $ff
	dec  c                                           ; $5701: $0d
	nop                                              ; $5702: $00
	ld   a, [bc]                                     ; $5703: $0a
	inc  b                                           ; $5704: $04
	nop                                              ; $5705: $00
	dec  hl                                          ; $5706: $2b
	dec  b                                           ; $5707: $05
	ld   bc, $000f                                   ; $5708: $01 $0f $00
	ld   bc, $2b10                                   ; $570b: $01 $10 $2b
	rst  $38                                         ; $570e: $ff
	ld   bc, $9ea1                                   ; $570f: $01 $a1 $9e
	adc  h                                           ; $5712: $8c
	ld   d, b                                        ; $5713: $50
	ld   h, c                                        ; $5714: $61
	and  c                                           ; $5715: $a1
	ld   a, b                                        ; $5716: $78
	sub  b                                           ; $5717: $90
	and  c                                           ; $5718: $a1
	ld   e, c                                        ; $5719: $59
	ld   a, b                                        ; $571a: $78
	sbc  a                                           ; $571b: $9f
	dec  c                                           ; $571c: $0d
	nop                                              ; $571d: $00
	ld   a, [bc]                                     ; $571e: $0a
	inc  b                                           ; $571f: $04
	nop                                              ; $5720: $00
	dec  hl                                          ; $5721: $2b
	dec  b                                           ; $5722: $05
	ld   [bc], a                                     ; $5723: $02
	rrca                                             ; $5724: $0f
	nop                                              ; $5725: $00
	ld   bc, $2c10                                   ; $5726: $01 $10 $2c
	rst  $38                                         ; $5729: $ff
	ld   bc, $6596                                   ; $572a: $01 $96 $65
	sbc  [hl]                                        ; $572d: $9e
	sub  b                                           ; $572e: $90
	ld   d, h                                        ; $572f: $54
	ld   h, a                                        ; $5730: $67
	ld   h, c                                        ; $5731: $61
	ld   h, l                                        ; $5732: $65
	ld   l, [hl]                                     ; $5733: $6e
	rst  $38                                         ; $5734: $ff
	rst  $38                                         ; $5735: $ff
	dec  c                                           ; $5736: $0d
	nop                                              ; $5737: $00
	ld   a, [bc]                                     ; $5738: $0a
	inc  b                                           ; $5739: $04
	nop                                              ; $573a: $00
	dec  hl                                          ; $573b: $2b
	dec  b                                           ; $573c: $05
	inc  bc                                          ; $573d: $03
	rrca                                             ; $573e: $0f
	nop                                              ; $573f: $00
	ld   bc, $2d10                                   ; $5740: $01 $10 $2d
	rst  $38                                         ; $5743: $ff
	ld   bc, $7192                                   ; $5744: $01 $92 $71
	ld   l, l                                        ; $5747: $6d
	ld   a, [$0dfa]                                  ; $5748: $fa $fa $0d
	dec  b                                           ; $574b: $05
	and  b                                           ; $574c: $a0
	inc  bc                                          ; $574d: $03
	ld   [de], a                                     ; $574e: $12
	ld   l, [hl]                                     ; $574f: $6e
	ld   a, [$0dfa]                                  ; $5750: $fa $fa $0d
	nop                                              ; $5753: $00
	ld   a, [bc]                                     ; $5754: $0a
	inc  b                                           ; $5755: $04
	ld   bc, $6596                                   ; $5756: $01 $96 $65
	ld   a, [$0dfa]                                  ; $5759: $fa $fa $0d
	ld   [bc], a                                     ; $575c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $575d: $cf
	dec  b                                           ; $575e: $05
	ld   a, [de]                                     ; $575f: $1a
	ld   h, e                                        ; $5760: $63
	and  c                                           ; $5761: $a1
	ld   a, c                                        ; $5762: $79
	ld   [bc], a                                     ; $5763: $02
	sub  l                                           ; $5764: $95
	ld   l, c                                        ; $5765: $69
	ld   a, c                                        ; $5766: $79
	ld   [bc], a                                     ; $5767: $02
	ld   a, a                                        ; $5768: $7f
	ld   h, c                                        ; $5769: $61
	ld   d, h                                        ; $576a: $54
	ld   a, [$0dfa]                                  ; $576b: $fa $fa $0d
	nop                                              ; $576e: $00
	ld   a, [bc]                                     ; $576f: $0a
	inc  hl                                          ; $5770: $23
	ld   c, h                                        ; $5771: $4c
	inc  d                                           ; $5772: $14
	ld   b, $01                                      ; $5773: $06 $01
	ld   bc, $a161                                   ; $5775: $01 $61 $a1
	ld   a, c                                        ; $5778: $79
	ld   l, a                                        ; $5779: $6f
	ld   a, l                                        ; $577a: $7d
	sbc  [hl]                                        ; $577b: $9e
	ld   [bc], a                                     ; $577c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $577d: $cf
	dec  b                                           ; $577e: $05
	ld   a, [de]                                     ; $577f: $1a
	ld   h, e                                        ; $5780: $63
	and  c                                           ; $5781: $a1
	dec  c                                           ; $5782: $0d
	ld   d, d                                        ; $5783: $52
	sub  a                                           ; $5784: $97
	ld   [hl], c                                     ; $5785: $71
	ld   h, l                                        ; $5786: $65
	sub  c                                           ; $5787: $91
	ld   d, d                                        ; $5788: $52
	adc  h                                           ; $5789: $8c
	ld   h, a                                        ; $578a: $67
	ld   e, c                                        ; $578b: $59
	ld   sp, hl                                      ; $578c: $f9
	dec  c                                           ; $578d: $0d
	nop                                              ; $578e: $00
	ld   a, [bc]                                     ; $578f: $0a
	inc  d                                           ; $5790: $14
	ld   a, [bc]                                     ; $5791: $0a
	ld   bc, $4d0e                                   ; $5792: $01 $0e $4d
	inc  e                                           ; $5795: $1c
	dec  b                                           ; $5796: $05
	nop                                              ; $5797: $00
	nop                                              ; $5798: $00
	ld   bc, hScriptOpcodeParams+1                                   ; $5799: $01 $a1 $ff
	rst  $38                                         ; $579c: $ff
	ld   sp, hl                                      ; $579d: $f9
	dec  c                                           ; $579e: $0d
	ld   a, b                                        ; $579f: $78
	and  c                                           ; $57a0: $a1
	sub  d                                           ; $57a1: $92
	sbc  [hl]                                        ; $57a2: $9e
	ld   [$7d00], sp                                 ; $57a3: $08 $00 $7d
	and  c                                           ; $57a6: $a1
	dec  c                                           ; $57a7: $0d
	sub  d                                           ; $57a8: $92
	ld   a, b                                        ; $57a9: $78
	ld   d, d                                        ; $57aa: $52
	ld   e, c                                        ; $57ab: $59
	sbc  a                                           ; $57ac: $9f
	dec  c                                           ; $57ad: $0d
	nop                                              ; $57ae: $00
	ld   a, [bc]                                     ; $57af: $0a
	ld   bc, $7877                                   ; $57b0: $01 $77 $78
	ld   d, d                                        ; $57b3: $52
	ld   h, l                                        ; $57b4: $65
	ld   l, l                                        ; $57b5: $6d
	and  c                                           ; $57b6: $a1
	sub  d                                           ; $57b7: $92
	ld   sp, hl                                      ; $57b8: $f9
	dec  c                                           ; $57b9: $0d
	ld   l, e                                        ; $57ba: $6b
	and  c                                           ; $57bb: $a1
	ld   a, b                                        ; $57bc: $78
	ld   a, c                                        ; $57bd: $79
	ld   d, b                                        ; $57be: $50
	sbc  l                                           ; $57bf: $9d
	ld   [hl], h                                     ; $57c0: $74
	ld   [hl], h                                     ; $57c1: $74
	rst  $38                                         ; $57c2: $ff
	rst  $38                                         ; $57c3: $ff
	dec  c                                           ; $57c4: $0d
	nop                                              ; $57c5: $00
	ld   a, [bc]                                     ; $57c6: $0a
	rrca                                             ; $57c7: $0f
	nop                                              ; $57c8: $00
	ld   bc, $5001                                   ; $57c9: $01 $01 $50
	ld   a, h                                        ; $57cc: $7c
	sbc  [hl]                                        ; $57cd: $9e
	ld   [bc], a                                     ; $57ce: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57cf: $cf
	dec  b                                           ; $57d0: $05
	ld   a, [de]                                     ; $57d1: $1a
	ld   h, e                                        ; $57d2: $63
	and  c                                           ; $57d3: $a1
	ld   a, c                                        ; $57d4: $79
	inc  bc                                          ; $57d5: $03
	jp   hl                                          ; $57d6: $e9


	ld   d, d                                        ; $57d7: $52
	ld   l, l                                        ; $57d8: $6d
	dec  c                                           ; $57d9: $0d
	jp   nc, $edbb                                   ; $57da: $d2 $bb $ed

	ld   e, d                                        ; $57dd: $5a
	dec  b                                           ; $57de: $05
	and  b                                           ; $57df: $a0
	inc  bc                                          ; $57e0: $03
	ld   [de], a                                     ; $57e1: $12
	ld   h, l                                        ; $57e2: $65
	ld   l, l                                        ; $57e3: $6d
	ld   a, h                                        ; $57e4: $7c
	ld   [hl], l                                     ; $57e5: $75
	dec  c                                           ; $57e6: $0d
	ld   e, b                                        ; $57e7: $58
	ld   [bc], a                                     ; $57e8: $02
	sub  l                                           ; $57e9: $95
	ld   l, c                                        ; $57ea: $69
	ld   h, l                                        ; $57eb: $65
	ld   l, l                                        ; $57ec: $6d
	ld   e, l                                        ; $57ed: $5d
	ld   [hl], h                                     ; $57ee: $74
	rst  $38                                         ; $57ef: $ff
	rst  $38                                         ; $57f0: $ff
	dec  c                                           ; $57f1: $0d
	nop                                              ; $57f2: $00
	ld   a, [bc]                                     ; $57f3: $0a
	db   $10                                         ; $57f4: $10
	dec  l                                           ; $57f5: $2d
	nop                                              ; $57f6: $00
	ld   b, $b4                                      ; $57f7: $06 $b4
	ld   bc, $051c                                   ; $57f9: $01 $1c $05
	inc  bc                                          ; $57fc: $03
	inc  bc                                          ; $57fd: $03
	dec  b                                           ; $57fe: $05
	ld   b, b                                        ; $57ff: $40
	db   $e4                                         ; $5800: $e4
	ld   bc, $0000                                   ; $5801: $01 $00 $00
	ld   bc, $9d54                                   ; $5804: $01 $54 $9d
	sbc  [hl]                                        ; $5807: $9e
	adc  c                                           ; $5808: $89
	and  c                                           ; $5809: $a1
	adc  h                                           ; $580a: $8c
	sub  d                                           ; $580b: $92
	ld   a, [$900d]                                  ; $580c: $fa $0d $90
	ld   d, h                                        ; $580f: $54
	dec  b                                           ; $5810: $05
	and  b                                           ; $5811: $a0
	inc  bc                                          ; $5812: $03
	ld   [de], a                                     ; $5813: $12
	ld   h, l                                        ; $5814: $65
	ld   l, l                                        ; $5815: $6d
	and  c                                           ; $5816: $a1
	ld   e, c                                        ; $5817: $59
	ld   d, d                                        ; $5818: $52
	ld   a, b                                        ; $5819: $78
	db   $fc                                         ; $581a: $fc
	sbc  a                                           ; $581b: $9f
	dec  c                                           ; $581c: $0d
	nop                                              ; $581d: $00
	ld   a, [bc]                                     ; $581e: $0a
	dec  b                                           ; $581f: $05
	ld   b, b                                        ; $5820: $40
	ld   d, d                                        ; $5821: $52
	ld   bc, $0000                                   ; $5822: $01 $00 $00
	inc  e                                           ; $5825: $1c
	dec  b                                           ; $5826: $05
	ld   bc, $0101                                   ; $5827: $01 $01 $01
	ld   h, a                                        ; $582a: $67
	ld   h, d                                        ; $582b: $62
	ld   d, d                                        ; $582c: $52
	sub  d                                           ; $582d: $92
	and  c                                           ; $582e: $a1
	sbc  [hl]                                        ; $582f: $9e
	ld   [$7d00], sp                                 ; $5830: $08 $00 $7d
	and  c                                           ; $5833: $a1
	sbc  a                                           ; $5834: $9f
	dec  c                                           ; $5835: $0d
	sub  [hl]                                        ; $5836: $96
	ld   d, h                                        ; $5837: $54
	ld   e, d                                        ; $5838: $5a
	and  c                                           ; $5839: $a1
	ld   a, [hl]                                     ; $583a: $7e
	ld   [hl], c                                     ; $583b: $71
	ld   l, l                                        ; $583c: $6d
	ld   a, b                                        ; $583d: $78
	db   $fc                                         ; $583e: $fc
	sbc  a                                           ; $583f: $9f
	dec  c                                           ; $5840: $0d
	nop                                              ; $5841: $00
	ld   a, [bc]                                     ; $5842: $0a
	inc  e                                           ; $5843: $1c
	dec  b                                           ; $5844: $05
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	ld   bc, $546b                                   ; $5847: $01 $6b $54
	ld   e, c                                        ; $584a: $59
	db   $fc                                         ; $584b: $fc
	sbc  a                                           ; $584c: $9f
	ld   l, e                                        ; $584d: $6b
	ld   h, l                                        ; $584e: $65
	ld   l, l                                        ; $584f: $6d
	sub  a                                           ; $5850: $97
	sbc  [hl]                                        ; $5851: $9e
	ld   a, b                                        ; $5852: $78
	and  c                                           ; $5853: $a1
	ld   e, c                                        ; $5854: $59
	dec  c                                           ; $5855: $0d
	ld   h, d                                        ; $5856: $62
	adc  c                                           ; $5857: $89
	ld   d, h                                        ; $5858: $54
	add  c                                           ; $5859: $81
	and  b                                           ; $585a: $a0
	ld   d, b                                        ; $585b: $50
	ld   h, b                                        ; $585c: $60
	and  c                                           ; $585d: $a1
	halt                                             ; $585e: $76
	ld   d, d                                        ; $585f: $52
	ld   e, c                                        ; $5860: $59
	and  c                                           ; $5861: $a1
	ld   a, b                                        ; $5862: $78
	sbc  a                                           ; $5863: $9f
	dec  c                                           ; $5864: $0d
	inc  b                                           ; $5865: $04
	ld   c, c                                        ; $5866: $49
	ld   e, d                                        ; $5867: $5a
	ld   d, [hl]                                     ; $5868: $56
	ld   d, [hl]                                     ; $5869: $56
	ld   e, c                                        ; $586a: $59
	ld   a, b                                        ; $586b: $78
	rst  $38                                         ; $586c: $ff
	rst  $38                                         ; $586d: $ff
	rst  $38                                         ; $586e: $ff
	rst  $38                                         ; $586f: $ff
	rst  $38                                         ; $5870: $ff
	rst  $38                                         ; $5871: $ff
	dec  c                                           ; $5872: $0d
	nop                                              ; $5873: $00
	ld   a, [bc]                                     ; $5874: $0a
	ld   bc, $546b                                   ; $5875: $01 $6b $54
	sub  d                                           ; $5878: $92
	sbc  [hl]                                        ; $5879: $9e
	and  a                                           ; $587a: $a7
	jp   nz, $047c                                   ; $587b: $c2 $7c $04

	adc  d                                           ; $587e: $8a
	inc  bc                                          ; $587f: $03
	ld   e, [hl]                                     ; $5880: $5e
	ld   [bc], a                                     ; $5881: $02
	adc  h                                           ; $5882: $8c
	dec  c                                           ; $5883: $0d
	jp   nz, $efd4                                   ; $5884: $c2 $d4 $ef

	db   $dd                                         ; $5887: $dd
	ld   [bc], a                                     ; $5888: $02
	ld   c, b                                        ; $5889: $48
	ld   [bc], a                                     ; $588a: $02
	sub  c                                           ; $588b: $91
	dec  c                                           ; $588c: $0d
	and  b                                           ; $588d: $a0
	ld   [bc], a                                     ; $588e: $02
	sub  l                                           ; $588f: $95
	ld   l, c                                        ; $5890: $69
	ld   l, l                                        ; $5891: $6d
	sbc  e                                           ; $5892: $9b
	sbc  a                                           ; $5893: $9f
	dec  c                                           ; $5894: $0d
	nop                                              ; $5895: $00
	ld   a, [bc]                                     ; $5896: $0a
	dec  c                                           ; $5897: $0d
	nop                                              ; $5898: $00
	nop                                              ; $5899: $00
	rrca                                             ; $589a: $0f
	nop                                              ; $589b: $00
	ld   bc, $9d23                                   ; $589c: $01 $23 $9d
	inc  e                                           ; $589f: $1c
	dec  b                                           ; $58a0: $05
	nop                                              ; $58a1: $00
	nop                                              ; $58a2: $00
	ld   bc, $656b                                   ; $58a3: $01 $6b $65
	ld   l, l                                        ; $58a6: $6d
	sub  a                                           ; $58a7: $97
	sbc  [hl]                                        ; $58a8: $9e
	ld   [de], a                                     ; $58a9: $12
	ld   [bc], a                                     ; $58aa: $02
	sub  e                                           ; $58ab: $93
	ld   h, l                                        ; $58ac: $65
	ld   e, c                                        ; $58ad: $59
	ld   l, c                                        ; $58ae: $69
	ei                                               ; $58af: $fb
	add  [hl]                                        ; $58b0: $86
	and  c                                           ; $58b1: $a1
	dec  c                                           ; $58b2: $0d
	ld   e, c                                        ; $58b3: $59
	sub  a                                           ; $58b4: $97
	sbc  [hl]                                        ; $58b5: $9e
	sub  [hl]                                        ; $58b6: $96
	ei                                               ; $58b7: $fb
	ld   [bc], a                                     ; $58b8: $02
	sub  l                                           ; $58b9: $95
	halt                                             ; $58ba: $76
	ld   d, d                                        ; $58bb: $52
	ld   [hl], h                                     ; $58bc: $74
	sub  d                                           ; $58bd: $92
	sbc  a                                           ; $58be: $9f
	dec  c                                           ; $58bf: $0d
	ld   d, d                                        ; $58c0: $52
	ld   e, l                                        ; $58c1: $5d
	ld   [hl], l                                     ; $58c2: $75
	sbc  [hl]                                        ; $58c3: $9e
	ld   [$7d00], sp                                 ; $58c4: $08 $00 $7d
	and  c                                           ; $58c7: $a1
	ld   a, [$000d]                                  ; $58c8: $fa $0d $00
	ld   a, [bc]                                     ; $58cb: $0a
	inc  e                                           ; $58cc: $1c
	dec  b                                           ; $58cd: $05
	rlca                                             ; $58ce: $07
	rlca                                             ; $58cf: $07
	ld   bc, $7f02                                   ; $58d0: $01 $02 $7f
	ld   e, a                                        ; $58d3: $5f
	ld   a, [wInGameButtonsPressed]                                  ; $58d4: $fa $10 $c2
	call nc, $ddef                                   ; $58d7: $d4 $ef $dd
	ld   l, l                                        ; $58da: $6d
	ld   l, a                                        ; $58db: $6f
	ld   a, [$000d]                                  ; $58dc: $fa $0d $00
	ld   a, [bc]                                     ; $58df: $0a
	dec  c                                           ; $58e0: $0d
	nop                                              ; $58e1: $00
	nop                                              ; $58e2: $00
	cpl                                              ; $58e3: $2f
	dec  b                                           ; $58e4: $05
	ld   c, $9d                                      ; $58e5: $0e $9d
	inc  e                                           ; $58e7: $1c
	dec  b                                           ; $58e8: $05
	dec  b                                           ; $58e9: $05
	dec  b                                           ; $58ea: $05
	ld   bc, $9277                                   ; $58eb: $01 $77 $92
	sbc  [hl]                                        ; $58ee: $9e
	ld   h, a                                        ; $58ef: $67
	ld   h, d                                        ; $58f0: $62
	ld   d, d                                        ; $58f1: $52
	sub  d                                           ; $58f2: $92
	sbc  e                                           ; $58f3: $9b
	sbc  a                                           ; $58f4: $9f
	dec  c                                           ; $58f5: $0d
	ld   [bc], a                                     ; $58f6: $02
	add  h                                           ; $58f7: $84
	ld   [bc], a                                     ; $58f8: $02
	and  d                                           ; $58f9: $a2
	ld   a, h                                        ; $58fa: $7c
	dec  b                                           ; $58fb: $05
	ld   a, [bc]                                     ; $58fc: $0a
	sbc  [hl]                                        ; $58fd: $9e
	ld   l, e                                        ; $58fe: $6b
	ld   h, l                                        ; $58ff: $65
	ld   [hl], h                                     ; $5900: $74
	and  a                                           ; $5901: $a7
	jp   nz, $0d7c                                   ; $5902: $c2 $7c $0d

	inc  b                                           ; $5905: $04
	ld   e, [hl]                                     ; $5906: $5e
	inc  b                                           ; $5907: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5908: $cf
	ld   a, h                                        ; $5909: $7c
	dec  b                                           ; $590a: $05
	ld   a, [bc]                                     ; $590b: $0a
	sub  d                                           ; $590c: $92
	ld   a, [$000d]                                  ; $590d: $fa $0d $00
	ld   a, [bc]                                     ; $5910: $0a
	inc  e                                           ; $5911: $1c
	dec  b                                           ; $5912: $05
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	ld   bc, $0008                                   ; $5915: $01 $08 $00
	ld   a, l                                        ; $5918: $7d
	and  c                                           ; $5919: $a1
	sub  b                                           ; $591a: $90
	sbc  [hl]                                        ; $591b: $9e
	ld   h, c                                        ; $591c: $61
	ld   a, h                                        ; $591d: $7c
	inc  b                                           ; $591e: $04
	dec  c                                           ; $591f: $0d
	ld   [bc], a                                     ; $5920: $02
	sub  [hl]                                        ; $5921: $96
	dec  c                                           ; $5922: $0d
	inc  b                                           ; $5923: $04
	ld   b, l                                        ; $5924: $45
	inc  b                                           ; $5925: $04
	ld   a, [bc]                                     ; $5926: $0a
	ld   a, h                                        ; $5927: $7c
	ld   [bc], a                                     ; $5928: $02
	pop  bc                                          ; $5929: $c1
	ld   [bc], a                                     ; $592a: $02
	xor  c                                           ; $592b: $a9
	ld   a, c                                        ; $592c: $79
	sbc  [hl]                                        ; $592d: $9e
	sub  b                                           ; $592e: $90
	ld   [hl], c                                     ; $592f: $71
	halt                                             ; $5930: $76
	ld   [bc], a                                     ; $5931: $02
	add  h                                           ; $5932: $84
	ld   [bc], a                                     ; $5933: $02
	and  d                                           ; $5934: $a2
	and  b                                           ; $5935: $a0
	dec  c                                           ; $5936: $0d
	ld   [bc], a                                     ; $5937: $02
	and  d                                           ; $5938: $a2
	and  c                                           ; $5939: $a1
	ld   l, [hl]                                     ; $593a: $6e
	sub  a                                           ; $593b: $97
	ld   d, [hl]                                     ; $593c: $56
	ld   d, [hl]                                     ; $593d: $56
	sbc  a                                           ; $593e: $9f
	dec  c                                           ; $593f: $0d
	nop                                              ; $5940: $00
	ld   a, [bc]                                     ; $5941: $0a
	inc  e                                           ; $5942: $1c
	dec  b                                           ; $5943: $05
	ld   bc, $0101                                   ; $5944: $01 $01 $01
	ld   l, e                                        ; $5947: $6b
	ld   h, l                                        ; $5948: $65
	ld   l, l                                        ; $5949: $6d
	sub  a                                           ; $594a: $97
	sbc  [hl]                                        ; $594b: $9e
	and  a                                           ; $594c: $a7
	jp   nz, $967c                                   ; $594d: $c2 $7c $96

	ld   d, h                                        ; $5950: $54
	ld   a, b                                        ; $5951: $78
	dec  c                                           ; $5952: $0d
	ld   [bc], a                                     ; $5953: $02
	adc  h                                           ; $5954: $8c
	and  b                                           ; $5955: $a0
	inc  bc                                          ; $5956: $03
	xor  [hl]                                        ; $5957: $ae
	ld   d, [hl]                                     ; $5958: $56
	sbc  c                                           ; $5959: $99
	sub  [hl]                                        ; $595a: $96
	ld   d, h                                        ; $595b: $54
	ld   a, c                                        ; $595c: $79
	ld   a, b                                        ; $595d: $78
	sbc  c                                           ; $595e: $99
	ld   e, c                                        ; $595f: $59
	sub  b                                           ; $5960: $90
	dec  c                                           ; $5961: $0d
	ld   h, l                                        ; $5962: $65
	sbc  d                                           ; $5963: $9a
	and  c                                           ; $5964: $a1
	ld   e, c                                        ; $5965: $59
	sub  a                                           ; $5966: $97
	ld   a, b                                        ; $5967: $78
	sbc  a                                           ; $5968: $9f
	dec  c                                           ; $5969: $0d
	nop                                              ; $596a: $00
	ld   a, [bc]                                     ; $596b: $0a
	ld   bc, $7889                                   ; $596c: $01 $89 $78
	sbc  [hl]                                        ; $596f: $9e
	adc  h                                           ; $5970: $8c
	ld   l, l                                        ; $5971: $6d
	ld   [bc], a                                     ; $5972: $02
	xor  d                                           ; $5973: $aa
	ld   [hl], l                                     ; $5974: $75
	ld   a, b                                        ; $5975: $78
	sbc  a                                           ; $5976: $9f
	dec  c                                           ; $5977: $0d
	nop                                              ; $5978: $00
	ld   a, [bc]                                     ; $5979: $0a
	dec  c                                           ; $597a: $0d
	nop                                              ; $597b: $00
	nop                                              ; $597c: $00
	rrca                                             ; $597d: $0f
	nop                                              ; $597e: $00
	ld   bc, $ba01                                   ; $597f: $01 $01 $ba
	or   l                                           ; $5982: $b5
	and  l                                           ; $5983: $a5
	ld   [bc], a                                     ; $5984: $02
	adc  h                                           ; $5985: $8c
	ld   l, [hl]                                     ; $5986: $6e
	ld   [hl], c                                     ; $5987: $71
	ld   l, l                                        ; $5988: $6d
	ld   a, b                                        ; $5989: $78
	rst  $38                                         ; $598a: $ff
	rst  $38                                         ; $598b: $ff
	dec  c                                           ; $598c: $0d
	inc  b                                           ; $598d: $04
	ld   l, l                                        ; $598e: $6d
	sub  b                                           ; $598f: $90
	ld   d, b                                        ; $5990: $50
	and  c                                           ; $5991: $a1
	ld   a, b                                        ; $5992: $78
	ld   [bc], a                                     ; $5993: $02
	adc  h                                           ; $5994: $8c
	ld   e, d                                        ; $5995: $5a
	ld   [hl], l                                     ; $5996: $75
	ld   e, e                                        ; $5997: $5b
	sbc  c                                           ; $5998: $99
	sub  [hl]                                        ; $5999: $96
	ld   d, h                                        ; $599a: $54
	ld   a, c                                        ; $599b: $79
	dec  c                                           ; $599c: $0d
	ld   e, d                                        ; $599d: $5a
	and  c                                           ; $599e: $a1
	ld   a, [hl]                                     ; $599f: $7e
	sbc  e                                           ; $59a0: $9b
	ld   d, h                                        ; $59a1: $54
	sbc  a                                           ; $59a2: $9f
	dec  c                                           ; $59a3: $0d
	nop                                              ; $59a4: $00
	ld   a, [bc]                                     ; $59a5: $0a
	dec  b                                           ; $59a6: $05
	add  b                                           ; $59a7: $80
	cp   [hl]                                        ; $59a8: $be
	ld   bc, $0001                                   ; $59a9: $01 $01 $00
	nop                                              ; $59ac: $00
	nop                                              ; $59ad: $00
	ld   c, $01                                      ; $59ae: $0e $01
	rrca                                             ; $59b0: $0f
	nop                                              ; $59b1: $00
	ld   bc, $0502                                   ; $59b2: $01 $02 $05
	ld   b, b                                        ; $59b5: $40
	push hl                                          ; $59b6: $e5
	inc  bc                                          ; $59b7: $03
	push hl                                          ; $59b8: $e5
	ld   bc, $2801                                   ; $59b9: $01 $01 $28
	nop                                              ; $59bc: $00
	rlca                                             ; $59bd: $07
	ld   d, d                                        ; $59be: $52
	nop                                              ; $59bf: $00
	inc  bc                                          ; $59c0: $03
	push hl                                          ; $59c1: $e5
	ld   bc, $2402                                   ; $59c2: $01 $02 $24
	nop                                              ; $59c5: $00
	ld   bc, $546b                                   ; $59c6: $01 $6b $54
	ld   l, [hl]                                     ; $59c9: $6e
	sbc  [hl]                                        ; $59ca: $9e
	xor  h                                           ; $59cb: $ac
	push af                                          ; $59cc: $f5
	bit  4, e                                        ; $59cd: $cb $63
	and  c                                           ; $59cf: $a1
	ld   e, c                                        ; $59d0: $59
	sub  a                                           ; $59d1: $97
	dec  c                                           ; $59d2: $0d
	sub  b                                           ; $59d3: $90
	sub  a                                           ; $59d4: $97
	ld   [hl], c                                     ; $59d5: $71
	ld   l, l                                        ; $59d6: $6d
	inc  bc                                          ; $59d7: $03
	inc  h                                           ; $59d8: $24
	ld   h, l                                        ; $59d9: $65
	ld   [bc], a                                     ; $59da: $02
	halt                                             ; $59db: $76
	sbc  b                                           ; $59dc: $98
	inc  b                                           ; $59dd: $04
	di                                               ; $59de: $f3
	ld   a, h                                        ; $59df: $7c
	inc  b                                           ; $59e0: $04
	ld   [hl], h                                     ; $59e1: $74
	ld   e, d                                        ; $59e2: $5a
	dec  c                                           ; $59e3: $0d
	ld   d, b                                        ; $59e4: $50
	ld   [hl], c                                     ; $59e5: $71
	ld   l, l                                        ; $59e6: $6d
	ld   a, b                                        ; $59e7: $78
	rst  $38                                         ; $59e8: $ff
	rst  $38                                         ; $59e9: $ff
	dec  c                                           ; $59ea: $0d
	nop                                              ; $59eb: $00
	ld   a, [bc]                                     ; $59ec: $0a
	ld   bc, $956f                                   ; $59ed: $01 $6f $95
	ld   [hl], c                                     ; $59f0: $71
	halt                                             ; $59f1: $76
	sub  d                                           ; $59f2: $92
	ld   [hl], c                                     ; $59f3: $71
	ld   [hl], h                                     ; $59f4: $74
	adc  l                                           ; $59f5: $8d
	sbc  c                                           ; $59f6: $99
	ld   e, c                                        ; $59f7: $59
	rst  $38                                         ; $59f8: $ff
	rst  $38                                         ; $59f9: $ff
	dec  c                                           ; $59fa: $0d
	nop                                              ; $59fb: $00
	ld   a, [bc]                                     ; $59fc: $0a
	ld   b, $83                                      ; $59fd: $06 $83
	nop                                              ; $59ff: $00
	rlca                                             ; $5a00: $07
	ld   [hl], c                                     ; $5a01: $71
	nop                                              ; $5a02: $00
	inc  bc                                          ; $5a03: $03
	push hl                                          ; $5a04: $e5
	ld   bc, $2404                                   ; $5a05: $01 $04 $24
	nop                                              ; $5a08: $00
	ld   bc, $2403                                   ; $5a09: $01 $03 $24
	ld   h, l                                        ; $5a0c: $65
	ld   [bc], a                                     ; $5a0d: $02
	halt                                             ; $5a0e: $76
	sbc  b                                           ; $5a0f: $98
	ld   [hl], l                                     ; $5a10: $75
	sub  b                                           ; $5a11: $90
	dec  c                                           ; $5a12: $0d
	ld   h, a                                        ; $5a13: $67
	sbc  c                                           ; $5a14: $99
	ld   e, c                                        ; $5a15: $59
	ld   a, b                                        ; $5a16: $78
	rst  $38                                         ; $5a17: $ff
	rst  $38                                         ; $5a18: $ff
	dec  c                                           ; $5a19: $0d
	nop                                              ; $5a1a: $00
	ld   a, [bc]                                     ; $5a1b: $0a
	ld   b, $83                                      ; $5a1c: $06 $83
	nop                                              ; $5a1e: $00
	ld   bc, $a502                                   ; $5a1f: $01 $02 $a5
	inc  b                                           ; $5a22: $04
	xor  d                                           ; $5a23: $aa
	ld   h, c                                        ; $5a24: $61
	ld   l, e                                        ; $5a25: $6b
	ld   [bc], a                                     ; $5a26: $02
	halt                                             ; $5a27: $76
	ld   [hl], c                                     ; $5a28: $71
	ld   [hl], h                                     ; $5a29: $74
	sub  d                                           ; $5a2a: $92
	sbc  c                                           ; $5a2b: $99
	ld   l, h                                        ; $5a2c: $6c
	ld   a, [$000d]                                  ; $5a2d: $fa $0d $00
	ld   a, [bc]                                     ; $5a30: $0a
	rlca                                             ; $5a31: $07
	sbc  b                                           ; $5a32: $98
	nop                                              ; $5a33: $00
	ld   [bc], a                                     ; $5a34: $02
	nop                                              ; $5a35: $00
	ld   bc, $220a                                   ; $5a36: $01 $0a $22
	nop                                              ; $5a39: $00
	rlca                                             ; $5a3a: $07
	and  h                                           ; $5a3b: $a4
	nop                                              ; $5a3c: $00
	ld   [bc], a                                     ; $5a3d: $02
	nop                                              ; $5a3e: $00
	ld   bc, $2211                                   ; $5a3f: $01 $11 $22
	nop                                              ; $5a42: $00
	ld   b, $b9                                      ; $5a43: $06 $b9
	nop                                              ; $5a45: $00
	rlca                                             ; $5a46: $07
	rst  $10                                         ; $5a47: $d7
	nop                                              ; $5a48: $00
	inc  bc                                          ; $5a49: $03
	push hl                                          ; $5a4a: $e5
	ld   bc, $2204                                   ; $5a4b: $01 $04 $22
	nop                                              ; $5a4e: $00
	ld   b, $04                                      ; $5a4f: $06 $04
	ld   bc, $d707                                   ; $5a51: $01 $07 $d7
	nop                                              ; $5a54: $00
	inc  bc                                          ; $5a55: $03
	push hl                                          ; $5a56: $e5
	ld   bc, $2204                                   ; $5a57: $01 $04 $22
	nop                                              ; $5a5a: $00
	rlca                                             ; $5a5b: $07
	inc  b                                           ; $5a5c: $04
	ld   bc, $e503                                   ; $5a5d: $01 $03 $e5
	ld   bc, $2206                                   ; $5a60: $01 $06 $22
	nop                                              ; $5a63: $00
	ld   b, $35                                      ; $5a64: $06 $35
	ld   bc, $d707                                   ; $5a66: $01 $07 $d7
	nop                                              ; $5a69: $00
	inc  bc                                          ; $5a6a: $03
	push hl                                          ; $5a6b: $e5
	ld   bc, $2204                                   ; $5a6c: $01 $04 $22
	nop                                              ; $5a6f: $00
	rlca                                             ; $5a70: $07
	inc  b                                           ; $5a71: $04
	ld   bc, $e503                                   ; $5a72: $01 $03 $e5
	ld   bc, $2206                                   ; $5a75: $01 $06 $22
	nop                                              ; $5a78: $00
	rlca                                             ; $5a79: $07
	dec  [hl]                                        ; $5a7a: $35
	ld   bc, $e503                                   ; $5a7b: $01 $03 $e5
	ld   bc, $2208                                   ; $5a7e: $01 $08 $22
	nop                                              ; $5a81: $00
	ld   b, $59                                      ; $5a82: $06 $59
	ld   bc, $062b                                   ; $5a84: $01 $2b $06
	nop                                              ; $5a87: $00
	rrca                                             ; $5a88: $0f
	nop                                              ; $5a89: $00
	ld   bc, $3f10                                   ; $5a8a: $01 $10 $3f
	rst  $38                                         ; $5a8d: $ff
	ld   bc, $545d                                   ; $5a8e: $01 $5d $54
	db   $fc                                         ; $5a91: $fc
	and  l                                           ; $5a92: $a5
	rst  ToBoot                                         ; $5a93: $c7
	rst  ToBoot                                         ; $5a94: $c7
	rst  ToBoot                                         ; $5a95: $c7
	rst  ToBoot                                         ; $5a96: $c7
	rst  $38                                         ; $5a97: $ff
	rst  $38                                         ; $5a98: $ff
	dec  c                                           ; $5a99: $0d
	ld   [bc], a                                     ; $5a9a: $02
	and  l                                           ; $5a9b: $a5
	inc  b                                           ; $5a9c: $04
	xor  d                                           ; $5a9d: $aa
	ld   a, l                                        ; $5a9e: $7d
	ld   h, c                                        ; $5a9f: $61
	ld   a, h                                        ; $5aa0: $7c
	ld   e, l                                        ; $5aa1: $5d
	sub  a                                           ; $5aa2: $97
	ld   d, d                                        ; $5aa3: $52
	ld   a, c                                        ; $5aa4: $79
	dec  c                                           ; $5aa5: $0d
	ld   h, l                                        ; $5aa6: $65
	ld   [hl], h                                     ; $5aa7: $74
	ld   e, b                                        ; $5aa8: $58
	ld   e, l                                        ; $5aa9: $5d
	ld   e, c                                        ; $5aaa: $59
	rst  $38                                         ; $5aab: $ff
	rst  $38                                         ; $5aac: $ff
	dec  c                                           ; $5aad: $0d
	nop                                              ; $5aae: $00
	ld   a, [bc]                                     ; $5aaf: $0a
	inc  b                                           ; $5ab0: $04
	nop                                              ; $5ab1: $00
	dec  hl                                          ; $5ab2: $2b
	ld   b, $01                                      ; $5ab3: $06 $01
	rrca                                             ; $5ab5: $0f
	nop                                              ; $5ab6: $00
	ld   bc, $4010                                   ; $5ab7: $01 $10 $40
	rst  $38                                         ; $5aba: $ff
	ld   bc, $507d                                   ; $5abb: $01 $7d $50
	rst  $38                                         ; $5abe: $ff
	rst  $38                                         ; $5abf: $ff
	ld   a, l                                        ; $5ac0: $7d
	ld   d, b                                        ; $5ac1: $50
	rst  $38                                         ; $5ac2: $ff
	rst  $38                                         ; $5ac3: $ff
	rst  $38                                         ; $5ac4: $ff
	rst  $38                                         ; $5ac5: $ff
	dec  c                                           ; $5ac6: $0d
	ld   e, l                                        ; $5ac7: $5d
	ld   l, e                                        ; $5ac8: $6b
	ei                                               ; $5ac9: $fb
	sbc  [hl]                                        ; $5aca: $9e
	sub  b                                           ; $5acb: $90
	ld   d, h                                        ; $5acc: $54
	ld   l, a                                        ; $5acd: $6f
	sub  l                                           ; $5ace: $95
	ld   [hl], c                                     ; $5acf: $71
	halt                                             ; $5ad0: $76
	dec  c                                           ; $5ad1: $0d
	ld   l, [hl]                                     ; $5ad2: $6e
	halt                                             ; $5ad3: $76
	dec  b                                           ; $5ad4: $05
	pop  de                                          ; $5ad5: $d1
	ld   d, h                                        ; $5ad6: $54
	and  c                                           ; $5ad7: $a1
	ld   l, [hl]                                     ; $5ad8: $6e
	ld   e, a                                        ; $5ad9: $5f
	ld   [hl], a                                     ; $5ada: $77
	ld   a, b                                        ; $5adb: $78
	rst  $38                                         ; $5adc: $ff
	rst  $38                                         ; $5add: $ff
	dec  c                                           ; $5ade: $0d
	nop                                              ; $5adf: $00
	ld   a, [bc]                                     ; $5ae0: $0a
	inc  b                                           ; $5ae1: $04
	nop                                              ; $5ae2: $00
	dec  hl                                          ; $5ae3: $2b
	ld   b, $02                                      ; $5ae4: $06 $02
	rrca                                             ; $5ae6: $0f
	nop                                              ; $5ae7: $00
	ld   bc, $4010                                   ; $5ae8: $01 $10 $40
	rst  $38                                         ; $5aeb: $ff
	ld   bc, $6596                                   ; $5aec: $01 $96 $65
	sub  [hl]                                        ; $5aef: $96
	ld   h, l                                        ; $5af0: $65
	sbc  a                                           ; $5af1: $9f
	dec  c                                           ; $5af2: $0d
	ld   d, b                                        ; $5af3: $50
	halt                                             ; $5af4: $76
	ld   [bc], a                                     ; $5af5: $02
	jr   nz, jr_042_5afb                             ; $5af6: $20 $03

	ld   h, $71                                      ; $5af8: $26 $71
	ld   [hl], h                                     ; $5afa: $74

jr_042_5afb:
	ld   [bc], a                                     ; $5afb: $02
	scf                                              ; $5afc: $37
	ld   h, [hl]                                     ; $5afd: $66
	ld   l, [hl]                                     ; $5afe: $6e
	ld   a, b                                        ; $5aff: $78
	rst  $38                                         ; $5b00: $ff
	rst  $38                                         ; $5b01: $ff
	dec  c                                           ; $5b02: $0d
	nop                                              ; $5b03: $00
	ld   a, [bc]                                     ; $5b04: $0a
	inc  b                                           ; $5b05: $04
	nop                                              ; $5b06: $00
	dec  hl                                          ; $5b07: $2b
	ld   b, $03                                      ; $5b08: $06 $03
	rrca                                             ; $5b0a: $0f
	nop                                              ; $5b0b: $00
	ld   bc, $4110                                   ; $5b0c: $01 $10 $41
	rst  $38                                         ; $5b0f: $ff
	ld   bc, $7192                                   ; $5b10: $01 $92 $71
	ld   l, l                                        ; $5b13: $6d
	db   $fc                                         ; $5b14: $fc
	ld   a, [$0dfa]                                  ; $5b15: $fa $fa $0d
	ld   [hl], d                                     ; $5b18: $72
	ld   d, d                                        ; $5b19: $52
	ld   a, c                                        ; $5b1a: $79
	ld   [bc], a                                     ; $5b1b: $02
	halt                                             ; $5b1c: $76
	sbc  d                                           ; $5b1d: $9a
	ld   l, l                                        ; $5b1e: $6d
	ld   l, h                                        ; $5b1f: $6c
	ld   a, [$0dfa]                                  ; $5b20: $fa $fa $0d
	nop                                              ; $5b23: $00
	ld   a, [bc]                                     ; $5b24: $0a
	inc  b                                           ; $5b25: $04
	ld   bc, $6596                                   ; $5b26: $01 $96 $65
	ld   a, [$0dfa]                                  ; $5b29: $fa $fa $0d
	xor  h                                           ; $5b2c: $ac
	push af                                          ; $5b2d: $f5
	bit  4, e                                        ; $5b2e: $cb $63
	and  c                                           ; $5b30: $a1
	ld   a, c                                        ; $5b31: $79
	ld   [bc], a                                     ; $5b32: $02
	sub  l                                           ; $5b33: $95
	ld   l, c                                        ; $5b34: $69
	ld   a, c                                        ; $5b35: $79
	ld   [bc], a                                     ; $5b36: $02
	ld   a, a                                        ; $5b37: $7f
	ld   h, c                                        ; $5b38: $61
	ld   d, h                                        ; $5b39: $54
	ld   a, [$0dfa]                                  ; $5b3a: $fa $fa $0d
	nop                                              ; $5b3d: $00
	ld   a, [bc]                                     ; $5b3e: $0a
	inc  hl                                          ; $5b3f: $23
	ld   c, b                                        ; $5b40: $48
	inc  d                                           ; $5b41: $14
	ld   b, $01                                      ; $5b42: $06 $01
	ld   bc, $f5ac                                   ; $5b44: $01 $ac $f5
	bit  4, e                                        ; $5b47: $cb $63
	and  c                                           ; $5b49: $a1
	sbc  [hl]                                        ; $5b4a: $9e
	dec  c                                           ; $5b4b: $0d
	ld   d, d                                        ; $5b4c: $52
	sub  a                                           ; $5b4d: $97
	ld   [hl], c                                     ; $5b4e: $71
	ld   h, l                                        ; $5b4f: $65
	sub  c                                           ; $5b50: $91
	ld   d, d                                        ; $5b51: $52
	adc  h                                           ; $5b52: $8c
	ld   h, a                                        ; $5b53: $67
	ld   e, c                                        ; $5b54: $59
	ld   sp, hl                                      ; $5b55: $f9
	dec  c                                           ; $5b56: $0d
	nop                                              ; $5b57: $00
	ld   a, [bc]                                     ; $5b58: $0a
	inc  d                                           ; $5b59: $14
	ld   a, [bc]                                     ; $5b5a: $0a
	ld   bc, $490e                                   ; $5b5b: $01 $0e $49
	inc  e                                           ; $5b5e: $1c
	ld   b, $00                                      ; $5b5f: $06 $00
	nop                                              ; $5b61: $00
	ld   bc, $5250                                   ; $5b62: $01 $50 $52
	sub  [hl]                                        ; $5b65: $96
	rst  $38                                         ; $5b66: $ff
	rst  $38                                         ; $5b67: $ff
	ld   a, b                                        ; $5b68: $78
	and  c                                           ; $5b69: $a1
	ld   l, [hl]                                     ; $5b6a: $6e
	sbc  [hl]                                        ; $5b6b: $9e
	dec  c                                           ; $5b6c: $0d
	ld   [$6600], sp                                 ; $5b6d: $08 $00 $66
	sub  c                                           ; $5b70: $91
	ld   a, e                                        ; $5b71: $7b
	ld   d, [hl]                                     ; $5b72: $56
	ld   e, c                                        ; $5b73: $59
	sbc  a                                           ; $5b74: $9f
	dec  c                                           ; $5b75: $0d
	nop                                              ; $5b76: $00
	ld   a, [bc]                                     ; $5b77: $0a
	ld   bc, $5477                                   ; $5b78: $01 $77 $54
	ld   h, l                                        ; $5b7b: $65
	ld   l, l                                        ; $5b7c: $6d
	and  c                                           ; $5b7d: $a1
	ld   l, [hl]                                     ; $5b7e: $6e
	ld   sp, hl                                      ; $5b7f: $f9
	dec  c                                           ; $5b80: $0d
	ld   l, e                                        ; $5b81: $6b
	and  c                                           ; $5b82: $a1
	ld   a, b                                        ; $5b83: $78
	ld   d, b                                        ; $5b84: $50
	sbc  l                                           ; $5b85: $9d
	ld   [hl], h                                     ; $5b86: $74
	ld   [hl], h                                     ; $5b87: $74
	rst  $38                                         ; $5b88: $ff
	rst  $38                                         ; $5b89: $ff
	dec  c                                           ; $5b8a: $0d
	nop                                              ; $5b8b: $00
	ld   a, [bc]                                     ; $5b8c: $0a
	rrca                                             ; $5b8d: $0f
	nop                                              ; $5b8e: $00
	ld   bc, $5001                                   ; $5b8f: $01 $01 $50
	ld   a, h                                        ; $5b92: $7c
	sbc  [hl]                                        ; $5b93: $9e
	xor  h                                           ; $5b94: $ac
	push af                                          ; $5b95: $f5
	bit  4, e                                        ; $5b96: $cb $63
	and  c                                           ; $5b98: $a1
	ld   a, c                                        ; $5b99: $79
	inc  bc                                          ; $5b9a: $03
	jp   hl                                          ; $5b9b: $e9


	ld   d, d                                        ; $5b9c: $52
	ld   l, l                                        ; $5b9d: $6d
	dec  c                                           ; $5b9e: $0d
	inc  b                                           ; $5b9f: $04
	ld   [hl], h                                     ; $5ba0: $74
	ld   e, d                                        ; $5ba1: $5a
	ld   [bc], a                                     ; $5ba2: $02
	halt                                             ; $5ba3: $76
	sbc  d                                           ; $5ba4: $9a
	ld   l, l                                        ; $5ba5: $6d
	ld   a, h                                        ; $5ba6: $7c
	ld   [hl], l                                     ; $5ba7: $75
	ld   e, b                                        ; $5ba8: $58
	inc  b                                           ; $5ba9: $04
	dec  hl                                          ; $5baa: $2b
	sub  a                                           ; $5bab: $97
	ld   l, c                                        ; $5bac: $69
	dec  c                                           ; $5bad: $0d
	ld   h, l                                        ; $5bae: $65
	ld   l, l                                        ; $5baf: $6d
	ld   e, l                                        ; $5bb0: $5d
	ld   [hl], h                                     ; $5bb1: $74
	rst  $38                                         ; $5bb2: $ff
	rst  $38                                         ; $5bb3: $ff
	dec  c                                           ; $5bb4: $0d
	nop                                              ; $5bb5: $00
	ld   a, [bc]                                     ; $5bb6: $0a
	db   $10                                         ; $5bb7: $10
	ld   b, c                                        ; $5bb8: $41
	nop                                              ; $5bb9: $00
	ld   b, $0f                                      ; $5bba: $06 $0f
	ld   [bc], a                                     ; $5bbc: $02
	inc  e                                           ; $5bbd: $1c
	ld   b, $03                                      ; $5bbe: $06 $03
	inc  bc                                          ; $5bc0: $03
	dec  b                                           ; $5bc1: $05
	ld   b, b                                        ; $5bc2: $40
	push hl                                          ; $5bc3: $e5
	ld   bc, $0000                                   ; $5bc4: $01 $00 $00
	ld   bc, $5858                                   ; $5bc7: $01 $58 $58
	db   $fc                                         ; $5bca: $fc
	ld   a, [$0dfa]                                  ; $5bcb: $fa $fa $0d
	call c, $c9f5                                    ; $5bce: $dc $f5 $c9
	ld   a, c                                        ; $5bd1: $79
	ld   [bc], a                                     ; $5bd2: $02
	halt                                             ; $5bd3: $76
	sbc  d                                           ; $5bd4: $9a
	ld   [hl], h                                     ; $5bd5: $74
	sbc  c                                           ; $5bd6: $99
	dec  c                                           ; $5bd7: $0d
	ld   h, [hl]                                     ; $5bd8: $66
	sub  c                                           ; $5bd9: $91
	ld   a, e                                        ; $5bda: $7b
	ld   d, [hl]                                     ; $5bdb: $56
	ld   e, c                                        ; $5bdc: $59
	ld   a, [$0dfa]                                  ; $5bdd: $fa $fa $0d
	nop                                              ; $5be0: $00
	ld   a, [bc]                                     ; $5be1: $0a
	dec  b                                           ; $5be2: $05
	ld   b, b                                        ; $5be3: $40
	ld   d, e                                        ; $5be4: $53
	ld   bc, $0000                                   ; $5be5: $01 $00 $00
	inc  e                                           ; $5be8: $1c
	ld   b, $01                                      ; $5be9: $06 $01
	ld   bc, $9201                                   ; $5beb: $01 $01 $92
	sbc  c                                           ; $5bee: $99
	ld   a, b                                        ; $5bef: $78
	ei                                               ; $5bf0: $fb
	sbc  [hl]                                        ; $5bf1: $9e
	ld   e, b                                        ; $5bf2: $58
	inc  bc                                          ; $5bf3: $03
	ld   c, a                                        ; $5bf4: $4f
	sbc  a                                           ; $5bf5: $9f
	dec  c                                           ; $5bf6: $0d
	sub  [hl]                                        ; $5bf7: $96
	ld   e, l                                        ; $5bf8: $5d
	ld   e, d                                        ; $5bf9: $5a
	and  c                                           ; $5bfa: $a1
	ld   a, [hl]                                     ; $5bfb: $7e
	ld   [hl], c                                     ; $5bfc: $71
	ld   l, l                                        ; $5bfd: $6d
	ld   l, d                                        ; $5bfe: $6a
	sbc  a                                           ; $5bff: $9f
	dec  c                                           ; $5c00: $0d
	nop                                              ; $5c01: $00
	ld   a, [bc]                                     ; $5c02: $0a
	inc  e                                           ; $5c03: $1c
	ld   b, $00                                      ; $5c04: $06 $00
	nop                                              ; $5c06: $00
	ld   bc, $668c                                   ; $5c07: $01 $8c $66
	adc  a                                           ; $5c0a: $8f
	ld   a, c                                        ; $5c0b: $79
	inc  bc                                          ; $5c0c: $03
	ld   l, l                                        ; $5c0d: $6d
	dec  b                                           ; $5c0e: $05
	add  hl, de                                      ; $5c0f: $19
	ld   h, l                                        ; $5c10: $65
	ld   [hl], h                                     ; $5c11: $74
	ld   e, e                                        ; $5c12: $5b
	ld   l, l                                        ; $5c13: $6d
	ld   e, b                                        ; $5c14: $58
	inc  bc                                          ; $5c15: $03
	ld   c, a                                        ; $5c16: $4f
	ld   a, c                                        ; $5c17: $79
	dec  c                                           ; $5c18: $0d
	inc  b                                           ; $5c19: $04
	ld   c, c                                        ; $5c1a: $49
	ld   e, c                                        ; $5c1b: $59
	ld   h, d                                        ; $5c1c: $62
	adc  c                                           ; $5c1d: $89
	ld   d, h                                        ; $5c1e: $54
	add  c                                           ; $5c1f: $81
	and  b                                           ; $5c20: $a0
	sbc  [hl]                                        ; $5c21: $9e
	sub  d                                           ; $5c22: $92
	sub  a                                           ; $5c23: $97
	ld   a, e                                        ; $5c24: $7b
	ei                                               ; $5c25: $fb
	halt                                             ; $5c26: $76
	dec  c                                           ; $5c27: $0d
	ld   d, d                                        ; $5c28: $52
	ld   e, a                                        ; $5c29: $5f
	ld   a, b                                        ; $5c2a: $78
	ld   d, d                                        ; $5c2b: $52
	ld   a, b                                        ; $5c2c: $78
	sbc  a                                           ; $5c2d: $9f
	dec  c                                           ; $5c2e: $0d
	nop                                              ; $5c2f: $00
	ld   a, [bc]                                     ; $5c30: $0a
	ld   bc, $546b                                   ; $5c31: $01 $6b $54
	ld   l, [hl]                                     ; $5c34: $6e
	sbc  [hl]                                        ; $5c35: $9e
	ld   d, b                                        ; $5c36: $50
	ld   l, l                                        ; $5c37: $6d
	ld   d, d                                        ; $5c38: $52
	ld   a, h                                        ; $5c39: $7c
	inc  b                                           ; $5c3a: $04
	adc  d                                           ; $5c3b: $8a
	inc  bc                                          ; $5c3c: $03
	ld   e, [hl]                                     ; $5c3d: $5e
	ld   [bc], a                                     ; $5c3e: $02
	adc  h                                           ; $5c3f: $8c
	dec  c                                           ; $5c40: $0d
	ld   [bc], a                                     ; $5c41: $02
	jr   nz, jr_042_5c48                             ; $5c42: $20 $04

	add  h                                           ; $5c44: $84
	dec  b                                           ; $5c45: $05
	dec  de                                          ; $5c46: $1b
	inc  b                                           ; $5c47: $04

jr_042_5c48:
	ld   [hl], b                                     ; $5c48: $70
	and  b                                           ; $5c49: $a0
	ld   [bc], a                                     ; $5c4a: $02
	sub  l                                           ; $5c4b: $95
	ld   l, c                                        ; $5c4c: $69
	ld   [hl], h                                     ; $5c4d: $74
	sub  d                                           ; $5c4e: $92
	sbc  e                                           ; $5c4f: $9b
	ld   d, h                                        ; $5c50: $54
	sbc  a                                           ; $5c51: $9f
	dec  c                                           ; $5c52: $0d
	nop                                              ; $5c53: $00
	ld   a, [bc]                                     ; $5c54: $0a
	dec  c                                           ; $5c55: $0d
	nop                                              ; $5c56: $00
	nop                                              ; $5c57: $00
	rrca                                             ; $5c58: $0f
	nop                                              ; $5c59: $00
	ld   bc, $9d23                                   ; $5c5a: $01 $23 $9d
	inc  e                                           ; $5c5d: $1c
	ld   b, $00                                      ; $5c5e: $06 $00
	nop                                              ; $5c60: $00
	ld   bc, $6596                                   ; $5c61: $01 $96 $65
	sbc  [hl]                                        ; $5c64: $9e
	ld   d, d                                        ; $5c65: $52
	ld   d, d                                        ; $5c66: $52
	ld   e, c                                        ; $5c67: $59
	sbc  [hl]                                        ; $5c68: $9e
	ld   [$9f00], sp                                 ; $5c69: $08 $00 $9f
	dec  c                                           ; $5c6c: $0d
	ld   [bc], a                                     ; $5c6d: $02
	jr   nz, jr_042_5c72                             ; $5c6e: $20 $02

	sub  e                                           ; $5c70: $93
	ld   h, l                                        ; $5c71: $65

jr_042_5c72:
	ld   e, c                                        ; $5c72: $59
	sub  d                                           ; $5c73: $92
	sub  a                                           ; $5c74: $97
	ld   a, e                                        ; $5c75: $7b
	ei                                               ; $5c76: $fb
	ld   e, c                                        ; $5c77: $59
	sub  a                                           ; $5c78: $97
	dec  c                                           ; $5c79: $0d
	sub  [hl]                                        ; $5c7a: $96
	ld   e, l                                        ; $5c7b: $5d
	ld   [bc], a                                     ; $5c7c: $02
	sub  l                                           ; $5c7d: $95
	halt                                             ; $5c7e: $76
	ld   e, l                                        ; $5c7f: $5d
	and  c                                           ; $5c80: $a1
	ld   l, [hl]                                     ; $5c81: $6e
	ld   l, h                                        ; $5c82: $6c
	sbc  a                                           ; $5c83: $9f
	dec  c                                           ; $5c84: $0d
	nop                                              ; $5c85: $00
	ld   a, [bc]                                     ; $5c86: $0a
	inc  e                                           ; $5c87: $1c
	ld   b, $02                                      ; $5c88: $06 $02
	ld   [bc], a                                     ; $5c8a: $02
	ld   bc, $fbba                                   ; $5c8b: $01 $ba $fb
	jp   nc, $ecfb                                   ; $5c8e: $d2 $fb $ec

	push af                                          ; $5c91: $f5
	jp   nc, $faa5                                   ; $5c92: $d2 $a5 $fa

	ld   a, [$000d]                                  ; $5c95: $fa $0d $00
	ld   a, [bc]                                     ; $5c98: $0a
	dec  c                                           ; $5c99: $0d
	nop                                              ; $5c9a: $00
	nop                                              ; $5c9b: $00
	cpl                                              ; $5c9c: $2f
	ld   b, $0e                                      ; $5c9d: $06 $0e
	sbc  l                                           ; $5c9f: $9d
	inc  e                                           ; $5ca0: $1c
	ld   b, $07                                      ; $5ca1: $06 $07
	rlca                                             ; $5ca3: $07
	ld   bc, $5477                                   ; $5ca4: $01 $77 $54
	ld   l, [hl]                                     ; $5ca7: $6e
	ld   d, d                                        ; $5ca8: $52
	sbc  [hl]                                        ; $5ca9: $9e
	cp   d                                           ; $5caa: $ba
	or   l                                           ; $5cab: $b5
	and  l                                           ; $5cac: $a5
	ld   l, [hl]                                     ; $5cad: $6e
	sbc  e                                           ; $5cae: $9b
	ld   a, [$000d]                                  ; $5caf: $fa $0d $00
	ld   a, [bc]                                     ; $5cb2: $0a
	inc  e                                           ; $5cb3: $1c
	ld   b, $00                                      ; $5cb4: $06 $00
	nop                                              ; $5cb6: $00
	ld   bc, $0008                                   ; $5cb7: $01 $08 $00
	sub  b                                           ; $5cba: $90
	sbc  [hl]                                        ; $5cbb: $9e
	ld   h, c                                        ; $5cbc: $61
	ld   a, h                                        ; $5cbd: $7c
	inc  b                                           ; $5cbe: $04
	dec  c                                           ; $5cbf: $0d
	ld   [bc], a                                     ; $5cc0: $02
	sub  [hl]                                        ; $5cc1: $96
	inc  b                                           ; $5cc2: $04
	ld   b, l                                        ; $5cc3: $45
	inc  b                                           ; $5cc4: $04
	ld   a, [bc]                                     ; $5cc5: $0a
	ld   a, h                                        ; $5cc6: $7c
	dec  c                                           ; $5cc7: $0d
	ld   [bc], a                                     ; $5cc8: $02
	pop  bc                                          ; $5cc9: $c1
	ld   [bc], a                                     ; $5cca: $02
	xor  c                                           ; $5ccb: $a9
	ld   a, c                                        ; $5ccc: $79
	sbc  [hl]                                        ; $5ccd: $9e
	sub  b                                           ; $5cce: $90
	ld   [hl], c                                     ; $5ccf: $71
	halt                                             ; $5cd0: $76
	sub  b                                           ; $5cd1: $90
	ld   [hl], c                                     ; $5cd2: $71
	halt                                             ; $5cd3: $76
	inc  bc                                          ; $5cd4: $03
	sub  h                                           ; $5cd5: $94
	inc  b                                           ; $5cd6: $04
	sbc  [hl]                                        ; $5cd7: $9e
	and  b                                           ; $5cd8: $a0
	dec  c                                           ; $5cd9: $0d
	ld   e, e                                        ; $5cda: $5b
	ld   l, l                                        ; $5cdb: $6d
	ld   d, [hl]                                     ; $5cdc: $56
	ld   l, l                                        ; $5cdd: $6d
	sub  a                                           ; $5cde: $97
	sbc  [hl]                                        ; $5cdf: $9e
	sub  b                                           ; $5ce0: $90
	ld   h, l                                        ; $5ce1: $65
	ld   e, c                                        ; $5ce2: $59
	ld   h, l                                        ; $5ce3: $65
	ld   l, l                                        ; $5ce4: $6d
	sub  a                                           ; $5ce5: $97
	rst  $38                                         ; $5ce6: $ff
	rst  $38                                         ; $5ce7: $ff
	dec  c                                           ; $5ce8: $0d
	nop                                              ; $5ce9: $00
	ld   a, [bc]                                     ; $5cea: $0a
	inc  e                                           ; $5ceb: $1c
	ld   b, $01                                      ; $5cec: $06 $01
	ld   bc, $5001                                   ; $5cee: $01 $01 $50
	ld   l, l                                        ; $5cf1: $6d
	ld   d, d                                        ; $5cf2: $52
	ld   a, h                                        ; $5cf3: $7c
	ld   [bc], a                                     ; $5cf4: $02
	adc  h                                           ; $5cf5: $8c
	and  b                                           ; $5cf6: $a0
	inc  bc                                          ; $5cf7: $03
	xor  [hl]                                        ; $5cf8: $ae
	ld   d, [hl]                                     ; $5cf9: $56
	sbc  c                                           ; $5cfa: $99
	sub  [hl]                                        ; $5cfb: $96
	ld   d, h                                        ; $5cfc: $54
	ld   a, c                                        ; $5cfd: $79
	dec  c                                           ; $5cfe: $0d
	ld   a, b                                        ; $5cff: $78
	sbc  c                                           ; $5d00: $99
	ld   e, c                                        ; $5d01: $59
	sub  b                                           ; $5d02: $90
	ld   h, l                                        ; $5d03: $65
	sbc  d                                           ; $5d04: $9a
	ld   a, b                                        ; $5d05: $78
	ld   d, d                                        ; $5d06: $52
	ld   l, d                                        ; $5d07: $6a
	sbc  a                                           ; $5d08: $9f
	dec  c                                           ; $5d09: $0d
	ld   h, [hl]                                     ; $5d0a: $66
	sub  c                                           ; $5d0b: $91
	sbc  [hl]                                        ; $5d0c: $9e
	adc  h                                           ; $5d0d: $8c
	ld   l, l                                        ; $5d0e: $6d
	ld   [bc], a                                     ; $5d0f: $02
	xor  d                                           ; $5d10: $aa
	ld   [hl], l                                     ; $5d11: $75
	ld   a, b                                        ; $5d12: $78
	sbc  a                                           ; $5d13: $9f
	dec  c                                           ; $5d14: $0d
	nop                                              ; $5d15: $00
	ld   a, [bc]                                     ; $5d16: $0a
	dec  c                                           ; $5d17: $0d
	nop                                              ; $5d18: $00
	nop                                              ; $5d19: $00
	rrca                                             ; $5d1a: $0f
	nop                                              ; $5d1b: $00
	ld   bc, $ba01                                   ; $5d1c: $01 $01 $ba
	or   l                                           ; $5d1f: $b5
	and  l                                           ; $5d20: $a5
	ld   [bc], a                                     ; $5d21: $02
	adc  h                                           ; $5d22: $8c
	ld   l, [hl]                                     ; $5d23: $6e
	ld   [hl], c                                     ; $5d24: $71
	ld   l, l                                        ; $5d25: $6d
	ld   a, b                                        ; $5d26: $78
	rst  $38                                         ; $5d27: $ff
	rst  $38                                         ; $5d28: $ff
	dec  c                                           ; $5d29: $0d
	inc  b                                           ; $5d2a: $04
	ld   l, l                                        ; $5d2b: $6d
	sub  b                                           ; $5d2c: $90
	ld   d, b                                        ; $5d2d: $50
	and  c                                           ; $5d2e: $a1
	ld   a, b                                        ; $5d2f: $78
	ld   [bc], a                                     ; $5d30: $02
	adc  h                                           ; $5d31: $8c
	ld   e, d                                        ; $5d32: $5a
	ld   [hl], l                                     ; $5d33: $75
	ld   e, e                                        ; $5d34: $5b
	sbc  c                                           ; $5d35: $99
	sub  [hl]                                        ; $5d36: $96
	ld   d, h                                        ; $5d37: $54
	ld   a, c                                        ; $5d38: $79
	dec  c                                           ; $5d39: $0d
	ld   e, d                                        ; $5d3a: $5a
	and  c                                           ; $5d3b: $a1
	ld   a, [hl]                                     ; $5d3c: $7e
	sbc  e                                           ; $5d3d: $9b
	ld   d, h                                        ; $5d3e: $54
	sbc  a                                           ; $5d3f: $9f
	dec  c                                           ; $5d40: $0d
	nop                                              ; $5d41: $00
	ld   a, [bc]                                     ; $5d42: $0a
	dec  b                                           ; $5d43: $05
	add  b                                           ; $5d44: $80
	cp   a                                           ; $5d45: $bf
	ld   bc, $0001                                   ; $5d46: $01 $01 $00
	nop                                              ; $5d49: $00
	nop                                              ; $5d4a: $00
	rlca                                             ; $5d4b: $07
	ld   e, d                                        ; $5d4c: $5a
	nop                                              ; $5d4d: $00
	inc  bc                                          ; $5d4e: $03
	ld   a, [$0e00]                                  ; $5d4f: $fa $00 $0e
	inc  bc                                          ; $5d52: $03
	dec  c                                           ; $5d53: $0d
	rrca                                             ; $5d54: $0f
	db   $10                                         ; $5d55: $10
	rrca                                             ; $5d56: $0f
	rrca                                             ; $5d57: $0f
	nop                                              ; $5d58: $00
	ld   [bc], a                                     ; $5d59: $02
	ld   bc, $9258                                   ; $5d5a: $01 $58 $92
	sbc  [hl]                                        ; $5d5d: $9e
	adc  h                                           ; $5d5e: $8c
	ld   l, l                                        ; $5d5f: $6d
	or   e                                           ; $5d60: $b3
	ei                                               ; $5d61: $fb
	ldh  [c], a                                      ; $5d62: $e2
	xor  e                                           ; $5d63: $ab
	ei                                               ; $5d64: $fb
	pop  de                                          ; $5d65: $d1
	ei                                               ; $5d66: $fb
	ld   a, c                                        ; $5d67: $79
	dec  c                                           ; $5d68: $0d
	ld   a, b                                        ; $5d69: $78
	ld   [hl], c                                     ; $5d6a: $71
	ld   l, l                                        ; $5d6b: $6d
	ld   a, h                                        ; $5d6c: $7c
	ld   e, c                                        ; $5d6d: $59
	ld   d, d                                        ; $5d6e: $52
	ld   sp, hl                                      ; $5d6f: $f9
	dec  c                                           ; $5d70: $0d
	inc  bc                                          ; $5d71: $03
	add  d                                           ; $5d72: $82
	inc  bc                                          ; $5d73: $03
	ld   d, d                                        ; $5d74: $52
	ld   a, l                                        ; $5d75: $7d
	inc  b                                           ; $5d76: $04
	ld   c, [hl]                                     ; $5d77: $4e
	inc  b                                           ; $5d78: $04
	inc  sp                                          ; $5d79: $33
	add  c                                           ; $5d7a: $81
	inc  b                                           ; $5d7b: $04
	ld   a, [hl]                                     ; $5d7c: $7e
	ld   [bc], a                                     ; $5d7d: $02
	ld   e, d                                        ; $5d7e: $5a
	ld   e, e                                        ; $5d7f: $5b
	ld   l, [hl]                                     ; $5d80: $6e
	sbc  a                                           ; $5d81: $9f
	dec  c                                           ; $5d82: $0d
	nop                                              ; $5d83: $00
	ld   a, [bc]                                     ; $5d84: $0a
	ld   bc, $9a61                                   ; $5d85: $01 $61 $9a
	ld   a, c                                        ; $5d88: $79
	ld   h, c                                        ; $5d89: $61
	sbc  b                                           ; $5d8a: $98
	ld   l, b                                        ; $5d8b: $68
	sbc  [hl]                                        ; $5d8c: $9e
	dec  c                                           ; $5d8d: $0d
	adc  h                                           ; $5d8e: $8c
	ld   l, l                                        ; $5d8f: $6d
	sbc  [hl]                                        ; $5d90: $9e
	ld   e, d                                        ; $5d91: $5a
	and  c                                           ; $5d92: $a1
	ld   a, [hl]                                     ; $5d93: $7e
	sbc  b                                           ; $5d94: $98
	ld   l, l                                        ; $5d95: $6d
	adc  h                                           ; $5d96: $8c
	ld   d, [hl]                                     ; $5d97: $56
	sbc  a                                           ; $5d98: $9f
	dec  c                                           ; $5d99: $0d
	and  e                                           ; $5d9a: $a3
	ret  z                                           ; $5d9b: $c8

	and  h                                           ; $5d9c: $a4
	xor  e                                           ; $5d9d: $ab
	cp   d                                           ; $5d9e: $ba
	ld   a, [$0dfa]                                  ; $5d9f: $fa $fa $0d
	nop                                              ; $5da2: $00
	ld   a, [bc]                                     ; $5da3: $0a
	nop                                              ; $5da4: $00
	ld   c, $03                                      ; $5da5: $0e $03
	dec  c                                           ; $5da7: $0d
	rrca                                             ; $5da8: $0f
	db   $10                                         ; $5da9: $10
	rrca                                             ; $5daa: $0f
	rrca                                             ; $5dab: $0f
	nop                                              ; $5dac: $00
	ld   [bc], a                                     ; $5dad: $02
	ld   bc, $4f92                                   ; $5dae: $01 $92 $4f
	sbc  [hl]                                        ; $5db1: $9e
	or   e                                           ; $5db2: $b3
	ei                                               ; $5db3: $fb
	ldh  [c], a                                      ; $5db4: $e2
	xor  e                                           ; $5db5: $ab
	ei                                               ; $5db6: $fb
	pop  de                                          ; $5db7: $d1
	ei                                               ; $5db8: $fb
	ld   a, c                                        ; $5db9: $79
	dec  c                                           ; $5dba: $0d
	ld   a, b                                        ; $5dbb: $78
	ld   [hl], c                                     ; $5dbc: $71
	ld   l, l                                        ; $5dbd: $6d
	adc  l                                           ; $5dbe: $8d
	ld   l, l                                        ; $5dbf: $6d
	ld   d, d                                        ; $5dc0: $52
	ld   l, [hl]                                     ; $5dc1: $6e
	ld   a, e                                        ; $5dc2: $7b
	sbc  a                                           ; $5dc3: $9f
	dec  c                                           ; $5dc4: $0d
	nop                                              ; $5dc5: $00
	ld   a, [bc]                                     ; $5dc6: $0a
	ld   bc, $9a61                                   ; $5dc7: $01 $61 $9a
	sub  b                                           ; $5dca: $90
	inc  b                                           ; $5dcb: $04
	dec  c                                           ; $5dcc: $0d
	ld   [bc], a                                     ; $5dcd: $02
	sub  [hl]                                        ; $5dce: $96
	inc  b                                           ; $5dcf: $04
	ld   b, l                                        ; $5dd0: $45
	inc  b                                           ; $5dd1: $04
	ld   a, [bc]                                     ; $5dd2: $0a
	inc  b                                           ; $5dd3: $04
	dec  bc                                          ; $5dd4: $0b
	ld   a, c                                        ; $5dd5: $79
	ld   [bc], a                                     ; $5dd6: $02
	ld   e, d                                        ; $5dd7: $5a
	ld   h, c                                        ; $5dd8: $61
	sbc  c                                           ; $5dd9: $99
	dec  c                                           ; $5dda: $0d
	and  e                                           ; $5ddb: $a3
	or   b                                           ; $5ddc: $b0
	cp   b                                           ; $5ddd: $b8
	ret  z                                           ; $5dde: $c8

	push af                                          ; $5ddf: $f5
	ret                                              ; $5de0: $c9


	ld   l, [hl]                                     ; $5de1: $6e
	halt                                             ; $5de2: $76
	dec  b                                           ; $5de3: $05
	pop  de                                          ; $5de4: $d1
	ld   [hl], c                                     ; $5de5: $71
	ld   [hl], h                                     ; $5de6: $74
	dec  c                                           ; $5de7: $0d
	ld   d, b                                        ; $5de8: $50
	ld   e, e                                        ; $5de9: $5b
	sub  a                                           ; $5dea: $97
	adc  a                                           ; $5deb: $8f
	ld   [hl], h                                     ; $5dec: $74
	ld   e, l                                        ; $5ded: $5d
	sbc  d                                           ; $5dee: $9a
	sbc  a                                           ; $5def: $9f
	dec  c                                           ; $5df0: $0d
	nop                                              ; $5df1: $00
	ld   a, [bc]                                     ; $5df2: $0a
	rlca                                             ; $5df3: $07
	add  $00                                         ; $5df4: $c6 $00
	ld   [bc], a                                     ; $5df6: $02
	nop                                              ; $5df7: $00
	ld   bc, $2308                                   ; $5df8: $01 $08 $23
	nop                                              ; $5dfb: $00
	rlca                                             ; $5dfc: $07
	ld   hl, sp+$00                                  ; $5dfd: $f8 $00
	ld   [bc], a                                     ; $5dff: $02
	nop                                              ; $5e00: $00
	ld   bc, $230f                                   ; $5e01: $01 $0f $23
	nop                                              ; $5e04: $00
	rlca                                             ; $5e05: $07
	ld   a, [hl+]                                    ; $5e06: $2a
	ld   bc, $0002                                   ; $5e07: $01 $02 $00
	ld   bc, $2316                                   ; $5e0a: $01 $16 $23
	nop                                              ; $5e0d: $00
	ld   b, $5c                                      ; $5e0e: $06 $5c
	ld   bc, $6b01                                   ; $5e10: $01 $01 $6b
	ld   a, h                                        ; $5e13: $7c
	inc  bc                                          ; $5e14: $03
	sbc  $9d                                         ; $5e15: $de $9d
	sbc  b                                           ; $5e17: $98
	halt                                             ; $5e18: $76
	ld   d, d                                        ; $5e19: $52
	ld   [hl], c                                     ; $5e1a: $71
	ld   [hl], h                                     ; $5e1b: $74
	ld   a, l                                        ; $5e1c: $7d
	inc  b                                           ; $5e1d: $04
	ld   c, c                                        ; $5e1e: $49
	ld   l, [hl]                                     ; $5e1f: $6e
	ld   e, d                                        ; $5e20: $5a
	sbc  [hl]                                        ; $5e21: $9e
	dec  c                                           ; $5e22: $0d
	ld   [bc], a                                     ; $5e23: $02
	and  l                                           ; $5e24: $a5
	ld   [bc], a                                     ; $5e25: $02
	sub  e                                           ; $5e26: $93
	ld   a, l                                        ; $5e27: $7d
	inc  bc                                          ; $5e28: $03
	db   $fd                                         ; $5e29: $fd
	inc  b                                           ; $5e2a: $04
	ld   d, h                                        ; $5e2b: $54
	ld   a, c                                        ; $5e2c: $79
	inc  de                                          ; $5e2d: $13
	ld   de, $de11                                   ; $5e2e: $11 $11 $de
	and  l                                           ; $5e31: $a5
	push af                                          ; $5e32: $f5
	ret                                              ; $5e33: $c9


	and  b                                           ; $5e34: $a0
	dec  c                                           ; $5e35: $0d
	ld   l, h                                        ; $5e36: $6c
	ld   d, h                                        ; $5e37: $54
	ld   [hl], h                                     ; $5e38: $74
	ld   d, d                                        ; $5e39: $52
	ld   h, a                                        ; $5e3a: $67
	sbc  c                                           ; $5e3b: $99
	sbc  a                                           ; $5e3c: $9f
	dec  c                                           ; $5e3d: $0d
	nop                                              ; $5e3e: $00
	ld   a, [bc]                                     ; $5e3f: $0a
	ld   b, $8e                                      ; $5e40: $06 $8e
	ld   bc, $6b01                                   ; $5e42: $01 $01 $6b
	ld   a, h                                        ; $5e45: $7c
	inc  bc                                          ; $5e46: $03
	sbc  $9d                                         ; $5e47: $de $9d
	sbc  b                                           ; $5e49: $98
	halt                                             ; $5e4a: $76
	ld   d, d                                        ; $5e4b: $52
	ld   [hl], c                                     ; $5e4c: $71
	ld   [hl], h                                     ; $5e4d: $74
	ld   a, l                                        ; $5e4e: $7d
	inc  b                                           ; $5e4f: $04
	ld   c, c                                        ; $5e50: $49
	ld   l, [hl]                                     ; $5e51: $6e
	ld   e, d                                        ; $5e52: $5a
	sbc  [hl]                                        ; $5e53: $9e
	dec  c                                           ; $5e54: $0d
	ld   [bc], a                                     ; $5e55: $02
	and  l                                           ; $5e56: $a5
	ld   [bc], a                                     ; $5e57: $02
	sub  e                                           ; $5e58: $93
	ld   a, l                                        ; $5e59: $7d
	inc  bc                                          ; $5e5a: $03
	db   $fd                                         ; $5e5b: $fd
	inc  b                                           ; $5e5c: $04
	ld   d, h                                        ; $5e5d: $54
	ld   a, c                                        ; $5e5e: $79
	dec  d                                           ; $5e5f: $15
	ld   de, $de11                                   ; $5e60: $11 $11 $de
	and  l                                           ; $5e63: $a5
	push af                                          ; $5e64: $f5
	ret                                              ; $5e65: $c9


	and  b                                           ; $5e66: $a0
	dec  c                                           ; $5e67: $0d
	ld   l, h                                        ; $5e68: $6c
	ld   d, h                                        ; $5e69: $54
	ld   [hl], h                                     ; $5e6a: $74
	ld   d, d                                        ; $5e6b: $52
	ld   h, a                                        ; $5e6c: $67
	sbc  c                                           ; $5e6d: $99
	sbc  a                                           ; $5e6e: $9f
	dec  c                                           ; $5e6f: $0d
	nop                                              ; $5e70: $00
	ld   a, [bc]                                     ; $5e71: $0a
	ld   b, $8e                                      ; $5e72: $06 $8e
	ld   bc, $6b01                                   ; $5e74: $01 $01 $6b
	ld   a, h                                        ; $5e77: $7c
	inc  bc                                          ; $5e78: $03
	sbc  $9d                                         ; $5e79: $de $9d
	sbc  b                                           ; $5e7b: $98
	halt                                             ; $5e7c: $76
	ld   d, d                                        ; $5e7d: $52
	ld   [hl], c                                     ; $5e7e: $71
	ld   [hl], h                                     ; $5e7f: $74
	ld   a, l                                        ; $5e80: $7d
	inc  b                                           ; $5e81: $04
	ld   c, c                                        ; $5e82: $49
	ld   l, [hl]                                     ; $5e83: $6e
	ld   e, d                                        ; $5e84: $5a
	sbc  [hl]                                        ; $5e85: $9e
	dec  c                                           ; $5e86: $0d
	ld   [bc], a                                     ; $5e87: $02
	and  l                                           ; $5e88: $a5
	ld   [bc], a                                     ; $5e89: $02
	sub  e                                           ; $5e8a: $93
	ld   a, l                                        ; $5e8b: $7d
	inc  bc                                          ; $5e8c: $03
	db   $fd                                         ; $5e8d: $fd
	inc  b                                           ; $5e8e: $04
	ld   d, h                                        ; $5e8f: $54
	ld   a, c                                        ; $5e90: $79
	rla                                              ; $5e91: $17
	ld   de, $de11                                   ; $5e92: $11 $11 $de
	and  l                                           ; $5e95: $a5
	push af                                          ; $5e96: $f5
	ret                                              ; $5e97: $c9


	and  b                                           ; $5e98: $a0
	dec  c                                           ; $5e99: $0d
	ld   l, h                                        ; $5e9a: $6c
	ld   d, h                                        ; $5e9b: $54
	ld   [hl], h                                     ; $5e9c: $74
	ld   d, d                                        ; $5e9d: $52
	ld   h, a                                        ; $5e9e: $67
	sbc  c                                           ; $5e9f: $99
	sbc  a                                           ; $5ea0: $9f
	dec  c                                           ; $5ea1: $0d
	nop                                              ; $5ea2: $00
	ld   a, [bc]                                     ; $5ea3: $0a
	ld   b, $8e                                      ; $5ea4: $06 $8e
	ld   bc, $6b01                                   ; $5ea6: $01 $01 $6b
	ld   a, h                                        ; $5ea9: $7c
	inc  bc                                          ; $5eaa: $03
	sbc  $9d                                         ; $5eab: $de $9d
	sbc  b                                           ; $5ead: $98
	halt                                             ; $5eae: $76
	ld   d, d                                        ; $5eaf: $52
	ld   [hl], c                                     ; $5eb0: $71
	ld   [hl], h                                     ; $5eb1: $74
	ld   a, l                                        ; $5eb2: $7d
	inc  b                                           ; $5eb3: $04
	ld   c, c                                        ; $5eb4: $49
	ld   l, [hl]                                     ; $5eb5: $6e
	ld   e, d                                        ; $5eb6: $5a
	sbc  [hl]                                        ; $5eb7: $9e
	dec  c                                           ; $5eb8: $0d
	ld   [bc], a                                     ; $5eb9: $02
	and  l                                           ; $5eba: $a5
	ld   [bc], a                                     ; $5ebb: $02
	sub  e                                           ; $5ebc: $93
	ld   a, l                                        ; $5ebd: $7d
	inc  bc                                          ; $5ebe: $03
	db   $fd                                         ; $5ebf: $fd
	inc  b                                           ; $5ec0: $04
	ld   d, h                                        ; $5ec1: $54
	ld   a, c                                        ; $5ec2: $79
	add  hl, de                                      ; $5ec3: $19
	ld   de, $de11                                   ; $5ec4: $11 $11 $de
	and  l                                           ; $5ec7: $a5
	push af                                          ; $5ec8: $f5
	ret                                              ; $5ec9: $c9


	and  b                                           ; $5eca: $a0
	dec  c                                           ; $5ecb: $0d
	ld   l, h                                        ; $5ecc: $6c
	ld   d, h                                        ; $5ecd: $54
	ld   [hl], h                                     ; $5ece: $74
	ld   d, d                                        ; $5ecf: $52
	ld   h, a                                        ; $5ed0: $67
	sbc  c                                           ; $5ed1: $99
	sbc  a                                           ; $5ed2: $9f
	dec  c                                           ; $5ed3: $0d
	nop                                              ; $5ed4: $00
	ld   a, [bc]                                     ; $5ed5: $0a
	ld   b, $8e                                      ; $5ed6: $06 $8e
	ld   bc, $0a07                                   ; $5ed8: $01 $07 $0a
	ld   [bc], a                                     ; $5edb: $02
	ld   b, $20                                      ; $5edc: $06 $20
	ld   [bc], a                                     ; $5ede: $02
	nop                                              ; $5edf: $00
	ld   bc, $a5de                                   ; $5ee0: $01 $de $a5
	push af                                          ; $5ee3: $f5
	ret                                              ; $5ee4: $c9


	ld   a, l                                        ; $5ee5: $7d
	inc  b                                           ; $5ee6: $04
	ld   c, c                                        ; $5ee7: $49
	ld   e, c                                        ; $5ee8: $59
	ld   [hl], c                                     ; $5ee9: $71
	ld   [hl], h                                     ; $5eea: $74
	ld   [bc], a                                     ; $5eeb: $02
	jp   $9e7d                                       ; $5eec: $c3 $7d $9e


	dec  c                                           ; $5eef: $0d
	adc  h                                           ; $5ef0: $8c
	ld   l, [hl]                                     ; $5ef1: $6e
	inc  b                                           ; $5ef2: $04
	ld   e, a                                        ; $5ef3: $5f
	inc  b                                           ; $5ef4: $04
	pop  bc                                          ; $5ef5: $c1
	ld   l, [hl]                                     ; $5ef6: $6e
	ld   e, d                                        ; $5ef7: $5a
	sbc  [hl]                                        ; $5ef8: $9e
	ld   b, $61                                      ; $5ef9: $06 $61
	ld   bc, $9d14                                   ; $5efb: $01 $14 $9d
	ld   e, c                                        ; $5efe: $59
	sbc  c                                           ; $5eff: $99
	ld   e, c                                        ; $5f00: $59
	sub  a                                           ; $5f01: $97
	dec  c                                           ; $5f02: $0d
	dec  b                                           ; $5f03: $05
	inc  de                                          ; $5f04: $13
	ld   h, l                                        ; $5f05: $65
	adc  l                                           ; $5f06: $8d
	ld   a, c                                        ; $5f07: $79
	ld   h, l                                        ; $5f08: $65
	ld   [hl], h                                     ; $5f09: $74
	ld   e, b                                        ; $5f0a: $58
	ld   d, d                                        ; $5f0b: $52
	ld   [hl], h                                     ; $5f0c: $74
	ld   e, l                                        ; $5f0d: $5d
	sbc  d                                           ; $5f0e: $9a
	sbc  a                                           ; $5f0f: $9f
	dec  c                                           ; $5f10: $0d
	nop                                              ; $5f11: $00
	ld   a, [bc]                                     ; $5f12: $0a
	rlca                                             ; $5f13: $07
	db   $e3                                         ; $5f14: $e3
	ld   bc, $8004                                   ; $5f15: $01 $04 $80
	ld   b, $01                                      ; $5f18: $06 $01
	rst  $38                                         ; $5f1a: $ff
	jr   nz, jr_042_5f1d                             ; $5f1b: $20 $00

jr_042_5f1d:
	ld   bc, $9a6b                                   ; $5f1d: $01 $6b $9a
	ld   h, [hl]                                     ; $5f20: $66
	sub  c                                           ; $5f21: $91
	sbc  [hl]                                        ; $5f22: $9e
	and  e                                           ; $5f23: $a3
	ret  z                                           ; $5f24: $c8

	and  h                                           ; $5f25: $a4
	xor  e                                           ; $5f26: $ab
	cp   d                                           ; $5f27: $ba
	ld   a, [$0dfa]                                  ; $5f28: $fa $fa $0d
	nop                                              ; $5f2b: $00
	ld   a, [bc]                                     ; $5f2c: $0a
	nop                                              ; $5f2d: $00
	ld   bc, $9a6b                                   ; $5f2e: $01 $6b $9a
	ld   h, [hl]                                     ; $5f31: $66
	sub  c                                           ; $5f32: $91
	sbc  [hl]                                        ; $5f33: $9e
	ld   d, b                                        ; $5f34: $50
	adc  h                                           ; $5f35: $8c
	sbc  b                                           ; $5f36: $98
	ld   a, h                                        ; $5f37: $7c
	ld   l, h                                        ; $5f38: $6c
	ld   e, e                                        ; $5f39: $5b
	dec  c                                           ; $5f3a: $0d
	ld   a, [hl]                                     ; $5f3b: $7e
	ld   [hl], c                                     ; $5f3c: $71
	ld   e, c                                        ; $5f3d: $59
	sbc  b                                           ; $5f3e: $98
	ld   h, l                                        ; $5f3f: $65
	ld   [hl], h                                     ; $5f40: $74
	sbc  c                                           ; $5f41: $99
	and  c                                           ; $5f42: $a1
	ld   h, [hl]                                     ; $5f43: $66
	sub  c                                           ; $5f44: $91
	ld   a, b                                        ; $5f45: $78
	ld   d, d                                        ; $5f46: $52
	ld   l, h                                        ; $5f47: $6c
	sbc  a                                           ; $5f48: $9f
	dec  c                                           ; $5f49: $0d
	and  e                                           ; $5f4a: $a3
	ret  z                                           ; $5f4b: $c8

	and  h                                           ; $5f4c: $a4
	xor  e                                           ; $5f4d: $ab
	cp   d                                           ; $5f4e: $ba
	ld   a, [$0dfa]                                  ; $5f4f: $fa $fa $0d
	nop                                              ; $5f52: $00
	ld   a, [bc]                                     ; $5f53: $0a
	nop                                              ; $5f54: $00
	ld   bc, $9a61                                   ; $5f55: $01 $61 $9a
	and  b                                           ; $5f58: $a0
	inc  b                                           ; $5f59: $04
	ld   c, c                                        ; $5f5a: $49
	ld   e, c                                        ; $5f5b: $59
	ld   a, h                                        ; $5f5c: $7c
	inc  bc                                          ; $5f5d: $03
	ld   a, l                                        ; $5f5e: $7d
	ld   h, l                                        ; $5f5f: $65
	ld   a, c                                        ; $5f60: $79
	ld   h, l                                        ; $5f61: $65
	ld   [hl], h                                     ; $5f62: $74
	sbc  [hl]                                        ; $5f63: $9e
	dec  c                                           ; $5f64: $0d
	ld   e, d                                        ; $5f65: $5a
	and  c                                           ; $5f66: $a1
	ld   a, [hl]                                     ; $5f67: $7e
	ld   [hl], c                                     ; $5f68: $71
	ld   [hl], h                                     ; $5f69: $74
	ld   e, l                                        ; $5f6a: $5d
	sbc  d                                           ; $5f6b: $9a
	sbc  a                                           ; $5f6c: $9f
	dec  c                                           ; $5f6d: $0d
	nop                                              ; $5f6e: $00
	ld   a, [bc]                                     ; $5f6f: $0a
	rlca                                             ; $5f70: $07
	db   $e3                                         ; $5f71: $e3
	ld   bc, $8004                                   ; $5f72: $01 $04 $80
	ld   b, $01                                      ; $5f75: $06 $01
	rst  $38                                         ; $5f77: $ff
	jr   nz, jr_042_5f7a                             ; $5f78: $20 $00

jr_042_5f7a:
	ld   bc, $9a6b                                   ; $5f7a: $01 $6b $9a
	ld   h, [hl]                                     ; $5f7d: $66
	sub  c                                           ; $5f7e: $91
	sbc  [hl]                                        ; $5f7f: $9e
	and  e                                           ; $5f80: $a3
	ret  z                                           ; $5f81: $c8

	and  h                                           ; $5f82: $a4
	xor  e                                           ; $5f83: $ab
	cp   d                                           ; $5f84: $ba
	ld   a, [$0dfa]                                  ; $5f85: $fa $fa $0d
	nop                                              ; $5f88: $00
	ld   a, [bc]                                     ; $5f89: $0a
	nop                                              ; $5f8a: $00
	nop                                              ; $5f8b: $00



	rlca                                             ; $5f8c: $07
	ld   hl, sp+$00                                  ; $5f8d: $f8 $00
	ld   b, $20                                      ; $5f8f: $06 $20
	ld   [bc], a                                     ; $5f91: $02
	ld   bc, $2000                                   ; $5f92: $01 $00 $20
	ld   b, $20                                      ; $5f95: $06 $20
	inc  bc                                          ; $5f97: $03
	dec  de                                          ; $5f98: $1b
	nop                                              ; $5f99: $00
	ld   c, $13                                      ; $5f9a: $0e $13
	inc  e                                           ; $5f9c: $1c
	ld   c, $01                                      ; $5f9d: $0e $01
	ld   bc, $0102                                   ; $5f9f: $01 $02 $01
	ld   d, b                                        ; $5fa2: $50
	ld   [hl], c                                     ; $5fa3: $71
	sbc  [hl]                                        ; $5fa4: $9e
	ld   [$6300], sp                                 ; $5fa5: $08 $00 $63
	and  c                                           ; $5fa8: $a1
	sbc  a                                           ; $5fa9: $9f
	dec  c                                           ; $5faa: $0d
	nop                                              ; $5fab: $00
	ld   a, [bc]                                     ; $5fac: $0a
	ld   bc, $0701                                   ; $5fad: $01 $01 $07
	or   [hl]                                        ; $5fb0: $b6
	or   b                                           ; $5fb1: $b0
	db   $eb                                         ; $5fb2: $eb
	inc  b                                           ; $5fb3: $04
	ld   c, $03                                      ; $5fb4: $0e $03
	xor  b                                           ; $5fb6: $a8
	ld   hl, $011c                                   ; $5fb7: $21 $1c $01
	ld   [$fc0d], sp                                 ; $5fba: $08 $0d $fc
	ld   b, $a0                                      ; $5fbd: $06 $a0
	di                                               ; $5fbf: $f3
	ld   [bc], a                                     ; $5fc0: $02
	sbc  b                                           ; $5fc1: $98
	inc  bc                                          ; $5fc2: $03
	nop                                              ; $5fc3: $00
	inc  b                                           ; $5fc4: $04
	ld   b, l                                        ; $5fc5: $45
	inc  b                                           ; $5fc6: $04
	ld   a, [bc]                                     ; $5fc7: $0a
	ld   a, [$0dfc]                                  ; $5fc8: $fa $fc $0d
	or   b                                           ; $5fcb: $b0
	db   $ec                                         ; $5fcc: $ec
	and  e                                           ; $5fcd: $a3
	ld   e, b                                        ; $5fce: $58
	adc  a                                           ; $5fcf: $8f
	ld   [hl], l                                     ; $5fd0: $75
	halt                                             ; $5fd1: $76
	ld   d, h                                        ; $5fd2: $54
	ld   h, d                                        ; $5fd3: $62
	ld   h, h                                        ; $5fd4: $64
	ld   d, d                                        ; $5fd5: $52
	adc  h                                           ; $5fd6: $8c
	ld   h, a                                        ; $5fd7: $67
	sbc  a                                           ; $5fd8: $9f
	dec  c                                           ; $5fd9: $0d
	nop                                              ; $5fda: $00
	ld   a, [bc]                                     ; $5fdb: $0a
	ld   bc, $8b03                                   ; $5fdc: $01 $03 $8b
	ld   a, l                                        ; $5fdf: $7d
	ld   h, c                                        ; $5fe0: $61
	ld   a, h                                        ; $5fe1: $7c
	ld   l, l                                        ; $5fe2: $6d
	add  c                                           ; $5fe3: $81
	sbc  [hl]                                        ; $5fe4: $9e
	inc  b                                           ; $5fe5: $04
	inc  hl                                          ; $5fe6: $23
	inc  bc                                          ; $5fe7: $03
	ld   c, d                                        ; $5fe8: $4a
	ld   b, $37                                      ; $5fe9: $06 $37
	ld   b, $a8                                      ; $5feb: $06 $a8
	inc  bc                                          ; $5fed: $03
	db   $db                                         ; $5fee: $db
	dec  c                                           ; $5fef: $0d
	ld   hl, $031c                                   ; $5ff0: $21 $1c $03
	rst  $20                                         ; $5ff3: $e7
	ld   e, d                                        ; $5ff4: $5a
	ld   [bc], a                                     ; $5ff5: $02
	adc  b                                           ; $5ff6: $88
	inc  bc                                          ; $5ff7: $03
	rst  $20                                         ; $5ff8: $e7
	ld   h, l                                        ; $5ff9: $65
	ld   l, l                                        ; $5ffa: $6d
	and  c                                           ; $5ffb: $a1
	ld   [hl], l                                     ; $5ffc: $75
	ld   h, a                                        ; $5ffd: $67
	sub  [hl]                                        ; $5ffe: $96
	sbc  a                                           ; $5fff: $9f
	dec  c                                           ; $6000: $0d
	nop                                              ; $6001: $00
	ld   a, [bc]                                     ; $6002: $0a
	ld   bc, $7c6b                                   ; $6003: $01 $6b $7c
	ld   [bc], a                                     ; $6006: $02
	adc  b                                           ; $6007: $88
	inc  bc                                          ; $6008: $03
	rst  $20                                         ; $6009: $e7
	ld   [bc], a                                     ; $600a: $02
	sub  a                                           ; $600b: $97
	inc  b                                           ; $600c: $04
	ld   c, b                                        ; $600d: $48
	halt                                             ; $600e: $76
	ld   h, l                                        ; $600f: $65
	ld   [hl], h                                     ; $6010: $74
	sbc  [hl]                                        ; $6011: $9e
	inc  bc                                          ; $6012: $03
	db   $fd                                         ; $6013: $fd
	inc  b                                           ; $6014: $04
	ld   d, h                                        ; $6015: $54
	ld   a, c                                        ; $6016: $79
	dec  c                                           ; $6017: $0d
	inc  de                                          ; $6018: $13
	ld   de, $1111                                   ; $6019: $11 $11 $11
	sbc  $a5                                         ; $601c: $de $a5
	push af                                          ; $601e: $f5
	ret                                              ; $601f: $c9


	and  b                                           ; $6020: $a0
	dec  b                                           ; $6021: $05
	inc  a                                           ; $6022: $3c
	ld   h, l                                        ; $6023: $65
	inc  bc                                          ; $6024: $03
	ld   h, l                                        ; $6025: $65
	ld   h, b                                        ; $6026: $60
	dec  c                                           ; $6027: $0d
	nop                                              ; $6028: $00
	inc  d                                           ; $6029: $14
	ld   de, $0101                                   ; $602a: $11 $01 $01
	adc  h                                           ; $602d: $8c
	ld   h, a                                        ; $602e: $67
	sbc  a                                           ; $602f: $9f
	dec  c                                           ; $6030: $0d
	nop                                              ; $6031: $00
	ld   a, [bc]                                     ; $6032: $0a
	ld   bc, $715b                                   ; $6033: $01 $5b $71
	halt                                             ; $6036: $76
	ld   [$6300], sp                                 ; $6037: $08 $00 $63
	and  c                                           ; $603a: $a1
	ld   a, h                                        ; $603b: $7c
	inc  b                                           ; $603c: $04
	db   $ec                                         ; $603d: $ec
	ld   a, c                                        ; $603e: $79
	dec  c                                           ; $603f: $0d
	dec  b                                           ; $6040: $05
	ld   d, $72                                      ; $6041: $16 $72
	inc  b                                           ; $6043: $04
	ld   h, c                                        ; $6044: $61
	inc  b                                           ; $6045: $04
	sub  d                                           ; $6046: $92
	ld   e, d                                        ; $6047: $5a
	ld   d, b                                        ; $6048: $50
	sbc  c                                           ; $6049: $99
	halt                                             ; $604a: $76
	dec  b                                           ; $604b: $05
	pop  de                                          ; $604c: $d1
	ld   d, d                                        ; $604d: $52
	adc  h                                           ; $604e: $8c
	ld   h, a                                        ; $604f: $67
	ld   a, h                                        ; $6050: $7c
	ld   [hl], l                                     ; $6051: $75
	dec  c                                           ; $6052: $0d
	ld   l, d                                        ; $6053: $6a
	add  b                                           ; $6054: $80
	ld   d, d                                        ; $6055: $52
	sub  a                                           ; $6056: $97
	ld   h, l                                        ; $6057: $65
	ld   [hl], h                                     ; $6058: $74
	ld   [bc], a                                     ; $6059: $02
	inc  [hl]                                        ; $605a: $34
	ld   h, e                                        ; $605b: $63
	ld   d, d                                        ; $605c: $52
	ld   a, e                                        ; $605d: $7b
	sbc  a                                           ; $605e: $9f
	dec  c                                           ; $605f: $0d
	nop                                              ; $6060: $00
	ld   a, [bc]                                     ; $6061: $0a
	dec  b                                           ; $6062: $05
	jr   nz, jr_042_6068                             ; $6063: $20 $03

	ld   bc, $0001                                   ; $6065: $01 $01 $00

jr_042_6068:
	ld   bc, $9166                                   ; $6068: $01 $66 $91
	ld   d, b                                        ; $606b: $50
	sbc  [hl]                                        ; $606c: $9e
	ld   h, d                                        ; $606d: $62
	dec  b                                           ; $606e: $05
	db   $10                                         ; $606f: $10
	inc  bc                                          ; $6070: $03
	rst  $20                                         ; $6071: $e7
	and  b                                           ; $6072: $a0
	ld   e, b                                        ; $6073: $58
	inc  b                                           ; $6074: $04
	rla                                              ; $6075: $17
	ld   l, a                                        ; $6076: $6f
	ld   h, l                                        ; $6077: $65
	ld   [hl], h                                     ; $6078: $74
	dec  c                                           ; $6079: $0d
	ld   e, b                                        ; $607a: $58
	sbc  b                                           ; $607b: $98
	adc  h                                           ; $607c: $8c
	db   $fc                                         ; $607d: $fc
	ld   h, a                                        ; $607e: $67
	ld   a, [$000d]                                  ; $607f: $fa $0d $00
	ld   a, [bc]                                     ; $6082: $0a
	inc  bc                                          ; $6083: $03
	rlca                                             ; $6084: $07
	db   $ec                                         ; $6085: $ec
	ld   bc, $2006                                   ; $6086: $01 $06 $20
	ld   b, $01                                      ; $6089: $06 $01
	nop                                              ; $608b: $00
	jr   nz, jr_042_6094                             ; $608c: $20 $06

	jr   nz, @+$09                                   ; $608e: $20 $07

	dec  de                                          ; $6090: $1b
	nop                                              ; $6091: $00
	ld   c, $4e                                      ; $6092: $0e $4e

jr_042_6094:
	inc  e                                           ; $6094: $1c
	ld   bc, $0000                                   ; $6095: $01 $00 $00
	ld   [bc], a                                     ; $6098: $02
	ld   bc, $7150                                   ; $6099: $01 $50 $71
	sbc  [hl]                                        ; $609c: $9e
	ld   [$6300], sp                                 ; $609d: $08 $00 $63
	and  c                                           ; $60a0: $a1
	sbc  a                                           ; $60a1: $9f
	dec  c                                           ; $60a2: $0d
	nop                                              ; $60a3: $00
	inc  e                                           ; $60a4: $1c
	ld   bc, $0101                                   ; $60a5: $01 $01 $01
	ld   bc, $0d04                                   ; $60a8: $01 $04 $0d
	ld   [bc], a                                     ; $60ab: $02
	sub  [hl]                                        ; $60ac: $96
	inc  b                                           ; $60ad: $04
	ld   b, l                                        ; $60ae: $45
	inc  b                                           ; $60af: $04
	ld   a, [bc]                                     ; $60b0: $0a
	sbc  [hl]                                        ; $60b1: $9e
	ld   e, b                                        ; $60b2: $58
	inc  b                                           ; $60b3: $04
	ld   a, e                                        ; $60b4: $7b
	sbc  d                                           ; $60b5: $9a
	ld   h, e                                        ; $60b6: $63
	adc  h                                           ; $60b7: $8c
	ld   [hl], l                                     ; $60b8: $75
	ld   h, l                                        ; $60b9: $65
	ld   l, l                                        ; $60ba: $6d
	sbc  a                                           ; $60bb: $9f
	dec  c                                           ; $60bc: $0d
	nop                                              ; $60bd: $00
	dec  d                                           ; $60be: $15
	rlca                                             ; $60bf: $07

jr_042_60c0:
	ld   a, [bc]                                     ; $60c0: $0a
	ld   bc, $a189                                   ; $60c1: $01 $89 $a1
	ld   a, h                                        ; $60c4: $7c
	ld   [bc], a                                     ; $60c5: $02
	jr   nz, jr_042_60c0                             ; $60c6: $20 $f8

	ld   [bc], a                                     ; $60c8: $02
	sbc  e                                           ; $60c9: $9b
	ld   a, h                                        ; $60ca: $7c
	ld   [bc], a                                     ; $60cb: $02
	xor  c                                           ; $60cc: $a9
	ld   [hl], l                                     ; $60cd: $75
	ld   h, l                                        ; $60ce: $65
	ld   l, l                                        ; $60cf: $6d
	ld   e, d                                        ; $60d0: $5a
	sbc  [hl]                                        ; $60d1: $9e
	dec  c                                           ; $60d2: $0d
	ld   d, d                                        ; $60d3: $52
	sbc  e                                           ; $60d4: $9b
	and  c                                           ; $60d5: $a1
	ld   a, b                                        ; $60d6: $78
	ld   [bc], a                                     ; $60d7: $02
	jp   $505a                                       ; $60d8: $c3 $5a $50


	sbc  b                                           ; $60db: $98
	adc  h                                           ; $60dc: $8c
	ld   h, l                                        ; $60dd: $65
	ld   l, l                                        ; $60de: $6d
	sub  [hl]                                        ; $60df: $96
	ld   a, e                                        ; $60e0: $7b
	sbc  a                                           ; $60e1: $9f
	dec  c                                           ; $60e2: $0d
	nop                                              ; $60e3: $00
	ld   a, [bc]                                     ; $60e4: $0a
	inc  e                                           ; $60e5: $1c
	ld   bc, $0505                                   ; $60e6: $01 $05 $05
	ld   bc, $a178                                   ; $60e9: $01 $78 $a1
	ld   l, [hl]                                     ; $60ec: $6e
	ld   e, c                                        ; $60ed: $59
	jp   z, Jump_042_78b9                            ; $60ee: $ca $b9 $78

	inc  bc                                          ; $60f1: $03
	ld   c, e                                        ; $60f2: $4b
	ld   a, [hl]                                     ; $60f3: $7e
	ld   e, c                                        ; $60f4: $59
	sbc  b                                           ; $60f5: $98
	dec  c                                           ; $60f6: $0d
	ld   [bc], a                                     ; $60f7: $02
	sub  l                                           ; $60f8: $95
	sub  a                                           ; $60f9: $97
	sbc  d                                           ; $60fa: $9a
	ld   l, l                                        ; $60fb: $6d
	ld   [bc], a                                     ; $60fc: $02
	and  c                                           ; $60fd: $a1
	ld   e, d                                        ; $60fe: $5a
	ld   h, l                                        ; $60ff: $65
	ld   [hl], h                                     ; $6100: $74
	dec  c                                           ; $6101: $0d
	inc  bc                                          ; $6102: $03
	ld   l, h                                        ; $6103: $6c
	ld   h, l                                        ; $6104: $65
	ld   a, l                                        ; $6105: $7d
	ld   l, b                                        ; $6106: $68
	ld   e, c                                        ; $6107: $59
	ld   h, l                                        ; $6108: $65
	ld   d, d                                        ; $6109: $52
	ld   [hl], l                                     ; $610a: $75
	ld   h, a                                        ; $610b: $67
	ld   e, a                                        ; $610c: $5f
	ld   [hl], a                                     ; $610d: $77
	rst  $38                                         ; $610e: $ff
	sbc  a                                           ; $610f: $9f
	dec  c                                           ; $6110: $0d
	nop                                              ; $6111: $00
	ld   a, [bc]                                     ; $6112: $0a
	inc  e                                           ; $6113: $1c
	ld   bc, $0101                                   ; $6114: $01 $01 $01
	ld   bc, $9076                                   ; $6117: $01 $76 $90
	ld   e, c                                        ; $611a: $59
	ld   e, l                                        ; $611b: $5d
	sbc  [hl]                                        ; $611c: $9e
	ld   [$6300], sp                                 ; $611d: $08 $00 $63
	and  c                                           ; $6120: $a1
	ld   a, h                                        ; $6121: $7c
	dec  c                                           ; $6122: $0d
	ld   e, d                                        ; $6123: $5a
	and  c                                           ; $6124: $a1
	ld   a, [hl]                                     ; $6125: $7e
	sbc  b                                           ; $6126: $98
	ld   a, c                                        ; $6127: $79
	sbc  [hl]                                        ; $6128: $9e
	ld   d, b                                        ; $6129: $50
	ld   l, l                                        ; $612a: $6d
	ld   h, l                                        ; $612b: $65
	ld   e, c                                        ; $612c: $59
	sub  a                                           ; $612d: $97
	ld   a, h                                        ; $612e: $7c
	dec  c                                           ; $612f: $0d
	ld   h, e                                        ; $6130: $63
	ld   h, e                                        ; $6131: $63
	sub  d                                           ; $6132: $92
	ld   e, c                                        ; $6133: $59
	ld   a, b                                        ; $6134: $78
	dec  b                                           ; $6135: $05
	cp   a                                           ; $6136: $bf
	sbc  b                                           ; $6137: $98
	inc  b                                           ; $6138: $04
	sub  d                                           ; $6139: $92
	ld   [hl], l                                     ; $613a: $75
	ld   h, a                                        ; $613b: $67
	sbc  a                                           ; $613c: $9f
	dec  c                                           ; $613d: $0d
	nop                                              ; $613e: $00
	ld   a, [bc]                                     ; $613f: $0a
	ld   bc, $aa02                                   ; $6140: $01 $02 $aa
	ld   [hl], l                                     ; $6143: $75
	ld   b, $37                                      ; $6144: $06 $37
	ld   b, $a8                                      ; $6146: $06 $a8
	inc  bc                                          ; $6148: $03
	db   $db                                         ; $6149: $db
	ld   a, c                                        ; $614a: $79
	ld   [bc], a                                     ; $614b: $02
	ld   a, a                                        ; $614c: $7f
	ld   [hl], c                                     ; $614d: $71
	ld   [hl], h                                     ; $614e: $74
	adc  l                                           ; $614f: $8d
	ld   [hl], h                                     ; $6150: $74
	dec  c                                           ; $6151: $0d
	ld   [bc], a                                     ; $6152: $02
	inc  [hl]                                        ; $6153: $34
	ld   h, e                                        ; $6154: $63
	ld   d, d                                        ; $6155: $52
	sbc  a                                           ; $6156: $9f
	dec  c                                           ; $6157: $0d
	nop                                              ; $6158: $00
	ld   a, [bc]                                     ; $6159: $0a
	dec  b                                           ; $615a: $05
	jr   nz, jr_042_6164                             ; $615b: $20 $07

	ld   bc, $0001                                   ; $615d: $01 $01 $00
	ld   bc, $715b                                   ; $6160: $01 $5b $71
	halt                                             ; $6163: $76

jr_042_6164:
	ld   d, d                                        ; $6164: $52
	ld   d, d                                        ; $6165: $52
	ld   [bc], a                                     ; $6166: $02
	jp   $505a                                       ; $6167: $c3 $5a $50


	sbc  b                                           ; $616a: $98
	adc  h                                           ; $616b: $8c
	ld   h, a                                        ; $616c: $67
	ld   e, c                                        ; $616d: $59
	sub  a                                           ; $616e: $97
	sbc  a                                           ; $616f: $9f
	dec  c                                           ; $6170: $0d
	ld   [hl], l                                     ; $6171: $75
	ld   a, l                                        ; $6172: $7d
	sbc  a                                           ; $6173: $9f
	dec  c                                           ; $6174: $0d
	nop                                              ; $6175: $00
	ld   a, [bc]                                     ; $6176: $0a
	inc  bc                                          ; $6177: $03
	rlca                                             ; $6178: $07
	ld   h, [hl]                                     ; $6179: $66
	inc  bc                                          ; $617a: $03
	ld   b, $20                                      ; $617b: $06 $20
	ld   [$0001], sp                                 ; $617d: $08 $01 $00
	jr   nz, jr_042_6188                             ; $6180: $20 $06

	jr   nz, jr_042_618d                             ; $6182: $20 $09

	dec  de                                          ; $6184: $1b
	nop                                              ; $6185: $00
	ld   c, $50                                      ; $6186: $0e $50

jr_042_6188:
	inc  e                                           ; $6188: $1c
	ld   [bc], a                                     ; $6189: $02
	nop                                              ; $618a: $00
	nop                                              ; $618b: $00
	ld   [bc], a                                     ; $618c: $02

jr_042_618d:
	ld   bc, $9750                                   ; $618d: $01 $50 $97
	sbc  [hl]                                        ; $6190: $9e
	ld   [$6308], sp                                 ; $6191: $08 $08 $63
	and  c                                           ; $6194: $a1
	sbc  [hl]                                        ; $6195: $9e
	dec  c                                           ; $6196: $0d
	nop                                              ; $6197: $00
	inc  e                                           ; $6198: $1c
	ld   [bc], a                                     ; $6199: $02
	ld   bc, $0101                                   ; $619a: $01 $01 $01
	ld   h, [hl]                                     ; $619d: $66
	sub  c                                           ; $619e: $91
	ld   a, b                                        ; $619f: $78
	ld   e, l                                        ; $61a0: $5d
	ld   [hl], h                                     ; $61a1: $74
	ld   [$6300], sp                                 ; $61a2: $08 $00 $63
	and  c                                           ; $61a5: $a1
	sbc  [hl]                                        ; $61a6: $9e
	dec  c                                           ; $61a7: $0d
	ld   e, b                                        ; $61a8: $58
	inc  b                                           ; $61a9: $04
	ld   a, e                                        ; $61aa: $7b
	sbc  d                                           ; $61ab: $9a
	ld   h, e                                        ; $61ac: $63
	adc  h                                           ; $61ad: $8c
	ld   [hl], l                                     ; $61ae: $75
	ld   h, l                                        ; $61af: $65
	ld   l, l                                        ; $61b0: $6d
	sbc  l                                           ; $61b1: $9d
	ld   a, e                                        ; $61b2: $7b
	sbc  a                                           ; $61b3: $9f
	dec  c                                           ; $61b4: $0d
	nop                                              ; $61b5: $00
	dec  d                                           ; $61b6: $15
	ld   [$010a], sp                                 ; $61b7: $08 $0a $01
	ld   l, l                                        ; $61ba: $6d
	ld   [hl], c                                     ; $61bb: $71
	ld   l, l                                        ; $61bc: $6d
	ld   [bc], a                                     ; $61bd: $02
	jr   nz, @-$06                                   ; $61be: $20 $f8

	ld   [bc], a                                     ; $61c0: $02
	sbc  e                                           ; $61c1: $9b
	ld   [bc], a                                     ; $61c2: $02
	xor  c                                           ; $61c3: $a9
	ld   [hl], l                                     ; $61c4: $75
	ld   h, l                                        ; $61c5: $65
	ld   l, l                                        ; $61c6: $6d
	ld   e, d                                        ; $61c7: $5a
	sbc  [hl]                                        ; $61c8: $9e
	dec  c                                           ; $61c9: $0d
	ret                                              ; $61ca: $c9


	call nz, $bad8                                   ; $61cb: $c4 $d8 $ba
	ret  nz                                          ; $61ce: $c0

	and  e                                           ; $61cf: $a3
	ld   a, h                                        ; $61d0: $7c
	inc  b                                           ; $61d1: $04
	ld   [hl], c                                     ; $61d2: $71
	ld   e, e                                        ; $61d3: $5b
	inc  bc                                          ; $61d4: $03
	add  d                                           ; $61d5: $82
	and  b                                           ; $61d6: $a0
	dec  c                                           ; $61d7: $0d
	ld   [hl], d                                     ; $61d8: $72
	halt                                             ; $61d9: $76
	adc  a                                           ; $61da: $8f
	sub  a                                           ; $61db: $97
	sbc  d                                           ; $61dc: $9a
	ld   [hl], h                                     ; $61dd: $74
	ld   [bc], a                                     ; $61de: $02
	ld   b, l                                        ; $61df: $45
	ld   l, c                                        ; $61e0: $69
	ld   [hl], l                                     ; $61e1: $75
	ld   h, l                                        ; $61e2: $65
	ld   l, l                                        ; $61e3: $6d
	sbc  l                                           ; $61e4: $9d
	ld   a, e                                        ; $61e5: $7b
	sbc  a                                           ; $61e6: $9f
	dec  c                                           ; $61e7: $0d
	nop                                              ; $61e8: $00
	ld   a, [bc]                                     ; $61e9: $0a
	inc  e                                           ; $61ea: $1c
	ld   [bc], a                                     ; $61eb: $02
	nop                                              ; $61ec: $00
	nop                                              ; $61ed: $00
	ld   bc, $7850                                   ; $61ee: $01 $50 $78
	ld   l, l                                        ; $61f1: $6d
	ld   e, d                                        ; $61f2: $5a
	ld   [hl], a                                     ; $61f3: $77
	ld   a, h                                        ; $61f4: $7c
	inc  bc                                          ; $61f5: $03
	sbc  b                                           ; $61f6: $98
	ld   a, b                                        ; $61f7: $78
	inc  b                                           ; $61f8: $04
	ld   d, $a0                                      ; $61f9: $16 $a0
	inc  b                                           ; $61fb: $04
	sbc  a                                           ; $61fc: $9f
	adc  [hl]                                        ; $61fd: $8e
	ld   e, c                                        ; $61fe: $59
	ld   a, l                                        ; $61ff: $7d
	dec  c                                           ; $6200: $0d
	sbc  l                                           ; $6201: $9d
	ld   e, c                                        ; $6202: $59
	sbc  b                                           ; $6203: $98
	adc  h                                           ; $6204: $8c
	ld   l, c                                        ; $6205: $69
	and  c                                           ; $6206: $a1
	ld   e, d                                        ; $6207: $5a
	sbc  [hl]                                        ; $6208: $9e
	sub  b                                           ; $6209: $90
	ld   h, l                                        ; $620a: $65
	rst  $38                                         ; $620b: $ff
	dec  c                                           ; $620c: $0d
	nop                                              ; $620d: $00
	ld   a, [bc]                                     ; $620e: $0a
	inc  e                                           ; $620f: $1c
	ld   [bc], a                                     ; $6210: $02
	ld   b, $06                                      ; $6211: $06 $06
	ld   bc, $6590                                   ; $6213: $01 $90 $65
	sbc  [hl]                                        ; $6216: $9e
	dec  b                                           ; $6217: $05
	sub  [hl]                                        ; $6218: $96
	ld   [hl], c                                     ; $6219: $71
	ld   l, l                                        ; $621a: $6d
	ld   [bc], a                                     ; $621b: $02
	jp   $505a                                       ; $621c: $c3 $5a $50


	ld   [hl], c                                     ; $621f: $71
	ld   l, l                                        ; $6220: $6d
	sub  a                                           ; $6221: $97
	sbc  [hl]                                        ; $6222: $9e
	dec  c                                           ; $6223: $0d
	sbc  l                                           ; $6224: $9d
	ld   l, l                                        ; $6225: $6d
	ld   e, l                                        ; $6226: $5d
	ld   h, l                                        ; $6227: $65
	and  b                                           ; $6228: $a0
	ld   l, l                                        ; $6229: $6d
	sub  [hl]                                        ; $622a: $96
	ld   [hl], c                                     ; $622b: $71
	ld   [hl], h                                     ; $622c: $74
	ld   e, e                                        ; $622d: $5b
	ld   [hl], h                                     ; $622e: $74
	sub  b                                           ; $622f: $90
	dec  c                                           ; $6230: $0d
	sub  [hl]                                        ; $6231: $96
	sbc  e                                           ; $6232: $9b
	ld   h, l                                        ; $6233: $65
	ld   d, d                                        ; $6234: $52
	ld   [hl], l                                     ; $6235: $75
	ld   h, a                                        ; $6236: $67
	sbc  l                                           ; $6237: $9d
	sub  [hl]                                        ; $6238: $96
	sbc  a                                           ; $6239: $9f
	dec  c                                           ; $623a: $0d
	nop                                              ; $623b: $00
	ld   a, [bc]                                     ; $623c: $0a
	inc  e                                           ; $623d: $1c
	ld   [bc], a                                     ; $623e: $02
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	ld   bc, $7c6b                                   ; $6241: $01 $6b $7c
	halt                                             ; $6244: $76
	ld   e, e                                        ; $6245: $5b
	ld   a, l                                        ; $6246: $7d
	sbc  [hl]                                        ; $6247: $9e
	ld   [bc], a                                     ; $6248: $02
	rst  JumpTable                                         ; $6249: $df
	inc  b                                           ; $624a: $04
	sub  d                                           ; $624b: $92
	inc  bc                                          ; $624c: $03
	and  b                                           ; $624d: $a0
	ld   l, a                                        ; $624e: $6f
	ld   [hl], l                                     ; $624f: $75
	sub  b                                           ; $6250: $90
	dec  c                                           ; $6251: $0d
	ld   h, e                                        ; $6252: $63
	ld   l, c                                        ; $6253: $69
	ld   [hl], h                                     ; $6254: $74
	ld   d, b                                        ; $6255: $50
	ld   h, b                                        ; $6256: $60
	adc  h                                           ; $6257: $8c
	ld   h, a                                        ; $6258: $67
	ld   e, c                                        ; $6259: $59
	sub  a                                           ; $625a: $97
	sbc  a                                           ; $625b: $9f
	dec  c                                           ; $625c: $0d
	nop                                              ; $625d: $00
	inc  e                                           ; $625e: $1c
	ld   [bc], a                                     ; $625f: $02
	jr   nc, jr_042_627b                             ; $6260: $30 $19

	ld   bc, $fc58                                   ; $6262: $01 $58 $fc
	adc  c                                           ; $6265: $89
	ld   [hl], c                                     ; $6266: $71
	adc  c                                           ; $6267: $89
	ld   [hl], c                                     ; $6268: $71
	adc  c                                           ; $6269: $89
	ld   a, [$000d]                                  ; $626a: $fa $0d $00
	ld   a, [bc]                                     ; $626d: $0a
	inc  e                                           ; $626e: $1c
	ld   [bc], a                                     ; $626f: $02
	ld   bc, $0101                                   ; $6270: $01 $01 $01
	ld   l, e                                        ; $6273: $6b
	sbc  d                                           ; $6274: $9a
	ld   [hl], l                                     ; $6275: $75
	ld   a, l                                        ; $6276: $7d
	sbc  [hl]                                        ; $6277: $9e
	adc  h                                           ; $6278: $8c
	ld   l, l                                        ; $6279: $6d
	ld   [bc], a                                     ; $627a: $02

jr_042_627b:
	add  [hl]                                        ; $627b: $86
	ld   d, h                                        ; $627c: $54
	inc  b                                           ; $627d: $04
	xor  d                                           ; $627e: $aa
	adc  h                                           ; $627f: $8c
	ld   [hl], l                                     ; $6280: $75
	sbc  [hl]                                        ; $6281: $9e
	dec  c                                           ; $6282: $0d
	ld   h, d                                        ; $6283: $62
	ld   e, e                                        ; $6284: $5b
	ld   h, b                                        ; $6285: $60
	and  c                                           ; $6286: $a1
	sub  [hl]                                        ; $6287: $96
	ld   d, h                                        ; $6288: $54
	sbc  a                                           ; $6289: $9f
	dec  c                                           ; $628a: $0d
	nop                                              ; $628b: $00
	ld   a, [bc]                                     ; $628c: $0a
	inc  bc                                          ; $628d: $03
	inc  e                                           ; $628e: $1c
	ld   [bc], a                                     ; $628f: $02
	inc  b                                           ; $6290: $04
	inc  b                                           ; $6291: $04
	add  hl, bc                                      ; $6292: $09
	inc  a                                           ; $6293: $3c
	ld   [bc], a                                     ; $6294: $02
	ld   bc, $ff50                                   ; $6295: $01 $50 $ff
	rst  $38                                         ; $6298: $ff
	ld   l, e                                        ; $6299: $6b
	ld   d, h                                        ; $629a: $54
	ld   [hl], l                                     ; $629b: $75
	ld   h, l                                        ; $629c: $65
	ld   l, l                                        ; $629d: $6d
	sbc  l                                           ; $629e: $9d
	sbc  a                                           ; $629f: $9f
	dec  c                                           ; $62a0: $0d
	ld   [$6300], sp                                 ; $62a1: $08 $00 $63
	and  c                                           ; $62a4: $a1
	sbc  [hl]                                        ; $62a5: $9e
	dec  c                                           ; $62a6: $0d
	ld   [bc], a                                     ; $62a7: $02
	xor  d                                           ; $62a8: $aa
	ld   [hl], l                                     ; $62a9: $75
	ld   b, $37                                      ; $62aa: $06 $37
	ld   b, $a8                                      ; $62ac: $06 $a8
	inc  bc                                          ; $62ae: $03
	db   $db                                         ; $62af: $db
	ld   a, c                                        ; $62b0: $79
	ld   e, b                                        ; $62b1: $58
	sub  [hl]                                        ; $62b2: $96
	sbc  b                                           ; $62b3: $98
	ld   a, b                                        ; $62b4: $78
	ld   h, e                                        ; $62b5: $63
	ld   d, d                                        ; $62b6: $52
	ld   a, b                                        ; $62b7: $78
	sbc  a                                           ; $62b8: $9f
	dec  c                                           ; $62b9: $0d
	nop                                              ; $62ba: $00
	ld   a, [bc]                                     ; $62bb: $0a
	inc  e                                           ; $62bc: $1c
	ld   [bc], a                                     ; $62bd: $02
	ld   bc, $0101                                   ; $62be: $01 $01 $01
	sbc  l                                           ; $62c1: $9d
	ld   l, l                                        ; $62c2: $6d
	ld   e, l                                        ; $62c3: $5d
	ld   h, l                                        ; $62c4: $65
	ld   e, c                                        ; $62c5: $59
	sub  a                                           ; $62c6: $97
	ld   a, h                                        ; $62c7: $7c
	ret  c                                           ; $62c8: $d8

	xor  $bd                                         ; $62c9: $ee $bd
	push af                                          ; $62cb: $f5
	ret                                              ; $62cc: $c9


	ld   e, d                                        ; $62cd: $5a
	dec  c                                           ; $62ce: $0d
	nop                                              ; $62cf: $00
	dec  b                                           ; $62d0: $05
	jr   nz, jr_042_62dc                             ; $62d1: $20 $09

	ld   bc, $0001                                   ; $62d3: $01 $01 $00
	ld   bc, $f304                                   ; $62d6: $01 $04 $f3
	ld   [bc], a                                     ; $62d9: $02
	ld   b, $65                                      ; $62da: $06 $65

jr_042_62dc:
	ld   [hl], h                                     ; $62dc: $74
	ld   d, b                                        ; $62dd: $50
	sbc  b                                           ; $62de: $98
	adc  h                                           ; $62df: $8c
	ld   h, a                                        ; $62e0: $67
	sbc  l                                           ; $62e1: $9d
	sbc  a                                           ; $62e2: $9f
	dec  c                                           ; $62e3: $0d
	ld   [hl], l                                     ; $62e4: $75
	ld   a, l                                        ; $62e5: $7d
	sbc  [hl]                                        ; $62e6: $9e
	ld   h, d                                        ; $62e7: $62
	ld   e, e                                        ; $62e8: $5b
	ld   h, b                                        ; $62e9: $60
	and  c                                           ; $62ea: $a1
	sub  [hl]                                        ; $62eb: $96
	ld   d, h                                        ; $62ec: $54
	sbc  a                                           ; $62ed: $9f
	dec  c                                           ; $62ee: $0d
	nop                                              ; $62ef: $00
	ld   a, [bc]                                     ; $62f0: $0a
	inc  bc                                          ; $62f1: $03
	rlca                                             ; $62f2: $07
	and  b                                           ; $62f3: $a0
	inc  b                                           ; $62f4: $04
	ld   b, $20                                      ; $62f5: $06 $20
	ld   a, [bc]                                     ; $62f7: $0a
	ld   bc, $2000                                   ; $62f8: $01 $00 $20
	ld   b, $20                                      ; $62fb: $06 $20
	dec  bc                                          ; $62fd: $0b
	dec  de                                          ; $62fe: $1b
	nop                                              ; $62ff: $00
	ld   c, $52                                      ; $6300: $0e $52
	inc  e                                           ; $6302: $1c
	inc  bc                                          ; $6303: $03
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	ld   [bc], a                                     ; $6306: $02
	ld   bc, $0008                                   ; $6307: $01 $08 $00
	ld   e, l                                        ; $630a: $5d
	and  c                                           ; $630b: $a1
	sbc  [hl]                                        ; $630c: $9e
	inc  b                                           ; $630d: $04
	dec  c                                           ; $630e: $0d
	ld   [bc], a                                     ; $630f: $02
	sub  [hl]                                        ; $6310: $96
	inc  b                                           ; $6311: $04
	ld   b, l                                        ; $6312: $45
	inc  b                                           ; $6313: $04
	ld   a, [bc]                                     ; $6314: $0a
	dec  c                                           ; $6315: $0d
	ld   e, b                                        ; $6316: $58
	inc  b                                           ; $6317: $04
	ld   a, e                                        ; $6318: $7b
	sbc  d                                           ; $6319: $9a
	ld   h, e                                        ; $631a: $63
	adc  h                                           ; $631b: $8c
	sbc  a                                           ; $631c: $9f
	dec  c                                           ; $631d: $0d
	nop                                              ; $631e: $00
	inc  e                                           ; $631f: $1c
	inc  bc                                          ; $6320: $03
	inc  bc                                          ; $6321: $03
	inc  bc                                          ; $6322: $03
	ld   bc, $5d96                                   ; $6323: $01 $96 $5d
	ld   e, d                                        ; $6326: $5a
	and  c                                           ; $6327: $a1
	ld   a, [hl]                                     ; $6328: $7e
	ld   [hl], c                                     ; $6329: $71
	ld   l, l                                        ; $632a: $6d
	sbc  l                                           ; $632b: $9d
	ld   a, e                                        ; $632c: $7b
	sbc  a                                           ; $632d: $9f
	dec  c                                           ; $632e: $0d
	nop                                              ; $632f: $00
	dec  d                                           ; $6330: $15
	add  hl, bc                                      ; $6331: $09
	ld   a, [bc]                                     ; $6332: $0a
	ld   bc, $d604                                   ; $6333: $01 $04 $d6
	ld   [bc], a                                     ; $6336: $02
	jp   $0479                                       ; $6337: $c3 $79 $04


	dec  c                                           ; $633a: $0d
	ld   [bc], a                                     ; $633b: $02
	sub  [hl]                                        ; $633c: $96
	inc  b                                           ; $633d: $04
	ld   b, l                                        ; $633e: $45
	inc  b                                           ; $633f: $04
	ld   a, [bc]                                     ; $6340: $0a
	and  b                                           ; $6341: $a0
	inc  bc                                          ; $6342: $03
	ld   a, [hl]                                     ; $6343: $7e
	ld   d, [hl]                                     ; $6344: $56
	sbc  c                                           ; $6345: $99
	ld   h, c                                        ; $6346: $61
	halt                                             ; $6347: $76
	ld   e, d                                        ; $6348: $5a
	dec  c                                           ; $6349: $0d
	ld   [hl], l                                     ; $634a: $75
	ld   e, e                                        ; $634b: $5b
	ld   [hl], h                                     ; $634c: $74
	inc  b                                           ; $634d: $04
	ld   c, c                                        ; $634e: $49
	sub  [hl]                                        ; $634f: $96
	sbc  b                                           ; $6350: $98
	ld   l, [hl]                                     ; $6351: $6e
	sbc  l                                           ; $6352: $9d
	sbc  a                                           ; $6353: $9f
	dec  c                                           ; $6354: $0d
	nop                                              ; $6355: $00
	ld   a, [bc]                                     ; $6356: $0a
	ld   bc, $8f04                                   ; $6357: $01 $04 $8f
	inc  b                                           ; $635a: $04
	jr   @+$7e                                       ; $635b: $18 $7c

	ld   [bc], a                                     ; $635d: $02
	jp   $02a0                                       ; $635e: $c3 $a0 $02


	sbc  l                                           ; $6361: $9d
	ld   d, [hl]                                     ; $6362: $56
	ld   a, [hl]                                     ; $6363: $7e
	sbc  [hl]                                        ; $6364: $9e
	inc  bc                                          ; $6365: $03
	ld   l, c                                        ; $6366: $69
	inc  bc                                          ; $6367: $03
	inc  c                                           ; $6368: $0c
	ld   a, c                                        ; $6369: $79
	dec  c                                           ; $636a: $0d
	ld   [bc], a                                     ; $636b: $02
	add  [hl]                                        ; $636c: $86
	ld   [hl], c                                     ; $636d: $71
	ld   l, l                                        ; $636e: $6d
	inc  bc                                          ; $636f: $03
	ld   l, a                                        ; $6370: $6f
	ld   a, l                                        ; $6371: $7d
	sbc  [hl]                                        ; $6372: $9e
	inc  bc                                          ; $6373: $03
	ld   l, h                                        ; $6374: $6c
	ld   h, l                                        ; $6375: $65
	inc  b                                           ; $6376: $04
	and  b                                           ; $6377: $a0
	ld   [bc], a                                     ; $6378: $02
	ld   h, $0d                                      ; $6379: $26 $0d
	ld   l, [hl]                                     ; $637b: $6e
	ld   [hl], c                                     ; $637c: $71
	ld   l, l                                        ; $637d: $6d
	and  c                                           ; $637e: $a1
	ld   l, [hl]                                     ; $637f: $6e
	ld   e, a                                        ; $6380: $5f
	ld   [hl], a                                     ; $6381: $77
	sbc  [hl]                                        ; $6382: $9e
	dec  c                                           ; $6383: $0d

jr_042_6384:
	nop                                              ; $6384: $00
	ld   a, [bc]                                     ; $6385: $0a
	ld   bc, $7c61                                   ; $6386: $01 $61 $7c
	ld   [bc], a                                     ; $6389: $02
	jr   nz, jr_042_6384                             ; $638a: $20 $f8

	ld   [bc], a                                     ; $638c: $02
	sbc  e                                           ; $638d: $9b
	ld   [hl], l                                     ; $638e: $75
	ld   [bc], a                                     ; $638f: $02
	sub  l                                           ; $6390: $95
	ld   l, a                                        ; $6391: $6f
	ld   e, d                                        ; $6392: $5a
	ld   d, [hl]                                     ; $6393: $56
	sbc  c                                           ; $6394: $99
	sub  [hl]                                        ; $6395: $96
	ld   d, h                                        ; $6396: $54
	ld   a, c                                        ; $6397: $79
	dec  c                                           ; $6398: $0d
	inc  bc                                          ; $6399: $03
	ld   [de], a                                     ; $639a: $12
	inc  bc                                          ; $639b: $03
	jp   nc, Jump_042_6d65                           ; $639c: $d2 $65 $6d

	sbc  l                                           ; $639f: $9d
	ld   a, e                                        ; $63a0: $7b
	sbc  a                                           ; $63a1: $9f
	dec  c                                           ; $63a2: $0d
	nop                                              ; $63a3: $00
	ld   a, [bc]                                     ; $63a4: $0a
	ld   bc, $9a61                                   ; $63a5: $01 $61 $9a
	ld   e, c                                        ; $63a8: $59
	sub  a                                           ; $63a9: $97
	sbc  [hl]                                        ; $63aa: $9e
	ld   d, b                                        ; $63ab: $50
	ld   a, b                                        ; $63ac: $78
	ld   l, l                                        ; $63ad: $6d
	ld   e, d                                        ; $63ae: $5a
	ld   [hl], a                                     ; $63af: $77
	and  c                                           ; $63b0: $a1
	ld   a, b                                        ; $63b1: $78
	inc  b                                           ; $63b2: $04
	ld   d, $a0                                      ; $63b3: $16 $a0
	dec  c                                           ; $63b5: $0d
	inc  b                                           ; $63b6: $04
	sbc  a                                           ; $63b7: $9f
	adc  [hl]                                        ; $63b8: $8e
	ld   e, c                                        ; $63b9: $59
	ld   a, l                                        ; $63ba: $7d
	sbc  l                                           ; $63bb: $9d
	ld   e, c                                        ; $63bc: $59
	sub  a                                           ; $63bd: $97
	ld   a, b                                        ; $63be: $78
	ld   d, d                                        ; $63bf: $52
	ld   e, a                                        ; $63c0: $5f
	sbc  d                                           ; $63c1: $9a

Call_042_63c2:
	ld   [hl], a                                     ; $63c2: $77
	sbc  [hl]                                        ; $63c3: $9e
	dec  c                                           ; $63c4: $0d
	inc  bc                                          ; $63c5: $03
	sub  h                                           ; $63c6: $94
	ld   [bc], a                                     ; $63c7: $02
	ld   hl, sp-$60                                  ; $63c8: $f8 $a0
	inc  bc                                          ; $63ca: $03
	and  b                                           ; $63cb: $a0
	ld   [hl], c                                     ; $63cc: $71
	ld   [hl], h                                     ; $63cd: $74
	dec  b                                           ; $63ce: $05
	db   $dd                                         ; $63cf: $dd
	adc  l                                           ; $63d0: $8d
	ld   a, b                                        ; $63d1: $78
	ld   h, e                                        ; $63d2: $63
	ld   d, d                                        ; $63d3: $52
	sbc  a                                           ; $63d4: $9f
	dec  c                                           ; $63d5: $0d
	nop                                              ; $63d6: $00
	ld   a, [bc]                                     ; $63d7: $0a
	ld   bc, $9a61                                   ; $63d8: $01 $61 $9a
	ld   a, l                                        ; $63db: $7d
	ld   [bc], a                                     ; $63dc: $02
	and  c                                           ; $63dd: $a1
	inc  bc                                          ; $63de: $03
	and  b                                           ; $63df: $a0
	ld   l, a                                        ; $63e0: $6f
	halt                                             ; $63e1: $76
	ld   d, d                                        ; $63e2: $52
	ld   d, h                                        ; $63e3: $54
	adc  c                                           ; $63e4: $89
	ld   [hl], a                                     ; $63e5: $77
	ld   a, h                                        ; $63e6: $7c
	dec  c                                           ; $63e7: $0d
	sub  b                                           ; $63e8: $90
	ld   a, h                                        ; $63e9: $7c
	ld   [hl], l                                     ; $63ea: $75
	sub  b                                           ; $63eb: $90
	ld   a, b                                        ; $63ec: $78
	ld   d, d                                        ; $63ed: $52
	ld   a, h                                        ; $63ee: $7c
	ld   l, [hl]                                     ; $63ef: $6e
	ld   e, a                                        ; $63f0: $5f
	ld   [hl], a                                     ; $63f1: $77
	sbc  [hl]                                        ; $63f2: $9e
	ld   [bc], a                                     ; $63f3: $02
	xor  d                                           ; $63f4: $aa
	ld   [hl], l                                     ; $63f5: $75
	dec  c                                           ; $63f6: $0d
	ld   b, $37                                      ; $63f7: $06 $37
	ld   b, $a8                                      ; $63f9: $06 $a8
	inc  bc                                          ; $63fb: $03
	db   $db                                         ; $63fc: $db
	ld   a, c                                        ; $63fd: $79
	ld   [bc], a                                     ; $63fe: $02
	ld   a, a                                        ; $63ff: $7f
	ld   [hl], c                                     ; $6400: $71
	ld   [hl], h                                     ; $6401: $74
	adc  l                                           ; $6402: $8d
	sbc  c                                           ; $6403: $99
	halt                                             ; $6404: $76
	ld   d, d                                        ; $6405: $52
	ld   d, d                                        ; $6406: $52
	sbc  l                                           ; $6407: $9d
	sbc  a                                           ; $6408: $9f
	dec  c                                           ; $6409: $0d
	nop                                              ; $640a: $00
	ld   a, [bc]                                     ; $640b: $0a
	dec  b                                           ; $640c: $05
	jr   nz, jr_042_641a                             ; $640d: $20 $0b

	ld   bc, $0001                                   ; $640f: $01 $01 $00
	ld   bc, $c803                                   ; $6412: $01 $03 $c8
	ld   e, c                                        ; $6415: $59
	sub  a                                           ; $6416: $97
	ld   a, h                                        ; $6417: $7c
	dec  b                                           ; $6418: $05
	cp   a                                           ; $6419: $bf

jr_042_641a:
	sbc  b                                           ; $641a: $98
	inc  b                                           ; $641b: $04
	sub  d                                           ; $641c: $92
	ld   e, d                                        ; $641d: $5a
	dec  c                                           ; $641e: $0d
	inc  b                                           ; $641f: $04
	jr   z, jr_042_6474                              ; $6420: $28 $52

	ld   [hl], h                                     ; $6422: $74
	ld   d, b                                        ; $6423: $50
	sbc  c                                           ; $6424: $99
	ld   e, c                                        ; $6425: $59
	sub  a                                           ; $6426: $97
	sbc  a                                           ; $6427: $9f
	dec  c                                           ; $6428: $0d
	nop                                              ; $6429: $00
	ld   a, [bc]                                     ; $642a: $0a
	inc  bc                                          ; $642b: $03
	rlca                                             ; $642c: $07
	xor  l                                           ; $642d: $ad
	dec  b                                           ; $642e: $05
	ld   b, $20                                      ; $642f: $06 $20
	inc  c                                           ; $6431: $0c
	ld   bc, $2000                                   ; $6432: $01 $00 $20
	ld   b, $20                                      ; $6435: $06 $20
	dec  c                                           ; $6437: $0d
	dec  de                                          ; $6438: $1b
	nop                                              ; $6439: $00
	ld   c, $56                                      ; $643a: $0e $56
	inc  e                                           ; $643c: $1c
	inc  b                                           ; $643d: $04
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	ld   [bc], a                                     ; $6440: $02
	ld   bc, $526f                                   ; $6441: $01 $6f $52
	ld   [bc], a                                     ; $6444: $02
	inc  de                                          ; $6445: $13
	ld   l, a                                        ; $6446: $6f
	sub  c                                           ; $6447: $91
	and  c                                           ; $6448: $a1
	sbc  [hl]                                        ; $6449: $9e
	ld   e, b                                        ; $644a: $58
	ld   [hl], d                                     ; $644b: $72
	ld   e, c                                        ; $644c: $59
	sbc  d                                           ; $644d: $9a
	ld   h, e                                        ; $644e: $63
	adc  h                                           ; $644f: $8c
	sbc  a                                           ; $6450: $9f
	dec  c                                           ; $6451: $0d
	nop                                              ; $6452: $00
	dec  d                                           ; $6453: $15
	ld   a, [bc]                                     ; $6454: $0a
	ld   a, [bc]                                     ; $6455: $0a
	inc  e                                           ; $6456: $1c
	inc  b                                           ; $6457: $04
	ld   bc, $0101                                   ; $6458: $01 $01 $01
	adc  l                                           ; $645b: $8d
	ld   h, [hl]                                     ; $645c: $66
	ld   e, c                                        ; $645d: $59
	ld   d, d                                        ; $645e: $52
	ld   d, b                                        ; $645f: $50
	ld   d, d                                        ; $6460: $52
	ld   l, [hl]                                     ; $6461: $6e
	ld   l, [hl]                                     ; $6462: $6e
	ld   [hl], c                                     ; $6463: $71
	ld   l, l                                        ; $6464: $6d
	ld   e, a                                        ; $6465: $5f
	ld   [hl], a                                     ; $6466: $77
	sbc  [hl]                                        ; $6467: $9e
	dec  c                                           ; $6468: $0d
	ld   l, a                                        ; $6469: $6f
	ld   d, d                                        ; $646a: $52
	ld   [bc], a                                     ; $646b: $02
	inc  de                                          ; $646c: $13
	ld   l, a                                        ; $646d: $6f
	sub  c                                           ; $646e: $91
	and  c                                           ; $646f: $a1
	sbc  [hl]                                        ; $6470: $9e
	ld   h, a                                        ; $6471: $67
	ld   [hl], c                                     ; $6472: $71
	ld   h, d                                        ; $6473: $62

jr_042_6474:
	ld   e, l                                        ; $6474: $5d
	dec  c                                           ; $6475: $0d
	ld   e, d                                        ; $6476: $5a
	and  c                                           ; $6477: $a1
	ld   a, [hl]                                     ; $6478: $7e
	ld   [hl], c                                     ; $6479: $71
	ld   [hl], h                                     ; $647a: $74
	ld   l, l                                        ; $647b: $6d
	ld   a, e                                        ; $647c: $7b
	ei                                               ; $647d: $fb
	ld   a, [$000d]                                  ; $647e: $fa $0d $00
	ld   a, [bc]                                     ; $6481: $0a
	ld   bc, $a16b                                   ; $6482: $01 $6b $a1
	ld   a, b                                        ; $6485: $78
	ld   l, a                                        ; $6486: $6f
	ld   d, d                                        ; $6487: $52
	ld   [bc], a                                     ; $6488: $02
	inc  de                                          ; $6489: $13
	ld   l, a                                        ; $648a: $6f
	sub  c                                           ; $648b: $91
	and  c                                           ; $648c: $a1
	ld   a, c                                        ; $648d: $79
	ld   a, l                                        ; $648e: $7d
	sbc  [hl]                                        ; $648f: $9e
	dec  c                                           ; $6490: $0d
	and  e                                           ; $6491: $a3
	and  l                                           ; $6492: $a5
	db   $ec                                         ; $6493: $ec
	cp   d                                           ; $6494: $ba
	ld   e, c                                        ; $6495: $59
	sub  a                                           ; $6496: $97
	ld   a, h                                        ; $6497: $7c
	add  l                                           ; $6498: $85
	sbc  d                                           ; $6499: $9a
	ld   l, d                                        ; $649a: $6a
	and  c                                           ; $649b: $a1
	halt                                             ; $649c: $76
	ld   e, d                                        ; $649d: $5a
	dec  c                                           ; $649e: $0d
	ld   d, b                                        ; $649f: $50
	sbc  b                                           ; $64a0: $98
	adc  h                                           ; $64a1: $8c
	ei                                               ; $64a2: $fb
	ld   h, a                                        ; $64a3: $67
	ld   a, [$0dfa]                                  ; $64a4: $fa $fa $0d
	nop                                              ; $64a7: $00
	ld   a, [bc]                                     ; $64a8: $0a
	inc  e                                           ; $64a9: $1c
	inc  b                                           ; $64aa: $04
	nop                                              ; $64ab: $00
	nop                                              ; $64ac: $00
	ld   bc, $7650                                   ; $64ad: $01 $50 $76
	ld   [hl], l                                     ; $64b0: $75
	ld   bc, $9b07                                   ; $64b1: $01 $07 $9b
	adc  h                                           ; $64b4: $8c
	and  c                                           ; $64b5: $a1
	ld   [hl], a                                     ; $64b6: $77
	ld   d, h                                        ; $64b7: $54
	ld   bc, $8608                                   ; $64b8: $01 $08 $86
	dec  c                                           ; $64bb: $0d
	ld   d, d                                        ; $64bc: $52
	ld   [hl], c                                     ; $64bd: $71
	ld   [hl], h                                     ; $64be: $74
	adc  l                                           ; $64bf: $8d
	ld   [hl], h                                     ; $64c0: $74
	ld   a, e                                        ; $64c1: $7b
	ld   a, [$000d]                                  ; $64c2: $fa $0d $00
	ld   a, [bc]                                     ; $64c5: $0a
	ld   bc, $715b                                   ; $64c6: $01 $5b $71
	halt                                             ; $64c9: $76
	sbc  [hl]                                        ; $64ca: $9e
	ld   l, a                                        ; $64cb: $6f
	ld   d, d                                        ; $64cc: $52
	ld   [bc], a                                     ; $64cd: $02
	inc  de                                          ; $64ce: $13
	ld   l, a                                        ; $64cf: $6f
	sub  c                                           ; $64d0: $91
	and  c                                           ; $64d1: $a1
	ld   a, h                                        ; $64d2: $7c
	dec  c                                           ; $64d3: $0d
	adc  c                                           ; $64d4: $89
	ld   h, l                                        ; $64d5: $65
	ld   e, c                                        ; $64d6: $59
	ld   [hl], c                                     ; $64d7: $71
	ld   l, l                                        ; $64d8: $6d
	sub  b                                           ; $64d9: $90
	ld   a, h                                        ; $64da: $7c
	ld   e, d                                        ; $64db: $5a
	dec  c                                           ; $64dc: $0d
	ld   e, b                                        ; $64dd: $58
	ld   d, d                                        ; $64de: $52
	ld   [hl], h                                     ; $64df: $74
	ld   d, b                                        ; $64e0: $50
	sbc  c                                           ; $64e1: $99
	sub  [hl]                                        ; $64e2: $96
	sbc  a                                           ; $64e3: $9f
	dec  c                                           ; $64e4: $0d
	nop                                              ; $64e5: $00
	ld   a, [bc]                                     ; $64e6: $0a
	ld   bc, $f956                                   ; $64e7: $01 $56 $f9
	db   $10                                         ; $64ea: $10
	ld   a, b                                        ; $64eb: $78
	ld   a, c                                        ; $64ec: $79
	ld   e, d                                        ; $64ed: $5a
	ld   d, b                                        ; $64ee: $50
	sbc  c                                           ; $64ef: $99
	ld   e, c                                        ; $64f0: $59
	ld   [hl], c                                     ; $64f1: $71
	ld   [hl], h                                     ; $64f2: $74
	ld   sp, hl                                      ; $64f3: $f9
	dec  c                                           ; $64f4: $0d
	nop                                              ; $64f5: $00
	inc  e                                           ; $64f6: $1c
	inc  b                                           ; $64f7: $04
	dec  b                                           ; $64f8: $05
	dec  b                                           ; $64f9: $05
	ld   bc, $ffff                                   ; $64fa: $01 $ff $ff
	ld   l, e                                        ; $64fd: $6b
	sbc  d                                           ; $64fe: $9a
	ld   a, l                                        ; $64ff: $7d
	ld   a, e                                        ; $6500: $7b
	ld   d, [hl]                                     ; $6501: $56
	db   $fc                                         ; $6502: $fc
	rst  $38                                         ; $6503: $ff
	rst  $38                                         ; $6504: $ff
	dec  c                                           ; $6505: $0d
	nop                                              ; $6506: $00
	ld   a, [bc]                                     ; $6507: $0a
	inc  e                                           ; $6508: $1c
	inc  b                                           ; $6509: $04
	ld   bc, $0101                                   ; $650a: $01 $01 $01
	ld   d, d                                        ; $650d: $52
	ld   [hl], c                                     ; $650e: $71
	ld   [hl], h                                     ; $650f: $74
	adc  l                                           ; $6510: $8d
	sbc  c                                           ; $6511: $99
	adc  h                                           ; $6512: $8c
	ld   [hl], l                                     ; $6513: $75
	ld   a, h                                        ; $6514: $7c
	dec  c                                           ; $6515: $0d
	db   $d3                                         ; $6516: $d3
	ldh  [$c5], a                                    ; $6517: $e0 $c5
	ld   [hl], l                                     ; $6519: $75
	ei                                               ; $651a: $fb
	ld   h, a                                        ; $651b: $67
	ld   a, [$0dfa]                                  ; $651c: $fa $fa $0d
	nop                                              ; $651f: $00
	ld   a, [bc]                                     ; $6520: $0a
	dec  b                                           ; $6521: $05
	jr   nz, jr_042_6531                             ; $6522: $20 $0d

	ld   bc, $0001                                   ; $6524: $01 $01 $00
	ld   bc, $9166                                   ; $6527: $01 $66 $91
	ld   d, b                                        ; $652a: $50
	ld   a, e                                        ; $652b: $7b
	sbc  [hl]                                        ; $652c: $9e
	ld   l, a                                        ; $652d: $6f
	ld   d, d                                        ; $652e: $52
	ld   [bc], a                                     ; $652f: $02
	inc  de                                          ; $6530: $13

jr_042_6531:
	ld   l, a                                        ; $6531: $6f
	sub  c                                           ; $6532: $91
	and  c                                           ; $6533: $a1
	sbc  a                                           ; $6534: $9f
	dec  c                                           ; $6535: $0d
	nop                                              ; $6536: $00
	ld   a, [bc]                                     ; $6537: $0a
	inc  bc                                          ; $6538: $03
	rlca                                             ; $6539: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $653a: $cf
	ld   b, $06                                      ; $653b: $06 $06
	jr   nz, jr_042_654d                             ; $653d: $20 $0e

	ld   bc, $2000                                   ; $653f: $01 $00 $20
	ld   b, $20                                      ; $6542: $06 $20
	rrca                                             ; $6544: $0f
	dec  de                                          ; $6545: $1b
	nop                                              ; $6546: $00
	ld   c, $54                                      ; $6547: $0e $54
	inc  e                                           ; $6549: $1c
	dec  b                                           ; $654a: $05
	nop                                              ; $654b: $00
	nop                                              ; $654c: $00

jr_042_654d:
	ld   [bc], a                                     ; $654d: $02
	ld   bc, $0008                                   ; $654e: $01 $08 $00
	ld   a, l                                        ; $6551: $7d
	and  c                                           ; $6552: $a1
	sbc  [hl]                                        ; $6553: $9e
	inc  b                                           ; $6554: $04
	dec  c                                           ; $6555: $0d
	ld   [bc], a                                     ; $6556: $02
	sub  [hl]                                        ; $6557: $96
	inc  b                                           ; $6558: $04
	ld   b, l                                        ; $6559: $45
	inc  b                                           ; $655a: $04
	ld   a, [bc]                                     ; $655b: $0a
	dec  c                                           ; $655c: $0d
	call c, $dff5                                    ; $655d: $dc $f5 $df
	ld   a, c                                        ; $6560: $79
	ld   e, b                                        ; $6561: $58
	inc  b                                           ; $6562: $04
	ld   a, e                                        ; $6563: $7b
	sbc  d                                           ; $6564: $9a
	ld   a, l                                        ; $6565: $7d
	and  c                                           ; $6566: $a1
	sbc  a                                           ; $6567: $9f
	dec  c                                           ; $6568: $0d
	nop                                              ; $6569: $00
	dec  d                                           ; $656a: $15
	dec  bc                                          ; $656b: $0b
	ld   a, [bc]                                     ; $656c: $0a
	inc  e                                           ; $656d: $1c
	dec  b                                           ; $656e: $05
	ld   b, $06                                      ; $656f: $06 $06
	ld   bc, $d105                                   ; $6571: $01 $05 $d1
	ld   d, [hl]                                     ; $6574: $56
	ld   a, [hl]                                     ; $6575: $7e
	sbc  [hl]                                        ; $6576: $9e
	ld   [$7d00], sp                                 ; $6577: $08 $00 $7d
	and  c                                           ; $657a: $a1
	ld   a, c                                        ; $657b: $79
	ld   a, l                                        ; $657c: $7d
	dec  c                                           ; $657d: $0d
	ld   d, d                                        ; $657e: $52
	sbc  e                                           ; $657f: $9b
	ld   d, d                                        ; $6580: $52
	sbc  e                                           ; $6581: $9b
	adc  a                                           ; $6582: $8f
	ld   d, d                                        ; $6583: $52
	sbc  l                                           ; $6584: $9d
	ld   e, l                                        ; $6585: $5d
	sub  b                                           ; $6586: $90
	ld   e, c                                        ; $6587: $59
	ld   e, a                                        ; $6588: $5f
	ld   [hl], h                                     ; $6589: $74
	dec  c                                           ; $658a: $0d
	sub  b                                           ; $658b: $90
	ld   d, h                                        ; $658c: $54
	ld   l, l                                        ; $658d: $6d
	ld   a, b                                        ; $658e: $78
	ld   d, b                                        ; $658f: $50
	db   $fc                                         ; $6590: $fc
	sbc  a                                           ; $6591: $9f
	dec  c                                           ; $6592: $0d
	nop                                              ; $6593: $00
	ld   a, [bc]                                     ; $6594: $0a
	ld   bc, $0d06                                   ; $6595: $01 $06 $0d
	inc  b                                           ; $6598: $04
	ld   e, [hl]                                     ; $6599: $5e
	halt                                             ; $659a: $76
	ld   e, c                                        ; $659b: $59
	sbc  [hl]                                        ; $659c: $9e
	ld   b, $0d                                      ; $659d: $06 $0d
	inc  b                                           ; $659f: $04

Jump_042_65a0:
	ld   e, [hl]                                     ; $65a0: $5e
	halt                                             ; $65a1: $76
	ld   e, c                                        ; $65a2: $59
	sbc  [hl]                                        ; $65a3: $9e
	ld   b, $0d                                      ; $65a4: $06 $0d
	inc  b                                           ; $65a6: $04
	ld   e, [hl]                                     ; $65a7: $5e
	halt                                             ; $65a8: $76
	ld   e, c                                        ; $65a9: $59
	dec  c                                           ; $65aa: $0d
	rst  $38                                         ; $65ab: $ff
	rst  $38                                         ; $65ac: $ff
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	ld   [hl], c                                     ; $65b1: $71
	ld   [hl], h                                     ; $65b2: $74
	sbc  [hl]                                        ; $65b3: $9e
	dec  c                                           ; $65b4: $0d
	nop                                              ; $65b5: $00
	inc  e                                           ; $65b6: $1c
	dec  b                                           ; $65b7: $05
	inc  bc                                          ; $65b8: $03
	inc  bc                                          ; $65b9: $03

Call_042_65ba:
	ld   bc, $0d06                                   ; $65ba: $01 $06 $0d
	inc  b                                           ; $65bd: $04
	ld   e, [hl]                                     ; $65be: $5e
	ld   a, [hl]                                     ; $65bf: $7e
	ld   [hl], c                                     ; $65c0: $71
	ld   e, c                                        ; $65c1: $59
	sbc  b                                           ; $65c2: $98
	sub  d                                           ; $65c3: $92
	and  c                                           ; $65c4: $a1
	ld   e, c                                        ; $65c5: $59
	ld   a, [$0dfa]                                  ; $65c6: $fa $fa $0d
	nop                                              ; $65c9: $00
	ld   a, [bc]                                     ; $65ca: $0a
	inc  e                                           ; $65cb: $1c
	dec  b                                           ; $65cc: $05
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00
	ld   bc, $fc78                                   ; $65cf: $01 $78 $fc
	and  c                                           ; $65d2: $a1
	ld   [hl], h                                     ; $65d3: $74
	ld   d, d                                        ; $65d4: $52
	ld   d, h                                        ; $65d5: $54
	add  b                                           ; $65d6: $80
	halt                                             ; $65d7: $76
	sbc  b                                           ; $65d8: $98
	db   $dd                                         ; $65d9: $dd
	or   d                                           ; $65da: $b2
	ld   a, l                                        ; $65db: $7d
	dec  c                                           ; $65dc: $0d
	ld   e, b                                        ; $65dd: $58
	ld   d, d                                        ; $65de: $52
	halt                                             ; $65df: $76
	ld   d, d                                        ; $65e0: $52
	ld   [hl], h                                     ; $65e1: $74
	rst  $38                                         ; $65e2: $ff
	rst  $38                                         ; $65e3: $ff
	dec  c                                           ; $65e4: $0d
	nop                                              ; $65e5: $00
	ld   a, [bc]                                     ; $65e6: $0a
	ld   bc, $0008                                   ; $65e7: $01 $08 $00
	ld   a, l                                        ; $65ea: $7d
	and  c                                           ; $65eb: $a1
	ld   a, c                                        ; $65ec: $79
	ld   a, l                                        ; $65ed: $7d
	and  a                                           ; $65ee: $a7
	jp   nz, $9759                                   ; $65ef: $c2 $59 $97

	dec  c                                           ; $65f2: $0d
	ld   h, e                                        ; $65f3: $63
	ld   h, e                                        ; $65f4: $63
	sub  d                                           ; $65f5: $92
	ld   e, c                                        ; $65f6: $59
	ld   a, b                                        ; $65f7: $78
	ld   e, d                                        ; $65f8: $5a
	sub  a                                           ; $65f9: $97
	dec  b                                           ; $65fa: $05
	cp   a                                           ; $65fb: $bf
	sbc  b                                           ; $65fc: $98
	inc  b                                           ; $65fd: $04
	sub  d                                           ; $65fe: $92
	ld   e, d                                        ; $65ff: $5a
	dec  c                                           ; $6600: $0d
	ld   d, b                                        ; $6601: $50
	sbc  c                                           ; $6602: $99
	and  c                                           ; $6603: $a1
	sub  d                                           ; $6604: $92
	sbc  a                                           ; $6605: $9f
	dec  c                                           ; $6606: $0d
	nop                                              ; $6607: $00
	ld   a, [bc]                                     ; $6608: $0a
	ld   bc, $7650                                   ; $6609: $01 $50 $76
	ld   [hl], l                                     ; $660c: $75
	ld   b, $37                                      ; $660d: $06 $37
	ld   b, $a8                                      ; $660f: $06 $a8
	inc  bc                                          ; $6611: $03
	db   $db                                         ; $6612: $db
	add  [hl]                                        ; $6613: $86
	dec  c                                           ; $6614: $0d
	ld   [bc], a                                     ; $6615: $02
	ld   a, a                                        ; $6616: $7f
	ld   [hl], c                                     ; $6617: $71
	ld   [hl], h                                     ; $6618: $74
	adc  l                                           ; $6619: $8d
	sbc  c                                           ; $661a: $99
	halt                                             ; $661b: $76
	ld   d, [hl]                                     ; $661c: $56
	ld   d, [hl]                                     ; $661d: $56
	ld   [hl], l                                     ; $661e: $75
	sbc  a                                           ; $661f: $9f
	dec  c                                           ; $6620: $0d
	nop                                              ; $6621: $00
	ld   a, [bc]                                     ; $6622: $0a
	ld   bc, $715b                                   ; $6623: $01 $5b $71
	halt                                             ; $6626: $76
	sbc  [hl]                                        ; $6627: $9e
	ld   [$7d00], sp                                 ; $6628: $08 $00 $7d
	and  c                                           ; $662b: $a1
	ld   a, h                                        ; $662c: $7c
	dec  c                                           ; $662d: $0d
	inc  b                                           ; $662e: $04
	db   $e3                                         ; $662f: $e3
	ld   h, l                                        ; $6630: $65
	ld   e, c                                        ; $6631: $59
	ld   [hl], c                                     ; $6632: $71
	ld   l, l                                        ; $6633: $6d
	sub  b                                           ; $6634: $90
	ld   a, h                                        ; $6635: $7c
	ld   e, d                                        ; $6636: $5a
	inc  b                                           ; $6637: $04
	jr   z, jr_042_668c                              ; $6638: $28 $52

	ld   [hl], h                                     ; $663a: $74
	ld   d, b                                        ; $663b: $50
	sbc  c                                           ; $663c: $99
	dec  c                                           ; $663d: $0d
	ld   h, e                                        ; $663e: $63
	ld   e, c                                        ; $663f: $59
	ld   d, d                                        ; $6640: $52
	sbc  a                                           ; $6641: $9f
	dec  c                                           ; $6642: $0d
	nop                                              ; $6643: $00
	ld   a, [bc]                                     ; $6644: $0a
	inc  e                                           ; $6645: $1c
	dec  b                                           ; $6646: $05
	ld   bc, $0101                                   ; $6647: $01 $01 $01
	adc  c                                           ; $664a: $89
	ld   a, b                                        ; $664b: $78
	sbc  [hl]                                        ; $664c: $9e
	adc  h                                           ; $664d: $8c
	ld   l, l                                        ; $664e: $6d
	ld   a, b                                        ; $664f: $78
	sbc  a                                           ; $6650: $9f
	dec  c                                           ; $6651: $0d
	nop                                              ; $6652: $00
	ld   a, [bc]                                     ; $6653: $0a
	dec  b                                           ; $6654: $05
	jr   nz, jr_042_6666                             ; $6655: $20 $0f

	ld   bc, $0001                                   ; $6657: $01 $01 $00
	inc  bc                                          ; $665a: $03
	rlca                                             ; $665b: $07
	db   $ec                                         ; $665c: $ec
	rlca                                             ; $665d: $07
	ld   b, $20                                      ; $665e: $06 $20
	db   $10                                         ; $6660: $10
	ld   bc, $2000                                   ; $6661: $01 $00 $20
	ld   b, $20                                      ; $6664: $06 $20

jr_042_6666:
	ld   de, $001b                                   ; $6666: $11 $1b $00
	ld   c, $58                                      ; $6669: $0e $58
	inc  e                                           ; $666b: $1c
	ld   b, $00                                      ; $666c: $06 $00
	nop                                              ; $666e: $00
	ld   [bc], a                                     ; $666f: $02
	ld   bc, $5896                                   ; $6670: $01 $96 $58
	sbc  [hl]                                        ; $6673: $9e
	ld   [$fa00], sp                                 ; $6674: $08 $00 $fa
	dec  c                                           ; $6677: $0d
	ld   e, b                                        ; $6678: $58
	inc  b                                           ; $6679: $04
	ld   a, e                                        ; $667a: $7b
	sbc  d                                           ; $667b: $9a
	ld   h, e                                        ; $667c: $63
	and  c                                           ; $667d: $a1
	sbc  a                                           ; $667e: $9f
	dec  c                                           ; $667f: $0d
	sub  [hl]                                        ; $6680: $96
	ld   e, l                                        ; $6681: $5d
	ld   e, d                                        ; $6682: $5a
	and  c                                           ; $6683: $a1
	ld   a, [hl]                                     ; $6684: $7e
	ld   [hl], c                                     ; $6685: $71
	ld   l, l                                        ; $6686: $6d
	ld   a, b                                        ; $6687: $78
	ld   a, [$000d]                                  ; $6688: $fa $0d $00
	dec  d                                           ; $668b: $15

jr_042_668c:
	inc  c                                           ; $668c: $0c
	ld   a, [bc]                                     ; $668d: $0a
	inc  e                                           ; $668e: $1c
	ld   b, $07                                      ; $668f: $06 $07

jr_042_6691:
	rlca                                             ; $6691: $07
	ld   bc, $a189                                   ; $6692: $01 $89 $a1
	ld   a, h                                        ; $6695: $7c
	ld   [bc], a                                     ; $6696: $02
	jr   nz, jr_042_6691                             ; $6697: $20 $f8

	ld   [bc], a                                     ; $6699: $02
	sbc  e                                           ; $669a: $9b
	ld   l, [hl]                                     ; $669b: $6e
	ld   [hl], c                                     ; $669c: $71
	ld   l, l                                        ; $669d: $6d
	ld   e, a                                        ; $669e: $5f
	ld   [hl], a                                     ; $669f: $77
	sbc  [hl]                                        ; $66a0: $9e
	dec  c                                           ; $66a1: $0d
	ld   a, b                                        ; $66a2: $78
	ld   e, c                                        ; $66a3: $59
	ld   a, b                                        ; $66a4: $78
	ld   e, c                                        ; $66a5: $59
	ld   a, h                                        ; $66a6: $7c
	inc  bc                                          ; $66a7: $03
	ld   [de], a                                     ; $66a8: $12
	inc  bc                                          ; $66a9: $03
	jp   nc, $9884                                   ; $66aa: $d2 $84 $98

	dec  c                                           ; $66ad: $0d
	ld   l, [hl]                                     ; $66ae: $6e
	ld   [hl], c                                     ; $66af: $71
	ld   l, l                                        ; $66b0: $6d
	ld   l, d                                        ; $66b1: $6a
	ld   a, [$000d]                                  ; $66b2: $fa $0d $00
	ld   a, [bc]                                     ; $66b5: $0a
	inc  e                                           ; $66b6: $1c
	ld   b, $00                                      ; $66b7: $06 $00
	nop                                              ; $66b9: $00
	ld   bc, $a178                                   ; $66ba: $01 $78 $a1
	ld   l, c                                        ; $66bd: $69
	sbc  [hl]                                        ; $66be: $9e
	ld   h, c                                        ; $66bf: $61
	ld   a, h                                        ; $66c0: $7c
	ld   d, b                                        ; $66c1: $50
	ld   l, l                                        ; $66c2: $6d
	ld   d, d                                        ; $66c3: $52
	halt                                             ; $66c4: $76
	dec  c                                           ; $66c5: $0d
	inc  bc                                          ; $66c6: $03
	nop                                              ; $66c7: $00
	adc  l                                           ; $66c8: $8d
	inc  bc                                          ; $66c9: $03
	ld   l, e                                        ; $66ca: $6b
	ld   [hl], l                                     ; $66cb: $75
	sbc  l                                           ; $66cc: $9d
	ld   l, l                                        ; $66cd: $6d
	sbc  b                                           ; $66ce: $98
	ld   d, b                                        ; $66cf: $50
	ld   d, [hl]                                     ; $66d0: $56
	sbc  c                                           ; $66d1: $99
	sub  [hl]                                        ; $66d2: $96
	ld   d, h                                        ; $66d3: $54
	ld   a, c                                        ; $66d4: $79
	dec  c                                           ; $66d5: $0d
	ld   a, b                                        ; $66d6: $78
	ld   [hl], c                                     ; $66d7: $71
	ld   l, l                                        ; $66d8: $6d
	and  c                                           ; $66d9: $a1
	ld   l, [hl]                                     ; $66da: $6e
	ld   e, c                                        ; $66db: $59
	sub  a                                           ; $66dc: $97
	ld   a, b                                        ; $66dd: $78
	sbc  a                                           ; $66de: $9f
	dec  c                                           ; $66df: $0d
	nop                                              ; $66e0: $00
	ld   a, [bc]                                     ; $66e1: $0a
	inc  e                                           ; $66e2: $1c
	ld   b, $07                                      ; $66e3: $06 $07
	rlca                                             ; $66e5: $07
	ld   bc, $508c                                   ; $66e6: $01 $8c $50
	sbc  [hl]                                        ; $66e9: $9e
	db   $e3                                         ; $66ea: $e3
	cp   b                                           ; $66eb: $b8
	ld   a, h                                        ; $66ec: $7c
	inc  bc                                          ; $66ed: $03
	ld   l, d                                        ; $66ee: $6a
	ld   d, d                                        ; $66ef: $52
	ld   [hl], c                                     ; $66f0: $71
	add  l                                           ; $66f1: $85
	sbc  b                                           ; $66f2: $98
	ld   [hl], l                                     ; $66f3: $75
	ld   a, l                                        ; $66f4: $7d

Jump_042_66f5:
	dec  c                                           ; $66f5: $0d
	adc  h                                           ; $66f6: $8c
	ld   l, [hl]                                     ; $66f7: $6e
	ld   d, b                                        ; $66f8: $50
	ld   l, l                                        ; $66f9: $6d
	ld   d, d                                        ; $66fa: $52
	ld   a, c                                        ; $66fb: $79
	ld   a, l                                        ; $66fc: $7d
	dec  c                                           ; $66fd: $0d
	ld   e, c                                        ; $66fe: $59
	ld   a, b                                        ; $66ff: $78
	sbc  l                                           ; $6700: $9d
	ld   a, b                                        ; $6701: $78
	ld   d, d                                        ; $6702: $52
	ld   e, a                                        ; $6703: $5f
	ld   [hl], a                                     ; $6704: $77
	ld   a, b                                        ; $6705: $78
	sbc  a                                           ; $6706: $9f
	dec  c                                           ; $6707: $0d
	nop                                              ; $6708: $00
	ld   a, [bc]                                     ; $6709: $0a
	inc  e                                           ; $670a: $1c
	ld   b, $00                                      ; $670b: $06 $00
	nop                                              ; $670d: $00
	ld   bc, $7158                                   ; $670e: $01 $58 $71
	halt                                             ; $6711: $76
	sbc  [hl]                                        ; $6712: $9e
	inc  b                                           ; $6713: $04
	and  e                                           ; $6714: $a3
	sbc  d                                           ; $6715: $9a
	ld   [hl], h                                     ; $6716: $74
	ld   l, l                                        ; $6717: $6d
	sub  [hl]                                        ; $6718: $96
	ld   a, [$030d]                                  ; $6719: $fa $0d $03
	adc  e                                           ; $671c: $8b
	ld   a, l                                        ; $671d: $7d
	sbc  [hl]                                        ; $671e: $9e
	ld   e, b                                        ; $671f: $58
	inc  bc                                          ; $6720: $03
	ld   c, a                                        ; $6721: $4f
	ld   a, c                                        ; $6722: $79
	dec  b                                           ; $6723: $05
	cp   a                                           ; $6724: $bf
	sbc  b                                           ; $6725: $98
	inc  b                                           ; $6726: $04
	sub  d                                           ; $6727: $92
	ld   e, d                                        ; $6728: $5a
	dec  c                                           ; $6729: $0d
	ld   d, b                                        ; $672a: $50
	sbc  c                                           ; $672b: $99
	and  c                                           ; $672c: $a1
	ld   l, [hl]                                     ; $672d: $6e
	sbc  a                                           ; $672e: $9f
	dec  c                                           ; $672f: $0d
	nop                                              ; $6730: $00
	ld   a, [bc]                                     ; $6731: $0a
	ld   bc, $7650                                   ; $6732: $01 $50 $76
	ld   [hl], l                                     ; $6735: $75
	sbc  [hl]                                        ; $6736: $9e
	ld   b, $37                                      ; $6737: $06 $37
	ld   b, $a8                                      ; $6739: $06 $a8
	inc  bc                                          ; $673b: $03
	db   $db                                         ; $673c: $db
	ld   a, c                                        ; $673d: $79
	dec  c                                           ; $673e: $0d
	ld   [bc], a                                     ; $673f: $02
	ld   a, a                                        ; $6740: $7f
	ld   [hl], c                                     ; $6741: $71
	ld   [hl], h                                     ; $6742: $74
	adc  l                                           ; $6743: $8d
	ld   a, b                                        ; $6744: $78
	sbc  a                                           ; $6745: $9f
	dec  c                                           ; $6746: $0d
	nop                                              ; $6747: $00
	ld   a, [bc]                                     ; $6748: $0a
	ld   bc, $4904                                   ; $6749: $01 $04 $49
	ld   e, c                                        ; $674c: $59
	ld   d, d                                        ; $674d: $52
	ld   d, d                                        ; $674e: $52
	db   $e4                                         ; $674f: $e4
	push af                                          ; $6750: $f5
	ld   e, d                                        ; $6751: $5a
	inc  b                                           ; $6752: $04
	ld   b, l                                        ; $6753: $45
	ld   [hl], c                                     ; $6754: $71
	ld   [hl], h                                     ; $6755: $74
	ld   d, d                                        ; $6756: $52
	sbc  c                                           ; $6757: $99
	dec  c                                           ; $6758: $0d
	nop                                              ; $6759: $00
	dec  b                                           ; $675a: $05
	jr   nz, @+$13                                   ; $675b: $20 $11

	ld   bc, $0001                                   ; $675d: $01 $01 $00
	ld   bc, $687d                                   ; $6760: $01 $7d $68
	ld   l, [hl]                                     ; $6763: $6e
	ld   l, d                                        ; $6764: $6a
	sbc  a                                           ; $6765: $9f
	dec  c                                           ; $6766: $0d
	nop                                              ; $6767: $00
	inc  e                                           ; $6768: $1c
	ld   b, $07                                      ; $6769: $06 $07
	rlca                                             ; $676b: $07
	ld   bc, $9a6b                                   ; $676c: $01 $6b $9a
	ld   h, [hl]                                     ; $676f: $66
	sub  c                                           ; $6770: $91
	ld   d, b                                        ; $6771: $50
	ld   a, b                                        ; $6772: $78
	ld   a, [$000d]                                  ; $6773: $fa $0d $00
	ld   a, [bc]                                     ; $6776: $0a
	inc  bc                                          ; $6777: $03
	rlca                                             ; $6778: $07
	dec  de                                          ; $6779: $1b
	add  hl, bc                                      ; $677a: $09
	ld   b, $20                                      ; $677b: $06 $20
	ld   [de], a                                     ; $677d: $12
	ld   bc, $2000                                   ; $677e: $01 $00 $20
	ld   b, $20                                      ; $6781: $06 $20
	inc  de                                          ; $6783: $13
	dec  de                                          ; $6784: $1b
	nop                                              ; $6785: $00
	ld   c, $39                                      ; $6786: $0e $39
	inc  e                                           ; $6788: $1c
	add  hl, bc                                      ; $6789: $09
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	ld   [bc], a                                     ; $678c: $02
	ld   bc, $5092                                   ; $678d: $01 $92 $50
	sbc  [hl]                                        ; $6790: $9e
	ld   [$5d00], sp                                 ; $6791: $08 $00 $5d
	and  c                                           ; $6794: $a1
	sbc  a                                           ; $6795: $9f
	dec  c                                           ; $6796: $0d
	ld   [bc], a                                     ; $6797: $02
	jr   nz, @-$06                                   ; $6798: $20 $f8

	ld   [bc], a                                     ; $679a: $02
	sbc  e                                           ; $679b: $9b
	ld   [bc], a                                     ; $679c: $02
	xor  c                                           ; $679d: $a9
	sbc  [hl]                                        ; $679e: $9e
	sub  [hl]                                        ; $679f: $96
	ld   e, l                                        ; $67a0: $5d
	ld   e, d                                        ; $67a1: $5a
	and  c                                           ; $67a2: $a1
	ld   a, [hl]                                     ; $67a3: $7e
	ld   [hl], c                                     ; $67a4: $71
	ld   l, l                                        ; $67a5: $6d
	ld   a, b                                        ; $67a6: $78
	sbc  a                                           ; $67a7: $9f
	dec  c                                           ; $67a8: $0d
	nop                                              ; $67a9: $00
	ld   a, [bc]                                     ; $67aa: $0a
	inc  e                                           ; $67ab: $1c
	add  hl, bc                                      ; $67ac: $09
	ld   bc, $0101                                   ; $67ad: $01 $01 $01
	adc  c                                           ; $67b0: $89
	and  c                                           ; $67b1: $a1
	ld   a, h                                        ; $67b2: $7c
	adc  l                                           ; $67b3: $8d
	ld   h, [hl]                                     ; $67b4: $66
	ld   e, c                                        ; $67b5: $59
	ld   d, d                                        ; $67b6: $52
	ld   [bc], a                                     ; $67b7: $02
	xor  c                                           ; $67b8: $a9
	ld   l, [hl]                                     ; $67b9: $6e
	ld   [hl], c                                     ; $67ba: $71
	ld   l, l                                        ; $67bb: $6d
	ld   e, a                                        ; $67bc: $5f
	ld   [hl], a                                     ; $67bd: $77
	sbc  [hl]                                        ; $67be: $9e
	dec  c                                           ; $67bf: $0d
	ld   a, b                                        ; $67c0: $78
	ld   e, c                                        ; $67c1: $59
	ld   a, b                                        ; $67c2: $78
	ld   e, c                                        ; $67c3: $59
	ld   a, h                                        ; $67c4: $7c
	inc  bc                                          ; $67c5: $03
	ld   [de], a                                     ; $67c6: $12
	inc  bc                                          ; $67c7: $03
	jp   nc, $9884                                   ; $67c8: $d2 $84 $98

	dec  c                                           ; $67cb: $0d
	ld   l, [hl]                                     ; $67cc: $6e
	ld   [hl], c                                     ; $67cd: $71
	ld   l, l                                        ; $67ce: $6d
	ld   l, h                                        ; $67cf: $6c
	sbc  a                                           ; $67d0: $9f
	dec  c                                           ; $67d1: $0d
	nop                                              ; $67d2: $00
	ld   a, [bc]                                     ; $67d3: $0a
	ld   bc, $508c                                   ; $67d4: $01 $8c $50
	sbc  [hl]                                        ; $67d7: $9e
	inc  b                                           ; $67d8: $04
	db   $e3                                         ; $67d9: $e3
	and  b                                           ; $67da: $a0
	ld   [bc], a                                     ; $67db: $02
	sbc  l                                           ; $67dc: $9d
	ld   d, [hl]                                     ; $67dd: $56
	ld   a, [hl]                                     ; $67de: $7e
	sbc  [hl]                                        ; $67df: $9e
	sub  b                                           ; $67e0: $90
	ld   d, h                                        ; $67e1: $54
	inc  bc                                          ; $67e2: $03
	ld   l, h                                        ; $67e3: $6c
	ld   h, l                                        ; $67e4: $65
	dec  c                                           ; $67e5: $0d
	inc  b                                           ; $67e6: $04
	ld   a, [bc]                                     ; $67e7: $0a
	ld   [bc], a                                     ; $67e8: $02
	nop                                              ; $67e9: $00
	ld   l, l                                        ; $67ea: $6d
	ld   l, a                                        ; $67eb: $6f
	halt                                             ; $67ec: $76
	sbc  [hl]                                        ; $67ed: $9e
	ld   d, h                                        ; $67ee: $54
	ld   l, a                                        ; $67ef: $6f
	halt                                             ; $67f0: $76
	ld   e, a                                        ; $67f1: $5f
	ld   [hl], h                                     ; $67f2: $74
	dec  c                                           ; $67f3: $0d
	adc  c                                           ; $67f4: $89
	ld   h, l                                        ; $67f5: $65
	ld   e, c                                        ; $67f6: $59
	ld   [hl], c                                     ; $67f7: $71
	ld   l, l                                        ; $67f8: $6d
	ld   e, c                                        ; $67f9: $59
	ld   a, b                                        ; $67fa: $78
	sbc  a                                           ; $67fb: $9f
	dec  c                                           ; $67fc: $0d
	nop                                              ; $67fd: $00
	ld   a, [bc]                                     ; $67fe: $0a
	ld   bc, $508c                                   ; $67ff: $01 $8c $50
	sbc  [hl]                                        ; $6802: $9e
	ld   l, e                                        ; $6803: $6b
	sbc  d                                           ; $6804: $9a
	ld   a, l                                        ; $6805: $7d
	sbc  [hl]                                        ; $6806: $9e
	dec  c                                           ; $6807: $0d
	adc  h                                           ; $6808: $8c
	ld   l, l                                        ; $6809: $6d
	inc  bc                                          ; $680a: $03
	ld   l, b                                        ; $680b: $68
	ld   [bc], a                                     ; $680c: $02
	sub  e                                           ; $680d: $93
	ld   [hl], l                                     ; $680e: $75
	dec  c                                           ; $680f: $0d
	ld   e, d                                        ; $6810: $5a
	and  c                                           ; $6811: $a1
	ld   a, [hl]                                     ; $6812: $7e
	ld   [hl], c                                     ; $6813: $71
	ld   [hl], h                                     ; $6814: $74
	ld   e, l                                        ; $6815: $5d
	sbc  d                                           ; $6816: $9a
	sbc  d                                           ; $6817: $9a
	ld   a, [hl]                                     ; $6818: $7e
	ld   d, d                                        ; $6819: $52
	ld   d, d                                        ; $681a: $52
	ld   h, e                                        ; $681b: $63
	sbc  a                                           ; $681c: $9f
	dec  c                                           ; $681d: $0d
	nop                                              ; $681e: $00
	ld   a, [bc]                                     ; $681f: $0a
	inc  e                                           ; $6820: $1c
	add  hl, bc                                      ; $6821: $09
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	ld   bc, $6176                                   ; $6824: $01 $76 $61
	sbc  e                                           ; $6827: $9b
	ld   [hl], l                                     ; $6828: $75
	sbc  [hl]                                        ; $6829: $9e
	ld   h, c                                        ; $682a: $61
	ld   a, h                                        ; $682b: $7c
	inc  b                                           ; $682c: $04
	dec  c                                           ; $682d: $0d
	ld   [bc], a                                     ; $682e: $02
	sub  [hl]                                        ; $682f: $96
	inc  b                                           ; $6830: $04
	ld   b, l                                        ; $6831: $45
	inc  b                                           ; $6832: $04
	ld   a, [bc]                                     ; $6833: $0a
	and  b                                           ; $6834: $a0
	dec  c                                           ; $6835: $0d
	ld   e, d                                        ; $6836: $5a
	and  c                                           ; $6837: $a1
	ld   a, [hl]                                     ; $6838: $7e
	ld   [hl], c                                     ; $6839: $71
	ld   [hl], h                                     ; $683a: $74
	ld   e, l                                        ; $683b: $5d
	sbc  d                                           ; $683c: $9a
	ld   l, l                                        ; $683d: $6d
	xor  [hl]                                        ; $683e: $ae
	ldh  [$79], a                                    ; $683f: $e0 $79
	sbc  [hl]                                        ; $6841: $9e
	dec  c                                           ; $6842: $0d
	dec  b                                           ; $6843: $05
	ld   [hl], e                                     ; $6844: $73
	ld   e, c                                        ; $6845: $59
	sub  a                                           ; $6846: $97
	ld   a, h                                        ; $6847: $7c
	dec  b                                           ; $6848: $05
	cp   a                                           ; $6849: $bf
	sbc  b                                           ; $684a: $98
	inc  b                                           ; $684b: $04
	sub  d                                           ; $684c: $92
	ld   e, d                                        ; $684d: $5a
	ld   d, b                                        ; $684e: $50
	sbc  c                                           ; $684f: $99
	and  c                                           ; $6850: $a1
	ld   l, [hl]                                     ; $6851: $6e
	sbc  a                                           ; $6852: $9f
	dec  c                                           ; $6853: $0d
	nop                                              ; $6854: $00
	ld   a, [bc]                                     ; $6855: $0a
	ld   bc, $7650                                   ; $6856: $01 $50 $76
	ld   [hl], l                                     ; $6859: $75
	sbc  [hl]                                        ; $685a: $9e
	ld   b, $37                                      ; $685b: $06 $37
	ld   b, $a8                                      ; $685d: $06 $a8
	inc  bc                                          ; $685f: $03
	db   $db                                         ; $6860: $db
	add  [hl]                                        ; $6861: $86
	dec  c                                           ; $6862: $0d
	ld   [bc], a                                     ; $6863: $02
	ld   a, a                                        ; $6864: $7f
	ld   [hl], c                                     ; $6865: $71
	ld   [hl], h                                     ; $6866: $74
	adc  l                                           ; $6867: $8d
	sbc  c                                           ; $6868: $99
	halt                                             ; $6869: $76
	ld   d, d                                        ; $686a: $52
	ld   d, d                                        ; $686b: $52
	sbc  a                                           ; $686c: $9f
	dec  c                                           ; $686d: $0d
	nop                                              ; $686e: $00
	ld   a, [bc]                                     ; $686f: $0a
	ld   bc, $715b                                   ; $6870: $01 $5b $71
	halt                                             ; $6873: $76
	sbc  [hl]                                        ; $6874: $9e
	xor  [hl]                                        ; $6875: $ae
	ldh  [$7c], a                                    ; $6876: $e0 $7c
	inc  b                                           ; $6878: $04
	db   $ec                                         ; $6879: $ec
	ld   a, c                                        ; $687a: $79
	dec  b                                           ; $687b: $05
	ld   d, $72                                      ; $687c: $16 $72
	sub  b                                           ; $687e: $90
	ld   a, h                                        ; $687f: $7c
	ld   e, d                                        ; $6880: $5a
	dec  c                                           ; $6881: $0d
	nop                                              ; $6882: $00
	dec  b                                           ; $6883: $05
	jr   nz, jr_042_6899                             ; $6884: $20 $13

	ld   bc, $0001                                   ; $6886: $01 $01 $00
	ld   bc, $9950                                   ; $6889: $01 $50 $99
	ld   a, l                                        ; $688c: $7d
	ld   l, b                                        ; $688d: $68
	ld   l, [hl]                                     ; $688e: $6e
	sbc  a                                           ; $688f: $9f
	dec  c                                           ; $6890: $0d
	nop                                              ; $6891: $00
	inc  e                                           ; $6892: $1c
	add  hl, bc                                      ; $6893: $09
	ld   bc, $0101                                   ; $6894: $01 $01 $01
	ld   l, e                                        ; $6897: $6b
	sbc  d                                           ; $6898: $9a

jr_042_6899:
	ld   h, [hl]                                     ; $6899: $66
	sub  c                                           ; $689a: $91
	sbc  [hl]                                        ; $689b: $9e
	ld   [bc], a                                     ; $689c: $02
	xor  h                                           ; $689d: $ac
	ld   [bc], a                                     ; $689e: $02
	and  c                                           ; $689f: $a1
	ld   [hl], l                                     ; $68a0: $75
	ld   a, b                                        ; $68a1: $78
	sbc  a                                           ; $68a2: $9f
	dec  c                                           ; $68a3: $0d
	nop                                              ; $68a4: $00
	ld   a, [bc]                                     ; $68a5: $0a
	inc  bc                                          ; $68a6: $03
	rlca                                             ; $68a7: $07
	and  c                                           ; $68a8: $a1
	dec  bc                                          ; $68a9: $0b
	ld   b, $20                                      ; $68aa: $06 $20
	inc  b                                           ; $68ac: $04
	ld   bc, $2000                                   ; $68ad: $01 $00 $20
	ld   b, $20                                      ; $68b0: $06 $20
	dec  b                                           ; $68b2: $05
	dec  de                                          ; $68b3: $1b
	nop                                              ; $68b4: $00
	ld   c, $03                                      ; $68b5: $0e $03
	rrca                                             ; $68b7: $0f
	nop                                              ; $68b8: $00
	ld   bc, $000d                                   ; $68b9: $01 $0d $00
	nop                                              ; $68bc: $00
	ld   [bc], a                                     ; $68bd: $02
	add  hl, bc                                      ; $68be: $09
	ld   e, $0f                                      ; $68bf: $1e $0f
	dec  c                                           ; $68c1: $0d
	nop                                              ; $68c2: $00
	ld   bc, $fb69                                   ; $68c3: $01 $69 $fb
	ld   a, h                                        ; $68c6: $7c
	ld   a, [$000d]                                  ; $68c7: $fa $0d $00
	ld   a, [bc]                                     ; $68ca: $0a
	ld   d, $40                                      ; $68cb: $16 $40
	rrca                                             ; $68cd: $0f
	ld   c, $00                                      ; $68ce: $0e $00
	ld   bc, $5703                                   ; $68d0: $01 $03 $57
	xor  [hl]                                        ; $68d3: $ae
	push hl                                          ; $68d4: $e5
	db   $eb                                         ; $68d5: $eb
	or   b                                           ; $68d6: $b0
	db   $ec                                         ; $68d7: $ec
	and  e                                           ; $68d8: $a3
	dec  c                                           ; $68d9: $0d
	ld   e, b                                        ; $68da: $58
	adc  a                                           ; $68db: $8f
	ld   [hl], l                                     ; $68dc: $75
	halt                                             ; $68dd: $76
	ld   d, h                                        ; $68de: $54
	ld   h, d                                        ; $68df: $62
	ld   h, h                                        ; $68e0: $64
	ld   d, d                                        ; $68e1: $52
	adc  h                                           ; $68e2: $8c
	db   $fc                                         ; $68e3: $fc
	ld   h, a                                        ; $68e4: $67
	ld   a, [$0dfa]                                  ; $68e5: $fa $fa $0d
	nop                                              ; $68e8: $00
	ld   a, [bc]                                     ; $68e9: $0a
	rrca                                             ; $68ea: $0f
	inc  c                                           ; $68eb: $0c
	ld   bc, $0801                                   ; $68ec: $01 $01 $08
	nop                                              ; $68ef: $00
	ld   h, e                                        ; $68f0: $63
	and  c                                           ; $68f1: $a1
	sbc  [hl]                                        ; $68f2: $9e
	inc  b                                           ; $68f3: $04
	adc  a                                           ; $68f4: $8f
	inc  b                                           ; $68f5: $04
	jr   jr_042_6971                                 ; $68f6: $18 $79

	dec  c                                           ; $68f8: $0d
	ld   e, b                                        ; $68f9: $58
	inc  b                                           ; $68fa: $04
	ld   a, e                                        ; $68fb: $7b
	sbc  d                                           ; $68fc: $9a
	ld   h, e                                        ; $68fd: $63
	adc  h                                           ; $68fe: $8c
	ld   [hl], l                                     ; $68ff: $75
	ld   h, l                                        ; $6900: $65
	ld   l, l                                        ; $6901: $6d
	sbc  a                                           ; $6902: $9f
	dec  c                                           ; $6903: $0d
	nop                                              ; $6904: $00
	ld   a, [bc]                                     ; $6905: $0a
	rrca                                             ; $6906: $0f
	dec  c                                           ; $6907: $0d
	ld   bc, $8901                                   ; $6908: $01 $01 $89
	db   $fc                                         ; $690b: $fc
	and  c                                           ; $690c: $a1
	halt                                             ; $690d: $76
	sbc  [hl]                                        ; $690e: $9e
	inc  bc                                          ; $690f: $03
	ld   l, c                                        ; $6910: $69
	inc  bc                                          ; $6911: $03
	inc  c                                           ; $6912: $0c
	ld   [bc], a                                     ; $6913: $02
	sub  l                                           ; $6914: $95
	ld   l, l                                        ; $6915: $6d
	inc  bc                                          ; $6916: $03
	ld   l, a                                        ; $6917: $6f
	ld   a, l                                        ; $6918: $7d
	sbc  [hl]                                        ; $6919: $9e
	dec  c                                           ; $691a: $0d
	inc  b                                           ; $691b: $04
	ld   b, e                                        ; $691c: $43
	dec  b                                           ; $691d: $05
	ld   a, [bc]                                     ; $691e: $0a
	ld   e, d                                        ; $691f: $5a
	ld   d, b                                        ; $6920: $50
	sbc  c                                           ; $6921: $99
	ld   a, h                                        ; $6922: $7c
	ld   e, c                                        ; $6923: $59
	ld   [hl], a                                     ; $6924: $77
	ld   d, h                                        ; $6925: $54
	ld   e, c                                        ; $6926: $59
	sub  b                                           ; $6927: $90
	dec  c                                           ; $6928: $0d
	ld   d, h                                        ; $6929: $54
	ld   l, l                                        ; $692a: $6d
	ld   e, d                                        ; $692b: $5a
	sbc  l                                           ; $692c: $9d
	ld   h, l                                        ; $692d: $65
	ld   e, c                                        ; $692e: $59
	ld   [hl], c                                     ; $692f: $71
	ld   l, l                                        ; $6930: $6d
	sub  b                                           ; $6931: $90
	and  c                                           ; $6932: $a1
	ld   a, e                                        ; $6933: $7b
	sbc  a                                           ; $6934: $9f
	dec  c                                           ; $6935: $0d
	nop                                              ; $6936: $00
	ld   a, [bc]                                     ; $6937: $0a
	rrca                                             ; $6938: $0f
	ld   c, $03                                      ; $6939: $0e $03
	ld   bc, $fb90                                   ; $693b: $01 $90 $fb
	sbc  [hl]                                        ; $693e: $9e
	inc  b                                           ; $693f: $04
	pop  hl                                          ; $6940: $e1
	inc  b                                           ; $6941: $04
	rst  $38                                         ; $6942: $ff
	ld   h, e                                        ; $6943: $63
	and  c                                           ; $6944: $a1
	sbc  [hl]                                        ; $6945: $9e
	dec  c                                           ; $6946: $0d
	ld   [bc], a                                     ; $6947: $02
	jr   nz, jr_042_694c                             ; $6948: $20 $02

	sbc  l                                           ; $694a: $9d
	inc  b                                           ; $694b: $04

jr_042_694c:
	rrca                                             ; $694c: $0f
	ld   d, d                                        ; $694d: $52
	ld   [hl], l                                     ; $694e: $75
	ld   h, a                                        ; $694f: $67
	sub  [hl]                                        ; $6950: $96
	sbc  a                                           ; $6951: $9f
	dec  c                                           ; $6952: $0d
	nop                                              ; $6953: $00
	ld   a, [bc]                                     ; $6954: $0a
	rrca                                             ; $6955: $0f
	ld   c, $01                                      ; $6956: $0e $01
	ld   bc, $9075                                   ; $6958: $01 $75 $90
	sbc  [hl]                                        ; $695b: $9e
	ld   [$6300], sp                                 ; $695c: $08 $00 $63
	and  c                                           ; $695f: $a1
	dec  c                                           ; $6960: $0d
	ld   h, a                                        ; $6961: $67
	ld   [hl], c                                     ; $6962: $71
	ld   h, d                                        ; $6963: $62
	ld   e, l                                        ; $6964: $5d
	ld   l, l                                        ; $6965: $6d
	ld   a, h                                        ; $6966: $7c
	sub  b                                           ; $6967: $90
	ld   h, l                                        ; $6968: $65
	ld   e, l                                        ; $6969: $5d
	dec  c                                           ; $696a: $0d
	ld   a, b                                        ; $696b: $78
	sbc  b                                           ; $696c: $98
	adc  h                                           ; $696d: $8c
	ld   h, l                                        ; $696e: $65
	ld   l, l                                        ; $696f: $6d
	sub  [hl]                                        ; $6970: $96

jr_042_6971:
	sbc  a                                           ; $6971: $9f
	dec  c                                           ; $6972: $0d
	nop                                              ; $6973: $00
	ld   a, [bc]                                     ; $6974: $0a
	rrca                                             ; $6975: $0f
	inc  c                                           ; $6976: $0c
	ld   bc, $9201                                   ; $6977: $01 $01 $92
	ld   [hl], c                                     ; $697a: $71
	ld   a, a                                        ; $697b: $7f
	sbc  b                                           ; $697c: $98
	sbc  [hl]                                        ; $697d: $9e
	ld   d, b                                        ; $697e: $50
	sub  d                                           ; $697f: $92
	adc  a                                           ; $6980: $8f
	ld   h, e                                        ; $6981: $63
	and  c                                           ; $6982: $a1
	ld   e, d                                        ; $6983: $5a
	dec  c                                           ; $6984: $0d
	ld   [bc], a                                     ; $6985: $02
	sub  l                                           ; $6986: $95
	ld   [bc], a                                     ; $6987: $02
	ld   b, b                                        ; $6988: $40
	and  c                                           ; $6989: $a1
	ld   l, [hl]                                     ; $698a: $6e
	ld   l, [hl]                                     ; $698b: $6e
	ld   e, a                                        ; $698c: $5f
	ld   a, h                                        ; $698d: $7c
	ld   h, c                                        ; $698e: $61
	halt                                             ; $698f: $76
	ld   a, l                                        ; $6990: $7d
	dec  c                                           ; $6991: $0d
	ld   d, b                                        ; $6992: $50
	sbc  b                                           ; $6993: $98
	adc  h                                           ; $6994: $8c
	ld   h, l                                        ; $6995: $65
	ld   l, l                                        ; $6996: $6d
	sub  [hl]                                        ; $6997: $96
	ld   a, e                                        ; $6998: $7b
	sbc  a                                           ; $6999: $9f
	dec  c                                           ; $699a: $0d
	nop                                              ; $699b: $00
	ld   a, [bc]                                     ; $699c: $0a
	rrca                                             ; $699d: $0f
	dec  c                                           ; $699e: $0d
	ld   bc, $ff01                                   ; $699f: $01 $01 $ff
	rst  $38                                         ; $69a2: $ff
	halt                                             ; $69a3: $76
	sbc  [hl]                                        ; $69a4: $9e
	ld   d, d                                        ; $69a5: $52
	ld   d, h                                        ; $69a6: $54
	ld   h, c                                        ; $69a7: $61
	halt                                             ; $69a8: $76
	ld   [hl], l                                     ; $69a9: $75
	sbc  [hl]                                        ; $69aa: $9e
	dec  c                                           ; $69ab: $0d
	ld   l, e                                        ; $69ac: $6b
	and  c                                           ; $69ad: $a1
	ld   a, b                                        ; $69ae: $78
	ld   [$5d00], sp                                 ; $69af: $08 $00 $5d
	and  c                                           ; $69b2: $a1
	ld   a, c                                        ; $69b3: $79
	rst  $38                                         ; $69b4: $ff
	rst  $38                                         ; $69b5: $ff
	dec  c                                           ; $69b6: $0d
	nop                                              ; $69b7: $00
	ld   a, [bc]                                     ; $69b8: $0a
	rrca                                             ; $69b9: $0f
	inc  c                                           ; $69ba: $0c
	ld   bc, $9d01                                   ; $69bb: $01 $01 $9d
	ld   l, l                                        ; $69be: $6d
	ld   h, l                                        ; $69bf: $65
	inc  bc                                          ; $69c0: $03
	rst  $30                                         ; $69c1: $f7
	inc  d                                           ; $69c2: $14
	inc  bc                                          ; $69c3: $03
	add  d                                           ; $69c4: $82
	ld   e, c                                        ; $69c5: $59
	sub  a                                           ; $69c6: $97
	ld   a, h                                        ; $69c7: $7c
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	dec  c                                           ; $69ca: $0d
	nop                                              ; $69cb: $00
	ld   a, [bc]                                     ; $69cc: $0a
	rrca                                             ; $69cd: $0f
	ld   c, $01                                      ; $69ce: $0e $01
	ld   bc, $6363                                   ; $69d0: $01 $63 $63
	sub  d                                           ; $69d3: $92
	ld   e, c                                        ; $69d4: $59
	ld   a, b                                        ; $69d5: $78
	dec  b                                           ; $69d6: $05
	cp   a                                           ; $69d7: $bf
	sbc  b                                           ; $69d8: $98
	inc  b                                           ; $69d9: $04
	sub  d                                           ; $69da: $92
	ld   e, d                                        ; $69db: $5a
	dec  c                                           ; $69dc: $0d
	ld   d, b                                        ; $69dd: $50
	sbc  b                                           ; $69de: $98
	adc  h                                           ; $69df: $8c
	db   $fc                                         ; $69e0: $fc
	ld   h, a                                        ; $69e1: $67
	ld   a, [$0dfa]                                  ; $69e2: $fa $fa $0d
	nop                                              ; $69e5: $00
	ld   a, [bc]                                     ; $69e6: $0a
	rlca                                             ; $69e7: $07
	ld   a, [de]                                     ; $69e8: $1a
	dec  bc                                          ; $69e9: $0b
	ld   b, $21                                      ; $69ea: $06 $21
	jr   jr_042_69f4                                 ; $69ec: $18 $06

	ld   hl, $1c1c                                   ; $69ee: $21 $1c $1c
	ld   b, $21                                      ; $69f1: $06 $21
	inc  h                                           ; $69f3: $24

jr_042_69f4:
	inc  e                                           ; $69f4: $1c
	ld   b, $21                                      ; $69f5: $06 $21
	jr   z, jr_042_6a15                              ; $69f7: $28 $1c

	ld   b, $21                                      ; $69f9: $06 $21
	jr   nz, @+$1e                                   ; $69fb: $20 $1c

	ld   b, $21                                      ; $69fd: $06 $21
	inc  l                                           ; $69ff: $2c
	inc  e                                           ; $6a00: $1c
	nop                                              ; $6a01: $00
	rrca                                             ; $6a02: $0f
	dec  c                                           ; $6a03: $0d
	ld   bc, $0601                                   ; $6a04: $01 $01 $06
	scf                                              ; $6a07: $37
	ld   b, $a8                                      ; $6a08: $06 $a8
	inc  bc                                          ; $6a0a: $03
	db   $db                                         ; $6a0b: $db
	ld   [hl], l                                     ; $6a0c: $75
	inc  b                                           ; $6a0d: $04
	adc  l                                           ; $6a0e: $8d
	ld   d, [hl]                                     ; $6a0f: $56
	sbc  c                                           ; $6a10: $99
	inc  b                                           ; $6a11: $04
	ld   h, c                                        ; $6a12: $61
	inc  b                                           ; $6a13: $04
	sub  d                                           ; $6a14: $92

jr_042_6a15:
	ld   a, c                                        ; $6a15: $79
	dec  c                                           ; $6a16: $0d
	ld   bc, $e007                                   ; $6a17: $01 $07 $e0
	call z, $fbb3                                    ; $6a1a: $cc $b3 $fb
	ldh  [c], a                                      ; $6a1d: $e2
	ld   a, h                                        ; $6a1e: $7c
	rra                                              ; $6a1f: $1f
	ld   c, h                                        ; $6a20: $4c
	db   $e4                                         ; $6a21: $e4
	ei                                               ; $6a22: $fb
	jp   z, $0801                                    ; $6a23: $ca $01 $08

	ld   e, d                                        ; $6a26: $5a
	dec  c                                           ; $6a27: $0d
	inc  bc                                          ; $6a28: $03
	ld   d, a                                        ; $6a29: $57
	ld   [bc], a                                     ; $6a2a: $02
	nop                                              ; $6a2b: $00
	inc  b                                           ; $6a2c: $04
	sbc  [hl]                                        ; $6a2d: $9e
	inc  b                                           ; $6a2e: $04
	ld   b, l                                        ; $6a2f: $45
	ld   [bc], a                                     ; $6a30: $02
	rst  JumpTable                                         ; $6a31: $df
	ld   h, e                                        ; $6a32: $63
	sbc  d                                           ; $6a33: $9a
	adc  h                                           ; $6a34: $8c
	ld   h, l                                        ; $6a35: $65
	ld   l, l                                        ; $6a36: $6d
	ld   a, [$000d]                                  ; $6a37: $fa $0d $00
	ld   a, [bc]                                     ; $6a3a: $0a
	ld   bc, $7c6b                                   ; $6a3b: $01 $6b $7c
	inc  b                                           ; $6a3e: $04
	dec  bc                                          ; $6a3f: $0b
	ld   a, c                                        ; $6a40: $79
	ld   a, l                                        ; $6a41: $7d
	sbc  [hl]                                        ; $6a42: $9e
	sbc  l                                           ; $6a43: $9d
	ld   l, l                                        ; $6a44: $6d
	ld   h, l                                        ; $6a45: $65
	inc  bc                                          ; $6a46: $03
	rst  $30                                         ; $6a47: $f7
	ld   a, h                                        ; $6a48: $7c
	dec  c                                           ; $6a49: $0d
	dec  b                                           ; $6a4a: $05
	call c, $ad03                                    ; $6a4b: $dc $03 $ad
	sub  b                                           ; $6a4e: $90
	ld   b, $61                                      ; $6a4f: $06 $61
	ld   [bc], a                                     ; $6a51: $02
	ld   d, b                                        ; $6a52: $50
	ld   h, e                                        ; $6a53: $63
	sbc  d                                           ; $6a54: $9a
	ld   [hl], h                                     ; $6a55: $74
	ld   d, d                                        ; $6a56: $52
	sbc  c                                           ; $6a57: $99
	dec  c                                           ; $6a58: $0d
	ld   a, l                                        ; $6a59: $7d
	ld   l, b                                        ; $6a5a: $68
	sub  [hl]                                        ; $6a5b: $96
	sbc  a                                           ; $6a5c: $9f
	dec  c                                           ; $6a5d: $0d
	nop                                              ; $6a5e: $00
	ld   a, [bc]                                     ; $6a5f: $0a
	rrca                                             ; $6a60: $0f
	inc  c                                           ; $6a61: $0c
	ld   bc, $6b01                                   ; $6a62: $01 $01 $6b
	sbc  d                                           ; $6a65: $9a
	ld   e, c                                        ; $6a66: $59
	sub  a                                           ; $6a67: $97
	sbc  [hl]                                        ; $6a68: $9e
	dec  c                                           ; $6a69: $0d
	inc  bc                                          ; $6a6a: $03
	ld   d, a                                        ; $6a6b: $57
	xor  [hl]                                        ; $6a6c: $ae
	push hl                                          ; $6a6d: $e5
	db   $eb                                         ; $6a6e: $eb
	or   b                                           ; $6a6f: $b0
	ret  nz                                          ; $6a70: $c0

	ei                                               ; $6a71: $fb
	or   b                                           ; $6a72: $b0
	db   $ec                                         ; $6a73: $ec
	and  e                                           ; $6a74: $a3
	ld   h, l                                        ; $6a75: $65
	ld   [hl], h                                     ; $6a76: $74
	dec  c                                           ; $6a77: $0d
	ld   e, l                                        ; $6a78: $5d
	sbc  d                                           ; $6a79: $9a
	ld   l, l                                        ; $6a7a: $6d
	ld   d, b                                        ; $6a7b: $50
	ld   a, b                                        ; $6a7c: $78
	ld   l, l                                        ; $6a7d: $6d
	ld   a, c                                        ; $6a7e: $79
	ld   a, l                                        ; $6a7f: $7d
	rst  $38                                         ; $6a80: $ff
	rst  $38                                         ; $6a81: $ff
	dec  c                                           ; $6a82: $0d
	nop                                              ; $6a83: $00
	ld   a, [bc]                                     ; $6a84: $0a
	inc  d                                           ; $6a85: $14
	ld   de, $0101                                   ; $6a86: $11 $01 $01
	ld   h, e                                        ; $6a89: $63
	sub  a                                           ; $6a8a: $97
	ld   a, c                                        ; $6a8b: $79
	inc  d                                           ; $6a8c: $14
	ld   de, $1111                                   ; $6a8d: $11 $11 $11
	sbc  $a5                                         ; $6a90: $de $a5
	push af                                          ; $6a92: $f5
	ret                                              ; $6a93: $c9


	ld   e, d                                        ; $6a94: $5a
	dec  c                                           ; $6a95: $0d
	ret  c                                           ; $6a96: $d8

	xor  $bd                                         ; $6a97: $ee $bd
	push af                                          ; $6a99: $f5
	ret                                              ; $6a9a: $c9


	ld   h, e                                        ; $6a9b: $63
	sbc  d                                           ; $6a9c: $9a
	adc  h                                           ; $6a9d: $8c
	ld   h, a                                        ; $6a9e: $67
	ld   a, [$000d]                                  ; $6a9f: $fa $0d $00
	ld   a, [bc]                                     ; $6aa2: $0a
	ld   b, $60                                      ; $6aa3: $06 $60
	dec  bc                                          ; $6aa5: $0b
	rrca                                             ; $6aa6: $0f
	inc  c                                           ; $6aa7: $0c
	ld   bc, $0301                                   ; $6aa8: $01 $01 $03
	ld   d, a                                        ; $6aab: $57
	xor  [hl]                                        ; $6aac: $ae
	push hl                                          ; $6aad: $e5
	db   $eb                                         ; $6aae: $eb
	or   b                                           ; $6aaf: $b0
	ret  nz                                          ; $6ab0: $c0

	ei                                               ; $6ab1: $fb
	or   b                                           ; $6ab2: $b0
	db   $ec                                         ; $6ab3: $ec
	and  e                                           ; $6ab4: $a3
	ld   h, l                                        ; $6ab5: $65
	ld   [hl], h                                     ; $6ab6: $74
	dec  c                                           ; $6ab7: $0d
	ld   e, l                                        ; $6ab8: $5d
	sbc  d                                           ; $6ab9: $9a
	ld   l, l                                        ; $6aba: $6d
	ld   d, b                                        ; $6abb: $50
	ld   a, b                                        ; $6abc: $78
	ld   l, l                                        ; $6abd: $6d
	ld   a, c                                        ; $6abe: $79
	ld   a, l                                        ; $6abf: $7d
	rst  $38                                         ; $6ac0: $ff
	rst  $38                                         ; $6ac1: $ff
	dec  c                                           ; $6ac2: $0d
	nop                                              ; $6ac3: $00
	ld   a, [bc]                                     ; $6ac4: $0a
	rrca                                             ; $6ac5: $0f
	dec  c                                           ; $6ac6: $0d
	ld   bc, $1114                                   ; $6ac7: $01 $14 $11
	ld   bc, $9d01                                   ; $6aca: $01 $01 $9d
	ld   l, l                                        ; $6acd: $6d
	ld   h, l                                        ; $6ace: $65
	inc  bc                                          ; $6acf: $03
	rst  $30                                         ; $6ad0: $f7
	ld   e, c                                        ; $6ad1: $59
	sub  a                                           ; $6ad2: $97
	dec  c                                           ; $6ad3: $0d
	inc  d                                           ; $6ad4: $14
	ld   de, $1111                                   ; $6ad5: $11 $11 $11
	sbc  $a5                                         ; $6ad8: $de $a5
	push af                                          ; $6ada: $f5
	ret                                              ; $6adb: $c9


	ld   e, d                                        ; $6adc: $5a
	dec  c                                           ; $6add: $0d
	ret  c                                           ; $6ade: $d8

	xor  $bd                                         ; $6adf: $ee $bd
	push af                                          ; $6ae1: $f5
	ret                                              ; $6ae2: $c9


	ld   h, e                                        ; $6ae3: $63
	sbc  d                                           ; $6ae4: $9a
	adc  h                                           ; $6ae5: $8c
	ei                                               ; $6ae6: $fb
	ld   h, a                                        ; $6ae7: $67
	ld   a, [$000d]                                  ; $6ae8: $fa $0d $00
	ld   a, [bc]                                     ; $6aeb: $0a
	rrca                                             ; $6aec: $0f
	ld   c, $01                                      ; $6aed: $0e $01
	ld   bc, $9a6b                                   ; $6aef: $01 $6b $9a
	ld   [hl], l                                     ; $6af2: $75
	ld   a, l                                        ; $6af3: $7d
	sbc  [hl]                                        ; $6af4: $9e
	or   [hl]                                        ; $6af5: $b6
	or   b                                           ; $6af6: $b0
	db   $eb                                         ; $6af7: $eb
	inc  b                                           ; $6af8: $04
	ld   c, $03                                      ; $6af9: $0e $03
	xor  b                                           ; $6afb: $a8
	ld   hl, $a01c                                   ; $6afc: $21 $1c $a0
	dec  c                                           ; $6aff: $0d
	nop                                              ; $6b00: $00
	dec  b                                           ; $6b01: $05
	jr   nz, @+$07                                   ; $6b02: $20 $05

	ld   bc, $0001                                   ; $6b04: $01 $01 $00
	ld   bc, $5d6d                                   ; $6b07: $01 $6d $5d
	ld   h, e                                        ; $6b0a: $63
	and  c                                           ; $6b0b: $a1
	inc  b                                           ; $6b0c: $04
	ldh  a, [c]                                      ; $6b0d: $f2
	and  c                                           ; $6b0e: $a1
	ld   [hl], l                                     ; $6b0f: $75
	inc  bc                                          ; $6b10: $03
	jp   hl                                          ; $6b11: $e9


	ld   d, d                                        ; $6b12: $52
	ld   [hl], h                                     ; $6b13: $74
	sbc  [hl]                                        ; $6b14: $9e
	inc  b                                           ; $6b15: $04
	adc  a                                           ; $6b16: $8f
	inc  b                                           ; $6b17: $04
	jr   jr_042_6b93                                 ; $6b18: $18 $79

	dec  c                                           ; $6b1a: $0d
	ld   d, b                                        ; $6b1b: $50
	sbc  b                                           ; $6b1c: $98
	ld   e, d                                        ; $6b1d: $5a
	halt                                             ; $6b1e: $76
	ld   d, h                                        ; $6b1f: $54
	ld   h, d                                        ; $6b20: $62
	ld   h, h                                        ; $6b21: $64
	ld   d, d                                        ; $6b22: $52
	adc  h                                           ; $6b23: $8c
	ld   h, l                                        ; $6b24: $65
	ld   l, l                                        ; $6b25: $6d
	ei                                               ; $6b26: $fb
	ld   a, [$0dfa]                                  ; $6b27: $fa $fa $0d
	nop                                              ; $6b2a: $00
	ld   a, [bc]                                     ; $6b2b: $0a
	inc  bc                                          ; $6b2c: $03
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	rlca                                             ; $6b2f: $07
	ld   [hl], $00                                   ; $6b30: $36 $00
	inc  bc                                          ; $6b32: $03
	ld   a, [$0001]                                  ; $6b33: $fa $01 $00
	jr   nz, jr_042_6b38                             ; $6b36: $20 $00

jr_042_6b38:
	rlca                                             ; $6b38: $07
	or   b                                           ; $6b39: $b0
	nop                                              ; $6b3a: $00
	inc  bc                                          ; $6b3b: $03
	ld   a, [$0101]                                  ; $6b3c: $fa $01 $01
	jr   nz, jr_042_6b41                             ; $6b3f: $20 $00

jr_042_6b41:
	rlca                                             ; $6b41: $07
	db   $dd                                         ; $6b42: $dd
	nop                                              ; $6b43: $00
	inc  bc                                          ; $6b44: $03
	ld   a, [$0201]                                  ; $6b45: $fa $01 $02
	jr   nz, jr_042_6b4a                             ; $6b48: $20 $00

jr_042_6b4a:
	rlca                                             ; $6b4a: $07
	ld   l, $01                                      ; $6b4b: $2e $01
	inc  bc                                          ; $6b4d: $03
	ld   a, [$0301]                                  ; $6b4e: $fa $01 $03
	jr   nz, jr_042_6b53                             ; $6b51: $20 $00

jr_042_6b53:
	rlca                                             ; $6b53: $07
	ld   h, h                                        ; $6b54: $64
	ld   bc, $fa03                                   ; $6b55: $01 $03 $fa
	ld   bc, $200a                                   ; $6b58: $01 $0a $20
	nop                                              ; $6b5b: $00
	rlca                                             ; $6b5c: $07
	db   $e4                                         ; $6b5d: $e4
	ld   bc, $fa03                                   ; $6b5e: $01 $03 $fa
	ld   bc, $2014                                   ; $6b61: $01 $14 $20
	nop                                              ; $6b64: $00
	ld   c, $13                                      ; $6b65: $0e $13
	inc  e                                           ; $6b67: $1c
	ld   c, $01                                      ; $6b68: $0e $01
	ld   bc, $0102                                   ; $6b6a: $01 $02 $01
	inc  b                                           ; $6b6d: $04
	inc  hl                                          ; $6b6e: $23
	inc  bc                                          ; $6b6f: $03
	ld   c, d                                        ; $6b70: $4a
	ld   b, $37                                      ; $6b71: $06 $37
	ld   b, $a8                                      ; $6b73: $06 $a8
	inc  bc                                          ; $6b75: $03
	db   $db                                         ; $6b76: $db
	ld   hl, $031c                                   ; $6b77: $21 $1c $03
	rst  $20                                         ; $6b7a: $e7
	add  [hl]                                        ; $6b7b: $86
	sub  [hl]                                        ; $6b7c: $96
	ld   d, h                                        ; $6b7d: $54
	ld   h, c                                        ; $6b7e: $61
	ld   l, e                                        ; $6b7f: $6b
	ld   a, [$000d]                                  ; $6b80: $fa $0d $00
	ld   a, [bc]                                     ; $6b83: $0a
	inc  e                                           ; $6b84: $1c
	ld   c, $03                                      ; $6b85: $0e $03
	inc  bc                                          ; $6b87: $03
	ld   bc, $0276                                   ; $6b88: $01 $76 $02
	sbc  l                                           ; $6b8b: $9d
	ld   d, d                                        ; $6b8c: $52
	ld   l, l                                        ; $6b8d: $6d
	ld   d, d                                        ; $6b8e: $52
	halt                                             ; $6b8f: $76
	ld   h, c                                        ; $6b90: $61
	sbc  e                                           ; $6b91: $9b
	ld   a, b                                        ; $6b92: $78

jr_042_6b93:
	and  c                                           ; $6b93: $a1
	ld   [hl], l                                     ; $6b94: $75
	ld   h, a                                        ; $6b95: $67
	ld   e, d                                        ; $6b96: $5a
	sbc  [hl]                                        ; $6b97: $9e
	dec  c                                           ; $6b98: $0d
	inc  bc                                          ; $6b99: $03
	adc  e                                           ; $6b9a: $8b
	ld   a, l                                        ; $6b9b: $7d
	adc  h                                           ; $6b9c: $8c
	ld   l, [hl]                                     ; $6b9d: $6e
	inc  bc                                          ; $6b9e: $03
	inc  e                                           ; $6b9f: $1c
	inc  b                                           ; $6ba0: $04
	ld   d, e                                        ; $6ba1: $53
	inc  b                                           ; $6ba2: $04
	dec  bc                                          ; $6ba3: $0b
	ld   a, b                                        ; $6ba4: $78
	and  c                                           ; $6ba5: $a1
	ld   [hl], l                                     ; $6ba6: $75
	ld   h, a                                        ; $6ba7: $67
	sbc  a                                           ; $6ba8: $9f
	dec  c                                           ; $6ba9: $0d
	nop                                              ; $6baa: $00
	ld   a, [bc]                                     ; $6bab: $0a
	inc  e                                           ; $6bac: $1c
	ld   c, $00                                      ; $6bad: $0e $00
	nop                                              ; $6baf: $00
	ld   bc, $8802                                   ; $6bb0: $01 $02 $88
	inc  bc                                          ; $6bb3: $03
	rst  $20                                         ; $6bb4: $e7
	ld   h, l                                        ; $6bb5: $65
	ld   l, l                                        ; $6bb6: $6d
	sub  a                                           ; $6bb7: $97
	inc  b                                           ; $6bb8: $04
	ld   l, a                                        ; $6bb9: $6f
	ld   [bc], a                                     ; $6bba: $02
	ld   [hl], h                                     ; $6bbb: $74
	ld   h, l                                        ; $6bbc: $65
	adc  h                                           ; $6bbd: $8c
	ld   h, a                                        ; $6bbe: $67
	ld   e, c                                        ; $6bbf: $59
	sub  a                                           ; $6bc0: $97
	sbc  [hl]                                        ; $6bc1: $9e
	dec  c                                           ; $6bc2: $0d
	ld   l, e                                        ; $6bc3: $6b
	sbc  d                                           ; $6bc4: $9a
	adc  h                                           ; $6bc5: $8c
	ld   [hl], l                                     ; $6bc6: $75
	dec  b                                           ; $6bc7: $05
	inc  de                                          ; $6bc8: $13
	ld   h, l                                        ; $6bc9: $65
	adc  l                                           ; $6bca: $8d
	ld   a, c                                        ; $6bcb: $79
	ld   h, l                                        ; $6bcc: $65
	ld   [hl], h                                     ; $6bcd: $74
	dec  c                                           ; $6bce: $0d
	inc  b                                           ; $6bcf: $04
	rla                                              ; $6bd0: $17
	ld   [hl], c                                     ; $6bd1: $71
	ld   [hl], h                                     ; $6bd2: $74
	ld   d, d                                        ; $6bd3: $52
	ld   [hl], h                                     ; $6bd4: $74
	ld   [bc], a                                     ; $6bd5: $02
	inc  [hl]                                        ; $6bd6: $34
	ld   h, e                                        ; $6bd7: $63
	ld   d, d                                        ; $6bd8: $52
	ld   a, e                                        ; $6bd9: $7b
	sbc  a                                           ; $6bda: $9f
	dec  c                                           ; $6bdb: $0d
	nop                                              ; $6bdc: $00
	ld   a, [bc]                                     ; $6bdd: $0a
	nop                                              ; $6bde: $00
	ld   c, $13                                      ; $6bdf: $0e $13
	inc  e                                           ; $6be1: $1c
	ld   c, $01                                      ; $6be2: $0e $01
	ld   bc, $0102                                   ; $6be4: $01 $02 $01
	ld   d, d                                        ; $6be7: $52
	sub  a                                           ; $6be8: $97
	ld   [hl], c                                     ; $6be9: $71
	ld   h, l                                        ; $6bea: $65
	sub  c                                           ; $6beb: $91
	ld   d, d                                        ; $6bec: $52
	adc  h                                           ; $6bed: $8c
	ld   l, c                                        ; $6bee: $69
	db   $fc                                         ; $6bef: $fc
	ld   a, [$040d]                                  ; $6bf0: $fa $0d $04
	inc  hl                                          ; $6bf3: $23
	inc  bc                                          ; $6bf4: $03
	ld   c, d                                        ; $6bf5: $4a
	ld   b, $37                                      ; $6bf6: $06 $37
	ld   b, $a8                                      ; $6bf8: $06 $a8
	inc  bc                                          ; $6bfa: $03
	db   $db                                         ; $6bfb: $db
	ld   hl, $031c                                   ; $6bfc: $21 $1c $03
	rst  $20                                         ; $6bff: $e7
	ld   a, h                                        ; $6c00: $7c
	ld   [bc], a                                     ; $6c01: $02
	adc  b                                           ; $6c02: $88
	inc  bc                                          ; $6c03: $03
	rst  $20                                         ; $6c04: $e7
	ld   [hl], l                                     ; $6c05: $75
	ld   h, a                                        ; $6c06: $67
	sbc  a                                           ; $6c07: $9f
	dec  c                                           ; $6c08: $0d
	nop                                              ; $6c09: $00
	ld   a, [bc]                                     ; $6c0a: $0a
	nop                                              ; $6c0b: $00
	ld   c, $13                                      ; $6c0c: $0e $13
	inc  e                                           ; $6c0e: $1c
	ld   c, $03                                      ; $6c0f: $0e $03
	inc  bc                                          ; $6c11: $03
	ld   [bc], a                                     ; $6c12: $02
	ld   bc, $7c50                                   ; $6c13: $01 $50 $7c
	rst  $38                                         ; $6c16: $ff
	sbc  [hl]                                        ; $6c17: $9e
	inc  b                                           ; $6c18: $04
	ld   c, $04                                      ; $6c19: $0e $04
	adc  h                                           ; $6c1b: $8c
	sub  b                                           ; $6c1c: $90
	ld   d, h                                        ; $6c1d: $54
	ld   h, l                                        ; $6c1e: $65
	sbc  l                                           ; $6c1f: $9d
	ld   e, a                                        ; $6c20: $5f
	ld   a, b                                        ; $6c21: $78
	ld   d, d                                        ; $6c22: $52
	and  c                                           ; $6c23: $a1
	dec  c                                           ; $6c24: $0d
	ld   [hl], l                                     ; $6c25: $75
	ld   h, a                                        ; $6c26: $67
	ld   e, d                                        ; $6c27: $5a
	sbc  [hl]                                        ; $6c28: $9e
	ld   l, l                                        ; $6c29: $6d
	ld   l, [hl]                                     ; $6c2a: $6e
	ld   d, d                                        ; $6c2b: $52
	adc  h                                           ; $6c2c: $8c
	dec  b                                           ; $6c2d: $05
	cp   b                                           ; $6c2e: $b8
	ld   [bc], a                                     ; $6c2f: $02
	ld   e, c                                        ; $6c30: $59
	and  b                                           ; $6c31: $a0
	dec  c                                           ; $6c32: $0d
	inc  bc                                          ; $6c33: $03
	dec  de                                          ; $6c34: $1b
	sub  a                                           ; $6c35: $97
	ld   h, l                                        ; $6c36: $65
	ld   [hl], h                                     ; $6c37: $74
	ld   d, d                                        ; $6c38: $52
	sbc  c                                           ; $6c39: $99
	and  c                                           ; $6c3a: $a1
	ld   [hl], l                                     ; $6c3b: $75
	ld   h, a                                        ; $6c3c: $67
	sbc  a                                           ; $6c3d: $9f
	dec  c                                           ; $6c3e: $0d
	nop                                              ; $6c3f: $00
	ld   a, [bc]                                     ; $6c40: $0a
	inc  e                                           ; $6c41: $1c
	ld   c, $00                                      ; $6c42: $0e $00
	nop                                              ; $6c44: $00
	ld   bc, $9a61                                   ; $6c45: $01 $61 $9a
	ld   a, c                                        ; $6c48: $79
	ld   h, c                                        ; $6c49: $61
	sbc  b                                           ; $6c4a: $98
	ld   l, b                                        ; $6c4b: $68
	sbc  [hl]                                        ; $6c4c: $9e
	adc  h                                           ; $6c4d: $8c
	ld   l, l                                        ; $6c4e: $6d
	dec  b                                           ; $6c4f: $05
	db   $10                                         ; $6c50: $10
	ld   [hl], h                                     ; $6c51: $74
	dec  c                                           ; $6c52: $0d
	ld   [bc], a                                     ; $6c53: $02
	inc  [hl]                                        ; $6c54: $34
	ld   h, e                                        ; $6c55: $63
	ld   d, d                                        ; $6c56: $52
	ld   a, e                                        ; $6c57: $7b
	sbc  a                                           ; $6c58: $9f
	dec  c                                           ; $6c59: $0d
	nop                                              ; $6c5a: $00
	ld   a, [bc]                                     ; $6c5b: $0a
	nop                                              ; $6c5c: $00
	ld   c, $13                                      ; $6c5d: $0e $13
	inc  e                                           ; $6c5f: $1c
	ld   c, $00                                      ; $6c60: $0e $00
	nop                                              ; $6c62: $00
	ld   [bc], a                                     ; $6c63: $02
	ld   bc, $5490                                   ; $6c64: $01 $90 $54
	inc  bc                                          ; $6c67: $03
	ld   d, a                                        ; $6c68: $57
	ld   [hl], h                                     ; $6c69: $74
	ld   a, h                                        ; $6c6a: $7c
	inc  b                                           ; $6c6b: $04
	ld   h, c                                        ; $6c6c: $61
	inc  b                                           ; $6c6d: $04
	sub  d                                           ; $6c6e: $92
	ld   a, l                                        ; $6c6f: $7d
	dec  b                                           ; $6c70: $05
	ld   e, b                                        ; $6c71: $58
	inc  b                                           ; $6c72: $04
	add  a                                           ; $6c73: $87
	ld   a, c                                        ; $6c74: $79
	dec  c                                           ; $6c75: $0d
	ld   h, l                                        ; $6c76: $65
	adc  h                                           ; $6c77: $8c
	ld   [hl], c                                     ; $6c78: $71
	ld   [hl], h                                     ; $6c79: $74
	ld   d, b                                        ; $6c7a: $50
	sbc  b                                           ; $6c7b: $98
	adc  h                                           ; $6c7c: $8c
	ld   h, a                                        ; $6c7d: $67
	sub  [hl]                                        ; $6c7e: $96
	ld   a, e                                        ; $6c7f: $7b
	ld   sp, hl                                      ; $6c80: $f9
	dec  c                                           ; $6c81: $0d
	nop                                              ; $6c82: $00
	inc  e                                           ; $6c83: $1c
	ld   c, $01                                      ; $6c84: $0e $01
	ld   bc, $6701                                   ; $6c86: $01 $01 $67
	ld   h, d                                        ; $6c89: $62
	ld   d, d                                        ; $6c8a: $52
	ld   [hl], l                                     ; $6c8b: $75
	ld   h, a                                        ; $6c8c: $67
	ld   a, e                                        ; $6c8d: $7b
	sbc  a                                           ; $6c8e: $9f
	dec  c                                           ; $6c8f: $0d
	nop                                              ; $6c90: $00
	ld   a, [bc]                                     ; $6c91: $0a
	nop                                              ; $6c92: $00
	ld   c, $2f                                      ; $6c93: $0e $2f
	inc  e                                           ; $6c95: $1c
	inc  c                                           ; $6c96: $0c
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	ld   [bc], a                                     ; $6c99: $02
	ld   bc, $9750                                   ; $6c9a: $01 $50 $97
	sbc  [hl]                                        ; $6c9d: $9e
	ld   h, c                                        ; $6c9e: $61
	and  c                                           ; $6c9f: $a1
	ld   a, c                                        ; $6ca0: $79
	ld   l, a                                        ; $6ca1: $6f
	ld   a, l                                        ; $6ca2: $7d
	sbc  a                                           ; $6ca3: $9f
	dec  c                                           ; $6ca4: $0d
	nop                                              ; $6ca5: $00
	ld   a, [bc]                                     ; $6ca6: $0a
	inc  e                                           ; $6ca7: $1c
	inc  c                                           ; $6ca8: $0c
	ld   bc, $0101                                   ; $6ca9: $01 $01 $01
	adc  h                                           ; $6cac: $8c
	ld   l, [hl]                                     ; $6cad: $6e
	sbc  [hl]                                        ; $6cae: $9e
	ld   h, c                                        ; $6caf: $61
	ld   a, h                                        ; $6cb0: $7c
	dec  b                                           ; $6cb1: $05
	ld   e, b                                        ; $6cb2: $58
	inc  b                                           ; $6cb3: $04
	add  a                                           ; $6cb4: $87
	ld   a, l                                        ; $6cb5: $7d
	ld   [bc], a                                     ; $6cb6: $02
	or   [hl]                                        ; $6cb7: $b6
	ld   [hl], c                                     ; $6cb8: $71
	adc  e                                           ; $6cb9: $8b
	dec  c                                           ; $6cba: $0d
	adc  l                                           ; $6cbb: $8d
	ld   l, l                                        ; $6cbc: $6d
	ld   d, d                                        ; $6cbd: $52
	ld   [hl], l                                     ; $6cbe: $75
	ld   h, a                                        ; $6cbf: $67
	ld   a, e                                        ; $6cc0: $7b
	sbc  a                                           ; $6cc1: $9f
	dec  c                                           ; $6cc2: $0d
	nop                                              ; $6cc3: $00
	ld   a, [bc]                                     ; $6cc4: $0a
	rlca                                             ; $6cc5: $07
	ret                                              ; $6cc6: $c9


	ld   bc, $2006                                   ; $6cc7: $01 $06 $20
	ld   [bc], a                                     ; $6cca: $02
	ld   bc, $2000                                   ; $6ccb: $01 $00 $20
	nop                                              ; $6cce: $00
	ld   bc, $f104                                   ; $6ccf: $01 $04 $f1
	ld   b, $28                                      ; $6cd2: $06 $28
	ld   e, d                                        ; $6cd4: $5a
	ld   d, b                                        ; $6cd5: $50
	sbc  c                                           ; $6cd6: $99
	ld   a, b                                        ; $6cd7: $78
	sub  a                                           ; $6cd8: $97
	ld   b, $37                                      ; $6cd9: $06 $37
	ld   b, $a8                                      ; $6cdb: $06 $a8
	inc  bc                                          ; $6cdd: $03
	db   $db                                         ; $6cde: $db
	ld   [hl], l                                     ; $6cdf: $75
	dec  c                                           ; $6ce0: $0d
	inc  b                                           ; $6ce1: $04
	ld   c, c                                        ; $6ce2: $49
	ld   e, c                                        ; $6ce3: $59
	inc  bc                                          ; $6ce4: $03
	ld   l, e                                        ; $6ce5: $6b
	ld   a, c                                        ; $6ce6: $79
	inc  b                                           ; $6ce7: $04
	ld   b, l                                        ; $6ce8: $45
	sbc  d                                           ; $6ce9: $9a
	ld   [hl], h                                     ; $6cea: $74
	ld   a, l                                        ; $6ceb: $7d
	ld   d, d                                        ; $6cec: $52
	ld   e, c                                        ; $6ced: $59
	ld   e, d                                        ; $6cee: $5a
	dec  c                                           ; $6cef: $0d
	ld   [hl], l                                     ; $6cf0: $75
	ld   h, a                                        ; $6cf1: $67
	ld   e, c                                        ; $6cf2: $59
	ld   sp, hl                                      ; $6cf3: $f9
	dec  c                                           ; $6cf4: $0d
	nop                                              ; $6cf5: $00
	ld   a, [bc]                                     ; $6cf6: $0a
	nop                                              ; $6cf7: $00
	ld   bc, $688c                                   ; $6cf8: $01 $8c $68
	ld   a, l                                        ; $6cfb: $7d
	inc  b                                           ; $6cfc: $04
	ld   e, $7c                                      ; $6cfd: $1e $7c
	ld   [bc], a                                     ; $6cff: $02
	jp   Jump_042_65a0                               ; $6d00: $c3 $a0 $65


	ld   [hl], h                                     ; $6d03: $74
	ld   a, l                                        ; $6d04: $7d
	dec  c                                           ; $6d05: $0d
	ld   d, d                                        ; $6d06: $52
	ld   e, c                                        ; $6d07: $59
	ld   e, d                                        ; $6d08: $5a
	ld   [hl], l                                     ; $6d09: $75
	ld   h, l                                        ; $6d0a: $65
	sub  l                                           ; $6d0b: $95
	ld   d, h                                        ; $6d0c: $54
	ld   e, c                                        ; $6d0d: $59
	ld   sp, hl                                      ; $6d0e: $f9
	dec  c                                           ; $6d0f: $0d
	nop                                              ; $6d10: $00
	ld   a, [bc]                                     ; $6d11: $0a
	nop                                              ; $6d12: $00
	ld   c, $2f                                      ; $6d13: $0e $2f
	inc  e                                           ; $6d15: $1c
	dec  c                                           ; $6d16: $0d
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	ld   [bc], a                                     ; $6d19: $02
	ld   bc, $9750                                   ; $6d1a: $01 $50 $97
	sbc  [hl]                                        ; $6d1d: $9e
	ld   h, c                                        ; $6d1e: $61
	and  c                                           ; $6d1f: $a1
	ld   a, c                                        ; $6d20: $79
	ld   l, a                                        ; $6d21: $6f
	ld   a, l                                        ; $6d22: $7d
	sbc  a                                           ; $6d23: $9f
	dec  c                                           ; $6d24: $0d
	nop                                              ; $6d25: $00
	ld   a, [bc]                                     ; $6d26: $0a
	ld   bc, $7156                                   ; $6d27: $01 $56 $71
	sbc  [hl]                                        ; $6d2a: $9e
	ldh  [$cc], a                                    ; $6d2b: $e0 $cc
	or   e                                           ; $6d2d: $b3
	ei                                               ; $6d2e: $fb
	ldh  [c], a                                      ; $6d2f: $e2
	ld   sp, hl                                      ; $6d30: $f9
	dec  c                                           ; $6d31: $0d
	inc  bc                                          ; $6d32: $03
	or   d                                           ; $6d33: $b2
	inc  b                                           ; $6d34: $04
	ld   l, a                                        ; $6d35: $6f
	ld   a, c                                        ; $6d36: $79
	sub  [hl]                                        ; $6d37: $96
	sbc  d                                           ; $6d38: $9a
	ld   a, [hl]                                     ; $6d39: $7e
	sbc  [hl]                                        ; $6d3a: $9e
	ld   d, b                                        ; $6d3b: $50
	sbc  c                                           ; $6d3c: $99
	ld   b, $a7                                      ; $6d3d: $06 $a7
	ld   [bc], a                                     ; $6d3f: $02
	and  a                                           ; $6d40: $a7
	and  b                                           ; $6d41: $a0
	dec  c                                           ; $6d42: $0d
	inc  b                                           ; $6d43: $04
	ret  nz                                          ; $6d44: $c0

	ld   l, l                                        ; $6d45: $6d
	ld   l, c                                        ; $6d46: $69
	ld   a, [hl]                                     ; $6d47: $7e
	inc  b                                           ; $6d48: $04
	ldh  a, [c]                                      ; $6d49: $f2
	add  a                                           ; $6d4a: $87
	sbc  c                                           ; $6d4b: $99
	sub  a                                           ; $6d4c: $97
	ld   h, l                                        ; $6d4d: $65
	ld   d, d                                        ; $6d4e: $52
	sbc  l                                           ; $6d4f: $9d
	ld   a, e                                        ; $6d50: $7b
	sbc  a                                           ; $6d51: $9f
	dec  c                                           ; $6d52: $0d
	nop                                              ; $6d53: $00
	ld   a, [bc]                                     ; $6d54: $0a
	inc  e                                           ; $6d55: $1c
	dec  c                                           ; $6d56: $0d
	ld   bc, $0101                                   ; $6d57: $01 $01 $01
	inc  bc                                          ; $6d5a: $03

Jump_042_6d5b:
	ret  z                                           ; $6d5b: $c8

	ld   e, d                                        ; $6d5c: $5a
	inc  b                                           ; $6d5d: $04
	dec  hl                                          ; $6d5e: $2b
	ld   [hl], c                                     ; $6d5f: $71
	ld   [hl], h                                     ; $6d60: $74
	ld   d, d                                        ; $6d61: $52
	sbc  c                                           ; $6d62: $99
	inc  bc                                          ; $6d63: $03
	or   d                                           ; $6d64: $b2

Jump_042_6d65:
	inc  b                                           ; $6d65: $04
	ld   l, a                                        ; $6d66: $6f
	ld   a, l                                        ; $6d67: $7d
	dec  c                                           ; $6d68: $0d
	ld   h, c                                        ; $6d69: $61
	sbc  d                                           ; $6d6a: $9a
	ld   l, [hl]                                     ; $6d6b: $6e
	ld   e, a                                        ; $6d6c: $5f
	sub  [hl]                                        ; $6d6d: $96
	sbc  a                                           ; $6d6e: $9f
	dec  c                                           ; $6d6f: $0d
	ld   h, [hl]                                     ; $6d70: $66
	sub  c                                           ; $6d71: $91
	ld   d, b                                        ; $6d72: $50
	sbc  [hl]                                        ; $6d73: $9e
	inc  bc                                          ; $6d74: $03
	ret  z                                           ; $6d75: $c8

	ld   a, l                                        ; $6d76: $7d
	inc  bc                                          ; $6d77: $03
	dec  c                                           ; $6d78: $0d
	ld   [bc], a                                     ; $6d79: $02
	jp   $0479                                       ; $6d7a: $c3 $79 $04


	jp   $9d99                                       ; $6d7d: $c3 $99 $9d


	ld   a, e                                        ; $6d80: $7b
	sbc  a                                           ; $6d81: $9f
	dec  c                                           ; $6d82: $0d
	nop                                              ; $6d83: $00
	ld   a, [bc]                                     ; $6d84: $0a
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	rlca                                             ; $6d87: $07
	dec  de                                          ; $6d88: $1b
	nop                                              ; $6d89: $00
	inc  bc                                          ; $6d8a: $03
	ld   a, [$0801]                                  ; $6d8b: $fa $01 $08
	jr   nz, jr_042_6d90                             ; $6d8e: $20 $00

jr_042_6d90:
	rlca                                             ; $6d90: $07
	ld   b, h                                        ; $6d91: $44
	ld   [bc], a                                     ; $6d92: $02
	inc  bc                                          ; $6d93: $03
	ld   a, [$0901]                                  ; $6d94: $fa $01 $09
	jr   nz, jr_042_6d99                             ; $6d97: $20 $00

jr_042_6d99:
	rlca                                             ; $6d99: $07
	jp   hl                                          ; $6d9a: $e9


	inc  bc                                          ; $6d9b: $03
	inc  bc                                          ; $6d9c: $03
	ld   a, [$0a01]                                  ; $6d9d: $fa $01 $0a
	jr   nz, jr_042_6da2                             ; $6da0: $20 $00

jr_042_6da2:
	inc  e                                           ; $6da2: $1c
	inc  bc                                          ; $6da3: $03
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	ld   c, $6e                                      ; $6da6: $0e $6e
	ld   [bc], a                                     ; $6da8: $02
	ld   bc, $1005                                   ; $6da9: $01 $05 $10
	ld   l, l                                        ; $6dac: $6d
	sbc  l                                           ; $6dad: $9d
	ld   a, e                                        ; $6dae: $7b
	sbc  a                                           ; $6daf: $9f
	dec  c                                           ; $6db0: $0d
	nop                                              ; $6db1: $00
	ld   a, [bc]                                     ; $6db2: $0a
	inc  e                                           ; $6db3: $1c
	inc  bc                                          ; $6db4: $03
	ld   [bc], a                                     ; $6db5: $02
	ld   [bc], a                                     ; $6db6: $02
	ld   bc, $a502                                   ; $6db7: $01 $02 $a5
	inc  b                                           ; $6dba: $04
	xor  d                                           ; $6dbb: $aa
	ld   a, l                                        ; $6dbc: $7d
	sbc  [hl]                                        ; $6dbd: $9e
	ld   l, e                                        ; $6dbe: $6b
	ld   a, h                                        ; $6dbf: $7c
	ld   l, l                                        ; $6dc0: $6d
	sbc  c                                           ; $6dc1: $99
	and  c                                           ; $6dc2: $a1
	ld   l, [hl]                                     ; $6dc3: $6e
	ld   [bc], a                                     ; $6dc4: $02
	and  c                                           ; $6dc5: $a1
	inc  bc                                          ; $6dc6: $03
	and  b                                           ; $6dc7: $a0
	ld   l, a                                        ; $6dc8: $6f
	and  b                                           ; $6dc9: $a0
	dec  c                                           ; $6dca: $0d
	ld   [hl], h                                     ; $6dcb: $74
	ld   [hl], c                                     ; $6dcc: $71
	ld   [hl], h                                     ; $6dcd: $74
	ld   d, d                                        ; $6dce: $52
	inc  b                                           ; $6dcf: $04
	jr   nz, jr_042_6e4b                             ; $6dd0: $20 $79

	ld   e, e                                        ; $6dd2: $5b
	ld   l, l                                        ; $6dd3: $6d
	ld   d, [hl]                                     ; $6dd4: $56
	ld   a, b                                        ; $6dd5: $78
	ld   e, b                                        ; $6dd6: $58
	ld   h, a                                        ; $6dd7: $67
	ld   e, c                                        ; $6dd8: $59
	sub  a                                           ; $6dd9: $97
	dec  c                                           ; $6dda: $0d
	ld   e, c                                        ; $6ddb: $59
	ld   e, l                                        ; $6ddc: $5d
	ld   h, d                                        ; $6ddd: $62
	ld   h, l                                        ; $6dde: $65
	ld   [hl], h                                     ; $6ddf: $74
	ld   a, e                                        ; $6de0: $7b
	sbc  a                                           ; $6de1: $9f
	dec  c                                           ; $6de2: $0d
	nop                                              ; $6de3: $00
	ld   a, [bc]                                     ; $6de4: $0a
	ld   bc, $9a6b                                   ; $6de5: $01 $6b $9a
	ld   h, [hl]                                     ; $6de8: $66
	sub  c                                           ; $6de9: $91
	sbc  [hl]                                        ; $6dea: $9e
	inc  bc                                          ; $6deb: $03
	inc  e                                           ; $6dec: $1c
	inc  b                                           ; $6ded: $04
	ld   d, e                                        ; $6dee: $53
	ld   h, l                                        ; $6def: $65
	ld   [hl], h                                     ; $6df0: $74
	sbc  a                                           ; $6df1: $9f
	dec  c                                           ; $6df2: $0d
	nop                                              ; $6df3: $00
	ld   a, [bc]                                     ; $6df4: $0a
	dec  c                                           ; $6df5: $0d
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	rrca                                             ; $6df8: $0f
	nop                                              ; $6df9: $00
	ld   bc, $1001                                   ; $6dfa: $01 $01 $10
	db   $10                                         ; $6dfd: $10
	ld   bc, $0611                                   ; $6dfe: $01 $11 $06
	ld   e, d                                        ; $6e01: $5a
	inc  bc                                          ; $6e02: $03
	xor  h                                           ; $6e03: $ac
	ld   [bc], a                                     ; $6e04: $02
	rst  $30                                         ; $6e05: $f7
	inc  b                                           ; $6e06: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e07: $cf
	ld   bc, $0d12                                   ; $6e08: $01 $12 $0d
	nop                                              ; $6e0b: $00
	ld   a, [bc]                                     ; $6e0c: $0a
	ld   bc, $ecdf                                   ; $6e0d: $01 $df $ec
	and  e                                           ; $6e10: $a3
	ld   e, d                                        ; $6e11: $5a
	xor  h                                           ; $6e12: $ac
	and  a                                           ; $6e13: $a7
	push af                                          ; $6e14: $f5
	ret                                              ; $6e15: $c9


	and  b                                           ; $6e16: $a0
	dec  c                                           ; $6e17: $0d
	ld   e, c                                        ; $6e18: $59
	ld   l, h                                        ; $6e19: $6c
	ld   d, [hl]                                     ; $6e1a: $56
	adc  h                                           ; $6e1b: $8c
	ld   h, a                                        ; $6e1c: $67
	ld   a, h                                        ; $6e1d: $7c
	ld   [hl], l                                     ; $6e1e: $75
	sbc  [hl]                                        ; $6e1f: $9e
	dec  c                                           ; $6e20: $0d
	dec  de                                          ; $6e21: $1b
	db   $dd                                         ; $6e22: $dd
	ret  nz                                          ; $6e23: $c0

	push af                                          ; $6e24: $f5
	and  b                                           ; $6e25: $a0
	inc  b                                           ; $6e26: $04
	db   $fd                                         ; $6e27: $fd
	dec  b                                           ; $6e28: $05
	pop  af                                          ; $6e29: $f1
	ld   h, l                                        ; $6e2a: $65
	ld   [hl], h                                     ; $6e2b: $74
	ld   e, l                                        ; $6e2c: $5d
	ld   l, [hl]                                     ; $6e2d: $6e
	ld   h, e                                        ; $6e2e: $63
	ld   d, d                                        ; $6e2f: $52
	sbc  a                                           ; $6e30: $9f
	dec  c                                           ; $6e31: $0d
	nop                                              ; $6e32: $00
	ld   a, [bc]                                     ; $6e33: $0a
	ld   bc, $a7ac                                   ; $6e34: $01 $ac $a7
	push af                                          ; $6e37: $f5
	ret                                              ; $6e38: $c9


	ld   e, d                                        ; $6e39: $5a
	dec  b                                           ; $6e3a: $05
	db   $dd                                         ; $6e3b: $dd
	adc  [hl]                                        ; $6e3c: $8e
	halt                                             ; $6e3d: $76
	sbc  [hl]                                        ; $6e3e: $9e
	inc  bc                                          ; $6e3f: $03
	ld   [hl], b                                     ; $6e40: $70
	ld   e, l                                        ; $6e41: $5d
	inc  b                                           ; $6e42: $04
	db   $fd                                         ; $6e43: $fd
	dec  b                                           ; $6e44: $05
	pop  af                                          ; $6e45: $f1
	dec  c                                           ; $6e46: $0d
	ld   h, l                                        ; $6e47: $65
	ld   a, b                                        ; $6e48: $78
	ld   e, a                                        ; $6e49: $5f
	sbc  d                                           ; $6e4a: $9a

jr_042_6e4b:
	ld   a, [hl]                                     ; $6e4b: $7e
	pop  bc                                          ; $6e4c: $c1
	and  a                                           ; $6e4d: $a7
	push af                                          ; $6e4e: $f5
	ld   h, l                                        ; $6e4f: $65
	ld   [hl], h                                     ; $6e50: $74
	dec  c                                           ; $6e51: $0d
	ld   h, l                                        ; $6e52: $65
	adc  h                                           ; $6e53: $8c
	ld   d, d                                        ; $6e54: $52
	adc  h                                           ; $6e55: $8c
	ld   h, a                                        ; $6e56: $67
	sbc  a                                           ; $6e57: $9f
	dec  c                                           ; $6e58: $0d
	nop                                              ; $6e59: $00
	ld   a, [bc]                                     ; $6e5a: $0a
	ld   a, [de]                                     ; $6e5b: $1a
	ld   [$eb07], sp                                 ; $6e5c: $08 $07 $eb
	nop                                              ; $6e5f: $00
	ld   [bc], a                                     ; $6e60: $02
	inc  b                                           ; $6e61: $04
	ld   bc, $2002                                   ; $6e62: $01 $02 $20
	nop                                              ; $6e65: $00
	rlca                                             ; $6e66: $07
	adc  h                                           ; $6e67: $8c
	ld   bc, $0402                                   ; $6e68: $01 $02 $04
	ld   bc, $2001                                   ; $6e6b: $01 $01 $20
	nop                                              ; $6e6e: $00
	ld   b, $f5                                      ; $6e6f: $06 $f5
	ld   bc, $031c                                   ; $6e71: $01 $1c $03
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	ld   bc, $5978                                   ; $6e76: $01 $78 $59
	ld   a, b                                        ; $6e79: $78
	ld   e, c                                        ; $6e7a: $59
	sbc  [hl]                                        ; $6e7b: $9e
	sub  d                                           ; $6e7c: $92
	sbc  c                                           ; $6e7d: $99
	ld   h, [hl]                                     ; $6e7e: $66
	sub  c                                           ; $6e7f: $91
	ld   a, b                                        ; $6e80: $78
	ld   d, d                                        ; $6e81: $52
	sbc  a                                           ; $6e82: $9f
	dec  c                                           ; $6e83: $0d
	ld   [hl], l                                     ; $6e84: $75
	sub  b                                           ; $6e85: $90
	ld   a, e                                        ; $6e86: $7b
	sbc  [hl]                                        ; $6e87: $9e
	ld   d, b                                        ; $6e88: $50
	ld   a, b                                        ; $6e89: $78
	ld   l, l                                        ; $6e8a: $6d
	ld   a, h                                        ; $6e8b: $7c
	ld   l, l                                        ; $6e8c: $6d
	adc  a                                           ; $6e8d: $8f
	ld   a, c                                        ; $6e8e: $79
	dec  c                                           ; $6e8f: $0d
	add  b                                           ; $6e90: $80
	halt                                             ; $6e91: $76
	ld   h, c                                        ; $6e92: $61
	halt                                             ; $6e93: $76
	ld   [bc], a                                     ; $6e94: $02
	sbc  l                                           ; $6e95: $9d
	ld   [hl], c                                     ; $6e96: $71
	ld   [hl], h                                     ; $6e97: $74
	ld   e, b                                        ; $6e98: $58
	ld   e, l                                        ; $6e99: $5d
	sbc  l                                           ; $6e9a: $9d
	sbc  a                                           ; $6e9b: $9f
	dec  c                                           ; $6e9c: $0d
	nop                                              ; $6e9d: $00
	ld   a, [bc]                                     ; $6e9e: $0a
	ld   bc, $f204                                   ; $6e9f: $01 $04 $f2
	add  c                                           ; $6ea2: $81
	inc  b                                           ; $6ea3: $04
	ld   [hl], d                                     ; $6ea4: $72
	inc  b                                           ; $6ea5: $04
	sbc  [hl]                                        ; $6ea6: $9e
	ld   [hl], l                                     ; $6ea7: $75
	ld   d, d                                        ; $6ea8: $52
	sbc  c                                           ; $6ea9: $99
	halt                                             ; $6eaa: $76
	sbc  [hl]                                        ; $6eab: $9e
	dec  c                                           ; $6eac: $0d
	ld   l, e                                        ; $6ead: $6b
	ld   a, h                                        ; $6eae: $7c
	ld   d, h                                        ; $6eaf: $54
	ld   l, a                                        ; $6eb0: $6f
	sbc  [hl]                                        ; $6eb1: $9e
	halt                                             ; $6eb2: $76
	and  c                                           ; $6eb3: $a1
	ld   [hl], l                                     ; $6eb4: $75
	sub  b                                           ; $6eb5: $90
	ld   a, b                                        ; $6eb6: $78
	ld   d, d                                        ; $6eb7: $52
	inc  b                                           ; $6eb8: $04
	call nc, $0d79                                   ; $6eb9: $d4 $79 $0d
	ld   [bc], a                                     ; $6ebc: $02
	add  [hl]                                        ; $6ebd: $86
	ld   d, h                                        ; $6ebe: $54
	sbc  l                                           ; $6ebf: $9d
	sub  [hl]                                        ; $6ec0: $96
	sbc  a                                           ; $6ec1: $9f
	dec  c                                           ; $6ec2: $0d
	nop                                              ; $6ec3: $00
	ld   a, [bc]                                     ; $6ec4: $0a
	ld   bc, $a102                                   ; $6ec5: $01 $02 $a1
	and  b                                           ; $6ec8: $a0
	ld   [bc], a                                     ; $6ec9: $02
	inc  l                                           ; $6eca: $2c
	ld   e, e                                        ; $6ecb: $5b
	ld   h, l                                        ; $6ecc: $65
	adc  a                                           ; $6ecd: $8f
	ld   [hl], h                                     ; $6ece: $74
	sbc  [hl]                                        ; $6ecf: $9e
	adc  h                                           ; $6ed0: $8c
	ld   h, [hl]                                     ; $6ed1: $66
	adc  a                                           ; $6ed2: $8f
	ld   a, c                                        ; $6ed3: $79
	dec  c                                           ; $6ed4: $0d
	sub  d                                           ; $6ed5: $92
	sub  a                                           ; $6ed6: $97
	ld   a, b                                        ; $6ed7: $78
	ld   d, d                                        ; $6ed8: $52
	halt                                             ; $6ed9: $76
	sbc  [hl]                                        ; $6eda: $9e
	inc  b                                           ; $6edb: $04
	ld   [hl-], a                                    ; $6edc: $32
	inc  b                                           ; $6edd: $04
	dec  bc                                          ; $6ede: $0b
	ld   [hl], l                                     ; $6edf: $75
	inc  bc                                          ; $6ee0: $03
	adc  b                                           ; $6ee1: $88
	inc  b                                           ; $6ee2: $04
	ld   a, [bc]                                     ; $6ee3: $0a
	rst  $38                                         ; $6ee4: $ff
	rst  $38                                         ; $6ee5: $ff
	dec  c                                           ; $6ee6: $0d
	halt                                             ; $6ee7: $76
	ld   d, d                                        ; $6ee8: $52
	ld   d, h                                        ; $6ee9: $54
	ld   h, c                                        ; $6eea: $61
	halt                                             ; $6eeb: $76
	sub  b                                           ; $6eec: $90
	ld   d, b                                        ; $6eed: $50
	sbc  c                                           ; $6eee: $99
	ld   a, h                                        ; $6eef: $7c
	ld   [hl], l                                     ; $6ef0: $75
	ld   h, a                                        ; $6ef1: $67
	ld   e, c                                        ; $6ef2: $59
	sub  a                                           ; $6ef3: $97
	sbc  a                                           ; $6ef4: $9f
	dec  c                                           ; $6ef5: $0d
	nop                                              ; $6ef6: $00
	ld   a, [bc]                                     ; $6ef7: $0a
	ld   bc, $9166                                   ; $6ef8: $01 $66 $91
	sbc  [hl]                                        ; $6efb: $9e
	ld   [bc], a                                     ; $6efc: $02
	and  l                                           ; $6efd: $a5
	inc  b                                           ; $6efe: $04
	xor  d                                           ; $6eff: $aa
	sub  b                                           ; $6f00: $90
	ld   [bc], a                                     ; $6f01: $02
	jr   nz, jr_042_6f08                             ; $6f02: $20 $04

	xor  d                                           ; $6f04: $aa
	dec  c                                           ; $6f05: $0d
	ld   e, d                                        ; $6f06: $5a
	and  c                                           ; $6f07: $a1

jr_042_6f08:
	ld   a, [hl]                                     ; $6f08: $7e
	sbc  b                                           ; $6f09: $98
	ld   a, b                                        ; $6f0a: $78
	ld   h, e                                        ; $6f0b: $63
	ld   d, d                                        ; $6f0c: $52
	sbc  a                                           ; $6f0d: $9f
	dec  c                                           ; $6f0e: $0d
	nop                                              ; $6f0f: $00
	ld   a, [bc]                                     ; $6f10: $0a
	inc  bc                                          ; $6f11: $03
	nop                                              ; $6f12: $00
	inc  e                                           ; $6f13: $1c
	inc  bc                                          ; $6f14: $03
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	ld   bc, $508c                                   ; $6f17: $01 $8c $50
	adc  h                                           ; $6f1a: $8c
	ld   d, b                                        ; $6f1b: $50
	ld   a, e                                        ; $6f1c: $7b
	sbc  a                                           ; $6f1d: $9f
	dec  c                                           ; $6f1e: $0d
	ld   [hl], l                                     ; $6f1f: $75
	sub  b                                           ; $6f20: $90
	ld   a, e                                        ; $6f21: $7b
	sbc  [hl]                                        ; $6f22: $9e
	ld   h, c                                        ; $6f23: $61
	sbc  d                                           ; $6f24: $9a
	ld   h, [hl]                                     ; $6f25: $66
	sub  c                                           ; $6f26: $91
	pop  bc                                          ; $6f27: $c1
	db   $e3                                         ; $6f28: $e3
	ld   l, [hl]                                     ; $6f29: $6e
	sbc  l                                           ; $6f2a: $9d
	sbc  a                                           ; $6f2b: $9f
	dec  c                                           ; $6f2c: $0d
	nop                                              ; $6f2d: $00
	ld   a, [bc]                                     ; $6f2e: $0a
	ld   bc, $a102                                   ; $6f2f: $01 $02 $a1
	and  b                                           ; $6f32: $a0
	ld   [bc], a                                     ; $6f33: $02
	inc  l                                           ; $6f34: $2c
	ld   e, e                                        ; $6f35: $5b
	ld   h, l                                        ; $6f36: $65
	adc  a                                           ; $6f37: $8f
	ld   [hl], h                                     ; $6f38: $74
	sbc  [hl]                                        ; $6f39: $9e
	adc  h                                           ; $6f3a: $8c
	ld   h, [hl]                                     ; $6f3b: $66
	adc  a                                           ; $6f3c: $8f
	ld   a, c                                        ; $6f3d: $79
	dec  c                                           ; $6f3e: $0d
	sub  d                                           ; $6f3f: $92
	sub  a                                           ; $6f40: $97
	ld   a, b                                        ; $6f41: $78
	ld   d, d                                        ; $6f42: $52
	halt                                             ; $6f43: $76
	sbc  [hl]                                        ; $6f44: $9e
	inc  b                                           ; $6f45: $04
	ld   [hl-], a                                    ; $6f46: $32
	inc  b                                           ; $6f47: $04
	dec  bc                                          ; $6f48: $0b
	ld   [hl], l                                     ; $6f49: $75
	inc  bc                                          ; $6f4a: $03
	adc  b                                           ; $6f4b: $88
	inc  b                                           ; $6f4c: $04
	ld   a, [bc]                                     ; $6f4d: $0a
	rst  $38                                         ; $6f4e: $ff
	rst  $38                                         ; $6f4f: $ff
	dec  c                                           ; $6f50: $0d
	halt                                             ; $6f51: $76

Jump_042_6f52:
	ld   d, d                                        ; $6f52: $52
	ld   d, h                                        ; $6f53: $54
	ld   h, c                                        ; $6f54: $61
	halt                                             ; $6f55: $76
	sub  b                                           ; $6f56: $90
	ld   d, b                                        ; $6f57: $50
	sbc  c                                           ; $6f58: $99
	ld   a, h                                        ; $6f59: $7c
	ld   [hl], l                                     ; $6f5a: $75
	ld   h, a                                        ; $6f5b: $67
	sub  [hl]                                        ; $6f5c: $96
	sbc  a                                           ; $6f5d: $9f
	dec  c                                           ; $6f5e: $0d
	nop                                              ; $6f5f: $00
	ld   a, [bc]                                     ; $6f60: $0a
	ld   bc, $9166                                   ; $6f61: $01 $66 $91
	sbc  [hl]                                        ; $6f64: $9e
	ld   [bc], a                                     ; $6f65: $02
	and  l                                           ; $6f66: $a5
	inc  b                                           ; $6f67: $04
	xor  d                                           ; $6f68: $aa
	sub  b                                           ; $6f69: $90
	ld   [bc], a                                     ; $6f6a: $02
	jr   nz, jr_042_6f71                             ; $6f6b: $20 $04

	xor  d                                           ; $6f6d: $aa
	dec  c                                           ; $6f6e: $0d
	ld   e, d                                        ; $6f6f: $5a
	and  c                                           ; $6f70: $a1

jr_042_6f71:
	ld   a, [hl]                                     ; $6f71: $7e
	sbc  b                                           ; $6f72: $98
	ld   a, b                                        ; $6f73: $78
	ld   h, e                                        ; $6f74: $63
	ld   d, d                                        ; $6f75: $52
	sbc  a                                           ; $6f76: $9f
	dec  c                                           ; $6f77: $0d
	nop                                              ; $6f78: $00
	ld   a, [bc]                                     ; $6f79: $0a
	inc  bc                                          ; $6f7a: $03
	nop                                              ; $6f7b: $00
	inc  e                                           ; $6f7c: $1c
	inc  bc                                          ; $6f7d: $03
	ld   b, $06                                      ; $6f7e: $06 $06
	ld   bc, $5703                                   ; $6f80: $01 $03 $57
	inc  bc                                          ; $6f83: $03
	sbc  c                                           ; $6f84: $99
	sbc  [hl]                                        ; $6f85: $9e
	pop  bc                                          ; $6f86: $c1
	db   $e3                                         ; $6f87: $e3
	ld   h, [hl]                                     ; $6f88: $66
	sub  c                                           ; $6f89: $91
	ld   a, b                                        ; $6f8a: $78
	ld   d, d                                        ; $6f8b: $52
	sbc  a                                           ; $6f8c: $9f
	dec  c                                           ; $6f8d: $0d
	inc  bc                                          ; $6f8e: $03
	ld   [hl], l                                     ; $6f8f: $75
	ld   e, d                                        ; $6f90: $5a
	ld   l, l                                        ; $6f91: $6d
	sbc  c                                           ; $6f92: $99
	and  c                                           ; $6f93: $a1
	ld   [hl], l                                     ; $6f94: $75
	ld   d, d                                        ; $6f95: $52
	sbc  c                                           ; $6f96: $99
	inc  b                                           ; $6f97: $04
	ld   a, $05                                      ; $6f98: $3e $05
	ld   a, l                                        ; $6f9a: $7d
	sub  [hl]                                        ; $6f9b: $96
	sbc  a                                           ; $6f9c: $9f
	dec  c                                           ; $6f9d: $0d
	nop                                              ; $6f9e: $00
	ld   a, [bc]                                     ; $6f9f: $0a
	ld   bc, $f204                                   ; $6fa0: $01 $04 $f2
	add  c                                           ; $6fa3: $81
	inc  b                                           ; $6fa4: $04
	ld   [hl], d                                     ; $6fa5: $72
	inc  b                                           ; $6fa6: $04
	sbc  [hl]                                        ; $6fa7: $9e
	ld   [hl], l                                     ; $6fa8: $75
	sbc  [hl]                                        ; $6fa9: $9e
	ld   h, c                                        ; $6faa: $61
	ld   h, c                                        ; $6fab: $61
	ld   a, c                                        ; $6fac: $79
	ld   d, d                                        ; $6fad: $52
	sbc  c                                           ; $6fae: $99
	ld   a, h                                        ; $6faf: $7c
	dec  c                                           ; $6fb0: $0d
	ld   l, [hl]                                     ; $6fb1: $6e
	ld   [hl], c                                     ; $6fb2: $71
	ld   l, l                                        ; $6fb3: $6d
	sub  a                                           ; $6fb4: $97
	sbc  [hl]                                        ; $6fb5: $9e
	sub  d                                           ; $6fb6: $92
	adc  a                                           ; $6fb7: $8f
	ld   l, l                                        ; $6fb8: $6d
	inc  b                                           ; $6fb9: $04
	ld   a, b                                        ; $6fba: $78
	ld   e, d                                        ; $6fbb: $5a
	ld   d, d                                        ; $6fbc: $52
	ld   d, d                                        ; $6fbd: $52
	sbc  l                                           ; $6fbe: $9d
	sbc  a                                           ; $6fbf: $9f
	dec  c                                           ; $6fc0: $0d
	sbc  l                                           ; $6fc1: $9d
	ld   e, c                                        ; $6fc2: $59
	ld   [hl], c                                     ; $6fc3: $71
	ld   l, l                                        ; $6fc4: $6d
	ld   sp, hl                                      ; $6fc5: $f9
	dec  c                                           ; $6fc6: $0d
	nop                                              ; $6fc7: $00
	ld   a, [bc]                                     ; $6fc8: $0a
	inc  bc                                          ; $6fc9: $03
	nop                                              ; $6fca: $00
	ld   c, $84                                      ; $6fcb: $0e $84
	inc  e                                           ; $6fcd: $1c
	inc  b                                           ; $6fce: $04
	ld   bc, $0201                                   ; $6fcf: $01 $01 $02
	ld   bc, $567b                                   ; $6fd2: $01 $7b $56
	sbc  [hl]                                        ; $6fd5: $9e
	ld   l, a                                        ; $6fd6: $6f
	ld   d, d                                        ; $6fd7: $52
	ld   [bc], a                                     ; $6fd8: $02
	inc  de                                          ; $6fd9: $13
	ld   l, a                                        ; $6fda: $6f
	sub  c                                           ; $6fdb: $91
	and  c                                           ; $6fdc: $a1
	sbc  [hl]                                        ; $6fdd: $9e
	dec  c                                           ; $6fde: $0d
	ld   l, [hl]                                     ; $6fdf: $6e
	sbc  c                                           ; $6fe0: $99
	adc  h                                           ; $6fe1: $8c
	ld   h, e                                        ; $6fe2: $63
	and  c                                           ; $6fe3: $a1
	ld   e, d                                        ; $6fe4: $5a
	ld   h, c                                        ; $6fe5: $61
	sbc  e                                           ; $6fe6: $9b
	and  c                                           ; $6fe7: $a1
	ld   l, [hl]                                     ; $6fe8: $6e
	dec  c                                           ; $6fe9: $0d
	ld   h, l                                        ; $6fea: $65
	sub  [hl]                                        ; $6feb: $96
	ld   d, h                                        ; $6fec: $54
	ld   a, [$000d]                                  ; $6fed: $fa $0d $00
	ld   a, [bc]                                     ; $6ff0: $0a
	ld   bc, $9166                                   ; $6ff1: $01 $66 $91
	sbc  [hl]                                        ; $6ff4: $9e
	and  e                                           ; $6ff5: $a3
	and  l                                           ; $6ff6: $a5
	db   $ec                                         ; $6ff7: $ec
	cp   d                                           ; $6ff8: $ba
	ld   e, d                                        ; $6ff9: $5a
	xor  e                                           ; $6ffa: $ab
	call z, $966e                                    ; $6ffb: $cc $6e $96
	sbc  a                                           ; $6ffe: $9f
	dec  c                                           ; $6fff: $0d
	nop                                              ; $7000: $00
	ld   a, [bc]                                     ; $7001: $0a
	ld   bc, $526f                                   ; $7002: $01 $6f $52
	ld   [bc], a                                     ; $7005: $02
	inc  de                                          ; $7006: $13
	ld   l, a                                        ; $7007: $6f
	sub  c                                           ; $7008: $91
	and  c                                           ; $7009: $a1
	ld   a, l                                        ; $700a: $7d
	dec  c                                           ; $700b: $0d
	and  e                                           ; $700c: $a3
	and  l                                           ; $700d: $a5
	db   $ec                                         ; $700e: $ec
	cp   d                                           ; $700f: $ba
	ld   a, c                                        ; $7010: $79
	ld   d, h                                        ; $7011: $54
	ld   h, d                                        ; $7012: $62
	ld   d, d                                        ; $7013: $52
	ld   [hl], h                                     ; $7014: $74
	sbc  c                                           ; $7015: $99
	halt                                             ; $7016: $76
	ld   h, c                                        ; $7017: $61
	sbc  e                                           ; $7018: $9b
	and  b                                           ; $7019: $a0
	dec  c                                           ; $701a: $0d
	adc  l                                           ; $701b: $8d
	sub  a                                           ; $701c: $97
	sbc  d                                           ; $701d: $9a
	ld   l, a                                        ; $701e: $6f
	sub  c                                           ; $701f: $91
	pop  bc                                          ; $7020: $c1
	db   $e3                                         ; $7021: $e3
	ld   l, [hl]                                     ; $7022: $6e
	ld   e, c                                        ; $7023: $59
	sub  a                                           ; $7024: $97
	ld   a, e                                        ; $7025: $7b
	sbc  a                                           ; $7026: $9f
	dec  c                                           ; $7027: $0d
	nop                                              ; $7028: $00
	ld   a, [bc]                                     ; $7029: $0a
	ld   bc, $9166                                   ; $702a: $01 $66 $91
	sbc  [hl]                                        ; $702d: $9e
	ld   d, d                                        ; $702e: $52
	ld   e, l                                        ; $702f: $5d
	sub  [hl]                                        ; $7030: $96
	ei                                               ; $7031: $fb
	sbc  a                                           ; $7032: $9f
	dec  c                                           ; $7033: $0d
	nop                                              ; $7034: $00
	ld   a, [bc]                                     ; $7035: $0a
	dec  c                                           ; $7036: $0d
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	rrca                                             ; $7039: $0f
	nop                                              ; $703a: $00
	ld   bc, $1001                                   ; $703b: $01 $01 $10
	db   $10                                         ; $703e: $10
	ld   bc, $0611                                   ; $703f: $01 $11 $06
	ld   e, d                                        ; $7042: $5a
	inc  bc                                          ; $7043: $03
	xor  h                                           ; $7044: $ac
	ld   [bc], a                                     ; $7045: $02
	rst  $30                                         ; $7046: $f7
	inc  b                                           ; $7047: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7048: $cf
	ld   bc, $0d12                                   ; $7049: $01 $12 $0d
	nop                                              ; $704c: $00
	ld   a, [bc]                                     ; $704d: $0a
	ld   bc, $a5a3                                   ; $704e: $01 $a3 $a5
	db   $ec                                         ; $7051: $ec
	cp   d                                           ; $7052: $ba
	ld   e, d                                        ; $7053: $5a
	dec  c                                           ; $7054: $0d
	ld   bc, $6e07                                   ; $7055: $01 $07 $6e
	sbc  c                                           ; $7058: $99
	adc  h                                           ; $7059: $8c
	ld   h, e                                        ; $705a: $63
	and  c                                           ; $705b: $a1
	ld   e, d                                        ; $705c: $5a
	ld   h, c                                        ; $705d: $61
	sbc  e                                           ; $705e: $9b
	and  c                                           ; $705f: $a1
	ld   l, [hl]                                     ; $7060: $6e
	ld   bc, $0d08                                   ; $7061: $01 $08 $0d
	halt                                             ; $7064: $76
	ld   [bc], a                                     ; $7065: $02
	sbc  l                                           ; $7066: $9d
	ld   [hl], c                                     ; $7067: $71
	ld   [hl], h                                     ; $7068: $74
	ld   d, d                                        ; $7069: $52
	sbc  c                                           ; $706a: $99
	ld   d, b                                        ; $706b: $50
	ld   d, d                                        ; $706c: $52
	ld   l, [hl]                                     ; $706d: $6e
	ld   a, c                                        ; $706e: $79
	dec  c                                           ; $706f: $0d
	nop                                              ; $7070: $00
	ld   a, [bc]                                     ; $7071: $0a
	ld   bc, $bc05                                   ; $7072: $01 $05 $bc
	inc  bc                                          ; $7075: $03
	sbc  h                                           ; $7076: $9c
	xor  [hl]                                        ; $7077: $ae
	ei                                               ; $7078: $fb
	ld   a, h                                        ; $7079: $7c
	ld   [bc], a                                     ; $707a: $02
	inc  e                                           ; $707b: $1c
	and  b                                           ; $707c: $a0
	ld   [bc], a                                     ; $707d: $02
	rla                                              ; $707e: $17
	ld   h, l                                        ; $707f: $65
	ld   [hl], h                                     ; $7080: $74
	dec  c                                           ; $7081: $0d
	inc  bc                                          ; $7082: $03
	ld   c, a                                        ; $7083: $4f
	dec  b                                           ; $7084: $05
	db   $dd                                         ; $7085: $dd
	ld   h, l                                        ; $7086: $65
	ld   [hl], h                                     ; $7087: $74
	ld   e, l                                        ; $7088: $5d
	ld   l, [hl]                                     ; $7089: $6e
	ld   h, e                                        ; $708a: $63
	ld   d, d                                        ; $708b: $52
	sbc  a                                           ; $708c: $9f
	dec  c                                           ; $708d: $0d
	nop                                              ; $708e: $00
	ld   a, [bc]                                     ; $708f: $0a
	ld   bc, $dd05                                   ; $7090: $01 $05 $dd
	and  c                                           ; $7093: $a1
	ld   [hl], l                                     ; $7094: $75
	ld   d, d                                        ; $7095: $52
	sbc  c                                           ; $7096: $99
	halt                                             ; $7097: $76
	ld   h, c                                        ; $7098: $61
	sbc  e                                           ; $7099: $9b
	and  b                                           ; $709a: $a0
	dec  c                                           ; $709b: $0d
	and  e                                           ; $709c: $a3
	and  l                                           ; $709d: $a5
	db   $ec                                         ; $709e: $ec
	cp   d                                           ; $709f: $ba
	ld   a, c                                        ; $70a0: $79
	ld   [bc], a                                     ; $70a1: $02
	sub  l                                           ; $70a2: $95
	sub  a                                           ; $70a3: $97
	sbc  d                                           ; $70a4: $9a
	sbc  d                                           ; $70a5: $9a
	ld   a, [hl]                                     ; $70a6: $7e
	dec  c                                           ; $70a7: $0d
	or   e                                           ; $70a8: $b3
	ei                                               ; $70a9: $fb
	ldh  [c], a                                      ; $70aa: $e2
	xor  e                                           ; $70ab: $ab
	ei                                               ; $70ac: $fb
	pop  de                                          ; $70ad: $d1
	ei                                               ; $70ae: $fb
	ld   [hl], l                                     ; $70af: $75
	ld   h, a                                        ; $70b0: $67
	sbc  a                                           ; $70b1: $9f
	dec  c                                           ; $70b2: $0d
	nop                                              ; $70b3: $00
	ld   a, [bc]                                     ; $70b4: $0a
	ld   bc, $a5a3                                   ; $70b5: $01 $a3 $a5
	db   $ec                                         ; $70b8: $ec
	cp   d                                           ; $70b9: $ba
	ld   a, c                                        ; $70ba: $79
	ret  nz                                          ; $70bb: $c0

	call nz, $75c2                                   ; $70bc: $c4 $c2 $75
	ld   e, e                                        ; $70bf: $5b
	sbc  d                                           ; $70c0: $9a
	ld   a, [hl]                                     ; $70c1: $7e
	dec  c                                           ; $70c2: $0d
	inc  bc                                          ; $70c3: $03
	ld   c, [hl]                                     ; $70c4: $4e
	ld   l, a                                        ; $70c5: $6f
	ld   [hl], l                                     ; $70c6: $75
	ld   h, a                                        ; $70c7: $67
	sbc  a                                           ; $70c8: $9f
	dec  c                                           ; $70c9: $0d
	nop                                              ; $70ca: $00
	ld   a, [bc]                                     ; $70cb: $0a
	ld   a, [de]                                     ; $70cc: $1a
	rlca                                             ; $70cd: $07
	rlca                                             ; $70ce: $07
	ld   h, d                                        ; $70cf: $62
	inc  bc                                          ; $70d0: $03
	ld   [bc], a                                     ; $70d1: $02
	inc  b                                           ; $70d2: $04
	ld   bc, $2000                                   ; $70d3: $01 $00 $20
	nop                                              ; $70d6: $00
	rlca                                             ; $70d7: $07
	adc  c                                           ; $70d8: $89
	inc  bc                                          ; $70d9: $03
	ld   [bc], a                                     ; $70da: $02
	inc  b                                           ; $70db: $04
	ld   bc, $2001                                   ; $70dc: $01 $01 $20
	nop                                              ; $70df: $00
	rlca                                             ; $70e0: $07
	cp   e                                           ; $70e1: $bb
	inc  bc                                          ; $70e2: $03
	ld   [bc], a                                     ; $70e3: $02
	inc  b                                           ; $70e4: $04
	ld   bc, $2002                                   ; $70e5: $01 $02 $20
	nop                                              ; $70e8: $00
	inc  e                                           ; $70e9: $1c
	inc  b                                           ; $70ea: $04
	ld   bc, $0101                                   ; $70eb: $01 $01 $01
	ld   d, b                                        ; $70ee: $50
	sbc  [hl]                                        ; $70ef: $9e
	ld   l, a                                        ; $70f0: $6f
	ld   d, d                                        ; $70f1: $52
	ld   [bc], a                                     ; $70f2: $02
	inc  de                                          ; $70f3: $13
	ld   l, a                                        ; $70f4: $6f
	sub  c                                           ; $70f5: $91
	and  c                                           ; $70f6: $a1
	sbc  [hl]                                        ; $70f7: $9e
	dec  c                                           ; $70f8: $0d
	ld   d, h                                        ; $70f9: $54
	ld   h, d                                        ; $70fa: $62
	ld   d, d                                        ; $70fb: $52
	ld   l, l                                        ; $70fc: $6d
	ld   a, [$6f0d]                                  ; $70fd: $fa $0d $6f
	ld   d, d                                        ; $7100: $52
	ld   [bc], a                                     ; $7101: $02
	inc  de                                          ; $7102: $13
	ld   l, a                                        ; $7103: $6f
	sub  c                                           ; $7104: $91
	and  c                                           ; $7105: $a1
	ld   a, h                                        ; $7106: $7c
	adc  h                                           ; $7107: $8c
	ld   e, a                                        ; $7108: $5f
	ei                                               ; $7109: $fb
	ld   a, [$000d]                                  ; $710a: $fa $0d $00
	ld   a, [bc]                                     ; $710d: $0a
	inc  bc                                          ; $710e: $03
	nop                                              ; $710f: $00
	inc  e                                           ; $7110: $1c
	inc  b                                           ; $7111: $04
	ld   b, $06                                      ; $7112: $06 $06
	ld   bc, $ff50                                   ; $7114: $01 $50 $ff
	rst  $38                                         ; $7117: $ff
	ret  nz                                          ; $7118: $c0

	call nz, Call_042_63c2                           ; $7119: $c4 $c2 $63
	sbc  d                                           ; $711c: $9a
	ld   l, a                                        ; $711d: $6f
	sub  c                                           ; $711e: $91
	ld   [hl], c                                     ; $711f: $71
	ld   l, l                                        ; $7120: $6d
	rst  $38                                         ; $7121: $ff
	rst  $38                                         ; $7122: $ff
	dec  c                                           ; $7123: $0d
	nop                                              ; $7124: $00
	inc  e                                           ; $7125: $1c
	inc  b                                           ; $7126: $04
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	ld   bc, $526f                                   ; $7129: $01 $6f $52
	ld   [bc], a                                     ; $712c: $02
	inc  de                                          ; $712d: $13
	ld   l, a                                        ; $712e: $6f
	sub  c                                           ; $712f: $91
	and  c                                           ; $7130: $a1
	ld   a, h                                        ; $7131: $7c
	ld   e, c                                        ; $7132: $59
	ld   l, a                                        ; $7133: $6f
	ld   l, [hl]                                     ; $7134: $6e
	sub  [hl]                                        ; $7135: $96
	sbc  a                                           ; $7136: $9f
	dec  c                                           ; $7137: $0d
	nop                                              ; $7138: $00
	ld   a, [bc]                                     ; $7139: $0a
	dec  c                                           ; $713a: $0d
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	rrca                                             ; $713d: $0f
	nop                                              ; $713e: $00
	ld   bc, $0003                                   ; $713f: $01 $03 $00
	inc  e                                           ; $7142: $1c
	inc  b                                           ; $7143: $04
	rlca                                             ; $7144: $07
	rlca                                             ; $7145: $07
	ld   bc, $ffff                                   ; $7146: $01 $ff $ff
	ld   l, a                                        ; $7149: $6f
	ld   d, d                                        ; $714a: $52
	ld   a, c                                        ; $714b: $79
	ld   d, d                                        ; $714c: $52
	ld   l, a                                        ; $714d: $6f
	sub  c                                           ; $714e: $91
	and  c                                           ; $714f: $a1
	rst  $38                                         ; $7150: $ff
	rst  $38                                         ; $7151: $ff
	dec  c                                           ; $7152: $0d
	sub  b                                           ; $7153: $90
	ld   [hl], c                                     ; $7154: $71
	halt                                             ; $7155: $76
	ld   d, h                                        ; $7156: $54
	ld   h, d                                        ; $7157: $62
	ld   d, d                                        ; $7158: $52
	ld   [hl], h                                     ; $7159: $74
	ld   e, l                                        ; $715a: $5d
	sbc  d                                           ; $715b: $9a
	ld   a, b                                        ; $715c: $78
	ld   d, d                                        ; $715d: $52
	halt                                             ; $715e: $76
	dec  c                                           ; $715f: $0d
	or   e                                           ; $7160: $b3
	ei                                               ; $7161: $fb
	ldh  [c], a                                      ; $7162: $e2
	ld   a, c                                        ; $7163: $79
	ld   a, b                                        ; $7164: $78
	sub  a                                           ; $7165: $97
	ld   a, b                                        ; $7166: $78
	ld   d, d                                        ; $7167: $52
	sub  [hl]                                        ; $7168: $96
	rst  $38                                         ; $7169: $ff
	rst  $38                                         ; $716a: $ff
	dec  c                                           ; $716b: $0d
	nop                                              ; $716c: $00
	ld   a, [bc]                                     ; $716d: $0a
	inc  bc                                          ; $716e: $03
	nop                                              ; $716f: $00
	ld   c, $7b                                      ; $7170: $0e $7b
	inc  e                                           ; $7172: $1c
	add  hl, bc                                      ; $7173: $09
	ld   [bc], a                                     ; $7174: $02
	ld   [bc], a                                     ; $7175: $02
	ld   [bc], a                                     ; $7176: $02
	ld   bc, $5092                                   ; $7177: $01 $92 $50
	sbc  [hl]                                        ; $717a: $9e
	sub  [hl]                                        ; $717b: $96
	ld   e, l                                        ; $717c: $5d
	ld   e, e                                        ; $717d: $5b
	ld   l, l                                        ; $717e: $6d
	ld   a, e                                        ; $717f: $7b
	sbc  a                                           ; $7180: $9f
	dec  c                                           ; $7181: $0d
	ld   h, c                                        ; $7182: $61
	ld   h, c                                        ; $7183: $61
	ld   a, l                                        ; $7184: $7d
	inc  bc                                          ; $7185: $03
	xor  b                                           ; $7186: $a8
	dec  b                                           ; $7187: $05
	rst  $38                                         ; $7188: $ff
	inc  bc                                          ; $7189: $03
	ld   l, l                                        ; $718a: $6d
	dec  b                                           ; $718b: $05
	add  hl, de                                      ; $718c: $19
	ld   a, h                                        ; $718d: $7c
	dec  b                                           ; $718e: $05
	add  hl, de                                      ; $718f: $19
	inc  bc                                          ; $7190: $03
	and  h                                           ; $7191: $a4
	inc  b                                           ; $7192: $04
	ld   a, d                                        ; $7193: $7a
	ld   l, [hl]                                     ; $7194: $6e
	sbc  a                                           ; $7195: $9f
	dec  c                                           ; $7196: $0d
	nop                                              ; $7197: $00
	ld   a, [bc]                                     ; $7198: $0a
	ld   bc, $6161                                   ; $7199: $01 $61 $61
	ld   [hl], l                                     ; $719c: $75
	ld   a, l                                        ; $719d: $7d
	sbc  [hl]                                        ; $719e: $9e
	ld   [bc], a                                     ; $719f: $02
	jr   c, jr_042_71a6                              ; $71a0: $38 $04

	ld   d, d                                        ; $71a2: $52
	ld   a, c                                        ; $71a3: $79
	inc  bc                                          ; $71a4: $03
	cp   c                                           ; $71a5: $b9

jr_042_71a6:
	ld   [hl], c                                     ; $71a6: $71
	ld   [hl], h                                     ; $71a7: $74
	dec  c                                           ; $71a8: $0d
	ld   b, $a5                                      ; $71a9: $06 $a5
	ld   b, $a6                                      ; $71ab: $06 $a6
	inc  bc                                          ; $71ad: $03
	xor  b                                           ; $71ae: $a8
	dec  b                                           ; $71af: $05
	rst  $38                                         ; $71b0: $ff
	and  b                                           ; $71b1: $a0
	ld   h, a                                        ; $71b2: $67
	sbc  c                                           ; $71b3: $99
	ld   h, c                                        ; $71b4: $61
	halt                                             ; $71b5: $76
	ld   e, d                                        ; $71b6: $5a
	dec  c                                           ; $71b7: $0d
	ld   [hl], l                                     ; $71b8: $75
	ld   e, e                                        ; $71b9: $5b
	sbc  c                                           ; $71ba: $99
	and  c                                           ; $71bb: $a1
	ld   l, [hl]                                     ; $71bc: $6e
	sbc  a                                           ; $71bd: $9f
	dec  c                                           ; $71be: $0d
	nop                                              ; $71bf: $00
	ld   a, [bc]                                     ; $71c0: $0a
	ld   bc, $9a6b                                   ; $71c1: $01 $6b $9a
	ld   [hl], l                                     ; $71c4: $75
	ld   a, l                                        ; $71c5: $7d
	sbc  [hl]                                        ; $71c6: $9e
	ld   h, e                                        ; $71c7: $63
	ld   [hl], c                                     ; $71c8: $71
	ld   l, e                                        ; $71c9: $6b
	ld   e, l                                        ; $71ca: $5d
	xor  [hl]                                        ; $71cb: $ae
	ldh  [$7c], a                                    ; $71cc: $e0 $7c
	dec  c                                           ; $71ce: $0d
	inc  bc                                          ; $71cf: $03
	cp   c                                           ; $71d0: $b9
	sbc  c                                           ; $71d1: $99
	ld   [bc], a                                     ; $71d2: $02
	jr   c, @+$06                                    ; $71d3: $38 $04

	ld   d, d                                        ; $71d5: $52
	and  b                                           ; $71d6: $a0
	inc  bc                                          ; $71d7: $03
	ld   sp, $75a1                                   ; $71d8: $31 $a1 $75
	sub  b                                           ; $71db: $90
	sub  a                                           ; $71dc: $97
	ld   e, b                                        ; $71dd: $58
	ld   d, h                                        ; $71de: $54
	sbc  a                                           ; $71df: $9f
	dec  c                                           ; $71e0: $0d
	nop                                              ; $71e1: $00
	ld   a, [bc]                                     ; $71e2: $0a
	ld   bc, $9a6b                                   ; $71e3: $01 $6b $9a
	ld   h, [hl]                                     ; $71e6: $66
	sub  c                                           ; $71e7: $91
	sbc  [hl]                                        ; $71e8: $9e
	inc  bc                                          ; $71e9: $03
	ld   sp, $75a1                                   ; $71ea: $31 $a1 $75
	ld   e, l                                        ; $71ed: $5d
	sbc  d                                           ; $71ee: $9a
	sbc  a                                           ; $71ef: $9f
	dec  c                                           ; $71f0: $0d
	nop                                              ; $71f1: $00
	ld   a, [bc]                                     ; $71f2: $0a
	dec  c                                           ; $71f3: $0d
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	rrca                                             ; $71f6: $0f
	nop                                              ; $71f7: $00
	ld   bc, $1c28                                   ; $71f8: $01 $28 $1c
	add  hl, bc                                      ; $71fb: $09
	ld   [bc], a                                     ; $71fc: $02
	ld   [bc], a                                     ; $71fd: $02
	ld   bc, $3802                                   ; $71fe: $01 $02 $38
	inc  b                                           ; $7201: $04
	ld   d, d                                        ; $7202: $52
	ld   e, d                                        ; $7203: $5a
	ld   [bc], a                                     ; $7204: $02
	add  e                                           ; $7205: $83
	adc  h                                           ; $7206: $8c
	ld   [hl], c                                     ; $7207: $71
	ld   l, l                                        ; $7208: $6d
	sub  [hl]                                        ; $7209: $96
	ld   d, h                                        ; $720a: $54
	ld   l, [hl]                                     ; $720b: $6e
	ld   a, b                                        ; $720c: $78
	sbc  a                                           ; $720d: $9f
	dec  c                                           ; $720e: $0d
	ld   h, [hl]                                     ; $720f: $66
	sub  c                                           ; $7210: $91
	sbc  [hl]                                        ; $7211: $9e
	inc  bc                                          ; $7212: $03
	ld   l, b                                        ; $7213: $68
	ld   a, l                                        ; $7214: $7d
	inc  b                                           ; $7215: $04
	dec  b                                           ; $7216: $05
	inc  bc                                          ; $7217: $03
	xor  b                                           ; $7218: $a8
	ld   [bc], a                                     ; $7219: $02
	ld   a, [de]                                     ; $721a: $1a
	inc  bc                                          ; $721b: $03
	ld   l, e                                        ; $721c: $6b
	and  b                                           ; $721d: $a0
	dec  c                                           ; $721e: $0d
	ld   [bc], a                                     ; $721f: $02
	add  e                                           ; $7220: $83
	adc  a                                           ; $7221: $8f
	ld   [hl], h                                     ; $7222: $74
	ld   e, l                                        ; $7223: $5d
	sbc  d                                           ; $7224: $9a
	sbc  a                                           ; $7225: $9f
	dec  c                                           ; $7226: $0d
	nop                                              ; $7227: $00
	ld   a, [bc]                                     ; $7228: $0a
	jr   jr_042_722d                                 ; $7229: $18 $02

	nop                                              ; $722b: $00
	dec  b                                           ; $722c: $05

jr_042_722d:
	ld   h, a                                        ; $722d: $67
	dec  b                                           ; $722e: $05
	dec  a                                           ; $722f: $3d
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
	inc  bc                                          ; $7232: $03
	adc  e                                           ; $7233: $8b
	ld   [bc], a                                     ; $7234: $02
	sub  [hl]                                        ; $7235: $96
	ld   [bc], a                                     ; $7236: $02
	ld   e, b                                        ; $7237: $58
	nop                                              ; $7238: $00
	ld   bc, $1107                                   ; $7239: $01 $07 $11
	dec  b                                           ; $723c: $05
	ld   [bc], a                                     ; $723d: $02
	ld   [bc], a                                     ; $723e: $02
	ld   bc, $2000                                   ; $723f: $01 $00 $20
	nop                                              ; $7242: $00
	rlca                                             ; $7243: $07
	push bc                                          ; $7244: $c5
	inc  b                                           ; $7245: $04
	ld   [bc], a                                     ; $7246: $02
	ld   [bc], a                                     ; $7247: $02
	ld   bc, $2001                                   ; $7248: $01 $01 $20
	nop                                              ; $724b: $00
	inc  e                                           ; $724c: $1c
	add  hl, bc                                      ; $724d: $09
	ld   [bc], a                                     ; $724e: $02
	ld   [bc], a                                     ; $724f: $02
	ld   bc, $1a02                                   ; $7250: $01 $02 $1a
	inc  bc                                          ; $7253: $03
	ld   l, e                                        ; $7254: $6b
	sub  b                                           ; $7255: $90
	ld   [bc], a                                     ; $7256: $02
	add  e                                           ; $7257: $83
	adc  h                                           ; $7258: $8c
	ld   [hl], c                                     ; $7259: $71
	ld   l, l                                        ; $725a: $6d
	sub  [hl]                                        ; $725b: $96
	ld   d, h                                        ; $725c: $54
	ld   l, [hl]                                     ; $725d: $6e
	ld   a, b                                        ; $725e: $78
	sbc  a                                           ; $725f: $9f
	dec  c                                           ; $7260: $0d
	ld   l, e                                        ; $7261: $6b
	sbc  d                                           ; $7262: $9a
	ld   h, [hl]                                     ; $7263: $66
	sub  c                                           ; $7264: $91
	sbc  [hl]                                        ; $7265: $9e
	ld   b, $a5                                      ; $7266: $06 $a5
	ld   b, $a6                                      ; $7268: $06 $a6
	inc  bc                                          ; $726a: $03
	xor  b                                           ; $726b: $a8
	dec  b                                           ; $726c: $05
	rst  $38                                         ; $726d: $ff
	ld   l, [hl]                                     ; $726e: $6e
	ld   e, c                                        ; $726f: $59
	sub  a                                           ; $7270: $97
	halt                                             ; $7271: $76
	dec  c                                           ; $7272: $0d
	ld   d, d                                        ; $7273: $52
	ld   [hl], c                                     ; $7274: $71
	ld   [hl], h                                     ; $7275: $74
	inc  b                                           ; $7276: $04
	xor  $04                                         ; $7277: $ee $04
	inc  h                                           ; $7279: $24
	ld   h, a                                        ; $727a: $67
	sbc  c                                           ; $727b: $99
	ld   a, b                                        ; $727c: $78
	sub  [hl]                                        ; $727d: $96
	sbc  a                                           ; $727e: $9f
	dec  c                                           ; $727f: $0d
	nop                                              ; $7280: $00
	ld   a, [bc]                                     ; $7281: $0a
	ld   bc, $7d75                                   ; $7282: $01 $75 $7d
	sbc  [hl]                                        ; $7285: $9e
	dec  b                                           ; $7286: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7287: $cf
	adc  a                                           ; $7288: $8f
	ld   a, [$000d]                                  ; $7289: $fa $0d $00
	ld   a, [bc]                                     ; $728c: $0a
	dec  c                                           ; $728d: $0d
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	rrca                                             ; $7290: $0f
	nop                                              ; $7291: $00
	ld   bc, $0727                                   ; $7292: $01 $27 $07
	ld   b, $5a                                      ; $7295: $06 $5a
	dec  b                                           ; $7297: $05
	inc  e                                           ; $7298: $1c
	add  hl, bc                                      ; $7299: $09
	ld   [bc], a                                     ; $729a: $02
	ld   [bc], a                                     ; $729b: $02
	ld   bc, $1a02                                   ; $729c: $01 $02 $1a
	inc  bc                                          ; $729f: $03
	ld   l, e                                        ; $72a0: $6b
	sub  b                                           ; $72a1: $90
	ld   [bc], a                                     ; $72a2: $02
	add  e                                           ; $72a3: $83
	adc  h                                           ; $72a4: $8c
	ld   [hl], c                                     ; $72a5: $71
	ld   l, l                                        ; $72a6: $6d
	sub  [hl]                                        ; $72a7: $96
	ld   d, h                                        ; $72a8: $54
	ld   l, [hl]                                     ; $72a9: $6e
	ld   a, b                                        ; $72aa: $78
	sbc  a                                           ; $72ab: $9f
	dec  c                                           ; $72ac: $0d
	ld   l, e                                        ; $72ad: $6b
	sbc  d                                           ; $72ae: $9a
	ld   h, [hl]                                     ; $72af: $66
	sub  c                                           ; $72b0: $91
	sbc  [hl]                                        ; $72b1: $9e
	ld   b, $a5                                      ; $72b2: $06 $a5
	ld   b, $a6                                      ; $72b4: $06 $a6
	inc  bc                                          ; $72b6: $03
	xor  b                                           ; $72b7: $a8
	dec  b                                           ; $72b8: $05
	rst  $38                                         ; $72b9: $ff
	ld   l, [hl]                                     ; $72ba: $6e
	ld   e, c                                        ; $72bb: $59
	sub  a                                           ; $72bc: $97
	halt                                             ; $72bd: $76
	dec  c                                           ; $72be: $0d
	ld   d, d                                        ; $72bf: $52
	ld   [hl], c                                     ; $72c0: $71
	ld   [hl], h                                     ; $72c1: $74
	inc  b                                           ; $72c2: $04
	xor  $04                                         ; $72c3: $ee $04
	inc  h                                           ; $72c5: $24
	ld   h, a                                        ; $72c6: $67
	sbc  c                                           ; $72c7: $99
	ld   a, b                                        ; $72c8: $78
	sub  [hl]                                        ; $72c9: $96
	sbc  a                                           ; $72ca: $9f
	dec  c                                           ; $72cb: $0d
	nop                                              ; $72cc: $00
	ld   a, [bc]                                     ; $72cd: $0a
	ld   bc, $7d75                                   ; $72ce: $01 $75 $7d
	sbc  [hl]                                        ; $72d1: $9e
	dec  b                                           ; $72d2: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72d3: $cf
	adc  a                                           ; $72d4: $8f
	ld   a, [$000d]                                  ; $72d5: $fa $0d $00
	ld   a, [bc]                                     ; $72d8: $0a
	dec  c                                           ; $72d9: $0d
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	rrca                                             ; $72dc: $0f
	nop                                              ; $72dd: $00
	ld   bc, $0827                                   ; $72de: $01 $27 $08
	rlca                                             ; $72e1: $07
	ld   h, e                                        ; $72e2: $63
	dec  b                                           ; $72e3: $05
	ld   [bc], a                                     ; $72e4: $02
	inc  b                                           ; $72e5: $04
	nop                                              ; $72e6: $00
	ld   b, $81                                      ; $72e7: $06 $81
	dec  b                                           ; $72e9: $05
	inc  e                                           ; $72ea: $1c
	add  hl, bc                                      ; $72eb: $09
	ld   bc, $0101                                   ; $72ec: $01 $01 $01
	sub  [hl]                                        ; $72ef: $96
	ld   h, l                                        ; $72f0: $65
	sbc  a                                           ; $72f1: $9f
	dec  c                                           ; $72f2: $0d
	ld   a, b                                        ; $72f3: $78
	ld   e, c                                        ; $72f4: $59
	ld   a, b                                        ; $72f5: $78
	ld   e, c                                        ; $72f6: $59
	ld   a, h                                        ; $72f7: $7c
	inc  bc                                          ; $72f8: $03
	xor  b                                           ; $72f9: $a8
	ld   d, d                                        ; $72fa: $52
	add  h                                           ; $72fb: $84
	sbc  b                                           ; $72fc: $98
	ld   l, [hl]                                     ; $72fd: $6e
	ld   [hl], c                                     ; $72fe: $71
	ld   l, l                                        ; $72ff: $6d
	ld   l, h                                        ; $7300: $6c
	sbc  a                                           ; $7301: $9f
	dec  c                                           ; $7302: $0d
	nop                                              ; $7303: $00
	ld   a, [bc]                                     ; $7304: $0a
	ld   b, $ae                                      ; $7305: $06 $ae
	dec  b                                           ; $7307: $05
	inc  e                                           ; $7308: $1c
	add  hl, bc                                      ; $7309: $09
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	ld   bc, $2803                                   ; $730c: $01 $03 $28
	inc  b                                           ; $730f: $04
	ld   c, b                                        ; $7310: $48
	ld   l, [hl]                                     ; $7311: $6e
	ld   [hl], c                                     ; $7312: $71
	ld   l, l                                        ; $7313: $6d
	ld   a, b                                        ; $7314: $78
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	dec  c                                           ; $7317: $0d
	ld   [bc], a                                     ; $7318: $02
	jr   c, jr_042_731f                              ; $7319: $38 $04

	ld   d, d                                        ; $731b: $52
	ld   [hl], l                                     ; $731c: $75
	ld   a, h                                        ; $731d: $7c
	inc  bc                                          ; $731e: $03

jr_042_731f:
	xor  b                                           ; $731f: $a8
	dec  b                                           ; $7320: $05
	rst  $38                                         ; $7321: $ff
	ld   a, l                                        ; $7322: $7d
	dec  b                                           ; $7323: $05
	pop  de                                          ; $7324: $d1
	ld   [hl], c                                     ; $7325: $71
	ld   l, l                                        ; $7326: $6d
	sub  [hl]                                        ; $7327: $96
	sbc  b                                           ; $7328: $98
	dec  c                                           ; $7329: $0d
	adc  [hl]                                        ; $732a: $8e
	ld   l, b                                        ; $732b: $68
	ld   e, c                                        ; $732c: $59
	ld   h, l                                        ; $732d: $65
	ld   d, d                                        ; $732e: $52
	ld   l, [hl]                                     ; $732f: $6e
	sbc  e                                           ; $7330: $9b
	ld   sp, hl                                      ; $7331: $f9
	dec  c                                           ; $7332: $0d
	nop                                              ; $7333: $00
	ld   a, [bc]                                     ; $7334: $0a
	ld   bc, $6176                                   ; $7335: $01 $76 $61
	sbc  e                                           ; $7338: $9b
	ld   [hl], l                                     ; $7339: $75
	sbc  [hl]                                        ; $733a: $9e
	adc  h                                           ; $733b: $8c
	ld   l, [hl]                                     ; $733c: $6e
	inc  bc                                          ; $733d: $03
	ld   l, l                                        ; $733e: $6d
	dec  b                                           ; $733f: $05
	add  hl, de                                      ; $7340: $19
	and  b                                           ; $7341: $a0
	dec  c                                           ; $7342: $0d
	ld   [bc], a                                     ; $7343: $02
	ei                                               ; $7344: $fb
	ld   e, a                                        ; $7345: $5f
	sbc  c                                           ; $7346: $99
	ld   e, c                                        ; $7347: $59
	ld   d, d                                        ; $7348: $52
	ld   sp, hl                                      ; $7349: $f9
	dec  c                                           ; $734a: $0d
	nop                                              ; $734b: $00
	ld   a, [bc]                                     ; $734c: $0a
	jr   jr_042_7351                                 ; $734d: $18 $02

	nop                                              ; $734f: $00
	adc  h                                           ; $7350: $8c

jr_042_7351:
	ld   l, [hl]                                     ; $7351: $6e
	sub  d                                           ; $7352: $92
	sbc  c                                           ; $7353: $99
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	sub  b                                           ; $7356: $90
	ld   d, h                                        ; $7357: $54
	sub  d                                           ; $7358: $92
	adc  a                                           ; $7359: $8f
	sbc  c                                           ; $735a: $99
	nop                                              ; $735b: $00
	ld   bc, $e807                                   ; $735c: $01 $07 $e8
	dec  b                                           ; $735f: $05
	ld   [bc], a                                     ; $7360: $02
	ld   [bc], a                                     ; $7361: $02
	ld   bc, $2000                                   ; $7362: $01 $00 $20
	nop                                              ; $7365: $00
	rlca                                             ; $7366: $07
	ld   [hl], $06                                   ; $7367: $36 $06
	ld   [bc], a                                     ; $7369: $02
	ld   [bc], a                                     ; $736a: $02
	ld   bc, $2001                                   ; $736b: $01 $01 $20
	nop                                              ; $736e: $00
	inc  e                                           ; $736f: $1c
	add  hl, bc                                      ; $7370: $09
	nop                                              ; $7371: $00
	nop                                              ; $7372: $00
	ld   bc, $546b                                   ; $7373: $01 $6b $54
	ld   e, c                                        ; $7376: $59
	sbc  [hl]                                        ; $7377: $9e
	ld   l, e                                        ; $7378: $6b
	sbc  d                                           ; $7379: $9a
	ld   h, [hl]                                     ; $737a: $66
	sub  c                                           ; $737b: $91
	inc  bc                                          ; $737c: $03
	ld   l, b                                        ; $737d: $68
	ld   a, c                                        ; $737e: $79
	inc  bc                                          ; $737f: $03
	cp   c                                           ; $7380: $b9
	sbc  c                                           ; $7381: $99
	dec  c                                           ; $7382: $0d
	ld   [bc], a                                     ; $7383: $02
	jr   c, @+$06                                    ; $7384: $38 $04

	ld   d, d                                        ; $7386: $52
	and  b                                           ; $7387: $a0
	inc  bc                                          ; $7388: $03
	ld   sp, $75a1                                   ; $7389: $31 $a1 $75
	ld   e, l                                        ; $738c: $5d
	sbc  d                                           ; $738d: $9a
	sbc  a                                           ; $738e: $9f
	dec  c                                           ; $738f: $0d
	nop                                              ; $7390: $00
	ld   a, [bc]                                     ; $7391: $0a
	dec  c                                           ; $7392: $0d
	nop                                              ; $7393: $00
	nop                                              ; $7394: $00
	rrca                                             ; $7395: $0f
	nop                                              ; $7396: $00
	ld   bc, $7206                                   ; $7397: $01 $06 $72
	inc  b                                           ; $739a: $04
	jr   jr_042_739f                                 ; $739b: $18 $02

	nop                                              ; $739d: $00
	adc  h                                           ; $739e: $8c

jr_042_739f:
	ld   l, [hl]                                     ; $739f: $6e
	sub  d                                           ; $73a0: $92
	sbc  c                                           ; $73a1: $99
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	sub  b                                           ; $73a4: $90
	ld   d, h                                        ; $73a5: $54
	sub  d                                           ; $73a6: $92
	adc  a                                           ; $73a7: $8f
	sbc  c                                           ; $73a8: $99
	nop                                              ; $73a9: $00
	ld   bc, $e807                                   ; $73aa: $01 $07 $e8
	dec  b                                           ; $73ad: $05
	ld   [bc], a                                     ; $73ae: $02
	ld   [bc], a                                     ; $73af: $02
	ld   bc, $2000                                   ; $73b0: $01 $00 $20
	nop                                              ; $73b3: $00
	rlca                                             ; $73b4: $07
	ld   [hl], $06                                   ; $73b5: $36 $06
	ld   [bc], a                                     ; $73b7: $02
	ld   [bc], a                                     ; $73b8: $02
	ld   bc, $2001                                   ; $73b9: $01 $01 $20
	nop                                              ; $73bc: $00
	inc  e                                           ; $73bd: $1c
	add  hl, bc                                      ; $73be: $09
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	ld   bc, $599d                                   ; $73c1: $01 $9d $59
	ld   [hl], c                                     ; $73c4: $71
	ld   l, l                                        ; $73c5: $6d
	sbc  a                                           ; $73c6: $9f
	ld   l, e                                        ; $73c7: $6b
	sbc  d                                           ; $73c8: $9a
	ld   h, [hl]                                     ; $73c9: $66
	sub  c                                           ; $73ca: $91
	sbc  [hl]                                        ; $73cb: $9e
	dec  c                                           ; $73cc: $0d
	adc  h                                           ; $73cd: $8c
	ld   l, l                                        ; $73ce: $6d
	inc  bc                                          ; $73cf: $03
	xor  b                                           ; $73d0: $a8
	dec  b                                           ; $73d1: $05
	rst  $38                                         ; $73d2: $ff
	inc  bc                                          ; $73d3: $03
	ld   l, l                                        ; $73d4: $6d
	dec  b                                           ; $73d5: $05
	add  hl, de                                      ; $73d6: $19
	ld   e, d                                        ; $73d7: $5a
	ld   h, l                                        ; $73d8: $65
	ld   l, l                                        ; $73d9: $6d
	ld   e, l                                        ; $73da: $5d
	ld   a, b                                        ; $73db: $78
	ld   [hl], c                                     ; $73dc: $71
	ld   l, l                                        ; $73dd: $6d
	sub  a                                           ; $73de: $97
	dec  c                                           ; $73df: $0d
	ld   d, d                                        ; $73e0: $52
	ld   [hl], d                                     ; $73e1: $72
	ld   [hl], l                                     ; $73e2: $75
	sub  b                                           ; $73e3: $90
	dec  b                                           ; $73e4: $05
	db   $10                                         ; $73e5: $10
	sbc  c                                           ; $73e6: $99
	halt                                             ; $73e7: $76
	ld   d, d                                        ; $73e8: $52
	ld   d, d                                        ; $73e9: $52
	rst  $38                                         ; $73ea: $ff
	rst  $38                                         ; $73eb: $ff
	dec  c                                           ; $73ec: $0d
	nop                                              ; $73ed: $00
	ld   a, [bc]                                     ; $73ee: $0a
	ld   bc, $7305                                   ; $73ef: $01 $05 $73
	ld   [hl], l                                     ; $73f2: $75
	sub  [hl]                                        ; $73f3: $96
	ld   e, a                                        ; $73f4: $5f
	sbc  d                                           ; $73f5: $9a
	ld   a, [hl]                                     ; $73f6: $7e
	dec  b                                           ; $73f7: $05
	ld   a, [bc]                                     ; $73f8: $0a
	ld   a, c                                        ; $73f9: $79
	ld   a, b                                        ; $73fa: $78
	sbc  c                                           ; $73fb: $99
	sub  [hl]                                        ; $73fc: $96
	sbc  a                                           ; $73fd: $9f
	dec  c                                           ; $73fe: $0d
	ld   l, e                                        ; $73ff: $6b
	sbc  d                                           ; $7400: $9a
	ld   h, [hl]                                     ; $7401: $66
	sub  c                                           ; $7402: $91
	sbc  a                                           ; $7403: $9f
	dec  c                                           ; $7404: $0d
	nop                                              ; $7405: $00
	ld   a, [bc]                                     ; $7406: $0a
	dec  c                                           ; $7407: $0d
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	rrca                                             ; $740a: $0f
	nop                                              ; $740b: $00
	ld   bc, $0003                                   ; $740c: $01 $03 $00
	nop                                              ; $740f: $00
	ld   c, $01                                      ; $7410: $0e $01
	rrca                                             ; $7412: $0f
	nop                                              ; $7413: $00
	ld   bc, $0102                                   ; $7414: $01 $02 $01
	sub  [hl]                                        ; $7417: $96
	ld   h, l                                        ; $7418: $65
	sbc  [hl]                                        ; $7419: $9e
	ld   [bc], a                                     ; $741a: $02
	and  l                                           ; $741b: $a5
	inc  b                                           ; $741c: $04
	xor  d                                           ; $741d: $aa
	ld   e, c                                        ; $741e: $59
	sub  a                                           ; $741f: $97
	ld   e, d                                        ; $7420: $5a
	and  c                                           ; $7421: $a1
	ld   a, [hl]                                     ; $7422: $7e
	sbc  c                                           ; $7423: $99
	ld   l, h                                        ; $7424: $6c
	ld   a, [$630d]                                  ; $7425: $fa $0d $63
	ld   d, b                                        ; $7428: $50
	inc  b                                           ; $7429: $04
	rlca                                             ; $742a: $07
	dec  b                                           ; $742b: $05
	scf                                              ; $742c: $37
	ld   d, [hl]                                     ; $742d: $56
	ld   l, [hl]                                     ; $742e: $6e
	ld   a, [$000d]                                  ; $742f: $fa $0d $00
	ld   a, [bc]                                     ; $7432: $0a
	add  hl, de                                      ; $7433: $19
	dec  b                                           ; $7434: $05
	inc  bc                                          ; $7435: $03
	ld   a, e                                        ; $7436: $7b
	adc  h                                           ; $7437: $8c
	ld   e, e                                        ; $7438: $5b
	and  b                                           ; $7439: $a0
	inc  b                                           ; $743a: $04
	rlca                                             ; $743b: $07
	sbc  c                                           ; $743c: $99
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	cp   b                                           ; $743f: $b8
	push hl                                          ; $7440: $e5
	push bc                                          ; $7441: $c5
	and  b                                           ; $7442: $a0
	inc  b                                           ; $7443: $04
	rlca                                             ; $7444: $07
	sbc  c                                           ; $7445: $99
	nop                                              ; $7446: $00
	ld   bc, $f5d2                                   ; $7447: $01 $d2 $f5
	push bc                                          ; $744a: $c5
	and  b                                           ; $744b: $a0
	ld   a, d                                        ; $744c: $7a
	ld   e, [hl]                                     ; $744d: $5e
	nop                                              ; $744e: $00
	ld   [bc], a                                     ; $744f: $02
	rlca                                             ; $7450: $07
	ld   e, [hl]                                     ; $7451: $5e
	nop                                              ; $7452: $00
	ld   [bc], a                                     ; $7453: $02
	inc  bc                                          ; $7454: $03
	ld   bc, $2000                                   ; $7455: $01 $00 $20
	nop                                              ; $7458: $00
	rlca                                             ; $7459: $07
	sub  d                                           ; $745a: $92
	nop                                              ; $745b: $00
	ld   [bc], a                                     ; $745c: $02
	inc  bc                                          ; $745d: $03
	ld   bc, $2001                                   ; $745e: $01 $01 $20
	nop                                              ; $7461: $00
	rlca                                             ; $7462: $07
	or   e                                           ; $7463: $b3
	nop                                              ; $7464: $00

Jump_042_7465:
	ld   [bc], a                                     ; $7465: $02
	inc  bc                                          ; $7466: $03
	ld   bc, $2002                                   ; $7467: $01 $02 $20
	nop                                              ; $746a: $00
	ld   b, $e9                                      ; $746b: $06 $e9
	nop                                              ; $746d: $00
	rrca                                             ; $746e: $0f
	nop                                              ; $746f: $00
	ld   bc, $8c01                                   ; $7470: $01 $01 $8c
	ld   l, b                                        ; $7473: $68
	ld   a, l                                        ; $7474: $7d
	sbc  [hl]                                        ; $7475: $9e
	ld   a, e                                        ; $7476: $7b
	adc  h                                           ; $7477: $8c
	ld   e, e                                        ; $7478: $5b
	and  b                                           ; $7479: $a0
	inc  b                                           ; $747a: $04
	rlca                                             ; $747b: $07
	ld   [hl], h                                     ; $747c: $74
	halt                                             ; $747d: $76
	dec  c                                           ; $747e: $0d
	rst  $38                                         ; $747f: $ff
	rst  $38                                         ; $7480: $ff
	rst  $38                                         ; $7481: $ff
	rst  $38                                         ; $7482: $ff
	dec  c                                           ; $7483: $0d
	nop                                              ; $7484: $00
	dec  b                                           ; $7485: $05
	ld   b, b                                        ; $7486: $40
	rst  $38                                         ; $7487: $ff
	inc  bc                                          ; $7488: $03
	rst  $38                                         ; $7489: $ff
	ld   bc, $2801                                   ; $748a: $01 $01 $28
	nop                                              ; $748d: $00
	ld   bc, $f9a1                                   ; $748e: $01 $a1 $f9
	db   $10                                         ; $7491: $10
	inc  b                                           ; $7492: $04
	rlca                                             ; $7493: $07
	ld   l, a                                        ; $7494: $6f
	sub  c                                           ; $7495: $91
	pop  bc                                          ; $7496: $c1
	db   $e3                                         ; $7497: $e3
	ld   l, [hl]                                     ; $7498: $6e
	sub  [hl]                                        ; $7499: $96
	rst  $38                                         ; $749a: $ff
	rst  $38                                         ; $749b: $ff
	dec  c                                           ; $749c: $0d
	nop                                              ; $749d: $00
	ld   a, [bc]                                     ; $749e: $0a
	ld   b, $23                                      ; $749f: $06 $23
	nop                                              ; $74a1: $00
	rrca                                             ; $74a2: $0f
	nop                                              ; $74a3: $00
	ld   bc, $8c01                                   ; $74a4: $01 $01 $8c
	ld   l, b                                        ; $74a7: $68
	ld   a, l                                        ; $74a8: $7d
	sbc  [hl]                                        ; $74a9: $9e
	cp   b                                           ; $74aa: $b8
	push hl                                          ; $74ab: $e5
	push bc                                          ; $74ac: $c5
	and  b                                           ; $74ad: $a0
	inc  b                                           ; $74ae: $04
	rlca                                             ; $74af: $07
	ld   [hl], h                                     ; $74b0: $74
	halt                                             ; $74b1: $76
	rst  $38                                         ; $74b2: $ff
	rst  $38                                         ; $74b3: $ff
	dec  c                                           ; $74b4: $0d
	nop                                              ; $74b5: $00
	ld   a, [bc]                                     ; $74b6: $0a
	dec  b                                           ; $74b7: $05
	ld   b, b                                        ; $74b8: $40
	rst  $38                                         ; $74b9: $ff
	inc  bc                                          ; $74ba: $03
	rst  $38                                         ; $74bb: $ff
	ld   bc, $2801                                   ; $74bc: $01 $01 $28
	nop                                              ; $74bf: $00
	ld   b, $0c                                      ; $74c0: $06 $0c
	ld   bc, $000f                                   ; $74c2: $01 $0f $00
	ld   bc, $8c01                                   ; $74c5: $01 $01 $8c
	ld   l, b                                        ; $74c8: $68
	ld   a, l                                        ; $74c9: $7d
	sbc  [hl]                                        ; $74ca: $9e
	jp   nc, $c5f5                                   ; $74cb: $d2 $f5 $c5

	and  b                                           ; $74ce: $a0
	dec  c                                           ; $74cf: $0d
	ld   a, d                                        ; $74d0: $7a
	ld   d, d                                        ; $74d1: $52
	ld   h, [hl]                                     ; $74d2: $66
	sub  c                                           ; $74d3: $91
	ld   e, b                                        ; $74d4: $58
	ld   d, h                                        ; $74d5: $54
	ld   e, c                                        ; $74d6: $59
	rst  $38                                         ; $74d7: $ff
	rst  $38                                         ; $74d8: $ff
	and  c                                           ; $74d9: $a1
	ld   sp, hl                                      ; $74da: $f9
	dec  c                                           ; $74db: $0d
	nop                                              ; $74dc: $00
	dec  b                                           ; $74dd: $05
	ld   b, b                                        ; $74de: $40
	rst  $38                                         ; $74df: $ff
	inc  bc                                          ; $74e0: $03
	rst  $38                                         ; $74e1: $ff
	ld   bc, $2801                                   ; $74e2: $01 $01 $28
	nop                                              ; $74e5: $00
	ld   bc, $fbcf                                   ; $74e6: $01 $cf $fb
	jp   nc, Jump_042_66f5                           ; $74e9: $d2 $f5 $66

	sub  c                                           ; $74ec: $91
	pop  bc                                          ; $74ed: $c1
	db   $e3                                         ; $74ee: $e3
	ld   l, [hl]                                     ; $74ef: $6e
	sub  [hl]                                        ; $74f0: $96
	rst  $38                                         ; $74f1: $ff
	rst  $38                                         ; $74f2: $ff
	dec  c                                           ; $74f3: $0d
	nop                                              ; $74f4: $00
	ld   a, [bc]                                     ; $74f5: $0a
	ld   b, $23                                      ; $74f6: $06 $23
	nop                                              ; $74f8: $00
	rrca                                             ; $74f9: $0f
	nop                                              ; $74fa: $00
	ld   bc, $8c01                                   ; $74fb: $01 $01 $8c
	ld   l, b                                        ; $74fe: $68
	ld   a, l                                        ; $74ff: $7d
	rst  $38                                         ; $7500: $ff
	rst  $38                                         ; $7501: $ff
	dec  c                                           ; $7502: $0d
	ld   [hl], a                                     ; $7503: $77
	ld   d, h                                        ; $7504: $54
	ld   h, l                                        ; $7505: $65
	sub  [hl]                                        ; $7506: $96
	ld   d, h                                        ; $7507: $54
	ld   e, c                                        ; $7508: $59
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	rst  $38                                         ; $750b: $ff
	rst  $38                                         ; $750c: $ff
	dec  c                                           ; $750d: $0d
	nop                                              ; $750e: $00
	ld   a, [bc]                                     ; $750f: $0a
	dec  b                                           ; $7510: $05
	ld   b, b                                        ; $7511: $40
	rst  $38                                         ; $7512: $ff
	inc  bc                                          ; $7513: $03
	rst  $38                                         ; $7514: $ff
	ld   bc, $2801                                   ; $7515: $01 $01 $28
	nop                                              ; $7518: $00
	ld   b, $23                                      ; $7519: $06 $23
	nop                                              ; $751b: $00
	add  hl, de                                      ; $751c: $19
	dec  b                                           ; $751d: $05
	inc  bc                                          ; $751e: $03
	jp   nc, $c7f5                                   ; $751f: $d2 $f5 $c7

	and  h                                           ; $7522: $a4
	and  b                                           ; $7523: $a0
	ld   a, l                                        ; $7524: $7d
	ld   e, l                                        ; $7525: $5d
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	ld   e, l                                        ; $7528: $5d
	ld   [hl], d                                     ; $7529: $72
	ld   h, l                                        ; $752a: $65
	ld   l, l                                        ; $752b: $6d
	or   b                                           ; $752c: $b0
	or   [hl]                                        ; $752d: $b6
	and  l                                           ; $752e: $a5
	nop                                              ; $752f: $00
	ld   bc, $725d                                   ; $7530: $01 $5d $72
	ld   h, l                                        ; $7533: $65
	ld   l, l                                        ; $7534: $6d
	and  b                                           ; $7535: $a0
	ld   a, l                                        ; $7536: $7d
	ld   e, l                                        ; $7537: $5d
	nop                                              ; $7538: $00
	ld   [bc], a                                     ; $7539: $02
	rlca                                             ; $753a: $07
	ld   c, b                                        ; $753b: $48
	ld   bc, $0302                                   ; $753c: $01 $02 $03
	ld   bc, $2000                                   ; $753f: $01 $00 $20
	nop                                              ; $7542: $00
	rlca                                             ; $7543: $07
	ld   a, a                                        ; $7544: $7f
	ld   bc, $0302                                   ; $7545: $01 $02 $03
	ld   bc, $2001                                   ; $7548: $01 $01 $20
	nop                                              ; $754b: $00
	rlca                                             ; $754c: $07
	or   h                                           ; $754d: $b4
	ld   bc, $0302                                   ; $754e: $01 $02 $03
	ld   bc, $2002                                   ; $7551: $01 $02 $20
	nop                                              ; $7554: $00
	ld   b, $d4                                      ; $7555: $06 $d4
	ld   bc, $000f                                   ; $7557: $01 $0f $00
	ld   bc, $0301                                   ; $755a: $01 $01 $03
	ld   l, b                                        ; $755d: $68
	ld   a, c                                        ; $755e: $79
	sbc  [hl]                                        ; $755f: $9e
	jp   nc, $c7f5                                   ; $7560: $d2 $f5 $c7

	and  h                                           ; $7563: $a4
	and  b                                           ; $7564: $a0
	ld   a, l                                        ; $7565: $7d
	ld   d, d                                        ; $7566: $52
	ld   [hl], h                                     ; $7567: $74
	dec  c                                           ; $7568: $0d
	rst  $38                                         ; $7569: $ff
	rst  $38                                         ; $756a: $ff
	rst  $38                                         ; $756b: $ff
	rst  $38                                         ; $756c: $ff
	and  c                                           ; $756d: $a1
	ld   sp, hl                                      ; $756e: $f9
	dec  c                                           ; $756f: $0d
	nop                                              ; $7570: $00
	dec  b                                           ; $7571: $05
	ld   b, b                                        ; $7572: $40
	rst  $38                                         ; $7573: $ff
	inc  bc                                          ; $7574: $03
	rst  $38                                         ; $7575: $ff
	ld   bc, $2801                                   ; $7576: $01 $01 $28
	nop                                              ; $7579: $00
	ld   bc, $f5d2                                   ; $757a: $01 $d2 $f5
	rst  ToBoot                                         ; $757d: $c7
	and  h                                           ; $757e: $a4
	ld   a, l                                        ; $757f: $7d
	ld   d, d                                        ; $7580: $52
	ld   l, a                                        ; $7581: $6f
	sub  c                                           ; $7582: $91
	pop  bc                                          ; $7583: $c1
	db   $e3                                         ; $7584: $e3
	ld   [hl], l                                     ; $7585: $75
	ld   h, l                                        ; $7586: $65
	sub  l                                           ; $7587: $95
	rst  $38                                         ; $7588: $ff
	dec  c                                           ; $7589: $0d
	nop                                              ; $758a: $00
	ld   a, [bc]                                     ; $758b: $0a
	ld   b, $0c                                      ; $758c: $06 $0c
	ld   bc, $000f                                   ; $758e: $01 $0f $00
	ld   bc, $0301                                   ; $7591: $01 $01 $03
	ld   l, b                                        ; $7594: $68
	ld   a, c                                        ; $7595: $79
	halt                                             ; $7596: $76
	rst  $38                                         ; $7597: $ff
	rst  $38                                         ; $7598: $ff
	dec  c                                           ; $7599: $0d
	ld   d, h                                        ; $759a: $54
	db   $fc                                         ; $759b: $fc
	and  c                                           ; $759c: $a1
	sbc  [hl]                                        ; $759d: $9e
	ld   e, l                                        ; $759e: $5d
	ld   [hl], d                                     ; $759f: $72
	ld   h, l                                        ; $75a0: $65
	ld   l, l                                        ; $75a1: $6d
	or   b                                           ; $75a2: $b0
	or   [hl]                                        ; $75a3: $b6
	and  l                                           ; $75a4: $a5
	ld   a, [$000d]                                  ; $75a5: $fa $0d $00
	dec  b                                           ; $75a8: $05
	ld   b, b                                        ; $75a9: $40
	rst  $38                                         ; $75aa: $ff
	inc  bc                                          ; $75ab: $03
	rst  $38                                         ; $75ac: $ff
	ld   bc, $2801                                   ; $75ad: $01 $01 $28
	nop                                              ; $75b0: $00
	ld   bc, $ffff                                   ; $75b1: $01 $ff $ff
	ld   l, e                                        ; $75b4: $6b
	ld   d, h                                        ; $75b5: $54
	ld   h, [hl]                                     ; $75b6: $66
	sub  c                                           ; $75b7: $91
	ld   a, b                                        ; $75b8: $78
	ld   d, d                                        ; $75b9: $52
	ld   [hl], c                                     ; $75ba: $71
	ld   [hl], h                                     ; $75bb: $74
	rst  $38                                         ; $75bc: $ff
	rst  $38                                         ; $75bd: $ff
	dec  c                                           ; $75be: $0d
	nop                                              ; $75bf: $00
	ld   a, [bc]                                     ; $75c0: $0a
	ld   b, $0c                                      ; $75c1: $06 $0c
	ld   bc, $000f                                   ; $75c3: $01 $0f $00
	ld   bc, $0301                                   ; $75c6: $01 $01 $03
	ld   l, b                                        ; $75c9: $68

Call_042_75ca:
	ld   a, c                                        ; $75ca: $79
	ld   e, l                                        ; $75cb: $5d
	ld   [hl], d                                     ; $75cc: $72
	ld   h, l                                        ; $75cd: $65
	ld   l, l                                        ; $75ce: $6d
	and  b                                           ; $75cf: $a0
	ld   a, l                                        ; $75d0: $7d
	ld   d, d                                        ; $75d1: $52
	ld   [hl], h                                     ; $75d2: $74
	rst  $38                                         ; $75d3: $ff
	rst  $38                                         ; $75d4: $ff
	dec  c                                           ; $75d5: $0d
	nop                                              ; $75d6: $00
	ld   a, [bc]                                     ; $75d7: $0a
	dec  b                                           ; $75d8: $05
	ld   b, b                                        ; $75d9: $40
	rst  $38                                         ; $75da: $ff
	inc  bc                                          ; $75db: $03
	rst  $38                                         ; $75dc: $ff
	ld   bc, $2801                                   ; $75dd: $01 $01 $28
	nop                                              ; $75e0: $00
	ld   b, $f7                                      ; $75e1: $06 $f7
	ld   bc, $000f                                   ; $75e3: $01 $0f $00
	ld   bc, $0301                                   ; $75e6: $01 $01 $03
	ld   l, b                                        ; $75e9: $68
	ld   a, c                                        ; $75ea: $79
	rst  $38                                         ; $75eb: $ff
	rst  $38                                         ; $75ec: $ff
	dec  c                                           ; $75ed: $0d
	ld   [hl], a                                     ; $75ee: $77
	ld   d, h                                        ; $75ef: $54
	ld   h, l                                        ; $75f0: $65
	sub  [hl]                                        ; $75f1: $96
	ld   d, h                                        ; $75f2: $54
	ld   e, c                                        ; $75f3: $59
	rst  $38                                         ; $75f4: $ff
	rst  $38                                         ; $75f5: $ff
	rst  $38                                         ; $75f6: $ff
	rst  $38                                         ; $75f7: $ff
	dec  c                                           ; $75f8: $0d
	nop                                              ; $75f9: $00
	ld   a, [bc]                                     ; $75fa: $0a
	dec  b                                           ; $75fb: $05
	ld   b, b                                        ; $75fc: $40
	rst  $38                                         ; $75fd: $ff
	inc  bc                                          ; $75fe: $03
	rst  $38                                         ; $75ff: $ff
	ld   bc, $2801                                   ; $7600: $01 $01 $28
	nop                                              ; $7603: $00
	ld   b, $0c                                      ; $7604: $06 $0c
	ld   bc, $0519                                   ; $7606: $01 $19 $05
	inc  bc                                          ; $7609: $03
	call z, $b8dd                                    ; $760a: $cc $dd $b8
	and  b                                           ; $760d: $a0
	ld   l, l                                        ; $760e: $6d
	add  a                                           ; $760f: $87
	sbc  c                                           ; $7610: $99
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	cp   e                                           ; $7613: $bb
	db   $dd                                         ; $7614: $dd
	push af                                          ; $7615: $f5
	and  b                                           ; $7616: $a0
	ld   a, l                                        ; $7617: $7d
	ld   e, l                                        ; $7618: $5d
	nop                                              ; $7619: $00
	ld   bc, $ddbb                                   ; $761a: $01 $bb $dd
	cp   b                                           ; $761d: $b8
	ld   [hl], l                                     ; $761e: $75
	ld   d, b                                        ; $761f: $50
	sbc  c                                           ; $7620: $99
	nop                                              ; $7621: $00
	ld   [bc], a                                     ; $7622: $02
	rlca                                             ; $7623: $07
	ld   sp, $0202                                   ; $7624: $31 $02 $02
	inc  bc                                          ; $7627: $03
	ld   bc, $2000                                   ; $7628: $01 $00 $20
	nop                                              ; $762b: $00
	rlca                                             ; $762c: $07
	ld   l, d                                        ; $762d: $6a
	ld   [bc], a                                     ; $762e: $02
	ld   [bc], a                                     ; $762f: $02
	inc  bc                                          ; $7630: $03
	ld   bc, $2001                                   ; $7631: $01 $01 $20
	nop                                              ; $7634: $00
	rlca                                             ; $7635: $07
	adc  d                                           ; $7636: $8a
	ld   [bc], a                                     ; $7637: $02
	ld   [bc], a                                     ; $7638: $02
	inc  bc                                          ; $7639: $03
	ld   bc, $2002                                   ; $763a: $01 $02 $20
	nop                                              ; $763d: $00
	ld   b, $be                                      ; $763e: $06 $be
	ld   [bc], a                                     ; $7640: $02
	rrca                                             ; $7641: $0f
	nop                                              ; $7642: $00
	ld   bc, $cc01                                   ; $7643: $01 $01 $cc
	db   $dd                                         ; $7646: $dd
	cp   b                                           ; $7647: $b8
	and  b                                           ; $7648: $a0
	ld   l, l                                        ; $7649: $6d
	add  a                                           ; $764a: $87
	sub  [hl]                                        ; $764b: $96
	ld   d, h                                        ; $764c: $54
	sbc  a                                           ; $764d: $9f
	dec  c                                           ; $764e: $0d
	rst  $38                                         ; $764f: $ff
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	rst  $38                                         ; $7652: $ff
	and  c                                           ; $7653: $a1
	ld   sp, hl                                      ; $7654: $f9
	db   $10                                         ; $7655: $10
	ld   l, e                                        ; $7656: $6b
	and  c                                           ; $7657: $a1
	ld   a, b                                        ; $7658: $78
	ld   h, c                                        ; $7659: $61
	halt                                             ; $765a: $76
	dec  c                                           ; $765b: $0d
	nop                                              ; $765c: $00
	dec  b                                           ; $765d: $05
	ld   b, b                                        ; $765e: $40
	rst  $38                                         ; $765f: $ff
	inc  bc                                          ; $7660: $03
	rst  $38                                         ; $7661: $ff
	ld   bc, $2801                                   ; $7662: $01 $01 $28
	nop                                              ; $7665: $00
	ld   bc, $7465                                   ; $7666: $01 $65 $74
	sbc  c                                           ; $7669: $99
	inc  b                                           ; $766a: $04
	ld   a, d                                        ; $766b: $7a
	ld   [bc], a                                     ; $766c: $02
	ld   a, e                                        ; $766d: $7b
	ld   h, [hl]                                     ; $766e: $66
	sub  c                                           ; $766f: $91
	ld   a, b                                        ; $7670: $78
	ld   d, d                                        ; $7671: $52
	ld   l, h                                        ; $7672: $6c
	sbc  a                                           ; $7673: $9f
	dec  c                                           ; $7674: $0d
	nop                                              ; $7675: $00
	ld   a, [bc]                                     ; $7676: $0a
	ld   b, $f7                                      ; $7677: $06 $f7
	ld   bc, $000f                                   ; $7679: $01 $0f $00
	ld   bc, $6b01                                   ; $767c: $01 $01 $6b
	ld   h, l                                        ; $767f: $65
	ld   [hl], h                                     ; $7680: $74
	sbc  [hl]                                        ; $7681: $9e
	cp   e                                           ; $7682: $bb
	db   $dd                                         ; $7683: $dd
	push af                                          ; $7684: $f5
	and  b                                           ; $7685: $a0
	ld   a, l                                        ; $7686: $7d
	ld   d, d                                        ; $7687: $52
	ld   [hl], h                                     ; $7688: $74
	rst  $38                                         ; $7689: $ff
	rst  $38                                         ; $768a: $ff
	dec  c                                           ; $768b: $0d
	nop                                              ; $768c: $00
	ld   a, [bc]                                     ; $768d: $0a
	dec  b                                           ; $768e: $05
	ld   b, b                                        ; $768f: $40
	rst  $38                                         ; $7690: $ff
	inc  bc                                          ; $7691: $03
	rst  $38                                         ; $7692: $ff
	ld   bc, $2801                                   ; $7693: $01 $01 $28
	nop                                              ; $7696: $00
	ld   b, $e1                                      ; $7697: $06 $e1
	ld   [bc], a                                     ; $7699: $02
	rrca                                             ; $769a: $0f
	nop                                              ; $769b: $00
	ld   bc, $6b01                                   ; $769c: $01 $01 $6b
	ld   h, l                                        ; $769f: $65
	ld   [hl], h                                     ; $76a0: $74
	sbc  [hl]                                        ; $76a1: $9e
	cp   e                                           ; $76a2: $bb
	db   $dd                                         ; $76a3: $dd
	cp   b                                           ; $76a4: $b8
	ld   [hl], l                                     ; $76a5: $75
	ld   d, b                                        ; $76a6: $50
	sbc  c                                           ; $76a7: $99
	sbc  a                                           ; $76a8: $9f
	dec  c                                           ; $76a9: $0d
	rst  $38                                         ; $76aa: $ff
	rst  $38                                         ; $76ab: $ff
	rst  $38                                         ; $76ac: $ff
	rst  $38                                         ; $76ad: $ff
	and  c                                           ; $76ae: $a1
	ld   sp, hl                                      ; $76af: $f9
	dec  c                                           ; $76b0: $0d
	nop                                              ; $76b1: $00
	dec  b                                           ; $76b2: $05
	ld   b, b                                        ; $76b3: $40
	rst  $38                                         ; $76b4: $ff
	inc  bc                                          ; $76b5: $03
	rst  $38                                         ; $76b6: $ff
	ld   bc, $2801                                   ; $76b7: $01 $01 $28
	nop                                              ; $76ba: $00
	ld   bc, $4904                                   ; $76bb: $01 $04 $49
	ld   e, d                                        ; $76be: $5a
	cp   e                                           ; $76bf: $bb
	db   $dd                                         ; $76c0: $dd
	cp   b                                           ; $76c1: $b8
	ld   a, b                                        ; $76c2: $78
	and  c                                           ; $76c3: $a1
	ld   l, [hl]                                     ; $76c4: $6e
	rst  $38                                         ; $76c5: $ff
	rst  $38                                         ; $76c6: $ff
	ld   sp, hl                                      ; $76c7: $f9
	dec  c                                           ; $76c8: $0d
	nop                                              ; $76c9: $00
	ld   a, [bc]                                     ; $76ca: $0a
	ld   b, $f7                                      ; $76cb: $06 $f7
	ld   bc, $000f                                   ; $76cd: $01 $0f $00
	ld   bc, $6b01                                   ; $76d0: $01 $01 $6b
	ld   h, l                                        ; $76d3: $65
	ld   [hl], h                                     ; $76d4: $74
	rst  $38                                         ; $76d5: $ff
	rst  $38                                         ; $76d6: $ff
	dec  c                                           ; $76d7: $0d
	ld   [hl], a                                     ; $76d8: $77
	ld   d, h                                        ; $76d9: $54
	ld   h, l                                        ; $76da: $65
	sub  [hl]                                        ; $76db: $96
	ld   d, h                                        ; $76dc: $54
	ld   e, c                                        ; $76dd: $59
	rst  $38                                         ; $76de: $ff
	rst  $38                                         ; $76df: $ff
	rst  $38                                         ; $76e0: $ff
	rst  $38                                         ; $76e1: $ff
	dec  c                                           ; $76e2: $0d
	nop                                              ; $76e3: $00
	ld   a, [bc]                                     ; $76e4: $0a
	dec  b                                           ; $76e5: $05
	ld   b, b                                        ; $76e6: $40
	rst  $38                                         ; $76e7: $ff
	inc  bc                                          ; $76e8: $03
	rst  $38                                         ; $76e9: $ff
	ld   bc, $2801                                   ; $76ea: $01 $01 $28
	nop                                              ; $76ed: $00
	ld   b, $f7                                      ; $76ee: $06 $f7
	ld   bc, $0519                                   ; $76f0: $01 $19 $05
	inc  bc                                          ; $76f3: $03
	jp   c, $c9ba                                    ; $76f4: $da $ba $c9

	and  b                                           ; $76f7: $a0
	inc  b                                           ; $76f8: $04
	rlca                                             ; $76f9: $07
	sbc  c                                           ; $76fa: $99
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	jp   c, $c9ba                                    ; $76fd: $da $ba $c9

	and  b                                           ; $7700: $a0
	ld   [hl], d                                     ; $7701: $72
	ld   e, l                                        ; $7702: $5d
	ld   h, a                                        ; $7703: $67
	nop                                              ; $7704: $00
	ld   bc, $c4da                                   ; $7705: $01 $da $c4
	jp   z, $0475                                    ; $7708: $ca $75 $04

	ld   b, d                                        ; $770b: $42
	sbc  c                                           ; $770c: $99
	nop                                              ; $770d: $00
	ld   [bc], a                                     ; $770e: $02
	rlca                                             ; $770f: $07
	dec  e                                           ; $7710: $1d
	inc  bc                                          ; $7711: $03
	ld   [bc], a                                     ; $7712: $02
	inc  bc                                          ; $7713: $03
	ld   bc, $2000                                   ; $7714: $01 $00 $20
	nop                                              ; $7717: $00
	rlca                                             ; $7718: $07
	ld   a, [hl-]                                    ; $7719: $3a
	inc  bc                                          ; $771a: $03
	ld   [bc], a                                     ; $771b: $02
	inc  bc                                          ; $771c: $03
	ld   bc, $2001                                   ; $771d: $01 $01 $20
	nop                                              ; $7720: $00
	rlca                                             ; $7721: $07
	ld   a, a                                        ; $7722: $7f
	inc  bc                                          ; $7723: $03
	ld   [bc], a                                     ; $7724: $02
	inc  bc                                          ; $7725: $03
	ld   bc, $2002                                   ; $7726: $01 $02 $20
	nop                                              ; $7729: $00
	ld   b, $b3                                      ; $772a: $06 $b3
	inc  bc                                          ; $772c: $03
	rrca                                             ; $772d: $0f
	nop                                              ; $772e: $00
	ld   bc, $da01                                   ; $772f: $01 $01 $da
	cp   d                                           ; $7732: $ba
	ret                                              ; $7733: $c9


	and  b                                           ; $7734: $a0
	inc  b                                           ; $7735: $04
	rlca                                             ; $7736: $07
	ld   [hl], h                                     ; $7737: $74
	halt                                             ; $7738: $76
	rst  $38                                         ; $7739: $ff
	rst  $38                                         ; $773a: $ff
	dec  c                                           ; $773b: $0d
	nop                                              ; $773c: $00
	ld   a, [bc]                                     ; $773d: $0a
	dec  b                                           ; $773e: $05
	ld   b, b                                        ; $773f: $40
	rst  $38                                         ; $7740: $ff
	inc  bc                                          ; $7741: $03
	rst  $38                                         ; $7742: $ff
	ld   bc, $2801                                   ; $7743: $01 $01 $28
	nop                                              ; $7746: $00
	ld   b, $d2                                      ; $7747: $06 $d2
	inc  bc                                          ; $7749: $03
	rrca                                             ; $774a: $0f
	nop                                              ; $774b: $00
	ld   bc, $9601                                   ; $774c: $01 $01 $96
	ld   h, l                                        ; $774f: $65
	ld   a, [$da10]                                  ; $7750: $fa $10 $da
	cp   d                                           ; $7753: $ba
	ret                                              ; $7754: $c9


	and  b                                           ; $7755: $a0
	ld   [hl], d                                     ; $7756: $72
	ld   e, l                                        ; $7757: $5d
	ld   h, a                                        ; $7758: $67
	ld   l, h                                        ; $7759: $6c
	ld   a, [$ff0d]                                  ; $775a: $fa $0d $ff
	rst  $38                                         ; $775d: $ff
	rst  $38                                         ; $775e: $ff
	rst  $38                                         ; $775f: $ff
	ld   [hl], h                                     ; $7760: $74
	sbc  [hl]                                        ; $7761: $9e
	ld   [bc], a                                     ; $7762: $02
	sbc  l                                           ; $7763: $9d
	ld   [hl], c                                     ; $7764: $71
	ld   [hl], h                                     ; $7765: $74
	sbc  c                                           ; $7766: $99
	inc  b                                           ; $7767: $04
	ld   a, d                                        ; $7768: $7a
	ld   [bc], a                                     ; $7769: $02
	ld   a, e                                        ; $776a: $7b
	ld   h, [hl]                                     ; $776b: $66
	sub  c                                           ; $776c: $91
	dec  c                                           ; $776d: $0d
	nop                                              ; $776e: $00
	dec  b                                           ; $776f: $05
	ld   b, b                                        ; $7770: $40
	rst  $38                                         ; $7771: $ff
	inc  bc                                          ; $7772: $03
	rst  $38                                         ; $7773: $ff
	ld   bc, $2801                                   ; $7774: $01 $01 $28
	nop                                              ; $7777: $00
	ld   bc, $5278                                   ; $7778: $01 $78 $52
	sub  [hl]                                        ; $777b: $96
	sbc  a                                           ; $777c: $9f
	inc  bc                                          ; $777d: $03
	ld   [hl], b                                     ; $777e: $70
	ld   e, l                                        ; $777f: $5d
	inc  b                                           ; $7780: $04
	rlca                                             ; $7781: $07
	dec  b                                           ; $7782: $05
	scf                                              ; $7783: $37
	ld   d, [hl]                                     ; $7784: $56
	ld   a, b                                        ; $7785: $78
	ld   d, d                                        ; $7786: $52
	halt                                             ; $7787: $76
	sbc  a                                           ; $7788: $9f
	dec  c                                           ; $7789: $0d
	nop                                              ; $778a: $00
	ld   a, [bc]                                     ; $778b: $0a
	ld   b, $e1                                      ; $778c: $06 $e1
	ld   [bc], a                                     ; $778e: $02
	rrca                                             ; $778f: $0f
	nop                                              ; $7790: $00
	ld   bc, $da01                                   ; $7791: $01 $01 $da
	call nz, Call_042_75ca                           ; $7794: $c4 $ca $75
	inc  b                                           ; $7797: $04
	ld   b, d                                        ; $7798: $42
	sub  [hl]                                        ; $7799: $96
	ld   d, h                                        ; $779a: $54
	ld   e, c                                        ; $779b: $59
	ld   a, b                                        ; $779c: $78
	rst  $38                                         ; $779d: $ff
	rst  $38                                         ; $779e: $ff
	dec  c                                           ; $779f: $0d
	rst  $38                                         ; $77a0: $ff
	rst  $38                                         ; $77a1: $ff
	rst  $38                                         ; $77a2: $ff
	rst  $38                                         ; $77a3: $ff
	and  c                                           ; $77a4: $a1
	ld   sp, hl                                      ; $77a5: $f9
	dec  c                                           ; $77a6: $0d
	nop                                              ; $77a7: $00
	dec  b                                           ; $77a8: $05
	ld   b, b                                        ; $77a9: $40
	rst  $38                                         ; $77aa: $ff
	inc  bc                                          ; $77ab: $03
	rst  $38                                         ; $77ac: $ff
	ld   bc, $2801                                   ; $77ad: $01 $01 $28
	nop                                              ; $77b0: $00
	ld   bc, $4204                                   ; $77b1: $01 $04 $42
	ld   [hl], h                                     ; $77b4: $74
	ld   [hl], a                                     ; $77b5: $77
	ld   d, h                                        ; $77b6: $54
	ld   h, a                                        ; $77b7: $67
	sbc  c                                           ; $77b8: $99
	and  c                                           ; $77b9: $a1
	ld   l, [hl]                                     ; $77ba: $6e
	sub  [hl]                                        ; $77bb: $96
	sbc  a                                           ; $77bc: $9f
	dec  c                                           ; $77bd: $0d
	nop                                              ; $77be: $00
	ld   a, [bc]                                     ; $77bf: $0a
	ld   b, $e1                                      ; $77c0: $06 $e1
	ld   [bc], a                                     ; $77c2: $02
	rrca                                             ; $77c3: $0f
	nop                                              ; $77c4: $00
	ld   bc, $ff01                                   ; $77c5: $01 $01 $ff
	rst  $38                                         ; $77c8: $ff
	ld   [hl], a                                     ; $77c9: $77
	ld   d, h                                        ; $77ca: $54
	ld   h, l                                        ; $77cb: $65
	sub  [hl]                                        ; $77cc: $96
	ld   d, h                                        ; $77cd: $54
	ld   e, c                                        ; $77ce: $59
	rst  $38                                         ; $77cf: $ff
	rst  $38                                         ; $77d0: $ff
	rst  $38                                         ; $77d1: $ff
	rst  $38                                         ; $77d2: $ff
	dec  c                                           ; $77d3: $0d
	nop                                              ; $77d4: $00
	ld   a, [bc]                                     ; $77d5: $0a
	dec  b                                           ; $77d6: $05
	ld   b, b                                        ; $77d7: $40
	rst  $38                                         ; $77d8: $ff
	inc  bc                                          ; $77d9: $03
	rst  $38                                         ; $77da: $ff
	ld   bc, $2801                                   ; $77db: $01 $01 $28
	nop                                              ; $77de: $00
	ld   b, $e1                                      ; $77df: $06 $e1
	ld   [bc], a                                     ; $77e1: $02
	add  hl, de                                      ; $77e2: $19
	dec  b                                           ; $77e3: $05
	inc  bc                                          ; $77e4: $03
	inc  b                                           ; $77e5: $04
	dec  a                                           ; $77e6: $3d
	inc  bc                                          ; $77e7: $03
	reti                                             ; $77e8: $d9


	and  b                                           ; $77e9: $a0
	ld   a, e                                        ; $77ea: $7b
	sbc  c                                           ; $77eb: $99
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	ld   [bc], a                                     ; $77ee: $02
	xor  [hl]                                        ; $77ef: $ae
	ld   [bc], a                                     ; $77f0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77f1: $cf
	and  b                                           ; $77f2: $a0
	ld   a, d                                        ; $77f3: $7a
	sbc  c                                           ; $77f4: $99
	nop                                              ; $77f5: $00
	ld   bc, $6a04                                   ; $77f6: $01 $04 $6a
	and  b                                           ; $77f9: $a0
	halt                                             ; $77fa: $76
	halt                                             ; $77fb: $76
	ld   a, h                                        ; $77fc: $7c
	ld   d, [hl]                                     ; $77fd: $56
	sbc  c                                           ; $77fe: $99
	nop                                              ; $77ff: $00
	ld   [bc], a                                     ; $7800: $02
	rlca                                             ; $7801: $07
	rrca                                             ; $7802: $0f
	inc  b                                           ; $7803: $04
	ld   [bc], a                                     ; $7804: $02
	inc  bc                                          ; $7805: $03
	ld   bc, $2000                                   ; $7806: $01 $00 $20
	nop                                              ; $7809: $00
	rlca                                             ; $780a: $07
	ld   c, h                                        ; $780b: $4c
	inc  b                                           ; $780c: $04
	ld   [bc], a                                     ; $780d: $02
	inc  bc                                          ; $780e: $03
	ld   bc, $2001                                   ; $780f: $01 $01 $20
	nop                                              ; $7812: $00
	rlca                                             ; $7813: $07
	sub  d                                           ; $7814: $92
	inc  b                                           ; $7815: $04
	ld   [bc], a                                     ; $7816: $02
	inc  bc                                          ; $7817: $03
	ld   bc, $2002                                   ; $7818: $01 $02 $20
	nop                                              ; $781b: $00
	ld   b, $c5                                      ; $781c: $06 $c5
	inc  b                                           ; $781e: $04
	rrca                                             ; $781f: $0f
	nop                                              ; $7820: $00
	ld   bc, $0301                                   ; $7821: $01 $01 $03
	dec  c                                           ; $7824: $0d
	inc  bc                                          ; $7825: $03
	ld   h, l                                        ; $7826: $65
	ld   h, b                                        ; $7827: $60
	ld   a, c                                        ; $7828: $79
	sbc  [hl]                                        ; $7829: $9e
	inc  b                                           ; $782a: $04
	dec  a                                           ; $782b: $3d
	inc  bc                                          ; $782c: $03
	reti                                             ; $782d: $d9


	and  b                                           ; $782e: $a0
	ld   a, e                                        ; $782f: $7b
	sbc  c                                           ; $7830: $99
	halt                                             ; $7831: $76
	rst  $38                                         ; $7832: $ff
	rst  $38                                         ; $7833: $ff
	dec  c                                           ; $7834: $0d
	rst  $38                                         ; $7835: $ff
	rst  $38                                         ; $7836: $ff
	rst  $38                                         ; $7837: $ff
	rst  $38                                         ; $7838: $ff
	and  c                                           ; $7839: $a1
	ld   sp, hl                                      ; $783a: $f9
	dec  c                                           ; $783b: $0d
	nop                                              ; $783c: $00
	dec  b                                           ; $783d: $05
	ld   b, b                                        ; $783e: $40
	rst  $38                                         ; $783f: $ff
	inc  bc                                          ; $7840: $03
	rst  $38                                         ; $7841: $ff
	ld   bc, $2801                                   ; $7842: $01 $01 $28
	nop                                              ; $7845: $00
	ld   bc, $0462                                   ; $7846: $01 $62 $04
	sbc  h                                           ; $7849: $9c
	sub  b                                           ; $784a: $90
	ld   a, b                                        ; $784b: $78
	ld   d, d                                        ; $784c: $52
	ld   a, h                                        ; $784d: $7c
	ld   a, c                                        ; $784e: $79
	sbc  [hl]                                        ; $784f: $9e
	ld   a, e                                        ; $7850: $7b
	ld   [hl], c                                     ; $7851: $71
	ld   [hl], h                                     ; $7852: $74
	sub  b                                           ; $7853: $90
	ld   a, e                                        ; $7854: $7b
	rst  $38                                         ; $7855: $ff
	dec  c                                           ; $7856: $0d
	nop                                              ; $7857: $00
	ld   a, [bc]                                     ; $7858: $0a
	ld   b, $d2                                      ; $7859: $06 $d2
	inc  bc                                          ; $785b: $03
	rrca                                             ; $785c: $0f
	nop                                              ; $785d: $00
	ld   bc, $0301                                   ; $785e: $01 $01 $03
	dec  c                                           ; $7861: $0d
	inc  bc                                          ; $7862: $03
	ld   h, l                                        ; $7863: $65
	ld   h, b                                        ; $7864: $60
	ld   a, c                                        ; $7865: $79
	sbc  [hl]                                        ; $7866: $9e
	db   $ed                                         ; $7867: $ed
	ei                                               ; $7868: $fb
	cp   c                                           ; $7869: $b9
	rst  $20                                         ; $786a: $e7
	and  b                                           ; $786b: $a0
	ld   [bc], a                                     ; $786c: $02
	inc  l                                           ; $786d: $2c
	ld   d, d                                        ; $786e: $52
	ld   [hl], h                                     ; $786f: $74
	rst  $38                                         ; $7870: $ff
	dec  c                                           ; $7871: $0d
	rst  $38                                         ; $7872: $ff
	rst  $38                                         ; $7873: $ff
	cp   h                                           ; $7874: $bc
	or   b                                           ; $7875: $b0
	cp   b                                           ; $7876: $b8
	ei                                               ; $7877: $fb
	ld   l, [hl]                                     ; $7878: $6e
	rst  $38                                         ; $7879: $ff
	ld   [hl], l                                     ; $787a: $75
	sub  b                                           ; $787b: $90
	ld   [bc], a                                     ; $787c: $02
	and  l                                           ; $787d: $a5
	ld   a, l                                        ; $787e: $7d
	dec  c                                           ; $787f: $0d
	nop                                              ; $7880: $00
	dec  b                                           ; $7881: $05
	ld   b, b                                        ; $7882: $40
	rst  $38                                         ; $7883: $ff
	inc  bc                                          ; $7884: $03
	rst  $38                                         ; $7885: $ff
	ld   bc, $2801                                   ; $7886: $01 $01 $28
	nop                                              ; $7889: $00
	ld   bc, $a161                                   ; $788a: $01 $61 $a1
	ld   a, b                                        ; $788d: $78
	ld   [bc], a                                     ; $788e: $02
	jp   Jump_042_7465                               ; $788f: $c3 $65 $74


	sbc  c                                           ; $7892: $99
	inc  b                                           ; $7893: $04
	ld   a, d                                        ; $7894: $7a
	ld   [bc], a                                     ; $7895: $02
	ld   a, e                                        ; $7896: $7b
	ld   h, [hl]                                     ; $7897: $66
	sub  c                                           ; $7898: $91
	ld   a, b                                        ; $7899: $78
	ld   d, d                                        ; $789a: $52
	sbc  a                                           ; $789b: $9f
	dec  c                                           ; $789c: $0d
	nop                                              ; $789d: $00
	ld   a, [bc]                                     ; $789e: $0a
	ld   b, $d2                                      ; $789f: $06 $d2
	inc  bc                                          ; $78a1: $03
	rrca                                             ; $78a2: $0f
	nop                                              ; $78a3: $00
	ld   bc, $0301                                   ; $78a4: $01 $01 $03
	dec  c                                           ; $78a7: $0d
	inc  bc                                          ; $78a8: $03
	ld   h, l                                        ; $78a9: $65
	ld   h, b                                        ; $78aa: $60
	ld   a, c                                        ; $78ab: $79
	sbc  [hl]                                        ; $78ac: $9e
	inc  b                                           ; $78ad: $04
	ld   l, d                                        ; $78ae: $6a
	and  b                                           ; $78af: $a0
	halt                                             ; $78b0: $76
	halt                                             ; $78b1: $76
	ld   a, h                                        ; $78b2: $7c
	ld   d, [hl]                                     ; $78b3: $56
	sbc  c                                           ; $78b4: $99
	halt                                             ; $78b5: $76
	dec  c                                           ; $78b6: $0d
	rst  $38                                         ; $78b7: $ff
	rst  $38                                         ; $78b8: $ff

Jump_042_78b9:
	rst  $38                                         ; $78b9: $ff
	rst  $38                                         ; $78ba: $ff
	dec  c                                           ; $78bb: $0d
	nop                                              ; $78bc: $00
	dec  b                                           ; $78bd: $05
	ld   b, b                                        ; $78be: $40
	rst  $38                                         ; $78bf: $ff
	inc  bc                                          ; $78c0: $03
	rst  $38                                         ; $78c1: $ff
	ld   bc, $2801                                   ; $78c2: $01 $01 $28
	nop                                              ; $78c5: $00
	ld   bc, $6596                                   ; $78c6: $01 $96 $65
	ld   a, [$2910]                                  ; $78c9: $fa $10 $29
	dec  h                                           ; $78cc: $25
	ld   l, [hl]                                     ; $78cd: $6e
	ld   a, [$000d]                                  ; $78ce: $fa $0d $00
	ld   a, [bc]                                     ; $78d1: $0a
	ld   b, $ed                                      ; $78d2: $06 $ed
	inc  b                                           ; $78d4: $04
	rrca                                             ; $78d5: $0f
	nop                                              ; $78d6: $00
	ld   bc, $0301                                   ; $78d7: $01 $01 $03
	dec  c                                           ; $78da: $0d
	inc  bc                                          ; $78db: $03
	ld   h, l                                        ; $78dc: $65
	ld   h, b                                        ; $78dd: $60
	ld   a, c                                        ; $78de: $79
	rst  $38                                         ; $78df: $ff
	rst  $38                                         ; $78e0: $ff
	dec  c                                           ; $78e1: $0d
	rst  $38                                         ; $78e2: $ff
	rst  $38                                         ; $78e3: $ff
	rst  $38                                         ; $78e4: $ff
	rst  $38                                         ; $78e5: $ff
	ld   [hl], a                                     ; $78e6: $77
	ld   d, h                                        ; $78e7: $54
	ld   h, l                                        ; $78e8: $65
	sub  [hl]                                        ; $78e9: $96
	ld   d, h                                        ; $78ea: $54
	ld   e, c                                        ; $78eb: $59
	rst  $38                                         ; $78ec: $ff
	rst  $38                                         ; $78ed: $ff
	dec  c                                           ; $78ee: $0d
	nop                                              ; $78ef: $00
	ld   a, [bc]                                     ; $78f0: $0a
	dec  b                                           ; $78f1: $05
	ld   b, b                                        ; $78f2: $40
	rst  $38                                         ; $78f3: $ff
	inc  bc                                          ; $78f4: $03
	rst  $38                                         ; $78f5: $ff
	ld   bc, $2801                                   ; $78f6: $01 $01 $28
	nop                                              ; $78f9: $00
	ld   b, $d2                                      ; $78fa: $06 $d2
	inc  bc                                          ; $78fc: $03
	rlca                                             ; $78fd: $07
	ld   c, $05                                      ; $78fe: $0e $05
	inc  bc                                          ; $7900: $03
	rst  $38                                         ; $7901: $ff
	ld   bc, $2005                                   ; $7902: $01 $05 $20
	nop                                              ; $7905: $00
	rlca                                             ; $7906: $07
	inc  a                                           ; $7907: $3c
	ld   [$ff03], sp                                 ; $7908: $08 $03 $ff
	ld   bc, $2507                                   ; $790b: $01 $07 $25
	nop                                              ; $790e: $00
	rlca                                             ; $790f: $07
	ld   c, c                                        ; $7910: $49
	dec  b                                           ; $7911: $05
	inc  bc                                          ; $7912: $03
	rst  $38                                         ; $7913: $ff
	ld   bc, $2504                                   ; $7914: $01 $04 $25
	inc  bc                                          ; $7917: $03
	rst  $38                                         ; $7918: $ff
	ld   bc, $2306                                   ; $7919: $01 $06 $23
	inc  e                                           ; $791c: $1c
	nop                                              ; $791d: $00
	ld   bc, $ffff                                   ; $791e: $01 $ff $ff
	inc  bc                                          ; $7921: $03
	ld   l, l                                        ; $7922: $6d
	dec  b                                           ; $7923: $05
	add  hl, de                                      ; $7924: $19
	adc  h                                           ; $7925: $8c
	ld   [hl], l                                     ; $7926: $75
	inc  bc                                          ; $7927: $03
	ld   l, h                                        ; $7928: $6c
	ld   h, l                                        ; $7929: $65
	inc  bc                                          ; $792a: $03
	ld   l, a                                        ; $792b: $6f
	ld   [bc], a                                     ; $792c: $02
	xor  c                                           ; $792d: $a9
	ld   e, d                                        ; $792e: $5a
	dec  c                                           ; $792f: $0d
	ld   d, b                                        ; $7930: $50
	sbc  c                                           ; $7931: $99
	ld   a, b                                        ; $7932: $78
	rst  $38                                         ; $7933: $ff
	rst  $38                                         ; $7934: $ff
	sbc  a                                           ; $7935: $9f
	dec  c                                           ; $7936: $0d
	nop                                              ; $7937: $00
	ld   a, [bc]                                     ; $7938: $0a
	ld   bc, $956f                                   ; $7939: $01 $6f $95
	ld   [hl], c                                     ; $793c: $71
	halt                                             ; $793d: $76
	inc  b                                           ; $793e: $04
	ld   [$9202], sp                                 ; $793f: $08 $02 $92
	ld   a, h                                        ; $7942: $7c
	inc  b                                           ; $7943: $04
	dec  bc                                          ; $7944: $0b
	ld   [hl], l                                     ; $7945: $75
	sub  b                                           ; $7946: $90
	inc  bc                                          ; $7947: $03
	sub  [hl]                                        ; $7948: $96
	inc  b                                           ; $7949: $04
	sbc  a                                           ; $794a: $9f
	ld   h, l                                        ; $794b: $65
	ld   [hl], h                                     ; $794c: $74
	dec  c                                           ; $794d: $0d
	adc  l                                           ; $794e: $8d
	sbc  c                                           ; $794f: $99
	ld   e, c                                        ; $7950: $59
	ld   a, b                                        ; $7951: $78
	sbc  a                                           ; $7952: $9f
	dec  c                                           ; $7953: $0d
	nop                                              ; $7954: $00
	ld   a, [bc]                                     ; $7955: $0a
	add  hl, hl                                      ; $7956: $29
	inc  b                                           ; $7957: $04
	nop                                              ; $7958: $00
	dec  c                                           ; $7959: $0d
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
	inc  hl                                          ; $795c: $23
	sbc  l                                           ; $795d: $9d
	inc  e                                           ; $795e: $1c
	ld   bc, $0101                                   ; $795f: $01 $01 $01
	dec  e                                           ; $7962: $1d
	ld   b, b                                        ; $7963: $40
	ld   de, $1103                                   ; $7964: $11 $03 $11
	ld   bc, $2802                                   ; $7967: $01 $02 $28
	nop                                              ; $796a: $00
	ld   bc, $0008                                   ; $796b: $01 $08 $00
	ld   h, e                                        ; $796e: $63
	and  c                                           ; $796f: $a1
	sbc  a                                           ; $7970: $9f
	dec  c                                           ; $7971: $0d
	inc  bc                                          ; $7972: $03
	ld   l, a                                        ; $7973: $6f
	ld   [bc], a                                     ; $7974: $02
	xor  c                                           ; $7975: $a9
	push de                                          ; $7976: $d5
	call nz, $ecc0                                   ; $7977: $c4 $c0 $ec
	ld   [hl], l                                     ; $797a: $75
	ld   h, a                                        ; $797b: $67
	ld   a, e                                        ; $797c: $7b
	sbc  a                                           ; $797d: $9f
	dec  c                                           ; $797e: $0d
	ld   h, e                                        ; $797f: $63
	ld   h, a                                        ; $7980: $67
	ld   e, d                                        ; $7981: $5a
	ld   [hl], l                                     ; $7982: $75
	ld   h, a                                        ; $7983: $67
	sbc  a                                           ; $7984: $9f
	dec  c                                           ; $7985: $0d
	nop                                              ; $7986: $00
	ld   a, [bc]                                     ; $7987: $0a
	rlca                                             ; $7988: $07
	pop  bc                                          ; $7989: $c1
	ld   b, $03                                      ; $798a: $06 $03
	jr   nz, jr_042_798f                             ; $798c: $20 $01

	ld   c, b                                        ; $798e: $48

jr_042_798f:
	inc  hl                                          ; $798f: $23
	nop                                              ; $7990: $00
	ld   bc, $7d75                                   ; $7991: $01 $75 $7d
	sbc  [hl]                                        ; $7994: $9e
	ld   [bc], a                                     ; $7995: $02
	rst  $30                                         ; $7996: $f7
	inc  b                                           ; $7997: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7998: $cf
	ld   h, l                                        ; $7999: $65
	adc  h                                           ; $799a: $8c
	ld   h, a                                        ; $799b: $67
	sbc  a                                           ; $799c: $9f
	dec  c                                           ; $799d: $0d
	ld   [bc], a                                     ; $799e: $02
	and  l                                           ; $799f: $a5
	inc  b                                           ; $79a0: $04
	xor  d                                           ; $79a1: $aa
	ld   e, c                                        ; $79a2: $59
	sub  a                                           ; $79a3: $97
	sbc  [hl]                                        ; $79a4: $9e
	ld   h, c                                        ; $79a5: $61
	ld   a, h                                        ; $79a6: $7c
	inc  bc                                          ; $79a7: $03
	ld   l, a                                        ; $79a8: $6f
	ld   [bc], a                                     ; $79a9: $02
	xor  c                                           ; $79aa: $a9
	ld   a, l                                        ; $79ab: $7d
	dec  c                                           ; $79ac: $0d
	ld   [bc], a                                     ; $79ad: $02
	or   d                                           ; $79ae: $b2
	inc  bc                                          ; $79af: $03
	ld   c, a                                        ; $79b0: $4f
	ld   a, h                                        ; $79b1: $7c
	inc  bc                                          ; $79b2: $03
	ld   l, l                                        ; $79b3: $6d
	dec  b                                           ; $79b4: $05
	add  hl, de                                      ; $79b5: $19
	and  b                                           ; $79b6: $a0
	ld   h, l                                        ; $79b7: $65
	ld   [hl], h                                     ; $79b8: $74
	sub  b                                           ; $79b9: $90
	sub  a                                           ; $79ba: $97
	ld   d, d                                        ; $79bb: $52
	adc  h                                           ; $79bc: $8c
	ld   h, a                                        ; $79bd: $67
	sbc  a                                           ; $79be: $9f
	dec  c                                           ; $79bf: $0d
	nop                                              ; $79c0: $00
	ld   a, [bc]                                     ; $79c1: $0a
	ld   bc, $6d03                                   ; $79c2: $01 $03 $6d
	dec  b                                           ; $79c5: $05
	add  hl, de                                      ; $79c6: $19
	ld   a, l                                        ; $79c7: $7d
	sbc  [hl]                                        ; $79c8: $9e
	ld   d, b                                        ; $79c9: $50
	ld   l, l                                        ; $79ca: $6d
	ld   h, l                                        ; $79cb: $65
	ld   l, l                                        ; $79cc: $6d
	ld   l, a                                        ; $79cd: $6f
	ld   [bc], a                                     ; $79ce: $02
	sbc  b                                           ; $79cf: $98
	inc  bc                                          ; $79d0: $03
	nop                                              ; $79d1: $00
	ld   a, h                                        ; $79d2: $7c
	dec  c                                           ; $79d3: $0d
	db   $e3                                         ; $79d4: $e3
	push af                                          ; $79d5: $f5
	pop  de                                          ; $79d6: $d1
	ei                                               ; $79d7: $fb
	ld   e, d                                        ; $79d8: $5a
	ld   [bc], a                                     ; $79d9: $02
	ld   e, e                                        ; $79da: $5b
	inc  bc                                          ; $79db: $03
	sbc  $75                                         ; $79dc: $de $75
	ld   [bc], a                                     ; $79de: $02
	rst  $38                                         ; $79df: $ff
	ld   e, a                                        ; $79e0: $5f
	inc  bc                                          ; $79e1: $03
	and  b                                           ; $79e2: $a0
	ld   l, a                                        ; $79e3: $6f
	dec  c                                           ; $79e4: $0d
	adc  h                                           ; $79e5: $8c
	ld   h, a                                        ; $79e6: $67
	sbc  a                                           ; $79e7: $9f
	dec  c                                           ; $79e8: $0d
	nop                                              ; $79e9: $00
	ld   a, [bc]                                     ; $79ea: $0a
	inc  e                                           ; $79eb: $1c
	ld   bc, $0000                                   ; $79ec: $01 $00 $00
	ld   bc, $786f                                   ; $79ef: $01 $6f $78
	adc  l                                           ; $79f2: $8d
	ld   a, c                                        ; $79f3: $79
	sbc  [hl]                                        ; $79f4: $9e
	ld   d, b                                        ; $79f5: $50
	ld   l, l                                        ; $79f6: $6d
	ld   h, l                                        ; $79f7: $65
	ld   a, h                                        ; $79f8: $7c
	inc  bc                                          ; $79f9: $03
	ld   l, l                                        ; $79fa: $6d
	dec  b                                           ; $79fb: $05
	add  hl, de                                      ; $79fc: $19
	ld   a, l                                        ; $79fd: $7d
	dec  c                                           ; $79fe: $0d
	ld   [bc], a                                     ; $79ff: $02
	dec  h                                           ; $7a00: $25
	ld   [bc], a                                     ; $7a01: $02
	ld   a, e                                        ; $7a02: $7b
	ld   d, d                                        ; $7a03: $52
	ld   [hl], l                                     ; $7a04: $75
	ld   h, a                                        ; $7a05: $67
	sbc  a                                           ; $7a06: $9f
	dec  c                                           ; $7a07: $0d
	nop                                              ; $7a08: $00
	ld   a, [bc]                                     ; $7a09: $0a
	ld   bc, $e005                                   ; $7a0a: $01 $05 $e0
	inc  bc                                          ; $7a0d: $03
	sub  b                                           ; $7a0e: $90
	dec  b                                           ; $7a0f: $05
	ld   a, [bc]                                     ; $7a10: $0a
	sbc  [hl]                                        ; $7a11: $9e
	cp   d                                           ; $7a12: $ba
	push de                                          ; $7a13: $d5
	ei                                               ; $7a14: $fb
	jp   z, $029e                                    ; $7a15: $ca $9e $02

	and  c                                           ; $7a18: $a1
	ld   [bc], a                                     ; $7a19: $02
	ld   a, e                                        ; $7a1a: $7b
	ld   d, d                                        ; $7a1b: $52
	dec  c                                           ; $7a1c: $0d
	ld   a, b                                        ; $7a1d: $78
	ld   [hl], a                                     ; $7a1e: $77
	ld   b, $7f                                      ; $7a1f: $06 $7f
	ld   [bc], a                                     ; $7a21: $02
	ld   a, e                                        ; $7a22: $7b
	inc  b                                           ; $7a23: $04
	jr   nz, jr_042_7a9e                             ; $7a24: $20 $78

	dec  b                                           ; $7a26: $05
	ld   a, [bc]                                     ; $7a27: $0a
	and  b                                           ; $7a28: $a0
	inc  b                                           ; $7a29: $04
	push af                                          ; $7a2a: $f5
	ld   d, h                                        ; $7a2b: $54
	ld   l, l                                        ; $7a2c: $6d
	adc  a                                           ; $7a2d: $8f
	ld   a, h                                        ; $7a2e: $7c
	dec  c                                           ; $7a2f: $0d
	inc  bc                                          ; $7a30: $03
	ld   l, l                                        ; $7a31: $6d
	dec  b                                           ; $7a32: $05
	add  hl, de                                      ; $7a33: $19
	ld   a, b                                        ; $7a34: $78
	and  c                                           ; $7a35: $a1
	ld   [hl], l                                     ; $7a36: $75
	ld   h, a                                        ; $7a37: $67
	sub  [hl]                                        ; $7a38: $96
	sbc  a                                           ; $7a39: $9f
	dec  c                                           ; $7a3a: $0d
	nop                                              ; $7a3b: $00
	ld   a, [bc]                                     ; $7a3c: $0a
	inc  e                                           ; $7a3d: $1c
	ld   bc, $0202                                   ; $7a3e: $01 $02 $02
	ld   bc, $7d75                                   ; $7a41: $01 $75 $7d
	sbc  [hl]                                        ; $7a44: $9e
	dec  b                                           ; $7a45: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a46: $cf
	adc  a                                           ; $7a47: $8f
	adc  h                                           ; $7a48: $8c
	ld   h, a                                        ; $7a49: $67
	ld   a, [$000d]                                  ; $7a4a: $fa $0d $00
	ld   a, [bc]                                     ; $7a4d: $0a
	dec  h                                           ; $7a4e: $25
	ld   bc, $011c                                   ; $7a4f: $01 $1c $01
	ld   bc, $0101                                   ; $7a52: $01 $01 $01
	ld   e, b                                        ; $7a55: $58
	inc  b                                           ; $7a56: $04
	ld   a, e                                        ; $7a57: $7b
	sbc  d                                           ; $7a58: $9a
	ld   h, e                                        ; $7a59: $63
	adc  h                                           ; $7a5a: $8c
	ld   [hl], l                                     ; $7a5b: $75
	ld   h, l                                        ; $7a5c: $65
	ld   l, l                                        ; $7a5d: $6d
	sbc  a                                           ; $7a5e: $9f
	dec  c                                           ; $7a5f: $0d
	nop                                              ; $7a60: $00
	ld   a, [bc]                                     ; $7a61: $0a
	inc  e                                           ; $7a62: $1c
	ld   bc, $0000                                   ; $7a63: $01 $00 $00
	ld   bc, $6d03                                   ; $7a66: $01 $03 $6d
	dec  b                                           ; $7a69: $05
	add  hl, de                                      ; $7a6a: $19
	ld   a, l                                        ; $7a6b: $7d
	sbc  [hl]                                        ; $7a6c: $9e
	dec  b                                           ; $7a6d: $05
	ret  nz                                          ; $7a6e: $c0

	adc  a                                           ; $7a6f: $8f
	ld   a, [hl]                                     ; $7a70: $7e
	dec  b                                           ; $7a71: $05
	ret  nz                                          ; $7a72: $c0

	adc  [hl]                                        ; $7a73: $8e
	adc  c                                           ; $7a74: $89
	ld   [hl], a                                     ; $7a75: $77
	dec  c                                           ; $7a76: $0d
	inc  bc                                          ; $7a77: $03
	ld   h, l                                        ; $7a78: $65
	inc  bc                                          ; $7a79: $03
	rst  $30                                         ; $7a7a: $f7
	ld   h, l                                        ; $7a7b: $65
	ld   [hl], h                                     ; $7a7c: $74
	ld   d, d                                        ; $7a7d: $52
	ld   e, e                                        ; $7a7e: $5b
	adc  h                                           ; $7a7f: $8c
	ld   h, a                                        ; $7a80: $67
	sbc  a                                           ; $7a81: $9f
	ld   h, e                                        ; $7a82: $63
	adc  d                                           ; $7a83: $8a
	sub  a                                           ; $7a84: $97
	ld   l, b                                        ; $7a85: $68
	sbc  [hl]                                        ; $7a86: $9e
	dec  c                                           ; $7a87: $0d
	ld   a, b                                        ; $7a88: $78
	adc  h                                           ; $7a89: $8c
	ld   e, a                                        ; $7a8a: $5f
	ld   l, b                                        ; $7a8b: $68
	sbc  [hl]                                        ; $7a8c: $9e
	dec  b                                           ; $7a8d: $05
	ldh  [rTIMA], a                                  ; $7a8e: $e0 $05
	db   $dd                                         ; $7a90: $dd
	ld   h, l                                        ; $7a91: $65
	ld   [hl], h                                     ; $7a92: $74
	ld   [bc], a                                     ; $7a93: $02
	inc  [hl]                                        ; $7a94: $34
	ld   h, e                                        ; $7a95: $63
	ld   d, d                                        ; $7a96: $52
	sbc  a                                           ; $7a97: $9f
	dec  c                                           ; $7a98: $0d
	nop                                              ; $7a99: $00
	ld   a, [bc]                                     ; $7a9a: $0a
	ld   bc, $9a6b                                   ; $7a9b: $01 $6b $9a

jr_042_7a9e:
	ld   [hl], l                                     ; $7a9e: $75
	ld   a, l                                        ; $7a9f: $7d
	sbc  [hl]                                        ; $7aa0: $9e
	inc  b                                           ; $7aa1: $04
	adc  a                                           ; $7aa2: $8f
	inc  b                                           ; $7aa3: $04
	xor  d                                           ; $7aa4: $aa
	ld   a, h                                        ; $7aa5: $7c
	ld   [bc], a                                     ; $7aa6: $02
	or   d                                           ; $7aa7: $b2
	inc  bc                                          ; $7aa8: $03
	ld   c, a                                        ; $7aa9: $4f
	ld   a, h                                        ; $7aaa: $7c
	inc  bc                                          ; $7aab: $03
	ld   l, l                                        ; $7aac: $6d
	dec  b                                           ; $7aad: $05
	add  hl, de                                      ; $7aae: $19
	and  b                                           ; $7aaf: $a0
	dec  c                                           ; $7ab0: $0d
	nop                                              ; $7ab1: $00
	dec  b                                           ; $7ab2: $05
	ld   b, b                                        ; $7ab3: $40
	ld   b, d                                        ; $7ab4: $42
	inc  bc                                          ; $7ab5: $03
	ld   b, d                                        ; $7ab6: $42
	ld   bc, $2801                                   ; $7ab7: $01 $01 $28
	nop                                              ; $7aba: $00
	ld   bc, $7e03                                   ; $7abb: $01 $03 $7e
	sbc  l                                           ; $7abe: $9d
	sbc  b                                           ; $7abf: $98
	adc  h                                           ; $7ac0: $8c
	ld   h, a                                        ; $7ac1: $67
	sbc  a                                           ; $7ac2: $9f
	dec  c                                           ; $7ac3: $0d
	nop                                              ; $7ac4: $00
	ld   a, [bc]                                     ; $7ac5: $0a
	dec  c                                           ; $7ac6: $0d
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	rrca                                             ; $7ac9: $0f
	nop                                              ; $7aca: $00
	ld   bc, $1e09                                   ; $7acb: $01 $09 $1e
	add  hl, hl                                      ; $7ace: $29
	ld   [bc], a                                     ; $7acf: $02
	nop                                              ; $7ad0: $00
	ld   bc, $ffff                                   ; $7ad1: $01 $ff $ff
	ld   d, b                                        ; $7ad4: $50
	sub  a                                           ; $7ad5: $97
	ld   sp, hl                                      ; $7ad6: $f9
	dec  c                                           ; $7ad7: $0d
	nop                                              ; $7ad8: $00
	inc  e                                           ; $7ad9: $1c
	ld   bc, $0303                                   ; $7ada: $01 $03 $03
	ld   bc, $5477                                   ; $7add: $01 $77 $54
	ld   h, l                                        ; $7ae0: $65
	ld   l, l                                        ; $7ae1: $6d
	and  c                                           ; $7ae2: $a1
	ld   [hl], l                                     ; $7ae3: $75
	ld   h, a                                        ; $7ae4: $67
	ld   e, c                                        ; $7ae5: $59
	sbc  [hl]                                        ; $7ae6: $9e
	dec  c                                           ; $7ae7: $0d
	ld   [bc], a                                     ; $7ae8: $02
	ld   [hl], d                                     ; $7ae9: $72
	inc  bc                                          ; $7aea: $03
	dec  bc                                          ; $7aeb: $0b
	ld   e, d                                        ; $7aec: $5a
	sbc  l                                           ; $7aed: $9d
	sbc  c                                           ; $7aee: $99
	ld   d, d                                        ; $7aef: $52
	ld   [hl], l                                     ; $7af0: $75
	ld   h, a                                        ; $7af1: $67
	sub  [hl]                                        ; $7af2: $96
	sbc  a                                           ; $7af3: $9f
	dec  c                                           ; $7af4: $0d
	nop                                              ; $7af5: $00
	ld   a, [bc]                                     ; $7af6: $0a
	rrca                                             ; $7af7: $0f
	nop                                              ; $7af8: $00
	ld   bc, $6701                                   ; $7af9: $01 $01 $67
	adc  l                                           ; $7afc: $8d
	adc  h                                           ; $7afd: $8c
	ld   l, c                                        ; $7afe: $69
	and  c                                           ; $7aff: $a1
	rst  $38                                         ; $7b00: $ff
	rst  $38                                         ; $7b01: $ff
	dec  c                                           ; $7b02: $0d
	ld   a, b                                        ; $7b03: $78
	and  c                                           ; $7b04: $a1
	ld   l, [hl]                                     ; $7b05: $6e
	ld   e, c                                        ; $7b06: $59
	sbc  [hl]                                        ; $7b07: $9e
	inc  b                                           ; $7b08: $04
	dec  c                                           ; $7b09: $0d
	inc  bc                                          ; $7b0a: $03
	cp   $5a                                         ; $7b0b: $fe $5a
	sbc  l                                           ; $7b0d: $9d
	sbc  c                                           ; $7b0e: $99
	ld   e, l                                        ; $7b0f: $5d
	ld   [hl], h                                     ; $7b10: $74
	rst  $38                                         ; $7b11: $ff
	rst  $38                                         ; $7b12: $ff
	dec  c                                           ; $7b13: $0d
	nop                                              ; $7b14: $00
	ld   a, [bc]                                     ; $7b15: $0a
	inc  e                                           ; $7b16: $1c
	ld   bc, $0404                                   ; $7b17: $01 $04 $04
	ld   bc, $546b                                   ; $7b1a: $01 $6b $54
	ld   [hl], l                                     ; $7b1d: $75
	ld   h, a                                        ; $7b1e: $67
	ld   e, c                                        ; $7b1f: $59
	rst  $38                                         ; $7b20: $ff
	rst  $38                                         ; $7b21: $ff
	ld   l, e                                        ; $7b22: $6b
	sbc  d                                           ; $7b23: $9a
	ld   [hl], l                                     ; $7b24: $75
	ld   a, l                                        ; $7b25: $7d
	sbc  [hl]                                        ; $7b26: $9e
	dec  c                                           ; $7b27: $0d
	ld   [bc], a                                     ; $7b28: $02
	and  l                                           ; $7b29: $a5
	inc  b                                           ; $7b2a: $04
	xor  d                                           ; $7b2b: $aa
	ld   a, h                                        ; $7b2c: $7c
	inc  bc                                          ; $7b2d: $03
	ld   l, l                                        ; $7b2e: $6d
	dec  b                                           ; $7b2f: $05
	add  hl, de                                      ; $7b30: $19
	ld   a, l                                        ; $7b31: $7d
	inc  bc                                          ; $7b32: $03
	and  a                                           ; $7b33: $a7
	and  c                                           ; $7b34: $a1
	ld   l, [hl]                                     ; $7b35: $6e
	inc  b                                           ; $7b36: $04
	ld   a, b                                        ; $7b37: $78
	ld   e, d                                        ; $7b38: $5a
	dec  c                                           ; $7b39: $0d
	ld   d, d                                        ; $7b3a: $52
	ld   d, d                                        ; $7b3b: $52
	ld   [hl], l                                     ; $7b3c: $75
	ld   h, a                                        ; $7b3d: $67
	ld   a, e                                        ; $7b3e: $7b
	rst  $38                                         ; $7b3f: $ff
	rst  $38                                         ; $7b40: $ff
	dec  c                                           ; $7b41: $0d
	nop                                              ; $7b42: $00
	ld   a, [bc]                                     ; $7b43: $0a
	dec  e                                           ; $7b44: $1d
	ld   b, b                                        ; $7b45: $40
	ld   de, $1103                                   ; $7b46: $11 $03 $11
	ld   bc, $2902                                   ; $7b49: $01 $02 $29
	nop                                              ; $7b4c: $00
	ld   bc, $9075                                   ; $7b4d: $01 $75 $90
	sbc  [hl]                                        ; $7b50: $9e
	inc  bc                                          ; $7b51: $03
	inc  c                                           ; $7b52: $0c
	inc  b                                           ; $7b53: $04
	xor  d                                           ; $7b54: $aa
	ld   e, c                                        ; $7b55: $59
	sub  a                                           ; $7b56: $97
	inc  b                                           ; $7b57: $04
	dec  c                                           ; $7b58: $0d
	inc  bc                                          ; $7b59: $03
	cp   $5a                                         ; $7b5a: $fe $5a
	sbc  l                                           ; $7b5c: $9d
	sbc  c                                           ; $7b5d: $99
	ld   d, d                                        ; $7b5e: $52
	dec  c                                           ; $7b5f: $0d
	ld   a, b                                        ; $7b60: $78
	and  c                                           ; $7b61: $a1
	ld   [hl], h                                     ; $7b62: $74
	rst  $38                                         ; $7b63: $ff
	rst  $38                                         ; $7b64: $ff
	ld   d, b                                        ; $7b65: $50
	adc  h                                           ; $7b66: $8c
	sbc  b                                           ; $7b67: $98
	adc  c                                           ; $7b68: $89
	adc  a                                           ; $7b69: $8f
	sub  a                                           ; $7b6a: $97
	sbc  d                                           ; $7b6b: $9a
	ld   l, l                                        ; $7b6c: $6d
	dec  c                                           ; $7b6d: $0d
	sub  b                                           ; $7b6e: $90
	ld   a, h                                        ; $7b6f: $7c
	ld   h, [hl]                                     ; $7b70: $66
	sub  c                                           ; $7b71: $91
	ld   d, b                                        ; $7b72: $50
	sbc  b                                           ; $7b73: $98
	adc  h                                           ; $7b74: $8c
	ld   l, c                                        ; $7b75: $69
	and  c                                           ; $7b76: $a1
	ld   a, e                                        ; $7b77: $7b
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	dec  c                                           ; $7b7a: $0d
	nop                                              ; $7b7b: $00
	ld   a, [bc]                                     ; $7b7c: $0a
	inc  e                                           ; $7b7d: $1c
	ld   bc, $0000                                   ; $7b7e: $01 $00 $00
	ld   bc, $7976                                   ; $7b81: $01 $76 $79
	ld   e, c                                        ; $7b84: $59
	ld   e, l                                        ; $7b85: $5d
	sbc  [hl]                                        ; $7b86: $9e
	ld   [bc], a                                     ; $7b87: $02
	and  l                                           ; $7b88: $a5
	ld   [bc], a                                     ; $7b89: $02
	sub  e                                           ; $7b8a: $93
	ld   a, l                                        ; $7b8b: $7d
	ld   e, b                                        ; $7b8c: $58
	inc  bc                                          ; $7b8d: $03
	and  a                                           ; $7b8e: $a7
	adc  l                                           ; $7b8f: $8d
	halt                                             ; $7b90: $76
	ld   d, d                                        ; $7b91: $52
	ld   d, h                                        ; $7b92: $54
	dec  c                                           ; $7b93: $0d
	ld   h, c                                        ; $7b94: $61
	halt                                             ; $7b95: $76
	ld   a, c                                        ; $7b96: $79
	ld   h, l                                        ; $7b97: $65
	adc  h                                           ; $7b98: $8c
	ld   h, a                                        ; $7b99: $67
	ld   a, h                                        ; $7b9a: $7c
	ld   [hl], l                                     ; $7b9b: $75
	sbc  [hl]                                        ; $7b9c: $9e
	ld   a, l                                        ; $7b9d: $7d
	sub  d                                           ; $7b9e: $92
	ld   e, l                                        ; $7b9f: $5d
	dec  c                                           ; $7ba0: $0d
	ld   [bc], a                                     ; $7ba1: $02
	or   l                                           ; $7ba2: $b5
	ld   [hl], c                                     ; $7ba3: $71
	ld   [hl], h                                     ; $7ba4: $74
	inc  bc                                          ; $7ba5: $03
	and  a                                           ; $7ba6: $a7
	and  c                                           ; $7ba7: $a1
	ld   [hl], l                                     ; $7ba8: $75
	ld   e, l                                        ; $7ba9: $5d
	ld   l, [hl]                                     ; $7baa: $6e
	ld   h, e                                        ; $7bab: $63
	ld   d, d                                        ; $7bac: $52
	sbc  a                                           ; $7bad: $9f
	dec  c                                           ; $7bae: $0d
	nop                                              ; $7baf: $00
	ld   a, [bc]                                     ; $7bb0: $0a
	dec  b                                           ; $7bb1: $05
	add  b                                           ; $7bb2: $80
	add  $01                                         ; $7bb3: $c6 $01
	ld   bc, $0f00                                   ; $7bb5: $01 $00 $0f
	nop                                              ; $7bb8: $00
	ld   bc, $7d01                                   ; $7bb9: $01 $01 $7d
	ld   d, d                                        ; $7bbc: $52
	sbc  [hl]                                        ; $7bbd: $9e
	sbc  l                                           ; $7bbe: $9d
	ld   e, c                                        ; $7bbf: $59
	sbc  b                                           ; $7bc0: $98
	adc  h                                           ; $7bc1: $8c
	ld   h, l                                        ; $7bc2: $65
	ld   l, l                                        ; $7bc3: $6d
	sbc  a                                           ; $7bc4: $9f
	dec  c                                           ; $7bc5: $0d
	ld   l, e                                        ; $7bc6: $6b
	sbc  d                                           ; $7bc7: $9a
	ld   [hl], l                                     ; $7bc8: $75
	ld   a, l                                        ; $7bc9: $7d
	inc  bc                                          ; $7bca: $03
	add  e                                           ; $7bcb: $83
	dec  b                                           ; $7bcc: $05
	dec  c                                           ; $7bcd: $0d
	ld   h, l                                        ; $7bce: $65
	adc  h                                           ; $7bcf: $8c
	ld   h, a                                        ; $7bd0: $67
	sbc  a                                           ; $7bd1: $9f
	dec  c                                           ; $7bd2: $0d
	nop                                              ; $7bd3: $00
	ld   a, [bc]                                     ; $7bd4: $0a
	dec  c                                           ; $7bd5: $0d
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	inc  hl                                          ; $7bd8: $23
	ld   bc, $6b01                                   ; $7bd9: $01 $01 $6b
	sbc  d                                           ; $7bdc: $9a
	ld   h, [hl]                                     ; $7bdd: $66
	sub  c                                           ; $7bde: $91
	sbc  [hl]                                        ; $7bdf: $9e
	inc  bc                                          ; $7be0: $03
	ld   l, h                                        ; $7be1: $6c
	ld   h, l                                        ; $7be2: $65
	inc  bc                                          ; $7be3: $03
	and  a                                           ; $7be4: $a7
	adc  [hl]                                        ; $7be5: $8e
	halt                                             ; $7be6: $76
	ld   h, a                                        ; $7be7: $67
	sbc  c                                           ; $7be8: $99
	ld   e, c                                        ; $7be9: $59
	sbc  a                                           ; $7bea: $9f
	dec  c                                           ; $7beb: $0d
	nop                                              ; $7bec: $00
	ld   a, [bc]                                     ; $7bed: $0a
	dec  h                                           ; $7bee: $25
	nop                                              ; $7bef: $00
	rrca                                             ; $7bf0: $0f
	nop                                              ; $7bf1: $00
	ld   bc, $5401                                   ; $7bf2: $01 $01 $54
	db   $fc                                         ; $7bf5: $fc
	and  c                                           ; $7bf6: $a1
	sub  [hl]                                        ; $7bf7: $96
	ld   e, l                                        ; $7bf8: $5d
	inc  b                                           ; $7bf9: $04
	ld   b, d                                        ; $7bfa: $42
	ld   l, l                                        ; $7bfb: $6d
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	dec  c                                           ; $7bfe: $0d
	ld   e, c                                        ; $7bff: $59
	ld   a, b                                        ; $7c00: $78
	sbc  b                                           ; $7c01: $98
	inc  b                                           ; $7c02: $04
	dec  c                                           ; $7c03: $0d
	ld   e, d                                        ; $7c04: $5a
	dec  b                                           ; $7c05: $05
	inc  de                                          ; $7c06: $13
	ld   a, c                                        ; $7c07: $79
	ld   a, b                                        ; $7c08: $78
	ld   [hl], c                                     ; $7c09: $71
	ld   l, l                                        ; $7c0a: $6d
	ld   l, h                                        ; $7c0b: $6c
	sbc  a                                           ; $7c0c: $9f
	dec  c                                           ; $7c0d: $0d
	nop                                              ; $7c0e: $00
	ld   a, [bc]                                     ; $7c0f: $0a
	ld   bc, $ffff                                   ; $7c10: $01 $ff $ff
	ld   [hl], l                                     ; $7c13: $75
	sub  b                                           ; $7c14: $90
	sbc  [hl]                                        ; $7c15: $9e
	ld   d, d                                        ; $7c16: $52
	ld   e, e                                        ; $7c17: $5b
	ld   a, b                                        ; $7c18: $78
	sbc  b                                           ; $7c19: $98
	inc  bc                                          ; $7c1a: $03
	inc  c                                           ; $7c1b: $0c
	inc  b                                           ; $7c1c: $04
	xor  d                                           ; $7c1d: $aa
	ld   a, h                                        ; $7c1e: $7c
	dec  c                                           ; $7c1f: $0d
	inc  bc                                          ; $7c20: $03
	ld   l, l                                        ; $7c21: $6d
	dec  b                                           ; $7c22: $05
	add  hl, de                                      ; $7c23: $19
	sub  d                                           ; $7c24: $92
	ld   h, a                                        ; $7c25: $67
	and  c                                           ; $7c26: $a1
	ld   h, [hl]                                     ; $7c27: $66
	sub  c                                           ; $7c28: $91
	ld   [hl], c                                     ; $7c29: $71
	ld   l, l                                        ; $7c2a: $6d
	ld   a, b                                        ; $7c2b: $78
	rst  $38                                         ; $7c2c: $ff
	rst  $38                                         ; $7c2d: $ff
	dec  c                                           ; $7c2e: $0d
	nop                                              ; $7c2f: $00
	ld   a, [bc]                                     ; $7c30: $0a
	ld   bc, $9e8c                                   ; $7c31: $01 $8c $9e
	ld   d, d                                        ; $7c34: $52
	ld   d, d                                        ; $7c35: $52
	ld   e, c                                        ; $7c36: $59
	sbc  [hl]                                        ; $7c37: $9e
	ld   [bc], a                                     ; $7c38: $02
	and  l                                           ; $7c39: $a5
	inc  b                                           ; $7c3a: $04
	add  hl, hl                                      ; $7c3b: $29
	ld   e, c                                        ; $7c3c: $59
	sub  a                                           ; $7c3d: $97
	dec  c                                           ; $7c3e: $0d
	ld   e, d                                        ; $7c3f: $5a
	and  c                                           ; $7c40: $a1
	ld   a, [hl]                                     ; $7c41: $7e
	sbc  e                                           ; $7c42: $9b
	ld   d, h                                        ; $7c43: $54
	ld   a, [$0dfa]                                  ; $7c44: $fa $fa $0d
	nop                                              ; $7c47: $00
	ld   a, [bc]                                     ; $7c48: $0a
	add  hl, hl                                      ; $7c49: $29
	ld   [bc], a                                     ; $7c4a: $02
	nop                                              ; $7c4b: $00
	dec  c                                           ; $7c4c: $0d
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	inc  hl                                          ; $7c4f: $23
	sbc  l                                           ; $7c50: $9d
	inc  e                                           ; $7c51: $1c
	ld   bc, $0202                                   ; $7c52: $01 $02 $02
	dec  e                                           ; $7c55: $1d
	ld   b, b                                        ; $7c56: $40
	ld   de, $1103                                   ; $7c57: $11 $03 $11
	ld   bc, $2902                                   ; $7c5a: $01 $02 $29
	nop                                              ; $7c5d: $00
	ld   bc, $0008                                   ; $7c5e: $01 $08 $00
	ld   h, e                                        ; $7c61: $63
	and  c                                           ; $7c62: $a1
	sbc  a                                           ; $7c63: $9f
	inc  bc                                          ; $7c64: $03
	rst  JumpTable                                         ; $7c65: $df
	ld   d, d                                        ; $7c66: $52
	ld   [hl], l                                     ; $7c67: $75
	ld   h, a                                        ; $7c68: $67
	ld   a, [$040d]                                  ; $7c69: $fa $0d $04
	ldh  a, [c]                                      ; $7c6c: $f2
	add  c                                           ; $7c6d: $81
	ld   h, [hl]                                     ; $7c6e: $66
	sub  c                                           ; $7c6f: $91
	ld   a, b                                        ; $7c70: $78
	ld   d, d                                        ; $7c71: $52
	ld   a, h                                        ; $7c72: $7c
	ld   [hl], l                                     ; $7c73: $75
	ld   h, a                                        ; $7c74: $67
	sub  [hl]                                        ; $7c75: $96
	ld   a, [$c70d]                                  ; $7c76: $fa $0d $c7
	xor  [hl]                                        ; $7c79: $ae
	jp   nc, $04ae                                   ; $7c7a: $d2 $ae $04

	dec  de                                          ; $7c7d: $1b
	ld   d, d                                        ; $7c7e: $52
	ld   [hl], h                                     ; $7c7f: $74
	ld   e, l                                        ; $7c80: $5d
	ld   l, [hl]                                     ; $7c81: $6e
	ld   h, e                                        ; $7c82: $63
	ld   d, d                                        ; $7c83: $52
	ld   a, [$000d]                                  ; $7c84: $fa $0d $00
	ld   a, [bc]                                     ; $7c87: $0a
	rlca                                             ; $7c88: $07
	pop  bc                                          ; $7c89: $c1
	add  hl, bc                                      ; $7c8a: $09
	inc  bc                                          ; $7c8b: $03
	jr   nz, jr_042_7c8f                             ; $7c8c: $20 $01

	ld   c, b                                        ; $7c8e: $48

jr_042_7c8f:
	inc  hl                                          ; $7c8f: $23
	nop                                              ; $7c90: $00
	inc  e                                           ; $7c91: $1c
	ld   bc, $0000                                   ; $7c92: $01 $00 $00
	ld   bc, $7d75                                   ; $7c95: $01 $75 $7d
	sbc  [hl]                                        ; $7c98: $9e
	ld   [bc], a                                     ; $7c99: $02
	rst  $30                                         ; $7c9a: $f7
	inc  b                                           ; $7c9b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c9c: $cf
	ld   h, l                                        ; $7c9d: $65
	adc  h                                           ; $7c9e: $8c
	ld   h, a                                        ; $7c9f: $67
	sbc  a                                           ; $7ca0: $9f
	dec  c                                           ; $7ca1: $0d
	ld   [bc], a                                     ; $7ca2: $02
	and  l                                           ; $7ca3: $a5
	inc  b                                           ; $7ca4: $04
	xor  d                                           ; $7ca5: $aa
	ld   e, c                                        ; $7ca6: $59
	sub  a                                           ; $7ca7: $97
	sbc  [hl]                                        ; $7ca8: $9e
	ld   h, c                                        ; $7ca9: $61
	ld   a, h                                        ; $7caa: $7c
	inc  bc                                          ; $7cab: $03
	ld   l, a                                        ; $7cac: $6f
	ld   [bc], a                                     ; $7cad: $02
	xor  c                                           ; $7cae: $a9
	ld   a, l                                        ; $7caf: $7d
	dec  c                                           ; $7cb0: $0d
	ld   [bc], a                                     ; $7cb1: $02
	or   d                                           ; $7cb2: $b2
	inc  bc                                          ; $7cb3: $03
	ld   c, a                                        ; $7cb4: $4f
	ld   a, h                                        ; $7cb5: $7c
	inc  bc                                          ; $7cb6: $03
	ld   l, l                                        ; $7cb7: $6d
	dec  b                                           ; $7cb8: $05
	add  hl, de                                      ; $7cb9: $19
	and  b                                           ; $7cba: $a0
	ld   h, l                                        ; $7cbb: $65
	ld   [hl], h                                     ; $7cbc: $74
	sub  b                                           ; $7cbd: $90
	sub  a                                           ; $7cbe: $97
	ld   d, d                                        ; $7cbf: $52
	adc  h                                           ; $7cc0: $8c
	ld   h, a                                        ; $7cc1: $67
	sbc  a                                           ; $7cc2: $9f
	dec  c                                           ; $7cc3: $0d
	nop                                              ; $7cc4: $00
	ld   a, [bc]                                     ; $7cc5: $0a
	ld   bc, $6d03                                   ; $7cc6: $01 $03 $6d
	dec  b                                           ; $7cc9: $05
	add  hl, de                                      ; $7cca: $19
	ld   a, l                                        ; $7ccb: $7d
	sbc  [hl]                                        ; $7ccc: $9e
	ld   d, b                                        ; $7ccd: $50
	ld   l, l                                        ; $7cce: $6d
	ld   h, l                                        ; $7ccf: $65
	ld   l, l                                        ; $7cd0: $6d
	ld   l, a                                        ; $7cd1: $6f
	ld   [bc], a                                     ; $7cd2: $02
	sbc  b                                           ; $7cd3: $98
	inc  bc                                          ; $7cd4: $03
	nop                                              ; $7cd5: $00
	ld   a, h                                        ; $7cd6: $7c
	dec  c                                           ; $7cd7: $0d
	db   $e3                                         ; $7cd8: $e3
	push af                                          ; $7cd9: $f5
	pop  de                                          ; $7cda: $d1
	ei                                               ; $7cdb: $fb
	ld   e, d                                        ; $7cdc: $5a
	ld   [bc], a                                     ; $7cdd: $02
	ld   e, e                                        ; $7cde: $5b
	inc  bc                                          ; $7cdf: $03
	sbc  $75                                         ; $7ce0: $de $75
	ld   [bc], a                                     ; $7ce2: $02
	rst  $38                                         ; $7ce3: $ff
	ld   e, a                                        ; $7ce4: $5f
	inc  bc                                          ; $7ce5: $03
	and  b                                           ; $7ce6: $a0
	ld   l, a                                        ; $7ce7: $6f
	dec  c                                           ; $7ce8: $0d
	adc  h                                           ; $7ce9: $8c
	ld   h, a                                        ; $7cea: $67
	sbc  a                                           ; $7ceb: $9f
	dec  c                                           ; $7cec: $0d
	nop                                              ; $7ced: $00
	ld   a, [bc]                                     ; $7cee: $0a
	ld   bc, $786f                                   ; $7cef: $01 $6f $78
	adc  l                                           ; $7cf2: $8d
	ld   a, c                                        ; $7cf3: $79
	sbc  [hl]                                        ; $7cf4: $9e
	ld   d, b                                        ; $7cf5: $50
	ld   l, l                                        ; $7cf6: $6d
	ld   h, l                                        ; $7cf7: $65
	ld   a, h                                        ; $7cf8: $7c
	inc  bc                                          ; $7cf9: $03
	ld   l, l                                        ; $7cfa: $6d
	dec  b                                           ; $7cfb: $05
	add  hl, de                                      ; $7cfc: $19
	ld   a, l                                        ; $7cfd: $7d
	dec  c                                           ; $7cfe: $0d
	ld   [bc], a                                     ; $7cff: $02
	dec  h                                           ; $7d00: $25
	ld   [bc], a                                     ; $7d01: $02
	ld   a, e                                        ; $7d02: $7b
	ld   d, d                                        ; $7d03: $52
	ld   [hl], l                                     ; $7d04: $75
	ld   h, a                                        ; $7d05: $67
	sbc  a                                           ; $7d06: $9f
	dec  c                                           ; $7d07: $0d
	nop                                              ; $7d08: $00
	ld   a, [bc]                                     ; $7d09: $0a
	ld   bc, $e005                                   ; $7d0a: $01 $05 $e0
	inc  bc                                          ; $7d0d: $03
	sub  b                                           ; $7d0e: $90
	dec  b                                           ; $7d0f: $05
	ld   a, [bc]                                     ; $7d10: $0a
	sbc  [hl]                                        ; $7d11: $9e
	cp   d                                           ; $7d12: $ba
	push de                                          ; $7d13: $d5
	ei                                               ; $7d14: $fb
	jp   z, $029e                                    ; $7d15: $ca $9e $02

	and  c                                           ; $7d18: $a1
	ld   [bc], a                                     ; $7d19: $02
	ld   a, e                                        ; $7d1a: $7b
	ld   d, d                                        ; $7d1b: $52
	dec  c                                           ; $7d1c: $0d
	ld   a, b                                        ; $7d1d: $78
	ld   [hl], a                                     ; $7d1e: $77
	ld   b, $7f                                      ; $7d1f: $06 $7f
	ld   [bc], a                                     ; $7d21: $02
	ld   a, e                                        ; $7d22: $7b
	inc  b                                           ; $7d23: $04
	jr   nz, jr_042_7d9e                             ; $7d24: $20 $78

	dec  b                                           ; $7d26: $05
	ld   a, [bc]                                     ; $7d27: $0a
	and  b                                           ; $7d28: $a0
	inc  b                                           ; $7d29: $04
	push af                                          ; $7d2a: $f5
	ld   d, h                                        ; $7d2b: $54
	ld   l, l                                        ; $7d2c: $6d
	adc  a                                           ; $7d2d: $8f
	ld   a, h                                        ; $7d2e: $7c
	dec  c                                           ; $7d2f: $0d
	inc  bc                                          ; $7d30: $03
	ld   l, l                                        ; $7d31: $6d
	dec  b                                           ; $7d32: $05
	add  hl, de                                      ; $7d33: $19
	ld   a, b                                        ; $7d34: $78
	and  c                                           ; $7d35: $a1
	ld   [hl], l                                     ; $7d36: $75
	ld   h, a                                        ; $7d37: $67
	sub  [hl]                                        ; $7d38: $96
	sbc  a                                           ; $7d39: $9f
	dec  c                                           ; $7d3a: $0d
	nop                                              ; $7d3b: $00
	ld   a, [bc]                                     ; $7d3c: $0a
	inc  e                                           ; $7d3d: $1c
	ld   bc, $0202                                   ; $7d3e: $01 $02 $02
	ld   bc, $7d75                                   ; $7d41: $01 $75 $7d
	sbc  [hl]                                        ; $7d44: $9e
	dec  b                                           ; $7d45: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d46: $cf
	adc  a                                           ; $7d47: $8f
	adc  h                                           ; $7d48: $8c
	ld   h, a                                        ; $7d49: $67
	ld   a, [$000d]                                  ; $7d4a: $fa $0d $00
	ld   a, [bc]                                     ; $7d4d: $0a
	dec  h                                           ; $7d4e: $25
	ld   bc, $011c                                   ; $7d4f: $01 $1c $01
	ld   bc, $0101                                   ; $7d52: $01 $01 $01
	ld   e, b                                        ; $7d55: $58
	inc  b                                           ; $7d56: $04
	ld   a, e                                        ; $7d57: $7b
	sbc  d                                           ; $7d58: $9a
	ld   h, e                                        ; $7d59: $63
	adc  h                                           ; $7d5a: $8c
	ld   [hl], l                                     ; $7d5b: $75
	ld   h, l                                        ; $7d5c: $65
	ld   l, l                                        ; $7d5d: $6d
	sbc  a                                           ; $7d5e: $9f
	dec  c                                           ; $7d5f: $0d
	nop                                              ; $7d60: $00
	ld   a, [bc]                                     ; $7d61: $0a
	inc  e                                           ; $7d62: $1c
	ld   bc, $0000                                   ; $7d63: $01 $00 $00
	ld   bc, $6d03                                   ; $7d66: $01 $03 $6d
	dec  b                                           ; $7d69: $05
	add  hl, de                                      ; $7d6a: $19
	ld   a, l                                        ; $7d6b: $7d
	sbc  [hl]                                        ; $7d6c: $9e
	dec  b                                           ; $7d6d: $05
	ret  nz                                          ; $7d6e: $c0

	adc  a                                           ; $7d6f: $8f
	ld   a, [hl]                                     ; $7d70: $7e
	dec  b                                           ; $7d71: $05
	ret  nz                                          ; $7d72: $c0

	adc  [hl]                                        ; $7d73: $8e
	adc  c                                           ; $7d74: $89
	ld   [hl], a                                     ; $7d75: $77
	dec  c                                           ; $7d76: $0d
	inc  bc                                          ; $7d77: $03
	ld   h, l                                        ; $7d78: $65
	inc  bc                                          ; $7d79: $03
	rst  $30                                         ; $7d7a: $f7
	ld   h, l                                        ; $7d7b: $65
	ld   [hl], h                                     ; $7d7c: $74
	ld   d, d                                        ; $7d7d: $52
	ld   e, e                                        ; $7d7e: $5b
	adc  h                                           ; $7d7f: $8c
	ld   h, a                                        ; $7d80: $67
	sbc  a                                           ; $7d81: $9f
	ld   h, e                                        ; $7d82: $63
	adc  d                                           ; $7d83: $8a
	sub  a                                           ; $7d84: $97
	ld   l, b                                        ; $7d85: $68
	sbc  [hl]                                        ; $7d86: $9e
	dec  c                                           ; $7d87: $0d
	ld   a, b                                        ; $7d88: $78
	adc  h                                           ; $7d89: $8c
	ld   e, a                                        ; $7d8a: $5f
	ld   l, b                                        ; $7d8b: $68
	sbc  [hl]                                        ; $7d8c: $9e
	dec  b                                           ; $7d8d: $05
	ldh  [rTIMA], a                                  ; $7d8e: $e0 $05
	db   $dd                                         ; $7d90: $dd
	ld   h, l                                        ; $7d91: $65
	ld   [hl], h                                     ; $7d92: $74
	ld   [bc], a                                     ; $7d93: $02
	inc  [hl]                                        ; $7d94: $34
	ld   h, e                                        ; $7d95: $63
	ld   d, d                                        ; $7d96: $52
	sbc  a                                           ; $7d97: $9f
	dec  c                                           ; $7d98: $0d
	nop                                              ; $7d99: $00
	ld   a, [bc]                                     ; $7d9a: $0a
	ld   bc, $9a6b                                   ; $7d9b: $01 $6b $9a

jr_042_7d9e:
	ld   [hl], l                                     ; $7d9e: $75
	ld   a, l                                        ; $7d9f: $7d
	sbc  [hl]                                        ; $7da0: $9e
	inc  b                                           ; $7da1: $04
	adc  a                                           ; $7da2: $8f
	inc  b                                           ; $7da3: $04
	xor  d                                           ; $7da4: $aa
	ld   a, h                                        ; $7da5: $7c
	ld   [bc], a                                     ; $7da6: $02
	or   d                                           ; $7da7: $b2
	inc  bc                                          ; $7da8: $03
	ld   c, a                                        ; $7da9: $4f
	ld   a, h                                        ; $7daa: $7c
	inc  bc                                          ; $7dab: $03
	ld   l, l                                        ; $7dac: $6d
	dec  b                                           ; $7dad: $05
	add  hl, de                                      ; $7dae: $19
	and  b                                           ; $7daf: $a0
	dec  c                                           ; $7db0: $0d
	nop                                              ; $7db1: $00
	dec  b                                           ; $7db2: $05
	ld   b, b                                        ; $7db3: $40
	ld   b, d                                        ; $7db4: $42
	inc  bc                                          ; $7db5: $03
	ld   b, d                                        ; $7db6: $42
	ld   bc, $2801                                   ; $7db7: $01 $01 $28
	nop                                              ; $7dba: $00
	ld   bc, $7e03                                   ; $7dbb: $01 $03 $7e
	sbc  l                                           ; $7dbe: $9d
	sbc  b                                           ; $7dbf: $98
	adc  h                                           ; $7dc0: $8c
	ld   h, a                                        ; $7dc1: $67
	sbc  a                                           ; $7dc2: $9f
	dec  c                                           ; $7dc3: $0d
	nop                                              ; $7dc4: $00
	ld   a, [bc]                                     ; $7dc5: $0a
	dec  c                                           ; $7dc6: $0d
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	rrca                                             ; $7dc9: $0f
	nop                                              ; $7dca: $00
	ld   bc, $1e09                                   ; $7dcb: $01 $09 $1e
	add  hl, hl                                      ; $7dce: $29
	ld   [bc], a                                     ; $7dcf: $02
	nop                                              ; $7dd0: $00
	inc  e                                           ; $7dd1: $1c
	ld   bc, $0303                                   ; $7dd2: $01 $03 $03
	ld   bc, $ffff                                   ; $7dd5: $01 $ff $ff
	ld   d, b                                        ; $7dd8: $50
	sub  a                                           ; $7dd9: $97
	ld   sp, hl                                      ; $7dda: $f9
	dec  c                                           ; $7ddb: $0d
	ld   [hl], a                                     ; $7ddc: $77
	ld   d, h                                        ; $7ddd: $54
	ld   h, l                                        ; $7dde: $65
	ld   l, l                                        ; $7ddf: $6d
	and  c                                           ; $7de0: $a1
	ld   [hl], l                                     ; $7de1: $75
	ld   h, a                                        ; $7de2: $67
	ld   e, c                                        ; $7de3: $59
	sbc  [hl]                                        ; $7de4: $9e
	dec  c                                           ; $7de5: $0d
	ld   [bc], a                                     ; $7de6: $02
	ld   [hl], d                                     ; $7de7: $72
	inc  bc                                          ; $7de8: $03
	dec  bc                                          ; $7de9: $0b
	ld   e, d                                        ; $7dea: $5a
	sbc  l                                           ; $7deb: $9d
	sbc  c                                           ; $7dec: $99
	ld   d, d                                        ; $7ded: $52
	ld   [hl], l                                     ; $7dee: $75
	ld   h, a                                        ; $7def: $67
	sub  [hl]                                        ; $7df0: $96
	sbc  a                                           ; $7df1: $9f
	dec  c                                           ; $7df2: $0d
	nop                                              ; $7df3: $00
	ld   a, [bc]                                     ; $7df4: $0a
	rrca                                             ; $7df5: $0f
	nop                                              ; $7df6: $00
	ld   bc, $6701                                   ; $7df7: $01 $01 $67
	adc  l                                           ; $7dfa: $8d
	adc  h                                           ; $7dfb: $8c
	ld   l, c                                        ; $7dfc: $69
	and  c                                           ; $7dfd: $a1
	rst  $38                                         ; $7dfe: $ff
	rst  $38                                         ; $7dff: $ff
	dec  c                                           ; $7e00: $0d
	ld   a, b                                        ; $7e01: $78
	and  c                                           ; $7e02: $a1
	ld   l, [hl]                                     ; $7e03: $6e
	ld   e, c                                        ; $7e04: $59
	sbc  [hl]                                        ; $7e05: $9e
	inc  b                                           ; $7e06: $04
	dec  c                                           ; $7e07: $0d
	inc  bc                                          ; $7e08: $03
	cp   $5a                                         ; $7e09: $fe $5a
	sbc  l                                           ; $7e0b: $9d
	sbc  c                                           ; $7e0c: $99
	ld   e, l                                        ; $7e0d: $5d
	ld   [hl], h                                     ; $7e0e: $74
	rst  $38                                         ; $7e0f: $ff
	rst  $38                                         ; $7e10: $ff
	dec  c                                           ; $7e11: $0d
	nop                                              ; $7e12: $00
	ld   a, [bc]                                     ; $7e13: $0a
	inc  e                                           ; $7e14: $1c
	ld   bc, $0404                                   ; $7e15: $01 $04 $04
	ld   bc, $546b                                   ; $7e18: $01 $6b $54
	ld   [hl], l                                     ; $7e1b: $75
	ld   h, a                                        ; $7e1c: $67
	ld   e, c                                        ; $7e1d: $59
	rst  $38                                         ; $7e1e: $ff
	rst  $38                                         ; $7e1f: $ff
	ld   l, e                                        ; $7e20: $6b
	sbc  d                                           ; $7e21: $9a
	ld   [hl], l                                     ; $7e22: $75
	ld   a, l                                        ; $7e23: $7d
	sbc  [hl]                                        ; $7e24: $9e
	dec  c                                           ; $7e25: $0d
	ld   [bc], a                                     ; $7e26: $02
	and  l                                           ; $7e27: $a5
	inc  b                                           ; $7e28: $04
	xor  d                                           ; $7e29: $aa
	ld   a, h                                        ; $7e2a: $7c
	inc  bc                                          ; $7e2b: $03
	ld   l, l                                        ; $7e2c: $6d
	dec  b                                           ; $7e2d: $05
	add  hl, de                                      ; $7e2e: $19
	ld   a, l                                        ; $7e2f: $7d
	inc  bc                                          ; $7e30: $03
	and  a                                           ; $7e31: $a7
	and  c                                           ; $7e32: $a1
	ld   l, [hl]                                     ; $7e33: $6e
	inc  b                                           ; $7e34: $04
	ld   a, b                                        ; $7e35: $78
	ld   e, d                                        ; $7e36: $5a
	dec  c                                           ; $7e37: $0d
	ld   d, d                                        ; $7e38: $52
	ld   d, d                                        ; $7e39: $52
	ld   [hl], l                                     ; $7e3a: $75
	ld   h, a                                        ; $7e3b: $67
	ld   a, e                                        ; $7e3c: $7b
	rst  $38                                         ; $7e3d: $ff
	rst  $38                                         ; $7e3e: $ff
	dec  c                                           ; $7e3f: $0d
	nop                                              ; $7e40: $00
	ld   a, [bc]                                     ; $7e41: $0a
	dec  e                                           ; $7e42: $1d
	ld   b, b                                        ; $7e43: $40
	ld   de, $1103                                   ; $7e44: $11 $03 $11
	ld   bc, $2903                                   ; $7e47: $01 $03 $29
	nop                                              ; $7e4a: $00
	ld   bc, $9075                                   ; $7e4b: $01 $75 $90
	sbc  [hl]                                        ; $7e4e: $9e
	inc  bc                                          ; $7e4f: $03
	inc  c                                           ; $7e50: $0c
	inc  b                                           ; $7e51: $04
	xor  d                                           ; $7e52: $aa
	ld   e, c                                        ; $7e53: $59
	sub  a                                           ; $7e54: $97
	inc  b                                           ; $7e55: $04
	dec  c                                           ; $7e56: $0d
	inc  bc                                          ; $7e57: $03
	cp   $5a                                         ; $7e58: $fe $5a
	sbc  l                                           ; $7e5a: $9d
	sbc  c                                           ; $7e5b: $99
	ld   d, d                                        ; $7e5c: $52
	dec  c                                           ; $7e5d: $0d
	ld   a, b                                        ; $7e5e: $78
	and  c                                           ; $7e5f: $a1
	ld   [hl], h                                     ; $7e60: $74
	rst  $38                                         ; $7e61: $ff
	rst  $38                                         ; $7e62: $ff
	ld   d, b                                        ; $7e63: $50
	adc  h                                           ; $7e64: $8c
	sbc  b                                           ; $7e65: $98
	adc  c                                           ; $7e66: $89
	adc  a                                           ; $7e67: $8f
	sub  a                                           ; $7e68: $97
	sbc  d                                           ; $7e69: $9a
	ld   l, l                                        ; $7e6a: $6d
	dec  c                                           ; $7e6b: $0d
	sub  b                                           ; $7e6c: $90
	ld   a, h                                        ; $7e6d: $7c
	ld   h, [hl]                                     ; $7e6e: $66
	sub  c                                           ; $7e6f: $91
	ld   d, b                                        ; $7e70: $50
	sbc  b                                           ; $7e71: $98
	adc  h                                           ; $7e72: $8c
	ld   l, c                                        ; $7e73: $69
	and  c                                           ; $7e74: $a1
	ld   a, e                                        ; $7e75: $7b
	rst  $38                                         ; $7e76: $ff
	rst  $38                                         ; $7e77: $ff
	dec  c                                           ; $7e78: $0d
	nop                                              ; $7e79: $00
	ld   a, [bc]                                     ; $7e7a: $0a
	dec  b                                           ; $7e7b: $05
	add  b                                           ; $7e7c: $80
	add  $01                                         ; $7e7d: $c6 $01
	ld   bc, $1c00                                   ; $7e7f: $01 $00 $1c
	ld   bc, $0000                                   ; $7e82: $01 $00 $00
	ld   bc, $7976                                   ; $7e85: $01 $76 $79
	ld   e, c                                        ; $7e88: $59
	ld   e, l                                        ; $7e89: $5d
	sbc  [hl]                                        ; $7e8a: $9e
	ld   [bc], a                                     ; $7e8b: $02
	and  l                                           ; $7e8c: $a5
	ld   [bc], a                                     ; $7e8d: $02
	sub  e                                           ; $7e8e: $93
	ld   a, l                                        ; $7e8f: $7d
	ld   e, b                                        ; $7e90: $58
	inc  bc                                          ; $7e91: $03
	and  a                                           ; $7e92: $a7
	adc  l                                           ; $7e93: $8d
	halt                                             ; $7e94: $76
	ld   d, d                                        ; $7e95: $52
	ld   d, h                                        ; $7e96: $54
	dec  c                                           ; $7e97: $0d
	ld   h, c                                        ; $7e98: $61
	halt                                             ; $7e99: $76
	ld   a, c                                        ; $7e9a: $79
	ld   h, l                                        ; $7e9b: $65
	adc  h                                           ; $7e9c: $8c
	ld   h, a                                        ; $7e9d: $67
	ld   a, h                                        ; $7e9e: $7c
	ld   [hl], l                                     ; $7e9f: $75
	sbc  [hl]                                        ; $7ea0: $9e
	ld   a, l                                        ; $7ea1: $7d
	sub  d                                           ; $7ea2: $92
	ld   e, l                                        ; $7ea3: $5d
	dec  c                                           ; $7ea4: $0d
	ld   [bc], a                                     ; $7ea5: $02
	or   l                                           ; $7ea6: $b5
	ld   [hl], c                                     ; $7ea7: $71
	ld   [hl], h                                     ; $7ea8: $74
	inc  bc                                          ; $7ea9: $03
	and  a                                           ; $7eaa: $a7
	and  c                                           ; $7eab: $a1
	ld   [hl], l                                     ; $7eac: $75
	ld   e, l                                        ; $7ead: $5d
	ld   l, [hl]                                     ; $7eae: $6e
	ld   h, e                                        ; $7eaf: $63
	ld   d, d                                        ; $7eb0: $52
	sbc  a                                           ; $7eb1: $9f
	dec  c                                           ; $7eb2: $0d
	nop                                              ; $7eb3: $00
	ld   a, [bc]                                     ; $7eb4: $0a
	rrca                                             ; $7eb5: $0f
	nop                                              ; $7eb6: $00
	ld   bc, $7d01                                   ; $7eb7: $01 $01 $7d
	ld   d, d                                        ; $7eba: $52
	sbc  [hl]                                        ; $7ebb: $9e
	sbc  l                                           ; $7ebc: $9d
	ld   e, c                                        ; $7ebd: $59
	sbc  b                                           ; $7ebe: $98
	adc  h                                           ; $7ebf: $8c
	ld   h, l                                        ; $7ec0: $65
	ld   l, l                                        ; $7ec1: $6d
	sbc  a                                           ; $7ec2: $9f
	dec  c                                           ; $7ec3: $0d
	ld   l, e                                        ; $7ec4: $6b
	sbc  d                                           ; $7ec5: $9a
	ld   [hl], l                                     ; $7ec6: $75
	ld   a, l                                        ; $7ec7: $7d
	inc  bc                                          ; $7ec8: $03
	add  e                                           ; $7ec9: $83
	dec  b                                           ; $7eca: $05
	dec  c                                           ; $7ecb: $0d
	ld   h, l                                        ; $7ecc: $65
	adc  h                                           ; $7ecd: $8c
	ld   h, a                                        ; $7ece: $67
	sbc  a                                           ; $7ecf: $9f
	dec  c                                           ; $7ed0: $0d
	nop                                              ; $7ed1: $00
	ld   a, [bc]                                     ; $7ed2: $0a
	dec  c                                           ; $7ed3: $0d
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	inc  hl                                          ; $7ed6: $23
	ld   bc, $6b01                                   ; $7ed7: $01 $01 $6b
	sbc  d                                           ; $7eda: $9a
	ld   h, [hl]                                     ; $7edb: $66
	sub  c                                           ; $7edc: $91
	sbc  [hl]                                        ; $7edd: $9e
	inc  bc                                          ; $7ede: $03
	ld   l, h                                        ; $7edf: $6c
	ld   h, l                                        ; $7ee0: $65
	inc  bc                                          ; $7ee1: $03
	and  a                                           ; $7ee2: $a7
	adc  [hl]                                        ; $7ee3: $8e
	halt                                             ; $7ee4: $76
	ld   h, a                                        ; $7ee5: $67
	sbc  c                                           ; $7ee6: $99
	ld   e, c                                        ; $7ee7: $59
	sbc  a                                           ; $7ee8: $9f
	dec  c                                           ; $7ee9: $0d
	nop                                              ; $7eea: $00
	ld   a, [bc]                                     ; $7eeb: $0a
	dec  h                                           ; $7eec: $25
	nop                                              ; $7eed: $00
	rrca                                             ; $7eee: $0f
	nop                                              ; $7eef: $00
	ld   bc, $5401                                   ; $7ef0: $01 $01 $54
	db   $fc                                         ; $7ef3: $fc
	and  c                                           ; $7ef4: $a1
	sub  [hl]                                        ; $7ef5: $96
	ld   e, l                                        ; $7ef6: $5d
	inc  b                                           ; $7ef7: $04
	ld   b, d                                        ; $7ef8: $42
	ld   l, l                                        ; $7ef9: $6d
	rst  $38                                         ; $7efa: $ff
	rst  $38                                         ; $7efb: $ff
	dec  c                                           ; $7efc: $0d
	ld   e, c                                        ; $7efd: $59
	ld   a, b                                        ; $7efe: $78
	sbc  b                                           ; $7eff: $98
	inc  b                                           ; $7f00: $04
	dec  c                                           ; $7f01: $0d
	ld   e, d                                        ; $7f02: $5a
	dec  b                                           ; $7f03: $05
	inc  de                                          ; $7f04: $13
	ld   a, c                                        ; $7f05: $79
	ld   a, b                                        ; $7f06: $78
	ld   [hl], c                                     ; $7f07: $71
	ld   l, l                                        ; $7f08: $6d
	ld   l, h                                        ; $7f09: $6c
	sbc  a                                           ; $7f0a: $9f
	dec  c                                           ; $7f0b: $0d
	nop                                              ; $7f0c: $00
	ld   a, [bc]                                     ; $7f0d: $0a
	ld   bc, $ffff                                   ; $7f0e: $01 $ff $ff
	ld   [hl], l                                     ; $7f11: $75
	sub  b                                           ; $7f12: $90
	sbc  [hl]                                        ; $7f13: $9e
	ld   d, d                                        ; $7f14: $52
	ld   e, e                                        ; $7f15: $5b
	ld   a, b                                        ; $7f16: $78
	sbc  b                                           ; $7f17: $98
	inc  bc                                          ; $7f18: $03
	inc  c                                           ; $7f19: $0c
	inc  b                                           ; $7f1a: $04
	xor  d                                           ; $7f1b: $aa
	ld   a, h                                        ; $7f1c: $7c
	dec  c                                           ; $7f1d: $0d
	inc  bc                                          ; $7f1e: $03
	ld   l, l                                        ; $7f1f: $6d
	dec  b                                           ; $7f20: $05
	add  hl, de                                      ; $7f21: $19
	sub  d                                           ; $7f22: $92
	ld   h, a                                        ; $7f23: $67
	and  c                                           ; $7f24: $a1
	ld   h, [hl]                                     ; $7f25: $66
	sub  c                                           ; $7f26: $91
	ld   [hl], c                                     ; $7f27: $71
	ld   l, l                                        ; $7f28: $6d
	ld   a, b                                        ; $7f29: $78
	rst  $38                                         ; $7f2a: $ff
	rst  $38                                         ; $7f2b: $ff
	dec  c                                           ; $7f2c: $0d
	nop                                              ; $7f2d: $00
	ld   a, [bc]                                     ; $7f2e: $0a
	dec  b                                           ; $7f2f: $05
	add  b                                           ; $7f30: $80
	add  $01                                         ; $7f31: $c6 $01
	ld   bc, $0100                                   ; $7f33: $01 $00 $01
	adc  h                                           ; $7f36: $8c
	sbc  [hl]                                        ; $7f37: $9e
	ld   d, d                                        ; $7f38: $52
	ld   d, d                                        ; $7f39: $52
	ld   e, c                                        ; $7f3a: $59
	sbc  [hl]                                        ; $7f3b: $9e
	ld   [bc], a                                     ; $7f3c: $02
	and  l                                           ; $7f3d: $a5
	inc  b                                           ; $7f3e: $04
	add  hl, hl                                      ; $7f3f: $29
	ld   e, c                                        ; $7f40: $59
	sub  a                                           ; $7f41: $97
	dec  c                                           ; $7f42: $0d
	ld   e, d                                        ; $7f43: $5a
	and  c                                           ; $7f44: $a1
	ld   a, [hl]                                     ; $7f45: $7e
	sbc  e                                           ; $7f46: $9b
	ld   d, h                                        ; $7f47: $54
	ld   a, [$0dfa]                                  ; $7f48: $fa $fa $0d
	nop                                              ; $7f4b: $00
	ld   a, [bc]                                     ; $7f4c: $0a
	add  hl, hl                                      ; $7f4d: $29
	ld   [bc], a                                     ; $7f4e: $02
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00



	inc  b                                           ; $7f51: $04
	add  b                                           ; $7f52: $80
	dec  sp                                          ; $7f53: $3b

	ld   bc, $20ff                                   ; $7f54: $01 $ff $20

	inc  b                                           ; $7f57: $04
	add  b                                           ; $7f58: $80
	inc  a                                           ; $7f59: $3c
	
	ld   bc, $2000                                   ; $7f5a: $01 $00 $20
	inc  e                                           ; $7f5d: $1c
	nop                                              ; $7f5e: $00



	ld   c, $01                                      ; $7f5f: $0e $01
	rrca                                             ; $7f61: $0f
	nop                                              ; $7f62: $00
	ld   bc, $0502                                   ; $7f63: $01 $02 $05
	add  b                                           ; $7f66: $80
	inc  a                                           ; $7f67: $3c
	ld   bc, $0001                                   ; $7f68: $01 $01 $00
	ld   bc, $5063                                   ; $7f6b: $01 $63 $50
	sbc  [hl]                                        ; $7f6e: $9e
	ld   [bc], a                                     ; $7f6f: $02
	and  l                                           ; $7f70: $a5
	inc  b                                           ; $7f71: $04
	xor  d                                           ; $7f72: $aa
	sub  b                                           ; $7f73: $90
	ld   [bc], a                                     ; $7f74: $02
	jr   nz, jr_042_7f7b                             ; $7f75: $20 $04

	xor  d                                           ; $7f77: $aa
	ld   e, d                                        ; $7f78: $5a
	dec  b                                           ; $7f79: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f7a: $cf

jr_042_7f7b:
	adc  h                                           ; $7f7b: $8c
	sbc  c                                           ; $7f7c: $99
	sbc  a                                           ; $7f7d: $9f
	dec  c                                           ; $7f7e: $0d
	ld   [bc], a                                     ; $7f7f: $02
	and  c                                           ; $7f80: $a1
	ld   [bc], a                                     ; $7f81: $02
	ld   a, e                                        ; $7f82: $7b
	ld   d, d                                        ; $7f83: $52
	and  b                                           ; $7f84: $a0
	inc  b                                           ; $7f85: $04
	ld   b, l                                        ; $7f86: $45
	sbc  d                                           ; $7f87: $9a
	ld   [hl], h                                     ; $7f88: $74
	ld   e, d                                        ; $7f89: $5a
	and  c                                           ; $7f8a: $a1
	ld   a, [hl]                                     ; $7f8b: $7e
	sbc  c                                           ; $7f8c: $99
	ld   l, h                                        ; $7f8d: $6c
	ld   a, [$000d]                                  ; $7f8e: $fa $0d $00
	ld   a, [bc]                                     ; $7f91: $0a
	inc  d                                           ; $7f92: $14
	ld   b, $01                                      ; $7f93: $06 $01
	rrca                                             ; $7f95: $0f
	inc  b                                           ; $7f96: $04
	rlca                                             ; $7f97: $07
	ld   bc, $526f                                   ; $7f98: $01 $6f $52
	ld   [bc], a                                     ; $7f9b: $02
	inc  de                                          ; $7f9c: $13
	ld   l, a                                        ; $7f9d: $6f
	sub  c                                           ; $7f9e: $91
	and  c                                           ; $7f9f: $a1
	sbc  [hl]                                        ; $7fa0: $9e
	ld   d, d                                        ; $7fa1: $52
	sbc  c                                           ; $7fa2: $99
	ld   sp, hl                                      ; $7fa3: $f9
	dec  c                                           ; $7fa4: $0d
	nop                                              ; $7fa5: $00
	ld   a, [bc]                                     ; $7fa6: $0a
	rrca                                             ; $7fa7: $0f
	nop                                              ; $7fa8: $00
	ld   bc, $7d01                                   ; $7fa9: $01 $01 $7d
	ld   d, d                                        ; $7fac: $52
	sbc  [hl]                                        ; $7fad: $9e
	ld   [hl], a                                     ; $7fae: $77
	ld   d, h                                        ; $7faf: $54
	ld   l, h                                        ; $7fb0: $6c
	sbc  a                                           ; $7fb1: $9f
	dec  c                                           ; $7fb2: $0d
	nop                                              ; $7fb3: $00
	ld   a, [bc]                                     ; $7fb4: $0a
	inc  d                                           ; $7fb5: $14
	ld   a, [bc]                                     ; $7fb6: $0a
	ld   bc, $5a09                                   ; $7fb7: $01 $09 $5a
	inc  e                                           ; $7fba: $1c
	inc  b                                           ; $7fbb: $04
	rlca                                             ; $7fbc: $07
	rlca                                             ; $7fbd: $07
	ld   bc, $526f                                   ; $7fbe: $01 $6f $52
	ld   [bc], a                                     ; $7fc1: $02
	inc  de                                          ; $7fc2: $13
	ld   l, a                                        ; $7fc3: $6f
	sub  c                                           ; $7fc4: $91
	and  c                                           ; $7fc5: $a1
	sbc  a                                           ; $7fc6: $9f
	dec  c                                           ; $7fc7: $0d
	and  e                                           ; $7fc8: $a3
	and  l                                           ; $7fc9: $a5
	db   $ec                                         ; $7fca: $ec
	cp   d                                           ; $7fcb: $ba
	ld   a, c                                        ; $7fcc: $79
	ld   a, b                                        ; $7fcd: $78
	ld   a, c                                        ; $7fce: $79
	ld   e, c                                        ; $7fcf: $59
	dec  c                                           ; $7fd0: $0d
	sbc  l                                           ; $7fd1: $9d
	ld   l, l                                        ; $7fd2: $6d
	ld   h, l                                        ; $7fd3: $65
	sbc  l                                           ; $7fd4: $9d
	ld   h, a                                        ; $7fd5: $67
	sbc  d                                           ; $7fd6: $9a
	ld   [hl], h                                     ; $7fd7: $74
	ld   a, b                                        ; $7fd8: $78
	ld   d, d                                        ; $7fd9: $52
	ld   sp, hl                                      ; $7fda: $f9
	dec  c                                           ; $7fdb: $0d
	nop                                              ; $7fdc: $00
	ld   a, [bc]                                     ; $7fdd: $0a
	ld   bc, $6759                                   ; $7fde: $01 $59 $67
	adc  l                                           ; $7fe1: $8d
	ld   e, b                                        ; $7fe2: $58
	ld   a, e                                        ; $7fe3: $7b
	ld   d, [hl]                                     ; $7fe4: $56
	ld   l, a                                        ; $7fe5: $6f
	sub  c                                           ; $7fe6: $91
	and  c                                           ; $7fe7: $a1
	ld   e, c                                        ; $7fe8: $59
	sub  a                                           ; $7fe9: $97
	dec  c                                           ; $7fea: $0d
	and  e                                           ; $7feb: $a3
	and  l                                           ; $7fec: $a5
	db   $ec                                         ; $7fed: $ec
	cp   d                                           ; $7fee: $ba
	add  [hl]                                        ; $7fef: $86
	ld   a, h                                        ; $7ff0: $7c
	ld   e, b                                        ; $7ff1: $58
	ld   e, l                                        ; $7ff2: $5d
	sbc  b                                           ; $7ff3: $98
	sub  b                                           ; $7ff4: $90
	ld   a, h                                        ; $7ff5: $7c
	halt                                             ; $7ff6: $76
	ld   e, c                                        ; $7ff7: $59
	dec  c                                           ; $7ff8: $0d
	ld   d, b                                        ; $7ff9: $50
	ld   l, b                                        ; $7ffa: $68
	ld   e, c                                        ; $7ffb: $59
	ld   [hl], c                                     ; $7ffc: $71
	ld   [hl], h                                     ; $7ffd: $74
	sbc  c                                           ; $7ffe: $99
	ld   [hl], l                                     ; $7fff: $75
