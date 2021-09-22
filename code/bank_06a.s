; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06a", ROMX[$4000], BANK[$6a]

	ld   [hl], h                                     ; $4000: $74
	ld   d, b                                        ; $4001: $50
	ld   h, b                                        ; $4002: $60
	sbc  c                                           ; $4003: $99
	ld   a, [$000d]                                  ; $4004: $fa $0d $00
	ld   a, [bc]                                     ; $4007: $0a
	add  hl, de                                      ; $4008: $19
	dec  b                                           ; $4009: $05
	ld   [bc], a                                     ; $400a: $02
	call c, $c9f5                                    ; $400b: $dc $f5 $c9
	ld   a, [rRAMG]                                  ; $400e: $fa $00 $00
	inc  b                                           ; $4011: $04
	di                                               ; $4012: $f3
	ld   [bc], a                                     ; $4013: $02
	jp   $505a                               ; $4014: $c3 $5a $50


	sbc  c                                           ; $4017: $99
	nop                                              ; $4018: $00
	ld   bc, $9a07                                   ; $4019: $01 $07 $9a
	nop                                              ; $401c: $00
	ld   [bc], a                                     ; $401d: $02
	inc  bc                                          ; $401e: $03
	ld   bc, $2000                                   ; $401f: $01 $00 $20
	nop                                              ; $4022: $00
	rlca                                             ; $4023: $07
	ld   de, $0201                                   ; $4024: $11 $01 $02
	inc  bc                                          ; $4027: $03
	ld   bc, $2001                                   ; $4028: $01 $01 $20
	nop                                              ; $402b: $00
	ld   b, $5a                                      ; $402c: $06 $5a
	ld   bc, $000f                                   ; $402e: $01 $0f $00
	ld   bc, $dc01                                   ; $4031: $01 $01 $dc
	push af                                          ; $4034: $f5
	ret                                              ; $4035: $c9


	ld   a, [$a310]                                  ; $4036: $fa $10 $a3
	and  l                                           ; $4039: $a5
	db   $ec                                         ; $403a: $ec
	cp   d                                           ; $403b: $ba
	ld   a, [$960d]                                  ; $403c: $fa $0d $96
	sbc  e                                           ; $403f: $9b
	ld   h, c                                        ; $4040: $61
	and  c                                           ; $4041: $a1
	ld   [hl], l                                     ; $4042: $75
	ld   a, [$0dfa]                                  ; $4043: $fa $fa $0d
	nop                                              ; $4046: $00
	ld   a, [bc]                                     ; $4047: $0a
	inc  e                                           ; $4048: $1c
	inc  b                                           ; $4049: $04
	ld   bc, $1d01                                   ; $404a: $01 $01 $1d
	ld   b, b                                        ; $404d: $40
	inc  d                                           ; $404e: $14
	inc  bc                                          ; $404f: $03
	inc  d                                           ; $4050: $14
	ld   bc, $2802                                   ; $4051: $01 $02 $28
	nop                                              ; $4054: $00
	ld   bc, $d6a7                                   ; $4055: $01 $a7 $d6
	sub  $0d                                         ; $4058: $d6 $0d
	ld   h, [hl]                                     ; $405a: $66
	sub  c                                           ; $405b: $91
	ld   d, b                                        ; $405c: $50
	sbc  [hl]                                        ; $405d: $9e
	ld   d, b                                        ; $405e: $50
	ld   h, l                                        ; $405f: $65
	ld   l, l                                        ; $4060: $6d
	ld   a, h                                        ; $4061: $7c
	ld   d, b                                        ; $4062: $50
	ld   h, e                                        ; $4063: $63
	dec  c                                           ; $4064: $0d
	ld   [de], a                                     ; $4065: $12
	ld   e, c                                        ; $4066: $59
	ld   d, d                                        ; $4067: $52
	rst  $28                                         ; $4068: $ef
	call nc, $75fb                           ; $4069: $d4 $fb $75
	adc  h                                           ; $406c: $8c
	ld   [hl], c                                     ; $406d: $71
	ld   [hl], h                                     ; $406e: $74
	sbc  c                                           ; $406f: $99
	ld   a, e                                        ; $4070: $7b
	sbc  a                                           ; $4071: $9f
	dec  c                                           ; $4072: $0d
	nop                                              ; $4073: $00
	ld   a, [bc]                                     ; $4074: $0a
	dec  b                                           ; $4075: $05
	add  b                                           ; $4076: $80
	ld   c, l                                        ; $4077: $4d
	ld   bc, $0001                                   ; $4078: $01 $01 $00
	inc  e                                           ; $407b: $1c
	inc  b                                           ; $407c: $04
	nop                                              ; $407d: $00
	nop                                              ; $407e: $00
	ld   bc, $616f                                   ; $407f: $01 $6f $61
	ld   e, l                                        ; $4082: $5d
	ld   h, l                                        ; $4083: $65
	ld   l, a                                        ; $4084: $6f
	sub  c                                           ; $4085: $91
	ld   l, [hl]                                     ; $4086: $6e
	adc  a                                           ; $4087: $8f
	ld   l, [hl]                                     ; $4088: $6e
	sub  [hl]                                        ; $4089: $96
	sbc  a                                           ; $408a: $9f
	dec  c                                           ; $408b: $0d
	nop                                              ; $408c: $00
	inc  e                                           ; $408d: $1c
	inc  b                                           ; $408e: $04
	ld   bc, $0101                                   ; $408f: $01 $01 $01
	ld   h, [hl]                                     ; $4092: $66
	sub  c                                           ; $4093: $91
	sbc  [hl]                                        ; $4094: $9e
	ld   e, b                                        ; $4095: $58
	sub  d                                           ; $4096: $92
	ld   h, a                                        ; $4097: $67
	adc  l                                           ; $4098: $8d
	sbc  a                                           ; $4099: $9f
	dec  c                                           ; $409a: $0d
	nop                                              ; $409b: $00
	ld   a, [bc]                                     ; $409c: $0a
	dec  c                                           ; $409d: $0d
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
	rrca                                             ; $40a0: $0f
	nop                                              ; $40a1: $00
	ld   bc, $1e09                                   ; $40a2: $01 $09 $1e
	nop                                              ; $40a5: $00
	rrca                                             ; $40a6: $0f
	nop                                              ; $40a7: $00
	ld   bc, $6201                                   ; $40a8: $01 $01 $62
	adc  a                                           ; $40ab: $8f
	and  c                                           ; $40ac: $a1
	ld   a, e                                        ; $40ad: $7b
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	dec  c                                           ; $40b0: $0d
	inc  b                                           ; $40b1: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40b2: $cf
	inc  b                                           ; $40b3: $04
	xor  d                                           ; $40b4: $aa
	ld   a, l                                        ; $40b5: $7d
	ld   l, a                                        ; $40b6: $6f
	sub  l                                           ; $40b7: $95
	ld   [hl], c                                     ; $40b8: $71
	halt                                             ; $40b9: $76
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	dec  c                                           ; $40bc: $0d
	nop                                              ; $40bd: $00
	ld   a, [bc]                                     ; $40be: $0a
	inc  e                                           ; $40bf: $1c
	inc  b                                           ; $40c0: $04
	inc  bc                                          ; $40c1: $03
	inc  bc                                          ; $40c2: $03
	dec  e                                           ; $40c3: $1d
	ld   b, b                                        ; $40c4: $40
	inc  d                                           ; $40c5: $14
	inc  bc                                          ; $40c6: $03
	inc  d                                           ; $40c7: $14
	ld   bc, $2901                                   ; $40c8: $01 $01 $29
	nop                                              ; $40cb: $00
	ld   bc, $5656                                   ; $40cc: $01 $56 $56
	rst  $38                                         ; $40cf: $ff
	rst  $38                                         ; $40d0: $ff
	dec  c                                           ; $40d1: $0d
	ld   [hl], d                                     ; $40d2: $72
	adc  h                                           ; $40d3: $8c
	and  c                                           ; $40d4: $a1
	ld   a, b                                        ; $40d5: $78
	ei                                               ; $40d6: $fb
	ld   d, d                                        ; $40d7: $52
	ld   a, [$660d]                                  ; $40d8: $fa $0d $66
	sub  c                                           ; $40db: $91
	ld   d, b                                        ; $40dc: $50
	sbc  [hl]                                        ; $40dd: $9e
	ld   d, d                                        ; $40de: $52
	ld   d, d                                        ; $40df: $52
	sub  b                                           ; $40e0: $90
	and  c                                           ; $40e1: $a1
	ld   a, [$000d]                                  ; $40e2: $fa $0d $00
	ld   a, [bc]                                     ; $40e5: $0a
	dec  c                                           ; $40e6: $0d
	nop                                              ; $40e7: $00
	nop                                              ; $40e8: $00
	rrca                                             ; $40e9: $0f
	nop                                              ; $40ea: $00
	ld   bc, $1e09                                   ; $40eb: $01 $09 $1e
	nop                                              ; $40ee: $00
	inc  e                                           ; $40ef: $1c
	inc  b                                           ; $40f0: $04
	ld   [bc], a                                     ; $40f1: $02
	ld   [bc], a                                     ; $40f2: $02
	dec  e                                           ; $40f3: $1d
	ld   b, b                                        ; $40f4: $40
	inc  d                                           ; $40f5: $14
	inc  bc                                          ; $40f6: $03
	inc  d                                           ; $40f7: $14
	ld   bc, $2903                                   ; $40f8: $01 $03 $29
	nop                                              ; $40fb: $00
	ld   bc, $ff50                                   ; $40fc: $01 $50 $ff
	rst  $38                                         ; $40ff: $ff
	ld   d, d                                        ; $4100: $52
	sub  d                                           ; $4101: $92
	ld   l, e                                        ; $4102: $6b
	ld   d, h                                        ; $4103: $54
	ld   a, b                                        ; $4104: $78
	ld   e, c                                        ; $4105: $59
	ld   e, b                                        ; $4106: $58
	ld   h, l                                        ; $4107: $65
	ld   [hl], h                                     ; $4108: $74
	sbc  c                                           ; $4109: $99
	sbc  a                                           ; $410a: $9f
	dec  c                                           ; $410b: $0d
	ld   h, [hl]                                     ; $410c: $66
	sub  c                                           ; $410d: $91
	ld   d, b                                        ; $410e: $50
	sbc  [hl]                                        ; $410f: $9e
	sub  b                                           ; $4110: $90
	ld   d, h                                        ; $4111: $54
	ld   d, d                                        ; $4112: $52
	ld   d, d                                        ; $4113: $52
	sub  [hl]                                        ; $4114: $96
	ld   a, [$000d]                                  ; $4115: $fa $0d $00
	ld   a, [bc]                                     ; $4118: $0a
	dec  c                                           ; $4119: $0d
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	rrca                                             ; $411c: $0f
	nop                                              ; $411d: $00
	ld   bc, $1e09                                   ; $411e: $01 $09 $1e
	nop                                              ; $4121: $00
	nop                                              ; $4122: $00
	inc  bc                                          ; $4123: $03
	inc  de                                          ; $4124: $13
	ld   bc, $25af                                   ; $4125: $01 $af $25
	inc  b                                           ; $4128: $04
	add  b                                           ; $4129: $80
	halt                                             ; $412a: $76
	ld   bc, $20ff                                   ; $412b: $01 $ff $20
	inc  e                                           ; $412e: $1c
	nop                                              ; $412f: $00
	ld   c, $02                                      ; $4130: $0e $02
	rrca                                             ; $4132: $0f
	nop                                              ; $4133: $00
	ld   bc, $0102                                   ; $4134: $01 $02 $01
	rst  $38                                         ; $4137: $ff
	rst  $38                                         ; $4138: $ff
	and  c                                           ; $4139: $a1
	ld   sp, hl                                      ; $413a: $f9
	dec  c                                           ; $413b: $0d
	sub  b                                           ; $413c: $90
	ld   d, h                                        ; $413d: $54
	ld   h, c                                        ; $413e: $61
	and  c                                           ; $413f: $a1
	ld   a, b                                        ; $4140: $78
	inc  bc                                          ; $4141: $03
	ld   l, a                                        ; $4142: $6f
	ld   [bc], a                                     ; $4143: $02
	xor  c                                           ; $4144: $a9
	ld   e, c                                        ; $4145: $59
	rst  $38                                         ; $4146: $ff
	rst  $38                                         ; $4147: $ff
	dec  c                                           ; $4148: $0d
	inc  b                                           ; $4149: $04
	xor  d                                           ; $414a: $aa
	ld   [bc], a                                     ; $414b: $02
	sub  a                                           ; $414c: $97
	and  b                                           ; $414d: $a0
	ld   [hl], d                                     ; $414e: $72
	ld   e, a                                        ; $414f: $5f
	ld   [hl], h                                     ; $4150: $74
	sbc  [hl]                                        ; $4151: $9e
	inc  b                                           ; $4152: $04
	ld   b, d                                        ; $4153: $42
	sub  [hl]                                        ; $4154: $96
	ld   d, h                                        ; $4155: $54
	sbc  a                                           ; $4156: $9f
	dec  c                                           ; $4157: $0d
	nop                                              ; $4158: $00
	ld   a, [bc]                                     ; $4159: $0a
	inc  d                                           ; $415a: $14
	ld   b, $01                                      ; $415b: $06 $01
	rrca                                             ; $415d: $0f
	inc  bc                                          ; $415e: $03
	inc  bc                                          ; $415f: $03
	ld   bc, $0008                                   ; $4160: $01 $08 $00
	ld   e, l                                        ; $4163: $5d
	and  c                                           ; $4164: $a1
	dec  c                                           ; $4165: $0d
	ld   d, d                                        ; $4166: $52
	sbc  c                                           ; $4167: $99
	ld   e, c                                        ; $4168: $59
	ld   h, l                                        ; $4169: $65
	sub  a                                           ; $416a: $97
	ld   sp, hl                                      ; $416b: $f9
	dec  c                                           ; $416c: $0d
	nop                                              ; $416d: $00
	ld   a, [bc]                                     ; $416e: $0a
	rrca                                             ; $416f: $0f
	nop                                              ; $4170: $00
	ld   bc, $7d01                                   ; $4171: $01 $01 $7d
	ld   d, d                                        ; $4174: $52
	sbc  [hl]                                        ; $4175: $9e
	ld   [hl], a                                     ; $4176: $77
	ld   d, h                                        ; $4177: $54
	ld   l, h                                        ; $4178: $6c
	sbc  a                                           ; $4179: $9f
	dec  c                                           ; $417a: $0d
	nop                                              ; $417b: $00
	ld   a, [bc]                                     ; $417c: $0a
	inc  d                                           ; $417d: $14
	ld   a, [bc]                                     ; $417e: $0a
	ld   bc, $031c                                   ; $417f: $01 $1c $03
	inc  bc                                          ; $4182: $03
	inc  bc                                          ; $4183: $03
	ld   bc, $ef04                                   ; $4184: $01 $04 $ef
	ld   e, b                                        ; $4187: $58
	ld   l, e                                        ; $4188: $6b
	ld   e, l                                        ; $4189: $5d
	ld   a, c                                        ; $418a: $79
	sbc  [hl]                                        ; $418b: $9e
	ld   h, d                                        ; $418c: $62
	adc  a                                           ; $418d: $8f
	and  c                                           ; $418e: $a1
	ld   a, b                                        ; $418f: $78
	ld   h, e                                        ; $4190: $63
	ld   d, d                                        ; $4191: $52
	sbc  a                                           ; $4192: $9f
	dec  c                                           ; $4193: $0d
	ld   [$5d00], sp                                 ; $4194: $08 $00 $5d
	and  c                                           ; $4197: $a1
	ld   a, l                                        ; $4198: $7d
	dec  c                                           ; $4199: $0d
	inc  b                                           ; $419a: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $419b: $cf
	inc  b                                           ; $419c: $04
	xor  d                                           ; $419d: $aa
	sbc  [hl]                                        ; $419e: $9e
	db   $d3                                         ; $419f: $d3
	rst  JumpTable                                         ; $41a0: $df
	ld   e, c                                        ; $41a1: $59
	ld   h, l                                        ; $41a2: $65
	sub  a                                           ; $41a3: $97
	ld   sp, hl                                      ; $41a4: $f9
	dec  c                                           ; $41a5: $0d
	nop                                              ; $41a6: $00
	ld   a, [bc]                                     ; $41a7: $0a
	ld   bc, $956f                                   ; $41a8: $01 $6f $95
	ld   [hl], c                                     ; $41ab: $71
	halt                                             ; $41ac: $76
	inc  bc                                          ; $41ad: $03
	ld   l, e                                        ; $41ae: $6b
	inc  b                                           ; $41af: $04
	ld   [de], a                                     ; $41b0: $12
	ld   [hl], c                                     ; $41b1: $71
	ld   [hl], h                                     ; $41b2: $74
	dec  c                                           ; $41b3: $0d
	inc  b                                           ; $41b4: $04
	db   $e3                                         ; $41b5: $e3
	ld   h, l                                        ; $41b6: $65
	ld   d, d                                        ; $41b7: $52
	ld   h, c                                        ; $41b8: $61
	halt                                             ; $41b9: $76
	ld   e, d                                        ; $41ba: $5a
	ld   d, b                                        ; $41bb: $50
	sbc  c                                           ; $41bc: $99
	and  c                                           ; $41bd: $a1
	ld   l, [hl]                                     ; $41be: $6e
	ld   e, a                                        ; $41bf: $5f
	ld   [hl], a                                     ; $41c0: $77
	rst  $38                                         ; $41c1: $ff
	rst  $38                                         ; $41c2: $ff
	dec  c                                           ; $41c3: $0d
	nop                                              ; $41c4: $00
	ld   a, [bc]                                     ; $41c5: $0a
	add  hl, de                                      ; $41c6: $19
	dec  b                                           ; $41c7: $05
	ld   [bc], a                                     ; $41c8: $02
	db   $d3                                         ; $41c9: $d3
	rst  JumpTable                                         ; $41ca: $df
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	ld   d, d                                        ; $41cd: $52
	ld   l, e                                        ; $41ce: $6b
	ld   e, d                                        ; $41cf: $5a
	ld   h, l                                        ; $41d0: $65
	ld   d, d                                        ; $41d1: $52
	nop                                              ; $41d2: $00
	ld   bc, $4107                                   ; $41d3: $01 $07 $41
	ld   bc, $0302                                   ; $41d6: $01 $02 $03
	ld   bc, $2000                                   ; $41d9: $01 $00 $20
	nop                                              ; $41dc: $00
	rlca                                             ; $41dd: $07
	cp   c                                           ; $41de: $b9
	nop                                              ; $41df: $00
	ld   [bc], a                                     ; $41e0: $02
	inc  bc                                          ; $41e1: $03
	ld   bc, $2001                                   ; $41e2: $01 $01 $20
	nop                                              ; $41e5: $00
	ld   b, $09                                      ; $41e6: $06 $09
	ld   bc, $000f                                   ; $41e8: $01 $0f $00
	ld   bc, $6701                                   ; $41eb: $01 $01 $67
	adc  l                                           ; $41ee: $8d
	adc  h                                           ; $41ef: $8c
	ld   l, c                                        ; $41f0: $69
	and  c                                           ; $41f1: $a1
	rst  $38                                         ; $41f2: $ff
	rst  $38                                         ; $41f3: $ff
	dec  c                                           ; $41f4: $0d
	inc  b                                           ; $41f5: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f6: $cf
	inc  b                                           ; $41f7: $04
	xor  d                                           ; $41f8: $aa
	ld   a, l                                        ; $41f9: $7d
	ld   l, a                                        ; $41fa: $6f
	sub  l                                           ; $41fb: $95
	ld   [hl], c                                     ; $41fc: $71
	halt                                             ; $41fd: $76
	rst  $38                                         ; $41fe: $ff
	rst  $38                                         ; $41ff: $ff
	dec  c                                           ; $4200: $0d
	nop                                              ; $4201: $00
	ld   a, [bc]                                     ; $4202: $0a
	inc  e                                           ; $4203: $1c
	inc  bc                                          ; $4204: $03
	nop                                              ; $4205: $00
	nop                                              ; $4206: $00
	ld   bc, $f304                                   ; $4207: $01 $04 $f3
	ld   [bc], a                                     ; $420a: $02
	jp   $505a                               ; $420b: $c3 $5a $50


	sbc  c                                           ; $420e: $99
	ld   a, h                                        ; $420f: $7c
	ld   a, e                                        ; $4210: $7b
	sbc  a                                           ; $4211: $9f
	dec  c                                           ; $4212: $0d
	ld   l, e                                        ; $4213: $6b
	sbc  d                                           ; $4214: $9a
	ld   h, [hl]                                     ; $4215: $66
	sub  c                                           ; $4216: $91
	sbc  [hl]                                        ; $4217: $9e
	inc  bc                                          ; $4218: $03
	dec  c                                           ; $4219: $0d
	inc  b                                           ; $421a: $04
	ld   a, b                                        ; $421b: $78
	ld   a, b                                        ; $421c: $78
	ld   d, d                                        ; $421d: $52
	sbc  l                                           ; $421e: $9d
	ld   a, e                                        ; $421f: $7b
	sbc  a                                           ; $4220: $9f
	dec  c                                           ; $4221: $0d
	ld   h, [hl]                                     ; $4222: $66
	sub  c                                           ; $4223: $91
	sbc  [hl]                                        ; $4224: $9e
	ld   e, b                                        ; $4225: $58
	sub  d                                           ; $4226: $92
	ld   h, a                                        ; $4227: $67
	adc  l                                           ; $4228: $8d
	ld   a, b                                        ; $4229: $78
	ld   h, e                                        ; $422a: $63
	ld   d, d                                        ; $422b: $52
	sbc  a                                           ; $422c: $9f
	dec  c                                           ; $422d: $0d
	nop                                              ; $422e: $00
	ld   a, [bc]                                     ; $422f: $0a
	dec  c                                           ; $4230: $0d
	nop                                              ; $4231: $00
	nop                                              ; $4232: $00
	rrca                                             ; $4233: $0f
	nop                                              ; $4234: $00
	ld   bc, $1e09                                   ; $4235: $01 $09 $1e
	nop                                              ; $4238: $00
	inc  e                                           ; $4239: $1c
	inc  bc                                          ; $423a: $03
	inc  b                                           ; $423b: $04
	inc  b                                           ; $423c: $04
	dec  e                                           ; $423d: $1d
	ld   b, b                                        ; $423e: $40
	inc  de                                          ; $423f: $13
	inc  bc                                          ; $4240: $03
	inc  de                                          ; $4241: $13
	ld   bc, $2902                                   ; $4242: $01 $02 $29
	nop                                              ; $4245: $00
	ld   bc, $a102                                   ; $4246: $01 $02 $a1
	ld   e, d                                        ; $4249: $5a
	inc  bc                                          ; $424a: $03
	cp   c                                           ; $424b: $b9
	sub  a                                           ; $424c: $97
	ld   a, b                                        ; $424d: $78
	ld   d, d                                        ; $424e: $52
	ld   a, b                                        ; $424f: $78
	sub  a                                           ; $4250: $97
	ld   d, d                                        ; $4251: $52
	ld   d, d                                        ; $4252: $52
	sbc  l                                           ; $4253: $9d
	sbc  a                                           ; $4254: $9f
	dec  c                                           ; $4255: $0d
	ld   l, e                                        ; $4256: $6b
	sbc  d                                           ; $4257: $9a
	ld   h, [hl]                                     ; $4258: $66
	sub  c                                           ; $4259: $91
	rst  $38                                         ; $425a: $ff
	rst  $38                                         ; $425b: $ff
	dec  c                                           ; $425c: $0d
	ld   e, b                                        ; $425d: $58
	sub  d                                           ; $425e: $92
	ld   h, a                                        ; $425f: $67
	adc  l                                           ; $4260: $8d
	ld   a, b                                        ; $4261: $78
	ld   h, e                                        ; $4262: $63
	ld   d, d                                        ; $4263: $52
	sbc  a                                           ; $4264: $9f
	dec  c                                           ; $4265: $0d
	nop                                              ; $4266: $00
	ld   a, [bc]                                     ; $4267: $0a
	dec  c                                           ; $4268: $0d
	nop                                              ; $4269: $00
	nop                                              ; $426a: $00
	rrca                                             ; $426b: $0f
	nop                                              ; $426c: $00
	ld   bc, $1e09                                   ; $426d: $01 $09 $1e
	nop                                              ; $4270: $00
	rrca                                             ; $4271: $0f
	nop                                              ; $4272: $00
	ld   bc, $5601                                   ; $4273: $01 $01 $56
	ld   d, [hl]                                     ; $4276: $56
	sbc  [hl]                                        ; $4277: $9e
	db   $d3                                         ; $4278: $d3
	rst  JumpTable                                         ; $4279: $df
	ld   [hl], l                                     ; $427a: $75
	ld   h, a                                        ; $427b: $67
	ld   e, a                                        ; $427c: $5f
	ld   [hl], a                                     ; $427d: $77
	sbc  a                                           ; $427e: $9f
	dec  c                                           ; $427f: $0d
	nop                                              ; $4280: $00
	ld   a, [bc]                                     ; $4281: $0a
	inc  e                                           ; $4282: $1c
	inc  bc                                          ; $4283: $03
	inc  bc                                          ; $4284: $03
	inc  bc                                          ; $4285: $03
	ld   bc, $9166                                   ; $4286: $01 $66 $91
	ld   d, b                                        ; $4289: $50
	sbc  [hl]                                        ; $428a: $9e
	inc  b                                           ; $428b: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $428c: $cf
	inc  b                                           ; $428d: $04
	xor  d                                           ; $428e: $aa
	sbc  [hl]                                        ; $428f: $9e
	adc  h                                           ; $4290: $8c
	sbc  c                                           ; $4291: $99
	ld   [bc], a                                     ; $4292: $02
	jr   nz, jr_06a_4299                             ; $4293: $20 $04

	xor  d                                           ; $4295: $aa
	dec  c                                           ; $4296: $0d
	ld   [hl], d                                     ; $4297: $72
	ld   e, e                                        ; $4298: $5b

