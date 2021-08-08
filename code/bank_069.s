; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $069", ROMX[$4000], BANK[$69]

	rst  $38                                         ; $4000: $ff
	rst  $38                                         ; $4001: $ff
	ld   l, a                                        ; $4002: $6f
	sub  l                                           ; $4003: $95
	ld   [hl], c                                     ; $4004: $71
	halt                                             ; $4005: $76
	inc  b                                           ; $4006: $04
	bit  7, h                                        ; $4007: $cb $7c
	ld   h, c                                        ; $4009: $61
	halt                                             ; $400a: $76
	and  b                                           ; $400b: $a0
	dec  c                                           ; $400c: $0d
	dec  b                                           ; $400d: $05
	pop  de                                          ; $400e: $d1
	ld   d, d                                        ; $400f: $52
	inc  bc                                          ; $4010: $03
	add  b                                           ; $4011: $80
	ld   h, l                                        ; $4012: $65
	ld   [hl], h                                     ; $4013: $74
	ld   d, d                                        ; $4014: $52
	ld   l, l                                        ; $4015: $6d
	ld   a, h                                        ; $4016: $7c
	rst  $38                                         ; $4017: $ff
	rst  $38                                         ; $4018: $ff
	dec  c                                           ; $4019: $0d
	nop                                              ; $401a: $00
	ld   a, [bc]                                     ; $401b: $0a
	ld   bc, $7452                                   ; $401c: $01 $52 $74
	ld   [hl], d                                     ; $401f: $72
	ld   d, d                                        ; $4020: $52
	ld   l, l                                        ; $4021: $6d
	cp   b                                           ; $4022: $b8
	jp   c, $a3ec                                    ; $4023: $da $ec $a3

	ld   a, h                                        ; $4026: $7c
	inc  bc                                          ; $4027: $03
	adc  $75                                         ; $4028: $ce $75
	dec  c                                           ; $402a: $0d
	or   b                                           ; $402b: $b0
	pop  af                                          ; $402c: $f1
	call nz, $ecb6                                   ; $402d: $c4 $b6 $ec
	ei                                               ; $4030: $fb
	halt                                             ; $4031: $76
	ld   [bc], a                                     ; $4032: $02
	ld   a, b                                        ; $4033: $78
	ld   a, [hl]                                     ; $4034: $7e
	sbc  d                                           ; $4035: $9a
	ld   [hl], h                                     ; $4036: $74
	ld   d, d                                        ; $4037: $52
	ld   l, l                                        ; $4038: $6d
	dec  c                                           ; $4039: $0d
	ld   h, c                                        ; $403a: $61
	sbc  e                                           ; $403b: $9b
	rst  $38                                         ; $403c: $ff
	rst  $38                                         ; $403d: $ff
	dec  c                                           ; $403e: $0d
	nop                                              ; $403f: $00
	ld   a, [bc]                                     ; $4040: $0a
	ld   bc, $7b05                                   ; $4041: $01 $05 $7b
	ld   b, $25                                      ; $4044: $06 $25
	halt                                             ; $4046: $76
	ld   d, d                                        ; $4047: $52
	ld   d, h                                        ; $4048: $54
	ld   [bc], a                                     ; $4049: $02
	sbc  l                                           ; $404a: $9d
	inc  b                                           ; $404b: $04
	sub  c                                           ; $404c: $91
	ld   a, c                                        ; $404d: $79
	dec  c                                           ; $404e: $0d
	dec  b                                           ; $404f: $05
	rst  $38                                         ; $4050: $ff
	dec  b                                           ; $4051: $05
	rst  $10                                         ; $4052: $d7
	and  b                                           ; $4053: $a0
	sub  b                                           ; $4054: $90
	sub  d                                           ; $4055: $92
	ld   h, l                                        ; $4056: $65
	ld   [hl], h                                     ; $4057: $74
	ld   d, d                                        ; $4058: $52
	ld   l, l                                        ; $4059: $6d
	dec  c                                           ; $405a: $0d
	inc  bc                                          ; $405b: $03
	ld   l, h                                        ; $405c: $6c
	inc  bc                                          ; $405d: $03
	ld   l, [hl]                                     ; $405e: $6e
	inc  bc                                          ; $405f: $03
	ld   l, a                                        ; $4060: $6f
	inc  bc                                          ; $4061: $03
	sbc  $ff                                         ; $4062: $de $ff
	rst  $38                                         ; $4064: $ff
	dec  c                                           ; $4065: $0d
	nop                                              ; $4066: $00
	ld   a, [bc]                                     ; $4067: $0a
	ld   bc, $656b                                   ; $4068: $01 $6b $65
	ld   [hl], h                                     ; $406b: $74
	rst  JumpTable                                         ; $406c: $df
	push af                                          ; $406d: $f5
	ret  nc                                          ; $406e: $d0

	call nz, $f5c0                                   ; $406f: $c4 $c0 $f5
	ld   a, h                                        ; $4072: $7c
	dec  c                                           ; $4073: $0d
	sub  d                                           ; $4074: $92
	ld   e, a                                        ; $4075: $5f
	sbc  c                                           ; $4076: $99
	sub  [hl]                                        ; $4077: $96
	ld   d, h                                        ; $4078: $54
	ld   a, b                                        ; $4079: $78
	inc  b                                           ; $407a: $04
	ldh  a, [rDIV]                                   ; $407b: $f0 $04
	xor  d                                           ; $407d: $aa
	ld   a, h                                        ; $407e: $7c
	ld   [bc], a                                     ; $407f: $02
	inc  [hl]                                        ; $4080: $34
	ld   [hl], l                                     ; $4081: $75
	dec  c                                           ; $4082: $0d
	and  a                                           ; $4083: $a7
	db   $eb                                         ; $4084: $eb
	inc  bc                                          ; $4085: $03
	add  hl, de                                      ; $4086: $19
	ld   [bc], a                                     ; $4087: $02
	ld   b, d                                        ; $4088: $42
	ld   a, c                                        ; $4089: $79
	inc  bc                                          ; $408a: $03
	ld   d, d                                        ; $408b: $52
	ld   e, e                                        ; $408c: $5b
	ld   [hl], h                                     ; $408d: $74
	ld   d, d                                        ; $408e: $52
	ld   l, l                                        ; $408f: $6d
	ld   h, c                                        ; $4090: $61
	sbc  e                                           ; $4091: $9b
	sbc  a                                           ; $4092: $9f
	dec  c                                           ; $4093: $0d
	nop                                              ; $4094: $00
	ld   a, [bc]                                     ; $4095: $0a
	ld   bc, $d6df                                   ; $4096: $01 $df $d6
	and  h                                           ; $4099: $a4
	and  e                                           ; $409a: $a3
	ld   a, h                                        ; $409b: $7c
	inc  bc                                          ; $409c: $03
	ld   l, e                                        ; $409d: $6b
	inc  bc                                          ; $409e: $03
	ld   a, b                                        ; $409f: $78
	halt                                             ; $40a0: $76
	ld   a, b                                        ; $40a1: $78
	ld   [hl], c                                     ; $40a2: $71
	ld   [hl], h                                     ; $40a3: $74
	dec  c                                           ; $40a4: $0d
	ld   [bc], a                                     ; $40a5: $02
	jr   z, @+$7e                                    ; $40a6: $28 $7c

	inc  b                                           ; $40a8: $04
	ld   d, $79                                      ; $40a9: $16 $79
	inc  bc                                          ; $40ab: $03
	ld   a, l                                        ; $40ac: $7d
	and  b                                           ; $40ad: $a0
	add  e                                           ; $40ae: $83
	adc  l                                           ; $40af: $8d
	ld   d, d                                        ; $40b0: $52
	sbc  d                                           ; $40b1: $9a
	ld   [hl], h                                     ; $40b2: $74
	ld   d, d                                        ; $40b3: $52
	ld   l, l                                        ; $40b4: $6d
	dec  c                                           ; $40b5: $0d
	inc  bc                                          ; $40b6: $03
	ld   a, [bc]                                     ; $40b7: $0a
	inc  bc                                          ; $40b8: $03
	ld   [hl], d                                     ; $40b9: $72
	inc  bc                                          ; $40ba: $03
	ld   l, a                                        ; $40bb: $6f
	inc  bc                                          ; $40bc: $03
	sbc  $ff                                         ; $40bd: $de $ff
	rst  $38                                         ; $40bf: $ff
	dec  c                                           ; $40c0: $0d
	nop                                              ; $40c1: $00
	ld   a, [bc]                                     ; $40c2: $0a
	rrca                                             ; $40c3: $0f
	nop                                              ; $40c4: $00
	ld   bc, $ff01                                   ; $40c5: $01 $01 $ff
	rst  $38                                         ; $40c8: $ff
	rst  $38                                         ; $40c9: $ff
	rst  $38                                         ; $40ca: $ff
	dec  c                                           ; $40cb: $0d
	nop                                              ; $40cc: $00
	ld   a, [bc]                                     ; $40cd: $0a
	inc  e                                           ; $40ce: $1c
	inc  bc                                          ; $40cf: $03
	inc  b                                           ; $40d0: $04
	inc  b                                           ; $40d1: $04
	ld   bc, $0b03                                   ; $40d2: $01 $03 $0b
	ld   bc, $5014                                   ; $40d5: $01 $14 $50
	ld   [hl], c                                     ; $40d8: $71
	ld   l, l                                        ; $40d9: $6d
	sbc  l                                           ; $40da: $9d
	rst  $38                                         ; $40db: $ff
	rst  $38                                         ; $40dc: $ff
	dec  c                                           ; $40dd: $0d
	ld   [bc], a                                     ; $40de: $02
	and  l                                           ; $40df: $a5
	adc  h                                           ; $40e0: $8c
	ld   [hl], l                                     ; $40e1: $75
	ld   a, h                                        ; $40e2: $7c
	inc  bc                                          ; $40e3: $03
	add  d                                           ; $40e4: $82
	inc  bc                                          ; $40e5: $03
	ld   d, d                                        ; $40e6: $52
	ld   [hl], l                                     ; $40e7: $75
	rst  $38                                         ; $40e8: $ff
	rst  $38                                         ; $40e9: $ff
	dec  c                                           ; $40ea: $0d
	nop                                              ; $40eb: $00
	ld   a, [bc]                                     ; $40ec: $0a
	inc  e                                           ; $40ed: $1c
	inc  bc                                          ; $40ee: $03
	ld   [bc], a                                     ; $40ef: $02
	ld   [bc], a                                     ; $40f0: $02
	ld   bc, $6e6d                                   ; $40f1: $01 $6d $6e
	ld   [bc], a                                     ; $40f4: $02
	sbc  l                                           ; $40f5: $9d
	ld   d, [hl]                                     ; $40f6: $56
	sbc  c                                           ; $40f7: $99
	ld   a, h                                        ; $40f8: $7c
	ld   a, l                                        ; $40f9: $7d
	dec  c                                           ; $40fa: $0d
	ld   [bc], a                                     ; $40fb: $02
	and  l                                           ; $40fc: $a5
	sbc  [hl]                                        ; $40fd: $9e
	inc  bc                                          ; $40fe: $03
	ret  z                                           ; $40ff: $c8

	ld   e, d                                        ; $4100: $5a
	inc  bc                                          ; $4101: $03
	ld   d, d                                        ; $4102: $52
	ld   e, e                                        ; $4103: $5b
	ld   [hl], h                                     ; $4104: $74
	ld   d, d                                        ; $4105: $52
	sbc  c                                           ; $4106: $99
	dec  c                                           ; $4107: $0d
	halt                                             ; $4108: $76
	ld   d, d                                        ; $4109: $52
	ld   d, h                                        ; $410a: $54
	ld   h, c                                        ; $410b: $61
	halt                                             ; $410c: $76
	rst  $38                                         ; $410d: $ff
	rst  $38                                         ; $410e: $ff
	dec  c                                           ; $410f: $0d
	nop                                              ; $4110: $00
	ld   a, [bc]                                     ; $4111: $0a
	inc  e                                           ; $4112: $1c

jr_069_4113:
	inc  bc                                          ; $4113: $03
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	ld   bc, $a18d                                   ; $4116: $01 $8d $a1
	ld   a, b                                        ; $4119: $78
	halt                                             ; $411a: $76
	halt                                             ; $411b: $76
	sub  b                                           ; $411c: $90
	ld   a, c                                        ; $411d: $79
	dec  c                                           ; $411e: $0d
	ld   h, c                                        ; $411f: $61
	ld   a, h                                        ; $4120: $7c
	inc  b                                           ; $4121: $04
	ld   [$9202], sp                                 ; $4122: $08 $02 $92
	ld   a, c                                        ; $4125: $79
	ld   d, d                                        ; $4126: $52
	sbc  c                                           ; $4127: $99
	halt                                             ; $4128: $76
	ld   d, d                                        ; $4129: $52
	ld   d, h                                        ; $412a: $54
	ld   h, c                                        ; $412b: $61
	halt                                             ; $412c: $76
	ld   e, d                                        ; $412d: $5a
	dec  c                                           ; $412e: $0d
	inc  b                                           ; $412f: $04
	ld   c, $02                                      ; $4130: $0e $02
	jp   Jump_069_716e                               ; $4132: $c3 $6e $71


	ld   [hl], h                                     ; $4135: $74
	ld   h, c                                        ; $4136: $61
	halt                                             ; $4137: $76
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	dec  c                                           ; $413a: $0d
	nop                                              ; $413b: $00
	ld   a, [bc]                                     ; $413c: $0a
	ld   bc, $9a6b                                   ; $413d: $01 $6b $9a
	ld   e, d                                        ; $4140: $5a
	inc  bc                                          ; $4141: $03
	ld   l, c                                        ; $4142: $69
	ld   [bc], a                                     ; $4143: $02
	xor  d                                           ; $4144: $aa
	ld   a, c                                        ; $4145: $79
	ld   a, l                                        ; $4146: $7d
	dec  c                                           ; $4147: $0d
	ld   l, l                                        ; $4148: $6d
	ld   [hl], a                                     ; $4149: $77
	sbc  b                                           ; $414a: $98
	ld   [hl], d                                     ; $414b: $72
	ld   e, l                                        ; $414c: $5d
	inc  bc                                          ; $414d: $03
	call c, Call_069_7b56                            ; $414e: $dc $56 $7b
	sbc  a                                           ; $4151: $9f
	dec  c                                           ; $4152: $0d
	nop                                              ; $4153: $00
	ld   a, [bc]                                     ; $4154: $0a
	inc  e                                           ; $4155: $1c
	inc  bc                                          ; $4156: $03
	inc  bc                                          ; $4157: $03
	inc  bc                                          ; $4158: $03
	dec  e                                           ; $4159: $1d
	ld   b, b                                        ; $415a: $40
	inc  de                                          ; $415b: $13
	inc  bc                                          ; $415c: $03
	inc  de                                          ; $415d: $13
	ld   bc, $2803                                   ; $415e: $01 $03 $28
	nop                                              ; $4161: $00
	ld   bc, $8f62                                   ; $4162: $01 $62 $8f
	and  c                                           ; $4165: $a1
	ld   a, b                                        ; $4166: $78
	ld   h, e                                        ; $4167: $63
	ld   d, d                                        ; $4168: $52
	sbc  a                                           ; $4169: $9f
	dec  c                                           ; $416a: $0d
	ld   [hl], d                                     ; $416b: $72
	adc  h                                           ; $416c: $8c
	sub  a                                           ; $416d: $97
	ld   a, b                                        ; $416e: $78
	ld   d, d                                        ; $416f: $52
	dec  b                                           ; $4170: $05
	jr   nz, jr_069_4113                             ; $4171: $20 $a0

	ld   h, l                                        ; $4173: $65
	ld   [hl], h                                     ; $4174: $74
	rst  $38                                         ; $4175: $ff
	rst  $38                                         ; $4176: $ff
	dec  c                                           ; $4177: $0d
	ld   h, [hl]                                     ; $4178: $66
	sub  c                                           ; $4179: $91
	sbc  [hl]                                        ; $417a: $9e
	ld   e, b                                        ; $417b: $58
	sub  d                                           ; $417c: $92
	ld   h, a                                        ; $417d: $67
	adc  l                                           ; $417e: $8d
	ld   a, b                                        ; $417f: $78
	ld   h, e                                        ; $4180: $63
	ld   d, d                                        ; $4181: $52
	sbc  a                                           ; $4182: $9f
	dec  c                                           ; $4183: $0d
	nop                                              ; $4184: $00
	ld   a, [bc]                                     ; $4185: $0a
	dec  c                                           ; $4186: $0d
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	rrca                                             ; $4189: $0f
	nop                                              ; $418a: $00
	ld   bc, $1e09                                   ; $418b: $01 $09 $1e
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	inc  b                                           ; $4190: $04
	add  b                                           ; $4191: $80
	add  [hl]                                        ; $4192: $86
	ld   bc, $20ff                                   ; $4193: $01 $ff $20
	nop                                              ; $4196: $00
	ld   c, $6f                                      ; $4197: $0e $6f
	dec  c                                           ; $4199: $0d
	ld   b, $00                                      ; $419a: $06 $00
	rrca                                             ; $419c: $0f
	nop                                              ; $419d: $00
	ld   bc, $0102                                   ; $419e: $01 $02 $01
	xor  h                                           ; $41a1: $ac
	push af                                          ; $41a2: $f5
	bit  4, e                                        ; $41a3: $cb $63
	and  c                                           ; $41a5: $a1
	rst  $38                                         ; $41a6: $ff
	rst  $38                                         ; $41a7: $ff
	dec  c                                           ; $41a8: $0d
	ld   h, c                                        ; $41a9: $61
	and  c                                           ; $41aa: $a1
	ld   a, b                                        ; $41ab: $78
	inc  b                                           ; $41ac: $04
	rst  $28                                         ; $41ad: $ef
	add  e                                           ; $41ae: $83
	ld   e, a                                        ; $41af: $5f
	ld   a, c                                        ; $41b0: $79
	dec  c                                           ; $41b1: $0d
	inc  bc                                          ; $41b2: $03
	ld   a, e                                        ; $41b3: $7b
	ld   [bc], a                                     ; $41b4: $02
	ld   a, a                                        ; $41b5: $7f
	ld   [hl], l                                     ; $41b6: $75
	ld   h, a                                        ; $41b7: $67
	ld   e, c                                        ; $41b8: $59
	ld   sp, hl                                      ; $41b9: $f9
	dec  c                                           ; $41ba: $0d
	nop                                              ; $41bb: $00
	ld   a, [bc]                                     ; $41bc: $0a
	inc  e                                           ; $41bd: $1c
	ld   b, $00                                      ; $41be: $06 $00
	nop                                              ; $41c0: $00
	ld   bc, $9e50                                   ; $41c1: $01 $50 $9e
	ld   [$ff00], sp                                 ; $41c4: $08 $00 $ff
	rst  $38                                         ; $41c7: $ff
	dec  c                                           ; $41c8: $0d
	nop                                              ; $41c9: $00
	ld   a, [bc]                                     ; $41ca: $0a
	inc  e                                           ; $41cb: $1c
	ld   b, $05                                      ; $41cc: $06 $05
	dec  b                                           ; $41ce: $05
	ld   bc, $ffff                                   ; $41cf: $01 $ff $ff
	ld   l, a                                        ; $41d2: $6f
	sub  l                                           ; $41d3: $95
	ld   [hl], c                                     ; $41d4: $71
	halt                                             ; $41d5: $76
	inc  bc                                          ; $41d6: $03
	sub  d                                           ; $41d7: $92
	inc  b                                           ; $41d8: $04
	ld   l, $7c                                      ; $41d9: $2e $7c
	ld   [bc], a                                     ; $41db: $02
	jp   $0da0                                       ; $41dc: $c3 $a0 $0d


	dec  b                                           ; $41df: $05
	pop  de                                          ; $41e0: $d1
	ld   d, d                                        ; $41e1: $52
	inc  bc                                          ; $41e2: $03
	add  b                                           ; $41e3: $80
	ld   h, l                                        ; $41e4: $65
	ld   l, l                                        ; $41e5: $6d
	sub  a                                           ; $41e6: $97
	inc  b                                           ; $41e7: $04
	adc  $9a                                         ; $41e8: $ce $9a
	ld   a, b                                        ; $41ea: $78
	ld   e, l                                        ; $41eb: $5d
	dec  c                                           ; $41ec: $0d
	ld   a, b                                        ; $41ed: $78
	ld   [hl], c                                     ; $41ee: $71
	ld   [hl], h                                     ; $41ef: $74
	ld   a, b                                        ; $41f0: $78
	rst  $38                                         ; $41f1: $ff
	rst  $38                                         ; $41f2: $ff
	dec  c                                           ; $41f3: $0d
	nop                                              ; $41f4: $00
	ld   a, [bc]                                     ; $41f5: $0a
	rrca                                             ; $41f6: $0f
	nop                                              ; $41f7: $00
	ld   bc, $7701                                   ; $41f8: $01 $01 $77
	and  c                                           ; $41fb: $a1
	ld   a, b                                        ; $41fc: $78
	inc  b                                           ; $41fd: $04
	ld   a, b                                        ; $41fe: $78
	ld   a, b                                        ; $41ff: $78
	and  c                                           ; $4200: $a1
	ld   [hl], l                                     ; $4201: $75
	ld   h, a                                        ; $4202: $67
	ld   e, c                                        ; $4203: $59
	ld   sp, hl                                      ; $4204: $f9
	dec  c                                           ; $4205: $0d
	nop                                              ; $4206: $00
	ld   a, [bc]                                     ; $4207: $0a
	inc  e                                           ; $4208: $1c
	ld   b, $06                                      ; $4209: $06 $06
	ld   b, $01                                      ; $420b: $06 $01
	dec  b                                           ; $420d: $05
	ld   e, h                                        ; $420e: $5c
	inc  b                                           ; $420f: $04
	xor  d                                           ; $4210: $aa
	sbc  [hl]                                        ; $4211: $9e
	ld   e, a                                        ; $4212: $5f
	ld   d, d                                        ; $4213: $52
	ld   h, c                                        ; $4214: $61
	sbc  [hl]                                        ; $4215: $9e
	ld   e, a                                        ; $4216: $5f
	ld   d, d                                        ; $4217: $52
	ld   h, c                                        ; $4218: $61
	sbc  [hl]                                        ; $4219: $9e
	ld   e, a                                        ; $421a: $5f
	ld   d, d                                        ; $421b: $52
	ld   h, c                                        ; $421c: $61
	dec  c                                           ; $421d: $0d
	ld   [hl], l                                     ; $421e: $75
	sbc  [hl]                                        ; $421f: $9e
	ld   [bc], a                                     ; $4220: $02
	or   [hl]                                        ; $4221: $b6
	inc  bc                                          ; $4222: $03
	ld   l, e                                        ; $4223: $6b
	ld   a, [hl]                                     ; $4224: $7e
	ld   [hl], c                                     ; $4225: $71
	ld   e, c                                        ; $4226: $59
	sbc  b                                           ; $4227: $98
	sub  d                                           ; $4228: $92
	ld   [hl], c                                     ; $4229: $71
	ld   [hl], h                                     ; $422a: $74
	ld   l, l                                        ; $422b: $6d
	rst  $38                                         ; $422c: $ff
	rst  $38                                         ; $422d: $ff
	dec  c                                           ; $422e: $0d
	inc  bc                                          ; $422f: $03
	ld   c, d                                        ; $4230: $4a
	inc  bc                                          ; $4231: $03
	jp   c, $529e                                    ; $4232: $da $9e $52

	sub  d                                           ; $4235: $92
	ld   l, [hl]                                     ; $4236: $6e
	ld   [hl], c                                     ; $4237: $71
	ld   l, l                                        ; $4238: $6d
	rst  $38                                         ; $4239: $ff
	rst  $38                                         ; $423a: $ff
	dec  c                                           ; $423b: $0d
	nop                                              ; $423c: $00
	ld   a, [bc]                                     ; $423d: $0a
	inc  e                                           ; $423e: $1c
	ld   b, $00                                      ; $423f: $06 $00
	nop                                              ; $4241: $00
	ld   bc, $1e04                                   ; $4242: $01 $04 $1e
	ld   a, h                                        ; $4245: $7c
	inc  bc                                          ; $4246: $03
	add  [hl]                                        ; $4247: $86
	halt                                             ; $4248: $76
	inc  b                                           ; $4249: $04
	ldh  a, [c]                                      ; $424a: $f2
	and  c                                           ; $424b: $a1
	ld   l, [hl]                                     ; $424c: $6e
	sbc  b                                           ; $424d: $98
	ld   h, l                                        ; $424e: $65
	ld   l, l                                        ; $424f: $6d
	ld   e, c                                        ; $4250: $59
	ld   [hl], c                                     ; $4251: $71
	ld   l, l                                        ; $4252: $6d
	sbc  a                                           ; $4253: $9f
	dec  c                                           ; $4254: $0d
	ld   e, a                                        ; $4255: $5f
	ld   [hl], a                                     ; $4256: $77
	sbc  [hl]                                        ; $4257: $9e
	ld   [bc], a                                     ; $4258: $02
	and  l                                           ; $4259: $a5
	ld   a, h                                        ; $425a: $7c
	ld   d, b                                        ; $425b: $50
	ld   l, l                                        ; $425c: $6d
	ld   d, d                                        ; $425d: $52
	ld   e, d                                        ; $425e: $5a
	ld   d, b                                        ; $425f: $50
	sbc  c                                           ; $4260: $99
	ld   a, h                                        ; $4261: $7c
	ld   a, l                                        ; $4262: $7d
	dec  c                                           ; $4263: $0d
	inc  bc                                          ; $4264: $03
	sub  d                                           ; $4265: $92
	inc  b                                           ; $4266: $04
	ld   l, $7c                                      ; $4267: $2e $7c
	ld   e, b                                        ; $4269: $58
	ld   e, c                                        ; $426a: $59
	ld   h, b                                        ; $426b: $60
	ld   l, [hl]                                     ; $426c: $6e
	rst  $38                                         ; $426d: $ff
	rst  $38                                         ; $426e: $ff
	dec  c                                           ; $426f: $0d
	nop                                              ; $4270: $00
	ld   a, [bc]                                     ; $4271: $0a
	ld   bc, $6590                                   ; $4272: $01 $90 $65
	inc  bc                                          ; $4275: $03
	ld   d, d                                        ; $4276: $52

jr_069_4277:
	ld   e, e                                        ; $4277: $5b
	ld   [hl], h                                     ; $4278: $74
	ld   l, l                                        ; $4279: $6d
	sub  a                                           ; $427a: $97
	dec  c                                           ; $427b: $0d
	inc  bc                                          ; $427c: $03
	ld   c, [hl]                                     ; $427d: $4e
	inc  b                                           ; $427e: $04
	ld   a, l                                        ; $427f: $7d
	ld   h, l                                        ; $4280: $65
	ld   l, l                                        ; $4281: $6d
	ld   e, c                                        ; $4282: $59
	ld   [hl], c                                     ; $4283: $71
	ld   l, l                                        ; $4284: $6d
	sub  [hl]                                        ; $4285: $96
	ld   a, b                                        ; $4286: $78
	rst  $38                                         ; $4287: $ff
	rst  $38                                         ; $4288: $ff
	dec  c                                           ; $4289: $0d
	nop                                              ; $428a: $00
	ld   a, [bc]                                     ; $428b: $0a
	inc  e                                           ; $428c: $1c
	ld   b, $05                                      ; $428d: $06 $05
	dec  b                                           ; $428f: $05
	ld   bc, $d402                                   ; $4290: $01 $02 $d4
	ld   e, l                                        ; $4293: $5d
	ld   a, b                                        ; $4294: $78
	ld   [hl], c                                     ; $4295: $71
	ld   l, l                                        ; $4296: $6d
	ld   d, b                                        ; $4297: $50
	ld   l, l                                        ; $4298: $6d
	ld   d, d                                        ; $4299: $52
	and  b                                           ; $429a: $a0
	ld   [bc], a                                     ; $429b: $02
	sub  l                                           ; $429c: $95
	ld   [hl], h                                     ; $429d: $74
	dec  c                                           ; $429e: $0d
	inc  b                                           ; $429f: $04
	db   $e3                                         ; $42a0: $e3
	ld   h, l                                        ; $42a1: $65
	ld   e, c                                        ; $42a2: $59
	ld   [hl], c                                     ; $42a3: $71
	ld   l, l                                        ; $42a4: $6d
	rst  $38                                         ; $42a5: $ff
	rst  $38                                         ; $42a6: $ff
	dec  c                                           ; $42a7: $0d
	nop                                              ; $42a8: $00
	ld   a, [bc]                                     ; $42a9: $0a
	rrca                                             ; $42aa: $0f
	nop                                              ; $42ab: $00
	ld   bc, $ac01                                   ; $42ac: $01 $01 $ac
	push af                                          ; $42af: $f5
	bit  4, e                                        ; $42b0: $cb $63
	and  c                                           ; $42b2: $a1
	rst  $38                                         ; $42b3: $ff
	rst  $38                                         ; $42b4: $ff
	dec  c                                           ; $42b5: $0d
	nop                                              ; $42b6: $00
	ld   a, [bc]                                     ; $42b7: $0a
	inc  e                                           ; $42b8: $1c
	ld   b, $00                                      ; $42b9: $06 $00
	nop                                              ; $42bb: $00
	dec  e                                           ; $42bc: $1d
	ld   b, b                                        ; $42bd: $40
	ld   d, $03                                      ; $42be: $16 $03
	ld   d, $01                                      ; $42c0: $16 $01
	inc  bc                                          ; $42c2: $03
	jr   z, jr_069_42c5                              ; $42c3: $28 $00

jr_069_42c5:
	ld   bc, $ffff                                   ; $42c5: $01 $ff $ff
	cp   d                                           ; $42c8: $ba
	rst  JumpTable                                         ; $42c9: $df
	push af                                          ; $42ca: $f5
	sbc  [hl]                                        ; $42cb: $9e
	cp   d                                           ; $42cc: $ba
	rst  JumpTable                                         ; $42cd: $df
	push af                                          ; $42ce: $f5
	dec  c                                           ; $42cf: $0d
	ld   [hl], d                                     ; $42d0: $72
	adc  h                                           ; $42d1: $8c
	sub  a                                           ; $42d2: $97
	and  c                                           ; $42d3: $a1
	dec  b                                           ; $42d4: $05
	jr   nz, jr_069_4277                             ; $42d5: $20 $a0

	ld   [bc], a                                     ; $42d7: $02
	jp   nz, Jump_069_6959                           ; $42d8: $c2 $59 $69

	ld   [hl], h                                     ; $42db: $74
	dec  c                                           ; $42dc: $0d
	ld   h, l                                        ; $42dd: $65
	adc  h                                           ; $42de: $8c
	ld   [hl], c                                     ; $42df: $71
	ld   l, l                                        ; $42e0: $6d
	ld   a, b                                        ; $42e1: $78
	sbc  a                                           ; $42e2: $9f
	dec  c                                           ; $42e3: $0d
	nop                                              ; $42e4: $00
	ld   a, [bc]                                     ; $42e5: $0a
	inc  e                                           ; $42e6: $1c
	ld   b, $01                                      ; $42e7: $06 $01
	ld   bc, $0301                                   ; $42e9: $01 $01 $03
	ld   [hl], b                                     ; $42ec: $70
	ld   e, l                                        ; $42ed: $5d
	inc  b                                           ; $42ee: $04
	ld   b, d                                        ; $42ef: $42
	ld   a, b                                        ; $42f0: $78
	ld   e, e                                        ; $42f1: $5b
	sub  c                                           ; $42f2: $91
	ld   a, b                                        ; $42f3: $78
	sbc  a                                           ; $42f4: $9f
	dec  c                                           ; $42f5: $0d
	ld   h, [hl]                                     ; $42f6: $66
	sub  c                                           ; $42f7: $91
	sbc  [hl]                                        ; $42f8: $9e
	ld   e, b                                        ; $42f9: $58
	sub  d                                           ; $42fa: $92
	ld   h, a                                        ; $42fb: $67
	adc  l                                           ; $42fc: $8d
	sbc  a                                           ; $42fd: $9f
	dec  c                                           ; $42fe: $0d
	nop                                              ; $42ff: $00
	ld   a, [bc]                                     ; $4300: $0a
	dec  c                                           ; $4301: $0d
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	rrca                                             ; $4304: $0f
	nop                                              ; $4305: $00
	ld   bc, $1e09                                   ; $4306: $01 $09 $1e
	nop                                              ; $4309: $00
	nop                                              ; $430a: $00
	inc  b                                           ; $430b: $04
	add  b                                           ; $430c: $80
	inc  l                                           ; $430d: $2c
	ld   bc, $20ff                                   ; $430e: $01 $ff $20
	inc  bc                                          ; $4311: $03
	ld   h, d                                        ; $4312: $62
	ld   [bc], a                                     ; $4313: $02
	nop                                              ; $4314: $00
	jr   nz, @+$1e                                   ; $4315: $20 $1c

	nop                                              ; $4317: $00
	ld   c, $55                                      ; $4318: $0e $55
	rrca                                             ; $431a: $0f
	nop                                              ; $431b: $00
	ld   bc, $0102                                   ; $431c: $01 $02 $01
	ld   h, c                                        ; $431f: $61
	and  c                                           ; $4320: $a1
	ld   a, [hl]                                     ; $4321: $7e
	and  c                                           ; $4322: $a1
	ld   a, l                                        ; $4323: $7d
	sbc  [hl]                                        ; $4324: $9e
	ld   [bc], a                                     ; $4325: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4326: $cf
	dec  b                                           ; $4327: $05
	ld   a, [de]                                     ; $4328: $1a
	ld   h, e                                        ; $4329: $63
	and  c                                           ; $432a: $a1
	sbc  a                                           ; $432b: $9f
	dec  c                                           ; $432c: $0d
	nop                                              ; $432d: $00
	dec  b                                           ; $432e: $05
	add  b                                           ; $432f: $80
	dec  l                                           ; $4330: $2d
	ld   bc, $0001                                   ; $4331: $01 $01 $00
	ld   bc, $e004                                   ; $4334: $01 $04 $e0
	inc  bc                                          ; $4337: $03
	dec  hl                                          ; $4338: $2b
	inc  bc                                          ; $4339: $03
	pop  hl                                          ; $433a: $e1
	sbc  b                                           ; $433b: $98

jr_069_433c:
	dec  b                                           ; $433c: $05
	db   $10                                         ; $433d: $10
	adc  h                                           ; $433e: $8c
	ld   h, l                                        ; $433f: $65
	ld   l, l                                        ; $4340: $6d
	sub  [hl]                                        ; $4341: $96
	sbc  a                                           ; $4342: $9f
	dec  c                                           ; $4343: $0d
	nop                                              ; $4344: $00
	ld   a, [bc]                                     ; $4345: $0a
	inc  e                                           ; $4346: $1c
	dec  b                                           ; $4347: $05
	ld   bc, $0101                                   ; $4348: $01 $01 $01
	ld   e, b                                        ; $434b: $58
	ld   d, h                                        ; $434c: $54
	sbc  [hl]                                        ; $434d: $9e
	ld   [$7d00], sp                                 ; $434e: $08 $00 $7d
	and  c                                           ; $4351: $a1
	sbc  a                                           ; $4352: $9f
	dec  c                                           ; $4353: $0d
	inc  b                                           ; $4354: $04
	rla                                              ; $4355: $17
	ld   [hl], c                                     ; $4356: $71
	ld   [hl], h                                     ; $4357: $74
	ld   l, l                                        ; $4358: $6d
	ld   [hl], l                                     ; $4359: $75
	sbc  a                                           ; $435a: $9f
	dec  c                                           ; $435b: $0d
	nop                                              ; $435c: $00
	ld   a, [bc]                                     ; $435d: $0a
	ld   bc, $7889                                   ; $435e: $01 $89 $78
	sbc  [hl]                                        ; $4361: $9e
	and  a                                           ; $4362: $a7
	jp   nz, Jump_069_597c                           ; $4363: $c2 $7c $59

	ld   e, l                                        ; $4366: $5d
	ld   h, l                                        ; $4367: $65
	ld   [bc], a                                     ; $4368: $02
	ld   c, l                                        ; $4369: $4d
	dec  c                                           ; $436a: $0d
	or   [hl]                                        ; $436b: $b6
	db   $eb                                         ; $436c: $eb
	ld   [bc], a                                     ; $436d: $02
	sub  e                                           ; $436e: $93
	ld   h, l                                        ; $436f: $65
	and  b                                           ; $4370: $a0
	ld   h, d                                        ; $4371: $62
	add  b                                           ; $4372: $80
	sbc  e                                           ; $4373: $9b
	ld   d, h                                        ; $4374: $54
	dec  c                                           ; $4375: $0d
	ld   d, d                                        ; $4376: $52
	ld   l, l                                        ; $4377: $6d
	ld   h, l                                        ; $4378: $65
	adc  h                                           ; $4379: $8c
	ld   h, a                                        ; $437a: $67
	sbc  a                                           ; $437b: $9f
	ld   d, b                                        ; $437c: $50
	sub  a                                           ; $437d: $97
	sub  [hl]                                        ; $437e: $96
	ld   [hl], c                                     ; $437f: $71
	halt                                             ; $4380: $76
	ld   a, [$000d]                                  ; $4381: $fa $0d $00
	ld   a, [bc]                                     ; $4384: $0a
	dec  c                                           ; $4385: $0d
	nop                                              ; $4386: $00
	nop                                              ; $4387: $00
	ld   d, $0a                                      ; $4388: $16 $0a
	add  hl, de                                      ; $438a: $19
	dec  b                                           ; $438b: $05
	inc  bc                                          ; $438c: $03
	inc  b                                           ; $438d: $04
	add  e                                           ; $438e: $83
	inc  bc                                          ; $438f: $03
	ld   l, e                                        ; $4390: $6b
	ld   h, a                                        ; $4391: $67
	sbc  c                                           ; $4392: $99
	nop                                              ; $4393: $00
	nop                                              ; $4394: $00
	inc  b                                           ; $4395: $04
	ld   e, b                                        ; $4396: $58
	inc  b                                           ; $4397: $04
	ld   d, a                                        ; $4398: $57
	ld   h, a                                        ; $4399: $67
	sbc  c                                           ; $439a: $99
	nop                                              ; $439b: $00
	ld   bc, $0703                                   ; $439c: $01 $03 $07
	ld   d, d                                        ; $439f: $52
	and  b                                           ; $43a0: $a0
	inc  bc                                          ; $43a1: $03
	jr   jr_069_433c                                 ; $43a2: $18 $98

	ld   a, c                                        ; $43a4: $79
	ld   d, d                                        ; $43a5: $52
	ld   [hl], c                                     ; $43a6: $71
	ld   [hl], h                                     ; $43a7: $74
	adc  l                                           ; $43a8: $8d
	sbc  c                                           ; $43a9: $99
	nop                                              ; $43aa: $00
	ld   [bc], a                                     ; $43ab: $02
	rlca                                             ; $43ac: $07
	or   d                                           ; $43ad: $b2
	nop                                              ; $43ae: $00
	ld   [bc], a                                     ; $43af: $02
	inc  bc                                          ; $43b0: $03
	ld   bc, $2000                                   ; $43b1: $01 $00 $20
	nop                                              ; $43b4: $00
	rlca                                             ; $43b5: $07
	ld   a, [$0200]                                  ; $43b6: $fa $00 $02
	inc  bc                                          ; $43b9: $03
	ld   bc, $2001                                   ; $43ba: $01 $01 $20
	nop                                              ; $43bd: $00
	rlca                                             ; $43be: $07
	adc  a                                           ; $43bf: $8f
	ld   bc, $0302                                   ; $43c0: $01 $02 $03
	ld   bc, $2002                                   ; $43c3: $01 $02 $20
	nop                                              ; $43c6: $00
	ld   b, $25                                      ; $43c7: $06 $25
	ld   [bc], a                                     ; $43c9: $02
	rrca                                             ; $43ca: $0f
	nop                                              ; $43cb: $00
	ld   bc, $6701                                   ; $43cc: $01 $01 $67
	ld   a, [hl]                                     ; $43cf: $7e
	sub  a                                           ; $43d0: $97
	ld   h, l                                        ; $43d1: $65
	ld   d, d                                        ; $43d2: $52
	ld   a, [$020d]                                  ; $43d3: $fa $0d $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43d6: $cf
	dec  b                                           ; $43d7: $05
	ld   a, [de]                                     ; $43d8: $1a
	ld   h, e                                        ; $43d9: $63
	and  c                                           ; $43da: $a1
	ld   a, [$b610]                                  ; $43db: $fa $10 $b6
	and  l                                           ; $43de: $a5
	or   h                                           ; $43df: $b4
	ei                                               ; $43e0: $fb
	ld   a, [$000d]                                  ; $43e1: $fa $0d $00
	ld   a, [bc]                                     ; $43e4: $0a
	inc  e                                           ; $43e5: $1c
	dec  b                                           ; $43e6: $05
	dec  b                                           ; $43e7: $05
	dec  b                                           ; $43e8: $05
	dec  e                                           ; $43e9: $1d
	ld   b, b                                        ; $43ea: $40
	dec  d                                           ; $43eb: $15
	inc  bc                                          ; $43ec: $03
	dec  d                                           ; $43ed: $15
	ld   bc, $2803                                   ; $43ee: $01 $03 $28
	nop                                              ; $43f1: $00
	ld   bc, $f5b6                                   ; $43f2: $01 $b6 $f5
	xor  [hl]                                        ; $43f5: $ae
	rst  $20                                         ; $43f6: $e7
	ei                                               ; $43f7: $fb
	sbc  a                                           ; $43f8: $9f
	dec  c                                           ; $43f9: $0d
	ld   [hl], a                                     ; $43fa: $77
	ld   d, h                                        ; $43fb: $54
	sub  b                                           ; $43fc: $90
	ld   e, b                                        ; $43fd: $58
	ld   e, b                                        ; $43fe: $58
	ld   e, e                                        ; $43ff: $5b
	ld   a, c                                        ; $4400: $79
	sbc  [hl]                                        ; $4401: $9e
	ld   d, b                                        ; $4402: $50
	sbc  b                                           ; $4403: $98
	ld   e, d                                        ; $4404: $5a
	halt                                             ; $4405: $76
	ld   d, h                                        ; $4406: $54
	sbc  a                                           ; $4407: $9f
	dec  c                                           ; $4408: $0d
	nop                                              ; $4409: $00
	ld   a, [bc]                                     ; $440a: $0a
	inc  e                                           ; $440b: $1c
	dec  b                                           ; $440c: $05
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	ld   b, $59                                      ; $440f: $06 $59
	ld   [bc], a                                     ; $4411: $02
	rrca                                             ; $4412: $0f
	nop                                              ; $4413: $00
	ld   bc, $6301                                   ; $4414: $01 $01 $63
	ld   h, a                                        ; $4417: $67
	ld   e, d                                        ; $4418: $5a
	ld   [bc], a                                     ; $4419: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $441a: $cf
	dec  b                                           ; $441b: $05
	ld   a, [de]                                     ; $441c: $1a
	ld   h, e                                        ; $441d: $63
	and  c                                           ; $441e: $a1
	sbc  a                                           ; $441f: $9f
	ld   h, a                                        ; $4420: $67
	ld   a, [hl]                                     ; $4421: $7e
	sub  a                                           ; $4422: $97
	ld   h, l                                        ; $4423: $65
	ld   d, d                                        ; $4424: $52
	sbc  a                                           ; $4425: $9f
	dec  c                                           ; $4426: $0d
	rst  $38                                         ; $4427: $ff
	rst  $38                                         ; $4428: $ff
	ld   l, l                                        ; $4429: $6d
	ld   l, [hl]                                     ; $442a: $6e
	ld   [bc], a                                     ; $442b: $02
	jr   nz, jr_069_44a0                             ; $442c: $20 $72

	ld   l, [hl]                                     ; $442e: $6e
	ld   e, a                                        ; $442f: $5f
	inc  bc                                          ; $4430: $03
	and  $04                                         ; $4431: $e6 $04
	sub  b                                           ; $4433: $90
	and  b                                           ; $4434: $a0
	ld   [hl], d                                     ; $4435: $72
	ld   e, a                                        ; $4436: $5f
	sbc  c                                           ; $4437: $99
	dec  c                                           ; $4438: $0d
	halt                                             ; $4439: $76
	ld   h, l                                        ; $443a: $65
	ld   l, l                                        ; $443b: $6d
	sub  a                                           ; $443c: $97
	sbc  [hl]                                        ; $443d: $9e
	ld   h, c                                        ; $443e: $61
	ld   h, l                                        ; $443f: $65
	ld   a, h                                        ; $4440: $7c
	inc  b                                           ; $4441: $04
	ld   b, l                                        ; $4442: $45
	sbc  d                                           ; $4443: $9a
	inc  b                                           ; $4444: $04
	ld   a, b                                        ; $4445: $78
	sbc  a                                           ; $4446: $9f
	dec  c                                           ; $4447: $0d
	nop                                              ; $4448: $00
	ld   a, [bc]                                     ; $4449: $0a
	ld   bc, $6561                                   ; $444a: $01 $61 $65
	and  b                                           ; $444d: $a0
	sub  b                                           ; $444e: $90
	ld   [hl], c                                     ; $444f: $71
	halt                                             ; $4450: $76
	or   c                                           ; $4451: $b1
	call nz, $0476                                   ; $4452: $c4 $76 $04
	ld   b, l                                        ; $4455: $45
	sbc  d                                           ; $4456: $9a
	sbc  d                                           ; $4457: $9a
	ld   a, [hl]                                     ; $4458: $7e
	dec  c                                           ; $4459: $0d
	inc  b                                           ; $445a: $04
	dec  c                                           ; $445b: $0d
	ld   e, d                                        ; $445c: $5a
	ld   [bc], a                                     ; $445d: $02
	ld   h, $03                                      ; $445e: $26 $03
	call nc, Call_069_7465                           ; $4460: $d4 $65 $74
	sbc  [hl]                                        ; $4463: $9e
	ld   h, e                                        ; $4464: $63
	sub  a                                           ; $4465: $97
	ld   a, c                                        ; $4466: $79
	or   [hl]                                        ; $4467: $b6
	db   $eb                                         ; $4468: $eb
	and  b                                           ; $4469: $a0
	dec  c                                           ; $446a: $0d
	ld   [bc], a                                     ; $446b: $02
	sub  e                                           ; $446c: $93
	ld   l, c                                        ; $446d: $69
	sbc  c                                           ; $446e: $99
	sub  [hl]                                        ; $446f: $96
	ld   d, h                                        ; $4470: $54
	ld   a, c                                        ; $4471: $79
	ld   a, b                                        ; $4472: $78
	sbc  b                                           ; $4473: $98
	adc  h                                           ; $4474: $8c
	ld   h, a                                        ; $4475: $67
	sub  [hl]                                        ; $4476: $96
	sbc  a                                           ; $4477: $9f
	dec  c                                           ; $4478: $0d
	nop                                              ; $4479: $00
	ld   a, [bc]                                     ; $447a: $0a
	inc  e                                           ; $447b: $1c
	dec  b                                           ; $447c: $05
	inc  bc                                          ; $447d: $03
	inc  bc                                          ; $447e: $03
	ld   bc, $9e7d                                   ; $447f: $01 $7d $9e
	ld   a, l                                        ; $4482: $7d
	ld   d, b                                        ; $4483: $50
	rst  $38                                         ; $4484: $ff
	rst  $38                                         ; $4485: $ff
	sbc  a                                           ; $4486: $9f
	dec  c                                           ; $4487: $0d
	ld   e, e                                        ; $4488: $5b
	ld   l, a                                        ; $4489: $6f
	sub  l                                           ; $448a: $95
	ld   d, h                                        ; $448b: $54
	ld   a, b                                        ; $448c: $78
	and  e                                           ; $448d: $a3
	jp   z, $a5d1                                    ; $448e: $ca $d1 $a5

	cp   d                                           ; $4491: $ba
	sbc  [hl]                                        ; $4492: $9e
	dec  c                                           ; $4493: $0d
	ld   [hl], a                                     ; $4494: $77
	ld   d, h                                        ; $4495: $54
	sub  b                                           ; $4496: $90
	ld   e, b                                        ; $4497: $58
	ld   e, b                                        ; $4498: $58
	ld   e, e                                        ; $4499: $5b
	ld   a, c                                        ; $449a: $79
	rst  $38                                         ; $449b: $ff
	rst  $38                                         ; $449c: $ff
	dec  c                                           ; $449d: $0d
	nop                                              ; $449e: $00
	ld   a, [bc]                                     ; $449f: $0a

jr_069_44a0:
	inc  e                                           ; $44a0: $1c
	dec  b                                           ; $44a1: $05
	ld   [bc], a                                     ; $44a2: $02
	ld   [bc], a                                     ; $44a3: $02
	ld   b, $59                                      ; $44a4: $06 $59
	ld   [bc], a                                     ; $44a6: $02
	rrca                                             ; $44a7: $0f
	nop                                              ; $44a8: $00
	ld   bc, $6701                                   ; $44a9: $01 $01 $67
	ld   a, [hl]                                     ; $44ac: $7e
	sub  a                                           ; $44ad: $97
	ld   h, l                                        ; $44ae: $65
	ld   d, d                                        ; $44af: $52
	sbc  a                                           ; $44b0: $9f
	ld   [bc], a                                     ; $44b1: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44b2: $cf
	dec  b                                           ; $44b3: $05
	ld   a, [de]                                     ; $44b4: $1a
	ld   h, e                                        ; $44b5: $63
	and  c                                           ; $44b6: $a1
	inc  bc                                          ; $44b7: $03
	ld   l, c                                        ; $44b8: $69
	ld   [bc], a                                     ; $44b9: $02
	cp   [hl]                                        ; $44ba: $be
	ld   a, [$760d]                                  ; $44bb: $fa $0d $76
	ld   h, c                                        ; $44be: $61
	sbc  e                                           ; $44bf: $9b
	ld   [hl], l                                     ; $44c0: $75
	sbc  [hl]                                        ; $44c1: $9e
	ld   [bc], a                                     ; $44c2: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44c3: $cf
	dec  b                                           ; $44c4: $05
	ld   a, [de]                                     ; $44c5: $1a
	ld   h, e                                        ; $44c6: $63
	and  c                                           ; $44c7: $a1
	sbc  [hl]                                        ; $44c8: $9e
	dec  c                                           ; $44c9: $0d
	or   [hl]                                        ; $44ca: $b6
	db   $ed                                         ; $44cb: $ed
	ld   a, l                                        ; $44cc: $7d
	ld   d, d                                        ; $44cd: $52
	ld   [hl], d                                     ; $44ce: $72
	inc  bc                                          ; $44cf: $03
	add  b                                           ; $44d0: $80
	ld   [hl], h                                     ; $44d1: $74
	dec  b                                           ; $44d2: $05
	db   $10                                         ; $44d3: $10
	sbc  c                                           ; $44d4: $99
	and  c                                           ; $44d5: $a1
	ld   [hl], l                                     ; $44d6: $75
	ld   h, a                                        ; $44d7: $67
	ld   e, c                                        ; $44d8: $59
	ld   sp, hl                                      ; $44d9: $f9
	dec  c                                           ; $44da: $0d
	nop                                              ; $44db: $00
	ld   a, [bc]                                     ; $44dc: $0a
	inc  e                                           ; $44dd: $1c
	dec  b                                           ; $44de: $05
	inc  bc                                          ; $44df: $03
	inc  bc                                          ; $44e0: $03
	ld   bc, $edb6                                   ; $44e1: $01 $b6 $ed
	ld   a, [$0df9]                                  ; $44e4: $fa $f9 $0d
	nop                                              ; $44e7: $00
	ld   a, [bc]                                     ; $44e8: $0a
	rrca                                             ; $44e9: $0f
	nop                                              ; $44ea: $00
	ld   bc, $5601                                   ; $44eb: $01 $01 $56
	ld   d, [hl]                                     ; $44ee: $56
	sbc  [hl]                                        ; $44ef: $9e
	ld   [bc], a                                     ; $44f0: $02
	sub  e                                           ; $44f1: $93
	ld   h, a                                        ; $44f2: $67
	and  c                                           ; $44f3: $a1
	ld   [hl], l                                     ; $44f4: $75
	ld   h, l                                        ; $44f5: $65
	sub  l                                           ; $44f6: $95
	sbc  a                                           ; $44f7: $9f
	dec  c                                           ; $44f8: $0d
	nop                                              ; $44f9: $00
	ld   a, [bc]                                     ; $44fa: $0a
	rrca                                             ; $44fb: $0f
	dec  b                                           ; $44fc: $05
	inc  bc                                          ; $44fd: $03
	dec  e                                           ; $44fe: $1d
	ld   b, b                                        ; $44ff: $40
	dec  d                                           ; $4500: $15
	inc  bc                                          ; $4501: $03
	dec  d                                           ; $4502: $15
	ld   bc, $2801                                   ; $4503: $01 $01 $28
	nop                                              ; $4506: $00
	ld   bc, $9a6b                                   ; $4507: $01 $6b $9a
	ld   a, l                                        ; $450a: $7d
	sbc  [hl]                                        ; $450b: $9e
	or   [hl]                                        ; $450c: $b6
	db   $ed                                         ; $450d: $ed
	ld   [bc], a                                     ; $450e: $02
	sub  e                                           ; $450f: $93
	ld   h, l                                        ; $4510: $65
	ld   a, [$a70d]                                  ; $4511: $fa $0d $a7
	jp   nz, $925a                                   ; $4514: $c2 $5a $92

	ld   [hl], c                                     ; $4517: $71
	ld   [hl], h                                     ; $4518: $74
	sbc  c                                           ; $4519: $99
	ld   a, h                                        ; $451a: $7c
	ld   a, l                                        ; $451b: $7d
	or   [hl]                                        ; $451c: $b6
	db   $eb                                         ; $451d: $eb
	ld   [bc], a                                     ; $451e: $02
	sub  e                                           ; $451f: $93
	ld   h, l                                        ; $4520: $65
	ld   a, [$000d]                                  ; $4521: $fa $0d $00
	inc  e                                           ; $4524: $1c
	dec  b                                           ; $4525: $05
	nop                                              ; $4526: $00
	nop                                              ; $4527: $00
	ld   bc, $a178                                   ; $4528: $01 $78 $a1
	ld   e, c                                        ; $452b: $59
	adc  [hl]                                        ; $452c: $8e
	sbc  b                                           ; $452d: $98
	sub  d                                           ; $452e: $92
	sbc  b                                           ; $452f: $98
	ld   a, b                                        ; $4530: $78
	db   $dd                                         ; $4531: $dd
	or   d                                           ; $4532: $b2
	sub  d                                           ; $4533: $92
	ld   a, b                                        ; $4534: $78
	rst  $38                                         ; $4535: $ff
	rst  $38                                         ; $4536: $ff
	dec  c                                           ; $4537: $0d
	nop                                              ; $4538: $00
	ld   a, [bc]                                     ; $4539: $0a
	ld   b, $59                                      ; $453a: $06 $59
	ld   [bc], a                                     ; $453c: $02
	inc  e                                           ; $453d: $1c
	dec  b                                           ; $453e: $05
	ld   b, $06                                      ; $453f: $06 $06
	ld   bc, $f9a1                                   ; $4541: $01 $a1 $f9
	db   $10                                         ; $4544: $10
	ld   e, b                                        ; $4545: $58
	sub  b                                           ; $4546: $90
	sbc  e                                           ; $4547: $9b
	ld   a, b                                        ; $4548: $78
	ld   d, d                                        ; $4549: $52
	and  c                                           ; $454a: $a1
	ld   e, c                                        ; $454b: $59
	ld   sp, hl                                      ; $454c: $f9
	dec  c                                           ; $454d: $0d
	ld   e, b                                        ; $454e: $58
	ld   e, c                                        ; $454f: $59
	ld   h, l                                        ; $4550: $65
	ei                                               ; $4551: $fb
	ld   a, b                                        ; $4552: $78
	db   $fc                                         ; $4553: $fc
	sbc  a                                           ; $4554: $9f
	and  a                                           ; $4555: $a7
	jp   nz, Jump_069_597c                           ; $4556: $c2 $7c $59

	ld   e, l                                        ; $4559: $5d
	ld   h, l                                        ; $455a: $65
	ld   [bc], a                                     ; $455b: $02
	adc  h                                           ; $455c: $8c
	dec  c                                           ; $455d: $0d
	sub  d                                           ; $455e: $92
	ld   a, e                                        ; $455f: $7b
	and  c                                           ; $4560: $a1
	ld   e, a                                        ; $4561: $5f
	ld   [hl], a                                     ; $4562: $77
	ld   a, b                                        ; $4563: $78
	db   $fc                                         ; $4564: $fc
	rst  $38                                         ; $4565: $ff
	rst  $38                                         ; $4566: $ff
	dec  c                                           ; $4567: $0d
	nop                                              ; $4568: $00
	ld   a, [bc]                                     ; $4569: $0a
	inc  e                                           ; $456a: $1c
	dec  b                                           ; $456b: $05
	nop                                              ; $456c: $00
	nop                                              ; $456d: $00
	ld   b, $59                                      ; $456e: $06 $59
	ld   [bc], a                                     ; $4570: $02
	ld   bc, $508c                                   ; $4571: $01 $8c $50
	sbc  [hl]                                        ; $4574: $9e
	ld   h, c                                        ; $4575: $61
	and  c                                           ; $4576: $a1
	ld   a, b                                        ; $4577: $78
	sub  b                                           ; $4578: $90
	and  c                                           ; $4579: $a1
	sub  d                                           ; $457a: $92
	sbc  a                                           ; $457b: $9f
	dec  c                                           ; $457c: $0d
	ld   e, b                                        ; $457d: $58
	ld   l, e                                        ; $457e: $6b
	adc  h                                           ; $457f: $8c
	ld   [hl], d                                     ; $4580: $72
	ld   h, e                                        ; $4581: $63
	adc  h                                           ; $4582: $8c
	ld   [hl], l                                     ; $4583: $75
	ld   h, l                                        ; $4584: $65
	ld   l, l                                        ; $4585: $6d
	sbc  a                                           ; $4586: $9f
	dec  c                                           ; $4587: $0d
	nop                                              ; $4588: $00
	ld   a, [bc]                                     ; $4589: $0a
	rlca                                             ; $458a: $07
	adc  c                                           ; $458b: $89
	ld   [bc], a                                     ; $458c: $02
	inc  b                                           ; $458d: $04
	add  b                                           ; $458e: $80
	ld   l, $01                                      ; $458f: $2e $01
	rst  $38                                         ; $4591: $ff
	jr   nz, jr_069_4594                             ; $4592: $20 $00

jr_069_4594:
	ld   bc, $7889                                   ; $4594: $01 $89 $78
	sbc  [hl]                                        ; $4597: $9e
	ld   e, b                                        ; $4598: $58
	sub  d                                           ; $4599: $92
	ld   h, a                                        ; $459a: $67
	adc  l                                           ; $459b: $8d
	sbc  a                                           ; $459c: $9f
	dec  c                                           ; $459d: $0d
	nop                                              ; $459e: $00
	ld   a, [bc]                                     ; $459f: $0a
	nop                                              ; $45a0: $00
	ld   bc, $9269                                   ; $45a1: $01 $69 $92
	sbc  [hl]                                        ; $45a4: $9e
	dec  c                                           ; $45a5: $0d
	nop                                              ; $45a6: $00
	ld   a, [bc]                                     ; $45a7: $0a
	inc  e                                           ; $45a8: $1c
	dec  b                                           ; $45a9: $05
	ld   bc, $1d01                                   ; $45aa: $01 $01 $1d
	ld   b, b                                        ; $45ad: $40
	dec  d                                           ; $45ae: $15
	inc  bc                                          ; $45af: $03
	dec  d                                           ; $45b0: $15
	ld   bc, $2802                                   ; $45b1: $01 $02 $28
	nop                                              ; $45b4: $00
	ld   bc, $0008                                   ; $45b5: $01 $08 $00
	ld   a, l                                        ; $45b8: $7d
	and  c                                           ; $45b9: $a1
	ld   a, c                                        ; $45ba: $79
	sub  b                                           ; $45bb: $90
	sub  a                                           ; $45bc: $97
	ld   [hl], c                                     ; $45bd: $71
	ld   l, l                                        ; $45be: $6d
	dec  c                                           ; $45bf: $0d
	ld   h, c                                        ; $45c0: $61
	ld   a, h                                        ; $45c1: $7c
	or   [hl]                                        ; $45c2: $b6
	db   $eb                                         ; $45c3: $eb
	sbc  a                                           ; $45c4: $9f
	dec  c                                           ; $45c5: $0d
	ld   e, a                                        ; $45c6: $5f
	ld   [hl], c                                     ; $45c7: $71
	ld   h, c                                        ; $45c8: $61
	ld   d, h                                        ; $45c9: $54
	xor  c                                           ; $45ca: $a9
	xor  c                                           ; $45cb: $a9
	ld   e, [hl]                                     ; $45cc: $5e
	ld   d, b                                        ; $45cd: $50
	ld   d, d                                        ; $45ce: $52
	sub  d                                           ; $45cf: $92
	ld   [hl], l                                     ; $45d0: $75
	sbc  a                                           ; $45d1: $9f
	dec  c                                           ; $45d2: $0d
	nop                                              ; $45d3: $00
	ld   a, [bc]                                     ; $45d4: $0a
	ld   bc, $5477                                   ; $45d5: $01 $77 $54
	sub  b                                           ; $45d8: $90
	ld   d, b                                        ; $45d9: $50
	sbc  b                                           ; $45da: $98
	ld   e, d                                        ; $45db: $5a
	halt                                             ; $45dc: $76
	ld   d, h                                        ; $45dd: $54
	ld   a, b                                        ; $45de: $78
	sbc  a                                           ; $45df: $9f
	dec  c                                           ; $45e0: $0d
	adc  c                                           ; $45e1: $89
	ld   a, b                                        ; $45e2: $78
	sbc  [hl]                                        ; $45e3: $9e
	ld   e, b                                        ; $45e4: $58
	sub  d                                           ; $45e5: $92
	ld   h, a                                        ; $45e6: $67
	adc  l                                           ; $45e7: $8d
	sbc  a                                           ; $45e8: $9f
	dec  c                                           ; $45e9: $0d
	nop                                              ; $45ea: $00
	ld   a, [bc]                                     ; $45eb: $0a
	nop                                              ; $45ec: $00
	nop                                              ; $45ed: $00
	inc  b                                           ; $45ee: $04
	add  b                                           ; $45ef: $80
	ld   b, a                                        ; $45f0: $47
	ld   bc, $20ff                                   ; $45f1: $01 $ff $20
	inc  bc                                          ; $45f4: $03
	ld   e, a                                        ; $45f5: $5f
	ld   [bc], a                                     ; $45f6: $02
	nop                                              ; $45f7: $00
	jr   nz, jr_069_4616                             ; $45f8: $20 $1c

	nop                                              ; $45fa: $00
	ld   c, $78                                      ; $45fb: $0e $78
	inc  e                                           ; $45fd: $1c
	inc  b                                           ; $45fe: $04
	jr   nc, jr_069_4611                             ; $45ff: $30 $10

	ld   [bc], a                                     ; $4601: $02
	dec  b                                           ; $4602: $05
	add  b                                           ; $4603: $80
	ld   c, c                                        ; $4604: $49
	ld   bc, $0001                                   ; $4605: $01 $01 $00
	ld   bc, $9e50                                   ; $4608: $01 $50 $9e
	ld   l, a                                        ; $460b: $6f
	ld   d, d                                        ; $460c: $52
	ld   [bc], a                                     ; $460d: $02
	inc  de                                          ; $460e: $13
	ld   l, a                                        ; $460f: $6f
	sub  c                                           ; $4610: $91

jr_069_4611:
	and  c                                           ; $4611: $a1
	sbc  a                                           ; $4612: $9f
	dec  c                                           ; $4613: $0d
	nop                                              ; $4614: $00
	ld   a, [bc]                                     ; $4615: $0a

jr_069_4616:
	rlca                                             ; $4616: $07
	ld   e, a                                        ; $4617: $5f
	ld   bc, $5103                                   ; $4618: $01 $03 $51
	ld   [bc], a                                     ; $461b: $02
	nop                                              ; $461c: $00
	inc  bc                                          ; $461d: $03
	ld   c, e                                        ; $461e: $4b
	add  hl, hl                                      ; $461f: $29
	add  hl, hl                                      ; $4620: $29
	ld   bc, $2501                                   ; $4621: $01 $01 $25
	nop                                              ; $4624: $00
	inc  e                                           ; $4625: $1c
	inc  b                                           ; $4626: $04
	ld   sp, $0111                                   ; $4627: $31 $11 $01
	ld   a, e                                        ; $462a: $7b
	ld   d, [hl]                                     ; $462b: $56
	ld   a, e                                        ; $462c: $7b
	ld   d, [hl]                                     ; $462d: $56
	sbc  [hl]                                        ; $462e: $9e
	adc  l                                           ; $462f: $8d
	ld   [hl], h                                     ; $4630: $74
	adc  l                                           ; $4631: $8d
	ld   [hl], h                                     ; $4632: $74
	sbc  a                                           ; $4633: $9f
	dec  c                                           ; $4634: $0d
	ld   [hl], a                                     ; $4635: $77
	ld   d, h                                        ; $4636: $54
	sbc  [hl]                                        ; $4637: $9e
	ld   h, c                                        ; $4638: $61
	ld   a, h                                        ; $4639: $7c
	adc  l                                           ; $463a: $8d
	ld   l, b                                        ; $463b: $68
	ld   e, h                                        ; $463c: $5c
	ld   sp, hl                                      ; $463d: $f9
	dec  c                                           ; $463e: $0d
	nop                                              ; $463f: $00
	ld   a, [bc]                                     ; $4640: $0a
	add  hl, de                                      ; $4641: $19
	dec  b                                           ; $4642: $05
	inc  bc                                          ; $4643: $03
	ld   e, c                                        ; $4644: $59
	sbc  l                                           ; $4645: $9d
	ld   d, d                                        ; $4646: $52
	ld   d, d                                        ; $4647: $52
	ld   a, e                                        ; $4648: $7b
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	cp   d                                           ; $464b: $ba
	rst  ToBoot                                         ; $464c: $c7
	xor  [hl]                                        ; $464d: $ae
	ld   l, [hl]                                     ; $464e: $6e
	ld   a, e                                        ; $464f: $7b
	nop                                              ; $4650: $00
	ld   bc, $6403                                   ; $4651: $01 $03 $64
	dec  b                                           ; $4654: $05
	db   $10                                         ; $4655: $10
	ld   e, d                                        ; $4656: $5a
	dec  b                                           ; $4657: $05
	inc  de                                          ; $4658: $13
	ld   h, l                                        ; $4659: $65
	adc  l                                           ; $465a: $8d
	ld   l, [hl]                                     ; $465b: $6e
	ld   a, e                                        ; $465c: $7b
	nop                                              ; $465d: $00
	ld   [bc], a                                     ; $465e: $02
	rlca                                             ; $465f: $07
	and  l                                           ; $4660: $a5
	nop                                              ; $4661: $00
	ld   [bc], a                                     ; $4662: $02
	inc  bc                                          ; $4663: $03
	ld   bc, $2000                                   ; $4664: $01 $00 $20
	nop                                              ; $4667: $00
	rlca                                             ; $4668: $07
	db   $ed                                         ; $4669: $ed
	nop                                              ; $466a: $00
	ld   [bc], a                                     ; $466b: $02
	inc  bc                                          ; $466c: $03
	ld   bc, $2001                                   ; $466d: $01 $01 $20
	nop                                              ; $4670: $00
	rlca                                             ; $4671: $07
	dec  h                                           ; $4672: $25
	ld   bc, $0302                                   ; $4673: $01 $02 $03
	ld   bc, $2002                                   ; $4676: $01 $02 $20
	nop                                              ; $4679: $00
	ld   b, $82                                      ; $467a: $06 $82
	nop                                              ; $467c: $00
	inc  e                                           ; $467d: $1c
	inc  b                                           ; $467e: $04
	ld   [hl-], a                                    ; $467f: $32
	ld   [de], a                                     ; $4680: $12
	ld   bc, $a178                                   ; $4681: $01 $78 $a1
	ld   [hl], l                                     ; $4684: $75
	sbc  [hl]                                        ; $4685: $9e
	ld   l, [hl]                                     ; $4686: $6e
	adc  h                                           ; $4687: $8c
	sbc  c                                           ; $4688: $99
	ld   a, h                                        ; $4689: $7c
	rst  $38                                         ; $468a: $ff
	rst  $38                                         ; $468b: $ff
	ld   sp, hl                                      ; $468c: $f9
	dec  c                                           ; $468d: $0d
	sub  b                                           ; $468e: $90
	ld   d, h                                        ; $468f: $54
	ld   d, d                                        ; $4690: $52
	ld   d, d                                        ; $4691: $52
	ld   a, [$000d]                                  ; $4692: $fa $0d $00
	ld   a, [bc]                                     ; $4695: $0a
	dec  e                                           ; $4696: $1d
	ld   b, b                                        ; $4697: $40
	inc  d                                           ; $4698: $14
	inc  bc                                          ; $4699: $03
	inc  d                                           ; $469a: $14
	ld   bc, $2903                                   ; $469b: $01 $03 $29
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	rrca                                             ; $46a0: $0f
	nop                                              ; $46a1: $00
	ld   bc, $5901                                   ; $46a2: $01 $01 $59
	sbc  l                                           ; $46a5: $9d
	ld   d, d                                        ; $46a6: $52
	ld   d, d                                        ; $46a7: $52
	ld   a, e                                        ; $46a8: $7b
	sbc  a                                           ; $46a9: $9f
	dec  c                                           ; $46aa: $0d
	nop                                              ; $46ab: $00
	ld   a, [bc]                                     ; $46ac: $0a
	inc  e                                           ; $46ad: $1c
	inc  b                                           ; $46ae: $04
	inc  sp                                          ; $46af: $33
	inc  de                                          ; $46b0: $13
	ld   bc, $fba1                                   ; $46b1: $01 $a1 $fb
	rst  $38                                         ; $46b4: $ff
	rst  $38                                         ; $46b5: $ff
	dec  c                                           ; $46b6: $0d
	xor  h                                           ; $46b7: $ac
	pop  af                                          ; $46b8: $f1
	and  l                                           ; $46b9: $a5
	and  l                                           ; $46ba: $a5
	sub  [hl]                                        ; $46bb: $96
	sbc  b                                           ; $46bc: $98
	ldh  [$ec], a                                    ; $46bd: $e0 $ec
	jp   hl                                          ; $46bf: $e9


	or   b                                           ; $46c0: $b0
	rst  ToBoot                                         ; $46c1: $c7
	xor  [hl]                                        ; $46c2: $ae
	ld   e, d                                        ; $46c3: $5a
	dec  c                                           ; $46c4: $0d
	ld   d, d                                        ; $46c5: $52
	ld   d, d                                        ; $46c6: $52
	ld   a, b                                        ; $46c7: $78
	rst  $38                                         ; $46c8: $ff
	rst  $38                                         ; $46c9: $ff
	dec  c                                           ; $46ca: $0d
	nop                                              ; $46cb: $00
	ld   a, [bc]                                     ; $46cc: $0a
	inc  e                                           ; $46cd: $1c
	inc  b                                           ; $46ce: $04
	ld   sp, $0111                                   ; $46cf: $31 $11 $01
	ld   [hl], l                                     ; $46d2: $75
	sub  b                                           ; $46d3: $90
	sbc  [hl]                                        ; $46d4: $9e
	ld   d, b                                        ; $46d5: $50
	sbc  b                                           ; $46d6: $98
	ld   e, d                                        ; $46d7: $5a
	halt                                             ; $46d8: $76
	ld   d, h                                        ; $46d9: $54
	sbc  a                                           ; $46da: $9f
	dec  c                                           ; $46db: $0d
	nop                                              ; $46dc: $00
	ld   a, [bc]                                     ; $46dd: $0a
	dec  e                                           ; $46de: $1d
	ld   b, b                                        ; $46df: $40
	inc  d                                           ; $46e0: $14
	inc  bc                                          ; $46e1: $03
	inc  d                                           ; $46e2: $14
	ld   bc, $2801                                   ; $46e3: $01 $01 $28
	nop                                              ; $46e6: $00
	nop                                              ; $46e7: $00
	rrca                                             ; $46e8: $0f
	nop                                              ; $46e9: $00
	ld   bc, $ba01                                   ; $46ea: $01 $01 $ba
	rst  ToBoot                                         ; $46ed: $c7
	xor  [hl]                                        ; $46ee: $ae
	ld   l, [hl]                                     ; $46ef: $6e
	ld   a, e                                        ; $46f0: $7b
	sbc  a                                           ; $46f1: $9f
	dec  c                                           ; $46f2: $0d
	nop                                              ; $46f3: $00
	ld   a, [bc]                                     ; $46f4: $0a
	inc  e                                           ; $46f5: $1c
	inc  b                                           ; $46f6: $04
	dec  [hl]                                        ; $46f7: $35
	dec  d                                           ; $46f8: $15
	ld   bc, $6575                                   ; $46f9: $01 $75 $65
	sub  l                                           ; $46fc: $95
	ld   d, h                                        ; $46fd: $54
	ld   sp, hl                                      ; $46fe: $f9
	dec  c                                           ; $46ff: $0d
	ld   e, b                                        ; $4700: $58
	ld   [bc], a                                     ; $4701: $02
	inc  de                                          ; $4702: $13
	ld   l, a                                        ; $4703: $6f
	sub  c                                           ; $4704: $91
	and  c                                           ; $4705: $a1
	ld   a, c                                        ; $4706: $79
	sub  b                                           ; $4707: $90
	dec  c                                           ; $4708: $0d
	ld   l, e                                        ; $4709: $6b
	ld   d, h                                        ; $470a: $54
	ld   d, d                                        ; $470b: $52
	sbc  l                                           ; $470c: $9d
	sbc  d                                           ; $470d: $9a
	ld   l, l                                        ; $470e: $6d
	and  c                                           ; $470f: $a1
	ld   l, [hl]                                     ; $4710: $6e
	ld   c, a                                        ; $4711: $4f
	sbc  a                                           ; $4712: $9f
	dec  c                                           ; $4713: $0d
	nop                                              ; $4714: $00
	ld   a, [bc]                                     ; $4715: $0a
	dec  e                                           ; $4716: $1d
	ld   b, b                                        ; $4717: $40
	inc  d                                           ; $4718: $14
	inc  bc                                          ; $4719: $03
	inc  d                                           ; $471a: $14
	ld   bc, $2803                                   ; $471b: $01 $03 $28
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	rrca                                             ; $4720: $0f
	nop                                              ; $4721: $00
	ld   bc, $0301                                   ; $4722: $01 $01 $03
	ld   h, h                                        ; $4725: $64
	dec  b                                           ; $4726: $05
	db   $10                                         ; $4727: $10
	ld   e, d                                        ; $4728: $5a
	dec  b                                           ; $4729: $05
	inc  de                                          ; $472a: $13
	ld   h, l                                        ; $472b: $65
	adc  l                                           ; $472c: $8d
	ld   l, [hl]                                     ; $472d: $6e
	ld   a, e                                        ; $472e: $7b
	sbc  a                                           ; $472f: $9f
	dec  c                                           ; $4730: $0d
	nop                                              ; $4731: $00
	ld   a, [bc]                                     ; $4732: $0a
	inc  e                                           ; $4733: $1c
	inc  b                                           ; $4734: $04
	ld   [hl], $16                                   ; $4735: $36 $16
	ld   bc, $ffff                                   ; $4737: $01 $ff $ff
	rst  $38                                         ; $473a: $ff
	rst  $38                                         ; $473b: $ff
	rst  $38                                         ; $473c: $ff
	rst  $38                                         ; $473d: $ff
	dec  c                                           ; $473e: $0d
	ld   l, e                                        ; $473f: $6b
	sbc  d                                           ; $4740: $9a
	adc  c                                           ; $4741: $89
	adc  a                                           ; $4742: $8f
	ld   [hl], h                                     ; $4743: $74
	sbc  c                                           ; $4744: $99
	ld   a, h                                        ; $4745: $7c
	ld   sp, hl                                      ; $4746: $f9
	dec  c                                           ; $4747: $0d
	nop                                              ; $4748: $00
	ld   a, [bc]                                     ; $4749: $0a
	inc  e                                           ; $474a: $1c
	inc  b                                           ; $474b: $04
	jr   nc, jr_069_475e                             ; $474c: $30 $10

	ld   bc, $508c                                   ; $474e: $01 $8c $50
	sbc  [hl]                                        ; $4751: $9e
	ld   d, d                                        ; $4752: $52
	ld   d, d                                        ; $4753: $52
	sub  d                                           ; $4754: $92
	sbc  a                                           ; $4755: $9f
	dec  c                                           ; $4756: $0d
	nop                                              ; $4757: $00
	ld   a, [bc]                                     ; $4758: $0a
	nop                                              ; $4759: $00
	inc  e                                           ; $475a: $1c
	inc  b                                           ; $475b: $04
	scf                                              ; $475c: $37
	rla                                              ; $475d: $17

jr_069_475e:
	ld   bc, $526f                                   ; $475e: $01 $6f $52
	ld   [bc], a                                     ; $4761: $02
	inc  de                                          ; $4762: $13
	ld   l, a                                        ; $4763: $6f
	sub  c                                           ; $4764: $91
	and  c                                           ; $4765: $a1
	ld   a, c                                        ; $4766: $79
	ld   a, b                                        ; $4767: $78
	and  c                                           ; $4768: $a1
	ld   e, c                                        ; $4769: $59
	sbc  [hl]                                        ; $476a: $9e
	dec  c                                           ; $476b: $0d
	and  e                                           ; $476c: $a3
	and  l                                           ; $476d: $a5
	db   $ec                                         ; $476e: $ec
	cp   d                                           ; $476f: $ba
	ld   a, h                                        ; $4770: $7c
	adc  l                                           ; $4771: $8d
	ld   l, b                                        ; $4772: $68
	ld   e, h                                        ; $4773: $5c
	sbc  [hl]                                        ; $4774: $9e
	dec  c                                           ; $4775: $0d
	adc  l                                           ; $4776: $8d
	ld   l, c                                        ; $4777: $69
	ld   [hl], h                                     ; $4778: $74
	ld   d, b                                        ; $4779: $50
	ld   h, b                                        ; $477a: $60
	ld   a, b                                        ; $477b: $78
	ld   d, d                                        ; $477c: $52
	sub  b                                           ; $477d: $90
	and  c                                           ; $477e: $a1
	ld   a, e                                        ; $477f: $7b
	ld   [hl], c                                     ; $4780: $71
	sbc  a                                           ; $4781: $9f
	dec  c                                           ; $4782: $0d
	nop                                              ; $4783: $00
	ld   a, [bc]                                     ; $4784: $0a
	dec  c                                           ; $4785: $0d
	nop                                              ; $4786: $00
	nop                                              ; $4787: $00
	rrca                                             ; $4788: $0f
	nop                                              ; $4789: $00
	ld   bc, $4005                                   ; $478a: $01 $05 $40
	ld   d, c                                        ; $478d: $51
	ld   bc, $0000                                   ; $478e: $01 $00 $00
	ld   bc, $ff50                                   ; $4791: $01 $50 $ff
	rst  $38                                         ; $4794: $ff
	and  e                                           ; $4795: $a3
	and  l                                           ; $4796: $a5
	db   $ec                                         ; $4797: $ec
	cp   d                                           ; $4798: $ba
	ld   sp, hl                                      ; $4799: $f9
	dec  c                                           ; $479a: $0d
	rst  $38                                         ; $479b: $ff
	rst  $38                                         ; $479c: $ff
	inc  bc                                          ; $479d: $03
	ld   hl, sp+$71                                  ; $479e: $f8 $71
	ld   [hl], h                                     ; $47a0: $74
	ld   l, l                                        ; $47a1: $6d
	ld   a, b                                        ; $47a2: $78
	ld   d, b                                        ; $47a3: $50
	rst  $38                                         ; $47a4: $ff
	rst  $38                                         ; $47a5: $ff
	dec  c                                           ; $47a6: $0d
	nop                                              ; $47a7: $00
	ld   a, [bc]                                     ; $47a8: $0a
	nop                                              ; $47a9: $00
	nop                                              ; $47aa: $00
	inc  b                                           ; $47ab: $04
	add  b                                           ; $47ac: $80
	cpl                                              ; $47ad: $2f
	ld   bc, $20ff                                   ; $47ae: $01 $ff $20
	nop                                              ; $47b1: $00
	ld   c, $32                                      ; $47b2: $0e $32
	rrca                                             ; $47b4: $0f
	nop                                              ; $47b5: $00
	ld   bc, $050d                                   ; $47b6: $01 $0d $05
	nop                                              ; $47b9: $00
	ld   [bc], a                                     ; $47ba: $02
	ld   bc, $cf02                                   ; $47bb: $01 $02 $cf
	dec  b                                           ; $47be: $05
	ld   a, [de]                                     ; $47bf: $1a
	ld   h, e                                        ; $47c0: $63
	and  c                                           ; $47c1: $a1
	rst  $38                                         ; $47c2: $ff
	rst  $38                                         ; $47c3: $ff
	dec  c                                           ; $47c4: $0d
	ld   h, c                                        ; $47c5: $61
	and  c                                           ; $47c6: $a1
	ld   a, b                                        ; $47c7: $78
	inc  bc                                          ; $47c8: $03
	ld   l, a                                        ; $47c9: $6f
	ld   [bc], a                                     ; $47ca: $02
	xor  c                                           ; $47cb: $a9
	ld   a, c                                        ; $47cc: $79
	ld   [hl], a                                     ; $47cd: $77
	ld   d, h                                        ; $47ce: $54
	ld   h, l                                        ; $47cf: $65
	ld   l, l                                        ; $47d0: $6d
	and  c                                           ; $47d1: $a1
	dec  c                                           ; $47d2: $0d
	ld   [hl], l                                     ; $47d3: $75
	ld   h, a                                        ; $47d4: $67
	ld   e, c                                        ; $47d5: $59
	ld   sp, hl                                      ; $47d6: $f9
	dec  c                                           ; $47d7: $0d
	nop                                              ; $47d8: $00
	ld   a, [bc]                                     ; $47d9: $0a
	inc  e                                           ; $47da: $1c
	dec  b                                           ; $47db: $05
	inc  b                                           ; $47dc: $04
	inc  b                                           ; $47dd: $04
	ld   bc, $9e50                                   ; $47de: $01 $50 $9e
	ld   [$7d00], sp                                 ; $47e1: $08 $00 $7d
	and  c                                           ; $47e4: $a1
	rst  $38                                         ; $47e5: $ff
	rst  $38                                         ; $47e6: $ff
	dec  c                                           ; $47e7: $0d
	nop                                              ; $47e8: $00
	ld   a, [bc]                                     ; $47e9: $0a
	ld   bc, $956f                                   ; $47ea: $01 $6f $95
	ld   [hl], c                                     ; $47ed: $71
	halt                                             ; $47ee: $76
	inc  b                                           ; $47ef: $04
	bit  7, h                                        ; $47f0: $cb $7c
	ld   h, c                                        ; $47f2: $61
	halt                                             ; $47f3: $76
	dec  c                                           ; $47f4: $0d
	dec  b                                           ; $47f5: $05
	pop  de                                          ; $47f6: $d1
	ld   d, d                                        ; $47f7: $52
	inc  bc                                          ; $47f8: $03
	add  b                                           ; $47f9: $80
	ld   h, l                                        ; $47fa: $65
	ld   [hl], h                                     ; $47fb: $74
	ld   a, b                                        ; $47fc: $78
	sbc  a                                           ; $47fd: $9f
	dec  c                                           ; $47fe: $0d
	nop                                              ; $47ff: $00
	ld   a, [bc]                                     ; $4800: $0a
	rrca                                             ; $4801: $0f
	nop                                              ; $4802: $00
	ld   bc, $0201                                   ; $4803: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4806: $cf
	dec  b                                           ; $4807: $05
	ld   a, [de]                                     ; $4808: $1a
	ld   h, e                                        ; $4809: $63
	and  c                                           ; $480a: $a1
	ld   a, h                                        ; $480b: $7c
	inc  b                                           ; $480c: $04
	bit  6, c                                        ; $480d: $cb $71
	ld   [hl], h                                     ; $480f: $74
	ld   sp, hl                                      ; $4810: $f9
	dec  c                                           ; $4811: $0d
	nop                                              ; $4812: $00
	ld   a, [bc]                                     ; $4813: $0a
	inc  e                                           ; $4814: $1c
	dec  b                                           ; $4815: $05
	nop                                              ; $4816: $00
	nop                                              ; $4817: $00
	ld   bc, $a803                                   ; $4818: $01 $03 $a8
	inc  bc                                          ; $481b: $03
	add  hl, bc                                      ; $481c: $09
	ld   b, $42                                      ; $481d: $06 $42
	inc  bc                                          ; $481f: $03
	dec  b                                           ; $4820: $05
	sub  d                                           ; $4821: $92
	ld   [hl], c                                     ; $4822: $71
	ld   l, l                                        ; $4823: $6d
	ld   a, h                                        ; $4824: $7c
	and  b                                           ; $4825: $a0
	dec  c                                           ; $4826: $0d
	ld   d, b                                        ; $4827: $50
	sub  d                                           ; $4828: $92
	adc  a                                           ; $4829: $8f
	ld   a, l                                        ; $482a: $7d
	and  c                                           ; $482b: $a1
	ld   e, d                                        ; $482c: $5a
	inc  bc                                          ; $482d: $03
	ld   b, $04                                      ; $482e: $06 $04
	ld   b, e                                        ; $4830: $43
	adc  l                                           ; $4831: $8d
	halt                                             ; $4832: $76
	adc  a                                           ; $4833: $8f
	ld   [hl], h                                     ; $4834: $74
	dec  c                                           ; $4835: $0d
	inc  b                                           ; $4836: $04
	xor  d                                           ; $4837: $aa
	inc  b                                           ; $4838: $04
	adc  a                                           ; $4839: $8f
	ld   a, c                                        ; $483a: $79
	inc  b                                           ; $483b: $04
	db   $fd                                         ; $483c: $fd
	sbc  d                                           ; $483d: $9a
	ld   [hl], h                                     ; $483e: $74
	ld   e, e                                        ; $483f: $5b
	ld   [hl], h                                     ; $4840: $74
	ld   e, l                                        ; $4841: $5d
	sbc  d                                           ; $4842: $9a
	ld   l, l                                        ; $4843: $6d
	and  c                                           ; $4844: $a1
	sub  d                                           ; $4845: $92
	sbc  a                                           ; $4846: $9f
	dec  c                                           ; $4847: $0d
	nop                                              ; $4848: $00
	ld   a, [bc]                                     ; $4849: $0a
	ld   bc, $aa04                                   ; $484a: $01 $04 $aa
	inc  b                                           ; $484d: $04
	adc  a                                           ; $484e: $8f
	ld   a, c                                        ; $484f: $79
	dec  b                                           ; $4850: $05
	db   $10                                         ; $4851: $10
	ld   [hl], h                                     ; $4852: $74
	sbc  [hl]                                        ; $4853: $9e
	db   $e3                                         ; $4854: $e3
	xor  l                                           ; $4855: $ad
	adc  $a0                                         ; $4856: $ce $a0
	ld   e, c                                        ; $4858: $59
	ld   [hl], c                                     ; $4859: $71
	ld   [hl], h                                     ; $485a: $74
	dec  c                                           ; $485b: $0d
	sub  b                                           ; $485c: $90
	sub  a                                           ; $485d: $97
	ld   [hl], c                                     ; $485e: $71
	ld   l, l                                        ; $485f: $6d
	sbc  b                                           ; $4860: $98
	rst  $38                                         ; $4861: $ff
	rst  $38                                         ; $4862: $ff
	sbc  a                                           ; $4863: $9f
	dec  c                                           ; $4864: $0d
	nop                                              ; $4865: $00
	ld   a, [bc]                                     ; $4866: $0a
	ld   bc, $d404                                   ; $4867: $01 $04 $d4
	ld   a, l                                        ; $486a: $7d
	inc  bc                                          ; $486b: $03
	add  [hl]                                        ; $486c: $86
	ld   [bc], a                                     ; $486d: $02
	xor  l                                           ; $486e: $ad
	ld   a, h                                        ; $486f: $7c
	inc  bc                                          ; $4870: $03
	ld   l, a                                        ; $4871: $6f
	sbc  [hl]                                        ; $4872: $9e
	inc  b                                           ; $4873: $04
	dec  a                                           ; $4874: $3d
	ld   [bc], a                                     ; $4875: $02
	ld   hl, $0d75                                   ; $4876: $21 $75 $0d
	ld   [bc], a                                     ; $4879: $02
	ld   e, b                                        ; $487a: $58
	ld   [bc], a                                     ; $487b: $02
	ld   d, [hl]                                     ; $487c: $56
	ld   d, d                                        ; $487d: $52
	ld   h, [hl]                                     ; $487e: $66
	sbc  b                                           ; $487f: $98
	ld   h, l                                        ; $4880: $65
	ld   [hl], h                                     ; $4881: $74
	ld   l, l                                        ; $4882: $6d
	sub  a                                           ; $4883: $97
	dec  c                                           ; $4884: $0d
	ld   [bc], a                                     ; $4885: $02
	jr   z, jr_069_48e5                              ; $4886: $28 $5d

	ld   a, b                                        ; $4888: $78
	ld   [hl], c                                     ; $4889: $71
	ld   l, l                                        ; $488a: $6d
	and  c                                           ; $488b: $a1
	sub  d                                           ; $488c: $92
	sbc  a                                           ; $488d: $9f
	dec  c                                           ; $488e: $0d
	nop                                              ; $488f: $00
	ld   a, [bc]                                     ; $4890: $0a
	inc  e                                           ; $4891: $1c
	dec  b                                           ; $4892: $05
	ld   bc, $0101                                   ; $4893: $01 $01 $01
	ld   d, d                                        ; $4896: $52
	sbc  e                                           ; $4897: $9b
	and  c                                           ; $4898: $a1
	ld   a, b                                        ; $4899: $78
	ld   [bc], a                                     ; $489a: $02
	jp   Jump_069_7150                               ; $489b: $c3 $50 $71


	ld   l, l                                        ; $489e: $6d
	ld   e, a                                        ; $489f: $5f
	ld   [hl], a                                     ; $48a0: $77
	sbc  [hl]                                        ; $48a1: $9e
	dec  c                                           ; $48a2: $0d
	ld   [bc], a                                     ; $48a3: $02
	and  l                                           ; $48a4: $a5
	ld   a, l                                        ; $48a5: $7d
	ld   [bc], a                                     ; $48a6: $02
	ld   b, l                                        ; $48a7: $45
	ld   l, c                                        ; $48a8: $69
	sub  d                                           ; $48a9: $92
	sbc  a                                           ; $48aa: $9f
	ld   d, b                                        ; $48ab: $50
	sub  d                                           ; $48ac: $92
	adc  a                                           ; $48ad: $8f
	ld   a, l                                        ; $48ae: $7d
	and  c                                           ; $48af: $a1
	ld   a, c                                        ; $48b0: $79
	ld   a, l                                        ; $48b1: $7d
	dec  c                                           ; $48b2: $0d
	ld   [bc], a                                     ; $48b3: $02
	scf                                              ; $48b4: $37
	inc  bc                                          ; $48b5: $03
	ld   b, d                                        ; $48b6: $42
	ld   h, l                                        ; $48b7: $65
	ld   [hl], h                                     ; $48b8: $74
	sub  b                                           ; $48b9: $90
	ld   h, l                                        ; $48ba: $65
	ld   l, l                                        ; $48bb: $6d
	sbc  b                                           ; $48bc: $98
	and  c                                           ; $48bd: $a1
	ld   e, l                                        ; $48be: $5d
	sub  a                                           ; $48bf: $97
	ld   d, d                                        ; $48c0: $52
	sub  d                                           ; $48c1: $92
	sbc  a                                           ; $48c2: $9f
	dec  c                                           ; $48c3: $0d
	nop                                              ; $48c4: $00
	ld   a, [bc]                                     ; $48c5: $0a
	inc  e                                           ; $48c6: $1c
	dec  b                                           ; $48c7: $05
	inc  b                                           ; $48c8: $04
	inc  b                                           ; $48c9: $04
	ld   bc, $8c67                                   ; $48ca: $01 $67 $8c
	and  c                                           ; $48cd: $a1
	ld   a, b                                        ; $48ce: $78
	rst  $38                                         ; $48cf: $ff
	rst  $38                                         ; $48d0: $ff
	dec  c                                           ; $48d1: $0d
	ld   [hl], d                                     ; $48d2: $72
	adc  h                                           ; $48d3: $8c
	sub  a                                           ; $48d4: $97
	and  c                                           ; $48d5: $a1
	dec  b                                           ; $48d6: $05
	jr   nz, jr_069_493e                             ; $48d7: $20 $65

	ld   [bc], a                                     ; $48d9: $02
	jp   nz, Jump_069_6959                           ; $48da: $c2 $59 $69

	ld   [hl], h                                     ; $48dd: $74
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	dec  c                                           ; $48e0: $0d
	ld   [hl], l                                     ; $48e1: $75
	sub  b                                           ; $48e2: $90
	sbc  [hl]                                        ; $48e3: $9e
	inc  bc                                          ; $48e4: $03

jr_069_48e5:
	xor  c                                           ; $48e5: $a9
	ld   e, c                                        ; $48e6: $59
	ld   a, c                                        ; $48e7: $79
	dec  b                                           ; $48e8: $05
	jr   nz, jr_069_4950                             ; $48e9: $20 $65

	ld   l, l                                        ; $48eb: $6d
	ld   e, l                                        ; $48ec: $5d
	ld   [hl], h                                     ; $48ed: $74
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	dec  c                                           ; $48f0: $0d
	nop                                              ; $48f1: $00
	ld   a, [bc]                                     ; $48f2: $0a
	rrca                                             ; $48f3: $0f
	nop                                              ; $48f4: $00
	ld   bc, $0201                                   ; $48f5: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48f8: $cf
	dec  b                                           ; $48f9: $05
	ld   a, [de]                                     ; $48fa: $1a
	ld   h, e                                        ; $48fb: $63
	and  c                                           ; $48fc: $a1
	rst  $38                                         ; $48fd: $ff
	rst  $38                                         ; $48fe: $ff
	dec  c                                           ; $48ff: $0d
	nop                                              ; $4900: $00
	ld   a, [bc]                                     ; $4901: $0a
	inc  e                                           ; $4902: $1c
	dec  b                                           ; $4903: $05
	ld   bc, $1d01                                   ; $4904: $01 $01 $1d
	ld   b, b                                        ; $4907: $40
	dec  d                                           ; $4908: $15
	inc  bc                                          ; $4909: $03
	dec  d                                           ; $490a: $15
	ld   bc, $2803                                   ; $490b: $01 $03 $28
	nop                                              ; $490e: $00
	ld   bc, $7889                                   ; $490f: $01 $89 $78
	sbc  [hl]                                        ; $4912: $9e
	ld   e, b                                        ; $4913: $58
	sub  d                                           ; $4914: $92
	ld   h, a                                        ; $4915: $67
	adc  l                                           ; $4916: $8d
	rst  $38                                         ; $4917: $ff
	rst  $38                                         ; $4918: $ff
	dec  c                                           ; $4919: $0d
	nop                                              ; $491a: $00
	ld   a, [bc]                                     ; $491b: $0a
	nop                                              ; $491c: $00
	nop                                              ; $491d: $00
	inc  bc                                          ; $491e: $03
	ld   [de], a                                     ; $491f: $12
	ld   bc, $25b4                                   ; $4920: $01 $b4 $25
	nop                                              ; $4923: $00
	ld   c, $40                                      ; $4924: $0e $40
	rrca                                             ; $4926: $0f
	nop                                              ; $4927: $00
	ld   bc, $421b                                   ; $4928: $01 $1b $42
	ld   [bc], a                                     ; $492b: $02
	ld   bc, $0301                                   ; $492c: $01 $01 $03
	ld   h, a                                        ; $492f: $67
	adc  l                                           ; $4930: $8d
	sbc  d                                           ; $4931: $9a
	ld   h, e                                        ; $4932: $63
	and  c                                           ; $4933: $a1
	inc  b                                           ; $4934: $04
	inc  c                                           ; $4935: $0c
	inc  b                                           ; $4936: $04
	adc  a                                           ; $4937: $8f
	and  b                                           ; $4938: $a0
	inc  b                                           ; $4939: $04
	ld   de, $75a1                                   ; $493a: $11 $a1 $75
	sbc  c                                           ; $493d: $99

jr_069_493e:
	rst  $38                                         ; $493e: $ff
	dec  c                                           ; $493f: $0d
	db   $10                                         ; $4940: $10
	dec  b                                           ; $4941: $05
	db   $10                                         ; $4942: $10
	inc  bc                                          ; $4943: $03
	ld   a, c                                        ; $4944: $79
	ld   a, h                                        ; $4945: $7c
	ld   [bc], a                                     ; $4946: $02
	sbc  c                                           ; $4947: $99
	ld   [bc], a                                     ; $4948: $02
	rra                                              ; $4949: $1f
	and  b                                           ; $494a: $a0
	add  b                                           ; $494b: $80
	ld   e, c                                        ; $494c: $59
	ld   d, [hl]                                     ; $494d: $56
	ld   [hl], h                                     ; $494e: $74
	dec  c                                           ; $494f: $0d

jr_069_4950:
	db   $10                                         ; $4950: $10
	set  7, e                                        ; $4951: $cb $fb
	pop  de                                          ; $4953: $d1
	cp   d                                           ; $4954: $ba
	ld   a, c                                        ; $4955: $79
	ld   a, b                                        ; $4956: $78
	ld   [hl], c                                     ; $4957: $71
	ld   [hl], h                                     ; $4958: $74
	sbc  c                                           ; $4959: $99
	and  c                                           ; $495a: $a1
	ld   l, [hl]                                     ; $495b: $6e
	ld   a, b                                        ; $495c: $78
	ld   bc, $0d04                                   ; $495d: $01 $04 $0d
	nop                                              ; $4960: $00
	ld   a, [bc]                                     ; $4961: $0a
	add  hl, de                                      ; $4962: $19
	dec  b                                           ; $4963: $05
	ld   [bc], a                                     ; $4964: $02
	ld   a, l                                        ; $4965: $7d
	ld   h, b                                        ; $4966: $60
	adc  h                                           ; $4967: $8c
	ld   h, a                                        ; $4968: $67
	nop                                              ; $4969: $00
	nop                                              ; $496a: $00
	and  e                                           ; $496b: $a3
	jp   z, $a5d1                                    ; $496c: $ca $d1 $a5

	cp   d                                           ; $496f: $ba
	ld   h, a                                        ; $4970: $67
	sbc  c                                           ; $4971: $99
	nop                                              ; $4972: $00
	ld   bc, $6507                                   ; $4973: $01 $07 $65
	nop                                              ; $4976: $00
	ld   [bc], a                                     ; $4977: $02
	inc  bc                                          ; $4978: $03
	ld   bc, $2000                                   ; $4979: $01 $00 $20
	nop                                              ; $497c: $00
	rlca                                             ; $497d: $07
	ld   hl, sp+$00                                  ; $497e: $f8 $00
	ld   [bc], a                                     ; $4980: $02
	inc  bc                                          ; $4981: $03
	ld   bc, $2001                                   ; $4982: $01 $01 $20
	nop                                              ; $4985: $00
	ld   b, $6a                                      ; $4986: $06 $6a
	ld   [bc], a                                     ; $4988: $02
	rrca                                             ; $4989: $0f
	nop                                              ; $498a: $00
	ld   bc, $6701                                   ; $498b: $01 $01 $67
	adc  l                                           ; $498e: $8d
	sbc  d                                           ; $498f: $9a
	ld   h, e                                        ; $4990: $63
	and  c                                           ; $4991: $a1
	sbc  [hl]                                        ; $4992: $9e
	inc  b                                           ; $4993: $04
	inc  c                                           ; $4994: $0c
	inc  b                                           ; $4995: $04
	adc  a                                           ; $4996: $8f
	and  b                                           ; $4997: $a0
	inc  bc                                          ; $4998: $03
	and  b                                           ; $4999: $a0
	ld   [hl], c                                     ; $499a: $71
	ld   [hl], h                                     ; $499b: $74
	dec  c                                           ; $499c: $0d
	inc  b                                           ; $499d: $04
	ld   c, c                                        ; $499e: $49
	ld   h, l                                        ; $499f: $65
	and  c                                           ; $49a0: $a1
	ld   h, c                                        ; $49a1: $61
	ld   e, l                                        ; $49a2: $5d
	ld   a, b                                        ; $49a3: $78
	ld   [bc], a                                     ; $49a4: $02
	ld   [hl], d                                     ; $49a5: $72
	dec  c                                           ; $49a6: $0d
	ld   h, l                                        ; $49a7: $65
	ld   [hl], h                                     ; $49a8: $74
	sbc  c                                           ; $49a9: $99
	and  c                                           ; $49aa: $a1
	ld   [hl], l                                     ; $49ab: $75
	ld   h, a                                        ; $49ac: $67
	ld   e, c                                        ; $49ad: $59
	ld   sp, hl                                      ; $49ae: $f9
	dec  c                                           ; $49af: $0d
	nop                                              ; $49b0: $00
	ld   a, [bc]                                     ; $49b1: $0a
	ld   bc, $0e04                                   ; $49b2: $01 $04 $0e
	inc  bc                                          ; $49b5: $03
	sbc  l                                           ; $49b6: $9d
	inc  b                                           ; $49b7: $04
	and  [hl]                                        ; $49b8: $a6
	ld   [hl], l                                     ; $49b9: $75
	ld   h, a                                        ; $49ba: $67
	sub  [hl]                                        ; $49bb: $96
	sbc  a                                           ; $49bc: $9f
	dec  c                                           ; $49bd: $0d
	adc  l                                           ; $49be: $8d
	and  c                                           ; $49bf: $a1
	ld   a, b                                        ; $49c0: $78
	ld   e, d                                        ; $49c1: $5a
	ld   d, d                                        ; $49c2: $52
	sbc  c                                           ; $49c3: $99
	ld   h, [hl]                                     ; $49c4: $66
	sub  c                                           ; $49c5: $91
	dec  c                                           ; $49c6: $0d
	ld   d, b                                        ; $49c7: $50
	sbc  b                                           ; $49c8: $98
	adc  h                                           ; $49c9: $8c
	ld   l, c                                        ; $49ca: $69
	and  c                                           ; $49cb: $a1
	ld   e, c                                        ; $49cc: $59
	sbc  a                                           ; $49cd: $9f
	dec  c                                           ; $49ce: $0d
	nop                                              ; $49cf: $00
	ld   a, [bc]                                     ; $49d0: $0a
	inc  e                                           ; $49d1: $1c
	ld   [bc], a                                     ; $49d2: $02
	ld   [bc], a                                     ; $49d3: $02
	ld   [bc], a                                     ; $49d4: $02
	ld   bc, $a18d                                   ; $49d5: $01 $8d $a1
	ld   a, b                                        ; $49d8: $78
	ld   sp, hl                                      ; $49d9: $f9
	dec  c                                           ; $49da: $0d
	sbc  l                                           ; $49db: $9d
	ld   e, c                                        ; $49dc: $59
	ld   [hl], c                                     ; $49dd: $71
	ld   [hl], h                                     ; $49de: $74
	adc  h                                           ; $49df: $8c
	ld   l, c                                        ; $49e0: $69
	and  c                                           ; $49e1: $a1
	sbc  l                                           ; $49e2: $9d
	ld   a, e                                        ; $49e3: $7b
	sbc  a                                           ; $49e4: $9f
	dec  c                                           ; $49e5: $0d
	nop                                              ; $49e6: $00
	ld   a, [bc]                                     ; $49e7: $0a
	ld   bc, $0258                                   ; $49e8: $01 $58 $02
	add  c                                           ; $49eb: $81
	ld   h, e                                        ; $49ec: $63
	adc  h                                           ; $49ed: $8c
	ld   a, l                                        ; $49ee: $7d
	sbc  l                                           ; $49ef: $9d
	ld   l, l                                        ; $49f0: $6d
	ld   e, l                                        ; $49f1: $5d
	ld   h, l                                        ; $49f2: $65
	and  b                                           ; $49f3: $a0
	dec  c                                           ; $49f4: $0d
	ld   [bc], a                                     ; $49f5: $02
	sub  l                                           ; $49f6: $95
	ld   a, c                                        ; $49f7: $79
	dec  b                                           ; $49f8: $05
	db   $10                                         ; $49f9: $10
	sbc  c                                           ; $49fa: $99
	ld   a, h                                        ; $49fb: $7c
	ld   [hl], l                                     ; $49fc: $75
	ld   h, a                                        ; $49fd: $67
	sbc  l                                           ; $49fe: $9d
	sub  [hl]                                        ; $49ff: $96
	sbc  a                                           ; $4a00: $9f
	dec  c                                           ; $4a01: $0d
	nop                                              ; $4a02: $00
	ld   a, [bc]                                     ; $4a03: $0a
	ld   bc, $5063                                   ; $4a04: $01 $63 $50
	ld   h, e                                        ; $4a07: $63
	ld   d, b                                        ; $4a08: $50
	sbc  [hl]                                        ; $4a09: $9e
	ld   [bc], a                                     ; $4a0a: $02
	sub  l                                           ; $4a0b: $95
	ld   [bc], a                                     ; $4a0c: $02
	sub  e                                           ; $4a0d: $93
	sbc  b                                           ; $4a0e: $98
	and  b                                           ; $4a0f: $a0
	dec  c                                           ; $4a10: $0d
	ld   [bc], a                                     ; $4a11: $02
	ei                                               ; $4a12: $fb
	ld   e, a                                        ; $4a13: $5f
	ld   a, b                                        ; $4a14: $78
	ld   h, e                                        ; $4a15: $63
	ld   d, d                                        ; $4a16: $52
	sbc  a                                           ; $4a17: $9f
	dec  c                                           ; $4a18: $0d
	nop                                              ; $4a19: $00
	ld   a, [bc]                                     ; $4a1a: $0a
	nop                                              ; $4a1b: $00
	rrca                                             ; $4a1c: $0f
	nop                                              ; $4a1d: $00
	ld   bc, $6701                                   ; $4a1e: $01 $01 $67
	adc  l                                           ; $4a21: $8d
	sbc  d                                           ; $4a22: $9a
	ld   h, e                                        ; $4a23: $63
	and  c                                           ; $4a24: $a1
	sbc  a                                           ; $4a25: $9f
	dec  c                                           ; $4a26: $0d
	ld   h, a                                        ; $4a27: $67
	adc  l                                           ; $4a28: $8d
	sbc  d                                           ; $4a29: $9a
	ld   h, e                                        ; $4a2a: $63
	and  c                                           ; $4a2b: $a1
	ld   a, c                                        ; $4a2c: $79
	sbc  [hl]                                        ; $4a2d: $9e
	ld   h, l                                        ; $4a2e: $65
	and  c                                           ; $4a2f: $a1
	ld   h, c                                        ; $4a30: $61
	ld   e, l                                        ; $4a31: $5d
	ld   a, b                                        ; $4a32: $78
	ld   [bc], a                                     ; $4a33: $02
	ld   [hl], d                                     ; $4a34: $72
	ld   a, l                                        ; $4a35: $7d
	dec  c                                           ; $4a36: $0d
	inc  b                                           ; $4a37: $04
	ld   c, l                                        ; $4a38: $4d
	ld   [bc], a                                     ; $4a39: $02
	ld   a, e                                        ; $4a3a: $7b
	ld   d, d                                        ; $4a3b: $52
	adc  h                                           ; $4a3c: $8c
	ld   l, c                                        ; $4a3d: $69
	and  c                                           ; $4a3e: $a1
	sub  [hl]                                        ; $4a3f: $96
	sbc  a                                           ; $4a40: $9f
	dec  c                                           ; $4a41: $0d
	nop                                              ; $4a42: $00
	ld   a, [bc]                                     ; $4a43: $0a
	ld   bc, $0e04                                   ; $4a44: $01 $04 $0e
	inc  bc                                          ; $4a47: $03
	sbc  l                                           ; $4a48: $9d
	inc  b                                           ; $4a49: $04
	and  [hl]                                        ; $4a4a: $a6
	ld   [hl], l                                     ; $4a4b: $75
	ld   h, a                                        ; $4a4c: $67
	sub  [hl]                                        ; $4a4d: $96
	sbc  a                                           ; $4a4e: $9f
	adc  h                                           ; $4a4f: $8c
	ld   h, [hl]                                     ; $4a50: $66
	adc  a                                           ; $4a51: $8f
	ld   a, c                                        ; $4a52: $79
	dec  c                                           ; $4a53: $0d
	dec  b                                           ; $4a54: $05
	add  hl, de                                      ; $4a55: $19
	inc  bc                                          ; $4a56: $03
	and  h                                           ; $4a57: $a4
	ld   h, e                                        ; $4a58: $63
	ld   d, [hl]                                     ; $4a59: $56
	ld   h, l                                        ; $4a5a: $65
	ld   [hl], h                                     ; $4a5b: $74
	ld   d, d                                        ; $4a5c: $52
	sbc  d                                           ; $4a5d: $9a
	ld   a, [hl]                                     ; $4a5e: $7e
	ld   [bc], a                                     ; $4a5f: $02
	reti                                             ; $4a60: $d9


	ld   [bc], a                                     ; $4a61: $02
	ld   h, e                                        ; $4a62: $63
	ld   a, l                                        ; $4a63: $7d
	dec  c                                           ; $4a64: $0d
	ld   [bc], a                                     ; $4a65: $02
	xor  d                                           ; $4a66: $aa
	ld   e, c                                        ; $4a67: $59
	sub  a                                           ; $4a68: $97
	ld   [hl], d                                     ; $4a69: $72
	ld   d, d                                        ; $4a6a: $52
	ld   [hl], h                                     ; $4a6b: $74
	ld   e, l                                        ; $4a6c: $5d
	sbc  c                                           ; $4a6d: $99
	and  c                                           ; $4a6e: $a1
	ld   [hl], l                                     ; $4a6f: $75
	ld   h, a                                        ; $4a70: $67
	ld   e, c                                        ; $4a71: $59
	sub  a                                           ; $4a72: $97
	sbc  a                                           ; $4a73: $9f
	dec  c                                           ; $4a74: $0d
	nop                                              ; $4a75: $00
	ld   a, [bc]                                     ; $4a76: $0a
	rlca                                             ; $4a77: $07
	ld   bc, $0302                                   ; $4a78: $01 $02 $03
	inc  h                                           ; $4a7b: $24
	ld   bc, $2396                                   ; $4a7c: $01 $96 $23
	nop                                              ; $4a7f: $00
	inc  e                                           ; $4a80: $1c
	ld   [bc], a                                     ; $4a81: $02
	ld   [bc], a                                     ; $4a82: $02
	ld   [bc], a                                     ; $4a83: $02
	ld   bc, $4904                                   ; $4a84: $01 $04 $49
	and  b                                           ; $4a87: $a0
	ld   [bc], a                                     ; $4a88: $02
	sbc  l                                           ; $4a89: $9d
	ld   [hl], c                                     ; $4a8a: $71
	ld   [hl], h                                     ; $4a8b: $74
	adc  h                                           ; $4a8c: $8c
	ld   h, a                                        ; $4a8d: $67
	ld   a, h                                        ; $4a8e: $7c
	sbc  a                                           ; $4a8f: $9f
	dec  c                                           ; $4a90: $0d
	sbc  l                                           ; $4a91: $9d
	ld   l, l                                        ; $4a92: $6d
	ld   e, l                                        ; $4a93: $5d
	ld   h, l                                        ; $4a94: $65
	ld   a, c                                        ; $4a95: $79
	sbc  [hl]                                        ; $4a96: $9e
	inc  b                                           ; $4a97: $04
	and  b                                           ; $4a98: $a0
	ld   [bc], a                                     ; $4a99: $02
	ld   h, $78                                      ; $4a9a: $26 $78
	sub  b                                           ; $4a9c: $90
	ld   a, h                                        ; $4a9d: $7c
	ld   a, b                                        ; $4a9e: $78
	and  c                                           ; $4a9f: $a1
	ld   [hl], h                                     ; $4aa0: $74
	dec  c                                           ; $4aa1: $0d
	inc  b                                           ; $4aa2: $04
	ld   c, c                                        ; $4aa3: $49
	sub  b                                           ; $4aa4: $90
	ld   a, b                                        ; $4aa5: $78
	ld   d, d                                        ; $4aa6: $52
	ld   [hl], l                                     ; $4aa7: $75
	ld   h, a                                        ; $4aa8: $67
	sbc  l                                           ; $4aa9: $9d
	sbc  a                                           ; $4aaa: $9f
	dec  c                                           ; $4aab: $0d
	nop                                              ; $4aac: $00
	ld   a, [bc]                                     ; $4aad: $0a
	inc  e                                           ; $4aae: $1c
	ld   [bc], a                                     ; $4aaf: $02
	inc  b                                           ; $4ab0: $04
	inc  b                                           ; $4ab1: $04
	dec  e                                           ; $4ab2: $1d
	ld   b, b                                        ; $4ab3: $40
	ld   [de], a                                     ; $4ab4: $12
	inc  bc                                          ; $4ab5: $03
	ld   [de], a                                     ; $4ab6: $12
	ld   bc, $2802                                   ; $4ab7: $01 $02 $28
	nop                                              ; $4aba: $00
	ld   bc, $ffff                                   ; $4abb: $01 $ff $ff
	ld   [hl], l                                     ; $4abe: $75
	sub  b                                           ; $4abf: $90
	sbc  [hl]                                        ; $4ac0: $9e
	ld   l, e                                        ; $4ac1: $6b
	and  c                                           ; $4ac2: $a1
	ld   a, b                                        ; $4ac3: $78
	ld   h, c                                        ; $4ac4: $61
	halt                                             ; $4ac5: $76
	dec  c                                           ; $4ac6: $0d
	nop                                              ; $4ac7: $00
	dec  b                                           ; $4ac8: $05
	ld   b, b                                        ; $4ac9: $40
	ld   c, a                                        ; $4aca: $4f
	ld   bc, $0000                                   ; $4acb: $01 $00 $00
	ld   bc, $0008                                   ; $4ace: $01 $08 $00
	ld   h, e                                        ; $4ad1: $63
	and  c                                           ; $4ad2: $a1
	ld   a, c                                        ; $4ad3: $79
	ld   [bc], a                                     ; $4ad4: $02
	sbc  l                                           ; $4ad5: $9d
	sbc  l                                           ; $4ad6: $9d
	sbc  d                                           ; $4ad7: $9a
	sbc  c                                           ; $4ad8: $99
	halt                                             ; $4ad9: $76
	ld   a, l                                        ; $4ada: $7d
	dec  c                                           ; $4adb: $0d
	dec  b                                           ; $4adc: $05
	pop  de                                          ; $4add: $d1
	ld   [hl], c                                     ; $4ade: $71
	ld   [hl], h                                     ; $4adf: $74
	sub  b                                           ; $4ae0: $90
	ld   d, d                                        ; $4ae1: $52
	adc  h                                           ; $4ae2: $8c
	ld   l, c                                        ; $4ae3: $69
	and  c                                           ; $4ae4: $a1
	ld   [hl], l                                     ; $4ae5: $75
	ld   h, l                                        ; $4ae6: $65
	ld   l, l                                        ; $4ae7: $6d
	sbc  l                                           ; $4ae8: $9d
	sbc  a                                           ; $4ae9: $9f
	dec  c                                           ; $4aea: $0d
	nop                                              ; $4aeb: $00
	ld   a, [bc]                                     ; $4aec: $0a
	inc  e                                           ; $4aed: $1c
	ld   [bc], a                                     ; $4aee: $02
	ld   bc, $0101                                   ; $4aef: $01 $01 $01
	sbc  l                                           ; $4af2: $9d
	ld   l, l                                        ; $4af3: $6d
	ld   e, l                                        ; $4af4: $5d
	ld   h, l                                        ; $4af5: $65
	ld   a, l                                        ; $4af6: $7d
	sbc  [hl]                                        ; $4af7: $9e
	sub  b                                           ; $4af8: $90
	ld   d, h                                        ; $4af9: $54
	inc  bc                                          ; $4afa: $03
	ld   l, h                                        ; $4afb: $6c
	ld   h, l                                        ; $4afc: $65
	ld   h, c                                        ; $4afd: $61
	ld   h, c                                        ; $4afe: $61
	ld   [hl], l                                     ; $4aff: $75
	dec  c                                           ; $4b00: $0d
	inc  b                                           ; $4b01: $04
	inc  c                                           ; $4b02: $0c
	inc  b                                           ; $4b03: $04
	adc  a                                           ; $4b04: $8f
	and  b                                           ; $4b05: $a0
	inc  b                                           ; $4b06: $04
	ld   de, $75a1                                   ; $4b07: $11 $a1 $75
	ld   d, d                                        ; $4b0a: $52
	adc  h                                           ; $4b0b: $8c
	ld   h, a                                        ; $4b0c: $67
	ld   e, c                                        ; $4b0d: $59
	sub  a                                           ; $4b0e: $97
	sbc  [hl]                                        ; $4b0f: $9e
	dec  c                                           ; $4b10: $0d
	ld   [bc], a                                     ; $4b11: $02
	sub  l                                           ; $4b12: $95
	ld   [bc], a                                     ; $4b13: $02
	sub  e                                           ; $4b14: $93
	sbc  b                                           ; $4b15: $98
	ld   e, d                                        ; $4b16: $5a
	and  c                                           ; $4b17: $a1
	ld   a, [hl]                                     ; $4b18: $7e
	ld   [hl], c                                     ; $4b19: $71
	ld   [hl], h                                     ; $4b1a: $74
	ld   e, l                                        ; $4b1b: $5d
	ld   l, [hl]                                     ; $4b1c: $6e
	ld   h, e                                        ; $4b1d: $63
	ld   d, d                                        ; $4b1e: $52
	ld   a, b                                        ; $4b1f: $78
	sbc  a                                           ; $4b20: $9f
	dec  c                                           ; $4b21: $0d
	nop                                              ; $4b22: $00
	ld   a, [bc]                                     ; $4b23: $0a
	nop                                              ; $4b24: $00
	inc  e                                           ; $4b25: $1c
	ld   [bc], a                                     ; $4b26: $02
	inc  bc                                          ; $4b27: $03
	inc  bc                                          ; $4b28: $03
	ld   bc, $4904                                   ; $4b29: $01 $04 $49
	and  b                                           ; $4b2c: $a0
	ld   [bc], a                                     ; $4b2d: $02
	sbc  l                                           ; $4b2e: $9d
	ld   [hl], c                                     ; $4b2f: $71
	ld   [hl], h                                     ; $4b30: $74
	adc  h                                           ; $4b31: $8c
	ld   h, a                                        ; $4b32: $67
	ld   a, h                                        ; $4b33: $7c
	ld   sp, hl                                      ; $4b34: $f9
	dec  c                                           ; $4b35: $0d
	nop                                              ; $4b36: $00
	ld   a, [bc]                                     ; $4b37: $0a
	inc  e                                           ; $4b38: $1c
	ld   [bc], a                                     ; $4b39: $02
	ld   [bc], a                                     ; $4b3a: $02
	ld   [bc], a                                     ; $4b3b: $02
	dec  e                                           ; $4b3c: $1d
	ld   b, b                                        ; $4b3d: $40
	ld   [de], a                                     ; $4b3e: $12
	inc  bc                                          ; $4b3f: $03
	ld   [de], a                                     ; $4b40: $12
	ld   bc, $2902                                   ; $4b41: $01 $02 $29
	nop                                              ; $4b44: $00
	ld   bc, $6d9d                                   ; $4b45: $01 $9d $6d
	ld   e, l                                        ; $4b48: $5d
	ld   h, l                                        ; $4b49: $65
	ld   a, h                                        ; $4b4a: $7c
	ld   h, c                                        ; $4b4b: $61
	halt                                             ; $4b4c: $76
	sub  [hl]                                        ; $4b4d: $96
	sbc  b                                           ; $4b4e: $98
	sbc  [hl]                                        ; $4b4f: $9e
	inc  bc                                          ; $4b50: $03
	sub  h                                           ; $4b51: $94
	inc  b                                           ; $4b52: $04
	sbc  [hl]                                        ; $4b53: $9e
	ld   a, h                                        ; $4b54: $7c
	dec  c                                           ; $4b55: $0d
	inc  bc                                          ; $4b56: $03
	ld   l, l                                        ; $4b57: $6d
	dec  b                                           ; $4b58: $05
	add  hl, de                                      ; $4b59: $19
	ld   a, h                                        ; $4b5a: $7c
	ld   h, c                                        ; $4b5b: $61
	halt                                             ; $4b5c: $76
	inc  bc                                          ; $4b5d: $03
	ld   [hl], l                                     ; $4b5e: $75
	inc  b                                           ; $4b5f: $04
	xor  e                                           ; $4b60: $ab
	ld   a, b                                        ; $4b61: $78
	ld   h, e                                        ; $4b62: $63
	ld   [hl], c                                     ; $4b63: $71
	ld   l, l                                        ; $4b64: $6d
	inc  b                                           ; $4b65: $04
	ld   a, b                                        ; $4b66: $78
	ld   e, d                                        ; $4b67: $5a
	dec  c                                           ; $4b68: $0d
	ld   d, d                                        ; $4b69: $52
	ld   d, d                                        ; $4b6a: $52
	and  c                                           ; $4b6b: $a1
	ld   h, [hl]                                     ; $4b6c: $66
	sub  c                                           ; $4b6d: $91
	ld   a, b                                        ; $4b6e: $78
	ld   e, l                                        ; $4b6f: $5d
	ld   [hl], c                                     ; $4b70: $71
	ld   [hl], h                                     ; $4b71: $74
	ld   sp, hl                                      ; $4b72: $f9
	dec  c                                           ; $4b73: $0d
	nop                                              ; $4b74: $00
	ld   a, [bc]                                     ; $4b75: $0a
	ld   bc, $5063                                   ; $4b76: $01 $63 $50
	ld   h, e                                        ; $4b79: $63
	ld   d, b                                        ; $4b7a: $50
	sbc  a                                           ; $4b7b: $9f
	dec  c                                           ; $4b7c: $0d
	ld   [bc], a                                     ; $4b7d: $02
	sub  l                                           ; $4b7e: $95
	ld   [bc], a                                     ; $4b7f: $02
	sub  e                                           ; $4b80: $93
	sbc  b                                           ; $4b81: $98
	and  b                                           ; $4b82: $a0
	ld   [bc], a                                     ; $4b83: $02
	ei                                               ; $4b84: $fb
	ld   e, a                                        ; $4b85: $5f
	ld   a, b                                        ; $4b86: $78
	ld   h, e                                        ; $4b87: $63
	ld   d, d                                        ; $4b88: $52
	sbc  a                                           ; $4b89: $9f
	dec  c                                           ; $4b8a: $0d
	nop                                              ; $4b8b: $00
	ld   a, [bc]                                     ; $4b8c: $0a
	nop                                              ; $4b8d: $00
	inc  e                                           ; $4b8e: $1c
	ld   [bc], a                                     ; $4b8f: $02
	ld   bc, $0101                                   ; $4b90: $01 $01 $01
	ld   d, b                                        ; $4b93: $50
	sub  a                                           ; $4b94: $97
	sbc  [hl]                                        ; $4b95: $9e
	ld   l, e                                        ; $4b96: $6b
	ld   h, c                                        ; $4b97: $61
	ld   a, c                                        ; $4b98: $79
	ld   d, d                                        ; $4b99: $52
	ld   l, l                                        ; $4b9a: $6d
	and  c                                           ; $4b9b: $a1
	ld   [hl], l                                     ; $4b9c: $75
	ld   h, a                                        ; $4b9d: $67
	ld   a, h                                        ; $4b9e: $7c
	sbc  a                                           ; $4b9f: $9f
	dec  c                                           ; $4ba0: $0d
	inc  bc                                          ; $4ba1: $03
	ld   [bc], a                                     ; $4ba2: $02
	ld   e, c                                        ; $4ba3: $59
	ld   a, c                                        ; $4ba4: $79
	ld   h, l                                        ; $4ba5: $65
	ld   [hl], h                                     ; $4ba6: $74
	sbc  c                                           ; $4ba7: $99
	ld   a, b                                        ; $4ba8: $78
	and  c                                           ; $4ba9: $a1
	ld   [hl], h                                     ; $4baa: $74
	dec  c                                           ; $4bab: $0d
	ld   [bc], a                                     ; $4bac: $02
	and  c                                           ; $4bad: $a1
	ld   e, d                                        ; $4bae: $5a
	ld   e, e                                        ; $4baf: $5b
	ld   e, e                                        ; $4bb0: $5b
	adc  h                                           ; $4bb1: $8c
	ld   h, a                                        ; $4bb2: $67
	sbc  l                                           ; $4bb3: $9d
	ld   a, e                                        ; $4bb4: $7b
	sbc  a                                           ; $4bb5: $9f
	dec  c                                           ; $4bb6: $0d
	nop                                              ; $4bb7: $00
	ld   a, [bc]                                     ; $4bb8: $0a
	dec  e                                           ; $4bb9: $1d
	ld   b, b                                        ; $4bba: $40
	ld   [de], a                                     ; $4bbb: $12
	inc  bc                                          ; $4bbc: $03
	ld   [de], a                                     ; $4bbd: $12
	ld   bc, $2803                                   ; $4bbe: $01 $03 $28
	nop                                              ; $4bc1: $00
	ld   bc, $0008                                   ; $4bc2: $01 $08 $00
	ld   h, e                                        ; $4bc5: $63
	and  c                                           ; $4bc6: $a1
	sub  b                                           ; $4bc7: $90
	sbc  [hl]                                        ; $4bc8: $9e
	inc  b                                           ; $4bc9: $04
	db   $ec                                         ; $4bca: $ec
	inc  bc                                          ; $4bcb: $03
	or   b                                           ; $4bcc: $b0
	add  [hl]                                        ; $4bcd: $86
	ld   a, h                                        ; $4bce: $7c
	dec  c                                           ; $4bcf: $0d
	nop                                              ; $4bd0: $00
	dec  b                                           ; $4bd1: $05
	ld   b, b                                        ; $4bd2: $40
	ld   c, a                                        ; $4bd3: $4f
	ld   bc, $0000                                   ; $4bd4: $01 $00 $00
	ld   bc, $a102                                   ; $4bd7: $01 $02 $a1
	ld   [hl], e                                     ; $4bda: $73
	ld   e, c                                        ; $4bdb: $59
	ld   d, d                                        ; $4bdc: $52
	ld   e, d                                        ; $4bdd: $5a
	ld   [hl], l                                     ; $4bde: $75
	ld   e, e                                        ; $4bdf: $5b
	sbc  c                                           ; $4be0: $99
	sub  [hl]                                        ; $4be1: $96
	ld   d, h                                        ; $4be2: $54
	ld   a, c                                        ; $4be3: $79
	dec  c                                           ; $4be4: $0d
	ld   a, b                                        ; $4be5: $78
	ld   [hl], c                                     ; $4be6: $71
	ld   l, l                                        ; $4be7: $6d
	ld   a, h                                        ; $4be8: $7c
	ld   [hl], l                                     ; $4be9: $75
	ld   h, a                                        ; $4bea: $67
	sbc  l                                           ; $4beb: $9d
	ld   a, e                                        ; $4bec: $7b
	sbc  a                                           ; $4bed: $9f
	dec  c                                           ; $4bee: $0d
	nop                                              ; $4bef: $00
	ld   a, [bc]                                     ; $4bf0: $0a
	nop                                              ; $4bf1: $00
	nop                                              ; $4bf2: $00
	ld   d, $04                                      ; $4bf3: $16 $04
	rrca                                             ; $4bf5: $0f
	inc  bc                                          ; $4bf6: $03
	inc  de                                          ; $4bf7: $13
	ld   [bc], a                                     ; $4bf8: $02
	ld   bc, $5483                                   ; $4bf9: $01 $83 $54
	rst  $38                                         ; $4bfc: $ff
	rst  $38                                         ; $4bfd: $ff
	inc  bc                                          ; $4bfe: $03
	ld   d, d                                        ; $4bff: $52
	ld   e, e                                        ; $4c00: $5b
	inc  b                                           ; $4c01: $04
	sub  a                                           ; $4c02: $97
	sbc  c                                           ; $4c03: $99
	sbc  l                                           ; $4c04: $9d
	rst  $38                                         ; $4c05: $ff
	rst  $38                                         ; $4c06: $ff
	dec  c                                           ; $4c07: $0d
	nop                                              ; $4c08: $00
	ld   a, [bc]                                     ; $4c09: $0a
	rrca                                             ; $4c0a: $0f
	nop                                              ; $4c0b: $00
	ld   bc, $0101                                   ; $4c0c: $01 $01 $01
	inc  bc                                          ; $4c0f: $03
	rst  JumpTable                                         ; $4c10: $df
	db   $ec                                         ; $4c11: $ec
	and  e                                           ; $4c12: $a3
	ld   h, e                                        ; $4c13: $63
	and  c                                           ; $4c14: $a1
	sbc  [hl]                                        ; $4c15: $9e
	ld   d, d                                        ; $4c16: $52
	sbc  c                                           ; $4c17: $99
	ld   d, d                                        ; $4c18: $52
	sbc  c                                           ; $4c19: $99
	ld   bc, $0d04                                   ; $4c1a: $01 $04 $0d
	nop                                              ; $4c1d: $00
	ld   a, [bc]                                     ; $4c1e: $0a
	add  hl, de                                      ; $4c1f: $19
	dec  b                                           ; $4c20: $05
	ld   [bc], a                                     ; $4c21: $02
	ld   [bc], a                                     ; $4c22: $02
	and  b                                           ; $4c23: $a0
	ld   [hl], e                                     ; $4c24: $73
	ld   e, l                                        ; $4c25: $5d
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	dec  b                                           ; $4c28: $05
	ld   d, $6f                                      ; $4c29: $16 $6f
	ld   [bc], a                                     ; $4c2b: $02
	ld   d, e                                        ; $4c2c: $53
	sbc  c                                           ; $4c2d: $99
	nop                                              ; $4c2e: $00
	ld   bc, $a107                                   ; $4c2f: $01 $07 $a1
	nop                                              ; $4c32: $00
	ld   [bc], a                                     ; $4c33: $02
	inc  bc                                          ; $4c34: $03
	ld   bc, $2000                                   ; $4c35: $01 $00 $20
	nop                                              ; $4c38: $00
	rlca                                             ; $4c39: $07
	ld   d, d                                        ; $4c3a: $52
	nop                                              ; $4c3b: $00
	ld   [bc], a                                     ; $4c3c: $02
	inc  bc                                          ; $4c3d: $03
	ld   bc, $2001                                   ; $4c3e: $01 $01 $20
	nop                                              ; $4c41: $00
	ld   b, $79                                      ; $4c42: $06 $79
	nop                                              ; $4c44: $00
	rrca                                             ; $4c45: $0f
	nop                                              ; $4c46: $00
	ld   bc, $0101                                   ; $4c47: $01 $01 $01
	inc  bc                                          ; $4c4a: $03
	sub  d                                           ; $4c4b: $92
	ld   [hl], c                                     ; $4c4c: $71
	ld   a, a                                        ; $4c4d: $7f
	sbc  b                                           ; $4c4e: $98
	sbc  [hl]                                        ; $4c4f: $9e
	ld   a, h                                        ; $4c50: $7c
	ld   l, h                                        ; $4c51: $6c
	ld   e, e                                        ; $4c52: $5b
	ld   a, l                                        ; $4c53: $7d
	pop  bc                                          ; $4c54: $c1
	db   $e3                                         ; $4c55: $e3
	ld   l, [hl]                                     ; $4c56: $6e
	sub  [hl]                                        ; $4c57: $96
	dec  c                                           ; $4c58: $0d
	db   $10                                         ; $4c59: $10
	ld   h, c                                        ; $4c5a: $61
	ld   h, c                                        ; $4c5b: $61
	ld   a, l                                        ; $4c5c: $7d
	ld   d, d                                        ; $4c5d: $52
	ld   h, e                                        ; $4c5e: $63
	ld   e, h                                        ; $4c5f: $5c
	sub  [hl]                                        ; $4c60: $96
	ld   e, l                                        ; $4c61: $5d
	ld   [bc], a                                     ; $4c62: $02
	ld   d, e                                        ; $4c63: $53
	sbc  e                                           ; $4c64: $9b
	ld   d, h                                        ; $4c65: $54
	ld   bc, $0d04                                   ; $4c66: $01 $04 $0d
	nop                                              ; $4c69: $00
	ld   a, [bc]                                     ; $4c6a: $0a
	nop                                              ; $4c6b: $00
	rrca                                             ; $4c6c: $0f
	inc  bc                                          ; $4c6d: $03
	rla                                              ; $4c6e: $17
	ld   bc, $a903                                   ; $4c6f: $01 $03 $a9
	ld   e, c                                        ; $4c72: $59
	ld   l, e                                        ; $4c73: $6b
	ld   h, c                                        ; $4c74: $61
	ld   a, c                                        ; $4c75: $79
	ld   d, d                                        ; $4c76: $52
	sbc  c                                           ; $4c77: $99
	ld   a, h                                        ; $4c78: $7c
	ld   sp, hl                                      ; $4c79: $f9
	dec  c                                           ; $4c7a: $0d
	nop                                              ; $4c7b: $00
	ld   a, [bc]                                     ; $4c7c: $0a
	rrca                                             ; $4c7d: $0f
	nop                                              ; $4c7e: $00
	ld   bc, $0101                                   ; $4c7f: $01 $01 $01
	inc  bc                                          ; $4c82: $03
	adc  h                                           ; $4c83: $8c
	ld   l, b                                        ; $4c84: $68
	ld   d, d                                        ; $4c85: $52
	rst  $38                                         ; $4c86: $ff
	rst  $38                                         ; $4c87: $ff
	inc  bc                                          ; $4c88: $03
	push de                                          ; $4c89: $d5
	ld   h, b                                        ; $4c8a: $60
	sub  [hl]                                        ; $4c8b: $96
	ld   d, h                                        ; $4c8c: $54
	ld   a, [$0401]                                  ; $4c8d: $fa $01 $04
	dec  c                                           ; $4c90: $0d
	nop                                              ; $4c91: $00
	ld   a, [bc]                                     ; $4c92: $0a
	nop                                              ; $4c93: $00
	rrca                                             ; $4c94: $0f
	nop                                              ; $4c95: $00
	ld   bc, $0101                                   ; $4c96: $01 $01 $01
	inc  bc                                          ; $4c99: $03
	sub  b                                           ; $4c9a: $90
	ld   d, h                                        ; $4c9b: $54
	inc  bc                                          ; $4c9c: $03
	ld   l, h                                        ; $4c9d: $6c
	ld   h, l                                        ; $4c9e: $65
	ld   [bc], a                                     ; $4c9f: $02
	and  b                                           ; $4ca0: $a0
	ld   [hl], e                                     ; $4ca1: $73
	ld   d, d                                        ; $4ca2: $52
	ld   [hl], h                                     ; $4ca3: $74
	adc  l                                           ; $4ca4: $8d
	sub  [hl]                                        ; $4ca5: $96
	ld   d, h                                        ; $4ca6: $54
	ld   bc, $0d04                                   ; $4ca7: $01 $04 $0d
	nop                                              ; $4caa: $00
	ld   a, [bc]                                     ; $4cab: $0a
	rlca                                             ; $4cac: $07
	rlc  b                                           ; $4cad: $cb $00
	inc  bc                                          ; $4caf: $03
	inc  de                                          ; $4cb0: $13
	ld   bc, $25b4                                   ; $4cb1: $01 $b4 $25
	nop                                              ; $4cb4: $00
	rlca                                             ; $4cb5: $07
	rla                                              ; $4cb6: $17
	ld   bc, $1303                                   ; $4cb7: $01 $03 $13
	ld   bc, $22b4                                   ; $4cba: $01 $b4 $22
	nop                                              ; $4cbd: $00
	rrca                                             ; $4cbe: $0f
	inc  bc                                          ; $4cbf: $03
	inc  d                                           ; $4cc0: $14
	ld   bc, $9750                                   ; $4cc1: $01 $50 $97
	sbc  [hl]                                        ; $4cc4: $9e
	cp   h                                           ; $4cc5: $bc
	call nz, $f5b2                                   ; $4cc6: $c4 $b2 $f5
	ld   e, d                                        ; $4cc9: $5a
	dec  c                                           ; $4cca: $0d
	inc  bc                                          ; $4ccb: $03
	dec  de                                          ; $4ccc: $1b
	sbc  d                                           ; $4ccd: $9a
	ld   [hl], h                                     ; $4cce: $74
	sbc  c                                           ; $4ccf: $99
	ld   a, h                                        ; $4cd0: $7c
	ld   a, e                                        ; $4cd1: $7b
	rst  $38                                         ; $4cd2: $ff
	rst  $38                                         ; $4cd3: $ff
	dec  c                                           ; $4cd4: $0d
	nop                                              ; $4cd5: $00
	ld   a, [bc]                                     ; $4cd6: $0a
	add  hl, de                                      ; $4cd7: $19
	dec  b                                           ; $4cd8: $05
	ld   bc, $c004                                   ; $4cd9: $01 $04 $c0
	inc  bc                                          ; $4cdc: $03
	ld   a, l                                        ; $4cdd: $7d
	ld   h, l                                        ; $4cde: $65
	ld   l, l                                        ; $4cdf: $6d
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	rlca                                             ; $4ce2: $07
	ei                                               ; $4ce3: $fb
	nop                                              ; $4ce4: $00
	ld   [bc], a                                     ; $4ce5: $02
	inc  bc                                          ; $4ce6: $03
	ld   bc, $2000                                   ; $4ce7: $01 $00 $20
	nop                                              ; $4cea: $00
	ld   b, $17                                      ; $4ceb: $06 $17
	ld   bc, $000f                                   ; $4ced: $01 $0f $00
	ld   bc, $0101                                   ; $4cf0: $01 $01 $01
	inc  bc                                          ; $4cf3: $03
	ld   l, e                                        ; $4cf4: $6b
	sbc  e                                           ; $4cf5: $9b
	ld   l, e                                        ; $4cf6: $6b
	sbc  e                                           ; $4cf7: $9b
	ld   [bc], a                                     ; $4cf8: $02
	inc  l                                           ; $4cf9: $2c
	ld   e, e                                        ; $4cfa: $5b
	inc  bc                                          ; $4cfb: $03
	ld   h, l                                        ; $4cfc: $65
	ld   h, b                                        ; $4cfd: $60
	sub  [hl]                                        ; $4cfe: $96
	ld   d, h                                        ; $4cff: $54
	rst  $38                                         ; $4d00: $ff
	rst  $38                                         ; $4d01: $ff
	ld   bc, $0d04                                   ; $4d02: $01 $04 $0d
	db   $10                                         ; $4d05: $10
	dec  c                                           ; $4d06: $0d
	nop                                              ; $4d07: $00
	ld   a, [bc]                                     ; $4d08: $0a
	nop                                              ; $4d09: $00
	rrca                                             ; $4d0a: $0f
	inc  bc                                          ; $4d0b: $03
	rla                                              ; $4d0c: $17
	ld   bc, $ffff                                   ; $4d0d: $01 $ff $ff
	ld   a, [$6b0d]                                  ; $4d10: $fa $0d $6b
	ld   h, c                                        ; $4d13: $61
	ld   a, c                                        ; $4d14: $79
	inc  bc                                          ; $4d15: $03
	xor  c                                           ; $4d16: $a9
	ld   e, c                                        ; $4d17: $59
	ld   d, d                                        ; $4d18: $52
	sbc  c                                           ; $4d19: $99
	ld   a, h                                        ; $4d1a: $7c
	ld   sp, hl                                      ; $4d1b: $f9
	dec  c                                           ; $4d1c: $0d
	nop                                              ; $4d1d: $00
	ld   a, [bc]                                     ; $4d1e: $0a
	rrca                                             ; $4d1f: $0f
	nop                                              ; $4d20: $00
	ld   bc, $0101                                   ; $4d21: $01 $01 $01
	inc  bc                                          ; $4d24: $03
	ld   [bc], a                                     ; $4d25: $02
	and  c                                           ; $4d26: $a1
	ld   [hl], e                                     ; $4d27: $73
	ld   e, c                                        ; $4d28: $59
	sbc  d                                           ; $4d29: $9a
	ld   l, l                                        ; $4d2a: $6d
	ld   a, [$0401]                                  ; $4d2b: $fa $01 $04
	dec  c                                           ; $4d2e: $0d
	nop                                              ; $4d2f: $00
	ld   a, [bc]                                     ; $4d30: $0a
	add  hl, de                                      ; $4d31: $19
	dec  b                                           ; $4d32: $05
	inc  bc                                          ; $4d33: $03
	inc  bc                                          ; $4d34: $03
	db   $db                                         ; $4d35: $db
	ld   bc, $7614                                   ; $4d36: $01 $14 $76
	ld   h, a                                        ; $4d39: $67
	sbc  c                                           ; $4d3a: $99
	nop                                              ; $4d3b: $00
	nop                                              ; $4d3c: $00
	sub  b                                           ; $4d3d: $90
	ld   a, h                                        ; $4d3e: $7c
	adc  h                                           ; $4d3f: $8c
	ld   a, e                                        ; $4d40: $7b
	and  b                                           ; $4d41: $a0
	ld   h, a                                        ; $4d42: $67
	sbc  c                                           ; $4d43: $99
	nop                                              ; $4d44: $00
	ld   bc, $d503                                   ; $4d45: $01 $03 $d5
	ld   h, b                                        ; $4d48: $60
	inc  bc                                          ; $4d49: $03
	add  b                                           ; $4d4a: $80
	ld   h, a                                        ; $4d4b: $67
	nop                                              ; $4d4c: $00
	ld   [bc], a                                     ; $4d4d: $02
	rlca                                             ; $4d4e: $07
	ld   a, c                                        ; $4d4f: $79
	ld   bc, $0302                                   ; $4d50: $01 $02 $03
	ld   bc, $2000                                   ; $4d53: $01 $00 $20
	nop                                              ; $4d56: $00
	rlca                                             ; $4d57: $07
	dec  sp                                          ; $4d58: $3b
	ld   [bc], a                                     ; $4d59: $02
	ld   [bc], a                                     ; $4d5a: $02
	inc  bc                                          ; $4d5b: $03
	ld   bc, $2001                                   ; $4d5c: $01 $01 $20
	nop                                              ; $4d5f: $00
	rlca                                             ; $4d60: $07
	cp   l                                           ; $4d61: $bd
	ld   [bc], a                                     ; $4d62: $02
	ld   [bc], a                                     ; $4d63: $02
	inc  bc                                          ; $4d64: $03
	ld   bc, $2002                                   ; $4d65: $01 $02 $20
	nop                                              ; $4d68: $00
	ld   b, $0c                                      ; $4d69: $06 $0c
	inc  bc                                          ; $4d6b: $03
	rrca                                             ; $4d6c: $0f
	nop                                              ; $4d6d: $00
	ld   bc, $0101                                   ; $4d6e: $01 $01 $01
	inc  bc                                          ; $4d71: $03
	ld   h, c                                        ; $4d72: $61
	ld   h, c                                        ; $4d73: $61
	ld   a, l                                        ; $4d74: $7d
	inc  bc                                          ; $4d75: $03
	db   $db                                         ; $4d76: $db
	ld   bc, $7614                                   ; $4d77: $01 $14 $76
	rst  $38                                         ; $4d7a: $ff
	rst  $38                                         ; $4d7b: $ff
	ld   bc, $0d04                                   ; $4d7c: $01 $04 $0d
	nop                                              ; $4d7f: $00
	ld   a, [bc]                                     ; $4d80: $0a
	ld   bc, $9e50                                   ; $4d81: $01 $50 $9e
	ld   h, a                                        ; $4d84: $67
	adc  l                                           ; $4d85: $8d
	adc  h                                           ; $4d86: $8c
	ld   l, c                                        ; $4d87: $69
	and  c                                           ; $4d88: $a1
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	dec  c                                           ; $4d8b: $0d
	ld   [hl], a                                     ; $4d8c: $77
	ld   a, b                                        ; $4d8d: $78
	ld   l, l                                        ; $4d8e: $6d
	ld   e, c                                        ; $4d8f: $59
	inc  b                                           ; $4d90: $04
	ld   b, l                                        ; $4d91: $45
	ld   [hl], c                                     ; $4d92: $71
	ld   [hl], h                                     ; $4d93: $74
	sub  a                                           ; $4d94: $97
	ld   [hl], c                                     ; $4d95: $71
	ld   h, l                                        ; $4d96: $65
	sub  c                                           ; $4d97: $91
	sbc  c                                           ; $4d98: $99
	and  c                                           ; $4d99: $a1
	dec  c                                           ; $4d9a: $0d
	ld   [hl], l                                     ; $4d9b: $75
	ld   h, a                                        ; $4d9c: $67
	ld   a, e                                        ; $4d9d: $7b
	ld   sp, hl                                      ; $4d9e: $f9
	dec  c                                           ; $4d9f: $0d
	nop                                              ; $4da0: $00
	ld   a, [bc]                                     ; $4da1: $0a
	rrca                                             ; $4da2: $0f
	inc  bc                                          ; $4da3: $03
	rla                                              ; $4da4: $17
	ld   bc, $0008                                   ; $4da5: $01 $08 $00
	ld   e, l                                        ; $4da8: $5d
	and  c                                           ; $4da9: $a1
	ld   sp, hl                                      ; $4daa: $f9
	dec  c                                           ; $4dab: $0d
	rst  JumpTable                                         ; $4dac: $df
	db   $ec                                         ; $4dad: $ec
	and  e                                           ; $4dae: $a3
	sub  [hl]                                        ; $4daf: $96
	sbc  [hl]                                        ; $4db0: $9e
	ld   l, e                                        ; $4db1: $6b
	ld   h, c                                        ; $4db2: $61
	ld   [hl], l                                     ; $4db3: $75
	inc  b                                           ; $4db4: $04
	ld   c, c                                        ; $4db5: $49
	and  b                                           ; $4db6: $a0
	dec  c                                           ; $4db7: $0d
	ld   h, l                                        ; $4db8: $65
	ld   [hl], h                                     ; $4db9: $74
	ld   d, d                                        ; $4dba: $52
	sbc  c                                           ; $4dbb: $99
	ld   a, h                                        ; $4dbc: $7c
	ld   sp, hl                                      ; $4dbd: $f9
	dec  c                                           ; $4dbe: $0d
	nop                                              ; $4dbf: $00
	ld   a, [bc]                                     ; $4dc0: $0a
	rrca                                             ; $4dc1: $0f
	nop                                              ; $4dc2: $00
	ld   bc, $df01                                   ; $4dc3: $01 $01 $df
	db   $ec                                         ; $4dc6: $ec
	and  e                                           ; $4dc7: $a3
	ld   h, e                                        ; $4dc8: $63
	and  c                                           ; $4dc9: $a1
	ld   [hl], l                                     ; $4dca: $75
	ld   h, l                                        ; $4dcb: $65
	ld   l, l                                        ; $4dcc: $6d
	ld   e, c                                        ; $4dcd: $59
	rst  $38                                         ; $4dce: $ff
	rst  $38                                         ; $4dcf: $ff
	dec  c                                           ; $4dd0: $0d
	ld   h, a                                        ; $4dd1: $67
	adc  l                                           ; $4dd2: $8d
	adc  h                                           ; $4dd3: $8c
	ld   l, c                                        ; $4dd4: $69
	and  c                                           ; $4dd5: $a1
	sbc  [hl]                                        ; $4dd6: $9e
	inc  bc                                          ; $4dd7: $03
	sub  h                                           ; $4dd8: $94
	inc  b                                           ; $4dd9: $04
	sbc  [hl]                                        ; $4dda: $9e
	sub  b                                           ; $4ddb: $90
	cp   b                                           ; $4ddc: $b8
	push hl                                          ; $4ddd: $e5
	pop  af                                          ; $4dde: $f1
	ei                                               ; $4ddf: $fb
	and  b                                           ; $4de0: $a0
	dec  c                                           ; $4de1: $0d
	ld   d, b                                        ; $4de2: $50
	add  c                                           ; $4de3: $81
	sub  [hl]                                        ; $4de4: $96
	ld   d, h                                        ; $4de5: $54
	halt                                             ; $4de6: $76
	dec  b                                           ; $4de7: $05
	pop  de                                          ; $4de8: $d1
	ld   [hl], c                                     ; $4de9: $71
	ld   [hl], h                                     ; $4dea: $74
	rst  $38                                         ; $4deb: $ff
	rst  $38                                         ; $4dec: $ff
	dec  c                                           ; $4ded: $0d
	nop                                              ; $4dee: $00
	ld   a, [bc]                                     ; $4def: $0a
	rrca                                             ; $4df0: $0f
	inc  bc                                          ; $4df1: $03
	db   $10                                         ; $4df2: $10
	ld   bc, $546b                                   ; $4df3: $01 $6b $54
	rst  $38                                         ; $4df6: $ff
	rst  $38                                         ; $4df7: $ff
	ld   a, b                                        ; $4df8: $78
	sub  a                                           ; $4df9: $97
	inc  bc                                          ; $4dfa: $03
	ld   a, [hl]                                     ; $4dfb: $7e
	sbc  l                                           ; $4dfc: $9d
	ld   [hl], c                                     ; $4dfd: $71
	ld   l, l                                        ; $4dfe: $6d
	sub  a                                           ; $4dff: $97
	dec  c                                           ; $4e00: $0d
	inc  bc                                          ; $4e01: $03
	and  l                                           ; $4e02: $a5
	and  b                                           ; $4e03: $a0
	ld   e, c                                        ; $4e04: $59
	ld   e, a                                        ; $4e05: $5f
	sbc  c                                           ; $4e06: $99
	ld   e, c                                        ; $4e07: $59
	sub  a                                           ; $4e08: $97
	sbc  [hl]                                        ; $4e09: $9e
	dec  c                                           ; $4e0a: $0d
	inc  b                                           ; $4e0b: $04
	sub  l                                           ; $4e0c: $95
	ld   [bc], a                                     ; $4e0d: $02
	ld   hl, $9079                                   ; $4e0e: $21 $79 $90
	ld   [hl], a                                     ; $4e11: $77
	ld   [hl], c                                     ; $4e12: $71
	ld   [hl], h                                     ; $4e13: $74
	ld   a, b                                        ; $4e14: $78
	ld   h, e                                        ; $4e15: $63
	ld   d, d                                        ; $4e16: $52
	sbc  a                                           ; $4e17: $9f
	dec  c                                           ; $4e18: $0d
	nop                                              ; $4e19: $00
	ld   a, [bc]                                     ; $4e1a: $0a
	rrca                                             ; $4e1b: $0f
	nop                                              ; $4e1c: $00
	ld   bc, $0101                                   ; $4e1d: $01 $01 $01
	inc  bc                                          ; $4e20: $03
	inc  bc                                          ; $4e21: $03
	ld   e, e                                        ; $4e22: $5b
	ld   e, c                                        ; $4e23: $59
	ld   [hl], c                                     ; $4e24: $71
	ld   l, l                                        ; $4e25: $6d
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	ld   bc, $0d04                                   ; $4e28: $01 $04 $0d
	nop                                              ; $4e2b: $00
	ld   a, [bc]                                     ; $4e2c: $0a
	nop                                              ; $4e2d: $00
	rrca                                             ; $4e2e: $0f
	nop                                              ; $4e2f: $00
	ld   bc, $0101                                   ; $4e30: $01 $01 $01
	inc  bc                                          ; $4e33: $03
	ld   h, c                                        ; $4e34: $61
	ld   d, h                                        ; $4e35: $54
	ld   a, b                                        ; $4e36: $78
	ld   [hl], c                                     ; $4e37: $71
	ld   l, l                                        ; $4e38: $6d
	sub  a                                           ; $4e39: $97
	rst  $38                                         ; $4e3a: $ff
	rst  $38                                         ; $4e3b: $ff
	ld   bc, $0d04                                   ; $4e3c: $01 $04 $0d
	nop                                              ; $4e3f: $00
	ld   a, [bc]                                     ; $4e40: $0a
	ld   bc, $fb58                                   ; $4e41: $01 $58 $fb
	adc  c                                           ; $4e44: $89
	adc  c                                           ; $4e45: $89
	adc  c                                           ; $4e46: $89
	adc  c                                           ; $4e47: $89
	adc  c                                           ; $4e48: $89
	ld   a, [$df0d]                                  ; $4e49: $fa $0d $df
	db   $ec                                         ; $4e4c: $ec
	and  e                                           ; $4e4d: $a3
	ld   h, e                                        ; $4e4e: $63
	and  c                                           ; $4e4f: $a1
	sbc  [hl]                                        ; $4e50: $9e
	sbc  l                                           ; $4e51: $9d
	ld   l, l                                        ; $4e52: $6d
	ld   e, l                                        ; $4e53: $5d
	ld   h, l                                        ; $4e54: $65
	ld   [hl], l                                     ; $4e55: $75
	ld   h, a                                        ; $4e56: $67
	sbc  l                                           ; $4e57: $9d
	sbc  a                                           ; $4e58: $9f
	dec  c                                           ; $4e59: $0d
	nop                                              ; $4e5a: $00
	ld   a, [bc]                                     ; $4e5b: $0a
	rrca                                             ; $4e5c: $0f
	inc  bc                                          ; $4e5d: $03
	inc  de                                          ; $4e5e: $13
	ld   bc, $a178                                   ; $4e5f: $01 $78 $a1
	ld   l, [hl]                                     ; $4e62: $6e
	sbc  [hl]                                        ; $4e63: $9e
	ld   h, a                                        ; $4e64: $67
	adc  l                                           ; $4e65: $8d
	sbc  d                                           ; $4e66: $9a
	ld   l, [hl]                                     ; $4e67: $6e
	ld   [hl], c                                     ; $4e68: $71
	ld   l, l                                        ; $4e69: $6d
	ld   a, h                                        ; $4e6a: $7c
	rst  $38                                         ; $4e6b: $ff
	rst  $38                                         ; $4e6c: $ff
	dec  c                                           ; $4e6d: $0d
	nop                                              ; $4e6e: $00
	ld   a, [bc]                                     ; $4e6f: $0a
	rrca                                             ; $4e70: $0f
	nop                                              ; $4e71: $00
	ld   bc, $0101                                   ; $4e72: $01 $01 $01
	inc  bc                                          ; $4e75: $03
	inc  bc                                          ; $4e76: $03
	ld   e, e                                        ; $4e77: $5b
	ld   e, c                                        ; $4e78: $59
	ld   [hl], c                                     ; $4e79: $71
	ld   l, l                                        ; $4e7a: $6d
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	ld   bc, $0d04                                   ; $4e7d: $01 $04 $0d
	nop                                              ; $4e80: $00
	ld   a, [bc]                                     ; $4e81: $0a
	rrca                                             ; $4e82: $0f
	inc  bc                                          ; $4e83: $03
	ld   d, $01                                      ; $4e84: $16 $01
	rst  $38                                         ; $4e86: $ff
	rst  $38                                         ; $4e87: $ff
	ld   a, b                                        ; $4e88: $78
	and  c                                           ; $4e89: $a1
	ld   [hl], h                                     ; $4e8a: $74
	sbc  [hl]                                        ; $4e8b: $9e
	ld   l, e                                        ; $4e8c: $6b
	and  c                                           ; $4e8d: $a1
	ld   a, b                                        ; $4e8e: $78
	inc  bc                                          ; $4e8f: $03
	and  l                                           ; $4e90: $a5
	ld   a, h                                        ; $4e91: $7c
	dec  c                                           ; $4e92: $0d
	ld   h, a                                        ; $4e93: $67
	adc  l                                           ; $4e94: $8d
	sbc  d                                           ; $4e95: $9a
	ld   e, d                                        ; $4e96: $5a
	ld   d, d                                        ; $4e97: $52
	sbc  c                                           ; $4e98: $99
	sbc  l                                           ; $4e99: $9d
	ld   e, a                                        ; $4e9a: $5f
	dec  c                                           ; $4e9b: $0d
	ld   a, b                                        ; $4e9c: $78
	ld   d, d                                        ; $4e9d: $52
	ld   [hl], l                                     ; $4e9e: $75
	ld   h, l                                        ; $4e9f: $65
	sub  l                                           ; $4ea0: $95
	ld   a, [$000d]                                  ; $4ea1: $fa $0d $00
	ld   a, [bc]                                     ; $4ea4: $0a
	dec  c                                           ; $4ea5: $0d
	nop                                              ; $4ea6: $00
	nop                                              ; $4ea7: $00
	rrca                                             ; $4ea8: $0f
	nop                                              ; $4ea9: $00
	ld   bc, $020c                                   ; $4eaa: $01 $0c $02
	ld   b, $14                                      ; $4ead: $06 $14
	inc  bc                                          ; $4eaf: $03
	rrca                                             ; $4eb0: $0f
	nop                                              ; $4eb1: $00
	ld   bc, $0101                                   ; $4eb2: $01 $01 $01
	inc  bc                                          ; $4eb5: $03
	ld   h, c                                        ; $4eb6: $61
	ld   h, c                                        ; $4eb7: $61
	ld   a, l                                        ; $4eb8: $7d
	inc  bc                                          ; $4eb9: $03
	push de                                          ; $4eba: $d5
	ld   h, b                                        ; $4ebb: $60
	sub  [hl]                                        ; $4ebc: $96
	ld   d, h                                        ; $4ebd: $54
	rst  $38                                         ; $4ebe: $ff
	rst  $38                                         ; $4ebf: $ff
	ld   bc, $0d04                                   ; $4ec0: $01 $04 $0d
	nop                                              ; $4ec3: $00
	ld   a, [bc]                                     ; $4ec4: $0a
	ld   bc, $fa50                                   ; $4ec5: $01 $50 $fa
	dec  c                                           ; $4ec8: $0d
	ld   a, b                                        ; $4ec9: $78
	ld   l, d                                        ; $4eca: $6a
	ld   h, c                                        ; $4ecb: $61
	and  c                                           ; $4ecc: $a1
	ld   a, b                                        ; $4ecd: $78
	inc  bc                                          ; $4ece: $03
	ld   c, e                                        ; $4ecf: $4b
	ld   a, c                                        ; $4ed0: $79
	cp   h                                           ; $4ed1: $bc
	call nz, $f5b2                                   ; $4ed2: $c4 $b2 $f5
	ld   e, d                                        ; $4ed5: $5a
	ld   sp, hl                                      ; $4ed6: $f9
	dec  c                                           ; $4ed7: $0d
	nop                                              ; $4ed8: $00
	ld   a, [bc]                                     ; $4ed9: $0a
	ld   bc, $9d54                                   ; $4eda: $01 $54 $9d
	ld   [hl], c                                     ; $4edd: $71
	ld   a, [$000d]                                  ; $4ede: $fa $0d $00
	ld   a, [bc]                                     ; $4ee1: $0a
	inc  c                                           ; $4ee2: $0c
	rlca                                             ; $4ee3: $07
	inc  d                                           ; $4ee4: $14
	ld   [$0101], sp                                 ; $4ee5: $08 $01 $01
	ld   d, b                                        ; $4ee8: $50
	ld   l, l                                        ; $4ee9: $6d
	ld   l, l                                        ; $4eea: $6d
	ld   l, l                                        ; $4eeb: $6d
	ld   l, l                                        ; $4eec: $6d
	ld   l, l                                        ; $4eed: $6d
	ld   l, l                                        ; $4eee: $6d
	rst  $38                                         ; $4eef: $ff
	rst  $38                                         ; $4ef0: $ff
	dec  c                                           ; $4ef1: $0d
	nop                                              ; $4ef2: $00
	ld   a, [bc]                                     ; $4ef3: $0a
	dec  c                                           ; $4ef4: $0d
	nop                                              ; $4ef5: $00
	nop                                              ; $4ef6: $00
	rrca                                             ; $4ef7: $0f
	nop                                              ; $4ef8: $00
	ld   bc, $020c                                   ; $4ef9: $01 $0c $02
	ld   b, $14                                      ; $4efc: $06 $14
	inc  bc                                          ; $4efe: $03
	dec  c                                           ; $4eff: $0d
	nop                                              ; $4f00: $00
	nop                                              ; $4f01: $00
	rrca                                             ; $4f02: $0f
	nop                                              ; $4f03: $00
	ld   bc, $020c                                   ; $4f04: $01 $0c $02
	ld   c, $67                                      ; $4f07: $0e $67
	inc  e                                           ; $4f09: $1c
	inc  bc                                          ; $4f0a: $03
	ld   b, $06                                      ; $4f0b: $06 $06
	dec  e                                           ; $4f0d: $1d
	ld   b, b                                        ; $4f0e: $40
	inc  de                                          ; $4f0f: $13
	inc  bc                                          ; $4f10: $03
	inc  de                                          ; $4f11: $13
	ld   bc, $2903                                   ; $4f12: $01 $03 $29
	nop                                              ; $4f15: $00
	ld   bc, $0008                                   ; $4f16: $01 $08 $00
	ld   e, l                                        ; $4f19: $5d
	and  c                                           ; $4f1a: $a1
	ld   a, [$7c0d]                                  ; $4f1b: $fa $0d $7c
	ld   l, h                                        ; $4f1e: $6c
	ld   e, e                                        ; $4f1f: $5b
	ld   l, [hl]                                     ; $4f20: $6e
	ld   a, b                                        ; $4f21: $78
	and  c                                           ; $4f22: $a1
	ld   [hl], h                                     ; $4f23: $74
	rst  $38                                         ; $4f24: $ff
	rst  $38                                         ; $4f25: $ff
	dec  c                                           ; $4f26: $0d
	sub  h                                           ; $4f27: $94
	sbc  c                                           ; $4f28: $99
	ld   h, e                                        ; $4f29: $63
	sbc  d                                           ; $4f2a: $9a
	sbc  c                                           ; $4f2b: $99
	halt                                             ; $4f2c: $76
	dec  b                                           ; $4f2d: $05
	pop  de                                          ; $4f2e: $d1
	ld   [hl], c                                     ; $4f2f: $71
	ld   [hl], h                                     ; $4f30: $74
	sbc  c                                           ; $4f31: $99
	ld   a, h                                        ; $4f32: $7c
	ld   a, [$000d]                                  ; $4f33: $fa $0d $00
	ld   a, [bc]                                     ; $4f36: $0a
	dec  b                                           ; $4f37: $05
	ld   b, b                                        ; $4f38: $40
	ld   c, d                                        ; $4f39: $4a
	ld   [bc], a                                     ; $4f3a: $02
	nop                                              ; $4f3b: $00
	nop                                              ; $4f3c: $00
	ld   bc, $6903                                   ; $4f3d: $01 $03 $69
	inc  bc                                          ; $4f40: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f41: $cf
	ld   a, e                                        ; $4f42: $7b
	ld   a, [$0dfa]                                  ; $4f43: $fa $fa $0d
	nop                                              ; $4f46: $00
	ld   a, [bc]                                     ; $4f47: $0a
	dec  b                                           ; $4f48: $05
	ld   b, b                                        ; $4f49: $40
	ld   d, b                                        ; $4f4a: $50
	ld   bc, $0002                                   ; $4f4b: $01 $02 $00
	dec  c                                           ; $4f4e: $0d
	nop                                              ; $4f4f: $00
	nop                                              ; $4f50: $00
	rrca                                             ; $4f51: $0f
	nop                                              ; $4f52: $00
	ld   bc, $1e09                                   ; $4f53: $01 $09 $1e
	rlca                                             ; $4f56: $07
	ld   [hl], h                                     ; $4f57: $74
	inc  bc                                          ; $4f58: $03
	inc  b                                           ; $4f59: $04
	add  b                                           ; $4f5a: $80
	ld   b, $01                                      ; $4f5b: $06 $01
	rst  $38                                         ; $4f5d: $ff
	jr   nz, jr_069_4f60                             ; $4f5e: $20 $00

jr_069_4f60:
	dec  b                                           ; $4f60: $05
	add  b                                           ; $4f61: $80
	ld   b, $01                                      ; $4f62: $06 $01
	ld   bc, $0000                                   ; $4f64: $01 $00 $00
	inc  c                                           ; $4f67: $0c
	ld   [bc], a                                     ; $4f68: $02
	ld   c, $02                                      ; $4f69: $0e $02
	rrca                                             ; $4f6b: $0f
	nop                                              ; $4f6c: $00
	ld   bc, $5001                                   ; $4f6d: $01 $01 $50
	rst  $38                                         ; $4f70: $ff
	rst  $38                                         ; $4f71: $ff
	sbc  [hl]                                        ; $4f72: $9e
	sub  d                                           ; $4f73: $92
	ld   a, [hl]                                     ; $4f74: $7e
	ld   d, d                                        ; $4f75: $52
	sub  [hl]                                        ; $4f76: $96
	ld   a, b                                        ; $4f77: $78
	db   $fc                                         ; $4f78: $fc
	rst  $38                                         ; $4f79: $ff
	rst  $38                                         ; $4f7a: $ff
	dec  c                                           ; $4f7b: $0d
	inc  bc                                          ; $4f7c: $03
	add  b                                           ; $4f7d: $80
	dec  b                                           ; $4f7e: $05
	db   $10                                         ; $4f7f: $10
	inc  bc                                          ; $4f80: $03
	ld   [hl], l                                     ; $4f81: $75
	halt                                             ; $4f82: $76
	ld   a, l                                        ; $4f83: $7d
	ld   d, d                                        ; $4f84: $52
	ld   d, [hl]                                     ; $4f85: $56
	rst  $38                                         ; $4f86: $ff
	rst  $38                                         ; $4f87: $ff
	rst  $38                                         ; $4f88: $ff
	rst  $38                                         ; $4f89: $ff
	dec  c                                           ; $4f8a: $0d
	rst  $38                                         ; $4f8b: $ff
	rst  $38                                         ; $4f8c: $ff
	rst  $38                                         ; $4f8d: $ff
	rst  $38                                         ; $4f8e: $ff
	rst  $38                                         ; $4f8f: $ff
	rst  $38                                         ; $4f90: $ff
	rst  $38                                         ; $4f91: $ff
	rst  $38                                         ; $4f92: $ff
	rst  $38                                         ; $4f93: $ff
	rst  $38                                         ; $4f94: $ff
	dec  c                                           ; $4f95: $0d
	nop                                              ; $4f96: $00
	ld   a, [bc]                                     ; $4f97: $0a
	inc  d                                           ; $4f98: $14
	ld   b, $01                                      ; $4f99: $06 $01
	rrca                                             ; $4f9b: $0f
	dec  bc                                          ; $4f9c: $0b
	ld   [bc], a                                     ; $4f9d: $02
	ld   bc, $0008                                   ; $4f9e: $01 $08 $00
	ld   e, l                                        ; $4fa1: $5d
	and  c                                           ; $4fa2: $a1
	sbc  a                                           ; $4fa3: $9f
	dec  c                                           ; $4fa4: $0d
	ld   [bc], a                                     ; $4fa5: $02
	and  l                                           ; $4fa6: $a5
	ld   h, a                                        ; $4fa7: $67
	ld   e, [hl]                                     ; $4fa8: $5e
	sbc  [hl]                                        ; $4fa9: $9e
	inc  bc                                          ; $4faa: $03
	add  l                                           ; $4fab: $85
	inc  b                                           ; $4fac: $04
	xor  e                                           ; $4fad: $ab
	inc  bc                                          ; $4fae: $03
	add  d                                           ; $4faf: $82
	inc  bc                                          ; $4fb0: $03
	ld   c, l                                        ; $4fb1: $4d
	ld   a, c                                        ; $4fb2: $79
	dec  b                                           ; $4fb3: $05
	db   $10                                         ; $4fb4: $10
	ld   a, b                                        ; $4fb5: $78
	ld   h, e                                        ; $4fb6: $63
	ld   d, d                                        ; $4fb7: $52
	sbc  a                                           ; $4fb8: $9f
	dec  c                                           ; $4fb9: $0d
	nop                                              ; $4fba: $00
	ld   a, [bc]                                     ; $4fbb: $0a
	rrca                                             ; $4fbc: $0f
	nop                                              ; $4fbd: $00
	ld   bc, $020c                                   ; $4fbe: $01 $0c $02
	add  hl, bc                                      ; $4fc1: $09
	ld   e, $01                                      ; $4fc2: $1e $01
	adc  h                                           ; $4fc4: $8c
	sbc  [hl]                                        ; $4fc5: $9e
	adc  h                                           ; $4fc6: $8c
	ld   h, e                                        ; $4fc7: $63
	ld   e, c                                        ; $4fc8: $59
	rst  $38                                         ; $4fc9: $ff
	rst  $38                                         ; $4fca: $ff
	dec  c                                           ; $4fcb: $0d
	nop                                              ; $4fcc: $00
	ld   a, [bc]                                     ; $4fcd: $0a
	ld   c, $0e                                      ; $4fce: $0e $0e
	inc  e                                           ; $4fd0: $1c
	ld   a, [bc]                                     ; $4fd1: $0a
	inc  b                                           ; $4fd2: $04
	inc  b                                           ; $4fd3: $04
	ld   bc, $5258                                   ; $4fd4: $01 $58 $52
	sbc  [hl]                                        ; $4fd7: $9e
	ld   [$9f00], sp                                 ; $4fd8: $08 $00 $9f
	dec  c                                           ; $4fdb: $0d
	ld   e, b                                        ; $4fdc: $58
	adc  a                                           ; $4fdd: $8f
	ei                                               ; $4fde: $fb
	cp   b                                           ; $4fdf: $b8
	push hl                                          ; $4fe0: $e5
	pop  af                                          ; $4fe1: $f1
	ei                                               ; $4fe2: $fb
	ld   a, h                                        ; $4fe3: $7c
	ld   l, h                                        ; $4fe4: $6c
	ld   d, d                                        ; $4fe5: $52
	ld   [hl], h                                     ; $4fe6: $74
	ld   l, l                                        ; $4fe7: $6d
	and  c                                           ; $4fe8: $a1
	dec  c                                           ; $4fe9: $0d
	ld   l, [hl]                                     ; $4fea: $6e
	ld   [hl], c                                     ; $4feb: $71
	ld   [hl], h                                     ; $4fec: $74
	ld   a, b                                        ; $4fed: $78
	sbc  a                                           ; $4fee: $9f
	dec  c                                           ; $4fef: $0d
	nop                                              ; $4ff0: $00
	ld   a, [bc]                                     ; $4ff1: $0a
	ld   bc, $a102                                   ; $4ff2: $01 $02 $a1
	inc  bc                                          ; $4ff5: $03
	and  b                                           ; $4ff6: $a0
	ld   l, a                                        ; $4ff7: $6f
	ld   a, l                                        ; $4ff8: $7d
	sbc  [hl]                                        ; $4ff9: $9e
	sbc  l                                           ; $4ffa: $9d
	ld   e, c                                        ; $4ffb: $59
	sub  a                                           ; $4ffc: $97
	and  c                                           ; $4ffd: $a1
	ld   [hl], l                                     ; $4ffe: $75
	sub  b                                           ; $4fff: $90
	ld   a, b                                        ; $5000: $78
	ld   d, d                                        ; $5001: $52
	dec  c                                           ; $5002: $0d
	ld   e, d                                        ; $5003: $5a
	sbc  [hl]                                        ; $5004: $9e
	inc  de                                          ; $5005: $13
	ld   [bc], a                                     ; $5006: $02
	sub  e                                           ; $5007: $93
	sub  b                                           ; $5008: $90
	sub  d                                           ; $5009: $92
	ld   [hl], c                                     ; $500a: $71
	ld   l, a                                        ; $500b: $6f
	sub  c                                           ; $500c: $91
	ei                                               ; $500d: $fb
	dec  c                                           ; $500e: $0d
	adc  h                                           ; $500f: $8c
	ld   l, b                                        ; $5010: $68
	ld   d, d                                        ; $5011: $52
	ld   l, [hl]                                     ; $5012: $6e
	sbc  e                                           ; $5013: $9b
	sbc  a                                           ; $5014: $9f
	dec  c                                           ; $5015: $0d
	nop                                              ; $5016: $00
	ld   a, [bc]                                     ; $5017: $0a
	ld   bc, $7e59                                   ; $5018: $01 $59 $7e
	ld   [hl], c                                     ; $501b: $71
	ld   [hl], h                                     ; $501c: $74
	sub  d                                           ; $501d: $92
	sbc  b                                           ; $501e: $98
	ld   l, l                                        ; $501f: $6d
	ld   d, d                                        ; $5020: $52
	ld   e, d                                        ; $5021: $5a
	dec  c                                           ; $5022: $0d
	ld   [bc], a                                     ; $5023: $02
	sbc  b                                           ; $5024: $98
	inc  bc                                          ; $5025: $03
	nop                                              ; $5026: $00
	ld   a, h                                        ; $5027: $7c
	inc  bc                                          ; $5028: $03
	ld   l, e                                        ; $5029: $6b
	inc  bc                                          ; $502a: $03
	ld   c, a                                        ; $502b: $4f
	sbc  [hl]                                        ; $502c: $9e
	ld   l, a                                        ; $502d: $6f
	sub  l                                           ; $502e: $95
	ld   [hl], c                                     ; $502f: $71
	halt                                             ; $5030: $76
	ldh  [c], a                                      ; $5031: $e2
	db   $ec                                         ; $5032: $ec
	dec  c                                           ; $5033: $0d
	ld   a, b                                        ; $5034: $78
	and  c                                           ; $5035: $a1
	ld   [hl], l                                     ; $5036: $75
	ld   a, b                                        ; $5037: $78
	sbc  a                                           ; $5038: $9f
	dec  c                                           ; $5039: $0d
	nop                                              ; $503a: $00
	ld   a, [bc]                                     ; $503b: $0a
	inc  e                                           ; $503c: $1c
	ld   a, [bc]                                     ; $503d: $0a
	ld   [bc], a                                     ; $503e: $02
	ld   [bc], a                                     ; $503f: $02
	ld   bc, $9d59                                   ; $5040: $01 $59 $9d
	ld   d, d                                        ; $5043: $52
	ld   l, e                                        ; $5044: $6b
	ld   d, h                                        ; $5045: $54
	ld   l, [hl]                                     ; $5046: $6e
	ld   e, d                                        ; $5047: $5a
	sbc  [hl]                                        ; $5048: $9e
	dec  c                                           ; $5049: $0d
	inc  b                                           ; $504a: $04
	dec  c                                           ; $504b: $0d
	ld   [bc], a                                     ; $504c: $02
	sub  [hl]                                        ; $504d: $96
	inc  b                                           ; $504e: $04
	ld   b, l                                        ; $504f: $45
	inc  b                                           ; $5050: $04
	ld   a, [bc]                                     ; $5051: $0a
	ld   a, l                                        ; $5052: $7d
	ld   h, c                                        ; $5053: $61
	ld   h, c                                        ; $5054: $61
	ld   [hl], l                                     ; $5055: $75
	inc  bc                                          ; $5056: $03
	ld   a, [hl]                                     ; $5057: $7e
	dec  b                                           ; $5058: $05
	nop                                              ; $5059: $00

Jump_069_505a:
	ld   l, [hl]                                     ; $505a: $6e
	ld   a, [$000d]                                  ; $505b: $fa $0d $00
	ld   a, [bc]                                     ; $505e: $0a
	ld   bc, $a102                                   ; $505f: $01 $02 $a1
	inc  bc                                          ; $5062: $03
	and  b                                           ; $5063: $a0
	ld   l, a                                        ; $5064: $6f
	and  b                                           ; $5065: $a0
	inc  b                                           ; $5066: $04
	ld   b, l                                        ; $5067: $45
	sbc  d                                           ; $5068: $9a
	dec  b                                           ; $5069: $05
	scf                                              ; $506a: $37
	ld   d, [hl]                                     ; $506b: $56
	ld   [hl], h                                     ; $506c: $74
	dec  c                                           ; $506d: $0d
	inc  bc                                          ; $506e: $03
	add  b                                           ; $506f: $80
	inc  bc                                          ; $5070: $03
	jp   c, Jump_069_7465                            ; $5071: $da $65 $74

	ld   e, e                                        ; $5074: $5b
	ld   a, b                                        ; $5075: $78
	ld   a, [$000d]                                  ; $5076: $fa $0d $00
	ld   a, [bc]                                     ; $5079: $0a
	ld   h, $00                                      ; $507a: $26 $00
	rrca                                             ; $507c: $0f
	nop                                              ; $507d: $00
	ld   bc, $050d                                   ; $507e: $01 $0d $05
	nop                                              ; $5081: $00
	ld   [bc], a                                     ; $5082: $02
	ld   bc, $cf02                                   ; $5083: $01 $02 $cf
	dec  b                                           ; $5086: $05
	ld   a, [de]                                     ; $5087: $1a
	ld   h, e                                        ; $5088: $63
	and  c                                           ; $5089: $a1
	sbc  [hl]                                        ; $508a: $9e
	dec  c                                           ; $508b: $0d
	inc  b                                           ; $508c: $04
	rst  $28                                         ; $508d: $ef
	ld   e, b                                        ; $508e: $58
	ld   l, e                                        ; $508f: $6b
	ld   e, l                                        ; $5090: $5d
	adc  h                                           ; $5091: $8c
	ld   [hl], l                                     ; $5092: $75
	ld   h, d                                        ; $5093: $62
	ld   [bc], a                                     ; $5094: $02
	sub  h                                           ; $5095: $94
	dec  b                                           ; $5096: $05
	rrca                                             ; $5097: $0f
	ld   h, e                                        ; $5098: $63
	adc  h                                           ; $5099: $8c
	ld   [hl], l                                     ; $509a: $75
	ld   h, a                                        ; $509b: $67
	sbc  a                                           ; $509c: $9f
	dec  c                                           ; $509d: $0d
	nop                                              ; $509e: $00
	ld   a, [bc]                                     ; $509f: $0a
	inc  e                                           ; $50a0: $1c
	dec  b                                           ; $50a1: $05
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	ld   bc, $9e50                                   ; $50a4: $01 $50 $9e
	ld   [$7d00], sp                                 ; $50a7: $08 $00 $7d
	and  c                                           ; $50aa: $a1
	sbc  a                                           ; $50ab: $9f
	dec  c                                           ; $50ac: $0d
	nop                                              ; $50ad: $00
	ld   a, [bc]                                     ; $50ae: $0a
	ld   bc, $546b                                   ; $50af: $01 $6b $54
	sub  d                                           ; $50b2: $92
	ld   a, [$0810]                                  ; $50b3: $fa $10 $08
	nop                                              ; $50b6: $00
	ld   a, l                                        ; $50b7: $7d
	and  c                                           ; $50b8: $a1
	dec  c                                           ; $50b9: $0d
	ld   l, a                                        ; $50ba: $6f
	sub  l                                           ; $50bb: $95
	ld   h, c                                        ; $50bc: $61
	ld   [hl], c                                     ; $50bd: $71
	halt                                             ; $50be: $76
	inc  bc                                          ; $50bf: $03
	ret  c                                           ; $50c0: $d8

	ld   a, h                                        ; $50c1: $7c
	ld   l, l                                        ; $50c2: $6d
	ld   d, d                                        ; $50c3: $52
	ld   l, e                                        ; $50c4: $6b
	ld   d, h                                        ; $50c5: $54
	dec  c                                           ; $50c6: $0d
	ld   h, l                                        ; $50c7: $65
	ld   [hl], h                                     ; $50c8: $74
	ld   d, d                                        ; $50c9: $52
	ld   e, a                                        ; $50ca: $5f
	add  [hl]                                        ; $50cb: $86
	and  c                                           ; $50cc: $a1
	ld   sp, hl                                      ; $50cd: $f9
	dec  c                                           ; $50ce: $0d
	nop                                              ; $50cf: $00
	ld   a, [bc]                                     ; $50d0: $0a
	add  hl, de                                      ; $50d1: $19
	dec  b                                           ; $50d2: $05
	ld   [bc], a                                     ; $50d3: $02
	ld   h, a                                        ; $50d4: $67
	sbc  c                                           ; $50d5: $99
	nop                                              ; $50d6: $00
	nop                                              ; $50d7: $00
	ld   h, l                                        ; $50d8: $65
	ld   a, b                                        ; $50d9: $78
	ld   d, d                                        ; $50da: $52
	nop                                              ; $50db: $00
	ld   bc, $7607                                   ; $50dc: $01 $07 $76
	nop                                              ; $50df: $00
	ld   [bc], a                                     ; $50e0: $02
	inc  bc                                          ; $50e1: $03
	ld   bc, $2000                                   ; $50e2: $01 $00 $20
	nop                                              ; $50e5: $00
	rlca                                             ; $50e6: $07
	add  l                                           ; $50e7: $85
	nop                                              ; $50e8: $00
	ld   [bc], a                                     ; $50e9: $02
	inc  bc                                          ; $50ea: $03
	ld   bc, $2001                                   ; $50eb: $01 $01 $20
	nop                                              ; $50ee: $00
	ld   b, $76                                      ; $50ef: $06 $76
	nop                                              ; $50f1: $00
	rrca                                             ; $50f2: $0f
	nop                                              ; $50f3: $00
	ld   bc, $9201                                   ; $50f4: $01 $01 $92
	sbc  b                                           ; $50f7: $98
	adc  h                                           ; $50f8: $8c
	ld   h, a                                        ; $50f9: $67
	sbc  a                                           ; $50fa: $9f
	dec  c                                           ; $50fb: $0d
	nop                                              ; $50fc: $00
	ld   a, [bc]                                     ; $50fd: $0a
	ld   b, $d1                                      ; $50fe: $06 $d1
	nop                                              ; $5100: $00
	rrca                                             ; $5101: $0f
	nop                                              ; $5102: $00
	ld   bc, $6701                                   ; $5103: $01 $01 $67
	adc  l                                           ; $5106: $8d
	adc  h                                           ; $5107: $8c
	ld   l, c                                        ; $5108: $69
	and  c                                           ; $5109: $a1
	sbc  [hl]                                        ; $510a: $9e
	ld   [bc], a                                     ; $510b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $510c: $cf
	dec  b                                           ; $510d: $05
	ld   a, [de]                                     ; $510e: $1a
	ld   h, e                                        ; $510f: $63
	and  c                                           ; $5110: $a1
	sbc  a                                           ; $5111: $9f
	dec  c                                           ; $5112: $0d
	ld   [bc], a                                     ; $5113: $02
	sub  l                                           ; $5114: $95
	ld   [bc], a                                     ; $5115: $02
	sub  e                                           ; $5116: $93
	sbc  b                                           ; $5117: $98
	ld   a, h                                        ; $5118: $7c
	inc  bc                                          ; $5119: $03
	ld   l, c                                        ; $511a: $69
	inc  b                                           ; $511b: $04
	dec  bc                                          ; $511c: $0b
	ld   [hl], l                                     ; $511d: $75
	ld   h, a                                        ; $511e: $67
	ld   a, h                                        ; $511f: $7c
	ld   [hl], l                                     ; $5120: $75
	sbc  a                                           ; $5121: $9f
	dec  c                                           ; $5122: $0d
	nop                                              ; $5123: $00
	ld   a, [bc]                                     ; $5124: $0a
	inc  e                                           ; $5125: $1c
	dec  b                                           ; $5126: $05
	ld   [bc], a                                     ; $5127: $02
	ld   [bc], a                                     ; $5128: $02
	ld   bc, $546b                                   ; $5129: $01 $6b $54
	ld   e, c                                        ; $512c: $59
	sbc  [hl]                                        ; $512d: $9e
	ld   a, b                                        ; $512e: $78
	sub  a                                           ; $512f: $97
	ld   h, l                                        ; $5130: $65
	sub  c                                           ; $5131: $91
	ei                                               ; $5132: $fb
	ld   a, b                                        ; $5133: $78
	ld   d, d                                        ; $5134: $52
	ld   a, b                                        ; $5135: $78
	sbc  a                                           ; $5136: $9f
	dec  c                                           ; $5137: $0d
	nop                                              ; $5138: $00
	ld   a, [bc]                                     ; $5139: $0a
	rrca                                             ; $513a: $0f
	nop                                              ; $513b: $00
	ld   bc, $7501                                   ; $513c: $01 $01 $75
	ld   a, l                                        ; $513f: $7d
	sbc  [hl]                                        ; $5140: $9e
	inc  bc                                          ; $5141: $03
	add  e                                           ; $5142: $83
	dec  b                                           ; $5143: $05
	dec  c                                           ; $5144: $0d
	ld   h, l                                        ; $5145: $65
	adc  h                                           ; $5146: $8c
	ld   h, a                                        ; $5147: $67
	sbc  a                                           ; $5148: $9f
	dec  c                                           ; $5149: $0d
	nop                                              ; $514a: $00
	ld   a, [bc]                                     ; $514b: $0a
	nop                                              ; $514c: $00
	inc  e                                           ; $514d: $1c
	dec  b                                           ; $514e: $05
	ld   bc, $0101                                   ; $514f: $01 $01 $01
	sub  [hl]                                        ; $5152: $96
	ei                                               ; $5153: $fb
	ld   h, l                                        ; $5154: $65
	ld   a, [$890d]                                  ; $5155: $fa $0d $89
	ld   a, b                                        ; $5158: $78
	sbc  [hl]                                        ; $5159: $9e
	inc  b                                           ; $515a: $04
	cp   a                                           ; $515b: $bf
	inc  b                                           ; $515c: $04
	dec  d                                           ; $515d: $15
	ld   d, d                                        ; $515e: $52
	ld   [hl], c                                     ; $515f: $71
	ld   [hl], h                                     ; $5160: $74
	adc  l                                           ; $5161: $8d
	sub  [hl]                                        ; $5162: $96
	ld   d, h                                        ; $5163: $54
	ld   a, [$020d]                                  ; $5164: $fa $0d $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5167: $cf
	dec  b                                           ; $5168: $05
	ld   a, [de]                                     ; $5169: $1a
	ld   a, h                                        ; $516a: $7c
	ld   [bc], a                                     ; $516b: $02
	jr   nz, jr_069_5174                             ; $516c: $20 $06

	ld   d, l                                        ; $516e: $55
	inc  bc                                          ; $516f: $03
	ld   hl, $3503                                   ; $5170: $21 $03 $35
	ld   [bc], a                                     ; $5173: $02

jr_069_5174:
	add  h                                           ; $5174: $84
	ld   [bc], a                                     ; $5175: $02
	and  d                                           ; $5176: $a2
	or   b                                           ; $5177: $b0
	and  l                                           ; $5178: $a5
	cp   e                                           ; $5179: $bb
	ld   a, [$000d]                                  ; $517a: $fa $0d $00
	ld   a, [bc]                                     ; $517d: $0a
	ld   bc, $d103                                   ; $517e: $01 $03 $d1
	ld   [de], a                                     ; $5181: $12
	inc  b                                           ; $5182: $04
	cp   a                                           ; $5183: $bf
	ld   bc, wTitleScreenGirlEyesAnimIdx                                   ; $5184: $01 $15 $cc
	rst  $20                                         ; $5187: $e7
	ei                                               ; $5188: $fb
	ret                                              ; $5189: $c9


	push af                                          ; $518a: $f5
	ld   a, l                                        ; $518b: $7d
	dec  c                                           ; $518c: $0d
	inc  b                                           ; $518d: $04
	ld   c, c                                        ; $518e: $49
	and  b                                           ; $518f: $a0
	ld   [bc], a                                     ; $5190: $02
	sub  l                                           ; $5191: $95
	ld   [hl], h                                     ; $5192: $74
	inc  b                                           ; $5193: $04
	ld   d, c                                        ; $5194: $51
	inc  b                                           ; $5195: $04
	ldh  [c], a                                      ; $5196: $e2
	ld   [bc], a                                     ; $5197: $02
	inc  l                                           ; $5198: $2c
	dec  b                                           ; $5199: $05
	ld   a, [bc]                                     ; $519a: $0a
	and  b                                           ; $519b: $a0
	inc  b                                           ; $519c: $04
	ld   e, [hl]                                     ; $519d: $5e
	ld   [bc], a                                     ; $519e: $02
	sub  l                                           ; $519f: $95
	ld   h, l                                        ; $51a0: $65
	ld   l, l                                        ; $51a1: $6d
	dec  c                                           ; $51a2: $0d
	halt                                             ; $51a3: $76
	ld   [bc], a                                     ; $51a4: $02
	sbc  l                                           ; $51a5: $9d
	sbc  l                                           ; $51a6: $9d
	sbc  d                                           ; $51a7: $9a
	ld   [hl], h                                     ; $51a8: $74
	ld   d, d                                        ; $51a9: $52
	sbc  c                                           ; $51aa: $99
	ld   sp, hl                                      ; $51ab: $f9
	dec  c                                           ; $51ac: $0d
	nop                                              ; $51ad: $00
	ld   a, [bc]                                     ; $51ae: $0a
	add  hl, de                                      ; $51af: $19
	dec  b                                           ; $51b0: $05
	inc  bc                                          ; $51b1: $03
	db   $ec                                         ; $51b2: $ec
	push af                                          ; $51b3: $f5
	or   l                                           ; $51b4: $b5
	nop                                              ; $51b5: $00
	nop                                              ; $51b6: $00
	cp   d                                           ; $51b7: $ba
	and  l                                           ; $51b8: $a5
	xor  h                                           ; $51b9: $ac
	nop                                              ; $51ba: $00
	ld   bc, $ace0                                   ; $51bb: $01 $e0 $ac
	push af                                          ; $51be: $f5
	nop                                              ; $51bf: $00
	ld   [bc], a                                     ; $51c0: $02
	rlca                                             ; $51c1: $07
	ld   h, e                                        ; $51c2: $63
	ld   bc, $0302                                   ; $51c3: $01 $02 $03
	ld   bc, $2000                                   ; $51c6: $01 $00 $20
	nop                                              ; $51c9: $00
	rlca                                             ; $51ca: $07
	adc  l                                           ; $51cb: $8d
	ld   bc, $0302                                   ; $51cc: $01 $02 $03
	ld   bc, $2001                                   ; $51cf: $01 $01 $20
	nop                                              ; $51d2: $00
	rlca                                             ; $51d3: $07
	cp   [hl]                                        ; $51d4: $be
	ld   bc, $0302                                   ; $51d5: $01 $02 $03
	ld   bc, $2002                                   ; $51d8: $01 $02 $20
	nop                                              ; $51db: $00
	ld   b, $0a                                      ; $51dc: $06 $0a
	inc  b                                           ; $51de: $04
	rrca                                             ; $51df: $0f
	nop                                              ; $51e0: $00
	ld   bc, $ec01                                   ; $51e1: $01 $01 $ec
	push af                                          ; $51e4: $f5
	or   l                                           ; $51e5: $b5
	ld   [hl], l                                     ; $51e6: $75
	ld   h, a                                        ; $51e7: $67
	sbc  a                                           ; $51e8: $9f
	dec  c                                           ; $51e9: $0d
	nop                                              ; $51ea: $00
	ld   a, [bc]                                     ; $51eb: $0a
	inc  e                                           ; $51ec: $1c
	dec  b                                           ; $51ed: $05
	ld   bc, $1401                                   ; $51ee: $01 $01 $14
	dec  de                                          ; $51f1: $1b
	ld   bc, $0301                                   ; $51f2: $01 $01 $03
	ld   c, d                                        ; $51f5: $4a
	ld   [bc], a                                     ; $51f6: $02
	or   h                                           ; $51f7: $b4
	sub  d                                           ; $51f8: $92
	ld   a, [$000d]                                  ; $51f9: $fa $0d $00
	ld   a, [bc]                                     ; $51fc: $0a
	dec  b                                           ; $51fd: $05
	ld   b, b                                        ; $51fe: $40
	rst  $38                                         ; $51ff: $ff
	inc  bc                                          ; $5200: $03
	rst  $38                                         ; $5201: $ff
	ld   bc, $2801                                   ; $5202: $01 $01 $28
	nop                                              ; $5205: $00
	ld   b, $ef                                      ; $5206: $06 $ef
	ld   bc, $000f                                   ; $5208: $01 $0f $00
	ld   bc, $ba01                                   ; $520b: $01 $01 $ba
	and  l                                           ; $520e: $a5
	xor  h                                           ; $520f: $ac
	ld   [hl], l                                     ; $5210: $75
	ld   h, a                                        ; $5211: $67
	sbc  a                                           ; $5212: $9f
	dec  c                                           ; $5213: $0d
	nop                                              ; $5214: $00
	ld   a, [bc]                                     ; $5215: $0a
	inc  e                                           ; $5216: $1c
	dec  b                                           ; $5217: $05
	ld   [bc], a                                     ; $5218: $02
	ld   [bc], a                                     ; $5219: $02
	inc  d                                           ; $521a: $14
	inc  e                                           ; $521b: $1c
	ld   bc, $d701                                   ; $521c: $01 $01 $d7
	ei                                               ; $521f: $fb
	sbc  a                                           ; $5220: $9f
	ret  nc                                          ; $5221: $d0

	cp   e                                           ; $5222: $bb
	xor  $fa                                         ; $5223: $ee $fa
	dec  c                                           ; $5225: $0d
	inc  bc                                          ; $5226: $03
	ld   c, d                                        ; $5227: $4a
	ld   [bc], a                                     ; $5228: $02
	or   h                                           ; $5229: $b4
	ld   a, l                                        ; $522a: $7d
	ld   bc, $ec07                                   ; $522b: $01 $07 $ec
	push af                                          ; $522e: $f5
	or   l                                           ; $522f: $b5
	ld   bc, $9208                                   ; $5230: $01 $08 $92
	sbc  a                                           ; $5233: $9f
	dec  c                                           ; $5234: $0d
	nop                                              ; $5235: $00
	ld   a, [bc]                                     ; $5236: $0a
	ld   b, $ef                                      ; $5237: $06 $ef
	ld   bc, $000f                                   ; $5239: $01 $0f $00
	ld   bc, $e001                                   ; $523c: $01 $01 $e0
	xor  h                                           ; $523f: $ac
	push af                                          ; $5240: $f5
	ld   [hl], l                                     ; $5241: $75
	ld   h, a                                        ; $5242: $67
	sbc  a                                           ; $5243: $9f
	dec  c                                           ; $5244: $0d
	nop                                              ; $5245: $00
	ld   a, [bc]                                     ; $5246: $0a
	inc  e                                           ; $5247: $1c
	dec  b                                           ; $5248: $05
	ld   [bc], a                                     ; $5249: $02
	ld   [bc], a                                     ; $524a: $02
	inc  d                                           ; $524b: $14
	inc  e                                           ; $524c: $1c
	ld   bc, $d701                                   ; $524d: $01 $01 $d7
	ei                                               ; $5250: $fb
	sbc  a                                           ; $5251: $9f
	ret  nc                                          ; $5252: $d0

	cp   e                                           ; $5253: $bb
	xor  $fa                                         ; $5254: $ee $fa
	dec  c                                           ; $5256: $0d
	inc  bc                                          ; $5257: $03
	ld   c, d                                        ; $5258: $4a
	ld   [bc], a                                     ; $5259: $02
	or   h                                           ; $525a: $b4
	ld   a, l                                        ; $525b: $7d
	ld   bc, $ec07                                   ; $525c: $01 $07 $ec
	push af                                          ; $525f: $f5
	or   l                                           ; $5260: $b5
	ld   bc, $9208                                   ; $5261: $01 $08 $92
	sbc  a                                           ; $5264: $9f
	dec  c                                           ; $5265: $0d
	nop                                              ; $5266: $00
	ld   a, [bc]                                     ; $5267: $0a
	ld   b, $ef                                      ; $5268: $06 $ef
	ld   bc, $051c                                   ; $526a: $01 $1c $05
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	ld   bc, $d103                                   ; $526f: $01 $03 $d1
	inc  de                                          ; $5272: $13
	inc  b                                           ; $5273: $04
	cp   a                                           ; $5274: $bf
	ld   bc, $0d15                                   ; $5275: $01 $15 $0d
	ld   b, $51                                      ; $5278: $06 $51
	ld   [bc], a                                     ; $527a: $02
	inc  bc                                          ; $527b: $03
	ld   [bc], a                                     ; $527c: $02
	ld   e, b                                        ; $527d: $58
	and  b                                           ; $527e: $a0
	inc  b                                           ; $527f: $04
	ld   e, [hl]                                     ; $5280: $5e
	inc  b                                           ; $5281: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5282: $cf
	ld   h, l                                        ; $5283: $65
	ld   l, l                                        ; $5284: $6d
	ld   a, h                                        ; $5285: $7c
	ld   a, l                                        ; $5286: $7d
	inc  bc                                          ; $5287: $03
	xor  c                                           ; $5288: $a9
	ld   sp, hl                                      ; $5289: $f9
	dec  c                                           ; $528a: $0d
	nop                                              ; $528b: $00
	ld   a, [bc]                                     ; $528c: $0a
	add  hl, de                                      ; $528d: $19
	dec  b                                           ; $528e: $05
	inc  bc                                          ; $528f: $03
	xor  c                                           ; $5290: $a9
	cp   c                                           ; $5291: $b9
	cp   [hl]                                        ; $5292: $be
	push af                                          ; $5293: $f5
	nop                                              ; $5294: $00
	nop                                              ; $5295: $00
	xor  c                                           ; $5296: $a9
	cp   c                                           ; $5297: $b9
	push af                                          ; $5298: $f5
	cp   [hl]                                        ; $5299: $be
	push af                                          ; $529a: $f5
	nop                                              ; $529b: $00
	ld   bc, $fba9                                   ; $529c: $01 $a9 $fb
	cp   c                                           ; $529f: $b9
	or   [hl]                                        ; $52a0: $b6
	push af                                          ; $52a1: $f5
	nop                                              ; $52a2: $00
	ld   [bc], a                                     ; $52a3: $02
	rlca                                             ; $52a4: $07
	ld   b, [hl]                                     ; $52a5: $46
	ld   [bc], a                                     ; $52a6: $02
	ld   [bc], a                                     ; $52a7: $02
	inc  bc                                          ; $52a8: $03
	ld   bc, $2000                                   ; $52a9: $01 $00 $20
	nop                                              ; $52ac: $00
	rlca                                             ; $52ad: $07
	ld   [hl], c                                     ; $52ae: $71
	ld   [bc], a                                     ; $52af: $02
	ld   [bc], a                                     ; $52b0: $02
	inc  bc                                          ; $52b1: $03
	ld   bc, $2001                                   ; $52b2: $01 $01 $20
	nop                                              ; $52b5: $00
	rlca                                             ; $52b6: $07
	and  h                                           ; $52b7: $a4
	ld   [bc], a                                     ; $52b8: $02
	ld   [bc], a                                     ; $52b9: $02
	inc  bc                                          ; $52ba: $03
	ld   bc, $2002                                   ; $52bb: $01 $02 $20
	nop                                              ; $52be: $00
	ld   b, $0a                                      ; $52bf: $06 $0a
	inc  b                                           ; $52c1: $04
	rrca                                             ; $52c2: $0f
	nop                                              ; $52c3: $00
	ld   bc, $a901                                   ; $52c4: $01 $01 $a9
	cp   c                                           ; $52c7: $b9
	cp   [hl]                                        ; $52c8: $be
	push af                                          ; $52c9: $f5
	ld   [hl], l                                     ; $52ca: $75
	ld   h, a                                        ; $52cb: $67
	sbc  a                                           ; $52cc: $9f
	dec  c                                           ; $52cd: $0d
	nop                                              ; $52ce: $00
	ld   a, [bc]                                     ; $52cf: $0a
	inc  e                                           ; $52d0: $1c
	dec  b                                           ; $52d1: $05
	ld   bc, $1401                                   ; $52d2: $01 $01 $14
	dec  de                                          ; $52d5: $1b
	ld   bc, $0301                                   ; $52d6: $01 $01 $03
	ld   c, d                                        ; $52d9: $4a
	ld   [bc], a                                     ; $52da: $02
	or   h                                           ; $52db: $b4
	sub  d                                           ; $52dc: $92
	ld   a, [$000d]                                  ; $52dd: $fa $0d $00
	ld   a, [bc]                                     ; $52e0: $0a
	dec  b                                           ; $52e1: $05
	ld   b, b                                        ; $52e2: $40
	rst  $38                                         ; $52e3: $ff
	inc  bc                                          ; $52e4: $03
	rst  $38                                         ; $52e5: $ff
	ld   bc, $2801                                   ; $52e6: $01 $01 $28
	nop                                              ; $52e9: $00
	ld   b, $d7                                      ; $52ea: $06 $d7
	ld   [bc], a                                     ; $52ec: $02
	rrca                                             ; $52ed: $0f
	nop                                              ; $52ee: $00
	ld   bc, $a901                                   ; $52ef: $01 $01 $a9
	cp   c                                           ; $52f2: $b9
	push af                                          ; $52f3: $f5
	cp   [hl]                                        ; $52f4: $be
	push af                                          ; $52f5: $f5
	ld   [hl], l                                     ; $52f6: $75
	ld   h, a                                        ; $52f7: $67
	sbc  a                                           ; $52f8: $9f
	dec  c                                           ; $52f9: $0d
	nop                                              ; $52fa: $00
	ld   a, [bc]                                     ; $52fb: $0a
	inc  e                                           ; $52fc: $1c
	dec  b                                           ; $52fd: $05
	ld   [bc], a                                     ; $52fe: $02
	ld   [bc], a                                     ; $52ff: $02
	inc  d                                           ; $5300: $14
	inc  e                                           ; $5301: $1c
	ld   bc, $d701                                   ; $5302: $01 $01 $d7
	ei                                               ; $5305: $fb
	sbc  a                                           ; $5306: $9f
	ret  nc                                          ; $5307: $d0

	cp   e                                           ; $5308: $bb
	xor  $fa                                         ; $5309: $ee $fa
	dec  c                                           ; $530b: $0d
	inc  bc                                          ; $530c: $03
	ld   c, d                                        ; $530d: $4a
	ld   [bc], a                                     ; $530e: $02
	or   h                                           ; $530f: $b4
	ld   a, l                                        ; $5310: $7d
	ld   bc, $a907                                   ; $5311: $01 $07 $a9
	cp   c                                           ; $5314: $b9
	cp   [hl]                                        ; $5315: $be
	push af                                          ; $5316: $f5
	ld   bc, $9208                                   ; $5317: $01 $08 $92
	dec  c                                           ; $531a: $0d
	nop                                              ; $531b: $00
	ld   a, [bc]                                     ; $531c: $0a
	ld   b, $d7                                      ; $531d: $06 $d7
	ld   [bc], a                                     ; $531f: $02
	rrca                                             ; $5320: $0f
	nop                                              ; $5321: $00
	ld   bc, $a901                                   ; $5322: $01 $01 $a9
	ei                                               ; $5325: $fb
	cp   c                                           ; $5326: $b9
	or   [hl]                                        ; $5327: $b6
	push af                                          ; $5328: $f5
	ld   [hl], l                                     ; $5329: $75
	ld   h, a                                        ; $532a: $67
	sbc  a                                           ; $532b: $9f
	dec  c                                           ; $532c: $0d
	nop                                              ; $532d: $00
	ld   a, [bc]                                     ; $532e: $0a
	inc  e                                           ; $532f: $1c
	dec  b                                           ; $5330: $05
	ld   [bc], a                                     ; $5331: $02
	ld   [bc], a                                     ; $5332: $02
	inc  d                                           ; $5333: $14
	inc  e                                           ; $5334: $1c
	ld   bc, $d701                                   ; $5335: $01 $01 $d7
	ei                                               ; $5338: $fb
	sbc  a                                           ; $5339: $9f
	ret  nc                                          ; $533a: $d0

	cp   e                                           ; $533b: $bb
	xor  $fa                                         ; $533c: $ee $fa
	dec  c                                           ; $533e: $0d
	inc  bc                                          ; $533f: $03
	ld   c, d                                        ; $5340: $4a
	ld   [bc], a                                     ; $5341: $02
	or   h                                           ; $5342: $b4
	ld   a, l                                        ; $5343: $7d
	ld   bc, $a907                                   ; $5344: $01 $07 $a9
	cp   c                                           ; $5347: $b9
	cp   [hl]                                        ; $5348: $be
	push af                                          ; $5349: $f5
	ld   bc, $9208                                   ; $534a: $01 $08 $92
	dec  c                                           ; $534d: $0d
	nop                                              ; $534e: $00
	ld   a, [bc]                                     ; $534f: $0a
	ld   b, $d7                                      ; $5350: $06 $d7
	ld   [bc], a                                     ; $5352: $02
	inc  e                                           ; $5353: $1c
	dec  b                                           ; $5354: $05
	nop                                              ; $5355: $00
	nop                                              ; $5356: $00
	ld   bc, $d103                                   ; $5357: $01 $03 $d1
	inc  d                                           ; $535a: $14
	inc  b                                           ; $535b: $04
	cp   a                                           ; $535c: $bf
	ld   bc, $0d15                                   ; $535d: $01 $15 $0d
	and  e                                           ; $5360: $a3
	and  l                                           ; $5361: $a5
	push af                                          ; $5362: $f5
	cp   b                                           ; $5363: $b8
	rst  $20                                         ; $5364: $e7
	ret  nz                                          ; $5365: $c0

	and  l                                           ; $5366: $a5
	push af                                          ; $5367: $f5
	ld   a, h                                        ; $5368: $7c
	inc  bc                                          ; $5369: $03
	db   $fd                                         ; $536a: $fd
	ld   b, $4e                                      ; $536b: $06 $4e
	dec  c                                           ; $536d: $0d
	ld   [bc], a                                     ; $536e: $02
	ld   a, [de]                                     ; $536f: $1a
	inc  b                                           ; $5370: $04
	dec  b                                           ; $5371: $05
	ld   [bc], a                                     ; $5372: $02
	db   $fc                                         ; $5373: $fc
	dec  b                                           ; $5374: $05
	ld   de, $fb04                                   ; $5375: $11 $04 $fb
	ld   a, h                                        ; $5378: $7c
	ld   [bc], a                                     ; $5379: $02
	push af                                          ; $537a: $f5
	ld   a, l                                        ; $537b: $7d
	ld   sp, hl                                      ; $537c: $f9
	dec  c                                           ; $537d: $0d
	nop                                              ; $537e: $00
	ld   a, [bc]                                     ; $537f: $0a
	add  hl, de                                      ; $5380: $19
	dec  b                                           ; $5381: $05
	inc  bc                                          ; $5382: $03
	rra                                              ; $5383: $1f
	ld   bc, $270d                                   ; $5384: $01 $0d $27
	dec  e                                           ; $5387: $1d
	ld   a, h                                        ; $5388: $7c
	inc  de                                          ; $5389: $13
	inc  bc                                          ; $538a: $03
	cp   c                                           ; $538b: $b9
	nop                                              ; $538c: $00
	nop                                              ; $538d: $00
	ld   b, $52                                      ; $538e: $06 $52
	ld   b, $0a                                      ; $5390: $06 $0a
	ld   bc, $020b                                   ; $5392: $01 $0b $02
	cp   [hl]                                        ; $5395: $be
	ld   h, e                                        ; $5396: $63
	ld   bc, $130c                                   ; $5397: $01 $0c $13
	nop                                              ; $539a: $00
	ld   bc, $0112                                   ; $539b: $01 $12 $01
	add  hl, bc                                      ; $539e: $09
	ld   [de], a                                     ; $539f: $12
	ld   bc, $130d                                   ; $53a0: $01 $0d $13
	nop                                              ; $53a3: $00
	ld   [bc], a                                     ; $53a4: $02
	rlca                                             ; $53a5: $07
	ld   b, a                                        ; $53a6: $47
	inc  bc                                          ; $53a7: $03
	ld   [bc], a                                     ; $53a8: $02
	inc  bc                                          ; $53a9: $03
	ld   bc, $2000                                   ; $53aa: $01 $00 $20
	nop                                              ; $53ad: $00
	rlca                                             ; $53ae: $07
	ld   a, a                                        ; $53af: $7f
	inc  bc                                          ; $53b0: $03
	ld   [bc], a                                     ; $53b1: $02
	inc  bc                                          ; $53b2: $03
	ld   bc, $2001                                   ; $53b3: $01 $01 $20
	nop                                              ; $53b6: $00
	rlca                                             ; $53b7: $07
	rst  ToBoot                                         ; $53b8: $c7
	inc  bc                                          ; $53b9: $03
	ld   [bc], a                                     ; $53ba: $02
	inc  bc                                          ; $53bb: $03
	ld   bc, $2002                                   ; $53bc: $01 $02 $20
	nop                                              ; $53bf: $00
	ld   b, $0a                                      ; $53c0: $06 $0a
	inc  b                                           ; $53c2: $04
	rrca                                             ; $53c3: $0f
	nop                                              ; $53c4: $00
	ld   bc, $1f01                                   ; $53c5: $01 $01 $1f
	ld   bc, $270d                                   ; $53c8: $01 $0d $27
	dec  e                                           ; $53cb: $1d
	ld   a, h                                        ; $53cc: $7c
	inc  de                                          ; $53cd: $13
	inc  bc                                          ; $53ce: $03
	cp   c                                           ; $53cf: $b9
	ld   [hl], l                                     ; $53d0: $75
	ld   h, a                                        ; $53d1: $67
	sbc  a                                           ; $53d2: $9f
	dec  c                                           ; $53d3: $0d
	nop                                              ; $53d4: $00
	ld   a, [bc]                                     ; $53d5: $0a
	inc  e                                           ; $53d6: $1c
	dec  b                                           ; $53d7: $05
	ld   bc, $1401                                   ; $53d8: $01 $01 $14
	dec  de                                          ; $53db: $1b
	ld   bc, $0301                                   ; $53dc: $01 $01 $03
	ld   c, d                                        ; $53df: $4a
	ld   [bc], a                                     ; $53e0: $02
	or   h                                           ; $53e1: $b4
	sub  d                                           ; $53e2: $92
	ld   a, [$000d]                                  ; $53e3: $fa $0d $00
	ld   a, [bc]                                     ; $53e6: $0a
	dec  b                                           ; $53e7: $05
	ld   b, b                                        ; $53e8: $40
	rst  $38                                         ; $53e9: $ff
	inc  bc                                          ; $53ea: $03
	rst  $38                                         ; $53eb: $ff
	ld   bc, $2801                                   ; $53ec: $01 $01 $28
	nop                                              ; $53ef: $00
	dec  c                                           ; $53f0: $0d
	nop                                              ; $53f1: $00
	nop                                              ; $53f2: $00
	rrca                                             ; $53f3: $0f
	nop                                              ; $53f4: $00
	ld   bc, $0b0c                                   ; $53f5: $01 $0c $0b
	ld   b, $39                                      ; $53f8: $06 $39
	inc  b                                           ; $53fa: $04
	rrca                                             ; $53fb: $0f
	nop                                              ; $53fc: $00
	ld   bc, $0601                                   ; $53fd: $01 $01 $06
	ld   d, d                                        ; $5400: $52
	ld   b, $0a                                      ; $5401: $06 $0a
	ld   bc, $020b                                   ; $5403: $01 $0b $02
	cp   [hl]                                        ; $5406: $be
	ld   h, e                                        ; $5407: $63
	ld   bc, $130c                                   ; $5408: $01 $0c $13
	ld   [hl], l                                     ; $540b: $75
	ld   h, a                                        ; $540c: $67
	sbc  a                                           ; $540d: $9f
	dec  c                                           ; $540e: $0d
	nop                                              ; $540f: $00
	ld   a, [bc]                                     ; $5410: $0a
	inc  e                                           ; $5411: $1c
	dec  b                                           ; $5412: $05
	ld   [bc], a                                     ; $5413: $02
	ld   [bc], a                                     ; $5414: $02
	inc  d                                           ; $5415: $14
	inc  e                                           ; $5416: $1c
	ld   bc, $d701                                   ; $5417: $01 $01 $d7
	ei                                               ; $541a: $fb
	sbc  a                                           ; $541b: $9f
	ret  nc                                          ; $541c: $d0

	cp   e                                           ; $541d: $bb
	xor  $fa                                         ; $541e: $ee $fa
	dec  c                                           ; $5420: $0d
	inc  bc                                          ; $5421: $03
	ld   c, d                                        ; $5422: $4a
	ld   [bc], a                                     ; $5423: $02
	or   h                                           ; $5424: $b4
	ld   a, l                                        ; $5425: $7d
	ld   bc, $1f07                                   ; $5426: $01 $07 $1f
	ld   bc, $270d                                   ; $5429: $01 $0d $27
	dec  e                                           ; $542c: $1d
	ld   a, h                                        ; $542d: $7c
	inc  de                                          ; $542e: $13
	inc  bc                                          ; $542f: $03
	cp   c                                           ; $5430: $b9
	ld   bc, $9208                                   ; $5431: $01 $08 $92
	sbc  a                                           ; $5434: $9f
	dec  c                                           ; $5435: $0d
	nop                                              ; $5436: $00
	ld   a, [bc]                                     ; $5437: $0a
	dec  c                                           ; $5438: $0d
	nop                                              ; $5439: $00
	nop                                              ; $543a: $00
	rrca                                             ; $543b: $0f
	nop                                              ; $543c: $00
	ld   bc, $0b0c                                   ; $543d: $01 $0c $0b
	ld   b, $39                                      ; $5440: $06 $39
	inc  b                                           ; $5442: $04
	rrca                                             ; $5443: $0f
	nop                                              ; $5444: $00
	ld   bc, $1201                                   ; $5445: $01 $01 $12
	ld   bc, $1209                                   ; $5448: $01 $09 $12
	ld   bc, $130d                                   ; $544b: $01 $0d $13
	ld   [hl], l                                     ; $544e: $75
	ld   h, a                                        ; $544f: $67
	sbc  a                                           ; $5450: $9f
	dec  c                                           ; $5451: $0d
	nop                                              ; $5452: $00
	ld   a, [bc]                                     ; $5453: $0a
	inc  e                                           ; $5454: $1c
	dec  b                                           ; $5455: $05
	ld   [bc], a                                     ; $5456: $02
	ld   [bc], a                                     ; $5457: $02
	inc  d                                           ; $5458: $14
	inc  e                                           ; $5459: $1c
	ld   bc, $d701                                   ; $545a: $01 $01 $d7
	ei                                               ; $545d: $fb
	sbc  a                                           ; $545e: $9f
	ret  nc                                          ; $545f: $d0

	cp   e                                           ; $5460: $bb
	xor  $fa                                         ; $5461: $ee $fa
	dec  c                                           ; $5463: $0d
	inc  bc                                          ; $5464: $03
	ld   c, d                                        ; $5465: $4a
	ld   [bc], a                                     ; $5466: $02
	or   h                                           ; $5467: $b4
	ld   a, l                                        ; $5468: $7d
	ld   bc, $1f07                                   ; $5469: $01 $07 $1f
	ld   bc, $270d                                   ; $546c: $01 $0d $27
	dec  e                                           ; $546f: $1d
	ld   a, h                                        ; $5470: $7c
	inc  de                                          ; $5471: $13
	inc  bc                                          ; $5472: $03
	cp   c                                           ; $5473: $b9
	ld   bc, $9208                                   ; $5474: $01 $08 $92
	sbc  a                                           ; $5477: $9f
	dec  c                                           ; $5478: $0d
	nop                                              ; $5479: $00
	ld   a, [bc]                                     ; $547a: $0a
	dec  c                                           ; $547b: $0d
	nop                                              ; $547c: $00
	nop                                              ; $547d: $00
	rrca                                             ; $547e: $0f
	nop                                              ; $547f: $00
	ld   bc, $0b0c                                   ; $5480: $01 $0c $0b
	ld   b, $39                                      ; $5483: $06 $39
	inc  b                                           ; $5485: $04
	inc  e                                           ; $5486: $1c
	dec  b                                           ; $5487: $05
	ld   [bc], a                                     ; $5488: $02
	ld   [bc], a                                     ; $5489: $02
	ld   bc, $fc54                                   ; $548a: $01 $54 $fc
	and  c                                           ; $548d: $a1
	sbc  a                                           ; $548e: $9f
	dec  c                                           ; $548f: $0d
	ld   h, c                                        ; $5490: $61
	ld   a, h                                        ; $5491: $7c
	dec  b                                           ; $5492: $05
	ld   c, [hl]                                     ; $5493: $4e
	inc  b                                           ; $5494: $04
	add  hl, hl                                      ; $5495: $29
	ld   a, h                                        ; $5496: $7c
	inc  bc                                          ; $5497: $03
	ld   hl, $3503                                   ; $5498: $21 $03 $35
	rst  $38                                         ; $549b: $ff
	dec  c                                           ; $549c: $0d
	sbc  l                                           ; $549d: $9d
	ld   e, c                                        ; $549e: $59
	sbc  d                                           ; $549f: $9a
	add  [hl]                                        ; $54a0: $86
	and  c                                           ; $54a1: $a1
	ld   e, c                                        ; $54a2: $59
	ld   a, b                                        ; $54a3: $78
	db   $fc                                         ; $54a4: $fc
	rst  $38                                         ; $54a5: $ff
	rst  $38                                         ; $54a6: $ff
	dec  c                                           ; $54a7: $0d
	nop                                              ; $54a8: $00
	ld   a, [bc]                                     ; $54a9: $0a
	dec  c                                           ; $54aa: $0d
	nop                                              ; $54ab: $00
	nop                                              ; $54ac: $00
	rrca                                             ; $54ad: $0f
	nop                                              ; $54ae: $00
	ld   bc, $0b0c                                   ; $54af: $01 $0c $0b
	ld   b, $a4                                      ; $54b2: $06 $a4
	inc  b                                           ; $54b4: $04
	rlca                                             ; $54b5: $07
	ld   d, h                                        ; $54b6: $54
	inc  b                                           ; $54b7: $04
	inc  bc                                          ; $54b8: $03
	rst  $38                                         ; $54b9: $ff
	ld   bc, $2003                                   ; $54ba: $01 $03 $20
	nop                                              ; $54bd: $00
	rlca                                             ; $54be: $07
	ld   a, e                                        ; $54bf: $7b
	inc  b                                           ; $54c0: $04
	inc  bc                                          ; $54c1: $03
	rst  $38                                         ; $54c2: $ff
	ld   bc, $2002                                   ; $54c3: $01 $02 $20
	nop                                              ; $54c6: $00
	rlca                                             ; $54c7: $07
	and  h                                           ; $54c8: $a4
	inc  b                                           ; $54c9: $04
	inc  bc                                          ; $54ca: $03
	rst  $38                                         ; $54cb: $ff
	ld   bc, $2301                                   ; $54cc: $01 $01 $23
	nop                                              ; $54cf: $00
	inc  e                                           ; $54d0: $1c
	dec  b                                           ; $54d1: $05
	ld   bc, $1d01                                   ; $54d2: $01 $01 $1d
	ld   b, b                                        ; $54d5: $40
	dec  d                                           ; $54d6: $15
	inc  bc                                          ; $54d7: $03
	dec  d                                           ; $54d8: $15
	ld   bc, $2803                                   ; $54d9: $01 $03 $28
	nop                                              ; $54dc: $00
	ld   bc, $6267                                   ; $54dd: $01 $67 $62
	ld   d, d                                        ; $54e0: $52
	ld   a, b                                        ; $54e1: $78
	sbc  [hl]                                        ; $54e2: $9e
	ld   [$7d00], sp                                 ; $54e3: $08 $00 $7d
	and  c                                           ; $54e6: $a1
	sbc  a                                           ; $54e7: $9f
	dec  c                                           ; $54e8: $0d
	ld   [bc], a                                     ; $54e9: $02
	sub  l                                           ; $54ea: $95
	inc  bc                                          ; $54eb: $03
	jp   c, $6d65                                    ; $54ec: $da $65 $6d

	ld   [hl], l                                     ; $54ef: $75
	sbc  a                                           ; $54f0: $9f
	dec  c                                           ; $54f1: $0d
	nop                                              ; $54f2: $00
	ld   a, [bc]                                     ; $54f3: $0a
	ld   b, $d9                                      ; $54f4: $06 $d9
	inc  b                                           ; $54f6: $04
	inc  e                                           ; $54f7: $1c
	dec  b                                           ; $54f8: $05
	nop                                              ; $54f9: $00
	nop                                              ; $54fa: $00
	dec  e                                           ; $54fb: $1d
	ld   b, b                                        ; $54fc: $40
	dec  d                                           ; $54fd: $15
	inc  bc                                          ; $54fe: $03
	dec  d                                           ; $54ff: $15
	ld   bc, $2802                                   ; $5500: $01 $02 $28
	nop                                              ; $5503: $00
	ld   bc, $508c                                   ; $5504: $01 $8c $50
	sbc  [hl]                                        ; $5507: $9e
	ld   h, c                                        ; $5508: $61
	and  c                                           ; $5509: $a1
	ld   a, b                                        ; $550a: $78
	sub  b                                           ; $550b: $90
	and  c                                           ; $550c: $a1
	sub  d                                           ; $550d: $92
	sbc  e                                           ; $550e: $9b
	sbc  a                                           ; $550f: $9f
	dec  c                                           ; $5510: $0d
	ld   a, b                                        ; $5511: $78
	ld   e, c                                        ; $5512: $59
	ld   a, b                                        ; $5513: $78
	ld   e, c                                        ; $5514: $59
	sub  d                                           ; $5515: $92
	sbc  c                                           ; $5516: $99
	sub  d                                           ; $5517: $92
	and  c                                           ; $5518: $a1
	sbc  a                                           ; $5519: $9f
	dec  c                                           ; $551a: $0d
	nop                                              ; $551b: $00
	ld   a, [bc]                                     ; $551c: $0a
	ld   b, $d9                                      ; $551d: $06 $d9
	inc  b                                           ; $551f: $04
	inc  e                                           ; $5520: $1c
	dec  b                                           ; $5521: $05
	ld   [bc], a                                     ; $5522: $02
	ld   [bc], a                                     ; $5523: $02
	dec  e                                           ; $5524: $1d
	ld   b, b                                        ; $5525: $40
	dec  d                                           ; $5526: $15
	inc  bc                                          ; $5527: $03
	dec  d                                           ; $5528: $15
	ld   bc, $2902                                   ; $5529: $01 $02 $29
	nop                                              ; $552c: $00
	ld   bc, $5950                                   ; $552d: $01 $50 $59
	and  c                                           ; $5530: $a1
	ld   a, b                                        ; $5531: $78
	db   $fc                                         ; $5532: $fc
	sbc  a                                           ; $5533: $9f
	dec  c                                           ; $5534: $0d
	sub  b                                           ; $5535: $90
	ld   d, h                                        ; $5536: $54
	ld   l, a                                        ; $5537: $6f
	sub  l                                           ; $5538: $95
	ld   [hl], c                                     ; $5539: $71
	halt                                             ; $553a: $76
	sbc  [hl]                                        ; $553b: $9e
	inc  b                                           ; $553c: $04
	xor  [hl]                                        ; $553d: $ae
	ld   [bc], a                                     ; $553e: $02
	call nc, $6d65                                   ; $553f: $d4 $65 $6d
	inc  b                                           ; $5542: $04
	ld   a, b                                        ; $5543: $78
	ld   e, d                                        ; $5544: $5a
	dec  c                                           ; $5545: $0d
	xor  c                                           ; $5546: $a9
	xor  c                                           ; $5547: $a9
	and  c                                           ; $5548: $a1
	halt                                             ; $5549: $76
	ld   l, a                                        ; $554a: $6f
	sub  c                                           ; $554b: $91
	ld   d, h                                        ; $554c: $54
	ld   e, c                                        ; $554d: $59
	sbc  a                                           ; $554e: $9f
	dec  c                                           ; $554f: $0d
	nop                                              ; $5550: $00
	ld   a, [bc]                                     ; $5551: $0a
	ld   b, $d9                                      ; $5552: $06 $d9
	inc  b                                           ; $5554: $04
	ld   bc, $7889                                   ; $5555: $01 $89 $78
	sbc  [hl]                                        ; $5558: $9e
	adc  h                                           ; $5559: $8c
	ld   l, l                                        ; $555a: $6d
	ld   a, b                                        ; $555b: $78
	sbc  a                                           ; $555c: $9f
	dec  c                                           ; $555d: $0d
	ld   e, b                                        ; $555e: $58
	sub  d                                           ; $555f: $92
	ld   h, a                                        ; $5560: $67
	adc  l                                           ; $5561: $8d
	sbc  a                                           ; $5562: $9f
	dec  c                                           ; $5563: $0d
	nop                                              ; $5564: $00
	ld   a, [bc]                                     ; $5565: $0a
	dec  c                                           ; $5566: $0d
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	rrca                                             ; $5569: $0f
	nop                                              ; $556a: $00
	ld   bc, $1e09                                   ; $556b: $01 $09 $1e
	nop                                              ; $556e: $00
	nop                                              ; $556f: $00
	rrca                                             ; $5570: $0f
	nop                                              ; $5571: $00
	ld   bc, $0102                                   ; $5572: $01 $02 $01
	ld   h, a                                        ; $5575: $67
	adc  l                                           ; $5576: $8d
	sbc  d                                           ; $5577: $9a
	ld   h, e                                        ; $5578: $63
	and  c                                           ; $5579: $a1
	sbc  a                                           ; $557a: $9f
	dec  c                                           ; $557b: $0d
	ld   e, b                                        ; $557c: $58
	inc  b                                           ; $557d: $04
	ld   a, e                                        ; $557e: $7b
	sbc  d                                           ; $557f: $9a
	ld   h, e                                        ; $5580: $63
	adc  h                                           ; $5581: $8c
	ld   [hl], l                                     ; $5582: $75
	ld   h, a                                        ; $5583: $67
	sbc  a                                           ; $5584: $9f
	dec  c                                           ; $5585: $0d
	nop                                              ; $5586: $00
	ld   a, [bc]                                     ; $5587: $0a
	inc  e                                           ; $5588: $1c
	ld   [bc], a                                     ; $5589: $02
	nop                                              ; $558a: $00
	nop                                              ; $558b: $00
	ld   bc, $9750                                   ; $558c: $01 $50 $97
	sbc  [hl]                                        ; $558f: $9e
	ld   [$6300], sp                                 ; $5590: $08 $00 $63
	and  c                                           ; $5593: $a1
	sbc  a                                           ; $5594: $9f
	dec  c                                           ; $5595: $0d
	nop                                              ; $5596: $00
	ld   a, [bc]                                     ; $5597: $0a
	rrca                                             ; $5598: $0f
	nop                                              ; $5599: $00
	ld   bc, $5001                                   ; $559a: $01 $01 $50
	ld   a, h                                        ; $559d: $7c
	db   $fc                                         ; $559e: $fc
	sbc  [hl]                                        ; $559f: $9e
	ld   l, a                                        ; $55a0: $6f
	sub  l                                           ; $55a1: $95
	ld   [hl], c                                     ; $55a2: $71
	halt                                             ; $55a3: $76
	ld   d, d                                        ; $55a4: $52
	ld   d, d                                        ; $55a5: $52
	ld   [hl], l                                     ; $55a6: $75
	ld   h, a                                        ; $55a7: $67
	ld   e, c                                        ; $55a8: $59
	ld   sp, hl                                      ; $55a9: $f9
	dec  c                                           ; $55aa: $0d
	ld   bc, $0403                                   ; $55ab: $01 $03 $04
	ld   c, c                                        ; $55ae: $49
	ld   a, h                                        ; $55af: $7c
	dec  b                                           ; $55b0: $05
	jr   nz, @-$5e                                   ; $55b1: $20 $a0

	ld   h, l                                        ; $55b3: $65
	sub  [hl]                                        ; $55b4: $96
	ld   d, h                                        ; $55b5: $54
	ld   e, c                                        ; $55b6: $59
	ld   a, b                                        ; $55b7: $78
	rst  $38                                         ; $55b8: $ff
	rst  $38                                         ; $55b9: $ff
	ld   bc, $0d04                                   ; $55ba: $01 $04 $0d
	nop                                              ; $55bd: $00
	ld   a, [bc]                                     ; $55be: $0a
	add  hl, de                                      ; $55bf: $19
	dec  b                                           ; $55c0: $05
	inc  bc                                          ; $55c1: $03
	inc  bc                                          ; $55c2: $03
	sub  h                                           ; $55c3: $94
	inc  b                                           ; $55c4: $04
	sbc  [hl]                                        ; $55c5: $9e
	ld   a, h                                        ; $55c6: $7c
	ld   [bc], a                                     ; $55c7: $02
	jp   Jump_069_7279                               ; $55c8: $c3 $79 $72


	ld   d, d                                        ; $55cb: $52
	ld   [hl], h                                     ; $55cc: $74
	ld   [bc], a                                     ; $55cd: $02
	jp   nz, $005d                                   ; $55ce: $c2 $5d $00

	nop                                              ; $55d1: $00
	ld   e, b                                        ; $55d2: $58
	ld   [bc], a                                     ; $55d3: $02
	dec  sp                                          ; $55d4: $3b
	halt                                             ; $55d5: $76
	ld   [bc], a                                     ; $55d6: $02
	dec  hl                                          ; $55d7: $2b
	inc  bc                                          ; $55d8: $03
	or   d                                           ; $55d9: $b2
	ld   a, c                                        ; $55da: $79
	ld   [hl], d                                     ; $55db: $72
	ld   d, d                                        ; $55dc: $52
	ld   [hl], h                                     ; $55dd: $74
	ld   [bc], a                                     ; $55de: $02
	jp   nz, $005d                                   ; $55df: $c2 $5d $00

	ld   bc, $9250                                   ; $55e2: $01 $50 $92
	adc  a                                           ; $55e5: $8f
	ld   a, c                                        ; $55e6: $79
	ld   [hl], d                                     ; $55e7: $72
	ld   d, d                                        ; $55e8: $52
	ld   [hl], h                                     ; $55e9: $74
	ld   [bc], a                                     ; $55ea: $02
	jp   nz, $005d                                   ; $55eb: $c2 $5d $00

	ld   [bc], a                                     ; $55ee: $02
	rlca                                             ; $55ef: $07
	add  $00                                         ; $55f0: $c6 $00
	ld   [bc], a                                     ; $55f2: $02
	inc  bc                                          ; $55f3: $03
	ld   bc, $2000                                   ; $55f4: $01 $00 $20
	nop                                              ; $55f7: $00
	rlca                                             ; $55f8: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55f9: $cf
	ld   bc, $0302                                   ; $55fa: $01 $02 $03
	ld   bc, $2001                                   ; $55fd: $01 $01 $20
	nop                                              ; $5600: $00
	rlca                                             ; $5601: $07
	ld   [hl], e                                     ; $5602: $73
	ld   [bc], a                                     ; $5603: $02
	ld   [bc], a                                     ; $5604: $02
	inc  bc                                          ; $5605: $03
	ld   bc, $2002                                   ; $5606: $01 $02 $20
	nop                                              ; $5609: $00
	ld   b, $9d                                      ; $560a: $06 $9d
	nop                                              ; $560c: $00
	rrca                                             ; $560d: $0f
	ld   [bc], a                                     ; $560e: $02
	nop                                              ; $560f: $00
	ld   bc, $f304                                   ; $5610: $01 $04 $f3
	ld   e, d                                        ; $5613: $5a
	ld   a, b                                        ; $5614: $78
	ld   d, d                                        ; $5615: $52
	ld   a, h                                        ; $5616: $7c
	ld   [hl], l                                     ; $5617: $75
	ld   h, l                                        ; $5618: $65
	ld   l, l                                        ; $5619: $6d
	sub  a                                           ; $561a: $97
	dec  c                                           ; $561b: $0d
	sbc  l                                           ; $561c: $9d
	ld   l, l                                        ; $561d: $6d
	ld   e, l                                        ; $561e: $5d
	ld   h, l                                        ; $561f: $65
	ld   l, a                                        ; $5620: $6f
	sub  l                                           ; $5621: $95
	ld   [hl], c                                     ; $5622: $71
	halt                                             ; $5623: $76
	dec  c                                           ; $5624: $0d
	ld   [bc], a                                     ; $5625: $02
	ld   h, l                                        ; $5626: $65
	ld   d, [hl]                                     ; $5627: $56
	ld   [bc], a                                     ; $5628: $02
	jp   Jump_069_65a0                               ; $5629: $c3 $a0 $65


	ld   [hl], h                                     ; $562c: $74
	adc  h                                           ; $562d: $8c
	ld   h, a                                        ; $562e: $67
	ld   a, h                                        ; $562f: $7c
	ld   [hl], l                                     ; $5630: $75
	sbc  a                                           ; $5631: $9f
	dec  c                                           ; $5632: $0d
	nop                                              ; $5633: $00
	ld   a, [bc]                                     ; $5634: $0a
	nop                                              ; $5635: $00
	rrca                                             ; $5636: $0f
	nop                                              ; $5637: $00
	ld   bc, $6701                                   ; $5638: $01 $01 $67
	adc  l                                           ; $563b: $8d
	sbc  d                                           ; $563c: $9a
	ld   h, e                                        ; $563d: $63
	and  c                                           ; $563e: $a1
	ld   e, c                                        ; $563f: $59
	sub  a                                           ; $5640: $97
	ld   [bc], a                                     ; $5641: $02
	sub  l                                           ; $5642: $95
	ld   [hl], h                                     ; $5643: $74
	sbc  [hl]                                        ; $5644: $9e
	dec  c                                           ; $5645: $0d
	inc  b                                           ; $5646: $04
	ld   l, l                                        ; $5647: $6d
	ld   [hl], c                                     ; $5648: $71
	ld   [hl], h                                     ; $5649: $74
	ld   [hl], a                                     ; $564a: $77
	and  c                                           ; $564b: $a1
	ld   a, b                                        ; $564c: $78
	ld   [bc], a                                     ; $564d: $02
	scf                                              ; $564e: $37
	ld   h, [hl]                                     ; $564f: $66
	ld   [hl], l                                     ; $5650: $75
	ld   h, l                                        ; $5651: $65
	sub  l                                           ; $5652: $95
	ld   d, h                                        ; $5653: $54
	ld   sp, hl                                      ; $5654: $f9
	dec  c                                           ; $5655: $0d
	nop                                              ; $5656: $00
	ld   a, [bc]                                     ; $5657: $0a
	rlca                                             ; $5658: $07
	add  hl, bc                                      ; $5659: $09
	ld   bc, $1203                                   ; $565a: $01 $03 $12
	ld   bc, $25b4                                   ; $565d: $01 $b4 $25
	nop                                              ; $5660: $00
	rlca                                             ; $5661: $07
	ld   d, b                                        ; $5662: $50
	ld   bc, $1203                                   ; $5663: $01 $03 $12
	ld   bc, $2597                                   ; $5666: $01 $97 $25
	inc  bc                                          ; $5669: $03
	ld   [de], a                                     ; $566a: $12
	ld   bc, $23b3                                   ; $566b: $01 $b3 $23
	inc  e                                           ; $566e: $1c
	nop                                              ; $566f: $00
	rlca                                             ; $5670: $07
	adc  h                                           ; $5671: $8c
	ld   bc, $1503                                   ; $5672: $01 $03 $15
	ld   bc, $2396                                   ; $5675: $01 $96 $23
	nop                                              ; $5678: $00
	inc  e                                           ; $5679: $1c
	ld   [bc], a                                     ; $567a: $02
	inc  b                                           ; $567b: $04
	inc  b                                           ; $567c: $04
	ld   bc, $546b                                   ; $567d: $01 $6b $54
	ld   [hl], l                                     ; $5680: $75
	ld   h, a                                        ; $5681: $67
	sbc  l                                           ; $5682: $9d
	ld   a, e                                        ; $5683: $7b
	rst  $38                                         ; $5684: $ff
	rst  $38                                         ; $5685: $ff
	dec  c                                           ; $5686: $0d
	adc  h                                           ; $5687: $8c
	sbc  [hl]                                        ; $5688: $9e
	ld   a, b                                        ; $5689: $78
	ld   e, c                                        ; $568a: $59
	ld   a, b                                        ; $568b: $78
	ld   e, c                                        ; $568c: $59
	ld   [bc], a                                     ; $568d: $02
	jr   z, jr_069_56ed                              ; $568e: $28 $5d

	ld   a, l                                        ; $5690: $7d
	ld   a, b                                        ; $5691: $78
	ld   d, d                                        ; $5692: $52
	halt                                             ; $5693: $76
	dec  c                                           ; $5694: $0d
	dec  b                                           ; $5695: $05
	pop  de                                          ; $5696: $d1
	ld   d, d                                        ; $5697: $52
	adc  h                                           ; $5698: $8c
	ld   h, a                                        ; $5699: $67
	sbc  l                                           ; $569a: $9d
	sbc  a                                           ; $569b: $9f
	dec  c                                           ; $569c: $0d
	nop                                              ; $569d: $00
	ld   a, [bc]                                     ; $569e: $0a
	ld   bc, $7d75                                   ; $569f: $01 $75 $7d
	sbc  [hl]                                        ; $56a2: $9e
	sbc  l                                           ; $56a3: $9d
	ld   l, l                                        ; $56a4: $6d
	ld   e, l                                        ; $56a5: $5d
	ld   h, l                                        ; $56a6: $65
	sbc  [hl]                                        ; $56a7: $9e
	ld   l, a                                        ; $56a8: $6f
	sub  l                                           ; $56a9: $95
	ld   [hl], c                                     ; $56aa: $71
	halt                                             ; $56ab: $76
	dec  c                                           ; $56ac: $0d
	ld   [bc], a                                     ; $56ad: $02
	ld   h, l                                        ; $56ae: $65
	ld   d, [hl]                                     ; $56af: $56
	ld   [bc], a                                     ; $56b0: $02
	jp   Jump_069_65a0                               ; $56b1: $c3 $a0 $65


	ld   [hl], h                                     ; $56b4: $74
	ld   e, b                                        ; $56b5: $58
	sbc  b                                           ; $56b6: $98
	adc  h                                           ; $56b7: $8c
	ld   h, a                                        ; $56b8: $67
	ld   a, h                                        ; $56b9: $7c
	ld   [hl], l                                     ; $56ba: $75
	sbc  a                                           ; $56bb: $9f
	dec  c                                           ; $56bc: $0d
	nop                                              ; $56bd: $00
	ld   a, [bc]                                     ; $56be: $0a
	nop                                              ; $56bf: $00
	inc  e                                           ; $56c0: $1c
	ld   [bc], a                                     ; $56c1: $02
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	ld   bc, $5404                                   ; $56c4: $01 $04 $54
	ld   a, c                                        ; $56c7: $79
	ld   [hl], a                                     ; $56c8: $77
	ld   d, h                                        ; $56c9: $54
	halt                                             ; $56ca: $76
	ld   d, d                                        ; $56cb: $52
	ld   d, h                                        ; $56cc: $54
	ld   h, c                                        ; $56cd: $61
	halt                                             ; $56ce: $76
	ld   a, l                                        ; $56cf: $7d
	dec  c                                           ; $56d0: $0d
	ld   d, b                                        ; $56d1: $50
	sbc  b                                           ; $56d2: $98
	adc  h                                           ; $56d3: $8c
	ld   l, c                                        ; $56d4: $69
	and  c                                           ; $56d5: $a1
	sbc  l                                           ; $56d6: $9d
	sbc  a                                           ; $56d7: $9f
	dec  c                                           ; $56d8: $0d
	nop                                              ; $56d9: $00
	ld   a, [bc]                                     ; $56da: $0a
	ld   bc, $7d75                                   ; $56db: $01 $75 $7d
	sbc  [hl]                                        ; $56de: $9e
	sbc  l                                           ; $56df: $9d
	ld   l, l                                        ; $56e0: $6d
	ld   e, l                                        ; $56e1: $5d
	ld   h, l                                        ; $56e2: $65
	sbc  [hl]                                        ; $56e3: $9e
	ld   l, a                                        ; $56e4: $6f
	sub  l                                           ; $56e5: $95
	ld   [hl], c                                     ; $56e6: $71
	halt                                             ; $56e7: $76
	dec  c                                           ; $56e8: $0d
	ld   [bc], a                                     ; $56e9: $02
	ld   h, l                                        ; $56ea: $65
	ld   d, [hl]                                     ; $56eb: $56
	ld   [bc], a                                     ; $56ec: $02

jr_069_56ed:
	jp   Jump_069_65a0                               ; $56ed: $c3 $a0 $65


	ld   [hl], h                                     ; $56f0: $74
	ld   e, b                                        ; $56f1: $58
	sbc  b                                           ; $56f2: $98
	adc  h                                           ; $56f3: $8c
	ld   h, a                                        ; $56f4: $67
	ld   a, h                                        ; $56f5: $7c
	ld   [hl], l                                     ; $56f6: $75
	sbc  a                                           ; $56f7: $9f
	dec  c                                           ; $56f8: $0d
	nop                                              ; $56f9: $00
	ld   a, [bc]                                     ; $56fa: $0a
	nop                                              ; $56fb: $00
	inc  e                                           ; $56fc: $1c
	ld   [bc], a                                     ; $56fd: $02
	inc  bc                                          ; $56fe: $03
	inc  bc                                          ; $56ff: $03
	ld   bc, $0d04                                   ; $5700: $01 $04 $0d
	ld   [bc], a                                     ; $5703: $02
	sub  [hl]                                        ; $5704: $96
	inc  b                                           ; $5705: $04
	ld   b, l                                        ; $5706: $45
	inc  b                                           ; $5707: $04
	ld   a, [bc]                                     ; $5708: $0a
	inc  b                                           ; $5709: $04
	dec  bc                                          ; $570a: $0b
	ld   a, h                                        ; $570b: $7c
	dec  c                                           ; $570c: $0d
	inc  bc                                          ; $570d: $03
	add  c                                           ; $570e: $81
	inc  bc                                          ; $570f: $03
	add  d                                           ; $5710: $82
	ld   h, e                                        ; $5711: $63
	and  c                                           ; $5712: $a1
	ld   [hl], l                                     ; $5713: $75
	ld   h, l                                        ; $5714: $65
	sub  l                                           ; $5715: $95
	ld   sp, hl                                      ; $5716: $f9
	dec  c                                           ; $5717: $0d
	nop                                              ; $5718: $00
	ld   a, [bc]                                     ; $5719: $0a
	inc  e                                           ; $571a: $1c
	ld   [bc], a                                     ; $571b: $02
	rlca                                             ; $571c: $07
	rlca                                             ; $571d: $07
	ld   bc, $7d75                                   ; $571e: $01 $75 $7d
	sbc  [hl]                                        ; $5721: $9e
	sbc  l                                           ; $5722: $9d
	ld   l, l                                        ; $5723: $6d
	ld   e, l                                        ; $5724: $5d
	ld   h, l                                        ; $5725: $65
	sbc  [hl]                                        ; $5726: $9e
	ld   l, a                                        ; $5727: $6f
	sub  l                                           ; $5728: $95
	ld   [hl], c                                     ; $5729: $71
	halt                                             ; $572a: $76
	dec  c                                           ; $572b: $0d
	ld   [bc], a                                     ; $572c: $02
	ld   h, l                                        ; $572d: $65
	ld   d, [hl]                                     ; $572e: $56
	ld   [bc], a                                     ; $572f: $02
	jp   Jump_069_65a0                               ; $5730: $c3 $a0 $65


	ld   [hl], h                                     ; $5733: $74
	ld   e, b                                        ; $5734: $58
	sbc  b                                           ; $5735: $98
	adc  h                                           ; $5736: $8c
	ld   h, a                                        ; $5737: $67
	ld   a, h                                        ; $5738: $7c
	ld   [hl], l                                     ; $5739: $75
	sbc  a                                           ; $573a: $9f
	dec  c                                           ; $573b: $0d
	nop                                              ; $573c: $00
	ld   a, [bc]                                     ; $573d: $0a
	nop                                              ; $573e: $00
	rrca                                             ; $573f: $0f
	nop                                              ; $5740: $00
	ld   bc, $6701                                   ; $5741: $01 $01 $67
	adc  l                                           ; $5744: $8d
	sbc  d                                           ; $5745: $9a
	ld   h, e                                        ; $5746: $63
	and  c                                           ; $5747: $a1
	ld   [hl], h                                     ; $5748: $74
	dec  c                                           ; $5749: $0d
	ld   e, b                                        ; $574a: $58
	ld   [bc], a                                     ; $574b: $02
	dec  sp                                          ; $574c: $3b
	halt                                             ; $574d: $76
	ld   [bc], a                                     ; $574e: $02
	dec  hl                                          ; $574f: $2b
	inc  bc                                          ; $5750: $03
	or   d                                           ; $5751: $b2
	ld   [hl], a                                     ; $5752: $77
	ld   l, a                                        ; $5753: $6f
	sub  a                                           ; $5754: $97
	ld   e, d                                        ; $5755: $5a
	inc  b                                           ; $5756: $04
	ld   c, $03                                      ; $5757: $0e $03
	dec  de                                          ; $5759: $1b
	dec  c                                           ; $575a: $0d
	ld   l, [hl]                                     ; $575b: $6e
	halt                                             ; $575c: $76
	dec  b                                           ; $575d: $05
	pop  de                                          ; $575e: $d1
	ld   d, d                                        ; $575f: $52
	adc  h                                           ; $5760: $8c
	ld   h, a                                        ; $5761: $67
	ld   e, c                                        ; $5762: $59
	ld   sp, hl                                      ; $5763: $f9
	dec  c                                           ; $5764: $0d
	nop                                              ; $5765: $00
	ld   a, [bc]                                     ; $5766: $0a
	inc  e                                           ; $5767: $1c
	ld   [bc], a                                     ; $5768: $02
	nop                                              ; $5769: $00
	nop                                              ; $576a: $00
	ld   bc, $546b                                   ; $576b: $01 $6b $54
	ld   [hl], l                                     ; $576e: $75
	ld   h, a                                        ; $576f: $67
	sbc  l                                           ; $5770: $9d
	ld   a, e                                        ; $5771: $7b
	rst  $38                                         ; $5772: $ff
	rst  $38                                         ; $5773: $ff
	dec  c                                           ; $5774: $0d
	ld   e, b                                        ; $5775: $58
	ld   [bc], a                                     ; $5776: $02
	dec  sp                                          ; $5777: $3b
	ld   a, b                                        ; $5778: $78
	and  c                                           ; $5779: $a1
	ld   [hl], h                                     ; $577a: $74
	ld   a, l                                        ; $577b: $7d
	ld   d, d                                        ; $577c: $52
	ld   [hl], h                                     ; $577d: $74
	inc  bc                                          ; $577e: $03
	ld   a, [hl-]                                    ; $577f: $3a
	ld   [hl], h                                     ; $5780: $74
	sbc  c                                           ; $5781: $99
	adc  c                                           ; $5782: $89
	ld   [hl], a                                     ; $5783: $77
	dec  c                                           ; $5784: $0d
	ld   d, b                                        ; $5785: $50
	sbc  b                                           ; $5786: $98
	adc  h                                           ; $5787: $8c
	ld   h, a                                        ; $5788: $67
	sub  b                                           ; $5789: $90
	ld   a, h                                        ; $578a: $7c
	rst  $38                                         ; $578b: $ff
	rst  $38                                         ; $578c: $ff
	dec  c                                           ; $578d: $0d
	nop                                              ; $578e: $00
	ld   a, [bc]                                     ; $578f: $0a
	inc  e                                           ; $5790: $1c
	ld   [bc], a                                     ; $5791: $02
	ld   bc, $0101                                   ; $5792: $01 $01 $01
	ld   e, b                                        ; $5795: $58
	ld   [bc], a                                     ; $5796: $02
	dec  sp                                          ; $5797: $3b
	ld   [hl], l                                     ; $5798: $75
	inc  b                                           ; $5799: $04
	adc  l                                           ; $579a: $8d
	ld   d, [hl]                                     ; $579b: $56
	ld   a, b                                        ; $579c: $78
	ld   d, d                                        ; $579d: $52
	sub  b                                           ; $579e: $90
	ld   a, h                                        ; $579f: $7c
	ld   a, c                                        ; $57a0: $79
	ld   h, c                                        ; $57a1: $61
	ld   l, e                                        ; $57a2: $6b
	dec  c                                           ; $57a3: $0d
	inc  b                                           ; $57a4: $04
	adc  a                                           ; $57a5: $8f
	inc  b                                           ; $57a6: $04
	jr   jr_069_5825                                 ; $57a7: $18 $7c

	ld   e, c                                        ; $57a9: $59
	ld   l, a                                        ; $57aa: $6f
	ld   e, d                                        ; $57ab: $5a
	ld   d, b                                        ; $57ac: $50
	sbc  c                                           ; $57ad: $99
	ld   a, h                                        ; $57ae: $7c
	ld   h, [hl]                                     ; $57af: $66
	sub  c                                           ; $57b0: $91
	dec  c                                           ; $57b1: $0d
	ld   d, b                                        ; $57b2: $50
	sbc  b                                           ; $57b3: $98
	adc  h                                           ; $57b4: $8c
	ld   l, c                                        ; $57b5: $69
	and  c                                           ; $57b6: $a1
	ld   e, c                                        ; $57b7: $59
	ld   h, l                                        ; $57b8: $65
	sub  a                                           ; $57b9: $97
	ld   sp, hl                                      ; $57ba: $f9
	dec  c                                           ; $57bb: $0d
	nop                                              ; $57bc: $00
	ld   a, [bc]                                     ; $57bd: $0a
	inc  e                                           ; $57be: $1c
	ld   [bc], a                                     ; $57bf: $02
	nop                                              ; $57c0: $00
	nop                                              ; $57c1: $00
	ld   bc, $7d75                                   ; $57c2: $01 $75 $7d
	sbc  [hl]                                        ; $57c5: $9e
	sbc  l                                           ; $57c6: $9d
	ld   l, l                                        ; $57c7: $6d
	ld   e, l                                        ; $57c8: $5d
	ld   h, l                                        ; $57c9: $65
	sbc  [hl]                                        ; $57ca: $9e
	ld   l, a                                        ; $57cb: $6f
	sub  l                                           ; $57cc: $95
	ld   [hl], c                                     ; $57cd: $71
	halt                                             ; $57ce: $76
	dec  c                                           ; $57cf: $0d
	ld   [bc], a                                     ; $57d0: $02
	ld   h, l                                        ; $57d1: $65
	ld   d, [hl]                                     ; $57d2: $56
	ld   [bc], a                                     ; $57d3: $02
	jp   Jump_069_65a0                               ; $57d4: $c3 $a0 $65


	ld   [hl], h                                     ; $57d7: $74
	ld   e, b                                        ; $57d8: $58
	sbc  b                                           ; $57d9: $98
	adc  h                                           ; $57da: $8c
	ld   h, a                                        ; $57db: $67
	ld   a, h                                        ; $57dc: $7c
	ld   [hl], l                                     ; $57dd: $75
	sbc  a                                           ; $57de: $9f
	dec  c                                           ; $57df: $0d
	nop                                              ; $57e0: $00
	ld   a, [bc]                                     ; $57e1: $0a
	nop                                              ; $57e2: $00
	rrca                                             ; $57e3: $0f
	nop                                              ; $57e4: $00
	ld   bc, $5001                                   ; $57e5: $01 $01 $50
	sub  d                                           ; $57e8: $92
	adc  a                                           ; $57e9: $8f
	ld   h, e                                        ; $57ea: $63
	and  c                                           ; $57eb: $a1
	ld   [hl], h                                     ; $57ec: $74
	sbc  [hl]                                        ; $57ed: $9e
	ld   h, a                                        ; $57ee: $67
	adc  l                                           ; $57ef: $8d
	sbc  d                                           ; $57f0: $9a
	ld   h, e                                        ; $57f1: $63
	and  c                                           ; $57f2: $a1
	ld   e, c                                        ; $57f3: $59
	sub  a                                           ; $57f4: $97
	dec  c                                           ; $57f5: $0d
	ld   [bc], a                                     ; $57f6: $02
	sub  l                                           ; $57f7: $95
	ld   [hl], h                                     ; $57f8: $74
	sbc  [hl]                                        ; $57f9: $9e
	ld   [hl], a                                     ; $57fa: $77
	and  c                                           ; $57fb: $a1
	ld   a, b                                        ; $57fc: $78
	inc  b                                           ; $57fd: $04
	ld   a, b                                        ; $57fe: $78
	ld   [hl], l                                     ; $57ff: $75
	ld   h, a                                        ; $5800: $67
	ld   e, c                                        ; $5801: $59
	ld   sp, hl                                      ; $5802: $f9
	dec  c                                           ; $5803: $0d
	nop                                              ; $5804: $00
	ld   a, [bc]                                     ; $5805: $0a
	rrca                                             ; $5806: $0f
	ld   [bc], a                                     ; $5807: $02
	nop                                              ; $5808: $00
	ld   bc, $9250                                   ; $5809: $01 $50 $92
	adc  a                                           ; $580c: $8f
	ld   h, e                                        ; $580d: $63
	and  c                                           ; $580e: $a1
	rst  $38                                         ; $580f: $ff
	rst  $38                                         ; $5810: $ff
	ld   [hl], l                                     ; $5811: $75
	ld   h, a                                        ; $5812: $67
	ld   a, h                                        ; $5813: $7c
	ld   sp, hl                                      ; $5814: $f9
	dec  c                                           ; $5815: $0d
	ld   l, e                                        ; $5816: $6b
	ld   d, h                                        ; $5817: $54
	ld   [hl], l                                     ; $5818: $75
	ld   h, a                                        ; $5819: $67
	sbc  l                                           ; $581a: $9d
	ld   a, e                                        ; $581b: $7b
	sbc  [hl]                                        ; $581c: $9e
	inc  b                                           ; $581d: $04
	ld   d, b                                        ; $581e: $50
	ld   l, e                                        ; $581f: $6b
	ld   d, h                                        ; $5820: $54
	ld   e, b                                        ; $5821: $58
	ld   d, h                                        ; $5822: $54
	ld   a, c                                        ; $5823: $79
	dec  c                                           ; $5824: $0d

jr_069_5825:
	dec  b                                           ; $5825: $05
	ld   [de], a                                     ; $5826: $12
	ld   l, a                                        ; $5827: $6f
	inc  b                                           ; $5828: $04
	rlca                                             ; $5829: $07
	ld   d, d                                        ; $582a: $52
	ld   l, l                                        ; $582b: $6d
	inc  b                                           ; $582c: $04
	ld   a, b                                        ; $582d: $78
	ld   [hl], l                                     ; $582e: $75
	ld   h, a                                        ; $582f: $67
	sbc  l                                           ; $5830: $9d
	ld   a, e                                        ; $5831: $7b
	sbc  a                                           ; $5832: $9f
	dec  c                                           ; $5833: $0d
	nop                                              ; $5834: $00
	ld   a, [bc]                                     ; $5835: $0a
	ld   de, $0100                                   ; $5836: $11 $00 $01
	ld   h, l                                        ; $5839: $65
	ld   [hl], c                                     ; $583a: $71
	ld   e, c                                        ; $583b: $59
	sbc  b                                           ; $583c: $98
	ld   h, l                                        ; $583d: $65
	ld   [hl], h                                     ; $583e: $74
	adc  h                                           ; $583f: $8c
	ld   h, a                                        ; $5840: $67
	ld   h, l                                        ; $5841: $65
	sbc  [hl]                                        ; $5842: $9e
	dec  c                                           ; $5843: $0d
	ld   d, d                                        ; $5844: $52
	ld   [hl], d                                     ; $5845: $72
	sub  b                                           ; $5846: $90
	adc  l                                           ; $5847: $8d
	and  c                                           ; $5848: $a1
	ld   a, b                                        ; $5849: $78
	and  b                                           ; $584a: $a0
	ld   [bc], a                                     ; $584b: $02
	sub  l                                           ; $584c: $95
	ld   [hl], h                                     ; $584d: $74
	adc  h                                           ; $584e: $8c
	ld   h, a                                        ; $584f: $67
	ld   h, l                                        ; $5850: $65
	sbc  [hl]                                        ; $5851: $9e
	dec  c                                           ; $5852: $0d
	ld   a, b                                        ; $5853: $78
	ld   e, c                                        ; $5854: $59
	ld   a, b                                        ; $5855: $78
	ld   e, c                                        ; $5856: $59
	dec  b                                           ; $5857: $05
	inc  bc                                          ; $5858: $03
	sbc  b                                           ; $5859: $98
	ld   a, c                                        ; $585a: $79
	ld   a, b                                        ; $585b: $78
	sbc  c                                           ; $585c: $99
	inc  b                                           ; $585d: $04
	ld   a, b                                        ; $585e: $78
	ld   [hl], l                                     ; $585f: $75
	ld   h, a                                        ; $5860: $67
	sbc  l                                           ; $5861: $9d
	sbc  a                                           ; $5862: $9f
	dec  c                                           ; $5863: $0d
	nop                                              ; $5864: $00
	ld   a, [bc]                                     ; $5865: $0a
	ld   de, $01ff                                   ; $5866: $11 $ff $01
	adc  h                                           ; $5869: $8c
	sbc  [hl]                                        ; $586a: $9e
	sbc  l                                           ; $586b: $9d
	ld   e, d                                        ; $586c: $5a
	adc  h                                           ; $586d: $8c
	adc  h                                           ; $586e: $8c
	inc  bc                                          ; $586f: $03
	or   b                                           ; $5870: $b0
	ld   a, h                                        ; $5871: $7c
	inc  b                                           ; $5872: $04
	rrca                                             ; $5873: $0f
	ld   d, d                                        ; $5874: $52
	dec  c                                           ; $5875: $0d
	ld   h, c                                        ; $5876: $61
	ld   a, h                                        ; $5877: $7c
	ld   [bc], a                                     ; $5878: $02
	sbc  b                                           ; $5879: $98
	inc  bc                                          ; $587a: $03
	nop                                              ; $587b: $00
	ld   a, c                                        ; $587c: $79
	ld   a, l                                        ; $587d: $7d
	sbc  [hl]                                        ; $587e: $9e
	ld   a, b                                        ; $587f: $78
	ld   e, l                                        ; $5880: $5d
	ld   [hl], h                                     ; $5881: $74
	ld   a, l                                        ; $5882: $7d
	dec  c                                           ; $5883: $0d
	ld   a, b                                        ; $5884: $78
	sub  a                                           ; $5885: $97
	ld   a, b                                        ; $5886: $78
	ld   d, d                                        ; $5887: $52
	inc  b                                           ; $5888: $04
	ld   a, b                                        ; $5889: $78
	ld   [hl], l                                     ; $588a: $75
	ld   h, a                                        ; $588b: $67
	sbc  l                                           ; $588c: $9d
	ld   a, e                                        ; $588d: $7b
	sbc  a                                           ; $588e: $9f
	dec  c                                           ; $588f: $0d
	nop                                              ; $5890: $00
	ld   a, [bc]                                     ; $5891: $0a
	ld   bc, $7d75                                   ; $5892: $01 $75 $7d
	sbc  [hl]                                        ; $5895: $9e
	sbc  l                                           ; $5896: $9d
	ld   l, l                                        ; $5897: $6d
	ld   e, l                                        ; $5898: $5d
	ld   h, l                                        ; $5899: $65
	sbc  [hl]                                        ; $589a: $9e
	ld   l, a                                        ; $589b: $6f
	sub  l                                           ; $589c: $95
	ld   [hl], c                                     ; $589d: $71
	halt                                             ; $589e: $76
	dec  c                                           ; $589f: $0d
	ld   [bc], a                                     ; $58a0: $02
	ld   h, l                                        ; $58a1: $65
	ld   d, [hl]                                     ; $58a2: $56
	ld   [bc], a                                     ; $58a3: $02
	jp   Jump_069_65a0                               ; $58a4: $c3 $a0 $65


	ld   [hl], h                                     ; $58a7: $74
	ld   e, b                                        ; $58a8: $58
	sbc  b                                           ; $58a9: $98
	adc  h                                           ; $58aa: $8c
	ld   h, a                                        ; $58ab: $67
	ld   a, h                                        ; $58ac: $7c
	ld   [hl], l                                     ; $58ad: $75
	sbc  a                                           ; $58ae: $9f
	dec  c                                           ; $58af: $0d
	nop                                              ; $58b0: $00
	ld   a, [bc]                                     ; $58b1: $0a
	nop                                              ; $58b2: $00
	nop                                              ; $58b3: $00
	ld   c, $1d                                      ; $58b4: $0e $1d
	rrca                                             ; $58b6: $0f
	nop                                              ; $58b7: $00
	ld   bc, $0102                                   ; $58b8: $01 $02 $01
	xor  h                                           ; $58bb: $ac
	push af                                          ; $58bc: $f5
	bit  4, e                                        ; $58bd: $cb $63
	and  c                                           ; $58bf: $a1
	sbc  a                                           ; $58c0: $9f
	dec  c                                           ; $58c1: $0d
	inc  b                                           ; $58c2: $04
	ld   c, c                                        ; $58c3: $49
	and  b                                           ; $58c4: $a0
	ld   h, l                                        ; $58c5: $65
	ld   [hl], h                                     ; $58c6: $74
	sbc  c                                           ; $58c7: $99
	and  c                                           ; $58c8: $a1
	ld   [hl], l                                     ; $58c9: $75
	ld   h, a                                        ; $58ca: $67
	ld   e, c                                        ; $58cb: $59
	ld   sp, hl                                      ; $58cc: $f9
	dec  c                                           ; $58cd: $0d
	nop                                              ; $58ce: $00
	ld   a, [bc]                                     ; $58cf: $0a
	inc  e                                           ; $58d0: $1c
	ld   b, $00                                      ; $58d1: $06 $00
	nop                                              ; $58d3: $00
	ld   bc, $f9a1                                   ; $58d4: $01 $a1 $f9
	dec  c                                           ; $58d7: $0d
	ld   [$5900], sp                                 ; $58d8: $08 $00 $59
	rst  $38                                         ; $58db: $ff
	rst  $38                                         ; $58dc: $ff
	dec  c                                           ; $58dd: $0d
	nop                                              ; $58de: $00
	ld   a, [bc]                                     ; $58df: $0a
	ld   bc, $5272                                   ; $58e0: $01 $72 $52
	ld   a, c                                        ; $58e3: $79
	dec  b                                           ; $58e4: $05
	db   $10                                         ; $58e5: $10
	inc  bc                                          ; $58e6: $03
	ld   a, c                                        ; $58e7: $79
	ld   e, c                                        ; $58e8: $59
	sub  a                                           ; $58e9: $97
	ld   [bc], a                                     ; $58ea: $02
	sbc  c                                           ; $58eb: $99
	ld   [bc], a                                     ; $58ec: $02
	rra                                              ; $58ed: $1f
	ld   a, b                                        ; $58ee: $78
	and  c                                           ; $58ef: $a1
	ld   l, [hl]                                     ; $58f0: $6e
	dec  c                                           ; $58f1: $0d
	ld   [hl], c                                     ; $58f2: $71
	ld   [hl], h                                     ; $58f3: $74
	dec  b                                           ; $58f4: $05
	pop  de                                          ; $58f5: $d1
	ld   [hl], c                                     ; $58f6: $71
	ld   [hl], h                                     ; $58f7: $74
	ld   a, e                                        ; $58f8: $7b
	rst  $38                                         ; $58f9: $ff
	rst  $38                                         ; $58fa: $ff
	dec  c                                           ; $58fb: $0d
	nop                                              ; $58fc: $00
	ld   a, [bc]                                     ; $58fd: $0a
	add  hl, de                                      ; $58fe: $19
	dec  b                                           ; $58ff: $05
	inc  bc                                          ; $5900: $03
	ld   e, b                                        ; $5901: $58
	ld   d, h                                        ; $5902: $54
	ld   d, [hl]                                     ; $5903: $56
	and  c                                           ; $5904: $a1
	ld   h, a                                        ; $5905: $67
	sbc  c                                           ; $5906: $99
	nop                                              ; $5907: $00
	nop                                              ; $5908: $00
	inc  bc                                          ; $5909: $03
	ld   [hl], l                                     ; $590a: $75
	inc  b                                           ; $590b: $04
	xor  e                                           ; $590c: $ab
	ld   h, a                                        ; $590d: $67
	sbc  c                                           ; $590e: $99
	nop                                              ; $590f: $00
	ld   bc, $8e04                                   ; $5910: $01 $04 $8e
	inc  b                                           ; $5913: $04
	inc  c                                           ; $5914: $0c
	ld   a, c                                        ; $5915: $79
	inc  b                                           ; $5916: $04
	dec  b                                           ; $5917: $05
	ld   h, a                                        ; $5918: $67
	sbc  c                                           ; $5919: $99
	inc  bc                                          ; $591a: $03
	ld   a, [de]                                     ; $591b: $1a
	ld   d, d                                        ; $591c: $52
	and  b                                           ; $591d: $a0
	ld   [bc], a                                     ; $591e: $02
	jp   nz, $005d                                   ; $591f: $c2 $5d $00

	ld   [bc], a                                     ; $5922: $02
	rlca                                             ; $5923: $07
	adc  l                                           ; $5924: $8d
	nop                                              ; $5925: $00
	ld   [bc], a                                     ; $5926: $02
	inc  bc                                          ; $5927: $03
	ld   bc, $2000                                   ; $5928: $01 $00 $20
	nop                                              ; $592b: $00
	rlca                                             ; $592c: $07
	dec  c                                           ; $592d: $0d
	ld   bc, $0302                                   ; $592e: $01 $02 $03
	ld   bc, $2001                                   ; $5931: $01 $01 $20
	nop                                              ; $5934: $00
	rlca                                             ; $5935: $07
	xor  l                                           ; $5936: $ad
	ld   bc, $0302                                   ; $5937: $01 $02 $03
	ld   bc, $2002                                   ; $593a: $01 $02 $20
	nop                                              ; $593d: $00
	ld   b, $8f                                      ; $593e: $06 $8f
	ld   bc, $000f                                   ; $5940: $01 $0f $00
	ld   bc, $ac01                                   ; $5943: $01 $01 $ac
	push af                                          ; $5946: $f5
	bit  4, e                                        ; $5947: $cb $63
	and  c                                           ; $5949: $a1
	sbc  a                                           ; $594a: $9f
	dec  c                                           ; $594b: $0d
	dec  b                                           ; $594c: $05
	inc  de                                          ; $594d: $13
	ld   h, l                                        ; $594e: $65
	ld   d, d                                        ; $594f: $52
	inc  b                                           ; $5950: $04
	adc  [hl]                                        ; $5951: $8e
	inc  b                                           ; $5952: $04
	inc  c                                           ; $5953: $0c
	sbc  [hl]                                        ; $5954: $9e
	ld   [bc], a                                     ; $5955: $02
	pop  bc                                          ; $5956: $c1
	inc  b                                           ; $5957: $04
	rla                                              ; $5958: $17
	ld   h, l                                        ; $5959: $65
	ld   [hl], h                                     ; $595a: $74
	adc  h                                           ; $595b: $8c
	ld   h, a                                        ; $595c: $67
	sbc  a                                           ; $595d: $9f
	dec  c                                           ; $595e: $0d
	ld   e, d                                        ; $595f: $5a
	and  c                                           ; $5960: $a1
	ld   a, [hl]                                     ; $5961: $7e
	ld   [hl], c                                     ; $5962: $71
	ld   [hl], h                                     ; $5963: $74
	ld   e, l                                        ; $5964: $5d
	ld   l, [hl]                                     ; $5965: $6e
	ld   h, e                                        ; $5966: $63
	ld   d, d                                        ; $5967: $52
	sbc  a                                           ; $5968: $9f
	dec  c                                           ; $5969: $0d
	nop                                              ; $596a: $00
	ld   a, [bc]                                     ; $596b: $0a
	inc  e                                           ; $596c: $1c
	ld   b, $07                                      ; $596d: $06 $07
	rlca                                             ; $596f: $07
	dec  e                                           ; $5970: $1d
	ld   b, b                                        ; $5971: $40
	ld   d, $03                                      ; $5972: $16 $03
	ld   d, $01                                      ; $5974: $16 $01
	ld   [bc], a                                     ; $5976: $02
	jr   z, jr_069_5979                              ; $5977: $28 $00

jr_069_5979:
	ld   bc, $f5b6                                   ; $5979: $01 $b6 $f5

Jump_069_597c:
	xor  [hl]                                        ; $597c: $ae
	rst  $20                                         ; $597d: $e7
	ei                                               ; $597e: $fb
	sbc  a                                           ; $597f: $9f
	ld   [$9f00], sp                                 ; $5980: $08 $00 $9f
	dec  c                                           ; $5983: $0d
	ld   e, d                                        ; $5984: $5a
	and  c                                           ; $5985: $a1
	ld   a, [hl]                                     ; $5986: $7e
	sbc  c                                           ; $5987: $99
	ld   l, d                                        ; $5988: $6a
	sbc  a                                           ; $5989: $9f
	dec  c                                           ; $598a: $0d
	and  c                                           ; $598b: $a1
	db   $fc                                         ; $598c: $fc
	sbc  [hl]                                        ; $598d: $9e
	ld   [bc], a                                     ; $598e: $02
	and  c                                           ; $598f: $a1
	ld   [bc], a                                     ; $5990: $02
	ld   a, e                                        ; $5991: $7b
	ld   d, d                                        ; $5992: $52
	ld   e, d                                        ; $5993: $5a
	inc  bc                                          ; $5994: $03
	cp   c                                           ; $5995: $b9
	ld   [hl], c                                     ; $5996: $71
	ld   [hl], h                                     ; $5997: $74
	ld   e, e                                        ; $5998: $5b
	ld   l, l                                        ; $5999: $6d
	ld   a, [$000d]                                  ; $599a: $fa $0d $00
	ld   a, [bc]                                     ; $599d: $0a
	inc  e                                           ; $599e: $1c
	ld   b, $01                                      ; $599f: $06 $01
	ld   bc, $6601                                   ; $59a1: $01 $01 $66
	sub  c                                           ; $59a4: $91
	sbc  [hl]                                        ; $59a5: $9e
	ld   d, b                                        ; $59a6: $50
	ld   l, l                                        ; $59a7: $6d
	ld   d, d                                        ; $59a8: $52
	sbc  [hl]                                        ; $59a9: $9e
	inc  b                                           ; $59aa: $04
	ld   b, d                                        ; $59ab: $42
	sbc  c                                           ; $59ac: $99
	sbc  l                                           ; $59ad: $9d
	sbc  a                                           ; $59ae: $9f
	dec  c                                           ; $59af: $0d
	ld   e, b                                        ; $59b0: $58
	sub  d                                           ; $59b1: $92
	ld   h, a                                        ; $59b2: $67
	adc  l                                           ; $59b3: $8d
	sbc  a                                           ; $59b4: $9f
	dec  c                                           ; $59b5: $0d
	nop                                              ; $59b6: $00
	ld   a, [bc]                                     ; $59b7: $0a
	dec  c                                           ; $59b8: $0d
	nop                                              ; $59b9: $00
	nop                                              ; $59ba: $00
	rrca                                             ; $59bb: $0f
	nop                                              ; $59bc: $00
	ld   bc, $1e09                                   ; $59bd: $01 $09 $1e
	nop                                              ; $59c0: $00
	rrca                                             ; $59c1: $0f
	nop                                              ; $59c2: $00
	ld   bc, $5d01                                   ; $59c3: $01 $01 $5d
	sbc  d                                           ; $59c6: $9a
	ld   e, [hl]                                     ; $59c7: $5e
	sbc  d                                           ; $59c8: $9a
	sub  b                                           ; $59c9: $90
	inc  b                                           ; $59ca: $04
	adc  [hl]                                        ; $59cb: $8e
	inc  b                                           ; $59cc: $04
	inc  c                                           ; $59cd: $0c
	ld   h, c                                        ; $59ce: $61
	sbc  l                                           ; $59cf: $9d
	ld   h, e                                        ; $59d0: $63
	ld   a, b                                        ; $59d1: $78
	ld   d, d                                        ; $59d2: $52
	ld   [hl], l                                     ; $59d3: $75
	dec  c                                           ; $59d4: $0d
	ld   e, l                                        ; $59d5: $5d
	ld   l, [hl]                                     ; $59d6: $6e
	ld   h, e                                        ; $59d7: $63
	ld   d, d                                        ; $59d8: $52
	ld   a, e                                        ; $59d9: $7b
	sbc  a                                           ; $59da: $9f
	dec  c                                           ; $59db: $0d
	inc  b                                           ; $59dc: $04
	ld   l, l                                        ; $59dd: $6d
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	sbc  [hl]                                        ; $59e0: $9e
	inc  bc                                          ; $59e1: $03
	ld   [hl], l                                     ; $59e2: $75
	inc  b                                           ; $59e3: $04
	xor  e                                           ; $59e4: $ab
	ld   [hl], l                                     ; $59e5: $75
	ld   h, a                                        ; $59e6: $67
	sub  [hl]                                        ; $59e7: $96
	sbc  a                                           ; $59e8: $9f
	dec  c                                           ; $59e9: $0d
	nop                                              ; $59ea: $00
	ld   a, [bc]                                     ; $59eb: $0a
	inc  e                                           ; $59ec: $1c
	ld   b, $04                                      ; $59ed: $06 $04
	inc  b                                           ; $59ef: $04
	dec  e                                           ; $59f0: $1d
	ld   b, b                                        ; $59f1: $40
	ld   d, $03                                      ; $59f2: $16 $03
	ld   d, $01                                      ; $59f4: $16 $01
	ld   bc, $0028                                   ; $59f6: $01 $28 $00
	ld   bc, $9e9d                                   ; $59f9: $01 $9d $9e
	sbc  l                                           ; $59fc: $9d
	ld   e, c                                        ; $59fd: $59
	ld   [hl], c                                     ; $59fe: $71
	ld   [hl], h                                     ; $59ff: $74
	sbc  c                                           ; $5a00: $99
	sub  [hl]                                        ; $5a01: $96
	sbc  a                                           ; $5a02: $9f
	dec  c                                           ; $5a03: $0d
	inc  b                                           ; $5a04: $04
	ld   c, $03                                      ; $5a05: $0e $03
	sbc  l                                           ; $5a07: $9d
	inc  b                                           ; $5a08: $04
	and  [hl]                                        ; $5a09: $a6
	ld   l, [hl]                                     ; $5a0a: $6e
	ld   [hl], c                                     ; $5a0b: $71
	ld   [hl], h                                     ; $5a0c: $74
	dec  c                                           ; $5a0d: $0d
	inc  bc                                          ; $5a0e: $03
	ld   [hl], l                                     ; $5a0f: $75
	inc  b                                           ; $5a10: $04
	xor  e                                           ; $5a11: $ab
	ld   h, a                                        ; $5a12: $67
	and  c                                           ; $5a13: $a1
	ld   a, b                                        ; $5a14: $78
	sub  [hl]                                        ; $5a15: $96
	sbc  a                                           ; $5a16: $9f
	dec  c                                           ; $5a17: $0d
	nop                                              ; $5a18: $00
	ld   a, [bc]                                     ; $5a19: $0a
	inc  e                                           ; $5a1a: $1c
	ld   b, $01                                      ; $5a1b: $06 $01
	ld   bc, $6301                                   ; $5a1d: $01 $01 $63
	ld   [hl], h                                     ; $5a20: $74
	sbc  [hl]                                        ; $5a21: $9e
	ld   l, e                                        ; $5a22: $6b
	sbc  e                                           ; $5a23: $9b
	ld   l, e                                        ; $5a24: $6b
	sbc  e                                           ; $5a25: $9b
	inc  b                                           ; $5a26: $04
	ld   b, d                                        ; $5a27: $42
	sbc  c                                           ; $5a28: $99
	halt                                             ; $5a29: $76
	ld   h, a                                        ; $5a2a: $67
	sbc  c                                           ; $5a2b: $99
	ld   e, c                                        ; $5a2c: $59
	sbc  a                                           ; $5a2d: $9f
	dec  c                                           ; $5a2e: $0d
	ld   [$9e00], sp                                 ; $5a2f: $08 $00 $9e
	ld   e, b                                        ; $5a32: $58
	sub  d                                           ; $5a33: $92
	ld   h, a                                        ; $5a34: $67
	adc  l                                           ; $5a35: $8d
	sbc  a                                           ; $5a36: $9f
	dec  c                                           ; $5a37: $0d
	nop                                              ; $5a38: $00
	ld   a, [bc]                                     ; $5a39: $0a
	dec  c                                           ; $5a3a: $0d
	nop                                              ; $5a3b: $00
	nop                                              ; $5a3c: $00
	rrca                                             ; $5a3d: $0f
	nop                                              ; $5a3e: $00
	ld   bc, $1e09                                   ; $5a3f: $01 $09 $1e
	nop                                              ; $5a42: $00
	inc  e                                           ; $5a43: $1c
	ld   b, $00                                      ; $5a44: $06 $00
	nop                                              ; $5a46: $00
	ld   bc, $7463                                   ; $5a47: $01 $63 $74
	sbc  [hl]                                        ; $5a4a: $9e
	ld   l, e                                        ; $5a4b: $6b
	sbc  e                                           ; $5a4c: $9b
	ld   l, e                                        ; $5a4d: $6b
	sbc  e                                           ; $5a4e: $9b
	inc  b                                           ; $5a4f: $04
	ld   b, d                                        ; $5a50: $42
	sbc  c                                           ; $5a51: $99
	halt                                             ; $5a52: $76
	ld   h, a                                        ; $5a53: $67
	sbc  c                                           ; $5a54: $99
	ld   e, c                                        ; $5a55: $59
	sbc  a                                           ; $5a56: $9f
	dec  c                                           ; $5a57: $0d
	ld   e, b                                        ; $5a58: $58
	sub  d                                           ; $5a59: $92
	ld   h, a                                        ; $5a5a: $67
	adc  l                                           ; $5a5b: $8d
	sbc  a                                           ; $5a5c: $9f
	dec  c                                           ; $5a5d: $0d
	nop                                              ; $5a5e: $00
	ld   a, [bc]                                     ; $5a5f: $0a
	nop                                              ; $5a60: $00
	rrca                                             ; $5a61: $0f
	nop                                              ; $5a62: $00
	ld   bc, $ac01                                   ; $5a63: $01 $01 $ac
	push af                                          ; $5a66: $f5
	bit  4, e                                        ; $5a67: $cb $63
	and  c                                           ; $5a69: $a1
	ld   [hl], h                                     ; $5a6a: $74
	sbc  [hl]                                        ; $5a6b: $9e
	inc  b                                           ; $5a6c: $04
	adc  [hl]                                        ; $5a6d: $8e
	inc  b                                           ; $5a6e: $04
	inc  c                                           ; $5a6f: $0c
	ld   a, h                                        ; $5a70: $7c
	ld   h, c                                        ; $5a71: $61
	halt                                             ; $5a72: $76
	dec  c                                           ; $5a73: $0d
	ld   [hl], a                                     ; $5a74: $77
	ld   d, h                                        ; $5a75: $54
	inc  bc                                          ; $5a76: $03
	ld   a, [de]                                     ; $5a77: $1a
	ld   [hl], c                                     ; $5a78: $71
	ld   [hl], h                                     ; $5a79: $74
	ld   d, d                                        ; $5a7a: $52
	sbc  c                                           ; $5a7b: $99
	ld   a, h                                        ; $5a7c: $7c
	ld   [hl], l                                     ; $5a7d: $75
	ld   h, a                                        ; $5a7e: $67
	ld   e, c                                        ; $5a7f: $59
	ld   sp, hl                                      ; $5a80: $f9
	dec  c                                           ; $5a81: $0d
	nop                                              ; $5a82: $00
	ld   a, [bc]                                     ; $5a83: $0a
	inc  e                                           ; $5a84: $1c
	ld   b, $03                                      ; $5a85: $06 $03
	inc  bc                                          ; $5a87: $03
	ld   bc, $f9a1                                   ; $5a88: $01 $a1 $f9
	db   $10                                         ; $5a8b: $10
	inc  b                                           ; $5a8c: $04
	ld   c, c                                        ; $5a8d: $49
	ld   l, [hl]                                     ; $5a8e: $6e
	inc  bc                                          ; $5a8f: $03
	di                                               ; $5a90: $f3
	inc  bc                                          ; $5a91: $03
	sbc  c                                           ; $5a92: $99
	db   $fd                                         ; $5a93: $fd
	inc  b                                           ; $5a94: $04
	adc  [hl]                                        ; $5a95: $8e
	inc  b                                           ; $5a96: $04
	inc  c                                           ; $5a97: $0c
	ld   a, h                                        ; $5a98: $7c
	ld   h, c                                        ; $5a99: $61
	halt                                             ; $5a9a: $76
	cp   $0d                                         ; $5a9b: $fe $0d
	ld   l, [hl]                                     ; $5a9d: $6e
	ld   a, b                                        ; $5a9e: $78
	and  c                                           ; $5a9f: $a1
	ld   [hl], h                                     ; $5aa0: $74
	sbc  a                                           ; $5aa1: $9f
	dec  c                                           ; $5aa2: $0d
	nop                                              ; $5aa3: $00
	inc  e                                           ; $5aa4: $1c
	ld   b, $05                                      ; $5aa5: $06 $05
	dec  b                                           ; $5aa7: $05
	ld   bc, $fca1                                   ; $5aa8: $01 $a1 $fc
	halt                                             ; $5aab: $76
	rst  $38                                         ; $5aac: $ff
	rst  $38                                         ; $5aad: $ff
	sbc  [hl]                                        ; $5aae: $9e
	ld   l, e                                        ; $5aaf: $6b
	ld   d, h                                        ; $5ab0: $54
	ld   l, [hl]                                     ; $5ab1: $6e
	ld   a, b                                        ; $5ab2: $78
	rst  $38                                         ; $5ab3: $ff
	rst  $38                                         ; $5ab4: $ff
	dec  c                                           ; $5ab5: $0d
	nop                                              ; $5ab6: $00
	ld   a, [bc]                                     ; $5ab7: $0a
	inc  e                                           ; $5ab8: $1c
	ld   b, $01                                      ; $5ab9: $06 $01
	ld   bc, $5001                                   ; $5abb: $01 $01 $50
	ld   l, l                                        ; $5abe: $6d
	ld   d, d                                        ; $5abf: $52
	ld   e, d                                        ; $5ac0: $5a
	ld   [bc], a                                     ; $5ac1: $02
	or   [hl]                                        ; $5ac2: $b6
	inc  bc                                          ; $5ac3: $03
	ld   l, e                                        ; $5ac4: $6b
	ld   [bc], a                                     ; $5ac5: $02
	dec  bc                                          ; $5ac6: $0b
	ld   [bc], a                                     ; $5ac7: $02
	bit  6, l                                        ; $5ac8: $cb $75
	inc  b                                           ; $5aca: $04
	dec  sp                                          ; $5acb: $3b
	adc  a                                           ; $5acc: $8f
	sub  a                                           ; $5acd: $97
	sbc  d                                           ; $5ace: $9a
	ld   l, l                                        ; $5acf: $6d
	dec  c                                           ; $5ad0: $0d
	ld   [hl], c                                     ; $5ad1: $71
	ld   [hl], h                                     ; $5ad2: $74
	inc  bc                                          ; $5ad3: $03
	db   $ed                                         ; $5ad4: $ed
	ld   [hl], l                                     ; $5ad5: $75
	ld   [bc], a                                     ; $5ad6: $02
	sbc  d                                           ; $5ad7: $9a
	ld   e, e                                        ; $5ad8: $5b
	ld   l, [hl]                                     ; $5ad9: $6e
	ld   l, d                                        ; $5ada: $6a
	sbc  a                                           ; $5adb: $9f
	dec  c                                           ; $5adc: $0d
	ld   d, h                                        ; $5add: $54
	and  c                                           ; $5ade: $a1
	rst  $38                                         ; $5adf: $ff
	rst  $38                                         ; $5ae0: $ff
	dec  c                                           ; $5ae1: $0d
	nop                                              ; $5ae2: $00
	ld   a, [bc]                                     ; $5ae3: $0a
	inc  e                                           ; $5ae4: $1c
	ld   b, $00                                      ; $5ae5: $06 $00
	nop                                              ; $5ae7: $00
	ld   bc, $b602                                   ; $5ae8: $01 $02 $b6
	inc  bc                                          ; $5aeb: $03
	ld   l, e                                        ; $5aec: $6b
	ld   a, l                                        ; $5aed: $7d
	inc  bc                                          ; $5aee: $03
	sub  d                                           ; $5aef: $92
	inc  b                                           ; $5af0: $04
	ld   l, $59                                      ; $5af1: $2e $59
	sub  a                                           ; $5af3: $97
	ld   [bc], a                                     ; $5af4: $02
	ret  nc                                          ; $5af5: $d0

	sbc  l                                           ; $5af6: $9d
	ld   [hl], c                                     ; $5af7: $71
	ld   l, l                                        ; $5af8: $6d
	db   $e4                                         ; $5af9: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5afa: $cf
	sbc  a                                           ; $5afb: $9f
	dec  c                                           ; $5afc: $0d
	inc  b                                           ; $5afd: $04
	adc  [hl]                                        ; $5afe: $8e
	inc  b                                           ; $5aff: $04
	inc  c                                           ; $5b00: $0c
	ld   a, l                                        ; $5b01: $7d
	inc  bc                                          ; $5b02: $03
	sub  h                                           ; $5b03: $94
	inc  b                                           ; $5b04: $04
	sbc  [hl]                                        ; $5b05: $9e
	ld   a, h                                        ; $5b06: $7c
	inc  bc                                          ; $5b07: $03
	db   $d3                                         ; $5b08: $d3
	dec  b                                           ; $5b09: $05
	ld   a, [bc]                                     ; $5b0a: $0a
	ld   [hl], l                                     ; $5b0b: $75
	dec  c                                           ; $5b0c: $0d
	inc  bc                                          ; $5b0d: $03
	ld   l, e                                        ; $5b0e: $6b
	ld   a, c                                        ; $5b0f: $79
	inc  b                                           ; $5b10: $04
	ld   b, l                                        ; $5b11: $45
	sbc  d                                           ; $5b12: $9a
	ld   l, l                                        ; $5b13: $6d
	db   $e4                                         ; $5b14: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b15: $cf
	sbc  a                                           ; $5b16: $9f
	dec  c                                           ; $5b17: $0d
	nop                                              ; $5b18: $00
	ld   a, [bc]                                     ; $5b19: $0a
	inc  e                                           ; $5b1a: $1c
	ld   b, $07                                      ; $5b1b: $06 $07
	rlca                                             ; $5b1d: $07
	ld   bc, $656b                                   ; $5b1e: $01 $6b $65
	ld   [hl], h                                     ; $5b21: $74
	inc  b                                           ; $5b22: $04
	ld   c, c                                        ; $5b23: $49
	sub  [hl]                                        ; $5b24: $96
	sbc  b                                           ; $5b25: $98
	sub  b                                           ; $5b26: $90
	sbc  [hl]                                        ; $5b27: $9e
	dec  c                                           ; $5b28: $0d
	cp   d                                           ; $5b29: $ba
	sbc  $c4                                         ; $5b2a: $de $c4
	ret                                              ; $5b2c: $c9


	db   $eb                                         ; $5b2d: $eb
	and  l                                           ; $5b2e: $a5
	ret                                              ; $5b2f: $c9


	and  b                                           ; $5b30: $a0
	inc  b                                           ; $5b31: $04
	and  $81                                         ; $5b32: $e6 $81
	sbc  c                                           ; $5b34: $99
	ld   a, h                                        ; $5b35: $7c
	ld   a, l                                        ; $5b36: $7d
	dec  c                                           ; $5b37: $0d
	inc  bc                                          ; $5b38: $03
	ld   l, c                                        ; $5b39: $69
	ld   [bc], a                                     ; $5b3a: $02
	cp   [hl]                                        ; $5b3b: $be
	ld   a, c                                        ; $5b3c: $79
	dec  b                                           ; $5b3d: $05
	inc  de                                          ; $5b3e: $13
	ld   h, l                                        ; $5b3f: $65
	ld   d, d                                        ; $5b40: $52
	and  c                                           ; $5b41: $a1
	ld   l, [hl]                                     ; $5b42: $6e
	sub  [hl]                                        ; $5b43: $96
	ld   a, b                                        ; $5b44: $78
	db   $fc                                         ; $5b45: $fc
	sbc  a                                           ; $5b46: $9f
	dec  c                                           ; $5b47: $0d
	nop                                              ; $5b48: $00
	ld   a, [bc]                                     ; $5b49: $0a
	add  hl, de                                      ; $5b4a: $19
	dec  b                                           ; $5b4b: $05
	ld   [bc], a                                     ; $5b4c: $02
	inc  bc                                          ; $5b4d: $03
	db   $d3                                         ; $5b4e: $d3
	dec  b                                           ; $5b4f: $05
	ld   a, [bc]                                     ; $5b50: $0a
	ld   a, l                                        ; $5b51: $7d
	inc  b                                           ; $5b52: $04
	ld   c, $03                                      ; $5b53: $0e $03
	dec  de                                          ; $5b55: $1b
	ld   [hl], l                                     ; $5b56: $75
	ld   h, a                                        ; $5b57: $67
	ld   a, e                                        ; $5b58: $7b
	nop                                              ; $5b59: $00
	nop                                              ; $5b5a: $00
	inc  b                                           ; $5b5b: $04
	ld   l, l                                        ; $5b5c: $6d
	sub  b                                           ; $5b5d: $90
	cp   d                                           ; $5b5e: $ba
	sbc  $c4                                         ; $5b5f: $de $c4
	ret                                              ; $5b61: $c9


	inc  b                                           ; $5b62: $04
	and  $81                                         ; $5b63: $e6 $81
	ld   l, l                                        ; $5b65: $6d
	ld   d, d                                        ; $5b66: $52
	ld   a, b                                        ; $5b67: $78
	nop                                              ; $5b68: $00
	ld   bc, $cb07                                   ; $5b69: $01 $07 $cb
	ld   [bc], a                                     ; $5b6c: $02
	ld   [bc], a                                     ; $5b6d: $02
	inc  bc                                          ; $5b6e: $03
	ld   bc, $2000                                   ; $5b6f: $01 $00 $20
	nop                                              ; $5b72: $00
	rlca                                             ; $5b73: $07
	adc  [hl]                                        ; $5b74: $8e
	inc  bc                                          ; $5b75: $03
	ld   [bc], a                                     ; $5b76: $02
	inc  bc                                          ; $5b77: $03
	ld   bc, $2001                                   ; $5b78: $01 $01 $20
	nop                                              ; $5b7b: $00
	ld   b, $e1                                      ; $5b7c: $06 $e1
	inc  bc                                          ; $5b7e: $03
	rrca                                             ; $5b7f: $0f
	nop                                              ; $5b80: $00
	ld   bc, $0301                                   ; $5b81: $01 $01 $03
	db   $d3                                         ; $5b84: $d3
	dec  b                                           ; $5b85: $05
	ld   a, [bc]                                     ; $5b86: $0a
	ld   [hl], c                                     ; $5b87: $71
	ld   [hl], h                                     ; $5b88: $74
	inc  b                                           ; $5b89: $04
	ld   c, $03                                      ; $5b8a: $0e $03
	dec  de                                          ; $5b8c: $1b
	ld   [hl], l                                     ; $5b8d: $75
	ld   h, a                                        ; $5b8e: $67
	sub  [hl]                                        ; $5b8f: $96
	ld   a, e                                        ; $5b90: $7b
	sbc  a                                           ; $5b91: $9f
	dec  c                                           ; $5b92: $0d
	nop                                              ; $5b93: $00
	ld   a, [bc]                                     ; $5b94: $0a
	rlca                                             ; $5b95: $07
	dec  a                                           ; $5b96: $3d
	inc  bc                                          ; $5b97: $03
	inc  bc                                          ; $5b98: $03
	inc  hl                                          ; $5b99: $23
	ld   bc, $2282                                   ; $5b9a: $01 $82 $22
	nop                                              ; $5b9d: $00
	inc  e                                           ; $5b9e: $1c
	ld   b, $00                                      ; $5b9f: $06 $00
	nop                                              ; $5ba1: $00
	ld   bc, $546b                                   ; $5ba2: $01 $6b $54
	ld   l, [hl]                                     ; $5ba5: $6e
	ld   a, b                                        ; $5ba6: $78
	sbc  a                                           ; $5ba7: $9f
	dec  c                                           ; $5ba8: $0d
	ld   [$9000], sp                                 ; $5ba9: $08 $00 $90
	sbc  [hl]                                        ; $5bac: $9e
	ld   h, c                                        ; $5bad: $61
	ld   a, h                                        ; $5bae: $7c
	ld   [bc], a                                     ; $5baf: $02
	jr   nz, @-$06                                   ; $5bb0: $20 $f8

	ld   [bc], a                                     ; $5bb2: $02
	sbc  e                                           ; $5bb3: $9b
	ld   [bc], a                                     ; $5bb4: $02
	xor  c                                           ; $5bb5: $a9
	dec  c                                           ; $5bb6: $0d
	ld   e, a                                        ; $5bb7: $5f
	ld   [hl], c                                     ; $5bb8: $71
	ld   h, c                                        ; $5bb9: $61
	ld   d, h                                        ; $5bba: $54
	inc  bc                                          ; $5bbb: $03
	db   $d3                                         ; $5bbc: $d3
	dec  b                                           ; $5bbd: $05
	ld   a, [bc]                                     ; $5bbe: $0a
	ld   h, l                                        ; $5bbf: $65
	ld   l, l                                        ; $5bc0: $6d
	sub  [hl]                                        ; $5bc1: $96
	ld   d, h                                        ; $5bc2: $54
	ld   l, [hl]                                     ; $5bc3: $6e
	ld   h, l                                        ; $5bc4: $65
	ld   a, b                                        ; $5bc5: $78
	sbc  a                                           ; $5bc6: $9f
	dec  c                                           ; $5bc7: $0d
	nop                                              ; $5bc8: $00
	ld   a, [bc]                                     ; $5bc9: $0a
	inc  e                                           ; $5bca: $1c
	ld   b, $01                                      ; $5bcb: $06 $01
	ld   bc, $401d                                   ; $5bcd: $01 $1d $40
	ld   d, $03                                      ; $5bd0: $16 $03
	ld   d, $01                                      ; $5bd2: $16 $01
	ld   [bc], a                                     ; $5bd4: $02
	jr   z, jr_069_5bd7                              ; $5bd5: $28 $00

jr_069_5bd7:
	ld   bc, $9a61                                   ; $5bd7: $01 $61 $9a
	ld   e, c                                        ; $5bda: $59
	sub  a                                           ; $5bdb: $97
	sub  b                                           ; $5bdc: $90
	ld   l, e                                        ; $5bdd: $6b
	ld   a, h                                        ; $5bde: $7c
	inc  bc                                          ; $5bdf: $03
	cp   $03                                         ; $5be0: $fe $03
	add  [hl]                                        ; $5be2: $86
	ld   [hl], l                                     ; $5be3: $75
	dec  c                                           ; $5be4: $0d
	ld   e, d                                        ; $5be5: $5a
	and  c                                           ; $5be6: $a1
	ld   a, [hl]                                     ; $5be7: $7e
	sbc  d                                           ; $5be8: $9a
	sub  [hl]                                        ; $5be9: $96
	sbc  a                                           ; $5bea: $9f
	dec  c                                           ; $5beb: $0d
	nop                                              ; $5bec: $00
	ld   a, [bc]                                     ; $5bed: $0a
	ld   b, $e5                                      ; $5bee: $06 $e5
	inc  bc                                          ; $5bf0: $03
	inc  e                                           ; $5bf1: $1c
	ld   b, $05                                      ; $5bf2: $06 $05
	dec  b                                           ; $5bf4: $05
	ld   bc, $6d03                                   ; $5bf5: $01 $03 $6d
	dec  b                                           ; $5bf8: $05
	add  hl, de                                      ; $5bf9: $19
	ld   [hl], l                                     ; $5bfa: $75
	ld   a, h                                        ; $5bfb: $7c
	inc  bc                                          ; $5bfc: $03
	ld   [de], a                                     ; $5bfd: $12
	inc  bc                                          ; $5bfe: $03
	dec  sp                                          ; $5bff: $3b
	ld   e, d                                        ; $5c00: $5a
	dec  c                                           ; $5c01: $0d
	ld   h, e                                        ; $5c02: $63
	and  c                                           ; $5c03: $a1
	ld   h, h                                        ; $5c04: $64
	and  c                                           ; $5c05: $a1
	ld   a, b                                        ; $5c06: $78
	ld   [$5a00], sp                                 ; $5c07: $08 $00 $5a
	dec  c                                           ; $5c0a: $0d
	ld   [bc], a                                     ; $5c0b: $02
	sbc  l                                           ; $5c0c: $9d
	ld   d, h                                        ; $5c0d: $54
	cp   h                                           ; $5c0e: $bc
	db   $ec                                         ; $5c0f: $ec
	sub  $59                                         ; $5c10: $d6 $59
	sub  [hl]                                        ; $5c12: $96
	db   $fc                                         ; $5c13: $fc
	sbc  a                                           ; $5c14: $9f
	dec  c                                           ; $5c15: $0d
	nop                                              ; $5c16: $00
	ld   a, [bc]                                     ; $5c17: $0a
	inc  e                                           ; $5c18: $1c
	ld   b, $02                                      ; $5c19: $06 $02
	ld   [bc], a                                     ; $5c1b: $02
	ld   bc, $e3c1                                   ; $5c1c: $01 $c1 $e3
	ld   l, [hl]                                     ; $5c1f: $6e
	ld   l, h                                        ; $5c20: $6c
	sbc  a                                           ; $5c21: $9f
	dec  c                                           ; $5c22: $0d
	sub  b                                           ; $5c23: $90
	ld   [hl], c                                     ; $5c24: $71
	halt                                             ; $5c25: $76
	ld   e, d                                        ; $5c26: $5a
	and  c                                           ; $5c27: $a1
	ld   a, [hl]                                     ; $5c28: $7e
	sub  a                                           ; $5c29: $97
	ld   a, b                                        ; $5c2a: $78
	ld   d, d                                        ; $5c2b: $52
	halt                                             ; $5c2c: $76
	sbc  a                                           ; $5c2d: $9f
	dec  c                                           ; $5c2e: $0d
	ld   d, b                                        ; $5c2f: $50
	halt                                             ; $5c30: $76
	inc  bc                                          ; $5c31: $03
	ld   l, h                                        ; $5c32: $6c
	ld   h, l                                        ; $5c33: $65
	ld   l, [hl]                                     ; $5c34: $6e
	ld   e, a                                        ; $5c35: $5f
	ld   [hl], a                                     ; $5c36: $77
	ld   e, d                                        ; $5c37: $5a
	and  c                                           ; $5c38: $a1
	ld   a, [hl]                                     ; $5c39: $7e
	sbc  d                                           ; $5c3a: $9a
	sbc  a                                           ; $5c3b: $9f
	dec  c                                           ; $5c3c: $0d
	nop                                              ; $5c3d: $00
	ld   a, [bc]                                     ; $5c3e: $0a
	ld   b, $e5                                      ; $5c3f: $06 $e5
	inc  bc                                          ; $5c41: $03
	rrca                                             ; $5c42: $0f
	nop                                              ; $5c43: $00
	ld   bc, $0401                                   ; $5c44: $01 $01 $04
	ld   l, l                                        ; $5c47: $6d
	sub  b                                           ; $5c48: $90
	cp   d                                           ; $5c49: $ba
	sbc  $c4                                         ; $5c4a: $de $c4
	ret                                              ; $5c4c: $c9


	db   $eb                                         ; $5c4d: $eb
	and  l                                           ; $5c4e: $a5
	ret                                              ; $5c4f: $c9


	dec  c                                           ; $5c50: $0d
	inc  b                                           ; $5c51: $04
	and  $81                                         ; $5c52: $e6 $81
	ld   l, l                                        ; $5c54: $6d
	ld   d, d                                        ; $5c55: $52
	ld   a, b                                        ; $5c56: $78
	rst  $38                                         ; $5c57: $ff
	rst  $38                                         ; $5c58: $ff
	dec  c                                           ; $5c59: $0d
	nop                                              ; $5c5a: $00
	ld   a, [bc]                                     ; $5c5b: $0a
	inc  e                                           ; $5c5c: $1c
	ld   b, $00                                      ; $5c5d: $06 $00
	nop                                              ; $5c5f: $00
	ld   bc, $e604                                   ; $5c60: $01 $04 $e6
	add  c                                           ; $5c63: $81
	ld   l, l                                        ; $5c64: $6d
	ld   e, c                                        ; $5c65: $59
	ld   [hl], c                                     ; $5c66: $71
	ld   l, l                                        ; $5c67: $6d
	sub  a                                           ; $5c68: $97
	inc  bc                                          ; $5c69: $03
	db   $d3                                         ; $5c6a: $d3
	dec  b                                           ; $5c6b: $05
	ld   a, [bc]                                     ; $5c6c: $0a
	ld   h, l                                        ; $5c6d: $65
	ld   a, b                                        ; $5c6e: $78
	sbc  a                                           ; $5c6f: $9f
	dec  c                                           ; $5c70: $0d
	sub  b                                           ; $5c71: $90
	ld   [hl], c                                     ; $5c72: $71
	halt                                             ; $5c73: $76
	sbc  [hl]                                        ; $5c74: $9e
	sub  b                                           ; $5c75: $90
	ld   [hl], c                                     ; $5c76: $71
	halt                                             ; $5c77: $76
	ld   e, d                                        ; $5c78: $5a
	and  c                                           ; $5c79: $a1
	ld   a, [hl]                                     ; $5c7a: $7e
	sbc  c                                           ; $5c7b: $99
	and  c                                           ; $5c7c: $a1
	ld   l, [hl]                                     ; $5c7d: $6e
	sbc  a                                           ; $5c7e: $9f
	dec  c                                           ; $5c7f: $0d
	inc  bc                                          ; $5c80: $03
	db   $d3                                         ; $5c81: $d3
	dec  b                                           ; $5c82: $05
	ld   a, [bc]                                     ; $5c83: $0a
	ld   h, a                                        ; $5c84: $67
	sbc  d                                           ; $5c85: $9a
	ld   a, [hl]                                     ; $5c86: $7e
	ld   d, d                                        ; $5c87: $52
	ld   [hl], d                                     ; $5c88: $72
	ld   e, c                                        ; $5c89: $59
	ld   e, c                                        ; $5c8a: $59
	ld   a, b                                        ; $5c8b: $78
	ld   d, h                                        ; $5c8c: $54
	ld   l, d                                        ; $5c8d: $6a
	sbc  a                                           ; $5c8e: $9f
	dec  c                                           ; $5c8f: $0d
	nop                                              ; $5c90: $00
	ld   a, [bc]                                     ; $5c91: $0a
	ld   b, $e5                                      ; $5c92: $06 $e5
	inc  bc                                          ; $5c94: $03
	inc  e                                           ; $5c95: $1c
	ld   b, $00                                      ; $5c96: $06 $00
	nop                                              ; $5c98: $00
	ld   bc, $7463                                   ; $5c99: $01 $63 $74
	sbc  [hl]                                        ; $5c9c: $9e
	ld   l, e                                        ; $5c9d: $6b
	sbc  e                                           ; $5c9e: $9b
	ld   l, e                                        ; $5c9f: $6b
	sbc  e                                           ; $5ca0: $9b
	inc  b                                           ; $5ca1: $04
	ld   b, d                                        ; $5ca2: $42
	sbc  c                                           ; $5ca3: $99
	halt                                             ; $5ca4: $76

jr_069_5ca5:
	ld   h, a                                        ; $5ca5: $67
	sbc  c                                           ; $5ca6: $99
	ld   e, c                                        ; $5ca7: $59
	sbc  a                                           ; $5ca8: $9f
	dec  c                                           ; $5ca9: $0d
	ld   [$9e00], sp                                 ; $5caa: $08 $00 $9e
	ld   e, b                                        ; $5cad: $58
	sub  d                                           ; $5cae: $92
	ld   h, a                                        ; $5caf: $67
	adc  l                                           ; $5cb0: $8d
	sbc  a                                           ; $5cb1: $9f
	dec  c                                           ; $5cb2: $0d
	nop                                              ; $5cb3: $00
	ld   a, [bc]                                     ; $5cb4: $0a
	dec  c                                           ; $5cb5: $0d
	nop                                              ; $5cb6: $00
	nop                                              ; $5cb7: $00
	rrca                                             ; $5cb8: $0f
	nop                                              ; $5cb9: $00
	ld   bc, $1e09                                   ; $5cba: $01 $09 $1e
	nop                                              ; $5cbd: $00
	nop                                              ; $5cbe: $00
	ld   c, $b0                                      ; $5cbf: $0e $b0
	inc  e                                           ; $5cc1: $1c
	inc  b                                           ; $5cc2: $04
	nop                                              ; $5cc3: $00
	nop                                              ; $5cc4: $00
	ld   [bc], a                                     ; $5cc5: $02
	ld   bc, $9e50                                   ; $5cc6: $01 $50 $9e
	ld   l, a                                        ; $5cc9: $6f
	ld   d, d                                        ; $5cca: $52
	ld   [bc], a                                     ; $5ccb: $02
	inc  de                                          ; $5ccc: $13
	ld   l, a                                        ; $5ccd: $6f
	sub  c                                           ; $5cce: $91
	and  c                                           ; $5ccf: $a1
	sbc  a                                           ; $5cd0: $9f
	dec  c                                           ; $5cd1: $0d
	nop                                              ; $5cd2: $00
	ld   a, [bc]                                     ; $5cd3: $0a
	ld   bc, $567b                                   ; $5cd4: $01 $7b $56
	ld   a, e                                        ; $5cd7: $7b
	ld   d, [hl]                                     ; $5cd8: $56
	sbc  [hl]                                        ; $5cd9: $9e
	ld   e, b                                        ; $5cda: $58
	adc  c                                           ; $5cdb: $89
	ld   h, l                                        ; $5cdc: $65
	ld   h, e                                        ; $5cdd: $63
	adc  h                                           ; $5cde: $8c
	ld   a, h                                        ; $5cdf: $7c
	dec  c                                           ; $5ce0: $0d
	ld   e, b                                        ; $5ce1: $58
	ld   a, l                                        ; $5ce2: $7d
	ld   a, b                                        ; $5ce3: $78
	ld   h, l                                        ; $5ce4: $65
	ld   h, l                                        ; $5ce5: $65
	ld   [hl], h                                     ; $5ce6: $74
	sbc  a                                           ; $5ce7: $9f
	dec  c                                           ; $5ce8: $0d
	nop                                              ; $5ce9: $00
	ld   a, [bc]                                     ; $5cea: $0a
	add  hl, de                                      ; $5ceb: $19
	dec  b                                           ; $5cec: $05
	inc  bc                                          ; $5ced: $03
	ld   l, e                                        ; $5cee: $6b
	sbc  d                                           ; $5cef: $9a
	sub  [hl]                                        ; $5cf0: $96
	sbc  b                                           ; $5cf1: $98
	inc  bc                                          ; $5cf2: $03
	ld   [hl], b                                     ; $5cf3: $70
	ld   e, l                                        ; $5cf4: $5d
	inc  b                                           ; $5cf5: $04
	ld   b, d                                        ; $5cf6: $42
	ld   a, b                                        ; $5cf7: $78
	ld   h, e                                        ; $5cf8: $63
	ld   d, d                                        ; $5cf9: $52
	nop                                              ; $5cfa: $00
	nop                                              ; $5cfb: $00
	inc  b                                           ; $5cfc: $04
	inc  de                                          ; $5cfd: $13
	ld   a, h                                        ; $5cfe: $7c
	inc  bc                                          ; $5cff: $03
	ld   h, e                                        ; $5d00: $63
	ld   a, h                                        ; $5d01: $7c
	dec  b                                           ; $5d02: $05
	jr   nz, jr_069_5ca5                             ; $5d03: $20 $a0

	ld   h, l                                        ; $5d05: $65
	sub  [hl]                                        ; $5d06: $96
	ld   d, h                                        ; $5d07: $54
	ld   e, c                                        ; $5d08: $59
	nop                                              ; $5d09: $00
	ld   bc, $1304                                   ; $5d0a: $01 $04 $13
	inc  b                                           ; $5d0d: $04
	sub  b                                           ; $5d0e: $90
	ld   [bc], a                                     ; $5d0f: $02
	and  d                                           ; $5d10: $a2
	inc  b                                           ; $5d11: $04
	jr   nz, @+$7b                                   ; $5d12: $20 $79

	ld   [bc], a                                     ; $5d14: $02
	rst  $30                                         ; $5d15: $f7
	inc  b                                           ; $5d16: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d17: $cf
	ld   h, l                                        ; $5d18: $65
	ld   [hl], h                                     ; $5d19: $74
	ld   d, b                                        ; $5d1a: $50
	ld   h, b                                        ; $5d1b: $60
	sub  [hl]                                        ; $5d1c: $96
	ld   d, h                                        ; $5d1d: $54
	nop                                              ; $5d1e: $00
	ld   [bc], a                                     ; $5d1f: $02
	rlca                                             ; $5d20: $07
	xor  e                                           ; $5d21: $ab
	nop                                              ; $5d22: $00
	ld   [bc], a                                     ; $5d23: $02
	inc  bc                                          ; $5d24: $03
	ld   bc, $2000                                   ; $5d25: $01 $00 $20
	nop                                              ; $5d28: $00
	rlca                                             ; $5d29: $07
	ld   b, $01                                      ; $5d2a: $06 $01
	ld   [bc], a                                     ; $5d2c: $02
	inc  bc                                          ; $5d2d: $03
	ld   bc, $2001                                   ; $5d2e: $01 $01 $20
	nop                                              ; $5d31: $00
	rlca                                             ; $5d32: $07
	ld   l, a                                        ; $5d33: $6f
	ld   bc, $0302                                   ; $5d34: $01 $02 $03
	ld   bc, $2002                                   ; $5d37: $01 $02 $20
	nop                                              ; $5d3a: $00
	ld   b, $7f                                      ; $5d3b: $06 $7f
	nop                                              ; $5d3d: $00
	inc  e                                           ; $5d3e: $1c
	inc  b                                           ; $5d3f: $04
	ld   [bc], a                                     ; $5d40: $02
	ld   [bc], a                                     ; $5d41: $02
	dec  e                                           ; $5d42: $1d
	ld   b, b                                        ; $5d43: $40
	inc  d                                           ; $5d44: $14
	inc  bc                                          ; $5d45: $03
	inc  d                                           ; $5d46: $14
	ld   bc, $2902                                   ; $5d47: $01 $02 $29
	nop                                              ; $5d4a: $00
	ld   bc, $ff50                                   ; $5d4b: $01 $50 $ff
	rst  $38                                         ; $5d4e: $ff
	ld   d, d                                        ; $5d4f: $52
	sub  d                                           ; $5d50: $92
	ld   l, e                                        ; $5d51: $6b
	ld   d, h                                        ; $5d52: $54
	ld   a, b                                        ; $5d53: $78
	ld   e, c                                        ; $5d54: $59
	ld   e, b                                        ; $5d55: $58
	ld   h, l                                        ; $5d56: $65
	ld   [hl], h                                     ; $5d57: $74
	sbc  c                                           ; $5d58: $99
	sbc  a                                           ; $5d59: $9f
	dec  c                                           ; $5d5a: $0d
	ld   d, d                                        ; $5d5b: $52
	ld   h, c                                        ; $5d5c: $61
	ld   d, h                                        ; $5d5d: $54
	sbc  [hl]                                        ; $5d5e: $9e
	cp   c                                           ; $5d5f: $b9
	push hl                                          ; $5d60: $e5
	push af                                          ; $5d61: $f5
	sbc  $fb                                         ; $5d62: $de $fb
	db   $ed                                         ; $5d64: $ed
	sbc  a                                           ; $5d65: $9f
	dec  c                                           ; $5d66: $0d
	nop                                              ; $5d67: $00
	ld   a, [bc]                                     ; $5d68: $0a
	nop                                              ; $5d69: $00
	rrca                                             ; $5d6a: $0f
	nop                                              ; $5d6b: $00
	ld   bc, $6b01                                   ; $5d6c: $01 $01 $6b
	sbc  d                                           ; $5d6f: $9a
	sub  [hl]                                        ; $5d70: $96
	sbc  b                                           ; $5d71: $98

jr_069_5d72:
	inc  bc                                          ; $5d72: $03
	ld   [hl], b                                     ; $5d73: $70
	ld   e, l                                        ; $5d74: $5d
	inc  b                                           ; $5d75: $04
	ld   b, d                                        ; $5d76: $42
	ld   a, b                                        ; $5d77: $78
	ld   h, e                                        ; $5d78: $63
	ld   d, d                                        ; $5d79: $52
	sbc  a                                           ; $5d7a: $9f
	dec  c                                           ; $5d7b: $0d
	nop                                              ; $5d7c: $00
	ld   a, [bc]                                     ; $5d7d: $0a
	inc  e                                           ; $5d7e: $1c
	inc  b                                           ; $5d7f: $04
	rlca                                             ; $5d80: $07
	rlca                                             ; $5d81: $07
	dec  e                                           ; $5d82: $1d
	ld   b, b                                        ; $5d83: $40
	inc  d                                           ; $5d84: $14
	inc  bc                                          ; $5d85: $03
	inc  d                                           ; $5d86: $14
	ld   bc, $2903                                   ; $5d87: $01 $03 $29
	nop                                              ; $5d8a: $00
	ld   bc, $a5a3                                   ; $5d8b: $01 $a3 $a5
	db   $ec                                         ; $5d8e: $ec
	cp   d                                           ; $5d8f: $ba
	sbc  [hl]                                        ; $5d90: $9e
	dec  c                                           ; $5d91: $0d
	ld   h, c                                        ; $5d92: $61
	ld   [hl], a                                     ; $5d93: $77
	sub  b                                           ; $5d94: $90
	ld   h, [hl]                                     ; $5d95: $66
	sub  c                                           ; $5d96: $91
	ld   a, b                                        ; $5d97: $78
	ld   d, d                                        ; $5d98: $52
	sub  b                                           ; $5d99: $90
	and  c                                           ; $5d9a: $a1
	ld   a, [$610d]                                  ; $5d9b: $fa $0d $61
	and  c                                           ; $5d9e: $a1
	ld   a, b                                        ; $5d9f: $78
	ld   h, [hl]                                     ; $5da0: $66
	ld   e, c                                        ; $5da1: $59
	and  c                                           ; $5da2: $a1
	ld   a, c                                        ; $5da3: $79
	ld   a, e                                        ; $5da4: $7b
	ld   a, b                                        ; $5da5: $78
	ld   d, d                                        ; $5da6: $52
	sub  b                                           ; $5da7: $90
	and  c                                           ; $5da8: $a1
	ld   a, [$000d]                                  ; $5da9: $fa $0d $00
	ld   a, [bc]                                     ; $5dac: $0a
	ld   bc, $6152                                   ; $5dad: $01 $52 $61
	ld   d, h                                        ; $5db0: $54
	sbc  [hl]                                        ; $5db1: $9e
	cp   c                                           ; $5db2: $b9
	push hl                                          ; $5db3: $e5
	push af                                          ; $5db4: $f5
	sbc  $fb                                         ; $5db5: $de $fb
	db   $ed                                         ; $5db7: $ed
	ld   a, [$000d]                                  ; $5db8: $fa $0d $00
	ld   a, [bc]                                     ; $5dbb: $0a
	dec  c                                           ; $5dbc: $0d
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	rrca                                             ; $5dbf: $0f
	nop                                              ; $5dc0: $00
	ld   bc, $1e09                                   ; $5dc1: $01 $09 $1e
	nop                                              ; $5dc4: $00
	rrca                                             ; $5dc5: $0f
	nop                                              ; $5dc6: $00
	ld   bc, $0401                                   ; $5dc7: $01 $01 $04
	inc  de                                          ; $5dca: $13
	ld   a, h                                        ; $5dcb: $7c
	inc  bc                                          ; $5dcc: $03
	ld   h, e                                        ; $5dcd: $63
	ld   a, h                                        ; $5dce: $7c
	dec  b                                           ; $5dcf: $05
	jr   nz, jr_069_5d72                             ; $5dd0: $20 $a0

	ld   h, l                                        ; $5dd2: $65
	sub  [hl]                                        ; $5dd3: $96
	ld   d, h                                        ; $5dd4: $54
	ld   e, c                                        ; $5dd5: $59
	ld   sp, hl                                      ; $5dd6: $f9
	dec  c                                           ; $5dd7: $0d
	nop                                              ; $5dd8: $00
	ld   a, [bc]                                     ; $5dd9: $0a
	inc  e                                           ; $5dda: $1c
	inc  b                                           ; $5ddb: $04
	dec  b                                           ; $5ddc: $05
	dec  b                                           ; $5ddd: $05
	dec  e                                           ; $5dde: $1d
	ld   b, b                                        ; $5ddf: $40
	inc  d                                           ; $5de0: $14
	inc  bc                                          ; $5de1: $03
	inc  d                                           ; $5de2: $14
	ld   bc, $2803                                   ; $5de3: $01 $03 $28
	nop                                              ; $5de6: $00
	ld   bc, $a154                                   ; $5de7: $01 $54 $a1
	ld   a, [$a30d]                                  ; $5dea: $fa $0d $a3
	and  l                                           ; $5ded: $a5
	db   $ec                                         ; $5dee: $ec
	cp   d                                           ; $5def: $ba
	sbc  [hl]                                        ; $5df0: $9e
	ld   d, b                                        ; $5df1: $50
	adc  h                                           ; $5df2: $8c
	ld   a, h                                        ; $5df3: $7c
	ld   e, d                                        ; $5df4: $5a
	sbc  l                                           ; $5df5: $9d
	dec  c                                           ; $5df6: $0d
	ld   l, [hl]                                     ; $5df7: $6e
	ld   d, d                                        ; $5df8: $52
	ld   h, a                                        ; $5df9: $67
	ld   e, e                                        ; $5dfa: $5b
	ld   l, [hl]                                     ; $5dfb: $6e
	sub  [hl]                                        ; $5dfc: $96
	ld   a, [$000d]                                  ; $5dfd: $fa $0d $00
	ld   a, [bc]                                     ; $5e00: $0a
	rrca                                             ; $5e01: $0f
	nop                                              ; $5e02: $00
	ld   bc, $0b0c                                   ; $5e03: $01 $0c $0b
	inc  e                                           ; $5e06: $1c
	inc  b                                           ; $5e07: $04
	ld   bc, $0101                                   ; $5e08: $01 $01 $01
	add  [hl]                                        ; $5e0b: $86
	ld   d, l                                        ; $5e0c: $55
	rst  $38                                         ; $5e0d: $ff
	rst  $38                                         ; $5e0e: $ff
	dec  c                                           ; $5e0f: $0d
	ld   e, b                                        ; $5e10: $58
	sub  b                                           ; $5e11: $90
	ld   h, l                                        ; $5e12: $65
	sbc  e                                           ; $5e13: $9b
	ld   e, c                                        ; $5e14: $59
	ld   [hl], c                                     ; $5e15: $71
	ld   l, l                                        ; $5e16: $6d
	sbc  a                                           ; $5e17: $9f
	dec  c                                           ; $5e18: $0d
	ld   h, [hl]                                     ; $5e19: $66
	sub  c                                           ; $5e1a: $91
	ld   d, b                                        ; $5e1b: $50
	sbc  [hl]                                        ; $5e1c: $9e
	ld   e, b                                        ; $5e1d: $58
	sub  d                                           ; $5e1e: $92
	ld   h, a                                        ; $5e1f: $67
	adc  l                                           ; $5e20: $8d
	sbc  a                                           ; $5e21: $9f
	dec  c                                           ; $5e22: $0d
	nop                                              ; $5e23: $00
	ld   a, [bc]                                     ; $5e24: $0a
	dec  c                                           ; $5e25: $0d
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	rrca                                             ; $5e28: $0f
	nop                                              ; $5e29: $00
	ld   bc, $1e09                                   ; $5e2a: $01 $09 $1e
	nop                                              ; $5e2d: $00
	rrca                                             ; $5e2e: $0f
	nop                                              ; $5e2f: $00
	ld   bc, $0401                                   ; $5e30: $01 $01 $04
	inc  de                                          ; $5e33: $13
	inc  b                                           ; $5e34: $04
	sub  b                                           ; $5e35: $90
	ld   [bc], a                                     ; $5e36: $02
	and  d                                           ; $5e37: $a2
	inc  b                                           ; $5e38: $04
	jr   nz, jr_069_5eb4                             ; $5e39: $20 $79

	ld   [bc], a                                     ; $5e3b: $02
	rst  $30                                         ; $5e3c: $f7
	inc  b                                           ; $5e3d: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e3e: $cf
	ld   h, l                                        ; $5e3f: $65
	ld   [hl], h                                     ; $5e40: $74
	ld   d, b                                        ; $5e41: $50
	ld   h, b                                        ; $5e42: $60
	sub  [hl]                                        ; $5e43: $96
	ld   d, h                                        ; $5e44: $54
	sbc  a                                           ; $5e45: $9f
	dec  c                                           ; $5e46: $0d
	nop                                              ; $5e47: $00
	ld   a, [bc]                                     ; $5e48: $0a
	inc  e                                           ; $5e49: $1c
	inc  b                                           ; $5e4a: $04
	inc  b                                           ; $5e4b: $04
	inc  b                                           ; $5e4c: $04
	dec  e                                           ; $5e4d: $1d
	ld   b, b                                        ; $5e4e: $40
	inc  d                                           ; $5e4f: $14
	inc  bc                                          ; $5e50: $03
	inc  d                                           ; $5e51: $14
	ld   bc, $2901                                   ; $5e52: $01 $01 $29
	nop                                              ; $5e55: $00
	ld   bc, $fb56                                   ; $5e56: $01 $56 $fb
	ld   [hl], c                                     ; $5e59: $71
	rst  $38                                         ; $5e5a: $ff
	rst  $38                                         ; $5e5b: $ff
	dec  c                                           ; $5e5c: $0d
	and  e                                           ; $5e5d: $a3
	and  l                                           ; $5e5e: $a5
	db   $ec                                         ; $5e5f: $ec
	cp   d                                           ; $5e60: $ba
	sbc  [hl]                                        ; $5e61: $9e
	adc  [hl]                                        ; $5e62: $8e
	ld   l, b                                        ; $5e63: $68
	ld   e, c                                        ; $5e64: $59
	ld   h, l                                        ; $5e65: $65
	ld   d, d                                        ; $5e66: $52
	ld   a, l                                        ; $5e67: $7d
	ld   a, b                                        ; $5e68: $78
	ld   h, l                                        ; $5e69: $65
	dec  c                                           ; $5e6a: $0d
	sbc  l                                           ; $5e6b: $9d
	ld   e, c                                        ; $5e6c: $59
	and  c                                           ; $5e6d: $a1
	ld   a, b                                        ; $5e6e: $78
	ld   d, d                                        ; $5e6f: $52
	sub  [hl]                                        ; $5e70: $96
	rst  $38                                         ; $5e71: $ff
	rst  $38                                         ; $5e72: $ff
	dec  c                                           ; $5e73: $0d
	nop                                              ; $5e74: $00
	ld   a, [bc]                                     ; $5e75: $0a
	ld   bc, $9166                                   ; $5e76: $01 $66 $91
	ld   d, b                                        ; $5e79: $50
	sbc  [hl]                                        ; $5e7a: $9e
	ld   d, d                                        ; $5e7b: $52
	ld   d, d                                        ; $5e7c: $52
	rst  $38                                         ; $5e7d: $ff
	rst  $38                                         ; $5e7e: $ff
	dec  c                                           ; $5e7f: $0d
	rst  JumpTable                                         ; $5e80: $df
	db   $ec                                         ; $5e81: $ec
	and  e                                           ; $5e82: $a3
	ld   a, c                                        ; $5e83: $79
	ld   h, l                                        ; $5e84: $65
	ld   [hl], h                                     ; $5e85: $74
	sub  b                                           ; $5e86: $90
	sub  a                                           ; $5e87: $97
	ld   d, h                                        ; $5e88: $54
	ld   e, c                                        ; $5e89: $59
	sub  a                                           ; $5e8a: $97
	sbc  a                                           ; $5e8b: $9f
	dec  c                                           ; $5e8c: $0d
	nop                                              ; $5e8d: $00
	ld   a, [bc]                                     ; $5e8e: $0a
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	inc  bc                                          ; $5e91: $03
	ld   c, [hl]                                     ; $5e92: $4e
	ld   [bc], a                                     ; $5e93: $02
	nop                                              ; $5e94: $00
	inc  bc                                          ; $5e95: $03
	ld   c, b                                        ; $5e96: $48
	add  hl, hl                                      ; $5e97: $29
	add  hl, hl                                      ; $5e98: $29
	ld   bc, $2201                                   ; $5e99: $01 $01 $22
	nop                                              ; $5e9c: $00
	ld   c, $3e                                      ; $5e9d: $0e $3e
	rrca                                             ; $5e9f: $0f
	nop                                              ; $5ea0: $00
	ld   bc, $010d                                   ; $5ea1: $01 $0d $01
	nop                                              ; $5ea4: $00
	ld   [bc], a                                     ; $5ea5: $02
	ld   bc, $5d63                                   ; $5ea6: $01 $63 $5d
	sub  a                                           ; $5ea9: $97
	ld   h, e                                        ; $5eaa: $63
	and  c                                           ; $5eab: $a1
	sbc  a                                           ; $5eac: $9f
	dec  c                                           ; $5ead: $0d
	inc  b                                           ; $5eae: $04
	ld   c, c                                        ; $5eaf: $49
	and  b                                           ; $5eb0: $a0
	ld   h, l                                        ; $5eb1: $65
	ld   [hl], h                                     ; $5eb2: $74
	sbc  c                                           ; $5eb3: $99

jr_069_5eb4:
	and  c                                           ; $5eb4: $a1
	ld   [hl], l                                     ; $5eb5: $75
	ld   h, a                                        ; $5eb6: $67
	ld   e, c                                        ; $5eb7: $59
	ld   sp, hl                                      ; $5eb8: $f9
	dec  c                                           ; $5eb9: $0d
	nop                                              ; $5eba: $00
	ld   a, [bc]                                     ; $5ebb: $0a
	inc  e                                           ; $5ebc: $1c
	ld   bc, $0000                                   ; $5ebd: $01 $00 $00
	ld   bc, $9750                                   ; $5ec0: $01 $50 $97
	sbc  [hl]                                        ; $5ec3: $9e
	ld   [$6300], sp                                 ; $5ec4: $08 $00 $63
	and  c                                           ; $5ec7: $a1
	sbc  a                                           ; $5ec8: $9f
	dec  c                                           ; $5ec9: $0d
	ld   l, a                                        ; $5eca: $6f
	sub  l                                           ; $5ecb: $95
	ld   [hl], c                                     ; $5ecc: $71
	halt                                             ; $5ecd: $76
	inc  bc                                          ; $5ece: $03
	cp   $87                                         ; $5ecf: $fe $87
	inc  b                                           ; $5ed1: $04
	sub  d                                           ; $5ed2: $92
	and  b                                           ; $5ed3: $a0
	dec  c                                           ; $5ed4: $0d
	ld   h, l                                        ; $5ed5: $65
	ld   [hl], h                                     ; $5ed6: $74
	sbc  c                                           ; $5ed7: $99
	and  c                                           ; $5ed8: $a1
	ld   [hl], l                                     ; $5ed9: $75
	ld   h, a                                        ; $5eda: $67
	sbc  a                                           ; $5edb: $9f
	dec  c                                           ; $5edc: $0d
	nop                                              ; $5edd: $00
	ld   a, [bc]                                     ; $5ede: $0a
	inc  e                                           ; $5edf: $1c
	ld   bc, $0101                                   ; $5ee0: $01 $01 $01
	ld   bc, $546b                                   ; $5ee3: $01 $6b $54
	ld   l, [hl]                                     ; $5ee6: $6e
	sbc  l                                           ; $5ee7: $9d
	sbc  [hl]                                        ; $5ee8: $9e
	ld   [$6300], sp                                 ; $5ee9: $08 $00 $63
	and  c                                           ; $5eec: $a1
	sbc  a                                           ; $5eed: $9f
	dec  c                                           ; $5eee: $0d
	inc  bc                                          ; $5eef: $03
	di                                               ; $5ef0: $f3
	inc  bc                                          ; $5ef1: $03
	sbc  c                                           ; $5ef2: $99
	ld   [hl], l                                     ; $5ef3: $75
	ld   h, a                                        ; $5ef4: $67
	ld   e, d                                        ; $5ef5: $5a
	sbc  [hl]                                        ; $5ef6: $9e
	or   b                                           ; $5ef7: $b0
	and  l                                           ; $5ef8: $a5
	cp   e                                           ; $5ef9: $bb
	ld   [hl], l                                     ; $5efa: $75
	ld   h, a                                        ; $5efb: $67
	sbc  a                                           ; $5efc: $9f
	dec  c                                           ; $5efd: $0d
	nop                                              ; $5efe: $00
	ld   a, [bc]                                     ; $5eff: $0a
	ld   bc, $7463                                   ; $5f00: $01 $63 $74
	inc  b                                           ; $5f03: $04
	cp   a                                           ; $5f04: $bf
	inc  b                                           ; $5f05: $04
	dec  d                                           ; $5f06: $15
	rst  $38                                         ; $5f07: $ff
	rst  $38                                         ; $5f08: $ff
	ld   h, c                                        ; $5f09: $61
	halt                                             ; $5f0a: $76
	sbc  l                                           ; $5f0b: $9d
	ld   h, h                                        ; $5f0c: $64
	ld   [hl], l                                     ; $5f0d: $75
	dec  c                                           ; $5f0e: $0d
	ld   bc, $b607                                   ; $5f0f: $01 $07 $b6
	db   $ed                                         ; $5f12: $ed
	ld   a, l                                        ; $5f13: $7d
	inc  b                                           ; $5f14: $04
	ld   c, c                                        ; $5f15: $49
	ld   e, c                                        ; $5f16: $59
	sub  a                                           ; $5f17: $97
	dec  b                                           ; $5f18: $05
	ld   [de], a                                     ; $5f19: $12
	ld   l, a                                        ; $5f1a: $6f
	sbc  c                                           ; $5f1b: $99
	ld   bc, $7c08                                   ; $5f1c: $01 $08 $7c
	ld   [hl], l                                     ; $5f1f: $75
	dec  c                                           ; $5f20: $0d
	ld   h, l                                        ; $5f21: $65
	sub  l                                           ; $5f22: $95
	ld   d, h                                        ; $5f23: $54
	ld   e, c                                        ; $5f24: $59
	ld   sp, hl                                      ; $5f25: $f9
	dec  c                                           ; $5f26: $0d
	nop                                              ; $5f27: $00
	ld   a, [bc]                                     ; $5f28: $0a
	add  hl, de                                      ; $5f29: $19
	dec  b                                           ; $5f2a: $05
	inc  bc                                          ; $5f2b: $03
	inc  b                                           ; $5f2c: $04
	push de                                          ; $5f2d: $d5
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	inc  b                                           ; $5f30: $04
	adc  a                                           ; $5f31: $8f
	nop                                              ; $5f32: $00
	ld   bc, $1b05                                   ; $5f33: $01 $05 $1b
	nop                                              ; $5f36: $00
	ld   [bc], a                                     ; $5f37: $02
	rlca                                             ; $5f38: $07
	cp   c                                           ; $5f39: $b9
	nop                                              ; $5f3a: $00
	ld   [bc], a                                     ; $5f3b: $02
	inc  bc                                          ; $5f3c: $03
	ld   bc, $2000                                   ; $5f3d: $01 $00 $20
	nop                                              ; $5f40: $00
	rlca                                             ; $5f41: $07
	ldh  [rP1], a                                    ; $5f42: $e0 $00
	ld   [bc], a                                     ; $5f44: $02
	inc  bc                                          ; $5f45: $03
	ld   bc, $2001                                   ; $5f46: $01 $01 $20
	nop                                              ; $5f49: $00
	rlca                                             ; $5f4a: $07
	ld   de, $0201                                   ; $5f4b: $11 $01 $02
	inc  bc                                          ; $5f4e: $03
	ld   bc, $2002                                   ; $5f4f: $01 $02 $20
	nop                                              ; $5f52: $00
	ld   b, $37                                      ; $5f53: $06 $37
	ld   bc, $000f                                   ; $5f55: $01 $0f $00
	ld   bc, $0401                                   ; $5f58: $01 $01 $04
	push de                                          ; $5f5b: $d5
	ld   [hl], l                                     ; $5f5c: $75
	ld   h, a                                        ; $5f5d: $67
	sbc  a                                           ; $5f5e: $9f
	dec  c                                           ; $5f5f: $0d
	nop                                              ; $5f60: $00
	ld   a, [bc]                                     ; $5f61: $0a
	inc  e                                           ; $5f62: $1c
	ld   bc, $0101                                   ; $5f63: $01 $01 $01
	dec  e                                           ; $5f66: $1d
	ld   b, b                                        ; $5f67: $40
	ld   de, $1103                                   ; $5f68: $11 $03 $11
	ld   bc, $2802                                   ; $5f6b: $01 $02 $28
	nop                                              ; $5f6e: $00
	ld   bc, $4a03                                   ; $5f6f: $01 $03 $4a
	ld   [bc], a                                     ; $5f72: $02
	or   h                                           ; $5f73: $b4
	ld   [hl], l                                     ; $5f74: $75
	ld   h, a                                        ; $5f75: $67
	sbc  a                                           ; $5f76: $9f
	dec  c                                           ; $5f77: $0d
	nop                                              ; $5f78: $00
	ld   a, [bc]                                     ; $5f79: $0a
	ld   b, $54                                      ; $5f7a: $06 $54
	ld   bc, $000f                                   ; $5f7c: $01 $0f $00
	ld   bc, $0401                                   ; $5f7f: $01 $01 $04
	adc  a                                           ; $5f82: $8f
	ld   [hl], l                                     ; $5f83: $75
	ld   h, a                                        ; $5f84: $67
	sbc  a                                           ; $5f85: $9f
	dec  c                                           ; $5f86: $0d
	nop                                              ; $5f87: $00
	ld   a, [bc]                                     ; $5f88: $0a
	inc  e                                           ; $5f89: $1c
	ld   bc, $0404                                   ; $5f8a: $01 $04 $04
	ld   bc, $8f04                                   ; $5f8d: $01 $04 $8f
	ld   e, c                                        ; $5f90: $59
	sub  a                                           ; $5f91: $97
	dec  b                                           ; $5f92: $05
	ld   [de], a                                     ; $5f93: $12
	ld   l, a                                        ; $5f94: $6f
	ld   [hl], h                                     ; $5f95: $74
	dec  c                                           ; $5f96: $0d
	ld   [hl], a                                     ; $5f97: $77
	ld   d, h                                        ; $5f98: $54
	ld   h, a                                        ; $5f99: $67
	sbc  c                                           ; $5f9a: $99
	and  c                                           ; $5f9b: $a1
	ld   [hl], l                                     ; $5f9c: $75
	ld   h, a                                        ; $5f9d: $67
	ld   e, c                                        ; $5f9e: $59
	rst  $38                                         ; $5f9f: $ff
	rst  $38                                         ; $5fa0: $ff
	dec  c                                           ; $5fa1: $0d
	inc  b                                           ; $5fa2: $04
	push de                                          ; $5fa3: $d5
	ld   [hl], l                                     ; $5fa4: $75
	ld   h, a                                        ; $5fa5: $67
	sub  [hl]                                        ; $5fa6: $96
	sbc  a                                           ; $5fa7: $9f
	dec  c                                           ; $5fa8: $0d
	nop                                              ; $5fa9: $00
	ld   a, [bc]                                     ; $5faa: $0a
	ld   b, $54                                      ; $5fab: $06 $54
	ld   bc, $000f                                   ; $5fad: $01 $0f $00
	ld   bc, $0501                                   ; $5fb0: $01 $01 $05
	dec  de                                          ; $5fb3: $1b
	ld   [hl], l                                     ; $5fb4: $75
	ld   h, a                                        ; $5fb5: $67
	sbc  a                                           ; $5fb6: $9f
	dec  c                                           ; $5fb7: $0d
	nop                                              ; $5fb8: $00
	ld   a, [bc]                                     ; $5fb9: $0a
	inc  e                                           ; $5fba: $1c
	ld   bc, $0000                                   ; $5fbb: $01 $00 $00
	ld   bc, $687d                                   ; $5fbe: $01 $7d $68
	sbc  d                                           ; $5fc1: $9a
	rst  $38                                         ; $5fc2: $ff
	rst  $38                                         ; $5fc3: $ff
	inc  bc                                          ; $5fc4: $03
	ld   c, d                                        ; $5fc5: $4a
	ld   [bc], a                                     ; $5fc6: $02
	or   h                                           ; $5fc7: $b4
	ld   a, l                                        ; $5fc8: $7d
	inc  b                                           ; $5fc9: $04
	push de                                          ; $5fca: $d5
	ld   [hl], l                                     ; $5fcb: $75
	ld   h, a                                        ; $5fcc: $67
	sbc  a                                           ; $5fcd: $9f
	dec  c                                           ; $5fce: $0d
	nop                                              ; $5fcf: $00
	ld   a, [bc]                                     ; $5fd0: $0a
	ld   b, $54                                      ; $5fd1: $06 $54
	ld   bc, $011c                                   ; $5fd3: $01 $1c $01
	nop                                              ; $5fd6: $00
	nop                                              ; $5fd7: $00
	ld   bc, $6f03                                   ; $5fd8: $01 $03 $6f
	ld   [bc], a                                     ; $5fdb: $02
	xor  c                                           ; $5fdc: $a9
	inc  bc                                          ; $5fdd: $03
	dec  de                                          ; $5fde: $1b
	sbc  d                                           ; $5fdf: $9a
	ld   [hl], l                                     ; $5fe0: $75
	ld   h, a                                        ; $5fe1: $67
	sbc  a                                           ; $5fe2: $9f
	dec  c                                           ; $5fe3: $0d
	inc  bc                                          ; $5fe4: $03
	ld   c, d                                        ; $5fe5: $4a
	ld   [bc], a                                     ; $5fe6: $02
	or   h                                           ; $5fe7: $b4
	ld   a, l                                        ; $5fe8: $7d
	inc  b                                           ; $5fe9: $04
	push de                                          ; $5fea: $d5
	ld   [hl], l                                     ; $5feb: $75
	ld   h, a                                        ; $5fec: $67
	sbc  a                                           ; $5fed: $9f
	dec  c                                           ; $5fee: $0d
	nop                                              ; $5fef: $00
	ld   a, [bc]                                     ; $5ff0: $0a
	inc  e                                           ; $5ff1: $1c
	ld   bc, $0000                                   ; $5ff2: $01 $00 $00
	ld   bc, $6803                                   ; $5ff5: $01 $03 $68
	ld   a, h                                        ; $5ff8: $7c
	inc  b                                           ; $5ff9: $04
	cp   a                                           ; $5ffa: $bf
	inc  b                                           ; $5ffb: $04
	dec  d                                           ; $5ffc: $15
	ld   [hl], l                                     ; $5ffd: $75
	ld   h, a                                        ; $5ffe: $67
	sbc  a                                           ; $5fff: $9f
	dec  c                                           ; $6000: $0d
	ld   bc, $0407                                   ; $6001: $01 $07 $04
	ld   c, c                                        ; $6004: $49
	ld   a, c                                        ; $6005: $79
	ld   [bc], a                                     ; $6006: $02
	ld   e, e                                        ; $6007: $5b
	sbc  l                                           ; $6008: $9d
	sbc  d                                           ; $6009: $9a
	ld   a, [hl]                                     ; $600a: $7e
	inc  bc                                          ; $600b: $03
	ld   bc, $785d                                   ; $600c: $01 $5d $78
	sbc  c                                           ; $600f: $99
	ld   bc, $7c08                                   ; $6010: $01 $08 $7c
	ld   [hl], l                                     ; $6013: $75
	dec  c                                           ; $6014: $0d
	ld   h, l                                        ; $6015: $65
	sub  l                                           ; $6016: $95
	ld   d, h                                        ; $6017: $54
	ld   e, c                                        ; $6018: $59
	ld   sp, hl                                      ; $6019: $f9
	dec  c                                           ; $601a: $0d
	nop                                              ; $601b: $00
	ld   a, [bc]                                     ; $601c: $0a
	add  hl, de                                      ; $601d: $19
	dec  b                                           ; $601e: $05
	inc  bc                                          ; $601f: $03
	dec  b                                           ; $6020: $05
	ldh  [c], a                                      ; $6021: $e2
	nop                                              ; $6022: $00
	nop                                              ; $6023: $00
	inc  bc                                          ; $6024: $03
	ld   a, [bc]                                     ; $6025: $0a
	nop                                              ; $6026: $00
	ld   bc, $2003                                   ; $6027: $01 $03 $20
	nop                                              ; $602a: $00
	ld   [bc], a                                     ; $602b: $02
	rlca                                             ; $602c: $07
	xor  l                                           ; $602d: $ad
	ld   bc, $0302                                   ; $602e: $01 $02 $03
	ld   bc, $2000                                   ; $6031: $01 $00 $20
	nop                                              ; $6034: $00
	rlca                                             ; $6035: $07
	db   $ec                                         ; $6036: $ec
	ld   bc, $0302                                   ; $6037: $01 $02 $03
	ld   bc, $2001                                   ; $603a: $01 $01 $20
	nop                                              ; $603d: $00
	rlca                                             ; $603e: $07
	ld   [de], a                                     ; $603f: $12
	ld   [bc], a                                     ; $6040: $02
	ld   [bc], a                                     ; $6041: $02
	inc  bc                                          ; $6042: $03
	ld   bc, $2002                                   ; $6043: $01 $02 $20
	nop                                              ; $6046: $00
	ld   b, $3e                                      ; $6047: $06 $3e
	ld   [bc], a                                     ; $6049: $02
	rrca                                             ; $604a: $0f
	nop                                              ; $604b: $00
	ld   bc, $0501                                   ; $604c: $01 $01 $05
	ldh  [c], a                                      ; $604f: $e2
	ld   [hl], l                                     ; $6050: $75
	ld   h, a                                        ; $6051: $67
	sbc  a                                           ; $6052: $9f
	dec  c                                           ; $6053: $0d
	nop                                              ; $6054: $00
	ld   a, [bc]                                     ; $6055: $0a
	inc  e                                           ; $6056: $1c
	ld   bc, $0101                                   ; $6057: $01 $01 $01
	dec  e                                           ; $605a: $1d
	ld   b, b                                        ; $605b: $40
	ld   de, $1103                                   ; $605c: $11 $03 $11
	ld   bc, $2802                                   ; $605f: $01 $02 $28
	nop                                              ; $6062: $00
	ld   bc, $4a03                                   ; $6063: $01 $03 $4a
	ld   [bc], a                                     ; $6066: $02
	or   h                                           ; $6067: $b4
	ld   [hl], l                                     ; $6068: $75
	ld   h, a                                        ; $6069: $67
	sbc  a                                           ; $606a: $9f
	dec  c                                           ; $606b: $0d
	ld   h, c                                        ; $606c: $61
	and  c                                           ; $606d: $a1
	ld   a, b                                        ; $606e: $78
	adc  [hl]                                        ; $606f: $8e
	ld   l, b                                        ; $6070: $68
	ld   e, c                                        ; $6071: $59
	ld   h, l                                        ; $6072: $65
	ld   d, d                                        ; $6073: $52
	ld   [bc], a                                     ; $6074: $02
	sbc  l                                           ; $6075: $9d
	inc  b                                           ; $6076: $04
	sub  c                                           ; $6077: $91
	dec  c                                           ; $6078: $0d
	sub  [hl]                                        ; $6079: $96
	ld   e, l                                        ; $607a: $5d
	inc  b                                           ; $607b: $04
	dec  hl                                          ; $607c: $2b
	ld   [hl], c                                     ; $607d: $71
	ld   [hl], h                                     ; $607e: $74
	adc  h                                           ; $607f: $8c
	ld   h, a                                        ; $6080: $67
	ld   a, e                                        ; $6081: $7b
	sbc  a                                           ; $6082: $9f
	dec  c                                           ; $6083: $0d
	nop                                              ; $6084: $00
	ld   a, [bc]                                     ; $6085: $0a
	ld   b, $5b                                      ; $6086: $06 $5b
	ld   [bc], a                                     ; $6088: $02
	rrca                                             ; $6089: $0f
	nop                                              ; $608a: $00
	ld   bc, $0301                                   ; $608b: $01 $01 $03
	ld   a, [bc]                                     ; $608e: $0a
	ld   [hl], l                                     ; $608f: $75
	ld   h, a                                        ; $6090: $67
	sbc  a                                           ; $6091: $9f
	dec  c                                           ; $6092: $0d
	nop                                              ; $6093: $00
	ld   a, [bc]                                     ; $6094: $0a
	inc  e                                           ; $6095: $1c
	ld   bc, $0000                                   ; $6096: $01 $00 $00
	ld   bc, $687d                                   ; $6099: $01 $7d $68
	sbc  d                                           ; $609c: $9a
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	inc  bc                                          ; $609f: $03
	ld   c, d                                        ; $60a0: $4a
	ld   [bc], a                                     ; $60a1: $02
	or   h                                           ; $60a2: $b4
	ld   a, l                                        ; $60a3: $7d
	dec  b                                           ; $60a4: $05
	ldh  [c], a                                      ; $60a5: $e2
	ld   [hl], l                                     ; $60a6: $75
	ld   h, a                                        ; $60a7: $67
	sbc  a                                           ; $60a8: $9f
	dec  c                                           ; $60a9: $0d
	nop                                              ; $60aa: $00
	ld   a, [bc]                                     ; $60ab: $0a
	ld   b, $5b                                      ; $60ac: $06 $5b
	ld   [bc], a                                     ; $60ae: $02
	rrca                                             ; $60af: $0f
	nop                                              ; $60b0: $00
	ld   bc, $0301                                   ; $60b1: $01 $01 $03
	jr   nz, jr_069_612b                             ; $60b4: $20 $75

	ld   h, a                                        ; $60b6: $67
	sbc  a                                           ; $60b7: $9f
	dec  c                                           ; $60b8: $0d
	nop                                              ; $60b9: $00
	ld   a, [bc]                                     ; $60ba: $0a
	inc  e                                           ; $60bb: $1c
	ld   bc, $0404                                   ; $60bc: $01 $04 $04
	ld   bc, $9c03                                   ; $60bf: $01 $03 $9c
	ld   e, d                                        ; $60c2: $5a
	ld   [bc], a                                     ; $60c3: $02
	inc  d                                           ; $60c4: $14
	ld   d, d                                        ; $60c5: $52
	adc  h                                           ; $60c6: $8c
	ld   h, a                                        ; $60c7: $67
	rst  $38                                         ; $60c8: $ff
	rst  $38                                         ; $60c9: $ff
	dec  c                                           ; $60ca: $0d
	inc  bc                                          ; $60cb: $03
	ld   c, d                                        ; $60cc: $4a
	ld   [bc], a                                     ; $60cd: $02
	or   h                                           ; $60ce: $b4
	ld   a, l                                        ; $60cf: $7d
	dec  b                                           ; $60d0: $05
	ldh  [c], a                                      ; $60d1: $e2
	ld   [hl], l                                     ; $60d2: $75
	ld   h, a                                        ; $60d3: $67
	sbc  a                                           ; $60d4: $9f
	dec  c                                           ; $60d5: $0d
	nop                                              ; $60d6: $00
	ld   a, [bc]                                     ; $60d7: $0a
	ld   b, $5b                                      ; $60d8: $06 $5b
	ld   [bc], a                                     ; $60da: $02
	inc  e                                           ; $60db: $1c
	ld   bc, $0000                                   ; $60dc: $01 $00 $00
	ld   bc, $6f03                                   ; $60df: $01 $03 $6f
	ld   [bc], a                                     ; $60e2: $02
	xor  c                                           ; $60e3: $a9
	inc  bc                                          ; $60e4: $03
	dec  de                                          ; $60e5: $1b
	sbc  d                                           ; $60e6: $9a
	ld   [hl], l                                     ; $60e7: $75
	ld   h, a                                        ; $60e8: $67
	sbc  a                                           ; $60e9: $9f
	dec  c                                           ; $60ea: $0d
	inc  bc                                          ; $60eb: $03
	ld   c, d                                        ; $60ec: $4a
	ld   [bc], a                                     ; $60ed: $02
	or   h                                           ; $60ee: $b4
	ld   a, l                                        ; $60ef: $7d
	dec  b                                           ; $60f0: $05
	ldh  [c], a                                      ; $60f1: $e2
	ld   [hl], l                                     ; $60f2: $75
	ld   h, a                                        ; $60f3: $67
	sbc  a                                           ; $60f4: $9f
	dec  c                                           ; $60f5: $0d
	nop                                              ; $60f6: $00
	ld   a, [bc]                                     ; $60f7: $0a
	inc  e                                           ; $60f8: $1c
	ld   bc, $0000                                   ; $60f9: $01 $00 $00
	ld   bc, $7463                                   ; $60fc: $01 $63 $74
	sbc  [hl]                                        ; $60ff: $9e
	ld   h, c                                        ; $6100: $61
	sbc  d                                           ; $6101: $9a
	adc  h                                           ; $6102: $8c
	ld   [hl], l                                     ; $6103: $75
	ld   a, h                                        ; $6104: $7c
	ld   b, $09                                      ; $6105: $06 $09
	ld   [hl], d                                     ; $6107: $72
	ld   a, h                                        ; $6108: $7c
	dec  c                                           ; $6109: $0d
	inc  bc                                          ; $610a: $03
	ld   c, d                                        ; $610b: $4a
	ld   [bc], a                                     ; $610c: $02
	or   h                                           ; $610d: $b4
	and  b                                           ; $610e: $a0
	inc  bc                                          ; $610f: $03
	nop                                              ; $6110: $00
	adc  l                                           ; $6111: $8d
	ld   [bc], a                                     ; $6112: $02
	ld   a, e                                        ; $6113: $7b
	sbc  l                                           ; $6114: $9d
	ld   l, c                                        ; $6115: $69
	sbc  c                                           ; $6116: $99
	halt                                             ; $6117: $76
	ld   [bc], a                                     ; $6118: $02
	jr   nz, jr_069_618d                             ; $6119: $20 $72

	ld   a, h                                        ; $611b: $7c
	dec  c                                           ; $611c: $0d
	ld   [bc], a                                     ; $611d: $02
	rst  ToBoot                                         ; $611e: $c7
	inc  bc                                          ; $611f: $03
	sbc  h                                           ; $6120: $9c
	ld   a, c                                        ; $6121: $79
	ld   a, b                                        ; $6122: $78
	sbc  b                                           ; $6123: $98
	adc  h                                           ; $6124: $8c
	ld   h, a                                        ; $6125: $67
	rst  $38                                         ; $6126: $ff
	rst  $38                                         ; $6127: $ff
	dec  c                                           ; $6128: $0d
	nop                                              ; $6129: $00
	ld   a, [bc]                                     ; $612a: $0a

jr_069_612b:
	ld   bc, $7c6b                                   ; $612b: $01 $6b $7c
	ld   [bc], a                                     ; $612e: $02
	rst  ToBoot                                         ; $612f: $c7
	inc  bc                                          ; $6130: $03
	sbc  h                                           ; $6131: $9c
	halt                                             ; $6132: $76
	ld   a, l                                        ; $6133: $7d
	inc  bc                                          ; $6134: $03
	ld   l, b                                        ; $6135: $68
	ld   a, h                                        ; $6136: $7c
	dec  c                                           ; $6137: $0d
	ld   [hl], a                                     ; $6138: $77
	sbc  d                                           ; $6139: $9a
	ld   [hl], l                                     ; $613a: $75
	ld   h, l                                        ; $613b: $65
	sub  l                                           ; $613c: $95
	ld   d, h                                        ; $613d: $54
	ld   sp, hl                                      ; $613e: $f9
	dec  c                                           ; $613f: $0d
	nop                                              ; $6140: $00
	ld   a, [bc]                                     ; $6141: $0a
	add  hl, de                                      ; $6142: $19
	dec  b                                           ; $6143: $05
	inc  bc                                          ; $6144: $03
	dec  b                                           ; $6145: $05
	jp   hl                                          ; $6146: $e9


	nop                                              ; $6147: $00
	nop                                              ; $6148: $00
	dec  b                                           ; $6149: $05
	add  sp, $00                                     ; $614a: $e8 $00
	ld   bc, $a705                                   ; $614c: $01 $05 $a7
	nop                                              ; $614f: $00
	ld   [bc], a                                     ; $6150: $02
	rlca                                             ; $6151: $07
	jp   nc, $0202                                   ; $6152: $d2 $02 $02

	inc  bc                                          ; $6155: $03
	ld   bc, $2000                                   ; $6156: $01 $00 $20
	nop                                              ; $6159: $00
	rlca                                             ; $615a: $07
	rlca                                             ; $615b: $07
	inc  bc                                          ; $615c: $03
	ld   [bc], a                                     ; $615d: $02
	inc  bc                                          ; $615e: $03
	ld   bc, $2001                                   ; $615f: $01 $01 $20
	nop                                              ; $6162: $00
	rlca                                             ; $6163: $07
	dec  l                                           ; $6164: $2d
	inc  bc                                          ; $6165: $03
	ld   [bc], a                                     ; $6166: $02
	inc  bc                                          ; $6167: $03
	ld   bc, $2002                                   ; $6168: $01 $02 $20
	nop                                              ; $616b: $00
	ld   b, $53                                      ; $616c: $06 $53
	inc  bc                                          ; $616e: $03
	rrca                                             ; $616f: $0f
	nop                                              ; $6170: $00
	ld   bc, $0501                                   ; $6171: $01 $01 $05
	jp   hl                                          ; $6174: $e9


	ld   [hl], l                                     ; $6175: $75
	ld   h, a                                        ; $6176: $67
	sbc  a                                           ; $6177: $9f
	dec  c                                           ; $6178: $0d
	nop                                              ; $6179: $00
	ld   a, [bc]                                     ; $617a: $0a
	inc  e                                           ; $617b: $1c
	ld   bc, $0101                                   ; $617c: $01 $01 $01
	dec  e                                           ; $617f: $1d
	ld   b, b                                        ; $6180: $40
	ld   de, $1103                                   ; $6181: $11 $03 $11
	ld   bc, $2803                                   ; $6184: $01 $03 $28
	nop                                              ; $6187: $00
	ld   bc, $4a03                                   ; $6188: $01 $03 $4a
	ld   [bc], a                                     ; $618b: $02
	or   h                                           ; $618c: $b4

jr_069_618d:
	ld   [hl], l                                     ; $618d: $75
	ld   h, a                                        ; $618e: $67
	ld   a, [$080d]                                  ; $618f: $fa $0d $08
	nop                                              ; $6192: $00
	ld   h, e                                        ; $6193: $63
	and  c                                           ; $6194: $a1
	sbc  [hl]                                        ; $6195: $9e
	dec  c                                           ; $6196: $0d
	ld   h, a                                        ; $6197: $67
	ld   h, d                                        ; $6198: $62
	ld   d, d                                        ; $6199: $52
	ld   [hl], l                                     ; $619a: $75
	ld   h, a                                        ; $619b: $67
	ld   a, e                                        ; $619c: $7b
	sbc  a                                           ; $619d: $9f
	dec  c                                           ; $619e: $0d
	nop                                              ; $619f: $00
	ld   a, [bc]                                     ; $61a0: $0a
	ld   b, $71                                      ; $61a1: $06 $71
	inc  bc                                          ; $61a3: $03
	rrca                                             ; $61a4: $0f
	nop                                              ; $61a5: $00
	ld   bc, $0501                                   ; $61a6: $01 $01 $05
	add  sp, $75                                     ; $61a9: $e8 $75
	ld   h, a                                        ; $61ab: $67
	sbc  a                                           ; $61ac: $9f
	dec  c                                           ; $61ad: $0d
	nop                                              ; $61ae: $00
	ld   a, [bc]                                     ; $61af: $0a
	inc  e                                           ; $61b0: $1c
	ld   bc, $0000                                   ; $61b1: $01 $00 $00
	ld   bc, $687d                                   ; $61b4: $01 $7d $68
	sbc  d                                           ; $61b7: $9a
	rst  $38                                         ; $61b8: $ff
	rst  $38                                         ; $61b9: $ff
	inc  bc                                          ; $61ba: $03
	ld   c, d                                        ; $61bb: $4a
	ld   [bc], a                                     ; $61bc: $02
	or   h                                           ; $61bd: $b4
	ld   a, l                                        ; $61be: $7d
	dec  b                                           ; $61bf: $05
	jp   hl                                          ; $61c0: $e9


	ld   [hl], l                                     ; $61c1: $75
	ld   h, a                                        ; $61c2: $67
	sbc  a                                           ; $61c3: $9f
	dec  c                                           ; $61c4: $0d
	nop                                              ; $61c5: $00
	ld   a, [bc]                                     ; $61c6: $0a
	ld   b, $71                                      ; $61c7: $06 $71
	inc  bc                                          ; $61c9: $03
	rrca                                             ; $61ca: $0f
	nop                                              ; $61cb: $00
	ld   bc, $0501                                   ; $61cc: $01 $01 $05
	and  a                                           ; $61cf: $a7
	ld   [hl], l                                     ; $61d0: $75
	ld   h, a                                        ; $61d1: $67
	sbc  a                                           ; $61d2: $9f
	dec  c                                           ; $61d3: $0d
	nop                                              ; $61d4: $00
	ld   a, [bc]                                     ; $61d5: $0a
	inc  e                                           ; $61d6: $1c
	ld   bc, $0000                                   ; $61d7: $01 $00 $00
	ld   bc, $687d                                   ; $61da: $01 $7d $68
	sbc  d                                           ; $61dd: $9a
	rst  $38                                         ; $61de: $ff
	rst  $38                                         ; $61df: $ff
	inc  bc                                          ; $61e0: $03
	ld   c, d                                        ; $61e1: $4a
	ld   [bc], a                                     ; $61e2: $02
	or   h                                           ; $61e3: $b4
	ld   a, l                                        ; $61e4: $7d
	dec  b                                           ; $61e5: $05
	jp   hl                                          ; $61e6: $e9


	ld   [hl], l                                     ; $61e7: $75
	ld   h, a                                        ; $61e8: $67
	sbc  a                                           ; $61e9: $9f
	dec  c                                           ; $61ea: $0d
	nop                                              ; $61eb: $00
	ld   a, [bc]                                     ; $61ec: $0a
	ld   b, $71                                      ; $61ed: $06 $71
	inc  bc                                          ; $61ef: $03
	inc  e                                           ; $61f0: $1c
	ld   bc, $0000                                   ; $61f1: $01 $00 $00
	ld   bc, $6f03                                   ; $61f4: $01 $03 $6f
	ld   [bc], a                                     ; $61f7: $02
	xor  c                                           ; $61f8: $a9
	inc  bc                                          ; $61f9: $03
	dec  de                                          ; $61fa: $1b
	sbc  d                                           ; $61fb: $9a
	ld   [hl], l                                     ; $61fc: $75
	ld   h, a                                        ; $61fd: $67
	sbc  a                                           ; $61fe: $9f
	dec  c                                           ; $61ff: $0d
	inc  bc                                          ; $6200: $03
	ld   c, d                                        ; $6201: $4a
	ld   [bc], a                                     ; $6202: $02
	or   h                                           ; $6203: $b4
	ld   a, l                                        ; $6204: $7d
	dec  b                                           ; $6205: $05
	jp   hl                                          ; $6206: $e9


	ld   [hl], l                                     ; $6207: $75
	ld   h, l                                        ; $6208: $65
	ld   l, l                                        ; $6209: $6d
	sbc  a                                           ; $620a: $9f
	dec  c                                           ; $620b: $0d
	nop                                              ; $620c: $00
	ld   a, [bc]                                     ; $620d: $0a
	ld   bc, $0b02                                   ; $620e: $01 $02 $0b
	inc  bc                                          ; $6211: $03
	ld   h, l                                        ; $6212: $65
	ld   [hl], l                                     ; $6213: $75
	or   b                                           ; $6214: $b0
	and  l                                           ; $6215: $a5
	cp   e                                           ; $6216: $bb
	ld   a, l                                        ; $6217: $7d
	inc  bc                                          ; $6218: $03
	ld   a, [hl]                                     ; $6219: $7e
	sbc  l                                           ; $621a: $9d
	sbc  b                                           ; $621b: $98
	ld   [hl], l                                     ; $621c: $75
	ld   h, a                                        ; $621d: $67
	sbc  a                                           ; $621e: $9f
	dec  c                                           ; $621f: $0d
	inc  b                                           ; $6220: $04
	ret  c                                           ; $6221: $d8

	inc  b                                           ; $6222: $04
	xor  h                                           ; $6223: $ac
	ld   e, c                                        ; $6224: $59
	ld   [hl], c                                     ; $6225: $71
	ld   l, l                                        ; $6226: $6d
	ld   [hl], l                                     ; $6227: $75
	ld   h, a                                        ; $6228: $67
	ld   e, c                                        ; $6229: $59
	ld   sp, hl                                      ; $622a: $f9
	dec  c                                           ; $622b: $0d
	nop                                              ; $622c: $00
	ld   a, [bc]                                     ; $622d: $0a
	ld   bc, $7d75                                   ; $622e: $01 $75 $7d
	sbc  [hl]                                        ; $6231: $9e
	ld   e, b                                        ; $6232: $58
	sub  d                                           ; $6233: $92
	ld   h, a                                        ; $6234: $67
	adc  l                                           ; $6235: $8d
	ld   a, b                                        ; $6236: $78
	ld   h, e                                        ; $6237: $63
	ld   d, d                                        ; $6238: $52
	sbc  a                                           ; $6239: $9f
	dec  c                                           ; $623a: $0d
	nop                                              ; $623b: $00
	ld   a, [bc]                                     ; $623c: $0a
	nop                                              ; $623d: $00
	nop                                              ; $623e: $00
	ld   c, $55                                      ; $623f: $0e $55
	rrca                                             ; $6241: $0f
	nop                                              ; $6242: $00
	ld   bc, $050d                                   ; $6243: $01 $0d $05
	nop                                              ; $6246: $00
	ld   [bc], a                                     ; $6247: $02
	ld   bc, $a161                                   ; $6248: $01 $61 $a1
	ld   a, [hl]                                     ; $624b: $7e
	and  c                                           ; $624c: $a1
	ld   a, l                                        ; $624d: $7d
	sbc  [hl]                                        ; $624e: $9e
	ld   [bc], a                                     ; $624f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6250: $cf
	dec  b                                           ; $6251: $05
	ld   a, [de]                                     ; $6252: $1a
	ld   h, e                                        ; $6253: $63
	and  c                                           ; $6254: $a1
	sbc  a                                           ; $6255: $9f
	dec  c                                           ; $6256: $0d
	nop                                              ; $6257: $00
	ld   a, [bc]                                     ; $6258: $0a
	rrca                                             ; $6259: $0f
	dec  b                                           ; $625a: $05
	nop                                              ; $625b: $00
	ld   bc, $f9a1                                   ; $625c: $01 $a1 $f9
	db   $10                                         ; $625f: $10
	ld   [hl], a                                     ; $6260: $77
	ld   a, b                                        ; $6261: $78
	ld   d, d                                        ; $6262: $52
	ld   h, l                                        ; $6263: $65
	ld   l, l                                        ; $6264: $6d
	and  c                                           ; $6265: $a1
	sub  d                                           ; $6266: $92
	ld   sp, hl                                      ; $6267: $f9
	dec  c                                           ; $6268: $0d
	nop                                              ; $6269: $00
	ld   a, [bc]                                     ; $626a: $0a
	rrca                                             ; $626b: $0f
	nop                                              ; $626c: $00
	ld   bc, $5201                                   ; $626d: $01 $01 $52
	ld   d, [hl]                                     ; $6270: $56
	sbc  [hl]                                        ; $6271: $9e
	inc  b                                           ; $6272: $04
	ld   c, c                                        ; $6273: $49
	halt                                             ; $6274: $76
	ld   a, b                                        ; $6275: $78
	ld   e, l                                        ; $6276: $5d
	rst  $38                                         ; $6277: $ff
	rst  $38                                         ; $6278: $ff
	dec  c                                           ; $6279: $0d
	nop                                              ; $627a: $00
	ld   a, [bc]                                     ; $627b: $0a
	rrca                                             ; $627c: $0f
	dec  b                                           ; $627d: $05
	nop                                              ; $627e: $00
	ld   bc, $546b                                   ; $627f: $01 $6b $54
	ld   d, d                                        ; $6282: $52
	ld   d, [hl]                                     ; $6283: $56
	ld   a, [hl]                                     ; $6284: $7e
	inc  b                                           ; $6285: $04
	dec  c                                           ; $6286: $0d
	ld   [bc], a                                     ; $6287: $02
	sub  [hl]                                        ; $6288: $96
	inc  b                                           ; $6289: $04
	ld   b, l                                        ; $628a: $45
	inc  b                                           ; $628b: $04
	ld   a, [bc]                                     ; $628c: $0a
	sub  b                                           ; $628d: $90
	dec  c                                           ; $628e: $0d
	sub  b                                           ; $628f: $90
	ld   d, h                                        ; $6290: $54
	inc  bc                                          ; $6291: $03
	ld   a, [hl]                                     ; $6292: $7e
	sbc  l                                           ; $6293: $9d
	sbc  b                                           ; $6294: $98
	sub  d                                           ; $6295: $92
	ld   a, b                                        ; $6296: $78
	rst  $38                                         ; $6297: $ff
	rst  $38                                         ; $6298: $ff
	dec  c                                           ; $6299: $0d
	ld   [hl], a                                     ; $629a: $77
	ld   a, b                                        ; $629b: $78
	ld   d, d                                        ; $629c: $52
	sub  d                                           ; $629d: $92
	ld   [hl], c                                     ; $629e: $71
	ld   l, l                                        ; $629f: $6d
	ld   sp, hl                                      ; $62a0: $f9
	dec  c                                           ; $62a1: $0d
	nop                                              ; $62a2: $00
	ld   a, [bc]                                     ; $62a3: $0a
	add  hl, de                                      ; $62a4: $19
	dec  b                                           ; $62a5: $05
	inc  bc                                          ; $62a6: $03
	dec  b                                           ; $62a7: $05
	inc  de                                          ; $62a8: $13
	ld   h, l                                        ; $62a9: $65
	ld   e, c                                        ; $62aa: $59
	ld   [hl], c                                     ; $62ab: $71
	ld   l, l                                        ; $62ac: $6d
	ld   [hl], l                                     ; $62ad: $75
	ld   h, a                                        ; $62ae: $67
	nop                                              ; $62af: $00
	nop                                              ; $62b0: $00
	ld   d, d                                        ; $62b1: $52
	ld   d, d                                        ; $62b2: $52
	inc  b                                           ; $62b3: $04
	xor  [hl]                                        ; $62b4: $ae
	ld   [bc], a                                     ; $62b5: $02
	call nc, Call_069_7879                           ; $62b6: $d4 $79 $78
	sbc  b                                           ; $62b9: $98
	adc  h                                           ; $62ba: $8c
	ld   h, l                                        ; $62bb: $65
	ld   l, l                                        ; $62bc: $6d
	nop                                              ; $62bd: $00
	ld   bc, $9772                                   ; $62be: $01 $72 $97
	ld   e, c                                        ; $62c1: $59
	ld   [hl], c                                     ; $62c2: $71
	ld   l, l                                        ; $62c3: $6d
	ld   [hl], l                                     ; $62c4: $75
	ld   h, a                                        ; $62c5: $67
	nop                                              ; $62c6: $00
	ld   [bc], a                                     ; $62c7: $02
	rlca                                             ; $62c8: $07
	and  a                                           ; $62c9: $a7
	nop                                              ; $62ca: $00
	ld   [bc], a                                     ; $62cb: $02
	inc  bc                                          ; $62cc: $03
	ld   bc, $2000                                   ; $62cd: $01 $00 $20
	nop                                              ; $62d0: $00
	rlca                                             ; $62d1: $07
	jr   nz, jr_069_62d5                             ; $62d2: $20 $01

	ld   [bc], a                                     ; $62d4: $02

jr_069_62d5:
	inc  bc                                          ; $62d5: $03
	ld   bc, $2001                                   ; $62d6: $01 $01 $20
	nop                                              ; $62d9: $00
	rlca                                             ; $62da: $07
	ld   h, l                                        ; $62db: $65
	ld   bc, $0302                                   ; $62dc: $01 $02 $03
	ld   bc, $2002                                   ; $62df: $01 $02 $20
	nop                                              ; $62e2: $00
	ld   b, $af                                      ; $62e3: $06 $af
	ld   bc, $000f                                   ; $62e5: $01 $0f $00
	ld   bc, $0501                                   ; $62e8: $01 $01 $05
	inc  de                                          ; $62eb: $13
	ld   h, l                                        ; $62ec: $65
	ld   e, c                                        ; $62ed: $59
	ld   [hl], c                                     ; $62ee: $71
	ld   l, l                                        ; $62ef: $6d
	ld   [hl], l                                     ; $62f0: $75
	ld   h, a                                        ; $62f1: $67
	sbc  a                                           ; $62f2: $9f
	dec  c                                           ; $62f3: $0d
	adc  l                                           ; $62f4: $8d
	ld   a, b                                        ; $62f5: $78
	ld   h, e                                        ; $62f6: $63
	and  c                                           ; $62f7: $a1
	inc  b                                           ; $62f8: $04
	and  c                                           ; $62f9: $a1
	inc  bc                                          ; $62fa: $03
	add  d                                           ; $62fb: $82
	ld   l, [hl]                                     ; $62fc: $6e
	ld   h, l                                        ; $62fd: $65
	dec  c                                           ; $62fe: $0d
	nop                                              ; $62ff: $00
	ld   a, [bc]                                     ; $6300: $0a
	ld   bc, $7978                                   ; $6301: $01 $78 $79
	sub  [hl]                                        ; $6304: $96
	sbc  b                                           ; $6305: $98
	sbc  [hl]                                        ; $6306: $9e
	ld   d, d                                        ; $6307: $52
	ld   d, d                                        ; $6308: $52
	inc  bc                                          ; $6309: $03
	add  d                                           ; $630a: $82
	ld   l, l                                        ; $630b: $6d
	ld   l, a                                        ; $630c: $6f
	ld   a, [hl]                                     ; $630d: $7e
	ld   e, c                                        ; $630e: $59
	sbc  b                                           ; $630f: $98
	ld   [hl], l                                     ; $6310: $75
	dec  c                                           ; $6311: $0d
	sub  b                                           ; $6312: $90
	ld   d, h                                        ; $6313: $54
	sbc  [hl]                                        ; $6314: $9e
	dec  b                                           ; $6315: $05
	ld   e, h                                        ; $6316: $5c
	inc  b                                           ; $6317: $04
	xor  d                                           ; $6318: $aa
	ld   e, d                                        ; $6319: $5a
	inc  bc                                          ; $631a: $03
	ld   l, c                                        ; $631b: $69
	ld   [bc], a                                     ; $631c: $02
	cp   [hl]                                        ; $631d: $be
	ld   [hl], l                                     ; $631e: $75
	ld   h, l                                        ; $631f: $65
	ld   l, l                                        ; $6320: $6d
	sbc  a                                           ; $6321: $9f
	dec  c                                           ; $6322: $0d
	nop                                              ; $6323: $00
	ld   a, [bc]                                     ; $6324: $0a
	inc  e                                           ; $6325: $1c
	dec  b                                           ; $6326: $05
	inc  b                                           ; $6327: $04
	inc  b                                           ; $6328: $04
	dec  e                                           ; $6329: $1d
	ld   b, b                                        ; $632a: $40
	dec  d                                           ; $632b: $15
	inc  bc                                          ; $632c: $03
	dec  d                                           ; $632d: $15
	ld   bc, $2803                                   ; $632e: $01 $03 $28
	nop                                              ; $6331: $00
	ld   bc, $d9a9                                   ; $6332: $01 $a9 $d9
	reti                                             ; $6335: $d9


	sbc  [hl]                                        ; $6336: $9e
	inc  b                                           ; $6337: $04
	and  c                                           ; $6338: $a1
	inc  bc                                          ; $6339: $03
	add  d                                           ; $633a: $82
	ld   e, c                                        ; $633b: $59
	ld   c, a                                        ; $633c: $4f
	ld   sp, hl                                      ; $633d: $f9
	dec  c                                           ; $633e: $0d
	rst  $38                                         ; $633f: $ff
	rst  $38                                         ; $6340: $ff
	ld   [hl], l                                     ; $6341: $75
	sub  b                                           ; $6342: $90
	sbc  [hl]                                        ; $6343: $9e
	sub  [hl]                                        ; $6344: $96
	ld   e, c                                        ; $6345: $59
	ld   [hl], c                                     ; $6346: $71
	ld   l, l                                        ; $6347: $6d
	sbc  l                                           ; $6348: $9d
	sbc  a                                           ; $6349: $9f
	dec  c                                           ; $634a: $0d
	dec  b                                           ; $634b: $05
	inc  de                                          ; $634c: $13
	ld   h, l                                        ; $634d: $65
	ld   e, c                                        ; $634e: $59
	ld   [hl], c                                     ; $634f: $71
	ld   l, l                                        ; $6350: $6d
	ld   [bc], a                                     ; $6351: $02
	sbc  l                                           ; $6352: $9d
	ld   d, h                                        ; $6353: $54
	ld   [hl], h                                     ; $6354: $74
	sub  b                                           ; $6355: $90
	sbc  e                                           ; $6356: $9b
	ld   [hl], h                                     ; $6357: $74
	sbc  a                                           ; $6358: $9f
	dec  c                                           ; $6359: $0d
	nop                                              ; $635a: $00
	ld   a, [bc]                                     ; $635b: $0a
	ld   b, $0b                                      ; $635c: $06 $0b
	ld   [bc], a                                     ; $635e: $02
	rrca                                             ; $635f: $0f
	nop                                              ; $6360: $00
	ld   bc, $5201                                   ; $6361: $01 $01 $52
	ld   d, d                                        ; $6364: $52
	inc  b                                           ; $6365: $04
	xor  [hl]                                        ; $6366: $ae
	ld   [bc], a                                     ; $6367: $02
	call nc, Call_069_7879                           ; $6368: $d4 $79 $78
	sbc  b                                           ; $636b: $98
	adc  h                                           ; $636c: $8c
	ld   h, l                                        ; $636d: $65
	ld   l, l                                        ; $636e: $6d
	sbc  a                                           ; $636f: $9f
	dec  c                                           ; $6370: $0d
	ld   d, b                                        ; $6371: $50
	sbc  b                                           ; $6372: $98
	ld   e, d                                        ; $6373: $5a
	halt                                             ; $6374: $76
	ld   d, h                                        ; $6375: $54
	ld   h, d                                        ; $6376: $62
	ld   h, h                                        ; $6377: $64
	ld   d, d                                        ; $6378: $52
	adc  h                                           ; $6379: $8c
	ld   h, a                                        ; $637a: $67
	sbc  a                                           ; $637b: $9f
	dec  c                                           ; $637c: $0d
	nop                                              ; $637d: $00
	ld   a, [bc]                                     ; $637e: $0a
	inc  e                                           ; $637f: $1c
	dec  b                                           ; $6380: $05
	ld   bc, $1d01                                   ; $6381: $01 $01 $1d
	ld   b, b                                        ; $6384: $40
	dec  d                                           ; $6385: $15
	inc  bc                                          ; $6386: $03
	dec  d                                           ; $6387: $15
	ld   bc, $2802                                   ; $6388: $01 $02 $28
	nop                                              ; $638b: $00
	ld   bc, $9252                                   ; $638c: $01 $52 $92
	ld   d, d                                        ; $638f: $52
	sub  d                                           ; $6390: $92
	sbc  a                                           ; $6391: $9f
	dec  c                                           ; $6392: $0d
	ld   h, c                                        ; $6393: $61
	ld   l, a                                        ; $6394: $6f
	sub  a                                           ; $6395: $97
	ld   h, c                                        ; $6396: $61
	ld   l, e                                        ; $6397: $6b
	sbc  [hl]                                        ; $6398: $9e
	ld   e, b                                        ; $6399: $58
	ld   e, b                                        ; $639a: $58
	ld   e, e                                        ; $639b: $5b
	ld   a, c                                        ; $639c: $79
	sbc  a                                           ; $639d: $9f
	dec  c                                           ; $639e: $0d
	nop                                              ; $639f: $00
	ld   a, [bc]                                     ; $63a0: $0a
	ld   b, $0b                                      ; $63a1: $06 $0b
	ld   [bc], a                                     ; $63a3: $02
	rrca                                             ; $63a4: $0f
	nop                                              ; $63a5: $00
	ld   bc, $ff01                                   ; $63a6: $01 $01 $ff
	rst  $38                                         ; $63a9: $ff
	rst  $38                                         ; $63aa: $ff
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	rst  $38                                         ; $63ad: $ff
	dec  c                                           ; $63ae: $0d
	ld   [hl], d                                     ; $63af: $72
	sub  a                                           ; $63b0: $97
	ld   e, c                                        ; $63b1: $59
	ld   [hl], c                                     ; $63b2: $71
	ld   l, l                                        ; $63b3: $6d
	ld   [hl], l                                     ; $63b4: $75
	ld   h, a                                        ; $63b5: $67
	rst  $38                                         ; $63b6: $ff
	rst  $38                                         ; $63b7: $ff
	dec  c                                           ; $63b8: $0d
	nop                                              ; $63b9: $00
	ld   a, [bc]                                     ; $63ba: $0a
	inc  e                                           ; $63bb: $1c
	dec  b                                           ; $63bc: $05
	ld   [bc], a                                     ; $63bd: $02
	ld   [bc], a                                     ; $63be: $02
	dec  e                                           ; $63bf: $1d
	ld   b, b                                        ; $63c0: $40
	dec  d                                           ; $63c1: $15
	inc  bc                                          ; $63c2: $03
	dec  d                                           ; $63c3: $15
	ld   bc, $2901                                   ; $63c4: $01 $01 $29
	nop                                              ; $63c7: $00
	ld   bc, $546b                                   ; $63c8: $01 $6b $54
	ld   a, b                                        ; $63cb: $78
	and  c                                           ; $63cc: $a1
	ld   e, c                                        ; $63cd: $59
	ld   sp, hl                                      ; $63ce: $f9
	dec  c                                           ; $63cf: $0d
	ld   [hl], d                                     ; $63d0: $72
	sub  a                                           ; $63d1: $97
	ld   e, c                                        ; $63d2: $59
	ld   [hl], c                                     ; $63d3: $71
	ld   l, l                                        ; $63d4: $6d
	ld   e, c                                        ; $63d5: $59
	db   $fc                                         ; $63d6: $fc
	sbc  a                                           ; $63d7: $9f
	dec  c                                           ; $63d8: $0d
	adc  h                                           ; $63d9: $8c
	ld   d, b                                        ; $63da: $50
	sbc  [hl]                                        ; $63db: $9e
	ld   l, e                                        ; $63dc: $6b
	sbc  d                                           ; $63dd: $9a
	sub  b                                           ; $63de: $90
	adc  h                                           ; $63df: $8c
	ld   l, l                                        ; $63e0: $6d
	inc  b                                           ; $63e1: $04
	xor  [hl]                                        ; $63e2: $ae
	ld   [bc], a                                     ; $63e3: $02
	call nc, Call_069_7892                           ; $63e4: $d4 $92 $78
	sbc  a                                           ; $63e7: $9f
	dec  c                                           ; $63e8: $0d
	nop                                              ; $63e9: $00
	ld   a, [bc]                                     ; $63ea: $0a
	ld   b, $0b                                      ; $63eb: $06 $0b
	ld   [bc], a                                     ; $63ed: $02
	rlca                                             ; $63ee: $07
	ld   sp, $0302                                   ; $63ef: $31 $02 $03
	dec  d                                           ; $63f2: $15
	ld   bc, $2296                                   ; $63f3: $01 $96 $22
	nop                                              ; $63f6: $00
	inc  e                                           ; $63f7: $1c
	dec  b                                           ; $63f8: $05
	inc  b                                           ; $63f9: $04
	inc  b                                           ; $63fa: $04
	dec  e                                           ; $63fb: $1d
	ld   b, b                                        ; $63fc: $40
	dec  d                                           ; $63fd: $15
	inc  bc                                          ; $63fe: $03
	dec  d                                           ; $63ff: $15
	ld   bc, $2802                                   ; $6400: $01 $02 $28
	nop                                              ; $6403: $00
	ld   bc, $9e78                                   ; $6404: $01 $78 $9e
	ld   l, e                                        ; $6407: $6b
	and  c                                           ; $6408: $a1
	ld   a, b                                        ; $6409: $78
	ld   a, c                                        ; $640a: $79
	ld   [bc], a                                     ; $640b: $02
	sub  l                                           ; $640c: $95
	ld   [hl], d                                     ; $640d: $72
	adc  a                                           ; $640e: $8f
	sub  a                                           ; $640f: $97
	sbc  d                                           ; $6410: $9a
	ld   l, l                                        ; $6411: $6d
	sub  a                                           ; $6412: $97
	dec  c                                           ; $6413: $0d
	rst  ToBoot                                         ; $6414: $c7
	xor  $99                                         ; $6415: $ee $99
	sub  d                                           ; $6417: $92
	and  c                                           ; $6418: $a1
	sbc  a                                           ; $6419: $9f
	dec  c                                           ; $641a: $0d
	ld   [$7d00], sp                                 ; $641b: $08 $00 $7d
	and  c                                           ; $641e: $a1
	rst  $38                                         ; $641f: $ff
	rst  $38                                         ; $6420: $ff
	dec  c                                           ; $6421: $0d
	nop                                              ; $6422: $00
	ld   a, [bc]                                     ; $6423: $0a
	ld   bc, $8d63                                   ; $6424: $01 $63 $8d
	ld   h, l                                        ; $6427: $65
	ld   e, l                                        ; $6428: $5d
	ld   a, b                                        ; $6429: $78
	sbc  c                                           ; $642a: $99
	ld   e, a                                        ; $642b: $5f
	ld   [hl], a                                     ; $642c: $77
	sbc  [hl]                                        ; $642d: $9e
	dec  c                                           ; $642e: $0d
	ld   h, c                                        ; $642f: $61
	ld   a, h                                        ; $6430: $7c
	dec  b                                           ; $6431: $05
	or   c                                           ; $6432: $b1
	ld   [bc], a                                     ; $6433: $02
	sub  [hl]                                        ; $6434: $96
	and  b                                           ; $6435: $a0
	inc  bc                                          ; $6436: $03
	ld   d, d                                        ; $6437: $52
	ld   e, c                                        ; $6438: $59
	ld   h, l                                        ; $6439: $65
	ld   [hl], h                                     ; $643a: $74
	dec  c                                           ; $643b: $0d
	ld   [bc], a                                     ; $643c: $02
	and  l                                           ; $643d: $a5
	ld   [bc], a                                     ; $643e: $02
	xor  d                                           ; $643f: $aa
	sub  b                                           ; $6440: $90
	ld   e, d                                        ; $6441: $5a
	and  c                                           ; $6442: $a1
	ld   a, [hl]                                     ; $6443: $7e
	sbc  b                                           ; $6444: $98
	sub  d                                           ; $6445: $92
	sbc  a                                           ; $6446: $9f
	dec  c                                           ; $6447: $0d
	nop                                              ; $6448: $00
	ld   a, [bc]                                     ; $6449: $0a
	ld   bc, $5063                                   ; $644a: $01 $63 $50
	sbc  [hl]                                        ; $644d: $9e
	sub  b                                           ; $644e: $90
	ld   d, h                                        ; $644f: $54
	inc  bc                                          ; $6450: $03
	rst  JumpTable                                         ; $6451: $df
	ld   d, d                                        ; $6452: $52
	ld   e, c                                        ; $6453: $59
	sub  a                                           ; $6454: $97
	sbc  [hl]                                        ; $6455: $9e
	dec  c                                           ; $6456: $0d
	adc  h                                           ; $6457: $8c
	ld   l, l                                        ; $6458: $6d
	inc  b                                           ; $6459: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $645a: $cf
	inc  b                                           ; $645b: $04
	xor  d                                           ; $645c: $aa
	ld   a, b                                        ; $645d: $78
	sbc  a                                           ; $645e: $9f
	ld   e, b                                        ; $645f: $58
	sub  d                                           ; $6460: $92
	ld   h, a                                        ; $6461: $67
	adc  l                                           ; $6462: $8d
	sbc  a                                           ; $6463: $9f
	dec  c                                           ; $6464: $0d
	nop                                              ; $6465: $00
	ld   a, [bc]                                     ; $6466: $0a
	dec  c                                           ; $6467: $0d
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	rrca                                             ; $646a: $0f
	nop                                              ; $646b: $00
	ld   bc, $1e09                                   ; $646c: $01 $09 $1e
	nop                                              ; $646f: $00
	inc  e                                           ; $6470: $1c
	dec  b                                           ; $6471: $05
	ld   [bc], a                                     ; $6472: $02
	ld   [bc], a                                     ; $6473: $02
	dec  e                                           ; $6474: $1d
	ld   b, b                                        ; $6475: $40
	dec  d                                           ; $6476: $15
	inc  bc                                          ; $6477: $03
	dec  d                                           ; $6478: $15
	ld   bc, $2901                                   ; $6479: $01 $01 $29
	nop                                              ; $647c: $00
	ld   bc, $599d                                   ; $647d: $01 $9d $59
	sub  a                                           ; $6480: $97
	and  c                                           ; $6481: $a1
	ld   a, h                                        ; $6482: $7c
	ld   e, c                                        ; $6483: $59
	ld   d, d                                        ; $6484: $52
	ld   a, b                                        ; $6485: $78
	sbc  a                                           ; $6486: $9f
	dec  c                                           ; $6487: $0d
	ld   h, c                                        ; $6488: $61
	ld   a, h                                        ; $6489: $7c
	inc  bc                                          ; $648a: $03
	ld   l, a                                        ; $648b: $6f
	ld   [bc], a                                     ; $648c: $02
	pop  bc                                          ; $648d: $c1
	ld   a, c                                        ; $648e: $79
	ld   a, b                                        ; $648f: $78
	ld   [hl], c                                     ; $6490: $71
	ld   [hl], h                                     ; $6491: $74
	ld   l, e                                        ; $6492: $6b
	sbc  d                                           ; $6493: $9a
	ld   [hl], l                                     ; $6494: $75
	ld   a, l                                        ; $6495: $7d
	dec  c                                           ; $6496: $0d
	dec  b                                           ; $6497: $05
	sub  [hl]                                        ; $6498: $96
	sbc  c                                           ; $6499: $99
	ld   a, b                                        ; $649a: $78
	ld   c, a                                        ; $649b: $4f
	db   $fc                                         ; $649c: $fc
	sbc  a                                           ; $649d: $9f
	dec  c                                           ; $649e: $0d
	nop                                              ; $649f: $00
	ld   a, [bc]                                     ; $64a0: $0a
	ld   bc, $9075                                   ; $64a1: $01 $75 $90
	adc  h                                           ; $64a4: $8c
	ld   d, b                                        ; $64a5: $50
	sbc  [hl]                                        ; $64a6: $9e
	ld   h, c                                        ; $64a7: $61
	ld   a, h                                        ; $64a8: $7c
	dec  b                                           ; $64a9: $05
	or   c                                           ; $64aa: $b1
	ld   [bc], a                                     ; $64ab: $02
	sub  [hl]                                        ; $64ac: $96
	and  b                                           ; $64ad: $a0
	inc  bc                                          ; $64ae: $03
	ld   d, d                                        ; $64af: $52
	ld   e, c                                        ; $64b0: $59
	ld   h, l                                        ; $64b1: $65
	ld   [hl], h                                     ; $64b2: $74
	dec  c                                           ; $64b3: $0d
	ld   [bc], a                                     ; $64b4: $02
	and  l                                           ; $64b5: $a5
	ld   [bc], a                                     ; $64b6: $02
	xor  d                                           ; $64b7: $aa
	sub  b                                           ; $64b8: $90
	ld   e, d                                        ; $64b9: $5a
	and  c                                           ; $64ba: $a1
	ld   a, [hl]                                     ; $64bb: $7e
	sbc  b                                           ; $64bc: $98
	sub  d                                           ; $64bd: $92
	sbc  a                                           ; $64be: $9f
	dec  c                                           ; $64bf: $0d
	nop                                              ; $64c0: $00
	ld   a, [bc]                                     ; $64c1: $0a
	dec  c                                           ; $64c2: $0d
	nop                                              ; $64c3: $00
	nop                                              ; $64c4: $00
	rrca                                             ; $64c5: $0f
	nop                                              ; $64c6: $00
	ld   bc, $1e09                                   ; $64c7: $01 $09 $1e
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	ld   c, $59                                      ; $64cc: $0e $59
	inc  e                                           ; $64ce: $1c
	ld   b, $00                                      ; $64cf: $06 $00
	nop                                              ; $64d1: $00
	ld   [bc], a                                     ; $64d2: $02
	ld   bc, $0008                                   ; $64d3: $01 $08 $00
	sbc  a                                           ; $64d6: $9f
	dec  c                                           ; $64d7: $0d
	ld   [hl], a                                     ; $64d8: $77
	ld   d, h                                        ; $64d9: $54
	ld   h, l                                        ; $64da: $65
	ld   l, l                                        ; $64db: $6d
	and  c                                           ; $64dc: $a1
	ld   l, [hl]                                     ; $64dd: $6e
	ld   sp, hl                                      ; $64de: $f9
	dec  c                                           ; $64df: $0d
	ld   h, c                                        ; $64e0: $61
	and  c                                           ; $64e1: $a1
	ld   a, b                                        ; $64e2: $78
	inc  b                                           ; $64e3: $04
	rst  $28                                         ; $64e4: $ef
	add  e                                           ; $64e5: $83
	ld   e, a                                        ; $64e6: $5f
	ld   a, c                                        ; $64e7: $79
	sbc  a                                           ; $64e8: $9f
	dec  c                                           ; $64e9: $0d
	nop                                              ; $64ea: $00
	ld   a, [bc]                                     ; $64eb: $0a
	rrca                                             ; $64ec: $0f
	nop                                              ; $64ed: $00
	ld   bc, $5201                                   ; $64ee: $01 $01 $52
	ld   d, [hl]                                     ; $64f1: $56
	sbc  [hl]                                        ; $64f2: $9e
	inc  b                                           ; $64f3: $04
	ld   c, c                                        ; $64f4: $49
	halt                                             ; $64f5: $76
	ld   a, b                                        ; $64f6: $78
	ld   e, l                                        ; $64f7: $5d
	rst  $38                                         ; $64f8: $ff
	rst  $38                                         ; $64f9: $ff
	dec  c                                           ; $64fa: $0d
	nop                                              ; $64fb: $00
	ld   a, [bc]                                     ; $64fc: $0a
	inc  e                                           ; $64fd: $1c
	ld   b, $00                                      ; $64fe: $06 $00
	nop                                              ; $6500: $00
	ld   bc, $546b                                   ; $6501: $01 $6b $54
	ld   d, d                                        ; $6504: $52
	ld   d, [hl]                                     ; $6505: $56
	ld   a, [hl]                                     ; $6506: $7e
	inc  b                                           ; $6507: $04
	dec  c                                           ; $6508: $0d
	ld   [bc], a                                     ; $6509: $02
	sub  [hl]                                        ; $650a: $96
	inc  b                                           ; $650b: $04
	ld   b, l                                        ; $650c: $45
	inc  b                                           ; $650d: $04
	ld   a, [bc]                                     ; $650e: $0a
	sub  b                                           ; $650f: $90
	dec  c                                           ; $6510: $0d
	sub  b                                           ; $6511: $90
	ld   d, h                                        ; $6512: $54
	inc  bc                                          ; $6513: $03
	ld   a, [hl]                                     ; $6514: $7e
	sbc  l                                           ; $6515: $9d
	sbc  b                                           ; $6516: $98
	ld   l, [hl]                                     ; $6517: $6e
	ld   a, b                                        ; $6518: $78
	sbc  a                                           ; $6519: $9f
	dec  c                                           ; $651a: $0d
	ld   [hl], a                                     ; $651b: $77
	ld   d, h                                        ; $651c: $54
	ld   l, [hl]                                     ; $651d: $6e

jr_069_651e:
	ld   [hl], c                                     ; $651e: $71
	ld   l, l                                        ; $651f: $6d
	sbc  [hl]                                        ; $6520: $9e
	ld   h, c                                        ; $6521: $61
	ld   a, h                                        ; $6522: $7c
	ld   [bc], a                                     ; $6523: $02
	jr   nz, jr_069_651e                             ; $6524: $20 $f8

	ld   [bc], a                                     ; $6526: $02
	sbc  e                                           ; $6527: $9b
	ld   sp, hl                                      ; $6528: $f9
	dec  c                                           ; $6529: $0d
	nop                                              ; $652a: $00
	ld   a, [bc]                                     ; $652b: $0a
	add  hl, de                                      ; $652c: $19
	dec  b                                           ; $652d: $05
	inc  bc                                          ; $652e: $03
	dec  b                                           ; $652f: $05
	inc  de                                          ; $6530: $13
	ld   h, l                                        ; $6531: $65
	ld   e, c                                        ; $6532: $59
	ld   [hl], c                                     ; $6533: $71
	ld   l, l                                        ; $6534: $6d
	ld   [hl], l                                     ; $6535: $75
	ld   h, a                                        ; $6536: $67
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	ld   d, d                                        ; $6539: $52
	ld   d, d                                        ; $653a: $52
	inc  b                                           ; $653b: $04
	xor  [hl]                                        ; $653c: $ae
	ld   [bc], a                                     ; $653d: $02
	call nc, Call_069_7879                           ; $653e: $d4 $79 $78
	sbc  b                                           ; $6541: $98
	adc  h                                           ; $6542: $8c
	ld   h, l                                        ; $6543: $65
	ld   l, l                                        ; $6544: $6d
	nop                                              ; $6545: $00
	ld   bc, $9772                                   ; $6546: $01 $72 $97
	ld   e, c                                        ; $6549: $59
	ld   [hl], c                                     ; $654a: $71
	ld   l, l                                        ; $654b: $6d
	ld   [hl], l                                     ; $654c: $75
	ld   h, a                                        ; $654d: $67
	nop                                              ; $654e: $00
	ld   [bc], a                                     ; $654f: $02
	rlca                                             ; $6550: $07
	and  d                                           ; $6551: $a2
	nop                                              ; $6552: $00
	ld   [bc], a                                     ; $6553: $02
	inc  bc                                          ; $6554: $03
	ld   bc, $2000                                   ; $6555: $01 $00 $20
	nop                                              ; $6558: $00
	rlca                                             ; $6559: $07
	add  hl, de                                      ; $655a: $19
	ld   bc, $0302                                   ; $655b: $01 $02 $03
	ld   bc, $2001                                   ; $655e: $01 $01 $20
	nop                                              ; $6561: $00
	rlca                                             ; $6562: $07
	ld   a, b                                        ; $6563: $78
	ld   bc, $0302                                   ; $6564: $01 $02 $03
	ld   bc, $2002                                   ; $6567: $01 $02 $20
	nop                                              ; $656a: $00
	ld   b, $c1                                      ; $656b: $06 $c1
	ld   bc, $000f                                   ; $656d: $01 $0f $00
	ld   bc, $0501                                   ; $6570: $01 $01 $05
	inc  de                                          ; $6573: $13
	ld   h, l                                        ; $6574: $65
	ld   e, c                                        ; $6575: $59
	ld   [hl], c                                     ; $6576: $71
	ld   l, l                                        ; $6577: $6d

Jump_069_6578:
	ld   [hl], l                                     ; $6578: $75
	ld   h, a                                        ; $6579: $67
	sbc  a                                           ; $657a: $9f
	dec  c                                           ; $657b: $0d
	adc  l                                           ; $657c: $8d
	ld   a, b                                        ; $657d: $78
	ld   h, e                                        ; $657e: $63
	and  c                                           ; $657f: $a1
	inc  b                                           ; $6580: $04
	and  c                                           ; $6581: $a1
	inc  bc                                          ; $6582: $03
	add  d                                           ; $6583: $82
	ld   l, [hl]                                     ; $6584: $6e
	ld   h, l                                        ; $6585: $65
	dec  c                                           ; $6586: $0d
	nop                                              ; $6587: $00
	ld   a, [bc]                                     ; $6588: $0a
	ld   bc, $7978                                   ; $6589: $01 $78 $79
	sub  [hl]                                        ; $658c: $96
	sbc  b                                           ; $658d: $98
	sbc  [hl]                                        ; $658e: $9e
	ld   d, d                                        ; $658f: $52
	ld   d, d                                        ; $6590: $52
	inc  bc                                          ; $6591: $03
	add  d                                           ; $6592: $82
	ld   l, l                                        ; $6593: $6d
	ld   l, a                                        ; $6594: $6f
	ld   a, [hl]                                     ; $6595: $7e
	ld   e, c                                        ; $6596: $59
	sbc  b                                           ; $6597: $98
	ld   [hl], l                                     ; $6598: $75
	dec  c                                           ; $6599: $0d
	sub  b                                           ; $659a: $90
	ld   d, h                                        ; $659b: $54
	sbc  [hl]                                        ; $659c: $9e
	dec  b                                           ; $659d: $05
	ld   e, h                                        ; $659e: $5c
	inc  b                                           ; $659f: $04

Jump_069_65a0:
	xor  d                                           ; $65a0: $aa
	ld   e, d                                        ; $65a1: $5a
	inc  bc                                          ; $65a2: $03
	ld   l, c                                        ; $65a3: $69
	ld   [bc], a                                     ; $65a4: $02
	cp   [hl]                                        ; $65a5: $be
	ld   [hl], l                                     ; $65a6: $75
	ld   h, l                                        ; $65a7: $65
	ld   l, l                                        ; $65a8: $6d
	sbc  a                                           ; $65a9: $9f
	dec  c                                           ; $65aa: $0d
	nop                                              ; $65ab: $00
	ld   a, [bc]                                     ; $65ac: $0a
	inc  e                                           ; $65ad: $1c
	ld   b, $04                                      ; $65ae: $06 $04
	inc  b                                           ; $65b0: $04
	dec  e                                           ; $65b1: $1d
	ld   b, b                                        ; $65b2: $40
	ld   d, $03                                      ; $65b3: $16 $03
	ld   d, $01                                      ; $65b5: $16 $01
	ld   [bc], a                                     ; $65b7: $02
	jr   z, jr_069_65ba                              ; $65b8: $28 $00

jr_069_65ba:
	ld   bc, $a104                                   ; $65ba: $01 $04 $a1
	inc  bc                                          ; $65bd: $03
	add  d                                           ; $65be: $82
	ld   e, c                                        ; $65bf: $59
	sub  [hl]                                        ; $65c0: $96
	db   $fc                                         ; $65c1: $fc
	sbc  a                                           ; $65c2: $9f
	inc  bc                                          ; $65c3: $03
	ld   h, [hl]                                     ; $65c4: $66
	sbc  d                                           ; $65c5: $9a
	sbc  c                                           ; $65c6: $99
	ld   a, b                                        ; $65c7: $78
	db   $fc                                         ; $65c8: $fc
	sbc  a                                           ; $65c9: $9f
	dec  c                                           ; $65ca: $0d
	ld   [hl], l                                     ; $65cb: $75
	sub  b                                           ; $65cc: $90
	sbc  [hl]                                        ; $65cd: $9e
	ld   l, e                                        ; $65ce: $6b
	ld   d, h                                        ; $65cf: $54
	ld   [bc], a                                     ; $65d0: $02
	sbc  l                                           ; $65d1: $9d
	ld   [hl], c                                     ; $65d2: $71
	ld   [hl], h                                     ; $65d3: $74
	sub  b                                           ; $65d4: $90
	sub  a                                           ; $65d5: $97
	ld   d, [hl]                                     ; $65d6: $56
	ld   [hl], h                                     ; $65d7: $74
	dec  c                                           ; $65d8: $0d
	ld   d, h                                        ; $65d9: $54
	sbc  d                                           ; $65da: $9a
	ld   h, l                                        ; $65db: $65
	ld   d, d                                        ; $65dc: $52
	ld   l, d                                        ; $65dd: $6a
	sbc  a                                           ; $65de: $9f
	dec  c                                           ; $65df: $0d
	nop                                              ; $65e0: $00
	ld   a, [bc]                                     ; $65e1: $0a
	ld   b, $7b                                      ; $65e2: $06 $7b
	ld   [bc], a                                     ; $65e4: $02
	rrca                                             ; $65e5: $0f
	nop                                              ; $65e6: $00
	ld   bc, $5201                                   ; $65e7: $01 $01 $52
	ld   d, d                                        ; $65ea: $52
	inc  b                                           ; $65eb: $04
	xor  [hl]                                        ; $65ec: $ae
	ld   [bc], a                                     ; $65ed: $02
	call nc, Call_069_7879                           ; $65ee: $d4 $79 $78
	sbc  b                                           ; $65f1: $98
	adc  h                                           ; $65f2: $8c
	ld   h, l                                        ; $65f3: $65
	ld   l, l                                        ; $65f4: $6d
	sbc  a                                           ; $65f5: $9f
	dec  c                                           ; $65f6: $0d
	ld   d, b                                        ; $65f7: $50
	sbc  b                                           ; $65f8: $98
	ld   e, d                                        ; $65f9: $5a
	halt                                             ; $65fa: $76
	ld   d, h                                        ; $65fb: $54
	ld   h, d                                        ; $65fc: $62
	ld   h, h                                        ; $65fd: $64
	ld   d, d                                        ; $65fe: $52
	adc  h                                           ; $65ff: $8c
	ld   h, a                                        ; $6600: $67
	sbc  a                                           ; $6601: $9f
	dec  c                                           ; $6602: $0d
	nop                                              ; $6603: $00
	ld   a, [bc]                                     ; $6604: $0a
	inc  e                                           ; $6605: $1c
	ld   b, $01                                      ; $6606: $06 $01
	ld   bc, $401d                                   ; $6608: $01 $1d $40
	ld   d, $03                                      ; $660b: $16 $03
	ld   d, $01                                      ; $660d: $16 $01
	inc  bc                                          ; $660f: $03
	jr   z, jr_069_6612                              ; $6610: $28 $00

jr_069_6612:
	ld   bc, $546b                                   ; $6612: $01 $6b $54
	ld   e, c                                        ; $6615: $59
	sbc  a                                           ; $6616: $9f
	ld   l, e                                        ; $6617: $6b
	ld   d, h                                        ; $6618: $54
	dec  b                                           ; $6619: $05
	pop  de                                          ; $661a: $d1
	ld   d, [hl]                                     ; $661b: $56
	sbc  c                                           ; $661c: $99
	ld   [hl], c                                     ; $661d: $71
	ld   [hl], h                                     ; $661e: $74
	ld   h, c                                        ; $661f: $61
	halt                                             ; $6620: $76
	ld   a, l                                        ; $6621: $7d
	dec  c                                           ; $6622: $0d
	ld   d, d                                        ; $6623: $52
	ld   d, d                                        ; $6624: $52
	ld   h, c                                        ; $6625: $61
	halt                                             ; $6626: $76
	ld   l, [hl]                                     ; $6627: $6e
	sbc  a                                           ; $6628: $9f
	ld   h, c                                        ; $6629: $61
	sbc  d                                           ; $662a: $9a
	ld   e, c                                        ; $662b: $59
	sub  a                                           ; $662c: $97
	sub  b                                           ; $662d: $90
	dec  c                                           ; $662e: $0d
	ld   l, e                                        ; $662f: $6b
	ld   a, h                                        ; $6630: $7c
	inc  bc                                          ; $6631: $03
	ld   [hl], l                                     ; $6632: $75
	ld   e, d                                        ; $6633: $5a
	adc  h                                           ; $6634: $8c
	ld   d, [hl]                                     ; $6635: $56
	and  b                                           ; $6636: $a0
	inc  b                                           ; $6637: $04
	and  e                                           ; $6638: $a3
	sbc  d                                           ; $6639: $9a
	sbc  c                                           ; $663a: $99
	ld   a, b                                        ; $663b: $78
	sub  [hl]                                        ; $663c: $96
	sbc  a                                           ; $663d: $9f
	dec  c                                           ; $663e: $0d
	nop                                              ; $663f: $00
	ld   a, [bc]                                     ; $6640: $0a
	ld   b, $7b                                      ; $6641: $06 $7b
	ld   [bc], a                                     ; $6643: $02
	rrca                                             ; $6644: $0f
	nop                                              ; $6645: $00
	ld   bc, $ff01                                   ; $6646: $01 $01 $ff
	rst  $38                                         ; $6649: $ff
	rst  $38                                         ; $664a: $ff
	rst  $38                                         ; $664b: $ff
	rst  $38                                         ; $664c: $ff
	rst  $38                                         ; $664d: $ff
	dec  c                                           ; $664e: $0d
	ld   [hl], d                                     ; $664f: $72
	sub  a                                           ; $6650: $97
	ld   e, c                                        ; $6651: $59
	ld   [hl], c                                     ; $6652: $71
	ld   l, l                                        ; $6653: $6d
	ld   [hl], l                                     ; $6654: $75
	ld   h, a                                        ; $6655: $67
	rst  $38                                         ; $6656: $ff
	rst  $38                                         ; $6657: $ff
	dec  c                                           ; $6658: $0d
	nop                                              ; $6659: $00
	ld   a, [bc]                                     ; $665a: $0a
	inc  e                                           ; $665b: $1c
	ld   b, $05                                      ; $665c: $06 $05
	dec  b                                           ; $665e: $05
	dec  e                                           ; $665f: $1d
	ld   b, b                                        ; $6660: $40
	ld   d, $03                                      ; $6661: $16 $03
	ld   d, $01                                      ; $6663: $16 $01
	ld   bc, $0029                                   ; $6665: $01 $29 $00
	ld   bc, $546b                                   ; $6668: $01 $6b $54
	ld   e, c                                        ; $666b: $59
	rst  $38                                         ; $666c: $ff
	rst  $38                                         ; $666d: $ff
	dec  c                                           ; $666e: $0d
	ld   e, b                                        ; $666f: $58
	inc  bc                                          ; $6670: $03
	ld   c, a                                        ; $6671: $4f
	sbc  [hl]                                        ; $6672: $9e
	inc  b                                           ; $6673: $04
	ld   c, c                                        ; $6674: $49
	sub  d                                           ; $6675: $92
	ld   [hl], c                                     ; $6676: $71
	ld   [hl], h                                     ; $6677: $74
	ld   l, l                                        ; $6678: $6d

jr_069_6679:
	and  c                                           ; $6679: $a1
	ld   l, [hl]                                     ; $667a: $6e
	dec  c                                           ; $667b: $0d
	ld   h, c                                        ; $667c: $61
	ld   a, h                                        ; $667d: $7c
	ld   [bc], a                                     ; $667e: $02
	jr   nz, jr_069_6679                             ; $667f: $20 $f8

	ld   [bc], a                                     ; $6681: $02
	sbc  e                                           ; $6682: $9b
	ld   a, h                                        ; $6683: $7c
	ld   [bc], a                                     ; $6684: $02
	xor  c                                           ; $6685: $a9
	ld   sp, hl                                      ; $6686: $f9
	dec  c                                           ; $6687: $0d
	nop                                              ; $6688: $00
	ld   a, [bc]                                     ; $6689: $0a
	ld   b, $7b                                      ; $668a: $06 $7b
	ld   [bc], a                                     ; $668c: $02
	rlca                                             ; $668d: $07
	dec  h                                           ; $668e: $25
	ld   [bc], a                                     ; $668f: $02
	inc  bc                                          ; $6690: $03
	ld   d, $01                                      ; $6691: $16 $01
	or   h                                           ; $6693: $b4
	ld   [hl+], a                                    ; $6694: $22
	nop                                              ; $6695: $00
	inc  e                                           ; $6696: $1c
	ld   b, $04                                      ; $6697: $06 $04
	inc  b                                           ; $6699: $04
	ld   bc, $9e78                                   ; $669a: $01 $78 $9e
	ld   a, b                                        ; $669d: $78
	and  c                                           ; $669e: $a1
	ld   l, [hl]                                     ; $669f: $6e
	sub  [hl]                                        ; $66a0: $96
	rst  $38                                         ; $66a1: $ff
	rst  $38                                         ; $66a2: $ff
	dec  c                                           ; $66a3: $0d
	ld   h, [hl]                                     ; $66a4: $66
	ld   [hl], c                                     ; $66a5: $71
	halt                                             ; $66a6: $76
	ld   [bc], a                                     ; $66a7: $02
	sub  l                                           ; $66a8: $95
	sbc  c                                           ; $66a9: $99
	ld   a, b                                        ; $66aa: $78
	sub  [hl]                                        ; $66ab: $96
	sbc  a                                           ; $66ac: $9f
	dec  c                                           ; $66ad: $0d
	inc  bc                                          ; $66ae: $03
	ld   h, [hl]                                     ; $66af: $66
	sbc  d                                           ; $66b0: $9a
	sbc  c                                           ; $66b1: $99
	ld   h, [hl]                                     ; $66b2: $66
	sub  c                                           ; $66b3: $91
	ld   a, b                                        ; $66b4: $78
	ld   d, d                                        ; $66b5: $52
	ld   e, c                                        ; $66b6: $59
	sub  [hl]                                        ; $66b7: $96
	rst  $38                                         ; $66b8: $ff
	rst  $38                                         ; $66b9: $ff
	dec  c                                           ; $66ba: $0d
	nop                                              ; $66bb: $00
	ld   a, [bc]                                     ; $66bc: $0a
	inc  e                                           ; $66bd: $1c
	ld   b, $01                                      ; $66be: $06 $01
	ld   bc, $401d                                   ; $66c0: $01 $1d $40
	ld   d, $03                                      ; $66c3: $16 $03
	ld   d, $01                                      ; $66c5: $16 $01
	ld   [bc], a                                     ; $66c7: $02
	jr   z, jr_069_66ca                              ; $66c8: $28 $00

jr_069_66ca:
	ld   bc, $9075                                   ; $66ca: $01 $75 $90
	sbc  [hl]                                        ; $66cd: $9e
	ld   [$7d00], sp                                 ; $66ce: $08 $00 $7d
	dec  c                                           ; $66d1: $0d
	ld   h, c                                        ; $66d2: $61
	ld   a, h                                        ; $66d3: $7c
	dec  b                                           ; $66d4: $05
	or   c                                           ; $66d5: $b1
	ld   [bc], a                                     ; $66d6: $02
	sub  [hl]                                        ; $66d7: $96
	and  b                                           ; $66d8: $a0
	inc  bc                                          ; $66d9: $03
	ld   d, d                                        ; $66da: $52
	ld   e, c                                        ; $66db: $59
	ld   h, l                                        ; $66dc: $65
	ld   [hl], h                                     ; $66dd: $74
	dec  c                                           ; $66de: $0d
	ld   [bc], a                                     ; $66df: $02
	and  l                                           ; $66e0: $a5
	ld   [bc], a                                     ; $66e1: $02
	xor  d                                           ; $66e2: $aa
	sub  b                                           ; $66e3: $90
	ld   e, d                                        ; $66e4: $5a
	and  c                                           ; $66e5: $a1
	ld   a, [hl]                                     ; $66e6: $7e
	sbc  d                                           ; $66e7: $9a
	sub  [hl]                                        ; $66e8: $96
	ld   a, b                                        ; $66e9: $78
	sbc  a                                           ; $66ea: $9f
	dec  c                                           ; $66eb: $0d
	nop                                              ; $66ec: $00
	ld   a, [bc]                                     ; $66ed: $0a
	ld   b, $7b                                      ; $66ee: $06 $7b
	ld   [bc], a                                     ; $66f0: $02
	inc  e                                           ; $66f1: $1c
	ld   b, $05                                      ; $66f2: $06 $05
	dec  b                                           ; $66f4: $05
	dec  e                                           ; $66f5: $1d
	ld   b, b                                        ; $66f6: $40
	ld   d, $03                                      ; $66f7: $16 $03
	ld   d, $01                                      ; $66f9: $16 $01
	ld   bc, $0029                                   ; $66fb: $01 $29 $00
	ld   bc, $a178                                   ; $66fe: $01 $78 $a1
	ld   l, [hl]                                     ; $6701: $6e
	sub  [hl]                                        ; $6702: $96
	sbc  [hl]                                        ; $6703: $9e
	sbc  l                                           ; $6704: $9d
	ld   e, c                                        ; $6705: $59
	and  c                                           ; $6706: $a1
	ld   a, b                                        ; $6707: $78
	ld   d, d                                        ; $6708: $52
	ld   a, h                                        ; $6709: $7c
	ld   e, c                                        ; $670a: $59
	sub  [hl]                                        ; $670b: $96
	sbc  a                                           ; $670c: $9f
	dec  c                                           ; $670d: $0d
	inc  bc                                          ; $670e: $03
	dec  c                                           ; $670f: $0d
	inc  b                                           ; $6710: $04
	ld   a, b                                        ; $6711: $78
	ld   a, e                                        ; $6712: $7b
	ei                                               ; $6713: $fb
	sub  d                                           ; $6714: $92
	ld   [hl], d                                     ; $6715: $72
	ld   l, [hl]                                     ; $6716: $6e
	ld   a, b                                        ; $6717: $78
	db   $fc                                         ; $6718: $fc
	sbc  a                                           ; $6719: $9f
	dec  c                                           ; $671a: $0d
	nop                                              ; $671b: $00
	ld   a, [bc]                                     ; $671c: $0a
	inc  e                                           ; $671d: $1c
	ld   b, $00                                      ; $671e: $06 $00
	nop                                              ; $6720: $00
	ld   bc, $9075                                   ; $6721: $01 $75 $90
	adc  h                                           ; $6724: $8c
	ld   d, b                                        ; $6725: $50
	sbc  [hl]                                        ; $6726: $9e
	ld   h, c                                        ; $6727: $61
	ld   a, h                                        ; $6728: $7c
	dec  b                                           ; $6729: $05
	or   c                                           ; $672a: $b1
	ld   [bc], a                                     ; $672b: $02
	sub  [hl]                                        ; $672c: $96
	and  b                                           ; $672d: $a0
	inc  bc                                          ; $672e: $03
	ld   d, d                                        ; $672f: $52
	ld   e, c                                        ; $6730: $59
	ld   h, l                                        ; $6731: $65
	ld   [hl], h                                     ; $6732: $74
	dec  c                                           ; $6733: $0d
	ld   [bc], a                                     ; $6734: $02
	and  l                                           ; $6735: $a5
	ld   [bc], a                                     ; $6736: $02
	xor  d                                           ; $6737: $aa
	sub  b                                           ; $6738: $90
	ld   e, d                                        ; $6739: $5a
	and  c                                           ; $673a: $a1
	ld   a, [hl]                                     ; $673b: $7e
	sbc  d                                           ; $673c: $9a
	sbc  a                                           ; $673d: $9f
	ld   a, b                                        ; $673e: $78
	ld   [hl], c                                     ; $673f: $71
	ld   a, [$000d]                                  ; $6740: $fa $0d $00
	ld   a, [bc]                                     ; $6743: $0a
	ld   b, $7b                                      ; $6744: $06 $7b
	ld   [bc], a                                     ; $6746: $02
	ld   bc, $7463                                   ; $6747: $01 $63 $74
	sbc  [hl]                                        ; $674a: $9e
	sub  b                                           ; $674b: $90
	ld   d, h                                        ; $674c: $54
	ld   e, b                                        ; $674d: $58
	ld   l, e                                        ; $674e: $6b
	ld   d, d                                        ; $674f: $52
	ld   h, l                                        ; $6750: $65
	dec  c                                           ; $6751: $0d
	ld   l, e                                        ; $6752: $6b
	sbc  e                                           ; $6753: $9b
	ld   l, e                                        ; $6754: $6b
	sbc  e                                           ; $6755: $9b
	inc  b                                           ; $6756: $04
	ld   b, d                                        ; $6757: $42
	sub  [hl]                                        ; $6758: $96
	ld   d, h                                        ; $6759: $54
	ld   l, d                                        ; $675a: $6a
	sbc  a                                           ; $675b: $9f
	dec  c                                           ; $675c: $0d
	ld   e, b                                        ; $675d: $58
	sub  d                                           ; $675e: $92
	ld   h, a                                        ; $675f: $67
	adc  l                                           ; $6760: $8d
	sbc  [hl]                                        ; $6761: $9e
	ld   [$9f00], sp                                 ; $6762: $08 $00 $9f
	dec  c                                           ; $6765: $0d
	nop                                              ; $6766: $00
	ld   a, [bc]                                     ; $6767: $0a
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	ld   c, $46                                      ; $676a: $0e $46
	rrca                                             ; $676c: $0f
	nop                                              ; $676d: $00
	ld   bc, $1402                                   ; $676e: $01 $02 $14
	ld   b, $01                                      ; $6771: $06 $01
	ld   bc, $ecdf                                   ; $6773: $01 $df $ec
	and  e                                           ; $6776: $a3
	ld   h, e                                        ; $6777: $63
	and  c                                           ; $6778: $a1
	sbc  [hl]                                        ; $6779: $9e
	dec  c                                           ; $677a: $0d
	ld   l, a                                        ; $677b: $6f
	sub  l                                           ; $677c: $95
	ld   [hl], c                                     ; $677d: $71
	halt                                             ; $677e: $76
	ld   d, d                                        ; $677f: $52
	ld   d, d                                        ; $6780: $52
	ld   [hl], l                                     ; $6781: $75
	ld   h, a                                        ; $6782: $67
	ld   e, c                                        ; $6783: $59
	ld   sp, hl                                      ; $6784: $f9
	dec  c                                           ; $6785: $0d
	nop                                              ; $6786: $00
	ld   a, [bc]                                     ; $6787: $0a
	rrca                                             ; $6788: $0f
	inc  bc                                          ; $6789: $03
	nop                                              ; $678a: $00
	ld   bc, $5656                                   ; $678b: $01 $56 $56
	sbc  [hl]                                        ; $678e: $9e
	inc  b                                           ; $678f: $04
	ld   b, l                                        ; $6790: $45
	sbc  b                                           ; $6791: $98
	ld   a, b                                        ; $6792: $78
	ld   h, e                                        ; $6793: $63
	ld   d, d                                        ; $6794: $52
	sbc  a                                           ; $6795: $9f
	dec  c                                           ; $6796: $0d
	nop                                              ; $6797: $00
	ld   a, [bc]                                     ; $6798: $0a
	rrca                                             ; $6799: $0f
	nop                                              ; $679a: $00
	ld   bc, $5323                                   ; $679b: $01 $23 $53
	inc  e                                           ; $679e: $1c
	inc  bc                                          ; $679f: $03
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	ld   bc, $546b                                   ; $67a2: $01 $6b $54
	ld   d, d                                        ; $67a5: $52
	ld   d, [hl]                                     ; $67a6: $56
	ld   a, [hl]                                     ; $67a7: $7e
	sbc  [hl]                                        ; $67a8: $9e
	sub  b                                           ; $67a9: $90
	ld   d, h                                        ; $67aa: $54
	ld   l, e                                        ; $67ab: $6b
	sbc  e                                           ; $67ac: $9b
	ld   l, e                                        ; $67ad: $6b
	sbc  e                                           ; $67ae: $9b
	dec  c                                           ; $67af: $0d
	inc  b                                           ; $67b0: $04
	dec  c                                           ; $67b1: $0d
	ld   [bc], a                                     ; $67b2: $02
	sub  [hl]                                        ; $67b3: $96
	inc  b                                           ; $67b4: $04
	ld   b, l                                        ; $67b5: $45
	inc  b                                           ; $67b6: $04
	ld   a, [bc]                                     ; $67b7: $0a
	sub  b                                           ; $67b8: $90
	inc  bc                                          ; $67b9: $03
	ld   a, [hl]                                     ; $67ba: $7e
	sbc  l                                           ; $67bb: $9d
	sbc  b                                           ; $67bc: $98
	ld   a, e                                        ; $67bd: $7b
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	dec  c                                           ; $67c0: $0d
	nop                                              ; $67c1: $00
	ld   a, [bc]                                     ; $67c2: $0a
	ld   bc, $7850                                   ; $67c3: $01 $50 $78
	ld   l, l                                        ; $67c6: $6d
	ld   a, c                                        ; $67c7: $79
	halt                                             ; $67c8: $76
	ld   [hl], c                                     ; $67c9: $71

jr_069_67ca:
	ld   [hl], h                                     ; $67ca: $74
	dec  c                                           ; $67cb: $0d
	ld   [hl], a                                     ; $67cc: $77
	and  c                                           ; $67cd: $a1
	ld   a, b                                        ; $67ce: $78
	ld   [bc], a                                     ; $67cf: $02
	jr   nz, jr_069_67ca                             ; $67d0: $20 $f8

	ld   [bc], a                                     ; $67d2: $02
	sbc  e                                           ; $67d3: $9b
	ld   l, [hl]                                     ; $67d4: $6e
	ld   [hl], c                                     ; $67d5: $71
	ld   l, l                                        ; $67d6: $6d
	ld   e, c                                        ; $67d7: $59
	ld   h, l                                        ; $67d8: $65
	sub  a                                           ; $67d9: $97
	ld   sp, hl                                      ; $67da: $f9
	dec  c                                           ; $67db: $0d
	nop                                              ; $67dc: $00
	ld   a, [bc]                                     ; $67dd: $0a
	add  hl, de                                      ; $67de: $19
	dec  b                                           ; $67df: $05
	inc  bc                                          ; $67e0: $03
	dec  b                                           ; $67e1: $05
	inc  de                                          ; $67e2: $13
	ld   h, l                                        ; $67e3: $65
	ld   e, c                                        ; $67e4: $59
	ld   [hl], c                                     ; $67e5: $71
	ld   l, l                                        ; $67e6: $6d
	ld   [hl], l                                     ; $67e7: $75
	ld   h, a                                        ; $67e8: $67
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	ld   d, d                                        ; $67eb: $52
	ld   d, d                                        ; $67ec: $52
	inc  b                                           ; $67ed: $04
	xor  [hl]                                        ; $67ee: $ae
	ld   [bc], a                                     ; $67ef: $02
	call nc, Call_069_7879                           ; $67f0: $d4 $79 $78
	sbc  b                                           ; $67f3: $98
	adc  h                                           ; $67f4: $8c
	ld   h, l                                        ; $67f5: $65
	ld   l, l                                        ; $67f6: $6d
	nop                                              ; $67f7: $00
	ld   bc, $0e04                                   ; $67f8: $01 $04 $0e
	inc  b                                           ; $67fb: $04
	adc  h                                           ; $67fc: $8c
	ld   [hl], l                                     ; $67fd: $75
	ld   h, l                                        ; $67fe: $65
	ld   l, l                                        ; $67ff: $6d
	nop                                              ; $6800: $00
	ld   [bc], a                                     ; $6801: $02
	rlca                                             ; $6802: $07
	or   [hl]                                        ; $6803: $b6
	nop                                              ; $6804: $00
	ld   [bc], a                                     ; $6805: $02
	inc  bc                                          ; $6806: $03
	ld   bc, $2000                                   ; $6807: $01 $00 $20
	nop                                              ; $680a: $00
	rlca                                             ; $680b: $07
	inc  sp                                          ; $680c: $33
	ld   bc, $0302                                   ; $680d: $01 $02 $03
	ld   bc, $2001                                   ; $6810: $01 $01 $20
	nop                                              ; $6813: $00
	rlca                                             ; $6814: $07
	adc  [hl]                                        ; $6815: $8e
	ld   bc, $0302                                   ; $6816: $01 $02 $03
	ld   bc, $2002                                   ; $6819: $01 $02 $20
	nop                                              ; $681c: $00
	ld   b, $c7                                      ; $681d: $06 $c7
	ld   bc, $000f                                   ; $681f: $01 $0f $00
	ld   bc, $0501                                   ; $6822: $01 $01 $05
	inc  de                                          ; $6825: $13
	ld   h, l                                        ; $6826: $65
	ld   e, c                                        ; $6827: $59
	ld   [hl], c                                     ; $6828: $71
	ld   l, l                                        ; $6829: $6d
	ld   [hl], l                                     ; $682a: $75
	ld   h, a                                        ; $682b: $67
	sbc  a                                           ; $682c: $9f
	dec  c                                           ; $682d: $0d
	adc  l                                           ; $682e: $8d
	and  c                                           ; $682f: $a1
	ld   a, b                                        ; $6830: $78
	inc  b                                           ; $6831: $04
	and  c                                           ; $6832: $a1
	inc  bc                                          ; $6833: $03
	add  d                                           ; $6834: $82
	ld   [hl], l                                     ; $6835: $75
	ld   d, d                                        ; $6836: $52
	ld   d, d                                        ; $6837: $52
	add  b                                           ; $6838: $80
	halt                                             ; $6839: $76
	ld   l, [hl]                                     ; $683a: $6e
	ld   h, l                                        ; $683b: $65
	sbc  a                                           ; $683c: $9f
	dec  c                                           ; $683d: $0d
	nop                                              ; $683e: $00
	ld   a, [bc]                                     ; $683f: $0a
	inc  e                                           ; $6840: $1c
	inc  bc                                          ; $6841: $03
	inc  b                                           ; $6842: $04
	inc  b                                           ; $6843: $04
	ld   bc, $5490                                   ; $6844: $01 $90 $54
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	dec  c                                           ; $6849: $0d
	inc  b                                           ; $684a: $04
	ldh  a, [c]                                      ; $684b: $f2
	add  c                                           ; $684c: $81
	ld   a, c                                        ; $684d: $79
	ld   e, e                                        ; $684e: $5b
	ld   l, l                                        ; $684f: $6d
	ld   a, h                                        ; $6850: $7c
	ld   h, [hl]                                     ; $6851: $66
	sub  c                                           ; $6852: $91
	ld   a, b                                        ; $6853: $78
	ld   d, d                                        ; $6854: $52
	ld   a, h                                        ; $6855: $7c
	sub  [hl]                                        ; $6856: $96
	sbc  a                                           ; $6857: $9f
	dec  c                                           ; $6858: $0d
	nop                                              ; $6859: $00
	ld   a, [bc]                                     ; $685a: $0a
	inc  e                                           ; $685b: $1c
	inc  bc                                          ; $685c: $03
	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	dec  e                                           ; $685f: $1d
	ld   b, b                                        ; $6860: $40
	inc  de                                          ; $6861: $13
	inc  bc                                          ; $6862: $03
	inc  de                                          ; $6863: $13
	ld   bc, $2801                                   ; $6864: $01 $01 $28
	nop                                              ; $6867: $00
	ld   bc, $9075                                   ; $6868: $01 $75 $90
	sbc  [hl]                                        ; $686b: $9e
	ld   e, e                                        ; $686c: $5b
	add  c                                           ; $686d: $81
	ld   h, l                                        ; $686e: $65
	ld   d, d                                        ; $686f: $52
	inc  bc                                          ; $6870: $03
	ld   l, l                                        ; $6871: $6d
	dec  b                                           ; $6872: $05
	add  hl, de                                      ; $6873: $19
	and  b                                           ; $6874: $a0
	sub  d                                           ; $6875: $92
	ld   [hl], c                                     ; $6876: $71
	ld   [hl], h                                     ; $6877: $74
	dec  c                                           ; $6878: $0d
	ld   e, e                                        ; $6879: $5b
	ld   [hl], h                                     ; $687a: $74
	sbc  [hl]                                        ; $687b: $9e
	ld   l, e                                        ; $687c: $6b
	sbc  d                                           ; $687d: $9a
	ld   [hl], l                                     ; $687e: $75
	db   $fd                                         ; $687f: $fd
	dec  b                                           ; $6880: $05
	inc  de                                          ; $6881: $13
	ld   h, l                                        ; $6882: $65
	ld   d, d                                        ; $6883: $52
	cp   $78                                         ; $6884: $fe $78
	and  c                                           ; $6886: $a1
	ld   [hl], h                                     ; $6887: $74
	dec  c                                           ; $6888: $0d
	ld   [bc], a                                     ; $6889: $02
	sbc  l                                           ; $688a: $9d
	ld   d, [hl]                                     ; $688b: $56
	sbc  c                                           ; $688c: $99
	ld   a, h                                        ; $688d: $7c
	ld   a, l                                        ; $688e: $7d
	ld   l, l                                        ; $688f: $6d
	ld   d, d                                        ; $6890: $52
	ld   h, l                                        ; $6891: $65
	ld   l, l                                        ; $6892: $6d
	sub  b                                           ; $6893: $90
	ld   a, h                                        ; $6894: $7c
	ld   a, e                                        ; $6895: $7b
	sbc  a                                           ; $6896: $9f
	dec  c                                           ; $6897: $0d
	nop                                              ; $6898: $00
	ld   a, [bc]                                     ; $6899: $0a
	ld   b, $e7                                      ; $689a: $06 $e7
	ld   bc, $000f                                   ; $689c: $01 $0f $00
	ld   bc, $5201                                   ; $689f: $01 $01 $52
	ld   d, d                                        ; $68a2: $52
	inc  b                                           ; $68a3: $04
	xor  [hl]                                        ; $68a4: $ae
	ld   [bc], a                                     ; $68a5: $02
	call nc, Call_069_7879                           ; $68a6: $d4 $79 $78
	sbc  b                                           ; $68a9: $98
	adc  h                                           ; $68aa: $8c
	ld   h, l                                        ; $68ab: $65
	ld   l, l                                        ; $68ac: $6d
	sbc  a                                           ; $68ad: $9f
	dec  c                                           ; $68ae: $0d
	ld   d, b                                        ; $68af: $50
	sbc  b                                           ; $68b0: $98
	ld   e, d                                        ; $68b1: $5a
	halt                                             ; $68b2: $76
	ld   d, h                                        ; $68b3: $54
	ld   h, d                                        ; $68b4: $62
	ld   h, h                                        ; $68b5: $64
	ld   d, d                                        ; $68b6: $52
	adc  h                                           ; $68b7: $8c
	ld   h, a                                        ; $68b8: $67
	rst  $38                                         ; $68b9: $ff
	rst  $38                                         ; $68ba: $ff
	dec  c                                           ; $68bb: $0d
	nop                                              ; $68bc: $00
	ld   a, [bc]                                     ; $68bd: $0a
	inc  e                                           ; $68be: $1c
	inc  bc                                          ; $68bf: $03
	inc  bc                                          ; $68c0: $03
	inc  bc                                          ; $68c1: $03
	dec  e                                           ; $68c2: $1d
	ld   b, b                                        ; $68c3: $40
	inc  de                                          ; $68c4: $13
	inc  bc                                          ; $68c5: $03
	inc  de                                          ; $68c6: $13
	ld   bc, $2802                                   ; $68c7: $01 $02 $28
	nop                                              ; $68ca: $00
	ld   bc, $546b                                   ; $68cb: $01 $6b $54
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	dec  b                                           ; $68d0: $05
	dec  d                                           ; $68d1: $15
	ld   e, c                                        ; $68d2: $59
	ld   [hl], c                                     ; $68d3: $71
	ld   l, l                                        ; $68d4: $6d
	sbc  l                                           ; $68d5: $9d
	sbc  a                                           ; $68d6: $9f
	dec  c                                           ; $68d7: $0d
	ld   l, e                                        ; $68d8: $6b
	sbc  d                                           ; $68d9: $9a
	ld   a, c                                        ; $68da: $79
	sbc  [hl]                                        ; $68db: $9e
	ld   l, e                                        ; $68dc: $6b
	ld   d, h                                        ; $68dd: $54
	ld   [bc], a                                     ; $68de: $02
	sbc  l                                           ; $68df: $9d
	ld   [hl], c                                     ; $68e0: $71
	ld   [hl], h                                     ; $68e1: $74
	sub  b                                           ; $68e2: $90
	sub  a                                           ; $68e3: $97
	ld   d, [hl]                                     ; $68e4: $56
	sbc  c                                           ; $68e5: $99
	halt                                             ; $68e6: $76
	dec  c                                           ; $68e7: $0d
	ld   h, c                                        ; $68e8: $61
	ld   [hl], c                                     ; $68e9: $71
	ld   l, a                                        ; $68ea: $6f
	sub  b                                           ; $68eb: $90
	ld   d, h                                        ; $68ec: $54
	sbc  d                                           ; $68ed: $9a
	ld   h, l                                        ; $68ee: $65
	ld   d, d                                        ; $68ef: $52
	sbc  l                                           ; $68f0: $9d
	sbc  a                                           ; $68f1: $9f
	dec  c                                           ; $68f2: $0d
	nop                                              ; $68f3: $00
	ld   a, [bc]                                     ; $68f4: $0a
	ld   b, $e7                                      ; $68f5: $06 $e7
	ld   bc, $000f                                   ; $68f7: $01 $0f $00
	ld   bc, $0401                                   ; $68fa: $01 $01 $04
	ld   c, $04                                      ; $68fd: $0e $04
	adc  h                                           ; $68ff: $8c
	ld   [hl], l                                     ; $6900: $75
	ld   h, l                                        ; $6901: $65
	ld   l, l                                        ; $6902: $6d
	rst  $38                                         ; $6903: $ff
	rst  $38                                         ; $6904: $ff
	dec  c                                           ; $6905: $0d
	nop                                              ; $6906: $00
	ld   a, [bc]                                     ; $6907: $0a
	inc  e                                           ; $6908: $1c
	inc  bc                                          ; $6909: $03
	inc  b                                           ; $690a: $04
	inc  b                                           ; $690b: $04
	ld   bc, $546b                                   ; $690c: $01 $6b $54
	rst  $38                                         ; $690f: $ff
	rst  $38                                         ; $6910: $ff
	dec  c                                           ; $6911: $0d
	adc  h                                           ; $6912: $8c
	ld   c, a                                        ; $6913: $4f
	sbc  [hl]                                        ; $6914: $9e
	inc  b                                           ; $6915: $04
	dec  c                                           ; $6916: $0d
	ld   [bc], a                                     ; $6917: $02
	sub  [hl]                                        ; $6918: $96
	inc  b                                           ; $6919: $04
	ld   b, l                                        ; $691a: $45
	inc  b                                           ; $691b: $04
	ld   a, [bc]                                     ; $691c: $0a
	ld   l, [hl]                                     ; $691d: $6e
	ld   e, c                                        ; $691e: $59
	sub  a                                           ; $691f: $97
	dec  c                                           ; $6920: $0d
	inc  bc                                          ; $6921: $03
	dec  c                                           ; $6922: $0d
	inc  b                                           ; $6923: $04
	ld   a, b                                        ; $6924: $78
	ld   a, b                                        ; $6925: $78
	ld   d, d                                        ; $6926: $52
	sbc  l                                           ; $6927: $9d
	ld   a, e                                        ; $6928: $7b
	rst  $38                                         ; $6929: $ff
	rst  $38                                         ; $692a: $ff
	dec  c                                           ; $692b: $0d
	nop                                              ; $692c: $00
	ld   a, [bc]                                     ; $692d: $0a
	ld   b, $e7                                      ; $692e: $06 $e7
	ld   bc, $031c                                   ; $6930: $01 $1c $03
	inc  b                                           ; $6933: $04
	inc  b                                           ; $6934: $04
	dec  e                                           ; $6935: $1d
	ld   b, b                                        ; $6936: $40
	inc  de                                          ; $6937: $13
	inc  bc                                          ; $6938: $03
	inc  de                                          ; $6939: $13
	ld   bc, $2902                                   ; $693a: $01 $02 $29
	nop                                              ; $693d: $00
	ld   bc, $4904                                   ; $693e: $01 $04 $49
	sub  b                                           ; $6941: $90
	ld   [bc], a                                     ; $6942: $02
	sbc  l                                           ; $6943: $9d
	ld   d, d                                        ; $6944: $52
	ld   l, l                                        ; $6945: $6d
	ld   e, l                                        ; $6946: $5d
	ld   a, b                                        ; $6947: $78
	ld   d, d                                        ; $6948: $52
	sub  [hl]                                        ; $6949: $96
	ld   d, h                                        ; $694a: $54
	ld   a, e                                        ; $694b: $7b
	rst  $38                                         ; $694c: $ff
	rst  $38                                         ; $694d: $ff
	dec  c                                           ; $694e: $0d
	nop                                              ; $694f: $00
	ld   a, [bc]                                     ; $6950: $0a
	ld   bc, $9e63                                   ; $6951: $01 $63 $9e
	sub  b                                           ; $6954: $90
	ld   d, h                                        ; $6955: $54
	ld   e, b                                        ; $6956: $58
	ld   l, e                                        ; $6957: $6b
	ld   d, d                                        ; $6958: $52

Jump_069_6959:
	sbc  l                                           ; $6959: $9d
	sbc  a                                           ; $695a: $9f
	dec  c                                           ; $695b: $0d
	ld   [bc], a                                     ; $695c: $02
	sub  l                                           ; $695d: $95
	ld   [bc], a                                     ; $695e: $02
	sub  e                                           ; $695f: $93
	sbc  b                                           ; $6960: $98
	and  b                                           ; $6961: $a0
	ld   h, a                                        ; $6962: $67
	adc  h                                           ; $6963: $8c
	ld   l, c                                        ; $6964: $69
	ld   [hl], h                                     ; $6965: $74
	sbc  [hl]                                        ; $6966: $9e
	dec  c                                           ; $6967: $0d
	inc  bc                                          ; $6968: $03
	ld   [hl], b                                     ; $6969: $70
	ld   e, l                                        ; $696a: $5d
	ld   a, e                                        ; $696b: $7b
	ld   a, b                                        ; $696c: $78
	ld   h, e                                        ; $696d: $63
	ld   d, d                                        ; $696e: $52
	sbc  a                                           ; $696f: $9f
	dec  c                                           ; $6970: $0d
	nop                                              ; $6971: $00
	ld   a, [bc]                                     ; $6972: $0a
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	rrca                                             ; $6975: $0f
	nop                                              ; $6976: $00
	ld   bc, $0102                                   ; $6977: $01 $02 $01
	ld   h, c                                        ; $697a: $61
	and  c                                           ; $697b: $a1
	ld   a, [hl]                                     ; $697c: $7e
	and  c                                           ; $697d: $a1
	ld   a, l                                        ; $697e: $7d
	sbc  [hl]                                        ; $697f: $9e
	and  e                                           ; $6980: $a3
	and  l                                           ; $6981: $a5
	db   $ec                                         ; $6982: $ec
	cp   d                                           ; $6983: $ba
	sbc  a                                           ; $6984: $9f
	dec  c                                           ; $6985: $0d
	nop                                              ; $6986: $00
	ld   a, [bc]                                     ; $6987: $0a
	inc  e                                           ; $6988: $1c
	inc  b                                           ; $6989: $04
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	ld   bc, $9e50                                   ; $698c: $01 $50 $9e
	ld   l, a                                        ; $698f: $6f
	ld   d, d                                        ; $6990: $52
	ld   [bc], a                                     ; $6991: $02
	inc  de                                          ; $6992: $13
	ld   l, a                                        ; $6993: $6f
	sub  c                                           ; $6994: $91
	and  c                                           ; $6995: $a1
	dec  c                                           ; $6996: $0d
	ld   h, c                                        ; $6997: $61
	and  c                                           ; $6998: $a1
	ld   a, [hl]                                     ; $6999: $7e
	and  c                                           ; $699a: $a1
	ld   a, l                                        ; $699b: $7d
	sbc  a                                           ; $699c: $9f
	dec  c                                           ; $699d: $0d
	nop                                              ; $699e: $00
	ld   a, [bc]                                     ; $699f: $0a
	ld   bc, $546b                                   ; $69a0: $01 $6b $54
	ld   d, d                                        ; $69a3: $52
	ld   d, [hl]                                     ; $69a4: $56
	ld   a, [hl]                                     ; $69a5: $7e
	sbc  [hl]                                        ; $69a6: $9e
	ld   l, a                                        ; $69a7: $6f
	ld   d, d                                        ; $69a8: $52
	ld   [bc], a                                     ; $69a9: $02
	inc  de                                          ; $69aa: $13
	ld   l, a                                        ; $69ab: $6f
	sub  c                                           ; $69ac: $91
	and  c                                           ; $69ad: $a1
	sbc  [hl]                                        ; $69ae: $9e
	dec  c                                           ; $69af: $0d
	sub  b                                           ; $69b0: $90
	ld   d, h                                        ; $69b1: $54
	ld   l, e                                        ; $69b2: $6b
	sbc  e                                           ; $69b3: $9b
	ld   l, e                                        ; $69b4: $6b
	sbc  e                                           ; $69b5: $9b
	ld   d, d                                        ; $69b6: $52
	ld   a, b                                        ; $69b7: $78
	ld   e, l                                        ; $69b8: $5d
	ld   a, b                                        ; $69b9: $78
	sbc  c                                           ; $69ba: $99
	and  c                                           ; $69bb: $a1
	dec  c                                           ; $69bc: $0d
	ld   l, [hl]                                     ; $69bd: $6e
	sub  [hl]                                        ; $69be: $96
	ld   a, e                                        ; $69bf: $7b
	rst  $38                                         ; $69c0: $ff
	rst  $38                                         ; $69c1: $ff
	dec  c                                           ; $69c2: $0d
	nop                                              ; $69c3: $00
	ld   a, [bc]                                     ; $69c4: $0a
	ld   bc, $567b                                   ; $69c5: $01 $7b $56
	sbc  [hl]                                        ; $69c8: $9e
	ld   h, c                                        ; $69c9: $61
	ld   h, c                                        ; $69ca: $61
	ld   a, c                                        ; $69cb: $79
	ld   e, e                                        ; $69cc: $5b
	ld   [hl], h                                     ; $69cd: $74
	dec  c                                           ; $69ce: $0d
	ld   [hl], a                                     ; $69cf: $77
	ld   d, h                                        ; $69d0: $54
	ld   l, [hl]                                     ; $69d1: $6e
	ld   [hl], c                                     ; $69d2: $71
	ld   l, l                                        ; $69d3: $6d
	ld   sp, hl                                      ; $69d4: $f9
	dec  c                                           ; $69d5: $0d
	nop                                              ; $69d6: $00
	ld   a, [bc]                                     ; $69d7: $0a
	add  hl, de                                      ; $69d8: $19
	dec  b                                           ; $69d9: $05
	inc  bc                                          ; $69da: $03
	dec  b                                           ; $69db: $05
	inc  de                                          ; $69dc: $13
	ld   h, l                                        ; $69dd: $65
	ld   e, c                                        ; $69de: $59
	ld   [hl], c                                     ; $69df: $71
	ld   l, l                                        ; $69e0: $6d
	sub  [hl]                                        ; $69e1: $96
	nop                                              ; $69e2: $00
	nop                                              ; $69e3: $00
	ld   d, d                                        ; $69e4: $52
	ld   d, d                                        ; $69e5: $52
	inc  b                                           ; $69e6: $04
	xor  [hl]                                        ; $69e7: $ae
	ld   [bc], a                                     ; $69e8: $02
	call nc, Call_069_7879                           ; $69e9: $d4 $79 $78
	ld   [hl], c                                     ; $69ec: $71
	ld   l, l                                        ; $69ed: $6d
	sub  [hl]                                        ; $69ee: $96
	nop                                              ; $69ef: $00
	ld   bc, $0e04                                   ; $69f0: $01 $04 $0e
	inc  b                                           ; $69f3: $04
	adc  h                                           ; $69f4: $8c
	ld   l, [hl]                                     ; $69f5: $6e
	ld   [hl], c                                     ; $69f6: $71
	ld   l, l                                        ; $69f7: $6d
	sub  [hl]                                        ; $69f8: $96
	rst  $38                                         ; $69f9: $ff
	rst  $38                                         ; $69fa: $ff
	nop                                              ; $69fb: $00
	ld   [bc], a                                     ; $69fc: $02
	rlca                                             ; $69fd: $07
	and  [hl]                                        ; $69fe: $a6
	nop                                              ; $69ff: $00
	ld   [bc], a                                     ; $6a00: $02
	inc  bc                                          ; $6a01: $03
	ld   bc, $2000                                   ; $6a02: $01 $00 $20
	nop                                              ; $6a05: $00
	rlca                                             ; $6a06: $07
	rst  $38                                         ; $6a07: $ff
	nop                                              ; $6a08: $00
	ld   [bc], a                                     ; $6a09: $02
	inc  bc                                          ; $6a0a: $03
	ld   bc, $2001                                   ; $6a0b: $01 $01 $20
	nop                                              ; $6a0e: $00
	rlca                                             ; $6a0f: $07
	scf                                              ; $6a10: $37
	ld   bc, $0302                                   ; $6a11: $01 $02 $03
	ld   bc, $2002                                   ; $6a14: $01 $02 $20
	nop                                              ; $6a17: $00
	ld   b, $6c                                      ; $6a18: $06 $6c
	ld   bc, $000f                                   ; $6a1a: $01 $0f $00
	ld   bc, $0501                                   ; $6a1d: $01 $01 $05
	inc  de                                          ; $6a20: $13
	ld   h, l                                        ; $6a21: $65
	ld   e, c                                        ; $6a22: $59
	ld   [hl], c                                     ; $6a23: $71
	ld   l, l                                        ; $6a24: $6d
	sub  [hl]                                        ; $6a25: $96
	sbc  a                                           ; $6a26: $9f
	dec  c                                           ; $6a27: $0d
	adc  l                                           ; $6a28: $8d
	and  c                                           ; $6a29: $a1
	ld   a, b                                        ; $6a2a: $78
	inc  b                                           ; $6a2b: $04
	and  c                                           ; $6a2c: $a1
	inc  bc                                          ; $6a2d: $03
	add  d                                           ; $6a2e: $82
	ld   [hl], l                                     ; $6a2f: $75
	ld   d, d                                        ; $6a30: $52
	ld   d, d                                        ; $6a31: $52
	add  b                                           ; $6a32: $80
	halt                                             ; $6a33: $76
	ld   l, [hl]                                     ; $6a34: $6e
	ld   h, l                                        ; $6a35: $65
	sbc  a                                           ; $6a36: $9f
	dec  c                                           ; $6a37: $0d
	nop                                              ; $6a38: $00
	ld   a, [bc]                                     ; $6a39: $0a
	inc  e                                           ; $6a3a: $1c
	inc  b                                           ; $6a3b: $04
	dec  b                                           ; $6a3c: $05
	dec  b                                           ; $6a3d: $05
	dec  e                                           ; $6a3e: $1d
	ld   b, b                                        ; $6a3f: $40
	inc  d                                           ; $6a40: $14
	inc  bc                                          ; $6a41: $03
	inc  d                                           ; $6a42: $14
	ld   bc, $2803                                   ; $6a43: $01 $03 $28
	nop                                              ; $6a46: $00
	ld   bc, $d9a9                                   ; $6a47: $01 $a9 $d9
	reti                                             ; $6a4a: $d9


	rst  $38                                         ; $6a4b: $ff
	and  e                                           ; $6a4c: $a3
	and  l                                           ; $6a4d: $a5
	db   $ec                                         ; $6a4e: $ec
	cp   d                                           ; $6a4f: $ba
	sub  b                                           ; $6a50: $90
	db   $fd                                         ; $6a51: $fd
	call nc, $f5b9                                   ; $6a52: $d4 $b9 $f5
	cp   $0d                                         ; $6a55: $fe $0d
	ld   a, c                                        ; $6a57: $79
	ld   a, l                                        ; $6a58: $7d
	ld   d, d                                        ; $6a59: $52
	ld   [hl], c                                     ; $6a5a: $71
	ld   [hl], h                                     ; $6a5b: $74
	sbc  c                                           ; $6a5c: $99
	and  c                                           ; $6a5d: $a1
	ld   l, [hl]                                     ; $6a5e: $6e
	ld   a, [$920d]                                  ; $6a5f: $fa $0d $92
	ld   [hl], c                                     ; $6a62: $71
	ld   l, l                                        ; $6a63: $6d
	ld   a, e                                        ; $6a64: $7b
	ld   a, [$b910]                                  ; $6a65: $fa $10 $b9
	push hl                                          ; $6a68: $e5
	push af                                          ; $6a69: $f5
	sbc  $fb                                         ; $6a6a: $de $fb
	db   $ed                                         ; $6a6c: $ed
	ld   a, [$000d]                                  ; $6a6d: $fa $0d $00
	ld   a, [bc]                                     ; $6a70: $0a
	ld   b, $13                                      ; $6a71: $06 $13
	ld   [bc], a                                     ; $6a73: $02
	rrca                                             ; $6a74: $0f
	nop                                              ; $6a75: $00
	ld   bc, $5201                                   ; $6a76: $01 $01 $52
	ld   d, d                                        ; $6a79: $52
	inc  b                                           ; $6a7a: $04
	xor  [hl]                                        ; $6a7b: $ae
	ld   [bc], a                                     ; $6a7c: $02
	call nc, Call_069_7879                           ; $6a7d: $d4 $79 $78
	ld   [hl], c                                     ; $6a80: $71
	ld   l, l                                        ; $6a81: $6d
	sub  [hl]                                        ; $6a82: $96
	sbc  a                                           ; $6a83: $9f
	dec  c                                           ; $6a84: $0d
	ld   d, b                                        ; $6a85: $50
	sbc  b                                           ; $6a86: $98
	ld   e, d                                        ; $6a87: $5a
	halt                                             ; $6a88: $76
	ld   d, h                                        ; $6a89: $54
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	dec  c                                           ; $6a8c: $0d
	nop                                              ; $6a8d: $00
	ld   a, [bc]                                     ; $6a8e: $0a
	inc  e                                           ; $6a8f: $1c
	inc  b                                           ; $6a90: $04
	ld   bc, $1d01                                   ; $6a91: $01 $01 $1d
	ld   b, b                                        ; $6a94: $40
	inc  d                                           ; $6a95: $14
	inc  bc                                          ; $6a96: $03
	inc  d                                           ; $6a97: $14
	ld   bc, $2802                                   ; $6a98: $01 $02 $28
	nop                                              ; $6a9b: $00
	ld   bc, $5477                                   ; $6a9c: $01 $77 $54
	ld   d, d                                        ; $6a9f: $52
	ld   l, l                                        ; $6aa0: $6d
	ld   h, l                                        ; $6aa1: $65
	adc  h                                           ; $6aa2: $8c
	ld   h, l                                        ; $6aa3: $65
	ld   [hl], h                                     ; $6aa4: $74
	sbc  a                                           ; $6aa5: $9f
	dec  c                                           ; $6aa6: $0d
	nop                                              ; $6aa7: $00
	ld   a, [bc]                                     ; $6aa8: $0a
	ld   b, $13                                      ; $6aa9: $06 $13
	ld   [bc], a                                     ; $6aab: $02
	rrca                                             ; $6aac: $0f
	nop                                              ; $6aad: $00
	ld   bc, $0401                                   ; $6aae: $01 $01 $04
	ld   c, $04                                      ; $6ab1: $0e $04
	adc  h                                           ; $6ab3: $8c
	ld   l, [hl]                                     ; $6ab4: $6e
	ld   [hl], c                                     ; $6ab5: $71
	ld   l, l                                        ; $6ab6: $6d
	sub  [hl]                                        ; $6ab7: $96
	rst  $38                                         ; $6ab8: $ff
	rst  $38                                         ; $6ab9: $ff
	dec  c                                           ; $6aba: $0d
	nop                                              ; $6abb: $00
	ld   a, [bc]                                     ; $6abc: $0a
	inc  e                                           ; $6abd: $1c
	inc  b                                           ; $6abe: $04
	inc  bc                                          ; $6abf: $03
	inc  bc                                          ; $6ac0: $03
	dec  e                                           ; $6ac1: $1d
	ld   b, b                                        ; $6ac2: $40
	inc  d                                           ; $6ac3: $14
	inc  bc                                          ; $6ac4: $03
	inc  d                                           ; $6ac5: $14
	ld   bc, $2901                                   ; $6ac6: $01 $01 $29
	nop                                              ; $6ac9: $00
	ld   bc, $546b                                   ; $6aca: $01 $6b $54
	ld   a, b                                        ; $6acd: $78
	ld   a, h                                        ; $6ace: $7c
	rst  $38                                         ; $6acf: $ff
	rst  $38                                         ; $6ad0: $ff
	ld   sp, hl                                      ; $6ad1: $f9
	dec  c                                           ; $6ad2: $0d
	ld   h, h                                        ; $6ad3: $64
	and  c                                           ; $6ad4: $a1
	ld   a, e                                        ; $6ad5: $7b
	and  c                                           ; $6ad6: $a1
	ld   l, [hl]                                     ; $6ad7: $6e
	ld   a, b                                        ; $6ad8: $78
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	dec  c                                           ; $6adb: $0d
	nop                                              ; $6adc: $00
	ld   a, [bc]                                     ; $6add: $0a
	ld   b, $13                                      ; $6ade: $06 $13
	ld   [bc], a                                     ; $6ae0: $02
	rrca                                             ; $6ae1: $0f
	nop                                              ; $6ae2: $00
	ld   bc, $ff01                                   ; $6ae3: $01 $01 $ff
	rst  $38                                         ; $6ae6: $ff
	rst  $38                                         ; $6ae7: $ff
	rst  $38                                         ; $6ae8: $ff
	dec  c                                           ; $6ae9: $0d
	nop                                              ; $6aea: $00
	ld   a, [bc]                                     ; $6aeb: $0a
	rlca                                             ; $6aec: $07
	db   $dd                                         ; $6aed: $dd
	ld   bc, $1403                                   ; $6aee: $01 $03 $14
	ld   bc, $22b4                                   ; $6af1: $01 $b4 $22
	nop                                              ; $6af4: $00
	inc  e                                           ; $6af5: $1c
	inc  b                                           ; $6af6: $04
	dec  b                                           ; $6af7: $05
	dec  b                                           ; $6af8: $05
	dec  e                                           ; $6af9: $1d
	ld   b, b                                        ; $6afa: $40
	inc  d                                           ; $6afb: $14
	inc  bc                                          ; $6afc: $03
	inc  d                                           ; $6afd: $14
	ld   bc, $2802                                   ; $6afe: $01 $02 $28
	nop                                              ; $6b01: $00
	ld   bc, $526f                                   ; $6b02: $01 $6f $52
	ld   [bc], a                                     ; $6b05: $02
	inc  de                                          ; $6b06: $13
	ld   l, a                                        ; $6b07: $6f
	sub  c                                           ; $6b08: $91
	and  c                                           ; $6b09: $a1
	rst  $38                                         ; $6b0a: $ff
	rst  $38                                         ; $6b0b: $ff
	dec  c                                           ; $6b0c: $0d
	ld   l, e                                        ; $6b0d: $6b
	and  c                                           ; $6b0e: $a1
	ld   a, b                                        ; $6b0f: $78
	ld   a, c                                        ; $6b10: $79
	adc  l                                           ; $6b11: $8d
	ld   [hl], d                                     ; $6b12: $72
	adc  a                                           ; $6b13: $8f
	sub  a                                           ; $6b14: $97
	sbc  d                                           ; $6b15: $9a
	sbc  c                                           ; $6b16: $99
	halt                                             ; $6b17: $76
	dec  c                                           ; $6b18: $0d
	and  e                                           ; $6b19: $a3
	and  l                                           ; $6b1a: $a5
	db   $ec                                         ; $6b1b: $ec
	cp   d                                           ; $6b1c: $ba
	ld   [hl], h                                     ; $6b1d: $74
	sbc  d                                           ; $6b1e: $9a
	ld   l, a                                        ; $6b1f: $6f
	sub  c                                           ; $6b20: $91
	ld   d, h                                        ; $6b21: $54
	sub  [hl]                                        ; $6b22: $96
	db   $fc                                         ; $6b23: $fc
	sbc  a                                           ; $6b24: $9f
	dec  c                                           ; $6b25: $0d
	nop                                              ; $6b26: $00
	ld   a, [bc]                                     ; $6b27: $0a
	ld   bc, $9075                                   ; $6b28: $01 $75 $90
	sbc  [hl]                                        ; $6b2b: $9e
	ld   l, a                                        ; $6b2c: $6f
	ld   d, d                                        ; $6b2d: $52
	ld   [bc], a                                     ; $6b2e: $02
	inc  de                                          ; $6b2f: $13
	ld   l, a                                        ; $6b30: $6f
	sub  c                                           ; $6b31: $91
	and  c                                           ; $6b32: $a1
	sbc  a                                           ; $6b33: $9f
	dec  c                                           ; $6b34: $0d
	ld   [hl], h                                     ; $6b35: $74
	ld   d, d                                        ; $6b36: $52
	ld   h, c                                        ; $6b37: $61
	ld   e, l                                        ; $6b38: $5d
	ld   e, c                                        ; $6b39: $59
	ld   h, b                                        ; $6b3a: $60
	ld   e, e                                        ; $6b3b: $5b
	ld   l, [hl]                                     ; $6b3c: $6e
	and  c                                           ; $6b3d: $a1
	ld   a, c                                        ; $6b3e: $79
	ld   d, d                                        ; $6b3f: $52
	ld   l, l                                        ; $6b40: $6d
	ld   h, c                                        ; $6b41: $61
	halt                                             ; $6b42: $76
	dec  c                                           ; $6b43: $0d
	sbc  l                                           ; $6b44: $9d
	ld   h, a                                        ; $6b45: $67
	sbc  d                                           ; $6b46: $9a
	ld   a, b                                        ; $6b47: $78
	ld   d, d                                        ; $6b48: $52
	ld   [hl], l                                     ; $6b49: $75
	ld   a, e                                        ; $6b4a: $7b
	sbc  a                                           ; $6b4b: $9f
	dec  c                                           ; $6b4c: $0d
	nop                                              ; $6b4d: $00
	ld   a, [bc]                                     ; $6b4e: $0a
	ld   b, $13                                      ; $6b4f: $06 $13
	ld   [bc], a                                     ; $6b51: $02
	inc  e                                           ; $6b52: $1c
	inc  b                                           ; $6b53: $04
	ld   b, $06                                      ; $6b54: $06 $06
	ld   bc, $7978                                   ; $6b56: $01 $78 $79
	ld   sp, hl                                      ; $6b59: $f9
	dec  c                                           ; $6b5a: $0d
	and  e                                           ; $6b5b: $a3
	and  l                                           ; $6b5c: $a5
	db   $ec                                         ; $6b5d: $ec
	cp   d                                           ; $6b5e: $ba
	ld   a, h                                        ; $6b5f: $7c
	ld   e, c                                        ; $6b60: $59
	ld   e, b                                        ; $6b61: $58
	ld   a, c                                        ; $6b62: $79
	dec  c                                           ; $6b63: $0d
	ld   a, b                                        ; $6b64: $78
	ld   a, c                                        ; $6b65: $79
	ld   e, c                                        ; $6b66: $59
	ld   [hl], d                                     ; $6b67: $72
	ld   d, d                                        ; $6b68: $52
	ld   [hl], h                                     ; $6b69: $74
	sbc  c                                           ; $6b6a: $99
	ld   sp, hl                                      ; $6b6b: $f9
	dec  c                                           ; $6b6c: $0d
	nop                                              ; $6b6d: $00
	ld   a, [bc]                                     ; $6b6e: $0a
	inc  e                                           ; $6b6f: $1c
	inc  b                                           ; $6b70: $04
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	ld   bc, $9075                                   ; $6b73: $01 $75 $90
	adc  h                                           ; $6b76: $8c
	ld   d, b                                        ; $6b77: $50
	sbc  [hl]                                        ; $6b78: $9e
	ld   h, c                                        ; $6b79: $61
	and  c                                           ; $6b7a: $a1
	ld   h, d                                        ; $6b7b: $62
	sub  b                                           ; $6b7c: $90
	dec  c                                           ; $6b7d: $0d
	ld   e, d                                        ; $6b7e: $5a
	and  c                                           ; $6b7f: $a1
	ld   a, [hl]                                     ; $6b80: $7e
	ld   [hl], c                                     ; $6b81: $71
	ld   [hl], h                                     ; $6b82: $74
	ld   a, e                                        ; $6b83: $7b
	sbc  a                                           ; $6b84: $9f
	dec  c                                           ; $6b85: $0d
	nop                                              ; $6b86: $00
	ld   a, [bc]                                     ; $6b87: $0a
	inc  e                                           ; $6b88: $1c
	inc  b                                           ; $6b89: $04
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	ld   bc, $9166                                   ; $6b8c: $01 $66 $91
	sbc  [hl]                                        ; $6b8f: $9e
	and  e                                           ; $6b90: $a3
	and  l                                           ; $6b91: $a5
	db   $ec                                         ; $6b92: $ec
	cp   d                                           ; $6b93: $ba
	ld   d, d                                        ; $6b94: $52
	ld   e, l                                        ; $6b95: $5d
	ld   a, e                                        ; $6b96: $7b
	sbc  a                                           ; $6b97: $9f
	dec  c                                           ; $6b98: $0d
	nop                                              ; $6b99: $00
	ld   a, [bc]                                     ; $6b9a: $0a
	dec  c                                           ; $6b9b: $0d
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	rrca                                             ; $6b9e: $0f
	nop                                              ; $6b9f: $00
	ld   bc, $1e09                                   ; $6ba0: $01 $09 $1e
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	ld   c, $51                                      ; $6ba5: $0e $51
	inc  e                                           ; $6ba7: $1c
	ld   [bc], a                                     ; $6ba8: $02
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	ld   [bc], a                                     ; $6bab: $02
	ld   bc, $9750                                   ; $6bac: $01 $50 $97
	sbc  [hl]                                        ; $6baf: $9e
	ld   [$6300], sp                                 ; $6bb0: $08 $00 $63
	and  c                                           ; $6bb3: $a1
	sbc  a                                           ; $6bb4: $9f
	dec  c                                           ; $6bb5: $0d
	ld   [bc], a                                     ; $6bb6: $02
	sub  l                                           ; $6bb7: $95
	ld   [bc], a                                     ; $6bb8: $02
	sub  e                                           ; $6bb9: $93
	sbc  b                                           ; $6bba: $98
	ld   h, d                                        ; $6bbb: $62
	ld   [bc], a                                     ; $6bbc: $02
	sub  h                                           ; $6bbd: $94
	dec  b                                           ; $6bbe: $05
	rrca                                             ; $6bbf: $0f
	ld   h, e                                        ; $6bc0: $63
	adc  h                                           ; $6bc1: $8c
	sbc  a                                           ; $6bc2: $9f
	dec  c                                           ; $6bc3: $0d
	nop                                              ; $6bc4: $00
	ld   a, [bc]                                     ; $6bc5: $0a
	rrca                                             ; $6bc6: $0f
	nop                                              ; $6bc7: $00
	ld   bc, $ff01                                   ; $6bc8: $01 $01 $ff
	rst  $38                                         ; $6bcb: $ff
	rst  $38                                         ; $6bcc: $ff
	rst  $38                                         ; $6bcd: $ff
	rst  $38                                         ; $6bce: $ff
	rst  $38                                         ; $6bcf: $ff
	rst  $38                                         ; $6bd0: $ff
	rst  $38                                         ; $6bd1: $ff
	rst  $38                                         ; $6bd2: $ff
	rst  $38                                         ; $6bd3: $ff
	rst  $38                                         ; $6bd4: $ff
	rst  $38                                         ; $6bd5: $ff
	dec  c                                           ; $6bd6: $0d
	nop                                              ; $6bd7: $00
	ld   a, [bc]                                     ; $6bd8: $0a
	inc  e                                           ; $6bd9: $1c
	ld   [bc], a                                     ; $6bda: $02
	ld   bc, $0101                                   ; $6bdb: $01 $01 $01
	ld   [hl], a                                     ; $6bde: $77
	ld   d, h                                        ; $6bdf: $54
	ld   e, c                                        ; $6be0: $59
	ld   h, l                                        ; $6be1: $65
	adc  h                                           ; $6be2: $8c
	ld   h, l                                        ; $6be3: $65
	ld   l, l                                        ; $6be4: $6d
	ld   a, h                                        ; $6be5: $7c
	ld   sp, hl                                      ; $6be6: $f9
	dec  c                                           ; $6be7: $0d
	nop                                              ; $6be8: $00
	ld   a, [bc]                                     ; $6be9: $0a
	rrca                                             ; $6bea: $0f
	nop                                              ; $6beb: $00
	ld   bc, $5201                                   ; $6bec: $01 $01 $52
	ld   d, [hl]                                     ; $6bef: $56
	sbc  [hl]                                        ; $6bf0: $9e
	inc  b                                           ; $6bf1: $04
	ld   c, c                                        ; $6bf2: $49
	halt                                             ; $6bf3: $76
	ld   a, b                                        ; $6bf4: $78
	ld   e, l                                        ; $6bf5: $5d
	rst  $38                                         ; $6bf6: $ff
	rst  $38                                         ; $6bf7: $ff
	dec  c                                           ; $6bf8: $0d
	nop                                              ; $6bf9: $00
	ld   a, [bc]                                     ; $6bfa: $0a
	rrca                                             ; $6bfb: $0f
	ld   [bc], a                                     ; $6bfc: $02
	ld   bc, $6b01                                   ; $6bfd: $01 $01 $6b
	ld   d, h                                        ; $6c00: $54
	ld   d, d                                        ; $6c01: $52
	ld   d, [hl]                                     ; $6c02: $56
	ld   a, [hl]                                     ; $6c03: $7e
	inc  b                                           ; $6c04: $04
	dec  c                                           ; $6c05: $0d
	ld   [bc], a                                     ; $6c06: $02
	sub  [hl]                                        ; $6c07: $96
	inc  b                                           ; $6c08: $04
	ld   b, l                                        ; $6c09: $45
	inc  b                                           ; $6c0a: $04
	ld   a, [bc]                                     ; $6c0b: $0a
	sub  b                                           ; $6c0c: $90
	dec  c                                           ; $6c0d: $0d
	sub  b                                           ; $6c0e: $90
	ld   d, h                                        ; $6c0f: $54
	inc  bc                                          ; $6c10: $03
	ld   a, [hl]                                     ; $6c11: $7e
	sbc  l                                           ; $6c12: $9d
	sbc  b                                           ; $6c13: $98
	ld   [hl], l                                     ; $6c14: $75
	ld   h, a                                        ; $6c15: $67
	sbc  l                                           ; $6c16: $9d
	ld   a, e                                        ; $6c17: $7b

jr_069_6c18:
	rst  $38                                         ; $6c18: $ff
	rst  $38                                         ; $6c19: $ff
	dec  c                                           ; $6c1a: $0d
	ld   h, c                                        ; $6c1b: $61
	ld   a, h                                        ; $6c1c: $7c
	ld   [bc], a                                     ; $6c1d: $02
	jr   nz, jr_069_6c18                             ; $6c1e: $20 $f8

	ld   [bc], a                                     ; $6c20: $02
	sbc  e                                           ; $6c21: $9b
	sbc  [hl]                                        ; $6c22: $9e
	ld   [hl], a                                     ; $6c23: $77
	ld   d, h                                        ; $6c24: $54
	ld   [hl], l                                     ; $6c25: $75
	ld   h, l                                        ; $6c26: $65
	ld   l, l                                        ; $6c27: $6d
	ld   e, c                                        ; $6c28: $59
	ld   sp, hl                                      ; $6c29: $f9
	dec  c                                           ; $6c2a: $0d
	nop                                              ; $6c2b: $00
	ld   a, [bc]                                     ; $6c2c: $0a
	add  hl, de                                      ; $6c2d: $19
	dec  b                                           ; $6c2e: $05
	inc  bc                                          ; $6c2f: $03
	dec  b                                           ; $6c30: $05
	inc  de                                          ; $6c31: $13
	ld   h, l                                        ; $6c32: $65
	ld   e, c                                        ; $6c33: $59
	ld   [hl], c                                     ; $6c34: $71
	ld   l, l                                        ; $6c35: $6d
	ld   [hl], l                                     ; $6c36: $75
	ld   h, a                                        ; $6c37: $67
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	ld   d, d                                        ; $6c3a: $52
	ld   d, d                                        ; $6c3b: $52
	inc  b                                           ; $6c3c: $04
	xor  [hl]                                        ; $6c3d: $ae
	ld   [bc], a                                     ; $6c3e: $02
	call nc, Call_069_7879                           ; $6c3f: $d4 $79 $78
	sbc  b                                           ; $6c42: $98
	adc  h                                           ; $6c43: $8c
	ld   h, l                                        ; $6c44: $65
	ld   l, l                                        ; $6c45: $6d
	nop                                              ; $6c46: $00
	ld   bc, $9772                                   ; $6c47: $01 $72 $97
	ld   e, c                                        ; $6c4a: $59
	ld   [hl], c                                     ; $6c4b: $71
	ld   l, l                                        ; $6c4c: $6d
	ld   [hl], l                                     ; $6c4d: $75
	ld   h, a                                        ; $6c4e: $67
	nop                                              ; $6c4f: $00
	ld   [bc], a                                     ; $6c50: $02
	rlca                                             ; $6c51: $07
	jp   z, $0200                                    ; $6c52: $ca $00 $02

	inc  bc                                          ; $6c55: $03
	ld   bc, $2000                                   ; $6c56: $01 $00 $20
	nop                                              ; $6c59: $00
	rlca                                             ; $6c5a: $07
	ld   [hl], l                                     ; $6c5b: $75
	ld   bc, $0302                                   ; $6c5c: $01 $02 $03
	ld   bc, $2001                                   ; $6c5f: $01 $01 $20
	nop                                              ; $6c62: $00
	rlca                                             ; $6c63: $07
	sub  $01                                         ; $6c64: $d6 $01
	ld   [bc], a                                     ; $6c66: $02
	inc  bc                                          ; $6c67: $03
	ld   bc, $2002                                   ; $6c68: $01 $02 $20
	nop                                              ; $6c6b: $00
	ld   b, $76                                      ; $6c6c: $06 $76
	ld   [bc], a                                     ; $6c6e: $02
	rrca                                             ; $6c6f: $0f
	nop                                              ; $6c70: $00
	ld   bc, $0501                                   ; $6c71: $01 $01 $05
	inc  de                                          ; $6c74: $13
	ld   h, l                                        ; $6c75: $65
	ld   e, c                                        ; $6c76: $59
	ld   [hl], c                                     ; $6c77: $71
	ld   l, l                                        ; $6c78: $6d
	ld   [hl], l                                     ; $6c79: $75
	ld   h, a                                        ; $6c7a: $67
	sbc  a                                           ; $6c7b: $9f
	dec  c                                           ; $6c7c: $0d
	adc  l                                           ; $6c7d: $8d
	ld   a, b                                        ; $6c7e: $78
	ld   h, e                                        ; $6c7f: $63
	and  c                                           ; $6c80: $a1
	inc  b                                           ; $6c81: $04
	and  c                                           ; $6c82: $a1
	inc  bc                                          ; $6c83: $03
	add  d                                           ; $6c84: $82
	ld   l, [hl]                                     ; $6c85: $6e
	ld   h, l                                        ; $6c86: $65
	dec  c                                           ; $6c87: $0d
	nop                                              ; $6c88: $00
	ld   a, [bc]                                     ; $6c89: $0a
	ld   bc, $7978                                   ; $6c8a: $01 $78 $79
	sub  [hl]                                        ; $6c8d: $96
	sbc  b                                           ; $6c8e: $98
	sbc  [hl]                                        ; $6c8f: $9e
	ld   d, d                                        ; $6c90: $52
	ld   d, d                                        ; $6c91: $52
	inc  bc                                          ; $6c92: $03
	add  d                                           ; $6c93: $82
	ld   l, l                                        ; $6c94: $6d
	ld   l, a                                        ; $6c95: $6f
	ld   a, [hl]                                     ; $6c96: $7e
	ld   e, c                                        ; $6c97: $59
	sbc  b                                           ; $6c98: $98
	ld   [hl], l                                     ; $6c99: $75
	dec  c                                           ; $6c9a: $0d
	sub  b                                           ; $6c9b: $90
	ld   d, h                                        ; $6c9c: $54
	sbc  [hl]                                        ; $6c9d: $9e
	dec  b                                           ; $6c9e: $05
	ld   e, h                                        ; $6c9f: $5c
	inc  b                                           ; $6ca0: $04
	xor  d                                           ; $6ca1: $aa
	ld   e, d                                        ; $6ca2: $5a
	inc  bc                                          ; $6ca3: $03
	ld   l, c                                        ; $6ca4: $69
	ld   [bc], a                                     ; $6ca5: $02
	cp   [hl]                                        ; $6ca6: $be
	ld   [hl], l                                     ; $6ca7: $75
	ld   h, l                                        ; $6ca8: $65
	ld   l, l                                        ; $6ca9: $6d
	sbc  a                                           ; $6caa: $9f
	dec  c                                           ; $6cab: $0d
	nop                                              ; $6cac: $00
	ld   a, [bc]                                     ; $6cad: $0a
	inc  e                                           ; $6cae: $1c
	ld   [bc], a                                     ; $6caf: $02
	rlca                                             ; $6cb0: $07
	rlca                                             ; $6cb1: $07
	dec  e                                           ; $6cb2: $1d
	ld   b, b                                        ; $6cb3: $40
	ld   [de], a                                     ; $6cb4: $12
	inc  bc                                          ; $6cb5: $03
	ld   [de], a                                     ; $6cb6: $12
	ld   bc, $2902                                   ; $6cb7: $01 $02 $29
	nop                                              ; $6cba: $00
	ld   bc, $788d                                   ; $6cbb: $01 $8d $78
	ld   h, e                                        ; $6cbe: $63
	and  c                                           ; $6cbf: $a1
	inc  b                                           ; $6cc0: $04
	and  c                                           ; $6cc1: $a1
	inc  bc                                          ; $6cc2: $03
	add  d                                           ; $6cc3: $82
	ld   sp, hl                                      ; $6cc4: $f9
	dec  c                                           ; $6cc5: $0d
	adc  h                                           ; $6cc6: $8c
	ld   l, [hl]                                     ; $6cc7: $6e
	inc  b                                           ; $6cc8: $04
	sbc  [hl]                                        ; $6cc9: $9e
	ld   e, c                                        ; $6cca: $59
	ld   [hl], c                                     ; $6ccb: $71
	ld   [hl], h                                     ; $6ccc: $74
	sub  a                                           ; $6ccd: $97
	ld   [hl], c                                     ; $6cce: $71
	ld   h, l                                        ; $6ccf: $65
	sub  c                                           ; $6cd0: $91
	sub  a                                           ; $6cd1: $97
	ld   a, b                                        ; $6cd2: $78
	ld   d, d                                        ; $6cd3: $52
	dec  c                                           ; $6cd4: $0d
	sub  [hl]                                        ; $6cd5: $96
	ld   d, h                                        ; $6cd6: $54
	ld   [hl], l                                     ; $6cd7: $75
	ld   h, a                                        ; $6cd8: $67
	sbc  l                                           ; $6cd9: $9d
	ld   a, e                                        ; $6cda: $7b
	sbc  a                                           ; $6cdb: $9f
	dec  c                                           ; $6cdc: $0d
	nop                                              ; $6cdd: $00
	ld   a, [bc]                                     ; $6cde: $0a
	inc  e                                           ; $6cdf: $1c
	ld   [bc], a                                     ; $6ce0: $02
	ld   [bc], a                                     ; $6ce1: $02
	ld   [bc], a                                     ; $6ce2: $02
	ld   bc, $0804                                   ; $6ce3: $01 $04 $08
	ld   [bc], a                                     ; $6ce6: $02
	sub  d                                           ; $6ce7: $92
	ld   [hl], l                                     ; $6ce8: $75
	inc  b                                           ; $6ce9: $04
	and  c                                           ; $6cea: $a1
	inc  bc                                          ; $6ceb: $03
	add  d                                           ; $6cec: $82
	halt                                             ; $6ced: $76
	ld   [bc], a                                     ; $6cee: $02
	ld   a, b                                        ; $6cef: $78
	ld   a, [hl]                                     ; $6cf0: $7e
	sbc  d                                           ; $6cf1: $9a
	ld   [hl], h                                     ; $6cf2: $74
	ld   d, d                                        ; $6cf3: $52
	ld   d, d                                        ; $6cf4: $52
	ld   a, h                                        ; $6cf5: $7c
	ld   a, l                                        ; $6cf6: $7d
	dec  c                                           ; $6cf7: $0d
	ld   h, c                                        ; $6cf8: $61
	ld   a, h                                        ; $6cf9: $7c
	sbc  l                                           ; $6cfa: $9d
	ld   l, l                                        ; $6cfb: $6d
	ld   e, l                                        ; $6cfc: $5d
	ld   h, l                                        ; $6cfd: $65
	ld   l, [hl]                                     ; $6cfe: $6e
	ld   e, a                                        ; $6cff: $5f
	ld   [hl], l                                     ; $6d00: $75
	ld   h, a                                        ; $6d01: $67
	ld   a, h                                        ; $6d02: $7c
	sub  [hl]                                        ; $6d03: $96
	sbc  a                                           ; $6d04: $9f
	dec  c                                           ; $6d05: $0d
	ld   e, e                                        ; $6d06: $5b
	ld   l, a                                        ; $6d07: $6f
	and  c                                           ; $6d08: $a1
	halt                                             ; $6d09: $76
	ld   [bc], a                                     ; $6d0a: $02
	ld   a, d                                        ; $6d0b: $7a
	ld   d, [hl]                                     ; $6d0c: $56
	ld   [hl], h                                     ; $6d0d: $74
	ld   e, b                                        ; $6d0e: $58
	ld   e, e                                        ; $6d0f: $5b
	ld   a, b                                        ; $6d10: $78
	ld   h, e                                        ; $6d11: $63
	ld   d, d                                        ; $6d12: $52
	sbc  a                                           ; $6d13: $9f
	dec  c                                           ; $6d14: $0d
	nop                                              ; $6d15: $00
	ld   a, [bc]                                     ; $6d16: $0a
	ld   b, $48                                      ; $6d17: $06 $48
	ld   [bc], a                                     ; $6d19: $02
	rrca                                             ; $6d1a: $0f
	nop                                              ; $6d1b: $00
	ld   bc, $5201                                   ; $6d1c: $01 $01 $52
	ld   d, d                                        ; $6d1f: $52
	inc  b                                           ; $6d20: $04
	xor  [hl]                                        ; $6d21: $ae
	ld   [bc], a                                     ; $6d22: $02
	call nc, Call_069_7879                           ; $6d23: $d4 $79 $78
	sbc  b                                           ; $6d26: $98
	adc  h                                           ; $6d27: $8c
	ld   h, l                                        ; $6d28: $65
	ld   l, l                                        ; $6d29: $6d
	sbc  a                                           ; $6d2a: $9f
	dec  c                                           ; $6d2b: $0d
	ld   d, b                                        ; $6d2c: $50
	sbc  b                                           ; $6d2d: $98
	ld   e, d                                        ; $6d2e: $5a
	halt                                             ; $6d2f: $76
	ld   d, h                                        ; $6d30: $54
	ld   h, d                                        ; $6d31: $62
	ld   h, h                                        ; $6d32: $64
	ld   d, d                                        ; $6d33: $52
	adc  h                                           ; $6d34: $8c
	ld   h, a                                        ; $6d35: $67
	sbc  a                                           ; $6d36: $9f
	dec  c                                           ; $6d37: $0d
	nop                                              ; $6d38: $00
	ld   a, [bc]                                     ; $6d39: $0a
	inc  e                                           ; $6d3a: $1c
	ld   [bc], a                                     ; $6d3b: $02
	ld   bc, $1d01                                   ; $6d3c: $01 $01 $1d
	ld   b, b                                        ; $6d3f: $40
	ld   [de], a                                     ; $6d40: $12
	inc  bc                                          ; $6d41: $03
	ld   [de], a                                     ; $6d42: $12
	ld   bc, $2802                                   ; $6d43: $01 $02 $28
	nop                                              ; $6d46: $00
	ld   bc, $546b                                   ; $6d47: $01 $6b $54
	sbc  [hl]                                        ; $6d4a: $9e
	ld   l, e                                        ; $6d4b: $6b
	sbc  d                                           ; $6d4c: $9a
	ld   a, l                                        ; $6d4d: $7d
	sub  [hl]                                        ; $6d4e: $96
	ld   e, c                                        ; $6d4f: $59
	ld   [hl], c                                     ; $6d50: $71
	ld   l, l                                        ; $6d51: $6d
	ld   [hl], l                                     ; $6d52: $75
	ld   h, a                                        ; $6d53: $67
	sbc  l                                           ; $6d54: $9d
	sbc  a                                           ; $6d55: $9f
	dec  c                                           ; $6d56: $0d
	inc  bc                                          ; $6d57: $03
	add  d                                           ; $6d58: $82
	inc  bc                                          ; $6d59: $03
	ld   d, d                                        ; $6d5a: $52
	inc  b                                           ; $6d5b: $04
	ld   c, c                                        ; $6d5c: $49
	ld   [bc], a                                     ; $6d5d: $02
	jp   $0490                                       ; $6d5e: $c3 $90 $04


	xor  [hl]                                        ; $6d61: $ae
	ld   [bc], a                                     ; $6d62: $02
	call nc, $6775                                   ; $6d63: $d4 $75 $67
	sbc  a                                           ; $6d66: $9f
	dec  c                                           ; $6d67: $0d
	ld   [bc], a                                     ; $6d68: $02
	and  l                                           ; $6d69: $a5
	ld   [bc], a                                     ; $6d6a: $02
	xor  d                                           ; $6d6b: $aa
	sub  b                                           ; $6d6c: $90
	dec  b                                           ; $6d6d: $05
	ldh  [rTIMA], a                                  ; $6d6e: $e0 $05
	db   $dd                                         ; $6d70: $dd
	ld   a, b                                        ; $6d71: $78
	ld   h, e                                        ; $6d72: $63
	ld   d, d                                        ; $6d73: $52
	sbc  a                                           ; $6d74: $9f
	dec  c                                           ; $6d75: $0d
	nop                                              ; $6d76: $00
	ld   a, [bc]                                     ; $6d77: $0a
	ld   b, $48                                      ; $6d78: $06 $48
	ld   [bc], a                                     ; $6d7a: $02
	rrca                                             ; $6d7b: $0f
	nop                                              ; $6d7c: $00
	ld   bc, $ff01                                   ; $6d7d: $01 $01 $ff
	rst  $38                                         ; $6d80: $ff
	rst  $38                                         ; $6d81: $ff
	rst  $38                                         ; $6d82: $ff
	rst  $38                                         ; $6d83: $ff
	rst  $38                                         ; $6d84: $ff
	dec  c                                           ; $6d85: $0d
	ld   [hl], d                                     ; $6d86: $72
	sub  a                                           ; $6d87: $97
	ld   e, c                                        ; $6d88: $59
	ld   [hl], c                                     ; $6d89: $71
	ld   l, l                                        ; $6d8a: $6d
	ld   [hl], l                                     ; $6d8b: $75
	ld   h, a                                        ; $6d8c: $67
	rst  $38                                         ; $6d8d: $ff
	rst  $38                                         ; $6d8e: $ff
	dec  c                                           ; $6d8f: $0d
	nop                                              ; $6d90: $00
	ld   a, [bc]                                     ; $6d91: $0a
	inc  e                                           ; $6d92: $1c
	ld   [bc], a                                     ; $6d93: $02
	ld   [bc], a                                     ; $6d94: $02
	ld   [bc], a                                     ; $6d95: $02
	ld   bc, $546b                                   ; $6d96: $01 $6b $54
	ld   [hl], l                                     ; $6d99: $75
	ld   h, a                                        ; $6d9a: $67
	ld   e, c                                        ; $6d9b: $59
	rst  $38                                         ; $6d9c: $ff
	rst  $38                                         ; $6d9d: $ff
	dec  c                                           ; $6d9e: $0d
	ld   h, c                                        ; $6d9f: $61
	sbc  d                                           ; $6da0: $9a
	ld   e, [hl]                                     ; $6da1: $5e
	sub  a                                           ; $6da2: $97
	ld   d, d                                        ; $6da3: $52
	ld   a, h                                        ; $6da4: $7c
	ld   h, c                                        ; $6da5: $61
	halt                                             ; $6da6: $76
	ld   [hl], l                                     ; $6da7: $75
	inc  bc                                          ; $6da8: $03
	inc  a                                           ; $6da9: $3c
	ld   [bc], a                                     ; $6daa: $02
	inc  bc                                          ; $6dab: $03
	and  b                                           ; $6dac: $a0
	dec  c                                           ; $6dad: $0d
	ld   a, l                                        ; $6dae: $7d
	ld   e, l                                        ; $6daf: $5d
	sub  [hl]                                        ; $6db0: $96
	ld   d, h                                        ; $6db1: $54
	ld   [hl], l                                     ; $6db2: $75
	ld   a, l                                        ; $6db3: $7d
	pop  bc                                          ; $6db4: $c1
	db   $e3                                         ; $6db5: $e3
	ld   [hl], l                                     ; $6db6: $75
	ld   h, a                                        ; $6db7: $67
	sbc  l                                           ; $6db8: $9d
	ld   a, e                                        ; $6db9: $7b
	sbc  a                                           ; $6dba: $9f
	dec  c                                           ; $6dbb: $0d
	nop                                              ; $6dbc: $00
	ld   a, [bc]                                     ; $6dbd: $0a
	dec  e                                           ; $6dbe: $1d
	ld   b, b                                        ; $6dbf: $40
	ld   [de], a                                     ; $6dc0: $12
	inc  bc                                          ; $6dc1: $03
	ld   [de], a                                     ; $6dc2: $12
	ld   bc, $2902                                   ; $6dc3: $01 $02 $29
	nop                                              ; $6dc6: $00
	ld   bc, $9a61                                   ; $6dc7: $01 $61 $9a
	ld   e, c                                        ; $6dca: $59
	sub  a                                           ; $6dcb: $97
	ld   a, l                                        ; $6dcc: $7d
	sbc  [hl]                                        ; $6dcd: $9e
	inc  b                                           ; $6dce: $04
	dec  c                                           ; $6dcf: $0d
	ld   a, l                                        ; $6dd0: $7d
	sub  b                                           ; $6dd1: $90
	ld   l, a                                        ; $6dd2: $6f
	sbc  e                                           ; $6dd3: $9b
	and  c                                           ; $6dd4: $a1
	dec  c                                           ; $6dd5: $0d
	ld   a, h                                        ; $6dd6: $7c
	ld   h, c                                        ; $6dd7: $61
	halt                                             ; $6dd8: $76
	sbc  [hl]                                        ; $6dd9: $9e
	sub  b                                           ; $6dda: $90
	ld   d, h                                        ; $6ddb: $54
	inc  bc                                          ; $6ddc: $03
	ld   l, h                                        ; $6ddd: $6c
	ld   h, l                                        ; $6dde: $65
	inc  bc                                          ; $6ddf: $03
	ld   [hl], l                                     ; $6de0: $75
	sub  b                                           ; $6de1: $90
	dec  c                                           ; $6de2: $0d
	ld   e, e                                        ; $6de3: $5b
	ld   l, l                                        ; $6de4: $6d
	ld   d, [hl]                                     ; $6de5: $56
	ld   a, b                                        ; $6de6: $78
	ld   h, e                                        ; $6de7: $63
	ld   d, d                                        ; $6de8: $52
	sbc  a                                           ; $6de9: $9f
	dec  c                                           ; $6dea: $0d
	nop                                              ; $6deb: $00
	ld   a, [bc]                                     ; $6dec: $0a
	ld   bc, $9750                                   ; $6ded: $01 $50 $97
	sbc  [hl]                                        ; $6df0: $9e
	sub  b                                           ; $6df1: $90
	ld   d, h                                        ; $6df2: $54
	ld   h, c                                        ; $6df3: $61
	and  c                                           ; $6df4: $a1
	ld   a, b                                        ; $6df5: $78
	inc  bc                                          ; $6df6: $03
	ld   l, a                                        ; $6df7: $6f
	ld   [bc], a                                     ; $6df8: $02
	xor  c                                           ; $6df9: $a9
	sbc  a                                           ; $6dfa: $9f
	dec  c                                           ; $6dfb: $0d
	ld   h, e                                        ; $6dfc: $63
	ld   [hl], c                                     ; $6dfd: $71
	ld   h, e                                        ; $6dfe: $63
	halt                                             ; $6dff: $76
	ld   [bc], a                                     ; $6e00: $02
	sub  l                                           ; $6e01: $95
	ld   [bc], a                                     ; $6e02: $02
	sub  e                                           ; $6e03: $93
	sbc  b                                           ; $6e04: $98
	and  b                                           ; $6e05: $a0
	ld   h, a                                        ; $6e06: $67
	adc  h                                           ; $6e07: $8c
	ld   l, c                                        ; $6e08: $69
	ld   a, b                                        ; $6e09: $78
	dec  c                                           ; $6e0a: $0d
	ld   h, e                                        ; $6e0b: $63
	ld   d, d                                        ; $6e0c: $52
	sbc  a                                           ; $6e0d: $9f
	ld   [hl], l                                     ; $6e0e: $75
	ld   a, l                                        ; $6e0f: $7d
	sbc  [hl]                                        ; $6e10: $9e
	ld   e, b                                        ; $6e11: $58
	sub  d                                           ; $6e12: $92
	ld   h, a                                        ; $6e13: $67
	adc  l                                           ; $6e14: $8d
	rst  $38                                         ; $6e15: $ff
	rst  $38                                         ; $6e16: $ff
	dec  c                                           ; $6e17: $0d
	nop                                              ; $6e18: $00
	ld   a, [bc]                                     ; $6e19: $0a
	nop                                              ; $6e1a: $00
	rlca                                             ; $6e1b: $07
	call nc, $0302                                   ; $6e1c: $d4 $02 $03
	ld   [de], a                                     ; $6e1f: $12
	ld   bc, $23b4                                   ; $6e20: $01 $b4 $23
	nop                                              ; $6e23: $00
	inc  e                                           ; $6e24: $1c
	ld   [bc], a                                     ; $6e25: $02
	inc  b                                           ; $6e26: $04
	inc  b                                           ; $6e27: $04
	dec  e                                           ; $6e28: $1d
	ld   b, b                                        ; $6e29: $40
	ld   [de], a                                     ; $6e2a: $12
	inc  bc                                          ; $6e2b: $03
	ld   [de], a                                     ; $6e2c: $12
	ld   bc, $2802                                   ; $6e2d: $01 $02 $28
	nop                                              ; $6e30: $00
	ld   bc, $9e78                                   ; $6e31: $01 $78 $9e
	ld   a, b                                        ; $6e34: $78
	and  c                                           ; $6e35: $a1
	ld   [hl], l                                     ; $6e36: $75
	ld   h, a                                        ; $6e37: $67
	ld   e, c                                        ; $6e38: $59
	ld   sp, hl                                      ; $6e39: $f9
	dec  c                                           ; $6e3a: $0d
	ld   [bc], a                                     ; $6e3b: $02
	sub  l                                           ; $6e3c: $95
	ld   [hl], d                                     ; $6e3d: $72
	adc  a                                           ; $6e3e: $8f
	sub  a                                           ; $6e3f: $97
	sbc  d                                           ; $6e40: $9a
	ld   [hl], h                                     ; $6e41: $74
	sub  b                                           ; $6e42: $90
	sbc  [hl]                                        ; $6e43: $9e
	dec  c                                           ; $6e44: $0d
	inc  b                                           ; $6e45: $04
	ld   c, c                                        ; $6e46: $49
	sub  b                                           ; $6e47: $90
	ld   [hl], l                                     ; $6e48: $75
	adc  h                                           ; $6e49: $8c
	ld   l, c                                        ; $6e4a: $69
	and  c                                           ; $6e4b: $a1
	sub  [hl]                                        ; $6e4c: $96
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	dec  c                                           ; $6e4f: $0d
	nop                                              ; $6e50: $00
	ld   a, [bc]                                     ; $6e51: $0a
	ld   bc, $0008                                   ; $6e52: $01 $08 $00
	ld   h, e                                        ; $6e55: $63
	and  c                                           ; $6e56: $a1
	rst  $38                                         ; $6e57: $ff
	rst  $38                                         ; $6e58: $ff
	dec  c                                           ; $6e59: $0d
	ld   h, c                                        ; $6e5a: $61
	ld   a, h                                        ; $6e5b: $7c
	dec  b                                           ; $6e5c: $05
	or   c                                           ; $6e5d: $b1
	ld   [bc], a                                     ; $6e5e: $02
	sub  [hl]                                        ; $6e5f: $96
	and  b                                           ; $6e60: $a0
	inc  bc                                          ; $6e61: $03
	ld   d, d                                        ; $6e62: $52
	ld   e, c                                        ; $6e63: $59
	ld   h, l                                        ; $6e64: $65
	ld   [hl], h                                     ; $6e65: $74
	dec  c                                           ; $6e66: $0d
	ld   [bc], a                                     ; $6e67: $02
	and  l                                           ; $6e68: $a5
	ld   [bc], a                                     ; $6e69: $02
	xor  d                                           ; $6e6a: $aa
	sub  b                                           ; $6e6b: $90
	ld   e, d                                        ; $6e6c: $5a
	and  c                                           ; $6e6d: $a1
	ld   a, [hl]                                     ; $6e6e: $7e
	sbc  b                                           ; $6e6f: $98
	ld   a, b                                        ; $6e70: $78
	ld   h, e                                        ; $6e71: $63
	ld   d, d                                        ; $6e72: $52
	ld   a, e                                        ; $6e73: $7b
	sbc  a                                           ; $6e74: $9f
	dec  c                                           ; $6e75: $0d
	nop                                              ; $6e76: $00
	ld   a, [bc]                                     ; $6e77: $0a
	nop                                              ; $6e78: $00
	inc  e                                           ; $6e79: $1c
	ld   [bc], a                                     ; $6e7a: $02
	inc  bc                                          ; $6e7b: $03
	inc  bc                                          ; $6e7c: $03
	dec  e                                           ; $6e7d: $1d
	ld   b, b                                        ; $6e7e: $40
	ld   [de], a                                     ; $6e7f: $12
	inc  bc                                          ; $6e80: $03
	ld   [de], a                                     ; $6e81: $12
	ld   bc, $2902                                   ; $6e82: $01 $02 $29
	nop                                              ; $6e85: $00
	ld   bc, $9e04                                   ; $6e86: $01 $04 $9e
	ld   e, c                                        ; $6e89: $59
	sub  a                                           ; $6e8a: $97
	ld   a, b                                        ; $6e8b: $78
	ld   d, d                                        ; $6e8c: $52

jr_069_6e8d:
	ld   a, h                                        ; $6e8d: $7c
	ld   sp, hl                                      ; $6e8e: $f9
	dec  c                                           ; $6e8f: $0d
	sub  b                                           ; $6e90: $90
	ld   d, h                                        ; $6e91: $54
	ld   [bc], a                                     ; $6e92: $02
	jr   nz, jr_069_6e8d                             ; $6e93: $20 $f8

	ld   [bc], a                                     ; $6e95: $02
	sbc  e                                           ; $6e96: $9b
	sub  b                                           ; $6e97: $90
	dec  b                                           ; $6e98: $05
	or   c                                           ; $6e99: $b1
	halt                                             ; $6e9a: $76
	ld   d, h                                        ; $6e9b: $54
	halt                                             ; $6e9c: $76
	dec  c                                           ; $6e9d: $0d
	ld   h, l                                        ; $6e9e: $65
	ld   [hl], h                                     ; $6e9f: $74
	ld   d, d                                        ; $6ea0: $52
	sbc  c                                           ; $6ea1: $99
	halt                                             ; $6ea2: $76
	ld   d, d                                        ; $6ea3: $52
	ld   d, h                                        ; $6ea4: $54
	ld   a, h                                        ; $6ea5: $7c
	ld   a, c                                        ; $6ea6: $79
	rst  $38                                         ; $6ea7: $ff
	rst  $38                                         ; $6ea8: $ff
	dec  c                                           ; $6ea9: $0d
	nop                                              ; $6eaa: $00
	ld   a, [bc]                                     ; $6eab: $0a
	inc  e                                           ; $6eac: $1c
	ld   [bc], a                                     ; $6ead: $02
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	ld   bc, $9075                                   ; $6eb0: $01 $75 $90
	adc  h                                           ; $6eb3: $8c
	ld   d, b                                        ; $6eb4: $50
	sbc  [hl]                                        ; $6eb5: $9e
	ld   h, c                                        ; $6eb6: $61
	ld   a, h                                        ; $6eb7: $7c
	dec  b                                           ; $6eb8: $05
	or   c                                           ; $6eb9: $b1
	ld   [bc], a                                     ; $6eba: $02
	sub  [hl]                                        ; $6ebb: $96
	and  b                                           ; $6ebc: $a0
	inc  bc                                          ; $6ebd: $03
	ld   d, d                                        ; $6ebe: $52
	ld   e, c                                        ; $6ebf: $59
	ld   h, l                                        ; $6ec0: $65
	ld   [hl], h                                     ; $6ec1: $74
	dec  c                                           ; $6ec2: $0d
	ld   [bc], a                                     ; $6ec3: $02
	and  l                                           ; $6ec4: $a5
	ld   [bc], a                                     ; $6ec5: $02
	xor  d                                           ; $6ec6: $aa
	sub  b                                           ; $6ec7: $90
	ld   e, d                                        ; $6ec8: $5a
	and  c                                           ; $6ec9: $a1
	ld   a, [hl]                                     ; $6eca: $7e
	sbc  b                                           ; $6ecb: $98
	ld   a, b                                        ; $6ecc: $78
	ld   h, e                                        ; $6ecd: $63
	ld   d, d                                        ; $6ece: $52
	sbc  a                                           ; $6ecf: $9f
	dec  c                                           ; $6ed0: $0d
	ld   h, [hl]                                     ; $6ed1: $66
	sub  c                                           ; $6ed2: $91
	sbc  [hl]                                        ; $6ed3: $9e
	ld   e, b                                        ; $6ed4: $58
	sub  d                                           ; $6ed5: $92
	ld   h, a                                        ; $6ed6: $67
	adc  l                                           ; $6ed7: $8d
	sbc  a                                           ; $6ed8: $9f
	dec  c                                           ; $6ed9: $0d
	nop                                              ; $6eda: $00
	ld   a, [bc]                                     ; $6edb: $0a
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	ld   c, $42                                      ; $6ede: $0e $42
	rrca                                             ; $6ee0: $0f
	nop                                              ; $6ee1: $00
	ld   bc, $1402                                   ; $6ee2: $01 $02 $14
	ld   b, $01                                      ; $6ee5: $06 $01
	ld   bc, $5d63                                   ; $6ee7: $01 $63 $5d
	sub  a                                           ; $6eea: $97
	ld   h, e                                        ; $6eeb: $63
	and  c                                           ; $6eec: $a1
	sbc  [hl]                                        ; $6eed: $9e
	dec  c                                           ; $6eee: $0d
	ld   d, d                                        ; $6eef: $52
	sub  a                                           ; $6ef0: $97
	ld   [hl], c                                     ; $6ef1: $71
	ld   h, l                                        ; $6ef2: $65
	sub  c                                           ; $6ef3: $91
	ld   d, d                                        ; $6ef4: $52
	adc  h                                           ; $6ef5: $8c
	ld   h, a                                        ; $6ef6: $67
	ld   e, c                                        ; $6ef7: $59
	ld   sp, hl                                      ; $6ef8: $f9
	dec  c                                           ; $6ef9: $0d
	nop                                              ; $6efa: $00
	ld   a, [bc]                                     ; $6efb: $0a
	rrca                                             ; $6efc: $0f
	ld   bc, $0100                                   ; $6efd: $01 $00 $01
	ld   [$6300], sp                                 ; $6f00: $08 $00 $63
	and  c                                           ; $6f03: $a1
	ld   sp, hl                                      ; $6f04: $f9
	dec  c                                           ; $6f05: $0d
	ld   l, a                                        ; $6f06: $6f
	sub  l                                           ; $6f07: $95
	ld   [hl], c                                     ; $6f08: $71
	halt                                             ; $6f09: $76
	adc  h                                           ; $6f0a: $8c
	ld   [hl], c                                     ; $6f0b: $71
	ld   [hl], h                                     ; $6f0c: $74
	ld   e, l                                        ; $6f0d: $5d
	ld   l, [hl]                                     ; $6f0e: $6e
	ld   h, e                                        ; $6f0f: $63
	ld   d, d                                        ; $6f10: $52
	ld   a, e                                        ; $6f11: $7b
	sbc  a                                           ; $6f12: $9f
	dec  c                                           ; $6f13: $0d
	ld   [bc], a                                     ; $6f14: $02
	and  l                                           ; $6f15: $a5
	ld   [bc], a                                     ; $6f16: $02
	adc  b                                           ; $6f17: $88
	ld   e, a                                        ; $6f18: $5f
	adc  h                                           ; $6f19: $8c
	ld   h, a                                        ; $6f1a: $67
	ld   e, c                                        ; $6f1b: $59
	sub  a                                           ; $6f1c: $97
	sbc  a                                           ; $6f1d: $9f
	dec  c                                           ; $6f1e: $0d
	nop                                              ; $6f1f: $00
	ld   a, [bc]                                     ; $6f20: $0a
	rrca                                             ; $6f21: $0f
	nop                                              ; $6f22: $00
	ld   bc, $4f23                                   ; $6f23: $01 $23 $4f
	inc  e                                           ; $6f26: $1c
	ld   bc, $0000                                   ; $6f27: $01 $00 $00
	ld   bc, $9750                                   ; $6f2a: $01 $50 $97
	sbc  [hl]                                        ; $6f2d: $9e
	ld   [hl], a                                     ; $6f2e: $77
	ld   d, h                                        ; $6f2f: $54
	ld   h, l                                        ; $6f30: $65
	ld   l, l                                        ; $6f31: $6d
	and  c                                           ; $6f32: $a1
	ld   [hl], l                                     ; $6f33: $75
	ld   h, a                                        ; $6f34: $67
	ld   e, c                                        ; $6f35: $59
	ld   sp, hl                                      ; $6f36: $f9
	dec  c                                           ; $6f37: $0d
	nop                                              ; $6f38: $00
	ld   a, [bc]                                     ; $6f39: $0a
	rrca                                             ; $6f3a: $0f
	nop                                              ; $6f3b: $00
	ld   bc, $5201                                   ; $6f3c: $01 $01 $52
	ld   d, [hl]                                     ; $6f3f: $56
	rst  $38                                         ; $6f40: $ff
	rst  $38                                         ; $6f41: $ff
	inc  b                                           ; $6f42: $04
	ld   c, c                                        ; $6f43: $49
	halt                                             ; $6f44: $76
	ld   a, b                                        ; $6f45: $78
	ld   e, l                                        ; $6f46: $5d
	dec  c                                           ; $6f47: $0d
	ld   h, e                                        ; $6f48: $63
	ld   e, l                                        ; $6f49: $5d
	sub  a                                           ; $6f4a: $97
	ld   h, e                                        ; $6f4b: $63
	and  c                                           ; $6f4c: $a1
	halt                                             ; $6f4d: $76
	ld   e, b                                        ; $6f4e: $58
	dec  b                                           ; $6f4f: $05
	jr   nz, jr_069_6fac                             ; $6f50: $20 $5a

	ld   h, l                                        ; $6f52: $65
	ld   l, l                                        ; $6f53: $6d
	ld   d, d                                        ; $6f54: $52
	halt                                             ; $6f55: $76
	dec  c                                           ; $6f56: $0d
	dec  b                                           ; $6f57: $05
	pop  de                                          ; $6f58: $d1
	ld   d, d                                        ; $6f59: $52
	adc  h                                           ; $6f5a: $8c
	ld   h, l                                        ; $6f5b: $65
	ld   [hl], h                                     ; $6f5c: $74
	rst  $38                                         ; $6f5d: $ff
	rst  $38                                         ; $6f5e: $ff
	dec  c                                           ; $6f5f: $0d
	nop                                              ; $6f60: $00
	ld   a, [bc]                                     ; $6f61: $0a
	inc  e                                           ; $6f62: $1c
	ld   bc, $0000                                   ; $6f63: $01 $00 $00
	ld   bc, $ffff                                   ; $6f66: $01 $ff $ff
	ld   l, e                                        ; $6f69: $6b
	ld   d, h                                        ; $6f6a: $54
	ld   d, d                                        ; $6f6b: $52
	ld   d, [hl]                                     ; $6f6c: $56
	ld   a, [hl]                                     ; $6f6d: $7e
	inc  b                                           ; $6f6e: $04
	dec  c                                           ; $6f6f: $0d
	ld   [bc], a                                     ; $6f70: $02
	sub  [hl]                                        ; $6f71: $96
	inc  b                                           ; $6f72: $04
	ld   b, l                                        ; $6f73: $45
	inc  b                                           ; $6f74: $04
	ld   a, [bc]                                     ; $6f75: $0a
	sub  b                                           ; $6f76: $90
	dec  c                                           ; $6f77: $0d
	sub  b                                           ; $6f78: $90
	ld   d, h                                        ; $6f79: $54
	inc  bc                                          ; $6f7a: $03
	ld   a, [hl]                                     ; $6f7b: $7e
	sbc  l                                           ; $6f7c: $9d
	sbc  b                                           ; $6f7d: $98
	ld   [hl], l                                     ; $6f7e: $75
	ld   h, a                                        ; $6f7f: $67
	ld   a, e                                        ; $6f80: $7b
	rst  $38                                         ; $6f81: $ff
	rst  $38                                         ; $6f82: $ff
	dec  c                                           ; $6f83: $0d
	ld   h, c                                        ; $6f84: $61
	sbc  d                                           ; $6f85: $9a
	adc  h                                           ; $6f86: $8c
	ld   [hl], l                                     ; $6f87: $75
	sbc  [hl]                                        ; $6f88: $9e
	ld   [hl], a                                     ; $6f89: $77
	ld   d, h                                        ; $6f8a: $54
	ld   [hl], l                                     ; $6f8b: $75
	ld   h, l                                        ; $6f8c: $65
	ld   l, l                                        ; $6f8d: $6d
	ld   e, c                                        ; $6f8e: $59
	ld   sp, hl                                      ; $6f8f: $f9
	dec  c                                           ; $6f90: $0d
	nop                                              ; $6f91: $00
	ld   a, [bc]                                     ; $6f92: $0a
	add  hl, de                                      ; $6f93: $19
	dec  b                                           ; $6f94: $05
	inc  bc                                          ; $6f95: $03
	dec  b                                           ; $6f96: $05
	inc  de                                          ; $6f97: $13
	ld   h, l                                        ; $6f98: $65
	ld   e, c                                        ; $6f99: $59
	ld   [hl], c                                     ; $6f9a: $71
	ld   l, l                                        ; $6f9b: $6d
	ld   [hl], l                                     ; $6f9c: $75
	ld   h, a                                        ; $6f9d: $67
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	ld   d, d                                        ; $6fa0: $52
	ld   d, d                                        ; $6fa1: $52
	inc  b                                           ; $6fa2: $04
	xor  [hl]                                        ; $6fa3: $ae
	ld   [bc], a                                     ; $6fa4: $02
	call nc, Call_069_7879                           ; $6fa5: $d4 $79 $78
	sbc  b                                           ; $6fa8: $98
	adc  h                                           ; $6fa9: $8c
	ld   h, l                                        ; $6faa: $65
	ld   l, l                                        ; $6fab: $6d

jr_069_6fac:
	nop                                              ; $6fac: $00
	ld   bc, $9772                                   ; $6fad: $01 $72 $97
	ld   e, c                                        ; $6fb0: $59
	ld   [hl], c                                     ; $6fb1: $71
	ld   l, l                                        ; $6fb2: $6d
	ld   [hl], l                                     ; $6fb3: $75
	ld   h, a                                        ; $6fb4: $67
	nop                                              ; $6fb5: $00
	ld   [bc], a                                     ; $6fb6: $02
	rlca                                             ; $6fb7: $07
	rst  $30                                         ; $6fb8: $f7
	nop                                              ; $6fb9: $00
	ld   [bc], a                                     ; $6fba: $02
	inc  bc                                          ; $6fbb: $03
	ld   bc, $2000                                   ; $6fbc: $01 $00 $20
	nop                                              ; $6fbf: $00
	rlca                                             ; $6fc0: $07
	ld   c, c                                        ; $6fc1: $49
	ld   bc, $0302                                   ; $6fc2: $01 $02 $03
	ld   bc, $2001                                   ; $6fc5: $01 $01 $20
	nop                                              ; $6fc8: $00
	rlca                                             ; $6fc9: $07
	sub  e                                           ; $6fca: $93
	ld   bc, $0302                                   ; $6fcb: $01 $02 $03
	ld   bc, $2002                                   ; $6fce: $01 $02 $20
	nop                                              ; $6fd1: $00
	ld   b, $d9                                      ; $6fd2: $06 $d9
	ld   bc, $000f                                   ; $6fd4: $01 $0f $00
	ld   bc, $0501                                   ; $6fd7: $01 $01 $05
	inc  de                                          ; $6fda: $13
	ld   h, l                                        ; $6fdb: $65
	ld   e, c                                        ; $6fdc: $59
	ld   [hl], c                                     ; $6fdd: $71
	ld   l, l                                        ; $6fde: $6d
	ld   [hl], l                                     ; $6fdf: $75
	ld   h, a                                        ; $6fe0: $67
	sbc  a                                           ; $6fe1: $9f
	dec  c                                           ; $6fe2: $0d
	adc  l                                           ; $6fe3: $8d
	ld   a, b                                        ; $6fe4: $78
	ld   h, e                                        ; $6fe5: $63
	and  c                                           ; $6fe6: $a1
	ld   d, d                                        ; $6fe7: $52
	ld   d, d                                        ; $6fe8: $52
	inc  bc                                          ; $6fe9: $03
	add  d                                           ; $6fea: $82
	ld   a, [hl]                                     ; $6feb: $7e
	ld   e, c                                        ; $6fec: $59
	sbc  b                                           ; $6fed: $98
	ld   [hl], l                                     ; $6fee: $75
	rst  $38                                         ; $6fef: $ff
	rst  $38                                         ; $6ff0: $ff
	dec  c                                           ; $6ff1: $0d
	nop                                              ; $6ff2: $00
	ld   a, [bc]                                     ; $6ff3: $0a
	inc  e                                           ; $6ff4: $1c
	ld   bc, $0101                                   ; $6ff5: $01 $01 $01
	dec  e                                           ; $6ff8: $1d
	ld   b, b                                        ; $6ff9: $40
	ld   de, $1103                                   ; $6ffa: $11 $03 $11
	ld   bc, $2803                                   ; $6ffd: $01 $03 $28
	nop                                              ; $7000: $00
	ld   bc, $546b                                   ; $7001: $01 $6b $54
	ld   [bc], a                                     ; $7004: $02
	sbc  l                                           ; $7005: $9d
	ld   [hl], c                                     ; $7006: $71
	ld   [hl], h                                     ; $7007: $74
	sub  b                                           ; $7008: $90
	sub  a                                           ; $7009: $97
	ld   d, [hl]                                     ; $700a: $56
	ld   [hl], h                                     ; $700b: $74
	dec  c                                           ; $700c: $0d
	inc  b                                           ; $700d: $04
	ld   c, c                                        ; $700e: $49
	sub  [hl]                                        ; $700f: $96
	sbc  b                                           ; $7010: $98
	ld   [hl], l                                     ; $7011: $75
	ld   h, a                                        ; $7012: $67
	sbc  a                                           ; $7013: $9f
	dec  c                                           ; $7014: $0d
	inc  bc                                          ; $7015: $03
	ld   l, h                                        ; $7016: $6c
	ld   h, l                                        ; $7017: $65
	rst  ToBoot                                         ; $7018: $c7
	xor  $8c                                         ; $7019: $ee $8c
	ld   h, a                                        ; $701b: $67
	ld   e, a                                        ; $701c: $5f
	ld   [hl], a                                     ; $701d: $77
	ld   a, e                                        ; $701e: $7b
	rst  $38                                         ; $701f: $ff
	rst  $38                                         ; $7020: $ff
	dec  c                                           ; $7021: $0d
	nop                                              ; $7022: $00
	ld   a, [bc]                                     ; $7023: $0a
	ld   b, $a2                                      ; $7024: $06 $a2
	ld   [bc], a                                     ; $7026: $02
	rrca                                             ; $7027: $0f
	nop                                              ; $7028: $00
	ld   bc, $5201                                   ; $7029: $01 $01 $52
	ld   d, d                                        ; $702c: $52
	inc  b                                           ; $702d: $04
	xor  [hl]                                        ; $702e: $ae
	ld   [bc], a                                     ; $702f: $02
	call nc, Call_069_7879                           ; $7030: $d4 $79 $78
	sbc  b                                           ; $7033: $98
	adc  h                                           ; $7034: $8c
	ld   h, l                                        ; $7035: $65
	ld   l, l                                        ; $7036: $6d
	sbc  a                                           ; $7037: $9f
	dec  c                                           ; $7038: $0d
	ld   d, b                                        ; $7039: $50
	sbc  b                                           ; $703a: $98
	ld   e, d                                        ; $703b: $5a
	halt                                             ; $703c: $76
	ld   d, h                                        ; $703d: $54
	ld   h, d                                        ; $703e: $62
	ld   h, h                                        ; $703f: $64
	ld   d, d                                        ; $7040: $52
	adc  h                                           ; $7041: $8c
	ld   h, a                                        ; $7042: $67
	sbc  a                                           ; $7043: $9f
	dec  c                                           ; $7044: $0d
	nop                                              ; $7045: $00
	ld   a, [bc]                                     ; $7046: $0a
	inc  e                                           ; $7047: $1c
	ld   bc, $0101                                   ; $7048: $01 $01 $01
	dec  e                                           ; $704b: $1d
	ld   b, b                                        ; $704c: $40
	ld   de, $1103                                   ; $704d: $11 $03 $11
	ld   bc, $2802                                   ; $7050: $01 $02 $28
	nop                                              ; $7053: $00
	ld   bc, $5252                                   ; $7054: $01 $52 $52
	ld   d, [hl]                                     ; $7057: $56
	sbc  [hl]                                        ; $7058: $9e
	ld   h, c                                        ; $7059: $61
	ld   l, a                                        ; $705a: $6f
	sub  a                                           ; $705b: $97
	ld   h, c                                        ; $705c: $61
	ld   l, e                                        ; $705d: $6b
	dec  c                                           ; $705e: $0d
	ld   d, b                                        ; $705f: $50
	sbc  b                                           ; $7060: $98
	ld   e, d                                        ; $7061: $5a
	halt                                             ; $7062: $76
	ld   d, h                                        ; $7063: $54
	ld   h, d                                        ; $7064: $62
	ld   h, h                                        ; $7065: $64
	ld   d, d                                        ; $7066: $52
	adc  h                                           ; $7067: $8c
	ld   h, l                                        ; $7068: $65
	ld   l, l                                        ; $7069: $6d
	sbc  a                                           ; $706a: $9f
	dec  c                                           ; $706b: $0d
	nop                                              ; $706c: $00
	ld   a, [bc]                                     ; $706d: $0a
	ld   b, $a2                                      ; $706e: $06 $a2
	ld   [bc], a                                     ; $7070: $02
	rrca                                             ; $7071: $0f
	nop                                              ; $7072: $00
	ld   bc, $ff01                                   ; $7073: $01 $01 $ff
	rst  $38                                         ; $7076: $ff
	rst  $38                                         ; $7077: $ff
	rst  $38                                         ; $7078: $ff
	rst  $38                                         ; $7079: $ff
	rst  $38                                         ; $707a: $ff
	dec  c                                           ; $707b: $0d
	ld   [hl], d                                     ; $707c: $72
	sub  a                                           ; $707d: $97
	ld   e, c                                        ; $707e: $59
	ld   [hl], c                                     ; $707f: $71
	ld   l, l                                        ; $7080: $6d
	ld   [hl], l                                     ; $7081: $75
	ld   h, a                                        ; $7082: $67
	rst  $38                                         ; $7083: $ff
	rst  $38                                         ; $7084: $ff
	dec  c                                           ; $7085: $0d
	nop                                              ; $7086: $00
	ld   a, [bc]                                     ; $7087: $0a
	inc  e                                           ; $7088: $1c
	ld   bc, $0404                                   ; $7089: $01 $04 $04
	dec  e                                           ; $708c: $1d
	ld   b, b                                        ; $708d: $40
	ld   de, $1103                                   ; $708e: $11 $03 $11
	ld   bc, $2901                                   ; $7091: $01 $01 $29
	nop                                              ; $7094: $00
	ld   bc, $546b                                   ; $7095: $01 $6b $54
	ld   [hl], l                                     ; $7098: $75
	ld   h, a                                        ; $7099: $67
	ld   e, c                                        ; $709a: $59
	rst  $38                                         ; $709b: $ff
	rst  $38                                         ; $709c: $ff
	dec  c                                           ; $709d: $0d
	inc  b                                           ; $709e: $04
	ld   c, c                                        ; $709f: $49
	ld   e, d                                        ; $70a0: $5a
	ld   d, d                                        ; $70a1: $52
	ld   e, a                                        ; $70a2: $5f
	ld   a, b                                        ; $70a3: $78
	ld   e, c                                        ; $70a4: $59
	ld   [hl], c                                     ; $70a5: $71
	ld   l, l                                        ; $70a6: $6d
	and  c                                           ; $70a7: $a1
	ld   [hl], l                                     ; $70a8: $75
	dec  c                                           ; $70a9: $0d
	ld   h, l                                        ; $70aa: $65
	sub  l                                           ; $70ab: $95
	ld   d, h                                        ; $70ac: $54
	ld   a, e                                        ; $70ad: $7b
	rst  $38                                         ; $70ae: $ff
	rst  $38                                         ; $70af: $ff
	ld   sp, hl                                      ; $70b0: $f9
	dec  c                                           ; $70b1: $0d
	nop                                              ; $70b2: $00
	ld   a, [bc]                                     ; $70b3: $0a
	ld   b, $a2                                      ; $70b4: $06 $a2
	ld   [bc], a                                     ; $70b6: $02
	rlca                                             ; $70b7: $07
	ld   b, e                                        ; $70b8: $43
	ld   [bc], a                                     ; $70b9: $02
	inc  bc                                          ; $70ba: $03
	ld   de, $b401                                   ; $70bb: $11 $01 $b4
	ld   [hl+], a                                    ; $70be: $22
	nop                                              ; $70bf: $00
	inc  e                                           ; $70c0: $1c
	ld   bc, $0505                                   ; $70c1: $01 $05 $05
	ld   bc, $6e92                                   ; $70c4: $01 $92 $6e
	rst  $38                                         ; $70c7: $ff
	rst  $38                                         ; $70c8: $ff
	dec  c                                           ; $70c9: $0d
	ld   l, e                                        ; $70ca: $6b
	and  c                                           ; $70cb: $a1
	ld   a, b                                        ; $70cc: $78
	ld   a, c                                        ; $70cd: $79
	ld   [bc], a                                     ; $70ce: $02
	sub  l                                           ; $70cf: $95
	ld   [hl], d                                     ; $70d0: $72
	adc  a                                           ; $70d1: $8f
	ld   a, b                                        ; $70d2: $78
	ld   d, d                                        ; $70d3: $52
	ld   [hl], l                                     ; $70d4: $75
	ld   [bc], a                                     ; $70d5: $02
	inc  [hl]                                        ; $70d6: $34
	ld   h, e                                        ; $70d7: $63
	ld   d, d                                        ; $70d8: $52
	sbc  a                                           ; $70d9: $9f
	dec  c                                           ; $70da: $0d
	ld   h, e                                        ; $70db: $63
	adc  l                                           ; $70dc: $8d
	ld   h, l                                        ; $70dd: $65
	ld   e, l                                        ; $70de: $5d
	ld   a, b                                        ; $70df: $78
	sbc  b                                           ; $70e0: $98
	adc  h                                           ; $70e1: $8c
	ld   h, a                                        ; $70e2: $67
	ld   e, a                                        ; $70e3: $5f
	ld   [hl], a                                     ; $70e4: $77
	rst  $38                                         ; $70e5: $ff
	rst  $38                                         ; $70e6: $ff
	dec  c                                           ; $70e7: $0d
	nop                                              ; $70e8: $00
	ld   a, [bc]                                     ; $70e9: $0a
	inc  e                                           ; $70ea: $1c
	ld   bc, $0101                                   ; $70eb: $01 $01 $01
	dec  e                                           ; $70ee: $1d
	ld   b, b                                        ; $70ef: $40
	ld   de, $1103                                   ; $70f0: $11 $03 $11
	ld   bc, $2802                                   ; $70f3: $01 $02 $28
	nop                                              ; $70f6: $00
	ld   bc, $0008                                   ; $70f7: $01 $08 $00
	ld   h, e                                        ; $70fa: $63
	and  c                                           ; $70fb: $a1
	ld   a, l                                        ; $70fc: $7d
	dec  c                                           ; $70fd: $0d
	ld   h, c                                        ; $70fe: $61
	ld   a, h                                        ; $70ff: $7c
	dec  b                                           ; $7100: $05
	or   c                                           ; $7101: $b1
	ld   [bc], a                                     ; $7102: $02
	sub  [hl]                                        ; $7103: $96

Jump_069_7104:
	and  b                                           ; $7104: $a0
	inc  bc                                          ; $7105: $03
	ld   d, d                                        ; $7106: $52
	ld   e, c                                        ; $7107: $59
	ld   h, l                                        ; $7108: $65
	ld   [hl], h                                     ; $7109: $74
	dec  c                                           ; $710a: $0d
	ld   [bc], a                                     ; $710b: $02
	and  l                                           ; $710c: $a5
	ld   [bc], a                                     ; $710d: $02
	xor  d                                           ; $710e: $aa
	sub  b                                           ; $710f: $90
	ld   e, d                                        ; $7110: $5a
	and  c                                           ; $7111: $a1
	ld   a, [hl]                                     ; $7112: $7e
	ld   [hl], c                                     ; $7113: $71
	ld   [hl], h                                     ; $7114: $74
	ld   e, l                                        ; $7115: $5d
	ld   l, [hl]                                     ; $7116: $6e
	ld   h, e                                        ; $7117: $63
	ld   d, d                                        ; $7118: $52
	ld   a, e                                        ; $7119: $7b
	sbc  a                                           ; $711a: $9f
	dec  c                                           ; $711b: $0d
	nop                                              ; $711c: $00
	ld   a, [bc]                                     ; $711d: $0a
	ld   b, $a2                                      ; $711e: $06 $a2
	ld   [bc], a                                     ; $7120: $02
	inc  e                                           ; $7121: $1c
	ld   bc, $0404                                   ; $7122: $01 $04 $04
	ld   bc, $9e04                                   ; $7125: $01 $04 $9e
	ld   e, c                                        ; $7128: $59
	sub  a                                           ; $7129: $97
	ld   a, b                                        ; $712a: $78
	ld   d, d                                        ; $712b: $52
	ld   a, h                                        ; $712c: $7c
	ld   [hl], l                                     ; $712d: $75
	ld   h, a                                        ; $712e: $67
	ld   e, c                                        ; $712f: $59
	ld   sp, hl                                      ; $7130: $f9
	dec  c                                           ; $7131: $0d
	ld   h, c                                        ; $7132: $61
	ld   a, h                                        ; $7133: $7c
	inc  bc                                          ; $7134: $03
	ld   l, a                                        ; $7135: $6f
	ld   [bc], a                                     ; $7136: $02
	pop  bc                                          ; $7137: $c1
	ld   a, c                                        ; $7138: $79
	ld   a, b                                        ; $7139: $78
	ld   [hl], c                                     ; $713a: $71
	ld   [hl], h                                     ; $713b: $74
	ld   l, e                                        ; $713c: $6b
	sbc  d                                           ; $713d: $9a
	ld   [hl], l                                     ; $713e: $75
	ld   a, l                                        ; $713f: $7d
	dec  c                                           ; $7140: $0d
	dec  b                                           ; $7141: $05
	sub  [hl]                                        ; $7142: $96
	sbc  b                                           ; $7143: $98
	adc  h                                           ; $7144: $8c
	ld   h, a                                        ; $7145: $67
	ld   a, e                                        ; $7146: $7b
	sbc  a                                           ; $7147: $9f
	dec  c                                           ; $7148: $0d
	nop                                              ; $7149: $00
	ld   a, [bc]                                     ; $714a: $0a
	inc  e                                           ; $714b: $1c
	ld   bc, $0000                                   ; $714c: $01 $00 $00
	dec  e                                           ; $714f: $1d

Jump_069_7150:
	ld   b, b                                        ; $7150: $40
	ld   de, $1103                                   ; $7151: $11 $03 $11
	ld   bc, $2901                                   ; $7154: $01 $01 $29
	nop                                              ; $7157: $00
	ld   bc, $9075                                   ; $7158: $01 $75 $90
	adc  h                                           ; $715b: $8c
	ld   d, b                                        ; $715c: $50
	sbc  [hl]                                        ; $715d: $9e
	ld   h, c                                        ; $715e: $61
	ld   a, h                                        ; $715f: $7c
	dec  b                                           ; $7160: $05
	or   c                                           ; $7161: $b1
	ld   [bc], a                                     ; $7162: $02
	sub  [hl]                                        ; $7163: $96
	and  b                                           ; $7164: $a0
	inc  bc                                          ; $7165: $03
	ld   d, d                                        ; $7166: $52
	ld   e, c                                        ; $7167: $59
	ld   h, l                                        ; $7168: $65
	ld   [hl], h                                     ; $7169: $74
	dec  c                                           ; $716a: $0d
	ld   [bc], a                                     ; $716b: $02
	and  l                                           ; $716c: $a5
	ld   [bc], a                                     ; $716d: $02

Jump_069_716e:
	xor  d                                           ; $716e: $aa
	sub  b                                           ; $716f: $90
	ld   e, d                                        ; $7170: $5a
	and  c                                           ; $7171: $a1
	ld   a, [hl]                                     ; $7172: $7e
	ld   [hl], c                                     ; $7173: $71
	ld   [hl], h                                     ; $7174: $74
	ld   e, l                                        ; $7175: $5d
	ld   l, [hl]                                     ; $7176: $6e
	ld   h, e                                        ; $7177: $63
	ld   d, d                                        ; $7178: $52
	sbc  a                                           ; $7179: $9f
	dec  c                                           ; $717a: $0d
	nop                                              ; $717b: $00
	ld   a, [bc]                                     ; $717c: $0a
	ld   b, $a2                                      ; $717d: $06 $a2
	ld   [bc], a                                     ; $717f: $02
	ld   bc, $5490                                   ; $7180: $01 $90 $54
	ld   e, b                                        ; $7183: $58
	ld   l, e                                        ; $7184: $6b
	ld   d, d                                        ; $7185: $52
	ld   [hl], l                                     ; $7186: $75
	ld   h, a                                        ; $7187: $67
	ld   e, c                                        ; $7188: $59
	sub  a                                           ; $7189: $97
	sbc  [hl]                                        ; $718a: $9e
	dec  c                                           ; $718b: $0d
	adc  h                                           ; $718c: $8c
	ld   l, l                                        ; $718d: $6d
	inc  b                                           ; $718e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $718f: $cf
	inc  b                                           ; $7190: $04
	xor  d                                           ; $7191: $aa
	ld   a, c                                        ; $7192: $79
	ld   h, l                                        ; $7193: $65
	adc  h                                           ; $7194: $8c
	ld   h, l                                        ; $7195: $65
	sub  l                                           ; $7196: $95
	ld   d, h                                        ; $7197: $54
	sbc  a                                           ; $7198: $9f
	dec  c                                           ; $7199: $0d
	ld   e, b                                        ; $719a: $58
	sub  d                                           ; $719b: $92
	ld   h, a                                        ; $719c: $67
	adc  l                                           ; $719d: $8d
	ld   a, b                                        ; $719e: $78
	ld   h, e                                        ; $719f: $63
	ld   d, d                                        ; $71a0: $52
	rst  $38                                         ; $71a1: $ff
	rst  $38                                         ; $71a2: $ff
	dec  c                                           ; $71a3: $0d
	nop                                              ; $71a4: $00
	ld   a, [bc]                                     ; $71a5: $0a
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	ld   [bc], a                                     ; $71a8: $02
	rlca                                             ; $71a9: $07
	ld   [hl+], a                                    ; $71aa: $22
	nop                                              ; $71ab: $00
	inc  bc                                          ; $71ac: $03
	ld   [de], a                                     ; $71ad: $12
	ld   bc, $2265                                   ; $71ae: $01 $65 $22
	nop                                              ; $71b1: $00
	rlca                                             ; $71b2: $07
	ld   e, h                                        ; $71b3: $5c
	nop                                              ; $71b4: $00
	inc  bc                                          ; $71b5: $03
	ld   [de], a                                     ; $71b6: $12
	ld   bc, $2565                                   ; $71b7: $01 $65 $25
	inc  bc                                          ; $71ba: $03
	ld   [de], a                                     ; $71bb: $12
	ld   bc, $22af                                   ; $71bc: $01 $af $22
	inc  e                                           ; $71bf: $1c
	nop                                              ; $71c0: $00
	rlca                                             ; $71c1: $07
	xor  b                                           ; $71c2: $a8
	nop                                              ; $71c3: $00
	inc  bc                                          ; $71c4: $03
	ld   [de], a                                     ; $71c5: $12
	ld   bc, $25af                                   ; $71c6: $01 $af $25
	nop                                              ; $71c9: $00
	rrca                                             ; $71ca: $0f
	nop                                              ; $71cb: $00
	ld   bc, $6701                                   ; $71cc: $01 $01 $67
	adc  l                                           ; $71cf: $8d
	sbc  d                                           ; $71d0: $9a
	ld   h, e                                        ; $71d1: $63
	and  c                                           ; $71d2: $a1
	sbc  a                                           ; $71d3: $9f
	dec  c                                           ; $71d4: $0d
	nop                                              ; $71d5: $00
	ld   a, [bc]                                     ; $71d6: $0a
	inc  e                                           ; $71d7: $1c
	ld   [bc], a                                     ; $71d8: $02
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	ld   bc, $8c52                                   ; $71db: $01 $52 $8c
	sbc  [hl]                                        ; $71de: $9e
	inc  bc                                          ; $71df: $03
	ld   l, e                                        ; $71e0: $6b
	ld   e, d                                        ; $71e1: $5a
	inc  b                                           ; $71e2: $04
	sbc  c                                           ; $71e3: $99
	ld   l, c                                        ; $71e4: $69
	adc  h                                           ; $71e5: $8c
	ld   l, c                                        ; $71e6: $69
	and  c                                           ; $71e7: $a1
	ld   a, h                                        ; $71e8: $7c
	sbc  a                                           ; $71e9: $9f
	dec  c                                           ; $71ea: $0d
	inc  b                                           ; $71eb: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71ec: $cf
	inc  b                                           ; $71ed: $04
	xor  d                                           ; $71ee: $aa
	ld   a, c                                        ; $71ef: $79
	ld   h, l                                        ; $71f0: $65
	ld   [hl], h                                     ; $71f1: $74
	ld   e, l                                        ; $71f2: $5d
	ld   l, [hl]                                     ; $71f3: $6e
	ld   h, e                                        ; $71f4: $63
	ld   d, d                                        ; $71f5: $52
	ld   a, b                                        ; $71f6: $78
	sbc  a                                           ; $71f7: $9f
	dec  c                                           ; $71f8: $0d
	nop                                              ; $71f9: $00
	ld   a, [bc]                                     ; $71fa: $0a
	dec  c                                           ; $71fb: $0d
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	rrca                                             ; $71fe: $0f
	nop                                              ; $71ff: $00
	ld   bc, $1e09                                   ; $7200: $01 $09 $1e
	nop                                              ; $7203: $00
	inc  e                                           ; $7204: $1c
	ld   [bc], a                                     ; $7205: $02
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	ld   bc, $9750                                   ; $7208: $01 $50 $97
	sbc  [hl]                                        ; $720b: $9e
	ld   [$6300], sp                                 ; $720c: $08 $00 $63
	and  c                                           ; $720f: $a1
	dec  c                                           ; $7210: $0d
	nop                                              ; $7211: $00
	ld   a, [bc]                                     ; $7212: $0a
	rrca                                             ; $7213: $0f
	nop                                              ; $7214: $00
	ld   bc, $6701                                   ; $7215: $01 $01 $67
	adc  l                                           ; $7218: $8d
	sbc  d                                           ; $7219: $9a
	ld   h, e                                        ; $721a: $63
	and  c                                           ; $721b: $a1
	sbc  a                                           ; $721c: $9f
	dec  c                                           ; $721d: $0d
	ld   e, b                                        ; $721e: $58
	inc  b                                           ; $721f: $04
	ld   a, e                                        ; $7220: $7b
	sbc  d                                           ; $7221: $9a
	ld   h, e                                        ; $7222: $63
	adc  h                                           ; $7223: $8c
	ld   [hl], l                                     ; $7224: $75
	ld   h, a                                        ; $7225: $67
	sbc  a                                           ; $7226: $9f
	dec  c                                           ; $7227: $0d
	nop                                              ; $7228: $00
	ld   a, [bc]                                     ; $7229: $0a
	rrca                                             ; $722a: $0f
	ld   [bc], a                                     ; $722b: $02
	nop                                              ; $722c: $00
	ld   bc, $9502                                   ; $722d: $01 $02 $95
	ld   [bc], a                                     ; $7230: $02
	sub  e                                           ; $7231: $93
	sbc  b                                           ; $7232: $98
	ld   e, d                                        ; $7233: $5a
	and  c                                           ; $7234: $a1
	ld   a, [hl]                                     ; $7235: $7e
	sbc  b                                           ; $7236: $98
	ld   a, b                                        ; $7237: $78
	ld   h, e                                        ; $7238: $63
	ld   d, d                                        ; $7239: $52
	sbc  a                                           ; $723a: $9f
	dec  c                                           ; $723b: $0d
	ld   [hl], l                                     ; $723c: $75
	ld   a, l                                        ; $723d: $7d
	inc  bc                                          ; $723e: $03
	add  e                                           ; $723f: $83
	dec  b                                           ; $7240: $05
	dec  c                                           ; $7241: $0d
	rst  $38                                         ; $7242: $ff
	rst  $38                                         ; $7243: $ff
	dec  c                                           ; $7244: $0d
	nop                                              ; $7245: $00
	ld   a, [bc]                                     ; $7246: $0a
	dec  c                                           ; $7247: $0d
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	rrca                                             ; $724a: $0f
	nop                                              ; $724b: $00
	ld   bc, $1e09                                   ; $724c: $01 $09 $1e
	nop                                              ; $724f: $00
	inc  e                                           ; $7250: $1c
	ld   [bc], a                                     ; $7251: $02
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	ld   bc, $9750                                   ; $7254: $01 $50 $97
	sbc  [hl]                                        ; $7257: $9e
	ld   [$6300], sp                                 ; $7258: $08 $00 $63
	and  c                                           ; $725b: $a1
	sbc  a                                           ; $725c: $9f
	dec  c                                           ; $725d: $0d
	ld   [bc], a                                     ; $725e: $02
	sub  l                                           ; $725f: $95
	ld   [bc], a                                     ; $7260: $02
	sub  e                                           ; $7261: $93
	sbc  b                                           ; $7262: $98
	ld   h, d                                        ; $7263: $62
	ld   e, l                                        ; $7264: $5d
	sbc  e                                           ; $7265: $9b
	ld   d, h                                        ; $7266: $54
	ld   h, e                                        ; $7267: $63
	adc  h                                           ; $7268: $8c
	sbc  a                                           ; $7269: $9f
	dec  c                                           ; $726a: $0d
	nop                                              ; $726b: $00
	ld   a, [bc]                                     ; $726c: $0a
	rrca                                             ; $726d: $0f
	nop                                              ; $726e: $00
	ld   bc, $6701                                   ; $726f: $01 $01 $67
	adc  l                                           ; $7272: $8d
	sbc  d                                           ; $7273: $9a
	ld   h, e                                        ; $7274: $63
	and  c                                           ; $7275: $a1
	sbc  a                                           ; $7276: $9f
	dec  c                                           ; $7277: $0d
	ld   h, c                                        ; $7278: $61

Jump_069_7279:
	and  c                                           ; $7279: $a1
	ld   a, b                                        ; $727a: $78
	sbc  [hl]                                        ; $727b: $9e
	inc  b                                           ; $727c: $04
	rst  $28                                         ; $727d: $ef
	ld   e, b                                        ; $727e: $58
	ld   l, e                                        ; $727f: $6b
	ld   e, l                                        ; $7280: $5d
	ld   a, c                                        ; $7281: $79
	dec  c                                           ; $7282: $0d
	ld   [hl], a                                     ; $7283: $77
	ld   d, h                                        ; $7284: $54
	ld   h, l                                        ; $7285: $65
	ld   l, l                                        ; $7286: $6d
	and  c                                           ; $7287: $a1
	ld   [hl], l                                     ; $7288: $75
	ld   h, a                                        ; $7289: $67
	ld   e, c                                        ; $728a: $59
	ld   sp, hl                                      ; $728b: $f9
	dec  c                                           ; $728c: $0d
	nop                                              ; $728d: $00
	ld   a, [bc]                                     ; $728e: $0a
	inc  e                                           ; $728f: $1c
	ld   [bc], a                                     ; $7290: $02
	inc  b                                           ; $7291: $04
	inc  b                                           ; $7292: $04
	ld   bc, $a178                                   ; $7293: $01 $78 $a1
	ld   l, [hl]                                     ; $7296: $6e
	ld   e, c                                        ; $7297: $59
	inc  b                                           ; $7298: $04
	adc  $9a                                         ; $7299: $ce $9a
	ld   a, b                                        ; $729b: $78
	ld   e, l                                        ; $729c: $5d
	ld   [hl], h                                     ; $729d: $74
	rst  $38                                         ; $729e: $ff
	rst  $38                                         ; $729f: $ff
	dec  c                                           ; $72a0: $0d
	ld   e, b                                        ; $72a1: $58
	inc  bc                                          ; $72a2: $03
	sub  [hl]                                        ; $72a3: $96
	inc  b                                           ; $72a4: $04
	sbc  a                                           ; $72a5: $9f
	ld   h, l                                        ; $72a6: $65
	ld   [hl], h                                     ; $72a7: $74
	ld   l, l                                        ; $72a8: $6d
	ld   a, h                                        ; $72a9: $7c
	ld   [hl], l                                     ; $72aa: $75
	ld   h, a                                        ; $72ab: $67
	sbc  l                                           ; $72ac: $9d
	sbc  a                                           ; $72ad: $9f
	dec  c                                           ; $72ae: $0d
	nop                                              ; $72af: $00
	inc  e                                           ; $72b0: $1c
	ld   [bc], a                                     ; $72b1: $02
	ld   bc, $0101                                   ; $72b2: $01 $01 $01
	ld   l, e                                        ; $72b5: $6b
	sbc  d                                           ; $72b6: $9a
	ld   h, [hl]                                     ; $72b7: $66
	sub  c                                           ; $72b8: $91
	sbc  [hl]                                        ; $72b9: $9e
	ld   e, b                                        ; $72ba: $58
	sub  d                                           ; $72bb: $92
	ld   h, a                                        ; $72bc: $67
	adc  l                                           ; $72bd: $8d
	ld   a, b                                        ; $72be: $78
	ld   h, e                                        ; $72bf: $63
	ld   d, d                                        ; $72c0: $52
	sbc  a                                           ; $72c1: $9f
	dec  c                                           ; $72c2: $0d
	nop                                              ; $72c3: $00
	ld   a, [bc]                                     ; $72c4: $0a
	dec  c                                           ; $72c5: $0d
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	rrca                                             ; $72c8: $0f
	nop                                              ; $72c9: $00
	ld   bc, $1e09                                   ; $72ca: $01 $09 $1e
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	ld   [bc], a                                     ; $72cf: $02
	rlca                                             ; $72d0: $07
	ld   [hl+], a                                    ; $72d1: $22
	nop                                              ; $72d2: $00
	inc  bc                                          ; $72d3: $03
	ld   de, $6501                                   ; $72d4: $11 $01 $65
	ld   [hl+], a                                    ; $72d7: $22
	nop                                              ; $72d8: $00
	rlca                                             ; $72d9: $07
	ld   d, e                                        ; $72da: $53
	nop                                              ; $72db: $00
	inc  bc                                          ; $72dc: $03
	ld   de, $6501                                   ; $72dd: $11 $01 $65
	dec  h                                           ; $72e0: $25
	inc  bc                                          ; $72e1: $03
	ld   de, $af01                                   ; $72e2: $11 $01 $af
	ld   [hl+], a                                    ; $72e5: $22
	inc  e                                           ; $72e6: $1c
	nop                                              ; $72e7: $00
	rlca                                             ; $72e8: $07
	sbc  l                                           ; $72e9: $9d
	nop                                              ; $72ea: $00
	inc  bc                                          ; $72eb: $03
	ld   de, $af01                                   ; $72ec: $11 $01 $af
	dec  h                                           ; $72ef: $25
	nop                                              ; $72f0: $00
	rrca                                             ; $72f1: $0f
	nop                                              ; $72f2: $00
	ld   bc, $6301                                   ; $72f3: $01 $01 $63
	ld   e, l                                        ; $72f6: $5d
	sub  a                                           ; $72f7: $97
	ld   h, e                                        ; $72f8: $63
	and  c                                           ; $72f9: $a1
	sbc  a                                           ; $72fa: $9f
	dec  c                                           ; $72fb: $0d
	nop                                              ; $72fc: $00
	ld   a, [bc]                                     ; $72fd: $0a
	inc  e                                           ; $72fe: $1c
	ld   bc, $0000                                   ; $72ff: $01 $00 $00
	ld   bc, $8f62                                   ; $7302: $01 $62 $8f
	and  c                                           ; $7305: $a1
	ld   a, b                                        ; $7306: $78
	ld   h, e                                        ; $7307: $63
	ld   d, d                                        ; $7308: $52
	sbc  a                                           ; $7309: $9f
	dec  c                                           ; $730a: $0d
	ld   d, d                                        ; $730b: $52
	adc  h                                           ; $730c: $8c
	dec  b                                           ; $730d: $05
	jr   z, jr_069_7362                              ; $730e: $28 $52

	ld   [hl], l                                     ; $7310: $75
	sbc  c                                           ; $7311: $99
	and  c                                           ; $7312: $a1
	ld   [hl], l                                     ; $7313: $75
	ld   h, a                                        ; $7314: $67
	sbc  a                                           ; $7315: $9f
	dec  c                                           ; $7316: $0d
	nop                                              ; $7317: $00
	ld   a, [bc]                                     ; $7318: $0a
	dec  c                                           ; $7319: $0d
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	rrca                                             ; $731c: $0f
	nop                                              ; $731d: $00
	ld   bc, $1e09                                   ; $731e: $01 $09 $1e
	nop                                              ; $7321: $00
	inc  e                                           ; $7322: $1c
	ld   bc, $0000                                   ; $7323: $01 $00 $00
	ld   bc, $9750                                   ; $7326: $01 $50 $97
	sbc  [hl]                                        ; $7329: $9e
	ld   [$6300], sp                                 ; $732a: $08 $00 $63
	and  c                                           ; $732d: $a1
	dec  c                                           ; $732e: $0d
	nop                                              ; $732f: $00
	ld   a, [bc]                                     ; $7330: $0a
	rrca                                             ; $7331: $0f
	nop                                              ; $7332: $00
	ld   bc, $6301                                   ; $7333: $01 $01 $63
	ld   e, l                                        ; $7336: $5d
	sub  a                                           ; $7337: $97
	ld   h, e                                        ; $7338: $63
	and  c                                           ; $7339: $a1
	sbc  a                                           ; $733a: $9f
	dec  c                                           ; $733b: $0d
	ld   e, b                                        ; $733c: $58
	inc  b                                           ; $733d: $04
	ld   a, e                                        ; $733e: $7b
	sbc  d                                           ; $733f: $9a
	ld   h, e                                        ; $7340: $63
	adc  h                                           ; $7341: $8c
	ld   [hl], l                                     ; $7342: $75
	ld   h, a                                        ; $7343: $67
	sbc  a                                           ; $7344: $9f
	dec  c                                           ; $7345: $0d
	nop                                              ; $7346: $00
	ld   a, [bc]                                     ; $7347: $0a
	rrca                                             ; $7348: $0f
	ld   bc, $0100                                   ; $7349: $01 $00 $01
	ld   [bc], a                                     ; $734c: $02
	sub  l                                           ; $734d: $95
	ld   [bc], a                                     ; $734e: $02
	sub  e                                           ; $734f: $93
	sbc  b                                           ; $7350: $98
	ld   h, d                                        ; $7351: $62
	ld   e, l                                        ; $7352: $5d
	sbc  e                                           ; $7353: $9b
	ld   d, h                                        ; $7354: $54
	ld   h, e                                        ; $7355: $63
	adc  h                                           ; $7356: $8c
	ld   [hl], l                                     ; $7357: $75
	ld   h, a                                        ; $7358: $67
	sbc  a                                           ; $7359: $9f
	dec  c                                           ; $735a: $0d
	ld   l, e                                        ; $735b: $6b
	sbc  d                                           ; $735c: $9a
	ld   [hl], l                                     ; $735d: $75
	ld   a, l                                        ; $735e: $7d
	sbc  a                                           ; $735f: $9f
	dec  c                                           ; $7360: $0d
	nop                                              ; $7361: $00

jr_069_7362:
	ld   a, [bc]                                     ; $7362: $0a
	dec  c                                           ; $7363: $0d
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	rrca                                             ; $7366: $0f
	nop                                              ; $7367: $00
	ld   bc, $1e09                                   ; $7368: $01 $09 $1e
	nop                                              ; $736b: $00
	inc  e                                           ; $736c: $1c
	ld   bc, $0000                                   ; $736d: $01 $00 $00
	ld   bc, $9750                                   ; $7370: $01 $50 $97
	sbc  [hl]                                        ; $7373: $9e
	ld   [$6300], sp                                 ; $7374: $08 $00 $63
	and  c                                           ; $7377: $a1
	sbc  a                                           ; $7378: $9f
	dec  c                                           ; $7379: $0d
	ld   [bc], a                                     ; $737a: $02
	sub  l                                           ; $737b: $95
	ld   [bc], a                                     ; $737c: $02
	sub  e                                           ; $737d: $93
	sbc  b                                           ; $737e: $98
	ld   h, d                                        ; $737f: $62
	ld   e, l                                        ; $7380: $5d
	sbc  e                                           ; $7381: $9b
	ld   d, h                                        ; $7382: $54
	ld   h, e                                        ; $7383: $63
	adc  h                                           ; $7384: $8c
	ld   [hl], l                                     ; $7385: $75
	ld   h, a                                        ; $7386: $67
	sbc  a                                           ; $7387: $9f
	dec  c                                           ; $7388: $0d
	nop                                              ; $7389: $00
	ld   a, [bc]                                     ; $738a: $0a
	rrca                                             ; $738b: $0f
	nop                                              ; $738c: $00
	ld   bc, $6301                                   ; $738d: $01 $01 $63
	ld   e, l                                        ; $7390: $5d
	sub  a                                           ; $7391: $97
	ld   h, e                                        ; $7392: $63
	and  c                                           ; $7393: $a1
	sbc  a                                           ; $7394: $9f
	dec  c                                           ; $7395: $0d
	ld   h, c                                        ; $7396: $61
	and  c                                           ; $7397: $a1
	ld   a, b                                        ; $7398: $78
	sbc  [hl]                                        ; $7399: $9e
	inc  b                                           ; $739a: $04
	rst  $28                                         ; $739b: $ef
	ld   e, b                                        ; $739c: $58
	ld   l, e                                        ; $739d: $6b
	ld   e, l                                        ; $739e: $5d
	ld   a, c                                        ; $739f: $79
	dec  c                                           ; $73a0: $0d
	ld   [hl], a                                     ; $73a1: $77
	ld   d, h                                        ; $73a2: $54
	ld   h, l                                        ; $73a3: $65
	ld   l, l                                        ; $73a4: $6d
	and  c                                           ; $73a5: $a1
	ld   [hl], l                                     ; $73a6: $75
	ld   h, a                                        ; $73a7: $67
	ld   e, c                                        ; $73a8: $59
	ld   sp, hl                                      ; $73a9: $f9
	dec  c                                           ; $73aa: $0d
	nop                                              ; $73ab: $00
	ld   a, [bc]                                     ; $73ac: $0a
	inc  e                                           ; $73ad: $1c
	ld   bc, $0101                                   ; $73ae: $01 $01 $01
	ld   bc, $cf02                                   ; $73b1: $01 $02 $cf
	dec  b                                           ; $73b4: $05
	ld   a, [de]                                     ; $73b5: $1a
	halt                                             ; $73b6: $76
	ld   [bc], a                                     ; $73b7: $02
	sbc  b                                           ; $73b8: $98
	ld   [bc], a                                     ; $73b9: $02
	ld   sp, hl                                      ; $73ba: $f9
	ld   h, l                                        ; $73bb: $65
	ld   [hl], h                                     ; $73bc: $74
	ld   l, l                                        ; $73bd: $6d
	and  c                                           ; $73be: $a1
	ld   [hl], l                                     ; $73bf: $75
	ld   h, a                                        ; $73c0: $67
	sbc  a                                           ; $73c1: $9f
	dec  c                                           ; $73c2: $0d
	ld   l, e                                        ; $73c3: $6b
	sbc  d                                           ; $73c4: $9a
	ld   h, [hl]                                     ; $73c5: $66
	sub  c                                           ; $73c6: $91
	sbc  [hl]                                        ; $73c7: $9e
	ld   e, b                                        ; $73c8: $58
	sub  d                                           ; $73c9: $92
	ld   h, a                                        ; $73ca: $67
	adc  l                                           ; $73cb: $8d
	ld   a, b                                        ; $73cc: $78
	ld   h, e                                        ; $73cd: $63
	ld   d, d                                        ; $73ce: $52
	sbc  a                                           ; $73cf: $9f
	dec  c                                           ; $73d0: $0d
	nop                                              ; $73d1: $00
	ld   a, [bc]                                     ; $73d2: $0a
	dec  c                                           ; $73d3: $0d
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	rrca                                             ; $73d6: $0f
	nop                                              ; $73d7: $00
	ld   bc, $1e09                                   ; $73d8: $01 $09 $1e
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	ld   [bc], a                                     ; $73dd: $02
	rlca                                             ; $73de: $07
	ld   [hl+], a                                    ; $73df: $22
	nop                                              ; $73e0: $00
	inc  bc                                          ; $73e1: $03
	inc  de                                          ; $73e2: $13
	ld   bc, $2265                                   ; $73e3: $01 $65 $22
	nop                                              ; $73e6: $00
	rlca                                             ; $73e7: $07
	ld   d, e                                        ; $73e8: $53
	nop                                              ; $73e9: $00
	inc  bc                                          ; $73ea: $03
	inc  de                                          ; $73eb: $13
	ld   bc, $2566                                   ; $73ec: $01 $66 $25
	inc  bc                                          ; $73ef: $03
	inc  de                                          ; $73f0: $13
	ld   bc, $22af                                   ; $73f1: $01 $af $22
	inc  e                                           ; $73f4: $1c
	nop                                              ; $73f5: $00
	rlca                                             ; $73f6: $07
	sbc  c                                           ; $73f7: $99
	nop                                              ; $73f8: $00
	inc  bc                                          ; $73f9: $03
	inc  de                                          ; $73fa: $13
	ld   bc, $25af                                   ; $73fb: $01 $af $25
	nop                                              ; $73fe: $00
	rrca                                             ; $73ff: $0f
	nop                                              ; $7400: $00
	ld   bc, $df01                                   ; $7401: $01 $01 $df
	db   $ec                                         ; $7404: $ec
	and  e                                           ; $7405: $a3
	ld   h, e                                        ; $7406: $63
	and  c                                           ; $7407: $a1
	sbc  a                                           ; $7408: $9f
	dec  c                                           ; $7409: $0d
	nop                                              ; $740a: $00
	ld   a, [bc]                                     ; $740b: $0a
	inc  e                                           ; $740c: $1c
	inc  bc                                          ; $740d: $03
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	ld   bc, $8c52                                   ; $7410: $01 $52 $8c
	dec  b                                           ; $7413: $05
	jr   z, jr_069_7468                              ; $7414: $28 $52

	ld   [hl], l                                     ; $7416: $75
	sbc  c                                           ; $7417: $99
	ld   a, h                                        ; $7418: $7c
	sbc  a                                           ; $7419: $9f
	dec  c                                           ; $741a: $0d
	adc  h                                           ; $741b: $8c
	ld   l, l                                        ; $741c: $6d
	sbc  [hl]                                        ; $741d: $9e
	inc  b                                           ; $741e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $741f: $cf
	inc  b                                           ; $7420: $04
	xor  d                                           ; $7421: $aa
	ld   a, e                                        ; $7422: $7b
	sbc  a                                           ; $7423: $9f
	dec  c                                           ; $7424: $0d
	nop                                              ; $7425: $00
	ld   a, [bc]                                     ; $7426: $0a
	dec  c                                           ; $7427: $0d
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	rrca                                             ; $742a: $0f
	nop                                              ; $742b: $00
	ld   bc, $1e09                                   ; $742c: $01 $09 $1e
	nop                                              ; $742f: $00
	inc  e                                           ; $7430: $1c
	inc  bc                                          ; $7431: $03
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	ld   bc, $0008                                   ; $7434: $01 $08 $00
	ld   e, l                                        ; $7437: $5d
	and  c                                           ; $7438: $a1
	sbc  a                                           ; $7439: $9f
	dec  c                                           ; $743a: $0d
	nop                                              ; $743b: $00
	ld   a, [bc]                                     ; $743c: $0a
	rrca                                             ; $743d: $0f
	nop                                              ; $743e: $00
	ld   bc, $df01                                   ; $743f: $01 $01 $df
	db   $ec                                         ; $7442: $ec
	and  e                                           ; $7443: $a3
	ld   h, e                                        ; $7444: $63
	and  c                                           ; $7445: $a1
	sbc  a                                           ; $7446: $9f
	dec  c                                           ; $7447: $0d
	ld   e, b                                        ; $7448: $58
	inc  b                                           ; $7449: $04
	ld   a, e                                        ; $744a: $7b
	sbc  d                                           ; $744b: $9a
	ld   h, e                                        ; $744c: $63
	adc  h                                           ; $744d: $8c
	ld   [hl], l                                     ; $744e: $75
	ld   h, a                                        ; $744f: $67
	sbc  a                                           ; $7450: $9f
	dec  c                                           ; $7451: $0d
	nop                                              ; $7452: $00
	ld   a, [bc]                                     ; $7453: $0a
	rrca                                             ; $7454: $0f
	inc  bc                                          ; $7455: $03
	nop                                              ; $7456: $00
	ld   bc, $9502                                   ; $7457: $01 $02 $95
	ld   [bc], a                                     ; $745a: $02
	sub  e                                           ; $745b: $93
	sbc  b                                           ; $745c: $98
	ld   e, d                                        ; $745d: $5a
	and  c                                           ; $745e: $a1
	ld   a, [hl]                                     ; $745f: $7e
	sbc  c                                           ; $7460: $99
	ld   a, h                                        ; $7461: $7c
	sub  [hl]                                        ; $7462: $96
	sbc  a                                           ; $7463: $9f
	dec  c                                           ; $7464: $0d

Call_069_7465:
Jump_069_7465:
	ld   h, [hl]                                     ; $7465: $66
	sub  c                                           ; $7466: $91
	ld   d, b                                        ; $7467: $50

jr_069_7468:
	ld   a, e                                        ; $7468: $7b
	sbc  a                                           ; $7469: $9f
	dec  c                                           ; $746a: $0d
	nop                                              ; $746b: $00
	ld   a, [bc]                                     ; $746c: $0a
	dec  c                                           ; $746d: $0d
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	rrca                                             ; $7470: $0f
	nop                                              ; $7471: $00
	ld   bc, $1e09                                   ; $7472: $01 $09 $1e
	nop                                              ; $7475: $00
	inc  e                                           ; $7476: $1c
	inc  bc                                          ; $7477: $03
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	ld   bc, $9750                                   ; $747a: $01 $50 $97
	sbc  [hl]                                        ; $747d: $9e
	ld   [$5d00], sp                                 ; $747e: $08 $00 $5d
	and  c                                           ; $7481: $a1
	sbc  a                                           ; $7482: $9f
	dec  c                                           ; $7483: $0d
	ld   [bc], a                                     ; $7484: $02
	sub  l                                           ; $7485: $95
	ld   [bc], a                                     ; $7486: $02
	sub  e                                           ; $7487: $93
	sbc  b                                           ; $7488: $98
	ld   h, d                                        ; $7489: $62
	ld   e, l                                        ; $748a: $5d
	sbc  e                                           ; $748b: $9b
	ld   d, h                                        ; $748c: $54
	ld   h, e                                        ; $748d: $63
	adc  h                                           ; $748e: $8c
	sbc  a                                           ; $748f: $9f
	dec  c                                           ; $7490: $0d
	nop                                              ; $7491: $00
	ld   a, [bc]                                     ; $7492: $0a
	rrca                                             ; $7493: $0f
	nop                                              ; $7494: $00
	ld   bc, $df01                                   ; $7495: $01 $01 $df
	db   $ec                                         ; $7498: $ec
	and  e                                           ; $7499: $a3
	ld   h, e                                        ; $749a: $63
	and  c                                           ; $749b: $a1
	sbc  a                                           ; $749c: $9f
	dec  c                                           ; $749d: $0d
	ld   h, c                                        ; $749e: $61
	and  c                                           ; $749f: $a1
	ld   a, b                                        ; $74a0: $78
	sbc  [hl]                                        ; $74a1: $9e
	inc  b                                           ; $74a2: $04
	rst  $28                                         ; $74a3: $ef
	ld   e, b                                        ; $74a4: $58
	ld   l, e                                        ; $74a5: $6b
	ld   e, l                                        ; $74a6: $5d
	ld   a, c                                        ; $74a7: $79
	dec  c                                           ; $74a8: $0d
	ld   [hl], a                                     ; $74a9: $77
	ld   d, h                                        ; $74aa: $54
	ld   h, l                                        ; $74ab: $65
	ld   l, l                                        ; $74ac: $6d
	and  c                                           ; $74ad: $a1
	ld   [hl], l                                     ; $74ae: $75
	ld   h, a                                        ; $74af: $67
	ld   e, c                                        ; $74b0: $59
	ld   sp, hl                                      ; $74b1: $f9
	dec  c                                           ; $74b2: $0d
	nop                                              ; $74b3: $00
	ld   a, [bc]                                     ; $74b4: $0a
	inc  e                                           ; $74b5: $1c
	inc  bc                                          ; $74b6: $03
	ld   bc, $0101                                   ; $74b7: $01 $01 $01
	inc  b                                           ; $74ba: $04
	adc  $9a                                         ; $74bb: $ce $9a
	ld   a, b                                        ; $74bd: $78
	ld   e, l                                        ; $74be: $5d
	ld   [hl], h                                     ; $74bf: $74
	rst  $38                                         ; $74c0: $ff
	rst  $38                                         ; $74c1: $ff
	dec  c                                           ; $74c2: $0d
	inc  bc                                          ; $74c3: $03
	ld   d, l                                        ; $74c4: $55
	ld   [bc], a                                     ; $74c5: $02
	ld   e, c                                        ; $74c6: $59
	ld   [hl], l                                     ; $74c7: $75
	inc  b                                           ; $74c8: $04
	adc  a                                           ; $74c9: $8f
	and  b                                           ; $74ca: $a0
	inc  b                                           ; $74cb: $04
	ld   de, $75a1                                   ; $74cc: $11 $a1 $75
	ld   d, d                                        ; $74cf: $52
	ld   l, l                                        ; $74d0: $6d
	ld   a, h                                        ; $74d1: $7c
	sub  [hl]                                        ; $74d2: $96
	sbc  a                                           ; $74d3: $9f
	dec  c                                           ; $74d4: $0d
	nop                                              ; $74d5: $00
	inc  e                                           ; $74d6: $1c
	inc  bc                                          ; $74d7: $03
	inc  bc                                          ; $74d8: $03
	inc  bc                                          ; $74d9: $03
	ld   bc, $9a6b                                   ; $74da: $01 $6b $9a
	ld   h, [hl]                                     ; $74dd: $66
	sub  c                                           ; $74de: $91
	sbc  [hl]                                        ; $74df: $9e
	ld   e, b                                        ; $74e0: $58
	sub  d                                           ; $74e1: $92
	ld   h, a                                        ; $74e2: $67
	adc  l                                           ; $74e3: $8d
	sbc  a                                           ; $74e4: $9f
	dec  c                                           ; $74e5: $0d
	nop                                              ; $74e6: $00
	ld   a, [bc]                                     ; $74e7: $0a
	dec  c                                           ; $74e8: $0d
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	rrca                                             ; $74eb: $0f
	nop                                              ; $74ec: $00
	ld   bc, $1e09                                   ; $74ed: $01 $09 $1e
	nop                                              ; $74f0: $00
	nop                                              ; $74f1: $00
	ld   [bc], a                                     ; $74f2: $02
	rlca                                             ; $74f3: $07
	ld   [hl+], a                                    ; $74f4: $22
	nop                                              ; $74f5: $00
	inc  bc                                          ; $74f6: $03
	inc  d                                           ; $74f7: $14
	ld   bc, $2265                                   ; $74f8: $01 $65 $22
	nop                                              ; $74fb: $00
	rlca                                             ; $74fc: $07
	ld   d, [hl]                                     ; $74fd: $56
	nop                                              ; $74fe: $00
	inc  bc                                          ; $74ff: $03
	inc  d                                           ; $7500: $14
	ld   bc, $2566                                   ; $7501: $01 $66 $25
	inc  bc                                          ; $7504: $03
	inc  d                                           ; $7505: $14
	ld   bc, $22af                                   ; $7506: $01 $af $22
	inc  e                                           ; $7509: $1c
	nop                                              ; $750a: $00
	rlca                                             ; $750b: $07
	sbc  e                                           ; $750c: $9b
	nop                                              ; $750d: $00
	inc  bc                                          ; $750e: $03
	inc  d                                           ; $750f: $14
	ld   bc, $25af                                   ; $7510: $01 $af $25
	nop                                              ; $7513: $00
	rrca                                             ; $7514: $0f
	nop                                              ; $7515: $00
	ld   bc, $9201                                   ; $7516: $01 $01 $92
	ld   d, b                                        ; $7519: $50
	sbc  [hl]                                        ; $751a: $9e
	and  e                                           ; $751b: $a3
	and  l                                           ; $751c: $a5
	db   $ec                                         ; $751d: $ec
	cp   d                                           ; $751e: $ba
	sbc  a                                           ; $751f: $9f
	dec  c                                           ; $7520: $0d
	nop                                              ; $7521: $00
	ld   a, [bc]                                     ; $7522: $0a
	inc  e                                           ; $7523: $1c
	inc  b                                           ; $7524: $04
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	ld   bc, $a5a3                                   ; $7527: $01 $a3 $a5
	db   $ec                                         ; $752a: $ec
	cp   d                                           ; $752b: $ba
	sbc  [hl]                                        ; $752c: $9e
	ld   d, d                                        ; $752d: $52
	ld   l, e                                        ; $752e: $6b
	ld   e, d                                        ; $752f: $5a
	ld   h, l                                        ; $7530: $65
	ld   d, d                                        ; $7531: $52
	ld   a, h                                        ; $7532: $7c
	sbc  a                                           ; $7533: $9f
	dec  c                                           ; $7534: $0d
	adc  h                                           ; $7535: $8c
	ld   l, l                                        ; $7536: $6d
	ld   d, b                                        ; $7537: $50
	ld   h, l                                        ; $7538: $65
	ld   l, l                                        ; $7539: $6d
	ld   a, e                                        ; $753a: $7b
	sbc  a                                           ; $753b: $9f
	dec  c                                           ; $753c: $0d
	nop                                              ; $753d: $00
	ld   a, [bc]                                     ; $753e: $0a
	dec  c                                           ; $753f: $0d
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	rrca                                             ; $7542: $0f
	nop                                              ; $7543: $00
	ld   bc, $1e09                                   ; $7544: $01 $09 $1e
	nop                                              ; $7547: $00
	inc  e                                           ; $7548: $1c
	inc  b                                           ; $7549: $04
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	ld   bc, $9e50                                   ; $754c: $01 $50 $9e
	ld   l, a                                        ; $754f: $6f
	ld   d, d                                        ; $7550: $52
	ld   [bc], a                                     ; $7551: $02
	inc  de                                          ; $7552: $13
	ld   l, a                                        ; $7553: $6f
	sub  c                                           ; $7554: $91
	and  c                                           ; $7555: $a1
	sbc  a                                           ; $7556: $9f
	dec  c                                           ; $7557: $0d
	nop                                              ; $7558: $00
	ld   a, [bc]                                     ; $7559: $0a
	rrca                                             ; $755a: $0f
	nop                                              ; $755b: $00
	ld   bc, $9201                                   ; $755c: $01 $01 $92
	ld   d, b                                        ; $755f: $50
	sbc  [hl]                                        ; $7560: $9e
	and  e                                           ; $7561: $a3
	and  l                                           ; $7562: $a5
	db   $ec                                         ; $7563: $ec
	cp   d                                           ; $7564: $ba
	sbc  a                                           ; $7565: $9f
	dec  c                                           ; $7566: $0d
	nop                                              ; $7567: $00
	ld   a, [bc]                                     ; $7568: $0a
	rrca                                             ; $7569: $0f
	inc  b                                           ; $756a: $04
	nop                                              ; $756b: $00
	ld   bc, $8c8d                                   ; $756c: $01 $8d $8c
	sbc  l                                           ; $756f: $9d
	sbc  b                                           ; $7570: $98
	sbc  [hl]                                        ; $7571: $9e
	ld   e, d                                        ; $7572: $5a
	and  c                                           ; $7573: $a1
	ld   a, [hl]                                     ; $7574: $7e
	ld   [hl], c                                     ; $7575: $71
	ld   [hl], h                                     ; $7576: $74
	ld   a, e                                        ; $7577: $7b
	sbc  a                                           ; $7578: $9f
	dec  c                                           ; $7579: $0d
	adc  h                                           ; $757a: $8c
	ld   l, l                                        ; $757b: $6d
	ld   d, b                                        ; $757c: $50
	ld   h, l                                        ; $757d: $65
	ld   l, l                                        ; $757e: $6d
	ld   a, e                                        ; $757f: $7b
	sbc  a                                           ; $7580: $9f
	dec  c                                           ; $7581: $0d
	nop                                              ; $7582: $00
	ld   a, [bc]                                     ; $7583: $0a
	dec  c                                           ; $7584: $0d
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	rrca                                             ; $7587: $0f
	nop                                              ; $7588: $00
	ld   bc, $1e09                                   ; $7589: $01 $09 $1e
	nop                                              ; $758c: $00
	inc  e                                           ; $758d: $1c
	inc  b                                           ; $758e: $04
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	ld   bc, $9e50                                   ; $7591: $01 $50 $9e
	ld   l, a                                        ; $7594: $6f
	ld   d, d                                        ; $7595: $52
	ld   [bc], a                                     ; $7596: $02
	inc  de                                          ; $7597: $13
	ld   l, a                                        ; $7598: $6f
	sub  c                                           ; $7599: $91
	and  c                                           ; $759a: $a1
	sbc  a                                           ; $759b: $9f
	dec  c                                           ; $759c: $0d
	adc  l                                           ; $759d: $8d
	adc  h                                           ; $759e: $8c
	sbc  l                                           ; $759f: $9d
	sbc  b                                           ; $75a0: $98
	ld   h, d                                        ; $75a1: $62
	ld   e, l                                        ; $75a2: $5d
	sbc  e                                           ; $75a3: $9b
	ld   d, h                                        ; $75a4: $54
	ld   h, e                                        ; $75a5: $63
	adc  h                                           ; $75a6: $8c
	sbc  a                                           ; $75a7: $9f
	dec  c                                           ; $75a8: $0d
	nop                                              ; $75a9: $00
	ld   a, [bc]                                     ; $75aa: $0a
	rrca                                             ; $75ab: $0f
	nop                                              ; $75ac: $00
	ld   bc, $9201                                   ; $75ad: $01 $01 $92
	ld   d, b                                        ; $75b0: $50
	sbc  [hl]                                        ; $75b1: $9e
	and  e                                           ; $75b2: $a3
	and  l                                           ; $75b3: $a5
	db   $ec                                         ; $75b4: $ec
	cp   d                                           ; $75b5: $ba
	sbc  a                                           ; $75b6: $9f
	dec  c                                           ; $75b7: $0d
	ld   [hl], a                                     ; $75b8: $77

Jump_069_75b9:
	ld   d, h                                        ; $75b9: $54
	ld   h, l                                        ; $75ba: $65
	ld   l, l                                        ; $75bb: $6d
	ld   a, h                                        ; $75bc: $7c
	ld   sp, hl                                      ; $75bd: $f9
	db   $10                                         ; $75be: $10
	ld   h, c                                        ; $75bf: $61
	and  c                                           ; $75c0: $a1
	ld   a, b                                        ; $75c1: $78
	inc  bc                                          ; $75c2: $03
	ld   l, a                                        ; $75c3: $6f
	ld   [bc], a                                     ; $75c4: $02
	xor  c                                           ; $75c5: $a9
	ld   a, c                                        ; $75c6: $79
	sbc  a                                           ; $75c7: $9f
	dec  c                                           ; $75c8: $0d
	nop                                              ; $75c9: $00
	ld   a, [bc]                                     ; $75ca: $0a
	inc  e                                           ; $75cb: $1c
	inc  b                                           ; $75cc: $04
	dec  b                                           ; $75cd: $05
	dec  b                                           ; $75ce: $05
	ld   bc, $8e7b                                   ; $75cf: $01 $7b $8e
	sbc  d                                           ; $75d2: $9a
	ld   a, b                                        ; $75d3: $78
	ld   e, l                                        ; $75d4: $5d
	ld   [hl], h                                     ; $75d5: $74
	rst  $38                                         ; $75d6: $ff
	rst  $38                                         ; $75d7: $ff
	dec  c                                           ; $75d8: $0d
	nop                                              ; $75d9: $00
	inc  e                                           ; $75da: $1c
	inc  b                                           ; $75db: $04
	ld   bc, $0101                                   ; $75dc: $01 $01 $01
	cp   c                                           ; $75df: $b9
	push hl                                          ; $75e0: $e5
	push af                                          ; $75e1: $f5
	sbc  $fb                                         ; $75e2: $de $fb
	db   $ed                                         ; $75e4: $ed
	halt                                             ; $75e5: $76
	ld   e, b                                        ; $75e6: $58
	ld   a, l                                        ; $75e7: $7d
	ld   a, b                                        ; $75e8: $78
	ld   h, l                                        ; $75e9: $65
	dec  c                                           ; $75ea: $0d
	ld   h, l                                        ; $75eb: $65
	ld   [hl], h                                     ; $75ec: $74
	ld   l, l                                        ; $75ed: $6d
	ld   a, h                                        ; $75ee: $7c
	sbc  a                                           ; $75ef: $9f
	ld   h, [hl]                                     ; $75f0: $66
	sub  c                                           ; $75f1: $91
	sbc  [hl]                                        ; $75f2: $9e
	ld   e, b                                        ; $75f3: $58
	sub  d                                           ; $75f4: $92
	ld   h, a                                        ; $75f5: $67
	adc  l                                           ; $75f6: $8d
	sbc  a                                           ; $75f7: $9f
	dec  c                                           ; $75f8: $0d
	nop                                              ; $75f9: $00
	ld   a, [bc]                                     ; $75fa: $0a

Call_069_75fb:
	dec  c                                           ; $75fb: $0d
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	rrca                                             ; $75fe: $0f
	nop                                              ; $75ff: $00
	ld   bc, $1e09                                   ; $7600: $01 $09 $1e
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	ld   [bc], a                                     ; $7605: $02
	rlca                                             ; $7606: $07
	ld   [hl+], a                                    ; $7607: $22
	nop                                              ; $7608: $00
	inc  bc                                          ; $7609: $03
	ld   d, $01                                      ; $760a: $16 $01
	ld   h, l                                        ; $760c: $65
	inc  hl                                          ; $760d: $23
	nop                                              ; $760e: $00
	rlca                                             ; $760f: $07
	ld   e, [hl]                                     ; $7610: $5e
	nop                                              ; $7611: $00
	inc  bc                                          ; $7612: $03
	ld   d, $01                                      ; $7613: $16 $01
	ld   h, [hl]                                     ; $7615: $66
	dec  h                                           ; $7616: $25
	inc  bc                                          ; $7617: $03
	ld   d, $01                                      ; $7618: $16 $01
	xor  a                                           ; $761a: $af
	ld   [hl+], a                                    ; $761b: $22
	inc  e                                           ; $761c: $1c
	nop                                              ; $761d: $00
	rlca                                             ; $761e: $07
	and  l                                           ; $761f: $a5
	nop                                              ; $7620: $00
	inc  bc                                          ; $7621: $03
	ld   d, $01                                      ; $7622: $16 $01
	xor  a                                           ; $7624: $af
	dec  h                                           ; $7625: $25
	nop                                              ; $7626: $00
	rrca                                             ; $7627: $0f
	nop                                              ; $7628: $00
	ld   bc, $ac01                                   ; $7629: $01 $01 $ac
	push af                                          ; $762c: $f5
	bit  4, e                                        ; $762d: $cb $63
	and  c                                           ; $762f: $a1
	sbc  a                                           ; $7630: $9f
	dec  c                                           ; $7631: $0d
	nop                                              ; $7632: $00
	ld   a, [bc]                                     ; $7633: $0a
	inc  e                                           ; $7634: $1c
	ld   b, $00                                      ; $7635: $06 $00
	nop                                              ; $7637: $00
	ld   bc, $999d                                   ; $7638: $01 $9d $99
	ld   d, d                                        ; $763b: $52
	sbc  a                                           ; $763c: $9f
	ld   l, a                                        ; $763d: $6f
	sub  l                                           ; $763e: $95
	ld   d, d                                        ; $763f: $52
	halt                                             ; $7640: $76
	dec  b                                           ; $7641: $05
	jr   z, jr_069_76a0                              ; $7642: $28 $5c

	ld   a, h                                        ; $7644: $7c
	dec  c                                           ; $7645: $0d
	inc  b                                           ; $7646: $04
	di                                               ; $7647: $f3
	ld   e, d                                        ; $7648: $5a
	ld   d, b                                        ; $7649: $50
	sbc  c                                           ; $764a: $99
	and  c                                           ; $764b: $a1
	ld   l, [hl]                                     ; $764c: $6e
	sbc  a                                           ; $764d: $9f
	dec  c                                           ; $764e: $0d
	adc  h                                           ; $764f: $8c
	ld   l, l                                        ; $7650: $6d
	inc  b                                           ; $7651: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7652: $cf
	inc  b                                           ; $7653: $04
	xor  d                                           ; $7654: $aa
	ld   a, b                                        ; $7655: $78
	sbc  a                                           ; $7656: $9f
	dec  c                                           ; $7657: $0d
	nop                                              ; $7658: $00
	ld   a, [bc]                                     ; $7659: $0a
	dec  c                                           ; $765a: $0d
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	rrca                                             ; $765d: $0f
	nop                                              ; $765e: $00
	ld   bc, $1e09                                   ; $765f: $01 $09 $1e
	nop                                              ; $7662: $00
	inc  e                                           ; $7663: $1c
	ld   b, $00                                      ; $7664: $06 $00
	nop                                              ; $7666: $00
	ld   bc, $5496                                   ; $7667: $01 $96 $54
	sbc  [hl]                                        ; $766a: $9e
	ld   [$9f00], sp                                 ; $766b: $08 $00 $9f

Jump_069_766e:
	dec  c                                           ; $766e: $0d
	nop                                              ; $766f: $00
	ld   a, [bc]                                     ; $7670: $0a
	rrca                                             ; $7671: $0f
	nop                                              ; $7672: $00
	ld   bc, $ac01                                   ; $7673: $01 $01 $ac
	push af                                          ; $7676: $f5
	bit  4, e                                        ; $7677: $cb $63
	and  c                                           ; $7679: $a1
	sbc  a                                           ; $767a: $9f
	dec  c                                           ; $767b: $0d
	ld   e, b                                        ; $767c: $58
	inc  b                                           ; $767d: $04
	ld   a, e                                        ; $767e: $7b
	sbc  d                                           ; $767f: $9a
	ld   h, e                                        ; $7680: $63
	adc  h                                           ; $7681: $8c
	ld   [hl], l                                     ; $7682: $75
	ld   h, a                                        ; $7683: $67
	sbc  a                                           ; $7684: $9f
	dec  c                                           ; $7685: $0d
	nop                                              ; $7686: $00
	ld   a, [bc]                                     ; $7687: $0a
	rrca                                             ; $7688: $0f
	ld   b, $00                                      ; $7689: $06 $00
	ld   bc, $9502                                   ; $768b: $01 $02 $95
	ld   [bc], a                                     ; $768e: $02
	sub  e                                           ; $768f: $93
	sbc  b                                           ; $7690: $98
	sbc  [hl]                                        ; $7691: $9e
	ld   e, d                                        ; $7692: $5a
	and  c                                           ; $7693: $a1
	ld   a, [hl]                                     ; $7694: $7e
	sbc  d                                           ; $7695: $9a
	sub  [hl]                                        ; $7696: $96
	sbc  a                                           ; $7697: $9f
	dec  c                                           ; $7698: $0d
	ld   h, [hl]                                     ; $7699: $66
	sub  c                                           ; $769a: $91
	ld   d, b                                        ; $769b: $50
	ld   a, b                                        ; $769c: $78
	sbc  a                                           ; $769d: $9f
	dec  c                                           ; $769e: $0d
	nop                                              ; $769f: $00

jr_069_76a0:
	ld   a, [bc]                                     ; $76a0: $0a
	dec  c                                           ; $76a1: $0d
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	rrca                                             ; $76a4: $0f
	nop                                              ; $76a5: $00
	ld   bc, $1e09                                   ; $76a6: $01 $09 $1e
	nop                                              ; $76a9: $00
	inc  e                                           ; $76aa: $1c
	ld   b, $00                                      ; $76ab: $06 $00
	nop                                              ; $76ad: $00
	ld   bc, $5896                                   ; $76ae: $01 $96 $58
	sbc  [hl]                                        ; $76b1: $9e
	ld   [$9f00], sp                                 ; $76b2: $08 $00 $9f
	dec  c                                           ; $76b5: $0d
	ld   [bc], a                                     ; $76b6: $02
	sub  l                                           ; $76b7: $95
	ld   [bc], a                                     ; $76b8: $02
	sub  e                                           ; $76b9: $93
	sbc  b                                           ; $76ba: $98
	ld   h, d                                        ; $76bb: $62
	ld   e, l                                        ; $76bc: $5d
	sbc  e                                           ; $76bd: $9b
	ld   d, h                                        ; $76be: $54
	ld   h, e                                        ; $76bf: $63
	and  c                                           ; $76c0: $a1
	sbc  a                                           ; $76c1: $9f
	dec  c                                           ; $76c2: $0d
	nop                                              ; $76c3: $00
	ld   a, [bc]                                     ; $76c4: $0a
	rrca                                             ; $76c5: $0f
	nop                                              ; $76c6: $00
	ld   bc, $ac01                                   ; $76c7: $01 $01 $ac
	push af                                          ; $76ca: $f5
	bit  4, e                                        ; $76cb: $cb $63
	and  c                                           ; $76cd: $a1
	sbc  a                                           ; $76ce: $9f
	dec  c                                           ; $76cf: $0d
	ld   h, c                                        ; $76d0: $61
	and  c                                           ; $76d1: $a1
	ld   a, b                                        ; $76d2: $78
	sbc  [hl]                                        ; $76d3: $9e
	inc  b                                           ; $76d4: $04
	rst  $28                                         ; $76d5: $ef
	ld   e, b                                        ; $76d6: $58
	ld   l, e                                        ; $76d7: $6b
	ld   e, l                                        ; $76d8: $5d
	ld   a, c                                        ; $76d9: $79
	dec  c                                           ; $76da: $0d
	ld   [hl], a                                     ; $76db: $77
	ld   d, h                                        ; $76dc: $54
	ld   h, l                                        ; $76dd: $65
	ld   l, l                                        ; $76de: $6d
	and  c                                           ; $76df: $a1
	ld   [hl], l                                     ; $76e0: $75
	ld   h, a                                        ; $76e1: $67
	ld   e, c                                        ; $76e2: $59
	ld   sp, hl                                      ; $76e3: $f9
	dec  c                                           ; $76e4: $0d
	nop                                              ; $76e5: $00
	ld   a, [bc]                                     ; $76e6: $0a
	inc  e                                           ; $76e7: $1c
	ld   b, $04                                      ; $76e8: $06 $04
	inc  b                                           ; $76ea: $04
	ld   bc, $ce04                                   ; $76eb: $01 $04 $ce
	sbc  d                                           ; $76ee: $9a
	ld   a, b                                        ; $76ef: $78
	ld   e, l                                        ; $76f0: $5d
	ld   [hl], h                                     ; $76f1: $74
	ld   h, e                                        ; $76f2: $63
	rst  $38                                         ; $76f3: $ff
	rst  $38                                         ; $76f4: $ff
	dec  c                                           ; $76f5: $0d
	ld   [bc], a                                     ; $76f6: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f7: $cf
	dec  b                                           ; $76f8: $05
	ld   a, [de]                                     ; $76f9: $1a
	halt                                             ; $76fa: $76
	ld   [bc], a                                     ; $76fb: $02
	sbc  b                                           ; $76fc: $98
	ld   [bc], a                                     ; $76fd: $02
	ld   sp, hl                                      ; $76fe: $f9
	and  b                                           ; $76ff: $a0
	ld   h, l                                        ; $7700: $65
	ld   [hl], h                                     ; $7701: $74
	ld   l, l                                        ; $7702: $6d
	and  c                                           ; $7703: $a1
	ld   l, [hl]                                     ; $7704: $6e
	sbc  a                                           ; $7705: $9f
	dec  c                                           ; $7706: $0d
	nop                                              ; $7707: $00
	inc  e                                           ; $7708: $1c
	ld   b, $01                                      ; $7709: $06 $01
	ld   bc, $6b01                                   ; $770b: $01 $01 $6b
	sbc  d                                           ; $770e: $9a
	ld   h, [hl]                                     ; $770f: $66
	sub  c                                           ; $7710: $91
	sbc  [hl]                                        ; $7711: $9e
	ld   e, b                                        ; $7712: $58
	sub  d                                           ; $7713: $92
	ld   h, a                                        ; $7714: $67
	adc  l                                           ; $7715: $8d
	sbc  a                                           ; $7716: $9f
	dec  c                                           ; $7717: $0d
	nop                                              ; $7718: $00
	ld   a, [bc]                                     ; $7719: $0a
	dec  c                                           ; $771a: $0d
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	rrca                                             ; $771d: $0f
	nop                                              ; $771e: $00
	ld   bc, $1e09                                   ; $771f: $01 $09 $1e
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	ld   [bc], a                                     ; $7724: $02
	rlca                                             ; $7725: $07
	ld   [hl+], a                                    ; $7726: $22
	nop                                              ; $7727: $00
	inc  bc                                          ; $7728: $03
	dec  d                                           ; $7729: $15
	ld   bc, $2265                                   ; $772a: $01 $65 $22
	nop                                              ; $772d: $00
	rlca                                             ; $772e: $07
	ld   e, d                                        ; $772f: $5a
	nop                                              ; $7730: $00
	inc  bc                                          ; $7731: $03
	dec  d                                           ; $7732: $15
	ld   bc, $2566                                   ; $7733: $01 $66 $25
	inc  bc                                          ; $7736: $03
	dec  d                                           ; $7737: $15
	ld   bc, $22af                                   ; $7738: $01 $af $22
	inc  e                                           ; $773b: $1c
	nop                                              ; $773c: $00
	rlca                                             ; $773d: $07
	and  c                                           ; $773e: $a1
	nop                                              ; $773f: $00
	inc  bc                                          ; $7740: $03
	dec  d                                           ; $7741: $15
	ld   bc, $25af                                   ; $7742: $01 $af $25
	nop                                              ; $7745: $00
	rrca                                             ; $7746: $0f
	nop                                              ; $7747: $00
	ld   bc, $0201                                   ; $7748: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $774b: $cf
	dec  b                                           ; $774c: $05
	ld   a, [de]                                     ; $774d: $1a
	ld   h, e                                        ; $774e: $63
	and  c                                           ; $774f: $a1
	sbc  a                                           ; $7750: $9f
	dec  c                                           ; $7751: $0d
	nop                                              ; $7752: $00
	ld   a, [bc]                                     ; $7753: $0a
	inc  e                                           ; $7754: $1c
	dec  b                                           ; $7755: $05
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	ld   bc, $a502                                   ; $7758: $01 $02 $a5
	ld   l, a                                        ; $775b: $6f
	sub  l                                           ; $775c: $95
	ld   [hl], c                                     ; $775d: $71
	halt                                             ; $775e: $76
	sbc  [hl]                                        ; $775f: $9e
	inc  b                                           ; $7760: $04
	ld   c, $04                                      ; $7761: $0e $04
	adc  h                                           ; $7763: $8c
	ld   a, b                                        ; $7764: $78
	and  c                                           ; $7765: $a1
	sub  d                                           ; $7766: $92
	sbc  a                                           ; $7767: $9f
	dec  c                                           ; $7768: $0d
	ld   h, a                                        ; $7769: $67
	adc  h                                           ; $776a: $8c
	and  c                                           ; $776b: $a1
	ld   a, b                                        ; $776c: $78
	db   $fc                                         ; $776d: $fc
	sbc  a                                           ; $776e: $9f
	adc  c                                           ; $776f: $89
	ld   a, b                                        ; $7770: $78
	sbc  a                                           ; $7771: $9f
	dec  c                                           ; $7772: $0d
	nop                                              ; $7773: $00
	ld   a, [bc]                                     ; $7774: $0a
	dec  c                                           ; $7775: $0d
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	rrca                                             ; $7778: $0f
	nop                                              ; $7779: $00
	ld   bc, $1e09                                   ; $777a: $01 $09 $1e
	nop                                              ; $777d: $00
	inc  e                                           ; $777e: $1c
	dec  b                                           ; $777f: $05
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	ld   bc, $7196                                   ; $7782: $01 $96 $71
	sbc  [hl]                                        ; $7785: $9e
	ld   [$7d00], sp                                 ; $7786: $08 $00 $7d
	and  c                                           ; $7789: $a1
	sbc  a                                           ; $778a: $9f
	dec  c                                           ; $778b: $0d
	nop                                              ; $778c: $00
	ld   a, [bc]                                     ; $778d: $0a
	rrca                                             ; $778e: $0f
	nop                                              ; $778f: $00
	ld   bc, $0201                                   ; $7790: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7793: $cf
	dec  b                                           ; $7794: $05
	ld   a, [de]                                     ; $7795: $1a
	ld   h, e                                        ; $7796: $63
	and  c                                           ; $7797: $a1
	sbc  a                                           ; $7798: $9f
	dec  c                                           ; $7799: $0d
	ld   e, b                                        ; $779a: $58
	inc  b                                           ; $779b: $04
	ld   a, e                                        ; $779c: $7b
	sbc  d                                           ; $779d: $9a
	ld   h, e                                        ; $779e: $63
	adc  h                                           ; $779f: $8c
	ld   [hl], l                                     ; $77a0: $75
	ld   h, a                                        ; $77a1: $67
	sbc  a                                           ; $77a2: $9f
	dec  c                                           ; $77a3: $0d
	nop                                              ; $77a4: $00
	ld   a, [bc]                                     ; $77a5: $0a
	rrca                                             ; $77a6: $0f
	dec  b                                           ; $77a7: $05
	nop                                              ; $77a8: $00
	ld   bc, $9502                                   ; $77a9: $01 $02 $95
	ld   [bc], a                                     ; $77ac: $02
	sub  e                                           ; $77ad: $93
	sbc  b                                           ; $77ae: $98
	ld   e, d                                        ; $77af: $5a
	and  c                                           ; $77b0: $a1
	ld   a, [hl]                                     ; $77b1: $7e
	sbc  b                                           ; $77b2: $98
	sub  d                                           ; $77b3: $92
	sbc  a                                           ; $77b4: $9f
	dec  c                                           ; $77b5: $0d
	adc  c                                           ; $77b6: $89
	ld   a, b                                        ; $77b7: $78
	sbc  a                                           ; $77b8: $9f
	dec  c                                           ; $77b9: $0d
	nop                                              ; $77ba: $00
	ld   a, [bc]                                     ; $77bb: $0a
	dec  c                                           ; $77bc: $0d
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	rrca                                             ; $77bf: $0f
	nop                                              ; $77c0: $00
	ld   bc, $1e09                                   ; $77c1: $01 $09 $1e
	nop                                              ; $77c4: $00
	inc  e                                           ; $77c5: $1c
	dec  b                                           ; $77c6: $05
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	ld   bc, $7196                                   ; $77c9: $01 $96 $71
	sbc  [hl]                                        ; $77cc: $9e
	ld   [$7d00], sp                                 ; $77cd: $08 $00 $7d
	and  c                                           ; $77d0: $a1
	sbc  a                                           ; $77d1: $9f
	dec  c                                           ; $77d2: $0d
	ld   [bc], a                                     ; $77d3: $02
	sub  l                                           ; $77d4: $95
	ld   [bc], a                                     ; $77d5: $02
	sub  e                                           ; $77d6: $93
	sbc  b                                           ; $77d7: $98
	ld   h, d                                        ; $77d8: $62
	ld   e, l                                        ; $77d9: $5d
	sbc  e                                           ; $77da: $9b
	ld   d, h                                        ; $77db: $54
	ld   h, e                                        ; $77dc: $63
	and  c                                           ; $77dd: $a1
	sbc  a                                           ; $77de: $9f
	dec  c                                           ; $77df: $0d
	nop                                              ; $77e0: $00
	ld   a, [bc]                                     ; $77e1: $0a
	rrca                                             ; $77e2: $0f
	nop                                              ; $77e3: $00
	ld   bc, $0201                                   ; $77e4: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e7: $cf
	dec  b                                           ; $77e8: $05
	ld   a, [de]                                     ; $77e9: $1a
	ld   h, e                                        ; $77ea: $63
	and  c                                           ; $77eb: $a1
	sbc  a                                           ; $77ec: $9f
	dec  c                                           ; $77ed: $0d
	ld   h, c                                        ; $77ee: $61
	and  c                                           ; $77ef: $a1
	ld   a, b                                        ; $77f0: $78
	sbc  [hl]                                        ; $77f1: $9e
	inc  b                                           ; $77f2: $04
	rst  $28                                         ; $77f3: $ef
	ld   e, b                                        ; $77f4: $58
	ld   l, e                                        ; $77f5: $6b
	ld   e, l                                        ; $77f6: $5d
	ld   a, c                                        ; $77f7: $79
	dec  c                                           ; $77f8: $0d
	ld   [hl], a                                     ; $77f9: $77
	ld   d, h                                        ; $77fa: $54
	ld   h, l                                        ; $77fb: $65
	ld   l, l                                        ; $77fc: $6d
	and  c                                           ; $77fd: $a1
	ld   [hl], l                                     ; $77fe: $75
	ld   h, a                                        ; $77ff: $67
	ld   e, c                                        ; $7800: $59
	ld   sp, hl                                      ; $7801: $f9
	dec  c                                           ; $7802: $0d
	nop                                              ; $7803: $00
	ld   a, [bc]                                     ; $7804: $0a
	inc  e                                           ; $7805: $1c
	dec  b                                           ; $7806: $05
	inc  b                                           ; $7807: $04
	inc  b                                           ; $7808: $04
	ld   bc, $ce04                                   ; $7809: $01 $04 $ce
	sub  a                                           ; $780c: $97
	sbc  d                                           ; $780d: $9a
	add  [hl]                                        ; $780e: $86
	and  c                                           ; $780f: $a1
	ld   e, c                                        ; $7810: $59
	ld   [hl], c                                     ; $7811: $71
	ld   [hl], h                                     ; $7812: $74
	rst  $38                                         ; $7813: $ff
	rst  $38                                         ; $7814: $ff
	dec  c                                           ; $7815: $0d
	ld   [bc], a                                     ; $7816: $02
	jr   c, jr_069_781d                              ; $7817: $38 $04

	ld   d, d                                        ; $7819: $52
	adc  l                                           ; $781a: $8d
	ld   e, d                                        ; $781b: $5a
	ld   d, d                                        ; $781c: $52

jr_069_781d:
	ld   [hl], h                                     ; $781d: $74
	ld   l, l                                        ; $781e: $6d
	and  c                                           ; $781f: $a1
	sub  d                                           ; $7820: $92
	sbc  a                                           ; $7821: $9f
	dec  c                                           ; $7822: $0d
	nop                                              ; $7823: $00
	inc  e                                           ; $7824: $1c
	dec  b                                           ; $7825: $05
	ld   bc, $0101                                   ; $7826: $01 $01 $01
	adc  c                                           ; $7829: $89
	ld   a, b                                        ; $782a: $78
	sbc  [hl]                                        ; $782b: $9e
	ld   e, b                                        ; $782c: $58
	sub  d                                           ; $782d: $92
	ld   h, a                                        ; $782e: $67
	adc  l                                           ; $782f: $8d
	sbc  a                                           ; $7830: $9f
	dec  c                                           ; $7831: $0d
	nop                                              ; $7832: $00
	ld   a, [bc]                                     ; $7833: $0a
	dec  c                                           ; $7834: $0d
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	rrca                                             ; $7837: $0f
	nop                                              ; $7838: $00
	ld   bc, $1e09                                   ; $7839: $01 $09 $1e
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	inc  bc                                          ; $783e: $03
	ld   de, $b401                                   ; $783f: $11 $01 $b4
	inc  h                                           ; $7842: $24
	inc  bc                                          ; $7843: $03
	ld   c, [hl]                                     ; $7844: $4e
	ld   [bc], a                                     ; $7845: $02
	nop                                              ; $7846: $00
	inc  bc                                          ; $7847: $03
	ld   c, b                                        ; $7848: $48
	add  hl, hl                                      ; $7849: $29
	add  hl, hl                                      ; $784a: $29
	ld   bc, $2201                                   ; $784b: $01 $01 $22
	inc  e                                           ; $784e: $1c
	nop                                              ; $784f: $00
	ld   c, $02                                      ; $7850: $0e $02
	rrca                                             ; $7852: $0f
	nop                                              ; $7853: $00
	ld   bc, $0102                                   ; $7854: $01 $02 $01
	rst  $38                                         ; $7857: $ff
	rst  $38                                         ; $7858: $ff
	and  c                                           ; $7859: $a1
	ld   sp, hl                                      ; $785a: $f9
	dec  c                                           ; $785b: $0d
	sub  b                                           ; $785c: $90
	ld   d, h                                        ; $785d: $54
	ld   h, c                                        ; $785e: $61
	and  c                                           ; $785f: $a1
	ld   a, b                                        ; $7860: $78
	inc  bc                                          ; $7861: $03
	ld   l, a                                        ; $7862: $6f
	ld   [bc], a                                     ; $7863: $02
	xor  c                                           ; $7864: $a9
	ld   e, c                                        ; $7865: $59
	rst  $38                                         ; $7866: $ff
	rst  $38                                         ; $7867: $ff
	dec  c                                           ; $7868: $0d
	nop                                              ; $7869: $00
	inc  d                                           ; $786a: $14
	ld   b, $01                                      ; $786b: $06 $01
	ld   bc, $aa04                                   ; $786d: $01 $04 $aa
	ld   [bc], a                                     ; $7870: $02
	sub  a                                           ; $7871: $97
	and  b                                           ; $7872: $a0
	inc  bc                                          ; $7873: $03
	ld   d, l                                        ; $7874: $55
	ld   d, d                                        ; $7875: $52
	ld   [hl], h                                     ; $7876: $74
	inc  b                                           ; $7877: $04
	ld   b, d                                        ; $7878: $42

Call_069_7879:
	sub  [hl]                                        ; $7879: $96
	ld   d, h                                        ; $787a: $54
	sbc  a                                           ; $787b: $9f
	dec  c                                           ; $787c: $0d
	nop                                              ; $787d: $00
	ld   a, [bc]                                     ; $787e: $0a
	rrca                                             ; $787f: $0f
	ld   bc, $0101                                   ; $7880: $01 $01 $01
	ld   [$6300], sp                                 ; $7883: $08 $00 $63
	and  c                                           ; $7886: $a1
	sbc  [hl]                                        ; $7887: $9e
	dec  c                                           ; $7888: $0d
	adc  h                                           ; $7889: $8c
	ld   l, [hl]                                     ; $788a: $6e
	ld   [bc], a                                     ; $788b: $02
	ld   e, d                                        ; $788c: $5a
	ld   e, e                                        ; $788d: $5b
	ld   [hl], h                                     ; $788e: $74
	adc  h                                           ; $788f: $8c
	ld   h, a                                        ; $7890: $67
	ld   e, c                                        ; $7891: $59

Call_069_7892:
	ld   sp, hl                                      ; $7892: $f9
	dec  c                                           ; $7893: $0d
	nop                                              ; $7894: $00
	ld   a, [bc]                                     ; $7895: $0a
	rrca                                             ; $7896: $0f
	nop                                              ; $7897: $00
	ld   bc, $7d01                                   ; $7898: $01 $01 $7d
	ld   d, d                                        ; $789b: $52
	sbc  a                                           ; $789c: $9f
	dec  c                                           ; $789d: $0d
	ld   [bc], a                                     ; $789e: $02
	adc  b                                           ; $789f: $88
	ld   d, d                                        ; $78a0: $52
	ld   [hl], h                                     ; $78a1: $74
	adc  h                                           ; $78a2: $8c
	ld   h, a                                        ; $78a3: $67
	ld   e, c                                        ; $78a4: $59
	sub  a                                           ; $78a5: $97
	sbc  [hl]                                        ; $78a6: $9e
	ld   [hl], a                                     ; $78a7: $77
	ld   d, h                                        ; $78a8: $54
	ld   l, h                                        ; $78a9: $6c
	sbc  a                                           ; $78aa: $9f
	dec  c                                           ; $78ab: $0d
	nop                                              ; $78ac: $00
	ld   a, [bc]                                     ; $78ad: $0a
	inc  d                                           ; $78ae: $14
	ld   a, [bc]                                     ; $78af: $0a
	ld   bc, $011c                                   ; $78b0: $01 $1c $01
	dec  b                                           ; $78b3: $05
	dec  b                                           ; $78b4: $05
	ld   bc, $8d67                                   ; $78b5: $01 $67 $8d
	adc  h                                           ; $78b8: $8c
	ld   l, c                                        ; $78b9: $69
	and  c                                           ; $78ba: $a1
	sbc  [hl]                                        ; $78bb: $9e
	inc  b                                           ; $78bc: $04
	rst  $28                                         ; $78bd: $ef
	inc  b                                           ; $78be: $04
	sbc  [hl]                                        ; $78bf: $9e
	ld   a, c                                        ; $78c0: $79
	rst  $38                                         ; $78c1: $ff
	rst  $38                                         ; $78c2: $ff
	dec  c                                           ; $78c3: $0d
	nop                                              ; $78c4: $00
	ld   a, [bc]                                     ; $78c5: $0a
	ld   bc, $7c50                                   ; $78c6: $01 $50 $7c
	rst  $38                                         ; $78c9: $ff
	rst  $38                                         ; $78ca: $ff
	dec  c                                           ; $78cb: $0d
	ld   e, b                                        ; $78cc: $58
	inc  b                                           ; $78cd: $04
	rst  $28                                         ; $78ce: $ef
	inc  bc                                          ; $78cf: $03
	ld   l, d                                        ; $78d0: $6a
	ld   a, l                                        ; $78d1: $7d
	ld   d, d                                        ; $78d2: $52
	ld   e, c                                        ; $78d3: $59
	ld   e, d                                        ; $78d4: $5a
	ld   e, c                                        ; $78d5: $59
	halt                                             ; $78d6: $76
	dec  b                                           ; $78d7: $05
	pop  de                                          ; $78d8: $d1
	ld   [hl], c                                     ; $78d9: $71
	ld   [hl], h                                     ; $78da: $74
	rst  $38                                         ; $78db: $ff
	rst  $38                                         ; $78dc: $ff
	dec  c                                           ; $78dd: $0d
	nop                                              ; $78de: $00
	ld   a, [bc]                                     ; $78df: $0a
	rrca                                             ; $78e0: $0f
	nop                                              ; $78e1: $00
	ld   bc, $5001                                   ; $78e2: $01 $01 $50
	sbc  b                                           ; $78e5: $98
	ld   e, d                                        ; $78e6: $5a
	halt                                             ; $78e7: $76
	ld   d, h                                        ; $78e8: $54
	ld   h, d                                        ; $78e9: $62
	ld   h, h                                        ; $78ea: $64
	ld   d, d                                        ; $78eb: $52
	adc  h                                           ; $78ec: $8c
	ld   h, a                                        ; $78ed: $67
	sbc  a                                           ; $78ee: $9f
	dec  c                                           ; $78ef: $0d
	ld   [hl], l                                     ; $78f0: $75
	ld   a, l                                        ; $78f1: $7d
	sbc  [hl]                                        ; $78f2: $9e
	ld   h, e                                        ; $78f3: $63
	ld   [hl], c                                     ; $78f4: $71
	ld   l, e                                        ; $78f5: $6b
	ld   e, l                                        ; $78f6: $5d
	ld   [bc], a                                     ; $78f7: $02
	jr   nz, jr_069_78fc                             ; $78f8: $20 $02

	xor  [hl]                                        ; $78fa: $ae
	rst  $38                                         ; $78fb: $ff

jr_069_78fc:
	rst  $38                                         ; $78fc: $ff
	dec  c                                           ; $78fd: $0d
	nop                                              ; $78fe: $00
	ld   a, [bc]                                     ; $78ff: $0a
	ld   bc, $0301                                   ; $7900: $01 $01 $03
	ld   d, h                                        ; $7903: $54
	ld   [hl], c                                     ; $7904: $71
	ld   a, [$6110]                                  ; $7905: $fa $10 $61
	sbc  [hl]                                        ; $7908: $9e
	ld   h, c                                        ; $7909: $61
	sbc  d                                           ; $790a: $9a
	ld   a, l                                        ; $790b: $7d
	rst  $38                                         ; $790c: $ff
	rst  $38                                         ; $790d: $ff
	dec  c                                           ; $790e: $0d
	db   $10                                         ; $790f: $10
	ld   [bc], a                                     ; $7910: $02
	dec  l                                           ; $7911: $2d
	halt                                             ; $7912: $76
	ld   h, e                                        ; $7913: $63
	halt                                             ; $7914: $76
	ld   d, h                                        ; $7915: $54
	and  b                                           ; $7916: $a0
	adc  h                                           ; $7917: $8c
	ld   l, a                                        ; $7918: $6f
	ld   e, d                                        ; $7919: $5a
	ld   d, [hl]                                     ; $791a: $56
	ld   l, l                                        ; $791b: $6d
	ld   a, b                                        ; $791c: $78
	ld   bc, $0d04                                   ; $791d: $01 $04 $0d
	nop                                              ; $7920: $00
	ld   a, [bc]                                     ; $7921: $0a
	inc  e                                           ; $7922: $1c
	ld   bc, $0303                                   ; $7923: $01 $03 $03
	ld   bc, $9e77                                   ; $7926: $01 $77 $9e
	ld   [hl], a                                     ; $7929: $77
	ld   d, h                                        ; $792a: $54
	ld   h, l                                        ; $792b: $65
	adc  h                                           ; $792c: $8c
	ld   h, l                                        ; $792d: $65
	ld   l, l                                        ; $792e: $6d
	ld   sp, hl                                      ; $792f: $f9
	dec  c                                           ; $7930: $0d
	nop                                              ; $7931: $00
	ld   a, [bc]                                     ; $7932: $0a
	add  hl, de                                      ; $7933: $19
	dec  b                                           ; $7934: $05
	inc  bc                                          ; $7935: $03
	ld   e, d                                        ; $7936: $5a
	adc  h                                           ; $7937: $8c
	and  c                                           ; $7938: $a1
	ld   h, l                                        ; $7939: $65
	ld   [hl], h                                     ; $793a: $74
	adc  c                                           ; $793b: $89
	adc  a                                           ; $793c: $8f
	sbc  c                                           ; $793d: $99
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	inc  b                                           ; $7940: $04
	adc  h                                           ; $7941: $8c
	sbc  l                                           ; $7942: $9d
	ld   [hl], c                                     ; $7943: $71
	ld   l, l                                        ; $7944: $6d
	inc  b                                           ; $7945: $04
	jp   nc, Jump_069_766e                           ; $7946: $d2 $6e $76

	ld   [bc], a                                     ; $7949: $02
	sbc  l                                           ; $794a: $9d
	ld   d, h                                        ; $794b: $54
	nop                                              ; $794c: $00
	ld   bc, $688c                                   ; $794d: $01 $8c $68
	ld   d, d                                        ; $7950: $52
	halt                                             ; $7951: $76
	ld   [bc], a                                     ; $7952: $02
	sbc  l                                           ; $7953: $9d
	ld   d, h                                        ; $7954: $54
	nop                                              ; $7955: $00
	ld   [bc], a                                     ; $7956: $02
	rlca                                             ; $7957: $07
	dec  h                                           ; $7958: $25
	ld   bc, $0302                                   ; $7959: $01 $02 $03
	ld   bc, $2000                                   ; $795c: $01 $00 $20
	nop                                              ; $795f: $00
	rlca                                             ; $7960: $07
	ldh  a, [c]                                      ; $7961: $f2
	ld   bc, $0302                                   ; $7962: $01 $02 $03
	ld   bc, $2001                                   ; $7965: $01 $01 $20
	nop                                              ; $7968: $00
	rlca                                             ; $7969: $07
	ld   e, [hl]                                     ; $796a: $5e
	ld   [bc], a                                     ; $796b: $02
	ld   [bc], a                                     ; $796c: $02
	inc  bc                                          ; $796d: $03
	ld   bc, $2002                                   ; $796e: $01 $02 $20
	nop                                              ; $7971: $00
	ld   b, $49                                      ; $7972: $06 $49
	inc  bc                                          ; $7974: $03
	rrca                                             ; $7975: $0f
	nop                                              ; $7976: $00
	ld   bc, $5401                                   ; $7977: $01 $01 $54
	rst  $38                                         ; $797a: $ff
	rst  $38                                         ; $797b: $ff
	ld   d, h                                        ; $797c: $54
	adc  h                                           ; $797d: $8c
	ld   d, d                                        ; $797e: $52
	ld   a, [$000d]                                  ; $797f: $fa $0d $00
	ld   a, [bc]                                     ; $7982: $0a
	inc  e                                           ; $7983: $1c
	ld   bc, $0101                                   ; $7984: $01 $01 $01
	ld   bc, $5996                                   ; $7987: $01 $96 $59
	ld   [hl], c                                     ; $798a: $71
	ld   l, l                                        ; $798b: $6d
	rst  $38                                         ; $798c: $ff
	rst  $38                                         ; $798d: $ff
	dec  c                                           ; $798e: $0d
	ld   h, [hl]                                     ; $798f: $66
	sub  c                                           ; $7990: $91
	sbc  [hl]                                        ; $7991: $9e
	ld   d, b                                        ; $7992: $50
	ld   l, l                                        ; $7993: $6d
	ld   h, l                                        ; $7994: $65
	sub  b                                           ; $7995: $90
	ld   [bc], a                                     ; $7996: $02
	jr   nz, jr_069_799b                             ; $7997: $20 $02

	xor  [hl]                                        ; $7999: $ae
	rst  $38                                         ; $799a: $ff

jr_069_799b:
	rst  $38                                         ; $799b: $ff
	dec  c                                           ; $799c: $0d
	nop                                              ; $799d: $00
	ld   a, [bc]                                     ; $799e: $0a
	inc  e                                           ; $799f: $1c
	ld   bc, $0303                                   ; $79a0: $01 $03 $03
	ld   bc, $7154                                   ; $79a3: $01 $54 $71
	ld   a, [$000d]                                  ; $79a6: $fa $0d $00
	ld   a, [bc]                                     ; $79a9: $0a
	inc  e                                           ; $79aa: $1c
	ld   bc, $0404                                   ; $79ab: $01 $04 $04
	ld   bc, $9e62                                   ; $79ae: $01 $62 $9e
	ld   h, d                                        ; $79b1: $62
	adc  a                                           ; $79b2: $8f
	and  c                                           ; $79b3: $a1
	ld   a, b                                        ; $79b4: $78
	ld   h, e                                        ; $79b5: $63
	ld   d, d                                        ; $79b6: $52
	db   $fc                                         ; $79b7: $fc
	rst  $38                                         ; $79b8: $ff
	rst  $38                                         ; $79b9: $ff
	dec  c                                           ; $79ba: $0d
	ld   e, b                                        ; $79bb: $58
	ld   [bc], a                                     ; $79bc: $02
	dec  l                                           ; $79bd: $2d
	halt                                             ; $79be: $76
	ld   e, b                                        ; $79bf: $58
	ld   h, e                                        ; $79c0: $63
	halt                                             ; $79c1: $76
	ld   d, h                                        ; $79c2: $54
	sbc  [hl]                                        ; $79c3: $9e
	adc  h                                           ; $79c4: $8c
	ld   l, a                                        ; $79c5: $6f
	ld   e, d                                        ; $79c6: $5a
	ld   d, [hl]                                     ; $79c7: $56
	dec  c                                           ; $79c8: $0d
	ld   l, a                                        ; $79c9: $6f
	sub  c                                           ; $79ca: $91
	ld   d, d                                        ; $79cb: $52
	adc  h                                           ; $79cc: $8c
	ld   h, l                                        ; $79cd: $65
	ld   l, l                                        ; $79ce: $6d
	rst  $38                                         ; $79cf: $ff
	rst  $38                                         ; $79d0: $ff
	dec  c                                           ; $79d1: $0d
	nop                                              ; $79d2: $00
	ld   a, [bc]                                     ; $79d3: $0a
	rrca                                             ; $79d4: $0f
	nop                                              ; $79d5: $00
	ld   bc, $7d01                                   ; $79d6: $01 $01 $7d
	ld   a, l                                        ; $79d9: $7d
	ld   a, l                                        ; $79da: $7d
	ld   a, l                                        ; $79db: $7d
	ld   a, l                                        ; $79dc: $7d
	rst  $38                                         ; $79dd: $ff
	rst  $38                                         ; $79de: $ff
	dec  c                                           ; $79df: $0d
	nop                                              ; $79e0: $00
	ld   a, [bc]                                     ; $79e1: $0a
	inc  e                                           ; $79e2: $1c
	ld   bc, $0404                                   ; $79e3: $01 $04 $04
	dec  e                                           ; $79e6: $1d
	ld   b, b                                        ; $79e7: $40
	ld   de, $1103                                   ; $79e8: $11 $03 $11
	ld   bc, $2803                                   ; $79eb: $01 $03 $28
	nop                                              ; $79ee: $00
	ld   bc, $0008                                   ; $79ef: $01 $08 $00
	ld   h, e                                        ; $79f2: $63
	and  c                                           ; $79f3: $a1
	dec  c                                           ; $79f4: $0d
	ld   d, b                                        ; $79f5: $50
	ld   l, l                                        ; $79f6: $6d
	ld   h, l                                        ; $79f7: $65
	ld   a, c                                        ; $79f8: $79
	ld   [bc], a                                     ; $79f9: $02
	and  c                                           ; $79fa: $a1
	and  b                                           ; $79fb: $a0
	ld   [hl], d                                     ; $79fc: $72
	ld   e, c                                        ; $79fd: $59
	ld   [hl], c                                     ; $79fe: $71
	ld   [hl], h                                     ; $79ff: $74
	rst  $38                                         ; $7a00: $ff
	rst  $38                                         ; $7a01: $ff
	dec  c                                           ; $7a02: $0d
	nop                                              ; $7a03: $00
	ld   a, [bc]                                     ; $7a04: $0a
	ld   bc, $9075                                   ; $7a05: $01 $75 $90
	sbc  [hl]                                        ; $7a08: $9e
	ld   h, c                                        ; $7a09: $61
	ld   d, h                                        ; $7a0a: $54
	ld   d, d                                        ; $7a0b: $52
	ld   d, h                                        ; $7a0c: $54
	inc  bc                                          ; $7a0d: $03
	ld   l, a                                        ; $7a0e: $6f
	ld   a, l                                        ; $7a0f: $7d
	dec  c                                           ; $7a10: $0d
	inc  bc                                          ; $7a11: $03
	ld   c, d                                        ; $7a12: $4a
	inc  bc                                          ; $7a13: $03
	jp   c, $0279                                    ; $7a14: $da $79 $02

	sbc  l                                           ; $7a17: $9d
	ld   [hl], c                                     ; $7a18: $71
	ld   [hl], h                                     ; $7a19: $74
	ld   [bc], a                                     ; $7a1a: $02
	inc  [hl]                                        ; $7a1b: $34
	ld   h, e                                        ; $7a1c: $63
	ld   d, d                                        ; $7a1d: $52
	ld   a, e                                        ; $7a1e: $7b
	rst  $38                                         ; $7a1f: $ff
	rst  $38                                         ; $7a20: $ff
	dec  c                                           ; $7a21: $0d
	nop                                              ; $7a22: $00
	ld   a, [bc]                                     ; $7a23: $0a
	ld   bc, $9166                                   ; $7a24: $01 $66 $91
	sbc  [hl]                                        ; $7a27: $9e
	inc  bc                                          ; $7a28: $03
	xor  h                                           ; $7a29: $ac
	sbc  b                                           ; $7a2a: $98
	inc  bc                                          ; $7a2b: $03
	jp   c, Jump_069_7465                            ; $7a2c: $da $65 $74

	ld   e, e                                        ; $7a2f: $5b
	adc  h                                           ; $7a30: $8c
	ld   h, a                                        ; $7a31: $67
	ld   a, e                                        ; $7a32: $7b
	sbc  a                                           ; $7a33: $9f
	dec  c                                           ; $7a34: $0d
	nop                                              ; $7a35: $00
	ld   a, [bc]                                     ; $7a36: $0a
	dec  c                                           ; $7a37: $0d
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	rrca                                             ; $7a3a: $0f
	nop                                              ; $7a3b: $00
	ld   bc, $1e09                                   ; $7a3c: $01 $09 $1e
	add  hl, hl                                      ; $7a3f: $29
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	rrca                                             ; $7a42: $0f
	nop                                              ; $7a43: $00
	ld   bc, $5901                                   ; $7a44: $01 $01 $59
	sbc  [hl]                                        ; $7a47: $9e
	inc  b                                           ; $7a48: $04
	adc  h                                           ; $7a49: $8c
	sbc  l                                           ; $7a4a: $9d
	ld   [hl], c                                     ; $7a4b: $71
	ld   l, l                                        ; $7a4c: $6d
	inc  b                                           ; $7a4d: $04
	jp   nc, $6775                                   ; $7a4e: $d2 $75 $67

	ld   a, e                                        ; $7a51: $7b
	dec  c                                           ; $7a52: $0d
	nop                                              ; $7a53: $00
	ld   a, [bc]                                     ; $7a54: $0a
	inc  e                                           ; $7a55: $1c
	ld   bc, $0303                                   ; $7a56: $01 $03 $03
	ld   bc, $546b                                   ; $7a59: $01 $6b $54
	ld   [hl], l                                     ; $7a5c: $75
	ld   h, a                                        ; $7a5d: $67
	ld   e, c                                        ; $7a5e: $59
	ld   sp, hl                                      ; $7a5f: $f9
	dec  c                                           ; $7a60: $0d
	inc  bc                                          ; $7a61: $03
	db   $fd                                         ; $7a62: $fd
	inc  b                                           ; $7a63: $04
	ld   d, h                                        ; $7a64: $54
	ld   a, b                                        ; $7a65: $78
	inc  b                                           ; $7a66: $04
	jp   nc, Jump_069_7104                           ; $7a67: $d2 $04 $71

	ld   e, a                                        ; $7a6a: $5f
	ld   a, l                                        ; $7a6b: $7d
	ld   h, l                                        ; $7a6c: $65
	ld   [hl], h                                     ; $7a6d: $74
	ld   a, b                                        ; $7a6e: $78
	ld   d, d                                        ; $7a6f: $52
	dec  c                                           ; $7a70: $0d
	ld   a, l                                        ; $7a71: $7d
	ld   l, b                                        ; $7a72: $68
	ld   [hl], l                                     ; $7a73: $75
	ld   h, a                                        ; $7a74: $67
	ld   e, d                                        ; $7a75: $5a
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff
	dec  c                                           ; $7a78: $0d
	nop                                              ; $7a79: $00
	ld   a, [bc]                                     ; $7a7a: $0a
	inc  e                                           ; $7a7b: $1c
	ld   bc, $0404                                   ; $7a7c: $01 $04 $04
	ld   bc, $0008                                   ; $7a7f: $01 $08 $00
	ld   h, e                                        ; $7a82: $63
	and  c                                           ; $7a83: $a1
	ld   a, h                                        ; $7a84: $7c
	ld   e, b                                        ; $7a85: $58
	ld   [bc], a                                     ; $7a86: $02
	xor  [hl]                                        ; $7a87: $ae
	ld   a, c                                        ; $7a88: $79
	ld   a, l                                        ; $7a89: $7d
	dec  c                                           ; $7a8a: $0d
	ld   [bc], a                                     ; $7a8b: $02
	ld   a, e                                        ; $7a8c: $7b
	sbc  l                                           ; $7a8d: $9d
	ld   a, b                                        ; $7a8e: $78
	ld   e, c                                        ; $7a8f: $59
	ld   [hl], c                                     ; $7a90: $71
	ld   l, l                                        ; $7a91: $6d
	ld   a, h                                        ; $7a92: $7c
	ld   e, c                                        ; $7a93: $59
	ld   h, l                                        ; $7a94: $65
	sub  a                                           ; $7a95: $97
	rst  $38                                         ; $7a96: $ff
	rst  $38                                         ; $7a97: $ff
	dec  c                                           ; $7a98: $0d
	nop                                              ; $7a99: $00
	ld   a, [bc]                                     ; $7a9a: $0a
	ld   bc, $9166                                   ; $7a9b: $01 $66 $91
	sbc  [hl]                                        ; $7a9e: $9e
	ld   e, b                                        ; $7a9f: $58
	sub  d                                           ; $7aa0: $92
	ld   h, a                                        ; $7aa1: $67
	adc  l                                           ; $7aa2: $8d
	ld   a, b                                        ; $7aa3: $78
	ld   h, e                                        ; $7aa4: $63
	ld   d, d                                        ; $7aa5: $52
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	dec  c                                           ; $7aa8: $0d
	nop                                              ; $7aa9: $00
	ld   a, [bc]                                     ; $7aaa: $0a
	add  hl, hl                                      ; $7aab: $29
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	rrca                                             ; $7aae: $0f
	nop                                              ; $7aaf: $00
	ld   bc, $8c01                                   ; $7ab0: $01 $01 $8c
	sbc  [hl]                                        ; $7ab3: $9e
	adc  h                                           ; $7ab4: $8c
	ld   l, b                                        ; $7ab5: $68
	ld   d, d                                        ; $7ab6: $52
	ld   a, [$8c0d]                                  ; $7ab7: $fa $0d $8c
	ld   l, b                                        ; $7aba: $68
	ld   h, a                                        ; $7abb: $67
	ld   e, h                                        ; $7abc: $5c
	sbc  c                                           ; $7abd: $99
	ld   a, [$000d]                                  ; $7abe: $fa $0d $00
	ld   a, [bc]                                     ; $7ac1: $0a
	inc  e                                           ; $7ac2: $1c
	ld   bc, $0202                                   ; $7ac3: $01 $02 $02
	ld   bc, $8303                                   ; $7ac6: $01 $03 $83
	dec  b                                           ; $7ac9: $05
	dec  c                                           ; $7aca: $0d
	ld   a, b                                        ; $7acb: $78
	ld   h, c                                        ; $7acc: $61
	halt                                             ; $7acd: $76
	ld   [bc], a                                     ; $7ace: $02
	sbc  l                                           ; $7acf: $9d
	sbc  l                                           ; $7ad0: $9d
	ld   a, b                                        ; $7ad1: $78
	ld   d, d                                        ; $7ad2: $52
	ld   [hl], l                                     ; $7ad3: $75
	ld   [bc], a                                     ; $7ad4: $02
	inc  [hl]                                        ; $7ad5: $34
	ld   h, e                                        ; $7ad6: $63
	ld   d, d                                        ; $7ad7: $52
	ld   a, [$610d]                                  ; $7ad8: $fa $0d $61
	sbc  d                                           ; $7adb: $9a
	ld   a, h                                        ; $7adc: $7c
	ld   [hl], a                                     ; $7add: $77
	ld   h, c                                        ; $7ade: $61
	ld   e, d                                        ; $7adf: $5a
	adc  h                                           ; $7ae0: $8c
	ld   l, b                                        ; $7ae1: $68
	ld   d, d                                        ; $7ae2: $52
	ld   [hl], c                                     ; $7ae3: $71
	ld   [hl], h                                     ; $7ae4: $74
	dec  c                                           ; $7ae5: $0d
	ld   d, d                                        ; $7ae6: $52
	ld   d, h                                        ; $7ae7: $54
	and  c                                           ; $7ae8: $a1
	ld   [hl], l                                     ; $7ae9: $75
	ld   h, a                                        ; $7aea: $67
	ld   e, c                                        ; $7aeb: $59
	sbc  a                                           ; $7aec: $9f
	dec  c                                           ; $7aed: $0d
	nop                                              ; $7aee: $00
	ld   a, [bc]                                     ; $7aef: $0a
	ld   bc, $718c                                   ; $7af0: $01 $8c $71
	ld   l, l                                        ; $7af3: $6d
	ld   e, l                                        ; $7af4: $5d
	sub  b                                           ; $7af5: $90
	ld   d, h                                        ; $7af6: $54
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	dec  c                                           ; $7af9: $0d
	ld   h, c                                        ; $7afa: $61
	and  c                                           ; $7afb: $a1
	ld   a, b                                        ; $7afc: $78
	ld   a, c                                        ; $7afd: $79
	ld   e, b                                        ; $7afe: $58
	ld   d, d                                        ; $7aff: $52
	ld   h, l                                        ; $7b00: $65
	ld   d, d                                        ; $7b01: $52
	ld   a, h                                        ; $7b02: $7c
	ld   a, c                                        ; $7b03: $79
	ld   [hl], c                                     ; $7b04: $71
	ld   a, [$000d]                                  ; $7b05: $fa $0d $00
	ld   a, [bc]                                     ; $7b08: $0a
	inc  e                                           ; $7b09: $1c
	ld   bc, $0303                                   ; $7b0a: $01 $03 $03
	ld   bc, $7154                                   ; $7b0d: $01 $54 $71
	ld   a, [$000d]                                  ; $7b10: $fa $0d $00
	ld   a, [bc]                                     ; $7b13: $0a
	inc  e                                           ; $7b14: $1c
	ld   bc, $0404                                   ; $7b15: $01 $04 $04
	ld   bc, $9e62                                   ; $7b18: $01 $62 $9e
	ld   h, d                                        ; $7b1b: $62
	adc  a                                           ; $7b1c: $8f
	and  c                                           ; $7b1d: $a1
	ld   a, b                                        ; $7b1e: $78
	ld   h, e                                        ; $7b1f: $63
	ld   d, d                                        ; $7b20: $52
	db   $fc                                         ; $7b21: $fc
	rst  $38                                         ; $7b22: $ff
	rst  $38                                         ; $7b23: $ff
	dec  c                                           ; $7b24: $0d
	ld   e, b                                        ; $7b25: $58
	ld   [bc], a                                     ; $7b26: $02
	dec  l                                           ; $7b27: $2d
	halt                                             ; $7b28: $76
	ld   e, b                                        ; $7b29: $58
	ld   h, e                                        ; $7b2a: $63
	halt                                             ; $7b2b: $76
	ld   d, h                                        ; $7b2c: $54
	sbc  [hl]                                        ; $7b2d: $9e
	adc  h                                           ; $7b2e: $8c
	ld   l, a                                        ; $7b2f: $6f
	ld   e, d                                        ; $7b30: $5a
	ld   d, [hl]                                     ; $7b31: $56
	dec  c                                           ; $7b32: $0d
	ld   l, a                                        ; $7b33: $6f
	sub  c                                           ; $7b34: $91
	ld   d, d                                        ; $7b35: $52
	adc  h                                           ; $7b36: $8c
	ld   h, l                                        ; $7b37: $65
	ld   l, l                                        ; $7b38: $6d
	rst  $38                                         ; $7b39: $ff
	rst  $38                                         ; $7b3a: $ff
	dec  c                                           ; $7b3b: $0d
	nop                                              ; $7b3c: $00
	ld   a, [bc]                                     ; $7b3d: $0a
	inc  e                                           ; $7b3e: $1c
	ld   bc, $0101                                   ; $7b3f: $01 $01 $01
	dec  e                                           ; $7b42: $1d
	ld   b, b                                        ; $7b43: $40
	ld   de, $1103                                   ; $7b44: $11 $03 $11
	ld   bc, $2803                                   ; $7b47: $01 $03 $28
	nop                                              ; $7b4a: $00
	ld   bc, $4a03                                   ; $7b4b: $01 $03 $4a
	inc  bc                                          ; $7b4e: $03
	jp   c, $0279                                    ; $7b4f: $da $79 $02

	sbc  l                                           ; $7b52: $9d
	ld   [hl], c                                     ; $7b53: $71
	ld   [hl], h                                     ; $7b54: $74
	ld   e, l                                        ; $7b55: $5d

Call_069_7b56:
	sbc  d                                           ; $7b56: $9a
	ld   [hl], h                                     ; $7b57: $74
	dec  c                                           ; $7b58: $0d
	inc  bc                                          ; $7b59: $03
	ld   e, e                                        ; $7b5a: $5b
	ld   e, c                                        ; $7b5b: $59
	sbc  b                                           ; $7b5c: $98
	adc  h                                           ; $7b5d: $8c
	ld   h, l                                        ; $7b5e: $65
	ld   l, l                                        ; $7b5f: $6d
	sbc  a                                           ; $7b60: $9f
	db   $10                                         ; $7b61: $10
	sub  $d6                                         ; $7b62: $d6 $d6
	sub  $ff                                         ; $7b64: $d6 $ff
	rst  $38                                         ; $7b66: $ff
	dec  c                                           ; $7b67: $0d
	ld   d, b                                        ; $7b68: $50
	ld   l, l                                        ; $7b69: $6d
	ld   h, l                                        ; $7b6a: $65
	ld   [hl], c                                     ; $7b6b: $71
	ld   [hl], h                                     ; $7b6c: $74
	inc  b                                           ; $7b6d: $04
	adc  a                                           ; $7b6e: $8f
	inc  b                                           ; $7b6f: $04
	jr   jr_069_7beb                                 ; $7b70: $18 $79

	jp   z, Jump_069_75b9                            ; $7b72: $ca $b9 $75

	ld   h, a                                        ; $7b75: $67
	ld   a, e                                        ; $7b76: $7b
	sbc  a                                           ; $7b77: $9f
	dec  c                                           ; $7b78: $0d
	nop                                              ; $7b79: $00
	ld   a, [bc]                                     ; $7b7a: $0a
	ld   bc, $9166                                   ; $7b7b: $01 $66 $91
	sbc  [hl]                                        ; $7b7e: $9e
	inc  bc                                          ; $7b7f: $03
	xor  h                                           ; $7b80: $ac
	sbc  b                                           ; $7b81: $98
	inc  bc                                          ; $7b82: $03
	jp   c, Jump_069_7465                            ; $7b83: $da $65 $74

	ld   e, e                                        ; $7b86: $5b
	adc  h                                           ; $7b87: $8c
	ld   h, a                                        ; $7b88: $67
	ld   a, e                                        ; $7b89: $7b
	sbc  a                                           ; $7b8a: $9f
	dec  c                                           ; $7b8b: $0d
	nop                                              ; $7b8c: $00
	ld   a, [bc]                                     ; $7b8d: $0a
	dec  c                                           ; $7b8e: $0d
	nop                                              ; $7b8f: $00
	nop                                              ; $7b90: $00
	rrca                                             ; $7b91: $0f
	nop                                              ; $7b92: $00
	ld   bc, $1e09                                   ; $7b93: $01 $09 $1e
	add  hl, hl                                      ; $7b96: $29
	nop                                              ; $7b97: $00
	nop                                              ; $7b98: $00
	inc  e                                           ; $7b99: $1c
	ld   bc, $0303                                   ; $7b9a: $01 $03 $03
	ld   bc, $9e7c                                   ; $7b9d: $01 $7c $9e
	ld   a, h                                        ; $7ba0: $7c
	ld   [hl], a                                     ; $7ba1: $77
	ld   a, c                                        ; $7ba2: $79
	ld   [hl], d                                     ; $7ba3: $72
	adc  h                                           ; $7ba4: $8c
	sbc  b                                           ; $7ba5: $98
	adc  h                                           ; $7ba6: $8c
	ld   h, l                                        ; $7ba7: $65
	ld   l, l                                        ; $7ba8: $6d
	ld   e, c                                        ; $7ba9: $59
	ld   sp, hl                                      ; $7baa: $f9
	dec  c                                           ; $7bab: $0d
	nop                                              ; $7bac: $00
	dec  c                                           ; $7bad: $0d
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	ld   bc, $a502                                   ; $7bb0: $01 $02 $a5
	sbc  [hl]                                        ; $7bb3: $9e
	ld   e, b                                        ; $7bb4: $58
	inc  bc                                          ; $7bb5: $03
	ld   e, c                                        ; $7bb6: $59
	sub  b                                           ; $7bb7: $90
	ld   [hl], c                                     ; $7bb8: $71
	ld   [hl], h                                     ; $7bb9: $74
	ld   e, e                                        ; $7bba: $5b
	adc  h                                           ; $7bbb: $8c
	ld   h, a                                        ; $7bbc: $67
	ld   a, e                                        ; $7bbd: $7b
	ld   a, [$000d]                                  ; $7bbe: $fa $0d $00
	ld   a, [bc]                                     ; $7bc1: $0a
	rrca                                             ; $7bc2: $0f
	nop                                              ; $7bc3: $00
	ld   bc, $0101                                   ; $7bc4: $01 $01 $01
	inc  bc                                          ; $7bc7: $03
	ld   l, a                                        ; $7bc8: $6f
	sbc  [hl]                                        ; $7bc9: $9e
	ld   l, a                                        ; $7bca: $6f
	ld   e, d                                        ; $7bcb: $5a
	ld   d, h                                        ; $7bcc: $54
	ld   a, h                                        ; $7bcd: $7c
	ld   a, c                                        ; $7bce: $79
	rst  $38                                         ; $7bcf: $ff
	rst  $38                                         ; $7bd0: $ff
	ld   bc, $0d04                                   ; $7bd1: $01 $04 $0d
	nop                                              ; $7bd4: $00
	ld   a, [bc]                                     ; $7bd5: $0a
	add  hl, bc                                      ; $7bd6: $09
	ld   e, $29                                      ; $7bd7: $1e $29
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	inc  bc                                          ; $7bdc: $03
	ld   [de], a                                     ; $7bdd: $12
	ld   bc, $25af                                   ; $7bde: $01 $af $25
	inc  b                                           ; $7be1: $04
	add  b                                           ; $7be2: $80
	ret                                              ; $7be3: $c9


	ld   bc, $20ff                                   ; $7be4: $01 $ff $20
	inc  e                                           ; $7be7: $1c
	nop                                              ; $7be8: $00
	ld   c, $02                                      ; $7be9: $0e $02

jr_069_7beb:
	rrca                                             ; $7beb: $0f
	nop                                              ; $7bec: $00
	ld   bc, $0102                                   ; $7bed: $01 $02 $01
	rst  $38                                         ; $7bf0: $ff
	rst  $38                                         ; $7bf1: $ff
	and  c                                           ; $7bf2: $a1
	ld   sp, hl                                      ; $7bf3: $f9
	db   $10                                         ; $7bf4: $10
	sub  b                                           ; $7bf5: $90
	ld   d, h                                        ; $7bf6: $54
	ld   h, c                                        ; $7bf7: $61
	and  c                                           ; $7bf8: $a1
	ld   a, b                                        ; $7bf9: $78
	inc  bc                                          ; $7bfa: $03
	ld   l, a                                        ; $7bfb: $6f
	ld   [bc], a                                     ; $7bfc: $02
	xor  c                                           ; $7bfd: $a9
	ld   e, c                                        ; $7bfe: $59
	rst  $38                                         ; $7bff: $ff
	dec  c                                           ; $7c00: $0d
	inc  b                                           ; $7c01: $04
	xor  d                                           ; $7c02: $aa
	ld   [bc], a                                     ; $7c03: $02
	sub  a                                           ; $7c04: $97
	ld   [hl], l                                     ; $7c05: $75
	sub  b                                           ; $7c06: $90
	ld   [hl], d                                     ; $7c07: $72
	ld   e, a                                        ; $7c08: $5f
	ld   [hl], h                                     ; $7c09: $74
	sbc  [hl]                                        ; $7c0a: $9e
	inc  b                                           ; $7c0b: $04
	ld   b, d                                        ; $7c0c: $42
	sub  [hl]                                        ; $7c0d: $96
	ld   d, h                                        ; $7c0e: $54
	ld   e, c                                        ; $7c0f: $59
	ld   a, b                                        ; $7c10: $78
	sbc  a                                           ; $7c11: $9f
	dec  c                                           ; $7c12: $0d
	nop                                              ; $7c13: $00
	ld   a, [bc]                                     ; $7c14: $0a
	inc  d                                           ; $7c15: $14
	ld   b, $01                                      ; $7c16: $06 $01
	rrca                                             ; $7c18: $0f
	ld   [bc], a                                     ; $7c19: $02
	nop                                              ; $7c1a: $00
	ld   bc, $0008                                   ; $7c1b: $01 $08 $00
	ld   h, e                                        ; $7c1e: $63
	and  c                                           ; $7c1f: $a1
	dec  c                                           ; $7c20: $0d
	ld   d, d                                        ; $7c21: $52
	sub  a                                           ; $7c22: $97
	ld   [hl], c                                     ; $7c23: $71
	ld   h, l                                        ; $7c24: $65
	sub  c                                           ; $7c25: $91
	sbc  c                                           ; $7c26: $99
	ld   sp, hl                                      ; $7c27: $f9
	dec  c                                           ; $7c28: $0d
	nop                                              ; $7c29: $00
	ld   a, [bc]                                     ; $7c2a: $0a
	rrca                                             ; $7c2b: $0f
	nop                                              ; $7c2c: $00
	ld   bc, $0a14                                   ; $7c2d: $01 $14 $0a
	ld   bc, $7d01                                   ; $7c30: $01 $01 $7d
	ld   d, d                                        ; $7c33: $52
	sbc  [hl]                                        ; $7c34: $9e
	ld   [hl], a                                     ; $7c35: $77
	ld   d, h                                        ; $7c36: $54
	ld   l, h                                        ; $7c37: $6c
	sbc  a                                           ; $7c38: $9f
	dec  c                                           ; $7c39: $0d
	nop                                              ; $7c3a: $00
	ld   a, [bc]                                     ; $7c3b: $0a
	inc  e                                           ; $7c3c: $1c
	ld   [bc], a                                     ; $7c3d: $02
	ld   bc, $0101                                   ; $7c3e: $01 $01 $01
	inc  b                                           ; $7c41: $04
	rst  $28                                         ; $7c42: $ef
	ld   e, b                                        ; $7c43: $58
	ld   l, e                                        ; $7c44: $6b
	ld   e, l                                        ; $7c45: $5d
	ld   a, c                                        ; $7c46: $79
	ld   h, a                                        ; $7c47: $67
	adc  l                                           ; $7c48: $8d
	adc  h                                           ; $7c49: $8c
	ld   l, c                                        ; $7c4a: $69
	and  c                                           ; $7c4b: $a1
	sbc  a                                           ; $7c4c: $9f
	dec  c                                           ; $7c4d: $0d
	ld   [$6300], sp                                 ; $7c4e: $08 $00 $63
	and  c                                           ; $7c51: $a1
	sbc  a                                           ; $7c52: $9f
	dec  c                                           ; $7c53: $0d
	nop                                              ; $7c54: $00
	ld   a, [bc]                                     ; $7c55: $0a
	ld   bc, $0008                                   ; $7c56: $01 $08 $00
	ld   h, e                                        ; $7c59: $63
	and  c                                           ; $7c5a: $a1
	sbc  [hl]                                        ; $7c5b: $9e
	inc  b                                           ; $7c5c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c5d: $cf
	inc  b                                           ; $7c5e: $04
	xor  d                                           ; $7c5f: $aa
	sbc  [hl]                                        ; $7c60: $9e
	ld   e, b                                        ; $7c61: $58
	add  b                                           ; $7c62: $80
	adc  h                                           ; $7c63: $8c
	dec  c                                           ; $7c64: $0d
	ld   [hl], l                                     ; $7c65: $75
	ld   h, l                                        ; $7c66: $65
	ld   l, l                                        ; $7c67: $6d
	sub  a                                           ; $7c68: $97
	sbc  [hl]                                        ; $7c69: $9e
	sbc  l                                           ; $7c6a: $9d
	ld   l, l                                        ; $7c6b: $6d
	ld   e, l                                        ; $7c6c: $5d
	ld   h, l                                        ; $7c6d: $65
	halt                                             ; $7c6e: $76
	dec  c                                           ; $7c6f: $0d
	inc  b                                           ; $7c70: $04
	adc  l                                           ; $7c71: $8d
	ld   d, d                                        ; $7c72: $52
	inc  b                                           ; $7c73: $04
	sub  d                                           ; $7c74: $92
	ld   a, c                                        ; $7c75: $79
	ld   [hl], l                                     ; $7c76: $75
	sub  b                                           ; $7c77: $90
	ld   d, d                                        ; $7c78: $52
	ld   e, e                                        ; $7c79: $5b
	adc  h                                           ; $7c7a: $8c
	ld   l, c                                        ; $7c7b: $69
	and  c                                           ; $7c7c: $a1
	ld   h, c                                        ; $7c7d: $61
	halt                                             ; $7c7e: $76
	ld   sp, hl                                      ; $7c7f: $f9
	dec  c                                           ; $7c80: $0d
	nop                                              ; $7c81: $00
	ld   a, [bc]                                     ; $7c82: $0a
	add  hl, de                                      ; $7c83: $19
	dec  b                                           ; $7c84: $05
	ld   [bc], a                                     ; $7c85: $02
	ld   a, l                                        ; $7c86: $7d
	ld   d, d                                        ; $7c87: $52
	sbc  [hl]                                        ; $7c88: $9e
	sub  [hl]                                        ; $7c89: $96
	sbc  e                                           ; $7c8a: $9b
	ld   h, c                                        ; $7c8b: $61
	and  c                                           ; $7c8c: $a1
	ld   [hl], l                                     ; $7c8d: $75
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	inc  b                                           ; $7c90: $04
	di                                               ; $7c91: $f3
	ld   [bc], a                                     ; $7c92: $02
	jp   Jump_069_505a                               ; $7c93: $c3 $5a $50


	sbc  c                                           ; $7c96: $99
	nop                                              ; $7c97: $00
	ld   bc, $c507                                   ; $7c98: $01 $07 $c5
	nop                                              ; $7c9b: $00
	ld   [bc], a                                     ; $7c9c: $02
	inc  bc                                          ; $7c9d: $03
	ld   bc, $2000                                   ; $7c9e: $01 $00 $20
	nop                                              ; $7ca1: $00
	rlca                                             ; $7ca2: $07
	dec  hl                                          ; $7ca3: $2b
	ld   bc, $0302                                   ; $7ca4: $01 $02 $03
	ld   bc, $2001                                   ; $7ca7: $01 $01 $20
	nop                                              ; $7caa: $00
	ld   b, $91                                      ; $7cab: $06 $91
	ld   bc, $000f                                   ; $7cad: $01 $0f $00
	ld   bc, $5601                                   ; $7cb0: $01 $01 $56
	ld   d, [hl]                                     ; $7cb3: $56
	sbc  [hl]                                        ; $7cb4: $9e
	ld   d, d                                        ; $7cb5: $52
	ld   d, d                                        ; $7cb6: $52
	ld   [hl], l                                     ; $7cb7: $75
	ld   h, a                                        ; $7cb8: $67
	sub  [hl]                                        ; $7cb9: $96
	sbc  a                                           ; $7cba: $9f
	dec  c                                           ; $7cbb: $0d
	sub  [hl]                                        ; $7cbc: $96
	sbc  e                                           ; $7cbd: $9b
	ld   h, c                                        ; $7cbe: $61
	and  c                                           ; $7cbf: $a1
	ld   [hl], l                                     ; $7cc0: $75
	sbc  a                                           ; $7cc1: $9f
	dec  c                                           ; $7cc2: $0d
	nop                                              ; $7cc3: $00
	ld   a, [bc]                                     ; $7cc4: $0a
	rrca                                             ; $7cc5: $0f
	ld   [bc], a                                     ; $7cc6: $02
	ld   bc, $6b01                                   ; $7cc7: $01 $01 $6b
	ld   d, h                                        ; $7cca: $54
	ld   [hl], l                                     ; $7ccb: $75
	ld   h, a                                        ; $7ccc: $67
	ld   e, c                                        ; $7ccd: $59
	sbc  a                                           ; $7cce: $9f
	dec  c                                           ; $7ccf: $0d
	ld   [hl], l                                     ; $7cd0: $75
	ld   a, l                                        ; $7cd1: $7d
	sbc  [hl]                                        ; $7cd2: $9e
	inc  b                                           ; $7cd3: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cd4: $cf
	inc  b                                           ; $7cd5: $04
	xor  d                                           ; $7cd6: $aa
	ld   a, h                                        ; $7cd7: $7c
	inc  bc                                          ; $7cd8: $03
	ld   d, $0d                                      ; $7cd9: $16 $0d
	ld   [de], a                                     ; $7cdb: $12
	ld   [bc], a                                     ; $7cdc: $02
	ld   e, h                                        ; $7cdd: $5c
	rst  $28                                         ; $7cde: $ef
	call nc, Call_069_75fb                           ; $7cdf: $d4 $fb $75
	sbc  a                                           ; $7ce2: $9f
	dec  c                                           ; $7ce3: $0d
	nop                                              ; $7ce4: $00
	ld   a, [bc]                                     ; $7ce5: $0a
	dec  b                                           ; $7ce6: $05
	add  b                                           ; $7ce7: $80
	sub  c                                           ; $7ce8: $91
	ld   bc, $0001                                   ; $7ce9: $01 $01 $00
	ld   bc, $6f03                                   ; $7cec: $01 $03 $6f
	ld   [bc], a                                     ; $7cef: $02
	xor  c                                           ; $7cf0: $a9
	ld   h, b                                        ; $7cf1: $60
	and  c                                           ; $7cf2: $a1
	ld   h, l                                        ; $7cf3: $65
	sub  e                                           ; $7cf4: $93
	ld   [hl], l                                     ; $7cf5: $75
	ld   h, a                                        ; $7cf6: $67
	sbc  l                                           ; $7cf7: $9d
	sub  [hl]                                        ; $7cf8: $96
	sbc  a                                           ; $7cf9: $9f
	dec  c                                           ; $7cfa: $0d
	ld   [hl], l                                     ; $7cfb: $75
	ld   a, l                                        ; $7cfc: $7d
	sbc  [hl]                                        ; $7cfd: $9e
	ld   e, b                                        ; $7cfe: $58
	sub  d                                           ; $7cff: $92
	ld   h, a                                        ; $7d00: $67
	adc  l                                           ; $7d01: $8d
	ld   a, b                                        ; $7d02: $78
	ld   h, e                                        ; $7d03: $63
	ld   d, d                                        ; $7d04: $52
	sbc  a                                           ; $7d05: $9f
	dec  c                                           ; $7d06: $0d
	nop                                              ; $7d07: $00
	ld   a, [bc]                                     ; $7d08: $0a
	dec  c                                           ; $7d09: $0d
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	rrca                                             ; $7d0c: $0f
	nop                                              ; $7d0d: $00
	ld   bc, $1e09                                   ; $7d0e: $01 $09 $1e
	add  hl, hl                                      ; $7d11: $29
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00
	rrca                                             ; $7d14: $0f
	nop                                              ; $7d15: $00
	ld   bc, $6701                                   ; $7d16: $01 $01 $67
	adc  l                                           ; $7d19: $8d
	adc  h                                           ; $7d1a: $8c
	ld   l, c                                        ; $7d1b: $69
	and  c                                           ; $7d1c: $a1
	rst  $38                                         ; $7d1d: $ff
	rst  $38                                         ; $7d1e: $ff
	dec  c                                           ; $7d1f: $0d
	inc  b                                           ; $7d20: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d21: $cf
	inc  b                                           ; $7d22: $04
	xor  d                                           ; $7d23: $aa
	ld   a, l                                        ; $7d24: $7d
	ld   l, a                                        ; $7d25: $6f
	sub  l                                           ; $7d26: $95
	ld   [hl], c                                     ; $7d27: $71
	halt                                             ; $7d28: $76
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	dec  c                                           ; $7d2b: $0d
	nop                                              ; $7d2c: $00
	ld   a, [bc]                                     ; $7d2d: $0a
	inc  e                                           ; $7d2e: $1c
	ld   [bc], a                                     ; $7d2f: $02
	ld   [bc], a                                     ; $7d30: $02
	ld   [bc], a                                     ; $7d31: $02
	ld   bc, $546b                                   ; $7d32: $01 $6b $54
	ld   [hl], l                                     ; $7d35: $75
	ld   h, a                                        ; $7d36: $67
	ld   e, c                                        ; $7d37: $59
	sbc  a                                           ; $7d38: $9f
	dec  c                                           ; $7d39: $0d
	sbc  l                                           ; $7d3a: $9d
	ld   l, l                                        ; $7d3b: $6d
	ld   e, l                                        ; $7d3c: $5d
	ld   h, l                                        ; $7d3d: $65
	ld   a, h                                        ; $7d3e: $7c
	ld   l, l                                        ; $7d3f: $6d
	ld   a, h                                        ; $7d40: $7c
	adc  l                                           ; $7d41: $8d
	and  b                                           ; $7d42: $a0
	ld   h, c                                        ; $7d43: $61
	halt                                             ; $7d44: $76
	sbc  l                                           ; $7d45: $9d
	sbc  c                                           ; $7d46: $99
	dec  c                                           ; $7d47: $0d
	halt                                             ; $7d48: $76
	rst  $38                                         ; $7d49: $ff
	rst  $38                                         ; $7d4a: $ff
	dec  c                                           ; $7d4b: $0d
	nop                                              ; $7d4c: $00
	ld   a, [bc]                                     ; $7d4d: $0a
	inc  e                                           ; $7d4e: $1c
	ld   [bc], a                                     ; $7d4f: $02
	rlca                                             ; $7d50: $07
	rlca                                             ; $7d51: $07
	dec  e                                           ; $7d52: $1d
	ld   b, b                                        ; $7d53: $40
	ld   [de], a                                     ; $7d54: $12
	inc  bc                                          ; $7d55: $03
	ld   [de], a                                     ; $7d56: $12
	ld   bc, $2902                                   ; $7d57: $01 $02 $29
	nop                                              ; $7d5a: $00
	ld   bc, $599d                                   ; $7d5b: $01 $9d $59
	sbc  b                                           ; $7d5e: $98
	adc  h                                           ; $7d5f: $8c
	ld   h, l                                        ; $7d60: $65
	ld   l, l                                        ; $7d61: $6d
	sbc  a                                           ; $7d62: $9f
	dec  c                                           ; $7d63: $0d
	ld   e, b                                        ; $7d64: $58
	sub  d                                           ; $7d65: $92
	ld   h, a                                        ; $7d66: $67
	adc  l                                           ; $7d67: $8d
	ld   a, b                                        ; $7d68: $78
	ld   h, e                                        ; $7d69: $63
	ld   d, d                                        ; $7d6a: $52
	sbc  a                                           ; $7d6b: $9f
	dec  c                                           ; $7d6c: $0d
	nop                                              ; $7d6d: $00
	ld   a, [bc]                                     ; $7d6e: $0a
	dec  c                                           ; $7d6f: $0d
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	rrca                                             ; $7d72: $0f
	nop                                              ; $7d73: $00
	ld   bc, $1e09                                   ; $7d74: $01 $09 $1e
	add  hl, hl                                      ; $7d77: $29
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	inc  e                                           ; $7d7a: $1c
	ld   [bc], a                                     ; $7d7b: $02
	ld   [bc], a                                     ; $7d7c: $02
	ld   [bc], a                                     ; $7d7d: $02
	dec  e                                           ; $7d7e: $1d
	ld   b, b                                        ; $7d7f: $40
	ld   [de], a                                     ; $7d80: $12
	inc  bc                                          ; $7d81: $03
	ld   [de], a                                     ; $7d82: $12
	ld   bc, $2902                                   ; $7d83: $01 $02 $29
	nop                                              ; $7d86: $00
	ld   bc, $9704                                   ; $7d87: $01 $04 $97
	ld   [bc], a                                     ; $7d8a: $02
	jp   Jump_069_505a                               ; $7d8b: $c3 $5a $50


	sbc  b                                           ; $7d8e: $98
	adc  h                                           ; $7d8f: $8c
	ld   l, c                                        ; $7d90: $69
	and  c                                           ; $7d91: $a1
	ld   a, e                                        ; $7d92: $7b
	sbc  a                                           ; $7d93: $9f
	dec  c                                           ; $7d94: $0d
	sub  b                                           ; $7d95: $90
	ld   d, h                                        ; $7d96: $54
	sbc  [hl]                                        ; $7d97: $9e
	ld   e, a                                        ; $7d98: $5f
	ld   [hl], c                                     ; $7d99: $71
	ld   h, c                                        ; $7d9a: $61
	ld   d, h                                        ; $7d9b: $54
	ld   [hl], l                                     ; $7d9c: $75
	ld   h, a                                        ; $7d9d: $67
	sbc  l                                           ; $7d9e: $9d
	sbc  a                                           ; $7d9f: $9f
	dec  c                                           ; $7da0: $0d
	ld   e, b                                        ; $7da1: $58
	sub  d                                           ; $7da2: $92
	ld   h, a                                        ; $7da3: $67
	adc  l                                           ; $7da4: $8d
	ld   a, b                                        ; $7da5: $78
	ld   h, e                                        ; $7da6: $63
	ld   d, d                                        ; $7da7: $52
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
	add  hl, hl                                      ; $7db4: $29
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	inc  bc                                          ; $7db8: $03
	ld   d, $01                                      ; $7db9: $16 $01
	xor  a                                           ; $7dbb: $af
	dec  h                                           ; $7dbc: $25
	inc  b                                           ; $7dbd: $04
	add  b                                           ; $7dbe: $80
	adc  d                                           ; $7dbf: $8a
	ld   bc, $20ff                                   ; $7dc0: $01 $ff $20
	inc  e                                           ; $7dc3: $1c
	nop                                              ; $7dc4: $00
	ld   c, $02                                      ; $7dc5: $0e $02
	rrca                                             ; $7dc7: $0f
	nop                                              ; $7dc8: $00
	ld   bc, $0102                                   ; $7dc9: $01 $02 $01
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	and  c                                           ; $7dce: $a1
	ld   sp, hl                                      ; $7dcf: $f9
	dec  c                                           ; $7dd0: $0d
	sub  b                                           ; $7dd1: $90
	ld   d, h                                        ; $7dd2: $54
	ld   h, c                                        ; $7dd3: $61
	and  c                                           ; $7dd4: $a1
	ld   a, b                                        ; $7dd5: $78
	inc  bc                                          ; $7dd6: $03
	ld   l, a                                        ; $7dd7: $6f
	ld   [bc], a                                     ; $7dd8: $02
	xor  c                                           ; $7dd9: $a9
	ld   e, c                                        ; $7dda: $59
	rst  $38                                         ; $7ddb: $ff
	rst  $38                                         ; $7ddc: $ff
	dec  c                                           ; $7ddd: $0d
	inc  b                                           ; $7dde: $04
	xor  d                                           ; $7ddf: $aa
	ld   [bc], a                                     ; $7de0: $02
	sub  a                                           ; $7de1: $97
	and  b                                           ; $7de2: $a0
	ld   [hl], d                                     ; $7de3: $72
	ld   e, a                                        ; $7de4: $5f
	ld   [hl], h                                     ; $7de5: $74
	sbc  [hl]                                        ; $7de6: $9e
	inc  b                                           ; $7de7: $04
	ld   b, d                                        ; $7de8: $42
	sub  [hl]                                        ; $7de9: $96
	ld   d, h                                        ; $7dea: $54
	sbc  a                                           ; $7deb: $9f
	dec  c                                           ; $7dec: $0d
	nop                                              ; $7ded: $00
	ld   a, [bc]                                     ; $7dee: $0a
	inc  d                                           ; $7def: $14
	ld   b, $01                                      ; $7df0: $06 $01
	rrca                                             ; $7df2: $0f
	ld   b, $00                                      ; $7df3: $06 $00
	ld   bc, $0008                                   ; $7df5: $01 $08 $00
	sbc  [hl]                                        ; $7df8: $9e
	ld   d, d                                        ; $7df9: $52
	sbc  c                                           ; $7dfa: $99
	ld   e, c                                        ; $7dfb: $59
	ld   sp, hl                                      ; $7dfc: $f9
	dec  c                                           ; $7dfd: $0d
	nop                                              ; $7dfe: $00
	ld   a, [bc]                                     ; $7dff: $0a
	rrca                                             ; $7e00: $0f
	nop                                              ; $7e01: $00
	ld   bc, $7d01                                   ; $7e02: $01 $01 $7d
	ld   d, d                                        ; $7e05: $52
	sbc  [hl]                                        ; $7e06: $9e
	ld   [hl], a                                     ; $7e07: $77
	ld   d, h                                        ; $7e08: $54
	ld   l, h                                        ; $7e09: $6c
	sbc  a                                           ; $7e0a: $9f
	dec  c                                           ; $7e0b: $0d
	nop                                              ; $7e0c: $00
	ld   a, [bc]                                     ; $7e0d: $0a
	inc  d                                           ; $7e0e: $14
	ld   a, [bc]                                     ; $7e0f: $0a
	ld   bc, $061c                                   ; $7e10: $01 $1c $06
	ld   bc, $0101                                   ; $7e13: $01 $01 $01
	inc  b                                           ; $7e16: $04
	rst  $28                                         ; $7e17: $ef
	ld   e, b                                        ; $7e18: $58
	ld   l, e                                        ; $7e19: $6b
	ld   e, l                                        ; $7e1a: $5d
	ld   a, c                                        ; $7e1b: $79
	sbc  [hl]                                        ; $7e1c: $9e
	ld   h, a                                        ; $7e1d: $67
	adc  h                                           ; $7e1e: $8c
	ld   a, e                                        ; $7e1f: $7b
	ei                                               ; $7e20: $fb
	ld   a, b                                        ; $7e21: $78
	sbc  a                                           ; $7e22: $9f
	dec  c                                           ; $7e23: $0d
	ld   [$7d00], sp                                 ; $7e24: $08 $00 $7d
	dec  c                                           ; $7e27: $0d
	inc  b                                           ; $7e28: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e29: $cf
	inc  b                                           ; $7e2a: $04
	xor  d                                           ; $7e2b: $aa
	sbc  [hl]                                        ; $7e2c: $9e
	db   $d3                                         ; $7e2d: $d3
	rst  JumpTable                                         ; $7e2e: $df
	ld   e, c                                        ; $7e2f: $59
	ld   sp, hl                                      ; $7e30: $f9
	dec  c                                           ; $7e31: $0d
	nop                                              ; $7e32: $00
	ld   a, [bc]                                     ; $7e33: $0a
	add  hl, de                                      ; $7e34: $19
	dec  b                                           ; $7e35: $05
	ld   [bc], a                                     ; $7e36: $02
	db   $d3                                         ; $7e37: $d3
	rst  JumpTable                                         ; $7e38: $df
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	ld   d, d                                        ; $7e3b: $52
	ld   l, e                                        ; $7e3c: $6b
	ld   e, d                                        ; $7e3d: $5a
	ld   h, l                                        ; $7e3e: $65
	ld   d, d                                        ; $7e3f: $52
	nop                                              ; $7e40: $00
	ld   bc, $2707                                   ; $7e41: $01 $07 $27
	ld   bc, $0302                                   ; $7e44: $01 $02 $03
	ld   bc, $2000                                   ; $7e47: $01 $00 $20
	nop                                              ; $7e4a: $00
	rlca                                             ; $7e4b: $07
	sub  d                                           ; $7e4c: $92
	nop                                              ; $7e4d: $00
	ld   [bc], a                                     ; $7e4e: $02
	inc  bc                                          ; $7e4f: $03
	ld   bc, $2001                                   ; $7e50: $01 $01 $20
	nop                                              ; $7e53: $00
	ld   b, $e7                                      ; $7e54: $06 $e7
	nop                                              ; $7e56: $00
	rrca                                             ; $7e57: $0f
	nop                                              ; $7e58: $00
	ld   bc, $6701                                   ; $7e59: $01 $01 $67
	adc  l                                           ; $7e5c: $8d
	adc  h                                           ; $7e5d: $8c
	ld   l, c                                        ; $7e5e: $69
	and  c                                           ; $7e5f: $a1
	rst  $38                                         ; $7e60: $ff
	rst  $38                                         ; $7e61: $ff
	dec  c                                           ; $7e62: $0d
	inc  b                                           ; $7e63: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e64: $cf
	inc  b                                           ; $7e65: $04
	xor  d                                           ; $7e66: $aa
	ld   a, l                                        ; $7e67: $7d
	ld   l, a                                        ; $7e68: $6f
	sub  l                                           ; $7e69: $95
	ld   [hl], c                                     ; $7e6a: $71
	halt                                             ; $7e6b: $76
	rst  $38                                         ; $7e6c: $ff
	rst  $38                                         ; $7e6d: $ff
	dec  c                                           ; $7e6e: $0d
	nop                                              ; $7e6f: $00
	ld   a, [bc]                                     ; $7e70: $0a
	inc  e                                           ; $7e71: $1c
	ld   b, $05                                      ; $7e72: $06 $05
	dec  b                                           ; $7e74: $05
	ld   bc, $546b                                   ; $7e75: $01 $6b $54
	ld   e, c                                        ; $7e78: $59
	sbc  a                                           ; $7e79: $9f
	dec  c                                           ; $7e7a: $0d
	inc  b                                           ; $7e7b: $04
	di                                               ; $7e7c: $f3
	ld   [bc], a                                     ; $7e7d: $02
	jp   Jump_069_505a                               ; $7e7e: $c3 $5a $50


	sbc  c                                           ; $7e81: $99
	ld   a, h                                        ; $7e82: $7c
	ld   e, c                                        ; $7e83: $59
	sbc  a                                           ; $7e84: $9f
	dec  c                                           ; $7e85: $0d
	nop                                              ; $7e86: $00
	ld   a, [bc]                                     ; $7e87: $0a
	inc  e                                           ; $7e88: $1c
	ld   b, $00                                      ; $7e89: $06 $00
	nop                                              ; $7e8b: $00
	ld   bc, $9166                                   ; $7e8c: $01 $66 $91
	ld   d, b                                        ; $7e8f: $50
	sbc  [hl]                                        ; $7e90: $9e
	ld   h, l                                        ; $7e91: $65
	ld   e, c                                        ; $7e92: $59
	ld   l, l                                        ; $7e93: $6d
	ld   a, b                                        ; $7e94: $78
	ld   d, d                                        ; $7e95: $52
	ld   a, b                                        ; $7e96: $78
	sbc  a                                           ; $7e97: $9f
	dec  c                                           ; $7e98: $0d
	ld   e, b                                        ; $7e99: $58
	sub  d                                           ; $7e9a: $92
	ld   h, a                                        ; $7e9b: $67
	adc  l                                           ; $7e9c: $8d
	sbc  a                                           ; $7e9d: $9f
	dec  c                                           ; $7e9e: $0d
	nop                                              ; $7e9f: $00
	ld   a, [bc]                                     ; $7ea0: $0a
	dec  c                                           ; $7ea1: $0d
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	rrca                                             ; $7ea4: $0f
	nop                                              ; $7ea5: $00
	ld   bc, $1e09                                   ; $7ea6: $01 $09 $1e
	add  hl, hl                                      ; $7ea9: $29
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	inc  e                                           ; $7eac: $1c
	ld   b, $05                                      ; $7ead: $06 $05
	dec  b                                           ; $7eaf: $05
	dec  e                                           ; $7eb0: $1d
	ld   b, b                                        ; $7eb1: $40
	ld   d, $03                                      ; $7eb2: $16 $03
	ld   d, $01                                      ; $7eb4: $16 $01
	ld   [bc], a                                     ; $7eb6: $02
	add  hl, hl                                      ; $7eb7: $29
	nop                                              ; $7eb8: $00
	ld   bc, $a178                                   ; $7eb9: $01 $78 $a1
	ld   l, [hl]                                     ; $7ebc: $6e
	sub  [hl]                                        ; $7ebd: $96
	sbc  [hl]                                        ; $7ebe: $9e
	inc  b                                           ; $7ebf: $04
	sub  a                                           ; $7ec0: $97
	ld   [bc], a                                     ; $7ec1: $02
	jp   Jump_069_6578                               ; $7ec2: $c3 $78 $65


	ld   e, c                                        ; $7ec5: $59
	sub  [hl]                                        ; $7ec6: $96
	sbc  a                                           ; $7ec7: $9f
	dec  c                                           ; $7ec8: $0d
	and  l                                           ; $7ec9: $a5
	and  $6e                                         ; $7eca: $e6 $6e
	ld   [hl], c                                     ; $7ecc: $71
	ld   l, l                                        ; $7ecd: $6d
	sub  a                                           ; $7ece: $97
	inc  b                                           ; $7ecf: $04
	ld   d, h                                        ; $7ed0: $54
	ld   a, c                                        ; $7ed1: $79
	ld   d, d                                        ; $7ed2: $52
	ld   d, d                                        ; $7ed3: $52
	and  c                                           ; $7ed4: $a1
	ld   l, [hl]                                     ; $7ed5: $6e
	ld   l, d                                        ; $7ed6: $6a
	sbc  a                                           ; $7ed7: $9f
	dec  c                                           ; $7ed8: $0d
	ld   h, [hl]                                     ; $7ed9: $66
	sub  c                                           ; $7eda: $91
	ld   d, b                                        ; $7edb: $50
	ld   a, b                                        ; $7edc: $78
	sbc  a                                           ; $7edd: $9f
	dec  c                                           ; $7ede: $0d
	nop                                              ; $7edf: $00
	ld   a, [bc]                                     ; $7ee0: $0a
	dec  c                                           ; $7ee1: $0d
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	rrca                                             ; $7ee4: $0f
	nop                                              ; $7ee5: $00
	ld   bc, $1e09                                   ; $7ee6: $01 $09 $1e
	add  hl, hl                                      ; $7ee9: $29
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	rrca                                             ; $7eec: $0f
	nop                                              ; $7eed: $00
	ld   bc, $5601                                   ; $7eee: $01 $01 $56
	ld   d, [hl]                                     ; $7ef1: $56
	sbc  [hl]                                        ; $7ef2: $9e
	db   $d3                                         ; $7ef3: $d3
	rst  JumpTable                                         ; $7ef4: $df
	ld   [hl], l                                     ; $7ef5: $75
	ld   h, a                                        ; $7ef6: $67
	ld   e, a                                        ; $7ef7: $5f
	ld   [hl], a                                     ; $7ef8: $77
	sbc  a                                           ; $7ef9: $9f
	dec  c                                           ; $7efa: $0d
	nop                                              ; $7efb: $00
	ld   a, [bc]                                     ; $7efc: $0a
	inc  e                                           ; $7efd: $1c
	ld   b, $00                                      ; $7efe: $06 $00
	nop                                              ; $7f00: $00
	dec  e                                           ; $7f01: $1d
	ld   b, b                                        ; $7f02: $40
	ld   d, $03                                      ; $7f03: $16 $03
	ld   d, $01                                      ; $7f05: $16 $01
	ld   [bc], a                                     ; $7f07: $02
	jr   z, jr_069_7f0a                              ; $7f08: $28 $00

jr_069_7f0a:
	ld   bc, $6596                                   ; $7f0a: $01 $96 $65
	sbc  a                                           ; $7f0d: $9f
	dec  c                                           ; $7f0e: $0d
	ld   h, [hl]                                     ; $7f0f: $66
	sub  c                                           ; $7f10: $91
	ld   d, b                                        ; $7f11: $50
	sbc  [hl]                                        ; $7f12: $9e
	inc  b                                           ; $7f13: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f14: $cf
	inc  b                                           ; $7f15: $04
	xor  d                                           ; $7f16: $aa
	ld   [bc], a                                     ; $7f17: $02
	jr   nz, jr_069_7f1e                             ; $7f18: $20 $04

	xor  d                                           ; $7f1a: $aa
	dec  c                                           ; $7f1b: $0d
	ld   d, b                                        ; $7f1c: $50
	ld   l, l                                        ; $7f1d: $6d

jr_069_7f1e:
	ld   d, d                                        ; $7f1e: $52
	ld   a, c                                        ; $7f1f: $79
	ld   [hl], d                                     ; $7f20: $72
	ld   e, e                                        ; $7f21: $5b
	ld   d, b                                        ; $7f22: $50
	ld   d, d                                        ; $7f23: $52
	ld   a, b                                        ; $7f24: $78
	sbc  a                                           ; $7f25: $9f
	dec  c                                           ; $7f26: $0d
	nop                                              ; $7f27: $00
	ld   a, [bc]                                     ; $7f28: $0a
	inc  e                                           ; $7f29: $1c
	ld   b, $04                                      ; $7f2a: $06 $04
	inc  b                                           ; $7f2c: $04
	ld   bc, $0d04                                   ; $7f2d: $01 $04 $0d
	ld   [bc], a                                     ; $7f30: $02
	sub  [hl]                                        ; $7f31: $96
	inc  b                                           ; $7f32: $04
	ld   b, l                                        ; $7f33: $45
	inc  b                                           ; $7f34: $04
	ld   a, [bc]                                     ; $7f35: $0a
	ld   a, h                                        ; $7f36: $7c
	ld   [bc], a                                     ; $7f37: $02
	sub  a                                           ; $7f38: $97
	inc  b                                           ; $7f39: $04
	ld   c, b                                        ; $7f3a: $48
	ld   a, c                                        ; $7f3b: $79
	dec  c                                           ; $7f3c: $0d
	inc  bc                                          ; $7f3d: $03
	dec  bc                                          ; $7f3e: $0b
	ld   bc, $7214                                   ; $7f3f: $01 $14 $72
	sbc  d                                           ; $7f42: $9a
	ld   [hl], h                                     ; $7f43: $74
	ld   [hl], c                                     ; $7f44: $71
	ld   [hl], h                                     ; $7f45: $74
	sub  d                                           ; $7f46: $92
	sbc  c                                           ; $7f47: $99
	ld   e, c                                        ; $7f48: $59
	sub  a                                           ; $7f49: $97
	ld   h, e                                        ; $7f4a: $63
	sbc  a                                           ; $7f4b: $9f
	dec  c                                           ; $7f4c: $0d
	nop                                              ; $7f4d: $00
	ld   a, [bc]                                     ; $7f4e: $0a
	inc  e                                           ; $7f4f: $1c
	ld   b, $01                                      ; $7f50: $06 $01
	ld   bc, $6601                                   ; $7f52: $01 $01 $66
	sub  c                                           ; $7f55: $91
	ld   d, b                                        ; $7f56: $50
	sbc  [hl]                                        ; $7f57: $9e
	inc  b                                           ; $7f58: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f59: $cf
	inc  b                                           ; $7f5a: $04
	xor  d                                           ; $7f5b: $aa
	ld   a, h                                        ; $7f5c: $7c
	inc  bc                                          ; $7f5d: $03
	ld   d, $9e                                      ; $7f5e: $16 $9e
	dec  c                                           ; $7f60: $0d
	ld   [de], a                                     ; $7f61: $12
	ld   [bc], a                                     ; $7f62: $02
	ld   e, h                                        ; $7f63: $5c
	ld   a, h                                        ; $7f64: $7c
	rst  $28                                         ; $7f65: $ef
	call nc, Call_069_75fb                           ; $7f66: $d4 $fb $75
	ld   a, b                                        ; $7f69: $78
	sbc  a                                           ; $7f6a: $9f
	dec  c                                           ; $7f6b: $0d
	nop                                              ; $7f6c: $00
	dec  b                                           ; $7f6d: $05
	add  b                                           ; $7f6e: $80
	adc  e                                           ; $7f6f: $8b
	ld   bc, $0001                                   ; $7f70: $01 $01 $00
	ld   bc, $9258                                   ; $7f73: $01 $58 $92
	ld   h, a                                        ; $7f76: $67
	adc  l                                           ; $7f77: $8d
	sbc  a                                           ; $7f78: $9f
	dec  c                                           ; $7f79: $0d
	nop                                              ; $7f7a: $00
	ld   a, [bc]                                     ; $7f7b: $0a
	dec  c                                           ; $7f7c: $0d
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	rrca                                             ; $7f7f: $0f
	nop                                              ; $7f80: $00
	ld   bc, $1e09                                   ; $7f81: $01 $09 $1e
	add  hl, hl                                      ; $7f84: $29
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	inc  bc                                          ; $7f88: $03
	inc  d                                           ; $7f89: $14
	ld   bc, $25af                                   ; $7f8a: $01 $af $25
	inc  b                                           ; $7f8d: $04
	add  b                                           ; $7f8e: $80
	ld   c, h                                        ; $7f8f: $4c
	ld   bc, $20ff                                   ; $7f90: $01 $ff $20
	inc  e                                           ; $7f93: $1c
	nop                                              ; $7f94: $00
	ld   c, $02                                      ; $7f95: $0e $02
	rrca                                             ; $7f97: $0f
	nop                                              ; $7f98: $00
	ld   bc, $1402                                   ; $7f99: $01 $02 $14
	ld   b, $01                                      ; $7f9c: $06 $01
	rrca                                             ; $7f9e: $0f
	inc  b                                           ; $7f9f: $04
	ld   bc, $6f01                                   ; $7fa0: $01 $01 $6f
	ld   d, d                                        ; $7fa3: $52
	ld   [bc], a                                     ; $7fa4: $02
	inc  de                                          ; $7fa5: $13
	ld   l, a                                        ; $7fa6: $6f
	sub  c                                           ; $7fa7: $91
	and  c                                           ; $7fa8: $a1
	sbc  [hl]                                        ; $7fa9: $9e
	ld   d, d                                        ; $7faa: $52
	sbc  c                                           ; $7fab: $99
	ld   sp, hl                                      ; $7fac: $f9
	dec  c                                           ; $7fad: $0d
	nop                                              ; $7fae: $00
	ld   a, [bc]                                     ; $7faf: $0a
	rrca                                             ; $7fb0: $0f
	nop                                              ; $7fb1: $00
	ld   bc, $5201                                   ; $7fb2: $01 $01 $52
	sbc  c                                           ; $7fb5: $99
	sub  [hl]                                        ; $7fb6: $96
	sbc  [hl]                                        ; $7fb7: $9e
	and  e                                           ; $7fb8: $a3
	and  l                                           ; $7fb9: $a5
	db   $ec                                         ; $7fba: $ec
	cp   d                                           ; $7fbb: $ba
	sbc  a                                           ; $7fbc: $9f
	dec  c                                           ; $7fbd: $0d
	nop                                              ; $7fbe: $00
	ld   a, [bc]                                     ; $7fbf: $0a
	inc  d                                           ; $7fc0: $14
	ld   a, [bc]                                     ; $7fc1: $0a
	ld   bc, $041c                                   ; $7fc2: $01 $1c $04
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	ld   bc, $9996                                   ; $7fc7: $01 $96 $99
	ld   e, b                                        ; $7fca: $58
	ld   l, e                                        ; $7fcb: $6b
	ld   e, l                                        ; $7fcc: $5d
	ld   a, c                                        ; $7fcd: $79
	ld   h, d                                        ; $7fce: $62
	adc  a                                           ; $7fcf: $8f
	and  c                                           ; $7fd0: $a1
	ld   a, e                                        ; $7fd1: $7b
	sbc  a                                           ; $7fd2: $9f
	dec  c                                           ; $7fd3: $0d
	ld   l, a                                        ; $7fd4: $6f
	ld   d, d                                        ; $7fd5: $52
	ld   [bc], a                                     ; $7fd6: $02
	inc  de                                          ; $7fd7: $13
	ld   l, a                                        ; $7fd8: $6f
	sub  c                                           ; $7fd9: $91
	and  c                                           ; $7fda: $a1
	dec  c                                           ; $7fdb: $0d
	ld   d, b                                        ; $7fdc: $50
	ld   h, l                                        ; $7fdd: $65
	ld   l, l                                        ; $7fde: $6d
	sbc  [hl]                                        ; $7fdf: $9e
	ld   e, b                                        ; $7fe0: $58
	db   $d3                                         ; $7fe1: $d3
	rst  JumpTable                                         ; $7fe2: $df
	ld   sp, hl                                      ; $7fe3: $f9
	dec  c                                           ; $7fe4: $0d
	nop                                              ; $7fe5: $00
	ld   a, [bc]                                     ; $7fe6: $0a
	ld   bc, $a5a3                                   ; $7fe7: $01 $a3 $a5
	db   $ec                                         ; $7fea: $ec
	cp   d                                           ; $7feb: $ba
	ld   a, e                                        ; $7fec: $7b
	db   $fc                                         ; $7fed: $fc
	dec  c                                           ; $7fee: $0d
	ld   d, b                                        ; $7fef: $50
	ld   h, l                                        ; $7ff0: $65
	ld   l, l                                        ; $7ff1: $6d
	sbc  [hl]                                        ; $7ff2: $9e
	ld   l, a                                        ; $7ff3: $6f
	ld   d, d                                        ; $7ff4: $52
	ld   [bc], a                                     ; $7ff5: $02
	inc  de                                          ; $7ff6: $13
	ld   l, a                                        ; $7ff7: $6f
	sub  c                                           ; $7ff8: $91
	and  c                                           ; $7ff9: $a1
	halt                                             ; $7ffa: $76
	dec  c                                           ; $7ffb: $0d
	ret  z                                           ; $7ffc: $c8

	ei                                               ; $7ffd: $fb
	ret                                              ; $7ffe: $c9


	ld   h, l                                        ; $7fff: $65