jr_06a_4299:
	ld   d, b                                        ; $4299: $50
	ld   [hl], c                                     ; $429a: $71
	ld   [hl], h                                     ; $429b: $74
	sub  b                                           ; $429c: $90
	sub  a                                           ; $429d: $97
	ld   d, h                                        ; $429e: $54
	sbc  l                                           ; $429f: $9d
	sub  [hl]                                        ; $42a0: $96
	sbc  a                                           ; $42a1: $9f
	dec  c                                           ; $42a2: $0d
	nop                                              ; $42a3: $00
	ld   a, [bc]                                     ; $42a4: $0a
	ld   bc, $cf04                                   ; $42a5: $01 $04 $cf
	inc  b                                           ; $42a8: $04
	xor  d                                           ; $42a9: $aa
	ld   a, h                                        ; $42aa: $7c
	inc  bc                                          ; $42ab: $03
	ld   d, $9e                                      ; $42ac: $16 $9e
	ld   [de], a                                     ; $42ae: $12
	ld   [bc], a                                     ; $42af: $02
	ld   e, h                                        ; $42b0: $5c
	ld   a, h                                        ; $42b1: $7c
	rst  $28                                         ; $42b2: $ef
	call nc, $75fb                           ; $42b3: $d4 $fb $75
	dec  c                                           ; $42b6: $0d
	inc  b                                           ; $42b7: $04
	rla                                              ; $42b8: $17
	ld   [hl], c                                     ; $42b9: $71
	ld   [hl], h                                     ; $42ba: $74
	sbc  c                                           ; $42bb: $99
	sbc  l                                           ; $42bc: $9d
	sbc  a                                           ; $42bd: $9f
	dec  c                                           ; $42be: $0d
	nop                                              ; $42bf: $00
	dec  b                                           ; $42c0: $05
	add  b                                           ; $42c1: $80
	ld   [hl], a                                     ; $42c2: $77
	ld   bc, $0001                                   ; $42c3: $01 $01 $00
	ld   bc, $9258                                   ; $42c6: $01 $58 $92
	ld   h, a                                        ; $42c9: $67
	adc  l                                           ; $42ca: $8d
	ld   a, b                                        ; $42cb: $78
	ld   h, e                                        ; $42cc: $63
	ld   d, d                                        ; $42cd: $52
	sbc  a                                           ; $42ce: $9f
	dec  c                                           ; $42cf: $0d
	nop                                              ; $42d0: $00
	ld   a, [bc]                                     ; $42d1: $0a
	dec  c                                           ; $42d2: $0d
	nop                                              ; $42d3: $00
	nop                                              ; $42d4: $00
	rrca                                             ; $42d5: $0f
	nop                                              ; $42d6: $00
	ld   bc, $1e09                                   ; $42d7: $01 $09 $1e
	nop                                              ; $42da: $00
	nop                                              ; $42db: $00
	inc  bc                                          ; $42dc: $03
	dec  d                                           ; $42dd: $15
	ld   bc, $25af                                   ; $42de: $01 $af $25
	inc  b                                           ; $42e1: $04
	add  b                                           ; $42e2: $80
	inc  [hl]                                        ; $42e3: $34
	ld   bc, $20ff                                   ; $42e4: $01 $ff $20
	inc  e                                           ; $42e7: $1c
	nop                                              ; $42e8: $00
	ld   c, $02                                      ; $42e9: $0e $02
	rrca                                             ; $42eb: $0f
	nop                                              ; $42ec: $00
	ld   bc, $0102                                   ; $42ed: $01 $02 $01
	rst  $38                                         ; $42f0: $ff
	rst  $38                                         ; $42f1: $ff
	and  c                                           ; $42f2: $a1
	ld   sp, hl                                      ; $42f3: $f9
	dec  c                                           ; $42f4: $0d
	sub  b                                           ; $42f5: $90
	ld   d, h                                        ; $42f6: $54
	ld   h, c                                        ; $42f7: $61
	and  c                                           ; $42f8: $a1
	ld   a, b                                        ; $42f9: $78
	inc  bc                                          ; $42fa: $03
	ld   l, a                                        ; $42fb: $6f
	ld   [bc], a                                     ; $42fc: $02
	xor  c                                           ; $42fd: $a9
	ld   e, c                                        ; $42fe: $59
	rst  $38                                         ; $42ff: $ff
	rst  $38                                         ; $4300: $ff
	dec  c                                           ; $4301: $0d
	inc  b                                           ; $4302: $04
	xor  d                                           ; $4303: $aa
	ld   [bc], a                                     ; $4304: $02
	sub  a                                           ; $4305: $97
	and  b                                           ; $4306: $a0
	ld   [hl], d                                     ; $4307: $72
	ld   e, a                                        ; $4308: $5f
	ld   [hl], h                                     ; $4309: $74
	sbc  [hl]                                        ; $430a: $9e
	inc  b                                           ; $430b: $04
	ld   b, d                                        ; $430c: $42
	sub  [hl]                                        ; $430d: $96
	ld   d, h                                        ; $430e: $54
	sbc  a                                           ; $430f: $9f
	dec  c                                           ; $4310: $0d
	nop                                              ; $4311: $00
	ld   a, [bc]                                     ; $4312: $0a
	inc  d                                           ; $4313: $14
	ld   b, $01                                      ; $4314: $06 $01
	rrca                                             ; $4316: $0f
	dec  b                                           ; $4317: $05
	ld   bc, $0801                                   ; $4318: $01 $01 $08
	nop                                              ; $431b: $00
	ld   a, l                                        ; $431c: $7d
	and  c                                           ; $431d: $a1
	dec  c                                           ; $431e: $0d
	ld   l, a                                        ; $431f: $6f
	sub  l                                           ; $4320: $95
	ld   [hl], c                                     ; $4321: $71
	halt                                             ; $4322: $76
	xor  c                                           ; $4323: $a9
	xor  c                                           ; $4324: $a9
	ld   e, c                                        ; $4325: $59
	ld   sp, hl                                      ; $4326: $f9
	dec  c                                           ; $4327: $0d
	nop                                              ; $4328: $00
	ld   a, [bc]                                     ; $4329: $0a
	rrca                                             ; $432a: $0f
	nop                                              ; $432b: $00
	ld   bc, $7d01                                   ; $432c: $01 $01 $7d
	ld   d, d                                        ; $432f: $52
	sbc  [hl]                                        ; $4330: $9e
	ld   [hl], a                                     ; $4331: $77
	ld   d, h                                        ; $4332: $54
	ld   l, h                                        ; $4333: $6c
	sbc  a                                           ; $4334: $9f
	dec  c                                           ; $4335: $0d
	nop                                              ; $4336: $00
	ld   a, [bc]                                     ; $4337: $0a
	inc  d                                           ; $4338: $14
	ld   a, [bc]                                     ; $4339: $0a
	ld   bc, $051c                                   ; $433a: $01 $1c $05
	ld   bc, $0101                                   ; $433d: $01 $01 $01
	inc  b                                           ; $4340: $04
	rst  $28                                         ; $4341: $ef
	ld   e, b                                        ; $4342: $58
	ld   l, e                                        ; $4343: $6b
	ld   e, l                                        ; $4344: $5d
	ld   a, c                                        ; $4345: $79
	ld   h, d                                        ; $4346: $62
	adc  a                                           ; $4347: $8f
	and  c                                           ; $4348: $a1
	ld   a, b                                        ; $4349: $78
	sbc  [hl]                                        ; $434a: $9e
	dec  c                                           ; $434b: $0d
	ld   [$7d00], sp                                 ; $434c: $08 $00 $7d
	and  c                                           ; $434f: $a1
	sbc  a                                           ; $4350: $9f
	dec  c                                           ; $4351: $0d
	nop                                              ; $4352: $00
	ld   a, [bc]                                     ; $4353: $0a
	ld   bc, $0008                                   ; $4354: $01 $08 $00
	ld   a, l                                        ; $4357: $7d
	and  c                                           ; $4358: $a1
	sbc  [hl]                                        ; $4359: $9e
	dec  c                                           ; $435a: $0d
	sub  b                                           ; $435b: $90
	ld   h, l                                        ; $435c: $65
	sbc  [hl]                                        ; $435d: $9e
	inc  b                                           ; $435e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $435f: $cf
	inc  b                                           ; $4360: $04
	xor  d                                           ; $4361: $aa
	add  b                                           ; $4362: $80
	adc  h                                           ; $4363: $8c
	sub  d                                           ; $4364: $92
	ld   [hl], c                                     ; $4365: $71
	ld   l, l                                        ; $4366: $6d
	sub  a                                           ; $4367: $97
	dec  c                                           ; $4368: $0d
	and  a                                           ; $4369: $a7
	jp   nz, $0479                                   ; $436a: $c2 $79 $04

	ld   [hl], c                                     ; $436d: $71
	ld   e, e                                        ; $436e: $5b
	ld   d, b                                        ; $436f: $50
	ld   [hl], c                                     ; $4370: $71
	ld   [hl], h                                     ; $4371: $74
	ld   e, l                                        ; $4372: $5d
	sbc  d                                           ; $4373: $9a
	add  [hl]                                        ; $4374: $86
	and  c                                           ; $4375: $a1
	ld   sp, hl                                      ; $4376: $f9
	dec  c                                           ; $4377: $0d
	nop                                              ; $4378: $00
	ld   a, [bc]                                     ; $4379: $0a
	add  hl, de                                      ; $437a: $19
	dec  b                                           ; $437b: $05
	ld   [bc], a                                     ; $437c: $02
	ld   a, l                                        ; $437d: $7d
	ld   d, d                                        ; $437e: $52
	sbc  [hl]                                        ; $437f: $9e
	sub  [hl]                                        ; $4380: $96
	sbc  e                                           ; $4381: $9b
	ld   h, c                                        ; $4382: $61
	and  c                                           ; $4383: $a1
	ld   [hl], l                                     ; $4384: $75
	nop                                              ; $4385: $00
	nop                                              ; $4386: $00
	inc  b                                           ; $4387: $04
	di                                               ; $4388: $f3
	ld   [bc], a                                     ; $4389: $02
	jp   $505a                               ; $438a: $c3 $5a $50


	sbc  c                                           ; $438d: $99
	nop                                              ; $438e: $00
	ld   bc, $bc07                                   ; $438f: $01 $07 $bc
	nop                                              ; $4392: $00
	ld   [bc], a                                     ; $4393: $02
	inc  bc                                          ; $4394: $03
	ld   bc, $2000                                   ; $4395: $01 $00 $20
	nop                                              ; $4398: $00
	rlca                                             ; $4399: $07
	jr   nz, jr_06a_439d                             ; $439a: $20 $01

	ld   [bc], a                                     ; $439c: $02

jr_06a_439d:
	inc  bc                                          ; $439d: $03
	ld   bc, $2001                                   ; $439e: $01 $01 $20
	nop                                              ; $43a1: $00
	ld   b, $6a                                      ; $43a2: $06 $6a
	ld   bc, $000f                                   ; $43a4: $01 $0f $00
	ld   bc, $5601                                   ; $43a7: $01 $01 $56
	ld   d, [hl]                                     ; $43aa: $56
	sbc  [hl]                                        ; $43ab: $9e
	ld   d, d                                        ; $43ac: $52
	ld   d, d                                        ; $43ad: $52
	ld   [hl], l                                     ; $43ae: $75
	ld   h, a                                        ; $43af: $67
	sub  [hl]                                        ; $43b0: $96
	sbc  a                                           ; $43b1: $9f
	dec  c                                           ; $43b2: $0d
	sub  [hl]                                        ; $43b3: $96
	sbc  e                                           ; $43b4: $9b
	ld   h, c                                        ; $43b5: $61
	and  c                                           ; $43b6: $a1
	ld   [hl], l                                     ; $43b7: $75
	sbc  a                                           ; $43b8: $9f
	dec  c                                           ; $43b9: $0d
	nop                                              ; $43ba: $00
	ld   a, [bc]                                     ; $43bb: $0a
	rrca                                             ; $43bc: $0f
	dec  b                                           ; $43bd: $05
	ld   bc, $6b01                                   ; $43be: $01 $01 $6b
	ld   d, h                                        ; $43c1: $54
	ld   e, c                                        ; $43c2: $59
	ld   a, [$5810]                                  ; $43c3: $fa $10 $58
	ld   e, b                                        ; $43c6: $58
	ld   e, e                                        ; $43c7: $5b
	ld   a, c                                        ; $43c8: $79
	ld   a, [$890d]                                  ; $43c9: $fa $0d $89
	ld   a, b                                        ; $43cc: $78
	sbc  [hl]                                        ; $43cd: $9e
	inc  b                                           ; $43ce: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43cf: $cf
	inc  b                                           ; $43d0: $04
	xor  d                                           ; $43d1: $aa
	ld   a, h                                        ; $43d2: $7c
	inc  bc                                          ; $43d3: $03
	ld   d, $9e                                      ; $43d4: $16 $9e
	dec  c                                           ; $43d6: $0d
	ld   [de], a                                     ; $43d7: $12
	ld   [bc], a                                     ; $43d8: $02
	ld   e, h                                        ; $43d9: $5c
	ld   a, h                                        ; $43da: $7c
	rst  $28                                         ; $43db: $ef
	call nc, $75fb                           ; $43dc: $d4 $fb $75
	ld   a, b                                        ; $43df: $78
	sbc  a                                           ; $43e0: $9f
	dec  c                                           ; $43e1: $0d
	nop                                              ; $43e2: $00
	ld   a, [bc]                                     ; $43e3: $0a
	dec  b                                           ; $43e4: $05
	add  b                                           ; $43e5: $80
	dec  [hl]                                        ; $43e6: $35
	ld   bc, $0001                                   ; $43e7: $01 $01 $00
	ld   bc, $5d58                                   ; $43ea: $01 $58 $5d
	sbc  d                                           ; $43ed: $9a
	and  c                                           ; $43ee: $a1
	sub  [hl]                                        ; $43ef: $96
	ld   d, h                                        ; $43f0: $54
	ld   a, c                                        ; $43f1: $79
	ld   a, b                                        ; $43f2: $78
	sbc  a                                           ; $43f3: $9f
	dec  c                                           ; $43f4: $0d
	adc  c                                           ; $43f5: $89
	ld   a, b                                        ; $43f6: $78
	sbc  [hl]                                        ; $43f7: $9e
	ld   e, b                                        ; $43f8: $58
	sub  d                                           ; $43f9: $92
	ld   h, a                                        ; $43fa: $67
	adc  l                                           ; $43fb: $8d
	sbc  a                                           ; $43fc: $9f
	dec  c                                           ; $43fd: $0d
	nop                                              ; $43fe: $00
	ld   a, [bc]                                     ; $43ff: $0a
	dec  c                                           ; $4400: $0d
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	rrca                                             ; $4403: $0f
	nop                                              ; $4404: $00
	ld   bc, $1e09                                   ; $4405: $01 $09 $1e
	nop                                              ; $4408: $00
	rrca                                             ; $4409: $0f
	nop                                              ; $440a: $00
	ld   bc, $6701                                   ; $440b: $01 $01 $67
	adc  l                                           ; $440e: $8d
	adc  h                                           ; $440f: $8c
	ld   l, c                                        ; $4410: $69
	and  c                                           ; $4411: $a1
	rst  $38                                         ; $4412: $ff
	rst  $38                                         ; $4413: $ff
	dec  c                                           ; $4414: $0d
	inc  b                                           ; $4415: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4416: $cf
	inc  b                                           ; $4417: $04
	xor  d                                           ; $4418: $aa
	ld   a, l                                        ; $4419: $7d
	ld   l, a                                        ; $441a: $6f
	sub  l                                           ; $441b: $95
	ld   [hl], c                                     ; $441c: $71
	halt                                             ; $441d: $76
	rst  $38                                         ; $441e: $ff
	rst  $38                                         ; $441f: $ff
	dec  c                                           ; $4420: $0d
	nop                                              ; $4421: $00
	ld   a, [bc]                                     ; $4422: $0a
	inc  e                                           ; $4423: $1c
	dec  b                                           ; $4424: $05
	ld   [bc], a                                     ; $4425: $02
	ld   [bc], a                                     ; $4426: $02
	dec  e                                           ; $4427: $1d
	ld   b, b                                        ; $4428: $40
	dec  d                                           ; $4429: $15
	inc  bc                                          ; $442a: $03
	dec  d                                           ; $442b: $15
	ld   bc, $2902                                   ; $442c: $01 $02 $29
	nop                                              ; $442f: $00
	ld   bc, $546b                                   ; $4430: $01 $6b $54
	ld   e, c                                        ; $4433: $59
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	dec  c                                           ; $4436: $0d
	inc  bc                                          ; $4437: $03
	jr   z, jr_06a_443e                              ; $4438: $28 $04

	ld   c, b                                        ; $443a: $48
	sub  d                                           ; $443b: $92
	ld   a, b                                        ; $443c: $78
	db   $fc                                         ; $443d: $fc

jr_06a_443e:
	dec  c                                           ; $443e: $0d
	adc  c                                           ; $443f: $89
	ld   a, b                                        ; $4440: $78
	sbc  [hl]                                        ; $4441: $9e
	ld   e, b                                        ; $4442: $58
	sub  d                                           ; $4443: $92
	ld   h, a                                        ; $4444: $67
	adc  l                                           ; $4445: $8d
	sbc  a                                           ; $4446: $9f
	dec  c                                           ; $4447: $0d
	nop                                              ; $4448: $00
	ld   a, [bc]                                     ; $4449: $0a
	dec  c                                           ; $444a: $0d
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	rrca                                             ; $444d: $0f
	nop                                              ; $444e: $00
	ld   bc, $1e09                                   ; $444f: $01 $09 $1e
	nop                                              ; $4452: $00
	inc  e                                           ; $4453: $1c
	dec  b                                           ; $4454: $05
	nop                                              ; $4455: $00
	nop                                              ; $4456: $00
	ld   bc, $9e50                                   ; $4457: $01 $50 $9e
	ld   [hl], d                                     ; $445a: $72
	ld   h, d                                        ; $445b: $62
	ld   d, h                                        ; $445c: $54
	ld   [bc], a                                     ; $445d: $02
	jr   z, jr_06a_44b2                              ; $445e: $28 $52

	and  c                                           ; $4460: $a1
	sub  d                                           ; $4461: $92
	ld   [hl], c                                     ; $4462: $71
	ld   l, l                                        ; $4463: $6d
	sub  a                                           ; $4464: $97
	dec  c                                           ; $4465: $0d
	inc  b                                           ; $4466: $04
	sub  $05                                         ; $4467: $d6 $05
	ld   de, $a169                                   ; $4469: $11 $69 $a1
	ld   [hl], l                                     ; $446c: $75
	xor  c                                           ; $446d: $a9
	xor  c                                           ; $446e: $a9
	ld   [hl], l                                     ; $446f: $75
	sbc  a                                           ; $4470: $9f
	dec  c                                           ; $4471: $0d
	nop                                              ; $4472: $00
	ld   a, [bc]                                     ; $4473: $0a
	dec  e                                           ; $4474: $1d
	ld   b, b                                        ; $4475: $40
	dec  d                                           ; $4476: $15
	inc  bc                                          ; $4477: $03
	dec  d                                           ; $4478: $15
	ld   bc, $2901                                   ; $4479: $01 $01 $29
	nop                                              ; $447c: $00
	ld   bc, $7889                                   ; $447d: $01 $89 $78
	sbc  [hl]                                        ; $4480: $9e
	ld   e, b                                        ; $4481: $58
	sub  d                                           ; $4482: $92
	ld   h, a                                        ; $4483: $67
	adc  l                                           ; $4484: $8d
	sbc  a                                           ; $4485: $9f
	dec  c                                           ; $4486: $0d
	nop                                              ; $4487: $00
	ld   a, [bc]                                     ; $4488: $0a
	dec  c                                           ; $4489: $0d
	nop                                              ; $448a: $00
	nop                                              ; $448b: $00
	rrca                                             ; $448c: $0f
	nop                                              ; $448d: $00
	ld   bc, $1e09                                   ; $448e: $01 $09 $1e
	nop                                              ; $4491: $00
	nop                                              ; $4492: $00
	inc  bc                                          ; $4493: $03
	ld   de, $af01                                   ; $4494: $11 $01 $af
	dec  h                                           ; $4497: $25
	inc  b                                           ; $4498: $04
	add  b                                           ; $4499: $80
	rrca                                             ; $449a: $0f
	ld   bc, $20ff                                   ; $449b: $01 $ff $20
	inc  e                                           ; $449e: $1c
	nop                                              ; $449f: $00
	ld   c, $02                                      ; $44a0: $0e $02
	rrca                                             ; $44a2: $0f
	nop                                              ; $44a3: $00
	ld   bc, $0102                                   ; $44a4: $01 $02 $01
	rst  $38                                         ; $44a7: $ff
	rst  $38                                         ; $44a8: $ff
	and  c                                           ; $44a9: $a1
	ld   sp, hl                                      ; $44aa: $f9
	dec  c                                           ; $44ab: $0d
	sub  b                                           ; $44ac: $90
	ld   d, h                                        ; $44ad: $54
	ld   h, c                                        ; $44ae: $61
	and  c                                           ; $44af: $a1
	ld   a, b                                        ; $44b0: $78
	inc  bc                                          ; $44b1: $03

jr_06a_44b2:
	ld   l, a                                        ; $44b2: $6f
	ld   [bc], a                                     ; $44b3: $02
	xor  c                                           ; $44b4: $a9
	ld   e, c                                        ; $44b5: $59
	rst  $38                                         ; $44b6: $ff
	rst  $38                                         ; $44b7: $ff
	dec  c                                           ; $44b8: $0d
	inc  b                                           ; $44b9: $04
	xor  d                                           ; $44ba: $aa
	ld   [bc], a                                     ; $44bb: $02
	sub  a                                           ; $44bc: $97
	and  b                                           ; $44bd: $a0
	ld   [hl], d                                     ; $44be: $72
	ld   e, a                                        ; $44bf: $5f
	ld   [hl], h                                     ; $44c0: $74
	sbc  [hl]                                        ; $44c1: $9e
	inc  b                                           ; $44c2: $04
	ld   b, d                                        ; $44c3: $42
	sub  [hl]                                        ; $44c4: $96
	ld   d, h                                        ; $44c5: $54
	sbc  a                                           ; $44c6: $9f
	dec  c                                           ; $44c7: $0d
	nop                                              ; $44c8: $00
	ld   a, [bc]                                     ; $44c9: $0a
	inc  d                                           ; $44ca: $14
	ld   b, $01                                      ; $44cb: $06 $01
	rrca                                             ; $44cd: $0f
	ld   bc, $0100                                   ; $44ce: $01 $00 $01
	ld   [$6300], sp                                 ; $44d1: $08 $00 $63
	and  c                                           ; $44d4: $a1
	dec  c                                           ; $44d5: $0d
	ld   d, d                                        ; $44d6: $52
	sub  a                                           ; $44d7: $97
	ld   [hl], c                                     ; $44d8: $71
	ld   h, l                                        ; $44d9: $65
	sub  c                                           ; $44da: $91
	ld   d, d                                        ; $44db: $52
	adc  h                                           ; $44dc: $8c
	ld   h, a                                        ; $44dd: $67
	ld   e, c                                        ; $44de: $59
	ld   sp, hl                                      ; $44df: $f9
	dec  c                                           ; $44e0: $0d
	nop                                              ; $44e1: $00
	ld   a, [bc]                                     ; $44e2: $0a
	rrca                                             ; $44e3: $0f
	nop                                              ; $44e4: $00
	ld   bc, $7d01                                   ; $44e5: $01 $01 $7d
	ld   d, d                                        ; $44e8: $52
	sbc  [hl]                                        ; $44e9: $9e
	ld   [hl], a                                     ; $44ea: $77
	ld   d, h                                        ; $44eb: $54
	ld   l, h                                        ; $44ec: $6c
	sbc  a                                           ; $44ed: $9f
	dec  c                                           ; $44ee: $0d
	nop                                              ; $44ef: $00
	ld   a, [bc]                                     ; $44f0: $0a
	inc  d                                           ; $44f1: $14
	ld   a, [bc]                                     ; $44f2: $0a
	ld   bc, $011c                                   ; $44f3: $01 $1c $01
	nop                                              ; $44f6: $00
	nop                                              ; $44f7: $00
	ld   bc, $ef04                                   ; $44f8: $01 $04 $ef
	ld   e, b                                        ; $44fb: $58
	ld   l, e                                        ; $44fc: $6b
	ld   e, l                                        ; $44fd: $5d
	ld   a, c                                        ; $44fe: $79
	ld   h, a                                        ; $44ff: $67
	adc  l                                           ; $4500: $8d
	adc  h                                           ; $4501: $8c
	ld   l, c                                        ; $4502: $69
	and  c                                           ; $4503: $a1
	sbc  a                                           ; $4504: $9f
	dec  c                                           ; $4505: $0d
	ld   [$6300], sp                                 ; $4506: $08 $00 $63
	and  c                                           ; $4509: $a1
	sbc  a                                           ; $450a: $9f
	dec  c                                           ; $450b: $0d
	nop                                              ; $450c: $00
	ld   a, [bc]                                     ; $450d: $0a
	ld   bc, $7c50                                   ; $450e: $01 $50 $7c
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	inc  b                                           ; $4513: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4514: $cf
	inc  b                                           ; $4515: $04
	xor  d                                           ; $4516: $aa
	sbc  [hl]                                        ; $4517: $9e
	ld   d, b                                        ; $4518: $50
	ld   l, l                                        ; $4519: $6d
	ld   h, l                                        ; $451a: $65
	dec  c                                           ; $451b: $0d
	inc  b                                           ; $451c: $04
	adc  [hl]                                        ; $451d: $8e
	inc  b                                           ; $451e: $04
	inc  c                                           ; $451f: $0c
	inc  bc                                          ; $4520: $03
	ld   [de], a                                     ; $4521: $12
	ld   [bc], a                                     ; $4522: $02
	ld   c, h                                        ; $4523: $4c
	ld   a, h                                        ; $4524: $7c
	ld   e, b                                        ; $4525: $58
	inc  bc                                          ; $4526: $03
	inc  de                                          ; $4527: $13
	sbc  b                                           ; $4528: $98
	ld   a, c                                        ; $4529: $79
	ld   [bc], a                                     ; $452a: $02
	ld   a, a                                        ; $452b: $7f
	ld   e, l                                        ; $452c: $5d
	and  c                                           ; $452d: $a1
	dec  c                                           ; $452e: $0d
	ld   [hl], l                                     ; $452f: $75
	ld   h, a                                        ; $4530: $67
	ld   e, a                                        ; $4531: $5f
	ld   [hl], a                                     ; $4532: $77
	rst  $38                                         ; $4533: $ff
	rst  $38                                         ; $4534: $ff
	dec  c                                           ; $4535: $0d
	nop                                              ; $4536: $00
	ld   a, [bc]                                     ; $4537: $0a
	ld   bc, $6590                                   ; $4538: $01 $90 $65
	sbc  [hl]                                        ; $453b: $9e
	sub  [hl]                                        ; $453c: $96
	sbc  e                                           ; $453d: $9b
	ld   h, l                                        ; $453e: $65
	ld   e, a                                        ; $453f: $5f
	sbc  d                                           ; $4540: $9a
	ld   a, [hl]                                     ; $4541: $7e
	dec  c                                           ; $4542: $0d
	ld   [$6300], sp                                 ; $4543: $08 $00 $63
	and  c                                           ; $4546: $a1
	sub  b                                           ; $4547: $90
	dec  c                                           ; $4548: $0d
	ld   d, d                                        ; $4549: $52
	ld   [hl], c                                     ; $454a: $71
	ld   h, l                                        ; $454b: $65
	sub  l                                           ; $454c: $95
	ld   a, c                                        ; $454d: $79
	ld   [bc], a                                     ; $454e: $02
	ld   a, a                                        ; $454f: $7f
	ld   e, e                                        ; $4550: $5b
	adc  h                                           ; $4551: $8c
	ld   l, c                                        ; $4552: $69
	and  c                                           ; $4553: $a1
	ld   e, c                                        ; $4554: $59
	ld   sp, hl                                      ; $4555: $f9
	dec  c                                           ; $4556: $0d
	nop                                              ; $4557: $00
	ld   a, [bc]                                     ; $4558: $0a
	add  hl, de                                      ; $4559: $19
	dec  b                                           ; $455a: $05
	ld   [bc], a                                     ; $455b: $02
	ld   a, l                                        ; $455c: $7d
	ld   d, d                                        ; $455d: $52
	sbc  [hl]                                        ; $455e: $9e
	sub  [hl]                                        ; $455f: $96
	sbc  e                                           ; $4560: $9b
	ld   h, c                                        ; $4561: $61
	and  c                                           ; $4562: $a1
	ld   [hl], l                                     ; $4563: $75
	nop                                              ; $4564: $00
	nop                                              ; $4565: $00
	inc  b                                           ; $4566: $04
	di                                               ; $4567: $f3
	ld   [bc], a                                     ; $4568: $02
	jp   $505a                               ; $4569: $c3 $5a $50


	sbc  c                                           ; $456c: $99
	nop                                              ; $456d: $00
	ld   bc, $e407                                   ; $456e: $01 $07 $e4
	nop                                              ; $4571: $00
	ld   [bc], a                                     ; $4572: $02
	inc  bc                                          ; $4573: $03
	ld   bc, $2000                                   ; $4574: $01 $00 $20
	nop                                              ; $4577: $00
	rlca                                             ; $4578: $07
	ld   d, a                                        ; $4579: $57
	ld   bc, $0302                                   ; $457a: $01 $02 $03
	ld   bc, $2001                                   ; $457d: $01 $01 $20
	nop                                              ; $4580: $00
	ld   b, $71                                      ; $4581: $06 $71
	ld   bc, $000f                                   ; $4583: $01 $0f $00
	ld   bc, $7d01                                   ; $4586: $01 $01 $7d
	ld   d, d                                        ; $4589: $52
	ld   a, [GetRandomNumInPreSpecifiedRange]                                  ; $458a: $fa $10 $0d
	sub  [hl]                                        ; $458d: $96
	sbc  e                                           ; $458e: $9b
	ld   h, c                                        ; $458f: $61
	and  c                                           ; $4590: $a1
	ld   [hl], l                                     ; $4591: $75
	ld   a, [$0dfa]                                  ; $4592: $fa $fa $0d
	nop                                              ; $4595: $00
	ld   a, [bc]                                     ; $4596: $0a
	inc  e                                           ; $4597: $1c
	ld   bc, $0101                                   ; $4598: $01 $01 $01
	dec  e                                           ; $459b: $1d
	ld   b, b                                        ; $459c: $40
	ld   de, $1103                                   ; $459d: $11 $03 $11
	ld   bc, $2802                                   ; $45a0: $01 $02 $28
	nop                                              ; $45a3: $00
	ld   bc, $546b                                   ; $45a4: $01 $6b $54
	ld   [hl], l                                     ; $45a7: $75
	ld   h, a                                        ; $45a8: $67
	ld   e, c                                        ; $45a9: $59
	sbc  a                                           ; $45aa: $9f
	dec  c                                           ; $45ab: $0d
	ld   h, [hl]                                     ; $45ac: $66
	sub  c                                           ; $45ad: $91
	ld   d, b                                        ; $45ae: $50
	sbc  [hl]                                        ; $45af: $9e
	inc  b                                           ; $45b0: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45b1: $cf
	inc  b                                           ; $45b2: $04
	xor  d                                           ; $45b3: $aa
	ld   a, h                                        ; $45b4: $7c
	inc  bc                                          ; $45b5: $03
	ld   d, $0d                                      ; $45b6: $16 $0d
	ld   [de], a                                     ; $45b8: $12
	ld   [bc], a                                     ; $45b9: $02
	ld   e, h                                        ; $45ba: $5c
	rst  $28                                         ; $45bb: $ef
	call nc, $75fb                           ; $45bc: $d4 $fb $75
	inc  b                                           ; $45bf: $04
	rla                                              ; $45c0: $17
	ld   [hl], c                                     ; $45c1: $71
	ld   [hl], h                                     ; $45c2: $74
	adc  h                                           ; $45c3: $8c
	ld   h, a                                        ; $45c4: $67
	sbc  a                                           ; $45c5: $9f
	dec  c                                           ; $45c6: $0d
	nop                                              ; $45c7: $00
	ld   a, [bc]                                     ; $45c8: $0a
	dec  b                                           ; $45c9: $05
	add  b                                           ; $45ca: $80
	db   $10                                         ; $45cb: $10
	ld   bc, $0001                                   ; $45cc: $01 $01 $00
	ld   bc, $616f                                   ; $45cf: $01 $6f $61
	ld   e, l                                        ; $45d2: $5d
	ld   h, l                                        ; $45d3: $65
	ld   a, b                                        ; $45d4: $78
	ld   d, d                                        ; $45d5: $52
	ld   [hl], l                                     ; $45d6: $75
	ld   e, l                                        ; $45d7: $5d
	ld   l, [hl]                                     ; $45d8: $6e
	ld   h, e                                        ; $45d9: $63
	ld   d, d                                        ; $45da: $52
	ld   a, e                                        ; $45db: $7b
	sbc  a                                           ; $45dc: $9f
	dec  c                                           ; $45dd: $0d
	ld   [hl], l                                     ; $45de: $75
	ld   a, l                                        ; $45df: $7d
	sbc  [hl]                                        ; $45e0: $9e
	ld   e, b                                        ; $45e1: $58
	sub  d                                           ; $45e2: $92
	ld   h, a                                        ; $45e3: $67
	adc  l                                           ; $45e4: $8d
	ld   a, b                                        ; $45e5: $78
	ld   h, e                                        ; $45e6: $63
	ld   d, d                                        ; $45e7: $52
	sbc  a                                           ; $45e8: $9f
	dec  c                                           ; $45e9: $0d
	nop                                              ; $45ea: $00
	ld   a, [bc]                                     ; $45eb: $0a
	dec  c                                           ; $45ec: $0d
	nop                                              ; $45ed: $00
	nop                                              ; $45ee: $00
	rrca                                             ; $45ef: $0f
	nop                                              ; $45f0: $00
	ld   bc, $1e09                                   ; $45f1: $01 $09 $1e
	add  hl, hl                                      ; $45f4: $29
	nop                                              ; $45f5: $00
	nop                                              ; $45f6: $00
	rrca                                             ; $45f7: $0f
	nop                                              ; $45f8: $00
	ld   bc, $6701                                   ; $45f9: $01 $01 $67
	adc  l                                           ; $45fc: $8d
	adc  h                                           ; $45fd: $8c
	ld   l, c                                        ; $45fe: $69
	and  c                                           ; $45ff: $a1
	rst  $38                                         ; $4600: $ff
	rst  $38                                         ; $4601: $ff
	dec  c                                           ; $4602: $0d
	inc  b                                           ; $4603: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4604: $cf
	inc  b                                           ; $4605: $04
	xor  d                                           ; $4606: $aa
	ld   a, l                                        ; $4607: $7d
	ld   l, a                                        ; $4608: $6f
	sub  l                                           ; $4609: $95
	ld   [hl], c                                     ; $460a: $71
	halt                                             ; $460b: $76
	rst  $38                                         ; $460c: $ff
	rst  $38                                         ; $460d: $ff
	dec  c                                           ; $460e: $0d
	nop                                              ; $460f: $00
	ld   a, [bc]                                     ; $4610: $0a
	inc  e                                           ; $4611: $1c
	ld   bc, $0404                                   ; $4612: $01 $04 $04
	ld   bc, $9e50                                   ; $4615: $01 $50 $9e
	inc  b                                           ; $4618: $04
	di                                               ; $4619: $f3
	ld   [bc], a                                     ; $461a: $02
	jp   $505a                               ; $461b: $c3 $5a $50


	sbc  c                                           ; $461e: $99
	and  c                                           ; $461f: $a1
	ld   [hl], l                                     ; $4620: $75
	ld   h, a                                        ; $4621: $67
	ld   a, e                                        ; $4622: $7b
	sbc  a                                           ; $4623: $9f
	dec  c                                           ; $4624: $0d
	ld   l, [hl]                                     ; $4625: $6e
	ld   [hl], c                                     ; $4626: $71
	ld   l, l                                        ; $4627: $6d
	sub  a                                           ; $4628: $97
	ld   d, d                                        ; $4629: $52
	ld   d, d                                        ; $462a: $52
	ld   [hl], l                                     ; $462b: $75
	ld   h, a                                        ; $462c: $67
	sub  [hl]                                        ; $462d: $96
	sbc  a                                           ; $462e: $9f
	dec  c                                           ; $462f: $0d
	ldh  [c], a                                      ; $4630: $e2
	db   $ec                                         ; $4631: $ec
	ld   h, l                                        ; $4632: $65
	ld   a, b                                        ; $4633: $78
	ld   d, d                                        ; $4634: $52
	ld   [hl], l                                     ; $4635: $75
	ld   [bc], a                                     ; $4636: $02
	inc  [hl]                                        ; $4637: $34
	ld   h, e                                        ; $4638: $63
	ld   d, d                                        ; $4639: $52
	sbc  a                                           ; $463a: $9f
	dec  c                                           ; $463b: $0d
	nop                                              ; $463c: $00
	ld   a, [bc]                                     ; $463d: $0a
	inc  e                                           ; $463e: $1c
	ld   bc, $0000                                   ; $463f: $01 $00 $00
	ld   bc, $7d75                                   ; $4642: $01 $75 $7d
	sbc  [hl]                                        ; $4645: $9e
	ld   e, b                                        ; $4646: $58
	sub  d                                           ; $4647: $92
	ld   h, a                                        ; $4648: $67
	adc  l                                           ; $4649: $8d
	ld   a, b                                        ; $464a: $78
	ld   h, e                                        ; $464b: $63
	ld   d, d                                        ; $464c: $52
	sbc  a                                           ; $464d: $9f
	dec  c                                           ; $464e: $0d
	nop                                              ; $464f: $00
	ld   a, [bc]                                     ; $4650: $0a
	dec  c                                           ; $4651: $0d
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	rrca                                             ; $4654: $0f
	nop                                              ; $4655: $00
	ld   bc, $1e09                                   ; $4656: $01 $09 $1e
	add  hl, hl                                      ; $4659: $29
	nop                                              ; $465a: $00
	nop                                              ; $465b: $00
